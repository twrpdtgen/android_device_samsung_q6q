#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from q6q device
$(call inherit-product, device/samsung/q6q/device.mk)

PRODUCT_DEVICE := q6q
PRODUCT_NAME := omni_q6q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-F956B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="q6qxxx-user 14 UP1A.231005.007 F956BXXU1AXFD release-keys"

BUILD_FINGERPRINT := samsung/q6qxxx/q6q:14/UP1A.231005.007/F956BXXU1AXFD:user/release-keys
