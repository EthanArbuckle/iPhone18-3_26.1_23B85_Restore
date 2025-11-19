@interface AVVideoOutputSettings
+ (AVVideoOutputSettings)videoOutputSettingsWithTrustedVideoSettingsDictionary:(id)a3;
+ (AVVideoOutputSettings)videoOutputSettingsWithVideoSettingsDictionary:(id)a3;
+ (id)_videoOutputSettingsWithVideoSettingsDictionary:(id)a3 exceptionReason:(id *)a4;
+ (id)registeredOutputSettingsClasses;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumFrameDuration;
- (BOOL)allowWideColor;
- (BOOL)dimensionsAreBoundingBox;
- (BOOL)isProRes;
- (BOOL)isProRes4KHighFPSSetting;
- (NSDictionary)cleanApertureDictionary;
- (NSDictionary)pixelAspectRatioDictionary;
- (NSDictionary)pixelTransferProperties;
- (NSDictionary)videoScalingProperties;
- (NSString)frameRateConversionAlgorithm;
- (id)compatibleMediaTypes;
- (int)height;
- (int)width;
- (void)colorPropertiesConsideringFormatDescriptions:(id)a3 colorPrimaries:(id *)a4 transferFunction:(id *)a5 ycbcrMatrix:(id *)a6;
@end

@implementation AVVideoOutputSettings

+ (id)registeredOutputSettingsClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

+ (AVVideoOutputSettings)videoOutputSettingsWithVideoSettingsDictionary:(id)a3
{
  v13 = 0;
  result = [a1 _videoOutputSettingsWithVideoSettingsDictionary:a3 exceptionReason:&v13];
  if (!result)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, v13, v6, v7, v8, v9, v10, v12), 0}];
    objc_exception_throw(v11);
  }

  return result;
}

+ (AVVideoOutputSettings)videoOutputSettingsWithTrustedVideoSettingsDictionary:(id)a3
{
  if ([a3 objectForKey:*MEMORY[0x1E6966130]])
  {
    v4 = [[AVPixelBufferAttributesVideoOutputSettings alloc] initWithTrustedPixelBufferAttributes:a3];
  }

  else
  {
    result = [a3 objectForKey:@"AVVideoCodecKey"];
    if (!result)
    {
      return result;
    }

    v4 = [[AVAVVideoSettingsVideoOutputSettings alloc] initWithTrustedAVVideoSettingsDictionary:a3];
  }

  return v4;
}

+ (id)_videoOutputSettingsWithVideoSettingsDictionary:(id)a3 exceptionReason:(id *)a4
{
  if (a3)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___AVVideoOutputSettings;
    return objc_msgSendSuper2(&v6, sel__outputSettingsWithOutputSettingsDictionary_mediaType_exceptionReason_, a3, @"vide", a4);
  }

  else
  {

    return [a1 defaultVideoOutputSettings];
  }
}

- (id)compatibleMediaTypes
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"vide";
  v3[1] = @"auxv";
  return [MEMORY[0x1E695DFD8] setWithObjects:v3 count:2];
}

- (int)width
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (int)height
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (NSDictionary)pixelAspectRatioDictionary
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (NSDictionary)cleanApertureDictionary
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (NSDictionary)videoScalingProperties
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(NSDictionary *)[(AVVideoOutputSettings *)self videoSettingsDictionary] objectForKey:@"AVVideoColorPropertiesKey"];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 objectForKey:@"ColorPrimaries"];
    v7 = [v5 objectForKey:@"YCbCrMatrix"];
    v8 = [v5 objectForKey:@"TransferFunction"];
    [(NSDictionary *)v3 setObject:v6 forKey:*MEMORY[0x1E6983DC0]];
    [(NSDictionary *)v3 setObject:v7 forKey:*MEMORY[0x1E6983DE0]];
    [(NSDictionary *)v3 setObject:v8 forKey:*MEMORY[0x1E6983DD8]];
  }

  if ([(NSDictionary *)v3 count])
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (NSDictionary)pixelTransferProperties
{
  result = [(NSDictionary *)[(AVVideoOutputSettings *)self videoSettingsDictionary] objectForKey:@"AVVideoScalingModeKey"];
  if (result)
  {
    v5 = result;
    if (([(NSDictionary *)result isEqualToString:@"AVVideoScalingModeFit"]& 1) != 0 || ([(NSDictionary *)v5 isEqualToString:@"AVVideoScalingModeResize"]& 1) != 0)
    {
      v6 = MEMORY[0x1E69840E0];
    }

    else if (([(NSDictionary *)v5 isEqualToString:@"AVVideoScalingModeResizeAspect"]& 1) != 0)
    {
      v6 = MEMORY[0x1E69840E8];
    }

    else
    {
      if (([(NSDictionary *)v5 isEqualToString:@"AVVideoScalingModeResizeAspectFill"]& 1) == 0)
      {
        v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Unrecognized value for %@: %@", v10, v11, v12, v13, v14, @"AVVideoScalingModeKey", 0}];
        objc_exception_throw(v15);
      }

      v6 = MEMORY[0x1E69840F8];
    }

    v7 = *v6;
    v8 = MEMORY[0x1E695DF20];
    v9 = *MEMORY[0x1E6983E30];

    return [v8 dictionaryWithObject:v7 forKey:v9];
  }

  return result;
}

