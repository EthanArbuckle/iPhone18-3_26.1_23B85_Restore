@interface CRLCapabilities
+ (CRLCapabilities)currentCapabilities;
- (BOOL)hasHEVCHardwareEncoding;
- (BOOL)p_isMetalCapable;
- (CGSize)maximumHardcodedTextureSize;
- (CGSize)maximumImageSize;
- (CGSize)maximumMetalTextureSizeForDevice:(id)device;
- (CRLCapabilities)init;
- (id)metalCapabilitiesForDevice:(id)device;
- (unint64_t)physicalMemory;
- (void)p_setupDevice;
@end

@implementation CRLCapabilities

- (void)p_setupDevice
{
  v19 = +[UIDevice crl_platformString];
  if ([v19 hasPrefix:{@"iPod3, "}])
  {
    v3 = 1;
LABEL_5:
    v4 = vdupq_n_s64(v3);
LABEL_6:
    *&self->_device = v4;
    goto LABEL_7;
  }

  if ([v19 hasPrefix:{@"iPod4, "}])
  {
    v3 = 2;
    goto LABEL_5;
  }

  if ([v19 hasPrefix:{@"iPod5, "}])
  {
    v4 = xmmword_1000A5240;
    goto LABEL_6;
  }

  if ([v19 hasPrefix:{@"iPhone2, "}])
  {
    v4 = xmmword_1000A5250;
    goto LABEL_6;
  }

  if ([v19 hasPrefix:{@"iPhone3, "}])
  {
    v4 = xmmword_1000A5260;
    goto LABEL_6;
  }

  if ([v19 hasPrefix:{@"iPhone4, "}])
  {
    v4 = xmmword_1000A5270;
    goto LABEL_6;
  }

  if ([v19 hasPrefix:{@"iPhone5, "}])
  {
    v4 = xmmword_1000A5280;
    goto LABEL_6;
  }

  if ([v19 hasPrefix:{@"iPhone7, "}])
  {
    v4 = xmmword_1000A5290;
    goto LABEL_6;
  }

  if ([v19 hasPrefix:{@"iPhone8, 4"}])
  {
    v4 = xmmword_1000A52A0;
    goto LABEL_6;
  }

  if ([v19 hasPrefix:{@"iPhone8, "}])
  {
    v4 = xmmword_1000A52B0;
    goto LABEL_6;
  }

  if ([v19 hasPrefix:{@"iPhone9, "}])
  {
    v4 = xmmword_1000A52C0;
    goto LABEL_6;
  }

  if ([v19 hasPrefix:{@"iPhone10, 6"}])
  {
    v4 = xmmword_1000A52D0;
    goto LABEL_6;
  }

  if ([v19 hasPrefix:{@"iPhone10, "}])
  {
    v4 = xmmword_1000A52E0;
    goto LABEL_6;
  }

  if ([v19 hasPrefix:{@"iPad1, "}])
  {
    v4 = xmmword_1000A52F0;
    goto LABEL_6;
  }

  if (![v19 hasPrefix:{@"iPad2, "}])
  {
    if ([v19 hasPrefix:{@"iPad3, "}])
    {
      v17 = xmmword_1000A53B0;
      if (([v19 hasPrefix:{@"iPad3, 1"}] & 1) == 0 && (objc_msgSend(v19, "hasPrefix:", @"iPad3,2") & 1) == 0)
      {
        v6 = [v19 hasPrefix:{@"iPad3, 3"}];
        v4 = xmmword_1000A53B0;
        if (v6)
        {
          goto LABEL_6;
        }

        v17 = xmmword_1000A53C0;
        if (([v19 hasPrefix:{@"iPad3, 4", COERCE_DOUBLE(16)}] & 1) == 0 && (objc_msgSend(v19, "hasPrefix:", @"iPad3,5") & 1) == 0)
        {
          v7 = @"iPad3,6";
          goto LABEL_72;
        }
      }
    }

    else if ([v19 hasPrefix:{@"iPad4, "}])
    {
      v17 = xmmword_1000A5380;
      if (([v19 hasPrefix:{@"iPad4, 4"}] & 1) == 0 && (objc_msgSend(v19, "hasPrefix:", @"iPad4,5") & 1) == 0)
      {
        v8 = [v19 hasPrefix:{@"iPad4, 6"}];
        v4 = xmmword_1000A5380;
        if (v8)
        {
          goto LABEL_6;
        }

        v17 = xmmword_1000A5390;
        if (([v19 hasPrefix:{@"iPad4, 7", COERCE_DOUBLE(19)}] & 1) == 0 && (objc_msgSend(v19, "hasPrefix:", @"iPad4,8") & 1) == 0)
        {
          v9 = [v19 hasPrefix:{@"iPad4, 9"}];
          v4 = xmmword_1000A5390;
          if (v9)
          {
            goto LABEL_6;
          }

          v17 = xmmword_1000A53A0;
          if (([v19 hasPrefix:{@"iPad4, 1", COERCE_DOUBLE(21)}] & 1) == 0 && (objc_msgSend(v19, "hasPrefix:", @"iPad4,2") & 1) == 0)
          {
            v7 = @"iPad4,3";
            goto LABEL_72;
          }
        }
      }
    }

    else if ([v19 hasPrefix:{@"iPad5, "}])
    {
      v17 = xmmword_1000A5360;
      if (([v19 hasPrefix:{@"iPad5, 3"}] & 1) == 0)
      {
        v10 = [v19 hasPrefix:{@"iPad5, 4"}];
        v4 = xmmword_1000A5360;
        if (v10)
        {
          goto LABEL_6;
        }

        v17 = xmmword_1000A5370;
        if (([v19 hasPrefix:{@"iPad5, 1", COERCE_DOUBLE(22)}] & 1) == 0)
        {
          v7 = @"iPad5,2";
          goto LABEL_72;
        }
      }
    }

    else if ([v19 hasPrefix:{@"iPad6, "}])
    {
      v17 = xmmword_1000A5330;
      if (([v19 hasPrefix:{@"iPad6, 3"}] & 1) == 0)
      {
        v11 = [v19 hasPrefix:{@"iPad6, 4"}];
        v4 = xmmword_1000A5330;
        if (v11)
        {
          goto LABEL_6;
        }

        v17 = xmmword_1000A5340;
        if (([v19 hasPrefix:{@"iPad6, 7", COERCE_DOUBLE(24)}] & 1) == 0)
        {
          v12 = [v19 hasPrefix:{@"iPad6, 8"}];
          v4 = xmmword_1000A5340;
          if (v12)
          {
            goto LABEL_6;
          }

          v17 = xmmword_1000A5350;
          if (([v19 hasPrefix:{@"iPad6, 11", COERCE_DOUBLE(25)}] & 1) == 0)
          {
            v7 = @"iPad6,12";
            goto LABEL_72;
          }
        }
      }
    }

    else
    {
      if (![v19 hasPrefix:{@"iPad7, "}])
      {
        goto LABEL_7;
      }

      v17 = xmmword_1000A5300;
      if (([v19 hasPrefix:{@"iPad7, 1"}] & 1) == 0)
      {
        v14 = [v19 hasPrefix:{@"iPad7, 2"}];
        v4 = xmmword_1000A5300;
        if (v14)
        {
          goto LABEL_6;
        }

        v17 = xmmword_1000A5310;
        if (([v19 hasPrefix:{@"iPad7, 3", COERCE_DOUBLE(28)}] & 1) == 0)
        {
          v15 = [v19 hasPrefix:{@"iPad7, 4"}];
          v4 = xmmword_1000A5310;
          if (v15)
          {
            goto LABEL_6;
          }

          v17 = xmmword_1000A5320;
          if (([v19 hasPrefix:{@"iPad7, 5", COERCE_DOUBLE(27)}] & 1) == 0)
          {
            v16 = [v19 hasPrefix:{@"iPad7, 6"}];
            v4 = xmmword_1000A5320;
            if (v16)
            {
              goto LABEL_6;
            }

            goto LABEL_7;
          }
        }
      }
    }

LABEL_76:
    v4 = v17;
    goto LABEL_6;
  }

  v17 = xmmword_1000A53D0;
  if ([v19 hasPrefix:{@"iPad2, 1"}] & 1) != 0 || (objc_msgSend(v19, "hasPrefix:", @"iPad2,2"))
  {
    goto LABEL_76;
  }

  v5 = [v19 hasPrefix:{@"iPad2, 3"}];
  v4 = xmmword_1000A53D0;
  if (v5)
  {
    goto LABEL_6;
  }

  if ([v19 hasPrefix:{@"iPad2, 4", COERCE_DOUBLE(15)}])
  {
    v4 = xmmword_1000A53E0;
    goto LABEL_6;
  }

  v17 = xmmword_1000A53F0;
  if ([v19 hasPrefix:{@"iPad2, 5"}] & 1) != 0 || (objc_msgSend(v19, "hasPrefix:", @"iPad2,6"))
  {
    goto LABEL_76;
  }

  v7 = @"iPad2,7";
LABEL_72:
  v13 = [v19 hasPrefix:{v7, v17}];
  v4 = v18;
  if (v13)
  {
    goto LABEL_6;
  }

LABEL_7:
  self->_deviceType = CRLCapabilitiesDeviceTypeFromHWModelString(v19);
}

