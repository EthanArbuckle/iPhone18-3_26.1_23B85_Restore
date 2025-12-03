@interface AVAVVideoSettingsVideoOutputSettings
+ (BOOL)_validateVideoCompressionProperties:(id)properties againstSupportedPropertyDictionary:(id)dictionary forCodecType:(id)type exceptionReason:(id *)reason;
+ (id)_videoOutputSettingsWithVideoSettingsDictionary:(id)dictionary exceptionReason:(id *)reason;
- (AVAVVideoSettingsVideoOutputSettings)initWithAVVideoSettingsDictionary:(id)dictionary exceptionReason:(id *)reason;
- (AVAVVideoSettingsVideoOutputSettings)initWithTrustedAVVideoSettingsDictionary:(id)dictionary;
- (BOOL)canFullySpecifyOutputFormatReturningReason:(id *)reason;
- (BOOL)encoderIsAvailableOnCurrentSystemReturningError:(id *)error;
- (NSDictionary)videoCompressionProperties;
- (int)height;
- (int)width;
- (unsigned)videoCodecType;
- (void)dealloc;
@end

@implementation AVAVVideoSettingsVideoOutputSettings

+ (id)_videoOutputSettingsWithVideoSettingsDictionary:(id)dictionary exceptionReason:(id *)reason
{
  v4 = [objc_alloc(objc_opt_class()) initWithAVVideoSettingsDictionary:dictionary exceptionReason:reason];

  return v4;
}

+ (BOOL)_validateVideoCompressionProperties:(id)properties againstSupportedPropertyDictionary:(id)dictionary forCodecType:(id)type exceptionReason:(id *)reason
{
  v41 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [properties allKeys];
  v8 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    v33 = *MEMORY[0x1E6983FE0];
    v32 = *MEMORY[0x1E6983FD8];
    v31 = *MEMORY[0x1E6983FD0];
    v30 = *MEMORY[0x1E6983FB8];
    v28 = *MEMORY[0x1E6983FC0];
    reasonCopy = reason;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v37 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v36 + 1) + 8 * v11);
      if (![type isEqualToString:@"jpeg"] || (objc_msgSend(v12, "isEqualToString:", @"AverageBitRate") & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", @"MaxKeyFrameInterval") & 1) == 0)
      {
        v13 = [dictionary objectForKey:v12];
        v14 = [properties objectForKey:v12];
        if (!v13)
        {
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Compression property %@ is not supported for video codec type %@", v12, type, v26];
          goto LABEL_35;
        }

        v15 = v14;
        v16 = [v13 objectForKey:v33];
        v17 = [v13 objectForKey:v32];
        if (v16 | v17)
        {
          v18 = v17;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Video codec type %@ expects a value for compression property %@ in a particular numeric range, but property value %@ is not numeric", type, v12, v15];
            goto LABEL_35;
          }

          if (v16 && [v16 compare:v15] == 1)
          {
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Video codec type %@ does not allow values for %@ that are numerically less than %@", type, v12, v16];
            goto LABEL_35;
          }

          if (v18 && [v18 compare:v15] == -1)
          {
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Video codec type %@ does not allow values for %@ that are numerically greater than %@", type, v12, v18];
            goto LABEL_35;
          }
        }

        v19 = [v13 objectForKey:v31];
        if (v19)
        {
          v20 = v19;
          if (([v19 containsObject:v15] & 1) == 0)
          {
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"For compression property %@, video codec type %@ only allows the following values: %@", v12, type, objc_msgSend(v20, "componentsJoinedByString:", @", ")];
            goto LABEL_35;
          }
        }

        v21 = [v13 objectForKey:v30];
        if (v21)
        {
          if ([v21 isEqualToString:v28])
          {
            v22 = [v13 objectForKey:@"av_kVTPropertyInitialValueKey"];
            if (v22)
            {
              v23 = v22;
              if (([v15 isEqual:v22] & 1) == 0)
              {
                break;
              }
            }
          }
        }
      }

      if (v9 == ++v11)
      {
        v9 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        v8 = 0;
        v24 = 1;
        reason = reasonCopy;
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_26;
      }
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"For compression property %@, video codec type %@ only allows the value %@", v12, type, v23];
LABEL_35:
    v24 = 0;
    reason = reasonCopy;
    if (reasonCopy)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v24 = 1;
