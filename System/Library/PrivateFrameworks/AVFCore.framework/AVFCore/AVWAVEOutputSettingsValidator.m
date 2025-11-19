@interface AVWAVEOutputSettingsValidator
- (AVWAVEOutputSettingsValidator)initWithFileType:(id)a3;
- (BOOL)validateAudioOutputSettings:(id)a3 reason:(id *)a4;
@end

@implementation AVWAVEOutputSettingsValidator

- (AVWAVEOutputSettingsValidator)initWithFileType:(id)a3
{
  v13.receiver = self;
  v13.super_class = AVWAVEOutputSettingsValidator;
  v5 = [(AVMediaFileOutputSettingsValidator *)&v13 initWithFileType:?];
  if (([objc_msgSend(a3 "UTI")] & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid parameter not satisfying: %s", v6, v7, v8, v9, v10, "[[fileType UTI] isEqualToString:AVFileTypeWAVE]"), 0}];
    objc_exception_throw(v12);
  }

  return v5;
}

- (BOOL)validateAudioOutputSettings:(id)a3 reason:(id *)a4
{
  v13.receiver = self;
  v13.super_class = AVWAVEOutputSettingsValidator;
  v6 = [AVMediaFileOutputSettingsValidator validateAudioOutputSettings:sel_validateAudioOutputSettings_reason_ reason:?];
  if (v6)
  {
    v7 = [a3 audioSettingsDictionary];
    v8 = *MEMORY[0x1E69582E8];
    if ([v7 objectForKey:*MEMORY[0x1E69582E8]] && (objc_msgSend(objc_msgSend(v7, "objectForKey:", v8), "BOOLValue") & 1) != 0)
    {
      LOBYTE(v6) = 0;
      v9 = @"WAVE files cannot contain floating-point LPCM";
      if (!a4)
      {
        return v6;
      }

LABEL_11:
      *a4 = v9;
      return v6;
    }

    v10 = *MEMORY[0x1E69582D0];
    if ([v7 objectForKey:*MEMORY[0x1E69582D0]])
    {
      v11 = [objc_msgSend(v7 objectForKey:{v10), "BOOLValue"}];
      LOBYTE(v6) = v11 ^ 1;
      if (v11)
      {
        v9 = @"WAVE files cannot contain big-endian LPCM";
      }

      else
      {
        v9 = 0;
      }

      if (a4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = 0;
      LOBYTE(v6) = 1;
      if (a4)
      {
        goto LABEL_11;
      }
    }
  }

  return v6;
}

@end