- (CRLCapabilities)init
{
  v8.receiver = self;
  v8.super_class = CRLCapabilities;
  v2 = [(CRLCapabilities *)&v8 init];
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A2B0;
    block[3] = &unk_1000C3630;
    v4 = v2;
    v7 = v4;
    if (qword_1000D92F8 != -1)
    {
      dispatch_once(&qword_1000D92F8, block);
    }

    [(CRLCapabilities *)v4 p_setupPlatform];
    [(CRLCapabilities *)v4 p_setupDevice];
  }

  return v3;
}

+ (CRLCapabilities)currentCapabilities
{
  if (qword_1000D9308 != -1)
  {
    sub_100089138();
  }

  v3 = qword_1000D9310;

  return v3;
}

- (CGSize)maximumHardcodedTextureSize
{
  platform = self->_platform;
  if ((platform - 2) < 2)
  {
    v5 = 0x40C0000000000000;
    goto LABEL_6;
  }

  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (platform)
  {
    if (platform == 1)
    {
      v5 = 0x40B0000000000000;
LABEL_6:
      height = *&v5;
      width = *&v5;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10008914C();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100089160();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_1000891E8();
    }

    v6 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1000879AC(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCapabilities maximumHardcodedTextureSize]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLCapabilities.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:386 isFatal:0 description:"Unknown platform!"];
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)maximumImageSize
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  platform = self->_platform;
  if (platform > 1)
  {
    if (platform == 2)
    {
      v5 = 0x40D0000000000000;
      goto LABEL_18;
    }

    if (platform == 3)
    {
LABEL_7:
      v5 = 0x40C0000000000000;
LABEL_18:
      height = *&v5;
      width = *&v5;
    }
  }

  else
  {
    if (platform)
    {
      if (platform != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_7;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_100089210();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100089224();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_1000892AC();
    }

    v6 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1000879AC(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCapabilities maximumImageSize]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLCapabilities.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:406 isFatal:0 description:"Unknown platform!"];
  }

