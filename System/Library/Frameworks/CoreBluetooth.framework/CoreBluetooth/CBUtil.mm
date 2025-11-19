@interface CBUtil
+ (BOOL)isAppleVID:(unsigned __int16)a3 forVIDSrc:(unsigned __int8)a4;
+ (BOOL)isDeviceSupported:(id)a3;
+ (BOOL)isDeviceSupportedOnWatchOS:(id)a3;
+ (BOOL)isDeviceSupportedOnXROS:(id)a3;
+ (id)decodeApplePayloadByteStream:(id)a3;
+ (id)encodeApplePayloadByteStream:(id)a3;
+ (id)getBluetoothDebugSettingString:(__CFString *)a3 InKey:(__CFString *)a4;
+ (id)preSSPPairingCodeToString:(int64_t)a3;
+ (int64_t)preSSPStringToPairingCode:(id)a3;
+ (void)setBluetoothDebugSetting:(__CFString *)a3 InKey:(__CFString *)a4 InValue:(void *)a5;
@end

@implementation CBUtil

+ (BOOL)isAppleVID:(unsigned __int16)a3 forVIDSrc:(unsigned __int8)a4
{
  if (a4 == 2)
  {
    v4 = 1452;
  }

  else
  {
    v4 = 76;
  }

  return v4 == a3;
}

+ (BOOL)isDeviceSupportedOnXROS:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
  }

  v4 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315394;
    v27 = "+[CBUtil isDeviceSupportedOnXROS:]";
    v28 = 2112;
    *v29 = v3;
    _os_log_impl(&dword_1C0AC1000, v4, OS_LOG_TYPE_DEFAULT, "%s - %@", &v26, 0x16u);
  }

  v5 = [v3 valueForKey:@"DeviceType"];
  v6 = [v5 unsignedCharValue];

  v7 = [v3 valueForKey:@"VendorIDSrc"];
  v8 = [v7 unsignedCharValue];

  v9 = [v3 valueForKey:@"VendorID"];
  v10 = [v9 unsignedShortValue];

  v11 = [v3 valueForKey:@"ProductID"];
  v12 = [v11 unsignedShortValue];

  if (v8 >= 3)
  {
    if (CBLogInitOnce == -1)
    {
      v13 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

LABEL_22:
      [(CBUtil *)v8 isDeviceSupportedOnXROS:v13];
      if ([CBUtil isAppleVID:v10 forVIDSrc:v8])
      {
        goto LABEL_9;
      }

LABEL_23:
      if (v6 - 16 < 5 && ((0x1Bu >> (v6 - 16)) & 1) != 0)
      {
        goto LABEL_29;
      }

      if (CBLogInitOnce == -1)
      {
        v23 = CBLogComponent;
        if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }
      }

      else
      {
        [CBClassicPeer handlePeerUpdated:];
        v23 = CBLogComponent;
        if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }
      }

      v26 = 136446210;
      v27 = "+[CBUtil isDeviceSupportedOnXROS:]";
      v20 = "%{public}s - Third party non-audio device - APPROVED";
      v21 = v23;
      v22 = 12;
      goto LABEL_28;
    }

    [CBClassicPeer handlePeerUpdated:];
    v13 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }
  }

LABEL_8:
  if (![CBUtil isAppleVID:v10 forVIDSrc:v8])
  {
    goto LABEL_23;
  }

LABEL_9:
  if (v6 > 0x31)
  {
    goto LABEL_18;
  }

  if (((1 << v6) & 0x1B0000) != 0)
  {
    goto LABEL_29;
  }

  if (((1 << v6) & 0x2000023000000) == 0)
  {
LABEL_18:
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
      v19 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    v19 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:
      v26 = 136446466;
      v27 = "+[CBUtil isDeviceSupportedOnXROS:]";
      v28 = 1024;
      *v29 = v6;
      v20 = "%{public}s - Apple device type=%d (not HID or audio) - APPROVED";
      v21 = v19;
      v22 = 18;
LABEL_28:
      _os_log_impl(&dword_1C0AC1000, v21, OS_LOG_TYPE_DEFAULT, v20, &v26, v22);
    }

LABEL_29:
    v18 = 1;
    goto LABEL_30;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v12];
  v15 = [&unk_1F40210E0 containsObject:v14];

  if (CBLogInitOnce == -1)
  {
    v16 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:
      v17 = "APPROVED";
      v26 = 136447234;
      v27 = "+[CBUtil isDeviceSupportedOnXROS:]";
      *v29 = v6;
      v28 = 1024;
      if (v15)
      {
        v17 = "REJECTED";
      }

      *&v29[4] = 1024;
      *&v29[6] = v12;
      v30 = 2112;
      v31 = &unk_1F40210E0;
      v32 = 2082;
      v33 = v17;
      _os_log_impl(&dword_1C0AC1000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s - Apple device type=%d (HID) - checking PID 0x%04X against rejected list %@ ->%{public}s", &v26, 0x2Cu);
    }
  }

  else
  {
    [CBClassicPeer handlePeerUpdated:];
    v16 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }
  }

  v18 = v15 ^ 1;