LABEL_26:
    if (reason)
    {
LABEL_27:
      *reason = v8;
    }
  }

  return v24;
}

- (AVAVVideoSettingsVideoOutputSettings)initWithAVVideoSettingsDictionary:(id)dictionary exceptionReason:(id *)reason
{
  v59 = 0;
  v7 = [(AVVideoOutputSettings *)self initWithVideoSettingsDictionary:dictionary exceptionReason:&v59];
  v8 = v7;
  if (!dictionary)
  {
    v51 = v7;
    v57 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v8 userInfo:{a2, @"invalid parameter not satisfying: %s", v52, v53, v54, v55, v56, "avVideoSettingsDictionary != nil"), 0}];
    objc_exception_throw(v57);
  }

  if (!v7)
  {
    goto LABEL_121;
  }

  v9 = [dictionary objectForKey:@"AVVideoCodecKey"];
  v10 = v9;
  if (!v9)
  {
    v59 = @"AVVideoSettings dictionary must contain AVVideoCodecKey";
  }

  v11 = v9 == 0;
  v12 = [dictionary objectForKey:@"AVVideoWidthKey"];
  v13 = [dictionary objectForKey:@"AVVideoHeightKey"];
  v14 = v13;
  if (v12)
  {
    v15 = v11;
  }

  else
  {
    v15 = 1;
  }

  if (v13)
  {
    v15 = 1;
  }

  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  if (!v13)
  {
    v17 = 0;
  }

  v18 = v16 ^ v17;
  if ((v17 & 1) != 0 || !v15)
  {
    v19 = @"AVVideoSettings dictionary must specify a height if it specifies a width";
    if (v17)
    {
      v19 = @"AVVideoSettings dictionary must specify a width if it specifies a height";
    }

    v59 = v19;
  }

  if (v12)
  {
    v20 = v16 ^ v17;
  }

  else
  {
    v20 = 0;
  }

  if (v20 == 1)
  {
    if ([v12 integerValue] <= 0)
    {
      v24 = @"AVVideoSettings dictionary must specify a positive width";
LABEL_40:
      v59 = v24;
      goto LABEL_41;
    }

    v18 = 1;
  }

  if (v18)
  {
    v21 = v14 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21 && [v14 integerValue] <= 0)
  {
    v24 = @"AVVideoSettings dictionary must specify a positive height";
    goto LABEL_40;
  }

  if (v18)
  {
    v60 = 0;
    v58 = 0;
    v22 = AVVideoOutputSettingsExtractPixelAspectRatioAndCleanApertureFromAVVideoSettingsDictionary(dictionary, v12, v14, &v60, &v58, &v59);
    v8->_VTPixelAspectRatioDictionary = [v60 copy];
    v8->_VTCleanApertureDictionary = [v58 copy];
    [MEMORY[0x1E695DF90] dictionary];
    v23 = 0;
    if (v10 && v22)
    {
      AVOSTypeForString(v10);
      [v12 integerValue];
      [v14 integerValue];
      v60 = 0;
      FigSharedRemote_CopyVideoCompressorSupportedPropertyDictionary();
      v23 = v60;
      v22 = 1;
    }

    goto LABEL_42;
  }

LABEL_41:
  [MEMORY[0x1E695DF90] dictionary];
  v22 = 0;
  v23 = 0;