LABEL_19:
  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)maximumMetalTextureSizeForDevice:(id)device
{
  if ([(CRLCapabilities *)self isMetalCapable])
  {
    v4 = 8192.0;
    v5 = 8192.0;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_1000892D4();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1000892E8();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_100089370();
    }

    v6 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1000879AC(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCapabilities maximumMetalTextureSizeForDevice:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLCapabilities.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:424 isFatal:0 description:"Shouldn't be asking for the maximum Metal texture size on a device that doesn't support Metal."];

    [(CRLCapabilities *)self maximumHardcodedTextureSize];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (id)metalCapabilitiesForDevice:(id)device
{
  deviceCopy = device;
  if (!deviceCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_100089398();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1000893AC();
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10008945C();
    }

    v4 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1000879AC(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLCapabilities metalCapabilitiesForDevice:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLCapabilities.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:438 isFatal:0 description:"invalid nil value for '%{public}s'", "device"];
  }

  if (qword_1000D9320 != -1)
  {
    sub_100089484();
  }

  v7 = [qword_1000D9318 objectForKey:deviceCopy];
  if (!v7)
  {
    v7 = [[CRLMetalDeviceCapabilities alloc] initWithDevice:deviceCopy];
    [qword_1000D9318 setObject:v7 forKey:deviceCopy];
  }

  return v7;
}

- (BOOL)p_isMetalCapable
{
  v2 = MTLCreateSystemDefaultDevice();
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)physicalMemory
{
  v2 = +[NSProcessInfo processInfo];
  physicalMemory = [v2 physicalMemory];

  return physicalMemory;
}

- (BOOL)hasHEVCHardwareEncoding
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AD0C;
  block[3] = &unk_1000C3630;
  block[4] = self;
  if (qword_1000D9330 != -1)
  {
    dispatch_once(&qword_1000D9330, block);
  }

  return byte_1000D9328;
}

@end