LABEL_30:

  v24 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (BOOL)isDeviceSupportedOnWatchOS:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
  }

  v4 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "+[CBUtil isDeviceSupportedOnWatchOS:]";
    v24 = 2112;
    *v25 = v3;
    _os_log_impl(&dword_1C0AC1000, v4, OS_LOG_TYPE_DEFAULT, "%s - %@", &v22, 0x16u);
  }

  v5 = [v3 valueForKey:@"DeviceType"];
  v6 = [v5 unsignedCharValue];

  v7 = [v3 valueForKey:@"VendorIDSrc"];
  v8 = [v7 unsignedCharValue];

  v9 = [v3 valueForKey:@"VendorID"];
  v10 = [v9 unsignedShortValue];

  v11 = [v3 valueForKey:@"ProductID"];
  v12 = [v11 unsignedShortValue];

  if (v6 == 24)
  {
    if ([CBUtil isAppleVID:v10 forVIDSrc:v8])
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v12];
      v14 = [&unk_1F40210F8 containsObject:v15];

      if (CBLogInitOnce == -1)
      {
        v16 = CBLogComponent;
        if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }
      }

      else
      {
        [CBClassicPeer handlePeerUpdated:];
        v16 = CBLogComponent;
        if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }
      }

      v17 = "REJECTED";
      v23 = "+[CBUtil isDeviceSupportedOnWatchOS:]";
      v24 = 1024;
      v22 = 136446978;
      *v25 = v12;
      if (v14)
      {
        v17 = "APPROVED";
      }

      *&v25[4] = 2112;
      *&v25[6] = &unk_1F40210F8;
      v26 = 2082;
      v27 = v17;
      _os_log_impl(&dword_1C0AC1000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s - Apple keyboard - checking PID 0x%04X against approved list %@ ->%{public}s", &v22, 0x26u);
      goto LABEL_24;
    }

    if (CBLogInitOnce == -1)
    {
      v18 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      v18 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }
    }

    v22 = 136446210;
    v23 = "+[CBUtil isDeviceSupportedOnWatchOS:]";
    v19 = "%{public}s - Third party keyboard - APPROVED";
    goto LABEL_22;
  }

  if (v6 != 25)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
      v18 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    v18 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
LABEL_18:
      v22 = 136446210;
      v23 = "+[CBUtil isDeviceSupportedOnWatchOS:]";
      v19 = "%{public}s - Not a mouse or a keyboard - APPROVED";
LABEL_22:
      _os_log_impl(&dword_1C0AC1000, v18, OS_LOG_TYPE_DEFAULT, v19, &v22, 0xCu);
    }

LABEL_23:
    LOBYTE(v14) = 1;
    goto LABEL_24;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
    v13 = CBLogComponent;
    LOBYTE(v14) = 0;
    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  v13 = CBLogComponent;
  LOBYTE(v14) = 0;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
LABEL_9:
    v22 = 136446210;
    v23 = "+[CBUtil isDeviceSupportedOnWatchOS:]";
    _os_log_impl(&dword_1C0AC1000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s - Mouse - REJECTED", &v22, 0xCu);
    LOBYTE(v14) = 0;
  }

LABEL_24:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (BOOL)isDeviceSupported:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (CBLogInitOnce != -1)
  {
    [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
  }

  v4 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "+[CBUtil isDeviceSupported:]";
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_1C0AC1000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s - %{public}@", &v9, 0x16u);
  }

  if (+[CBUtil isWatchOS])
  {
    v5 = [CBUtil isDeviceSupportedOnWatchOS:v3];
  }

  else
  {
    if (!+[CBUtil isXROS])
    {
      v6 = 1;
      goto LABEL_11;
    }

    v5 = [CBUtil isDeviceSupportedOnXROS:v3];
  }

  v6 = v5;
LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (int64_t)preSSPStringToPairingCode:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 dataUsingEncoding:4];
  [v4 bytes];
  [v4 length];
  __memcpy_chk();
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v9 = "+[CBUtil preSSPStringToPairingCode:]";
    v10 = 2114;
    v11 = v3;
    v12 = 2048;
    v13 = 0;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - str:%{public}@ -> pairingcode:0x%016llX", buf, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (id)preSSPPairingCodeToString:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v7];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  v4 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v9 = "+[CBUtil preSSPPairingCodeToString:]";
    v10 = 2048;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_1C0AC1000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s - pairingcode:0x%016llX -> str:%{public}@", buf, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (void)setBluetoothDebugSetting:(__CFString *)a3 InKey:(__CFString *)a4 InValue:(void *)a5
{
  v8 = CFPreferencesCopyAppValue(a3, @"com.apple.MobileBluetooth.debug");
  if (v8)
  {
    v9 = v8;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v8);
    CFRelease(v9);
    Mutable = MutableCopy;
    v12 = a4;
    if (a5)
    {
LABEL_3:
      CFDictionarySetValue(Mutable, v12, a5);
      goto LABEL_6;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    MutableCopy = Mutable;
    v12 = a4;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  CFDictionaryRemoveValue(Mutable, v12);
  if (CFDictionaryGetCount(MutableCopy))
  {
LABEL_6:
    CFPreferencesSetAppValue(a3, MutableCopy, @"com.apple.MobileBluetooth.debug");
    if (MutableCopy)
    {

      CFRelease(MutableCopy);
    }

    return;
  }

  CFRelease(MutableCopy);

  CFPreferencesSetAppValue(a3, 0, @"com.apple.MobileBluetooth.debug");
}

+ (id)getBluetoothDebugSettingString:(__CFString *)a3 InKey:(__CFString *)a4
{
  v6 = [MEMORY[0x1E696AEC0] stringWithCString:"" encoding:1];
  v7 = CFPreferencesCopyAppValue(a3, @"com.apple.MobileBluetooth.debug");
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7);
  v10 = MutableCopy;
  if (a4)
  {
    Value = CFDictionaryGetValue(MutableCopy, a4);
    if (Value)
    {
      v12 = Value;
      v13 = CFGetTypeID(Value);
      if (v13 == CFStringGetTypeID())
      {
        v14 = CFRetain(v12);
LABEL_10:
        v18 = v14;

        v6 = v18;
        goto LABEL_11;
      }

      v15 = CFGetTypeID(v12);
      if (v15 == CFBooleanGetTypeID())
      {
        v16 = CFBooleanGetValue(v12);
        v17 = @"true";
        if (!v16)
        {
          v17 = @"false";
        }

        v14 = v17;
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(v8);
LABEL_14:

  return v6;
}

+ (id)decodeApplePayloadByteStream:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 bytes];
  if ([v3 length] < 3)
  {
LABEL_8:
    v11 = v4;
    goto LABEL_19;
  }

  v6 = 2;
  v7 = 2;
  while (1)
  {
    v8 = v5 + v6;
    if (*(v5 + v6) != 100)
    {
      goto LABEL_3;
    }

    if ([v3 length] - 1 <= v6)
    {
      break;
    }

    v9 = *(v8 + 1);
    if (!*(v8 + 1))
    {
      if (CBLogInitOnce != -1)
      {
        [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
      }

      v12 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = buf;
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 + 2 length:*(v8 + 1)];
    [v4 setObject:v10 forKeyedSubscript:&unk_1F4020990];

    v7 += v9;
LABEL_3:
    v6 = ++v7;
    if ([v3 length] <= v7)
    {
      goto LABEL_8;
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
  }

  v12 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 0;
    v13 = &v15;
LABEL_17:
    _os_log_impl(&dword_1C0AC1000, v12, OS_LOG_TYPE_DEFAULT, "decodeApplePayloadByteStream failed to decode payload", v13, 2u);
  }

LABEL_18:
  v11 = 0;
LABEL_19:

  return v11;
}

+ (id)encodeApplePayloadByteStream:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v21 = 76;
  v4 = [MEMORY[0x1E695DF88] dataWithBytes:&v21 length:2];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 == v8)
        {
          v10 = *(*(&v17 + 1) + 8 * i);
          if ([v10 integerValue] != 100)
          {
            continue;
          }
        }

        else
        {
          objc_enumerationMutation(v5);
          v10 = *(*(&v17 + 1) + 8 * i);
          if ([v10 integerValue] != 100)
          {
            continue;
          }
        }

        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = v11;
        if (v11 && [v11 length])
        {
          v16 = 100;
          v15 = [v12 length];
          [v4 appendBytes:&v16 length:1];
          [v4 appendBytes:&v15 length:1];
          [v4 appendData:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)isDeviceSupportedOnXROS:(int)a1 .cold.3(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1C0AC1000, a2, OS_LOG_TYPE_ERROR, "API MISUSE: CBUtil isDeviceSupported - invalid value provided for vendorIdSrc:%d (assuming CBVendorIDSourceBluetooth)", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end