LABEL_42:
  v25 = [dictionary objectForKey:@"AVVideoScalingModeKey"];
  _validValuesForScalingMode = [objc_opt_class() _validValuesForScalingMode];
  if (v22 && v25)
  {
    v27 = _validValuesForScalingMode;
    if ([_validValuesForScalingMode containsObject:v25])
    {
      v22 = 1;
    }

    else
    {
      v22 = 0;
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value for AVVideoScalingModeKey must be one of: %@", objc_msgSend(objc_msgSend(v27, "allObjects"), "componentsJoinedByString:", @", ")];
    }
  }

  v28 = [dictionary objectForKey:@"AVVideoColorPropertiesKey"];
  v29 = v28;
  if (v22)
  {
    if (v28)
    {
      v22 = AVVideoOutputSettingsValidateVideoColorProperties(v28, &v59);
      if (v22)
      {
        if (v23)
        {
          v22 = [objc_opt_class() _validateVideoCompressionProperties:v29 againstSupportedPropertyDictionary:v23 forCodecType:v10 exceptionReason:&v59];
        }
      }
    }
  }

  v30 = [dictionary objectForKey:@"AVVideoAllowWideColorKey"];
  if (v22 && v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 1;
    }

    else
    {
      v22 = 0;
      v59 = @"Dictionary for AVVideoAllowWideColorKey must be an NSNumber";
    }
  }

  v31 = [dictionary objectForKey:@"AVVideoMinimumFrameDuration"];
  if (v22 && v31)
  {
    v22 = AVVideoOutputSettingsValidateMinimumFrameDuration(v31, &v59);
  }

  v32 = [dictionary objectForKey:@"AVVideoFrameRateConversionAlgorithm"];
  if (v22 && v32)
  {
    v22 = AVVideoOutputSettingsValidateFrameRateConversionAlgorithm(v32, &v59);
  }

  v33 = [dictionary objectForKey:@"AVVideoEmitSequencesAtSyncFramesOnly"];
  if (v22 && v33)
  {
    v22 = AVVideoOutputSettingsValidateEmitSequencesAtSyncFramesOnly(v33, &v59);
  }

  v34 = [dictionary objectForKey:@"AVVideoMinimumIntervalForSyncFrames"];
  if (v22 && v34)
  {
    v22 = AVVideoOutputSettingsValidateMinimumFrameDuration(v34, &v59);
  }

  v35 = [dictionary objectForKey:@"AVVideoCompressionPropertiesKey"];
  if (!v22 || !v35)
  {
    if (v22)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  v36 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v35];
  [v36 removeObjectForKey:@"AVVideoPixelAspectRatioKey"];
  [v36 removeObjectForKey:@"AVVideoCleanApertureKey"];
  v37 = [v36 objectForKey:@"AverageBitRate"];
  if (v37 && [v37 integerValue] <= 0)
  {
    v38 = 0;
    v59 = @"AVVideoCompressionPropertiesKey dictionary must specify a positive value for AVVideoAverageBitRateKey";
  }

  else
  {
    v38 = 1;
  }

  v39 = [v36 objectForKey:@"Quality"];
  if (v38 && v39)
  {
    [v39 floatValue];
    if (v40 < 0.0 || v40 > 1.0)
    {
      v38 = 0;
      v59 = @"AVVideoCompressionPropertiesKey dictionary must specify a value between 0.0 and 1.0 for AVVideoQualityKey";
    }

    else
    {
      v38 = 1;
    }
  }

  v41 = [v36 objectForKey:@"MaxKeyFrameIntervalDuration"];
  if (v38 && v41)
  {
    [v41 doubleValue];
    if (v42 >= 0.0)
    {
      v38 = 1;
    }

    else
    {
      v38 = 0;
      v59 = @"AVVideoCompressionPropertiesKey dictionary must specify a non-negative value for AVVideoMaxKeyFrameIntervalDurationKey";
    }
  }

  v43 = [v36 objectForKey:@"MaxKeyFrameInterval"];
  if (v38 && v43)
  {
    if ([v43 integerValue] <= 0)
    {
      v38 = 0;
      v59 = @"AVVideoCompressionPropertiesKey dictionary must specify a positive value for AVVideoMaxKeyFrameIntervalKey";
    }

    else
    {
      v38 = 1;
    }
  }

  v44 = [v36 objectForKey:@"H264EntropyMode"];
  if (v38 && v44)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = 1;
    }

    else
    {
      v38 = 0;
      v59 = @"Value for AVVideoH264EntropyModeKey must be an instance of NSString";
    }
  }

  v45 = [v36 objectForKey:@"ExpectedFrameRate"];
  if (v38 && v45)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = 1;
    }

    else
    {
      v38 = 0;
      v59 = @"Value for AVVideoExpectedSourceFrameRateKey must be an instance of NSNumber";
    }
  }

  v46 = [v36 objectForKey:@"AllowFrameReordering"];
  if (v38 && v46)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = 1;
    }

    else
    {
      v38 = 0;
      v59 = @"Value for AVVideoAllowFrameReorderingKey must be an instance of NSNumber";
    }
  }

  v47 = [v36 objectForKey:@"AverageNonDroppableFrameRate"];
  if (v38)
  {
    if (v47)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v59 = @"Value for AVVideoAverageNonDroppableFrameRateKey must be an instance of NSNumber";
        v8->_adaptedVideoCompressionProperties = [v36 copy];
        goto LABEL_120;
      }
    }
  }

  if (v23)
  {
    v48 = v38;
  }

  else
  {
    v48 = 0;
  }

  if (v48 == 1)
  {
    v49 = [objc_opt_class() _validateVideoCompressionProperties:v36 againstSupportedPropertyDictionary:v23 forCodecType:v10 exceptionReason:&v59];
    v8->_adaptedVideoCompressionProperties = [v36 copy];
    if (v49)
    {
      goto LABEL_121;
    }

LABEL_120:

    v8 = 0;
    goto LABEL_121;
  }

  v8->_adaptedVideoCompressionProperties = [v36 copy];
  if ((v38 & 1) == 0)
  {
    goto LABEL_120;
  }