- (void)colorPropertiesConsideringFormatDescriptions:(id)a3 colorPrimaries:(id *)a4 transferFunction:(id *)a5 ycbcrMatrix:(id *)a6
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v10 = [(NSDictionary *)[(AVVideoOutputSettings *)self videoSettingsDictionary] objectForKey:@"AVVideoColorPropertiesKey"];
  if (v10)
  {
    v11 = v10;
    v14 = [v10 objectForKey:@"ColorPrimaries"];
    v13 = [v11 objectForKey:@"YCbCrMatrix"];
    v12 = [v11 objectForKey:@"TransferFunction"];
    if (![(AVVideoOutputSettings *)self allowWideColor])
    {
      [(AVVideoOutputSettings *)self allowWideColor];
      CMFormatDescriptionGetWidestColorPropertiesFromFormatDescriptions();
    }
  }

  if (a4)
  {
    *a4 = v14;
  }

  if (a5)
  {
    *a5 = v12;
  }

  if (a6)
  {
    *a6 = v13;
  }
}

- (BOOL)dimensionsAreBoundingBox
{
  v2 = [(NSDictionary *)[(AVVideoOutputSettings *)self videoSettingsDictionary] objectForKey:@"AVVideoScalingModeKey"];
  if (v2)
  {

    LOBYTE(v2) = [v2 isEqualToString:@"AVVideoScalingModeFit"];
  }

  return v2;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumFrameDuration
{
  *retstr = **&MEMORY[0x1E6960C70];
  v4 = [(NSDictionary *)[(AVVideoOutputSettings *)self videoSettingsDictionary] objectForKey:@"AVVideoMinimumFrameDuration"];

  return CMTimeMakeFromDictionary(retstr, v4);
}

- (NSString)frameRateConversionAlgorithm
{
  v2 = [(AVVideoOutputSettings *)self videoSettingsDictionary];

  return [(NSDictionary *)v2 objectForKey:@"AVVideoFrameRateConversionAlgorithm"];
}

- (BOOL)allowWideColor
{
  v3 = [(NSDictionary *)[(AVVideoOutputSettings *)self videoSettingsDictionary] objectForKey:@"AVVideoAllowWideColorKey"];
  if ([(NSDictionary *)[(AVVideoOutputSettings *)self videoSettingsDictionary] objectForKey:@"AVVideoColorPropertiesKey"])
  {
    return 1;
  }

  if (!v3)
  {
    return 0;
  }

  return [v3 BOOLValue];
}

- (BOOL)isProRes
{
  v2 = [(AVOutputSettings *)self outputSettingsDictionary];
  if (v2)
  {
    v2 = [(NSDictionary *)v2 objectForKey:@"AVVideoCodecKey"];
    if (v2)
    {
      v3 = AVOSTypeForString(v2);
      LOBYTE(v2) = 1;
      if (v3 <= 1634743415)
      {
        if (v3 != 1634742376 && v3 != 1634742888 && v3 != 1634743400)
        {
          goto LABEL_16;
        }
      }

      else if ((v3 - 1634755432) > 0xB || ((1 << (v3 - 104)) & 0x8C1) == 0)
      {
        v5 = (v3 - 1634759272) > 6 || ((1 << (v3 - 104)) & 0x51) == 0;
        if (v5 && v3 != 1634743416)
        {
LABEL_16:
          LOBYTE(v2) = 0;
        }
      }
    }
  }

  return v2;
}

- (BOOL)isProRes4KHighFPSSetting
{
  v2 = [(AVOutputSettings *)self outputSettingsDictionary];
  if (!v2)
  {
    return v2;
  }

  v3 = v2;
  v2 = [(NSDictionary *)v2 objectForKey:@"AVVideoCodecKey"];
  if (!v2)
  {
    return v2;
  }

  v4 = AVOSTypeForString(v2);
  LOBYTE(v2) = 0;
  if (v4 > 1634743415)
  {
    if ((v4 - 1634755432) > 0xB || ((1 << (v4 - 104)) & 0x8C1) == 0)
    {
      v6 = (v4 - 1634759272) > 6 || ((1 << (v4 - 104)) & 0x51) == 0;
      if (v6 && v4 != 1634743416)
      {
        return v2;
      }
    }

LABEL_25:
    v2 = [(NSDictionary *)v3 objectForKey:@"AVVideoWidthKey"];
    if (!v2)
    {
      return v2;
    }

    if ([(NSDictionary *)v2 longValue]>= 3840)
    {
      v2 = [(NSDictionary *)v3 objectForKey:@"AVVideoHeightKey"];
      if (!v2)
      {
        return v2;
      }

      if ([(NSDictionary *)v2 longValue]>= 2160)
      {
        v2 = [(NSDictionary *)v3 objectForKey:@"AVVideoCompressionPropertiesKey"];
        if (!v2)
        {
          return v2;
        }

        v2 = [(NSDictionary *)v2 objectForKey:@"ExpectedFrameRate"];
        if (!v2)
        {
          return v2;
        }

        [(NSDictionary *)v2 floatValue];
        if (v4 == 1634759278 || v4 == 1634759272)
        {
          v11 = 50.0;
        }

        else
        {
          v11 = 100.0;
        }

        if (v10 >= v11)
        {
          LOBYTE(v2) = 1;
          return v2;
        }
      }
    }

    LOBYTE(v2) = 0;
    return v2;
  }

  if (v4 == 1634742376 || v4 == 1634742888 || v4 == 1634743400)
  {
    goto LABEL_25;
  }

  return v2;
}

@end