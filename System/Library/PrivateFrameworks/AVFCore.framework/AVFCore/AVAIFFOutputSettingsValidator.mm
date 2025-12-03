@interface AVAIFFOutputSettingsValidator
- (AVAIFFOutputSettingsValidator)initWithFileType:(id)type;
- (BOOL)validateAudioOutputSettings:(id)settings reason:(id *)reason;
@end

@implementation AVAIFFOutputSettingsValidator

- (AVAIFFOutputSettingsValidator)initWithFileType:(id)type
{
  v13.receiver = self;
  v13.super_class = AVAIFFOutputSettingsValidator;
  v5 = [(AVMediaFileOutputSettingsValidator *)&v13 initWithFileType:?];
  if (([objc_msgSend(type "UTI")] & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid parameter not satisfying: %s", v6, v7, v8, v9, v10, "[[fileType UTI] isEqualToString:AVFileTypeAIFF]"), 0}];
    objc_exception_throw(v12);
  }

  return v5;
}

- (BOOL)validateAudioOutputSettings:(id)settings reason:(id *)reason
{
  v12.receiver = self;
  v12.super_class = AVAIFFOutputSettingsValidator;
  v6 = [AVMediaFileOutputSettingsValidator validateAudioOutputSettings:sel_validateAudioOutputSettings_reason_ reason:?];
  if (v6)
  {
    audioSettingsDictionary = [settings audioSettingsDictionary];
    v8 = *MEMORY[0x1E69582E8];
    if ([audioSettingsDictionary objectForKey:*MEMORY[0x1E69582E8]] && (objc_msgSend(objc_msgSend(audioSettingsDictionary, "objectForKey:", v8), "BOOLValue") & 1) != 0)
    {
      LOBYTE(v6) = 0;
      v9 = @"AIFF files cannot contain floating-point LPCM";
      if (!reason)
      {
        return v6;
      }

LABEL_10:
      *reason = v9;
      return v6;
    }

    v10 = *MEMORY[0x1E69582D0];
    if ([audioSettingsDictionary objectForKey:*MEMORY[0x1E69582D0]])
    {
      v6 = [objc_msgSend(audioSettingsDictionary objectForKey:{v10), "BOOLValue"}];
      v9 = @"AIFF files cannot contain little-endian LPCM";
      if (v6)
      {
        v9 = 0;
      }

      if (reason)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
      LOBYTE(v6) = 1;
      if (reason)
      {
        goto LABEL_10;
      }
    }
  }

  return v6;
}

@end