LABEL_121:
  if (reason)
  {
    *reason = v59;
  }

  return v8;
}

- (AVAVVideoSettingsVideoOutputSettings)initWithTrustedAVVideoSettingsDictionary:(id)dictionary
{
  v10.receiver = self;
  v10.super_class = AVAVVideoSettingsVideoOutputSettings;
  v4 = [(AVVideoOutputSettings *)&v10 initWithVideoSettingsDictionary:dictionary exceptionReason:0];
  v8 = 0;
  v9 = 0;
  AVVideoOutputSettingsExtractPixelAspectRatioAndCleanApertureFromAVVideoSettingsDictionary(dictionary, 0, 0, &v9, &v8, 0);
  v4->_VTPixelAspectRatioDictionary = [v9 copy];
  v4->_VTCleanApertureDictionary = [v8 copy];
  v5 = [dictionary objectForKey:@"AVVideoCompressionPropertiesKey"];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
    [v6 removeObjectForKey:@"AVVideoPixelAspectRatioKey"];
    [v6 removeObjectForKey:@"AVVideoCleanApertureKey"];
    v4->_adaptedVideoCompressionProperties = [v6 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAVVideoSettingsVideoOutputSettings;
  [(AVOutputSettings *)&v3 dealloc];
}

- (BOOL)encoderIsAvailableOnCurrentSystemReturningError:(id *)error
{
  listOfVideoEncodersOut = 0;
  videoCodecType = [(AVAVVideoSettingsVideoOutputSettings *)self videoCodecType];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6984250], *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6984258], v6);
  VTCopyVideoEncoderList(Mutable, &listOfVideoEncodersOut);
  if (CFArrayGetCount(listOfVideoEncodersOut) < 1)
  {
    v11 = 1;
    if (Mutable)
    {
LABEL_6:
      CFRelease(Mutable);
    }
  }

  else
  {
    v7 = 0;
    v8 = *MEMORY[0x1E6984238];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(listOfVideoEncodersOut, v7);
      v10 = [CFDictionaryGetValue(ValueAtIndex v8)];
      v11 = v10 == videoCodecType;
      if (v10 == videoCodecType)
      {
        break;
      }

      ++v7;
    }

    while (v7 < CFArrayGetCount(listOfVideoEncodersOut));
    if (Mutable)
    {
      goto LABEL_6;
    }
  }

  if (listOfVideoEncodersOut)
  {
    CFRelease(listOfVideoEncodersOut);
  }

  if (!v11)
  {
    v12 = AVLocalizedError(@"AVFoundationErrorDomain", -11834, [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"vide", @"AVErrorMediaTypeKey", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", videoCodecType), 0), @"AVErrorMediaSubTypeKey", 0}]);
    if (error)
    {
      *error = v12;
    }
  }

  return v11;
}

- (BOOL)canFullySpecifyOutputFormatReturningReason:(id *)reason
{
  v19 = *MEMORY[0x1E69E9840];
  videoSettingsDictionary = [(AVVideoOutputSettings *)self videoSettingsDictionary];
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"AVVideoCodecKey", @"AVVideoWidthKey", @"AVVideoHeightKey", 0}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (![(NSDictionary *)videoSettingsDictionary objectForKey:v10])
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required key %@", v10];
          if (!reason)
          {
            return 0;
          }

          v13 = v12;
          result = 0;
          *reason = v13;
          return result;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (int)width
{
  v2 = [(NSDictionary *)[(AVOutputSettings *)self outputSettingsDictionary] objectForKey:@"AVVideoWidthKey"];
  if (v2)
  {
    LODWORD(v2) = [v2 integerValue];
  }

  return v2;
}

- (int)height
{
  v2 = [(NSDictionary *)[(AVOutputSettings *)self outputSettingsDictionary] objectForKey:@"AVVideoHeightKey"];
  if (v2)
  {
    LODWORD(v2) = [v2 integerValue];
  }

  return v2;
}

- (unsigned)videoCodecType
{
  v2 = [(NSDictionary *)[(AVOutputSettings *)self outputSettingsDictionary] objectForKey:@"AVVideoCodecKey"];
  if (v2)
  {

    LODWORD(v2) = AVOSTypeForString(v2);
  }

  return v2;
}

- (NSDictionary)videoCompressionProperties
{
  outputSettingsDictionary = [(AVOutputSettings *)self outputSettingsDictionary];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_adaptedVideoCompressionProperties];
  if ([-[NSDictionary objectForKey:](outputSettingsDictionary objectForKey:{@"AVVideoCodecKey", "isEqualToString:", @"jpeg"}] && !-[NSDictionary objectForKey:](v4, "objectForKey:", @"Quality"))
  {
    LODWORD(v5) = 1053609165;
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    [(NSDictionary *)v4 setObject:v6 forKey:*MEMORY[0x1E69837E0]];
  }

  v7 = [(NSDictionary *)outputSettingsDictionary objectForKey:@"AVVideoColorPropertiesKey"];
  if (v7)
  {
    [(NSDictionary *)v4 addEntriesFromDictionary:v7];
  }

  VTPixelAspectRatioDictionary = self->_VTPixelAspectRatioDictionary;
  if (VTPixelAspectRatioDictionary)
  {
    [(NSDictionary *)v4 setObject:VTPixelAspectRatioDictionary forKey:*MEMORY[0x1E6983790]];
  }

  VTCleanApertureDictionary = self->_VTCleanApertureDictionary;
  if (VTCleanApertureDictionary)
  {
    [(NSDictionary *)v4 setObject:VTCleanApertureDictionary forKey:*MEMORY[0x1E69835A0]];
  }

  return v4;
}

@end