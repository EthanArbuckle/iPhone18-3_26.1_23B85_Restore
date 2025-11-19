@interface AVCaptionOutputSettings
+ (id)_outputSettingsWithOutputSettingsDictionary:(id)a3 mediaType:(id)a4 exceptionReason:(id *)a5;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)captionTimeCodeFrameDuration;
- (AVCaptionOutputSettings)initWithCaptionSettingsDictionary:(id)a3 exceptionReason:(id *)a4;
- (BOOL)useDropFrameTimeCode;
- (id)compatibleMediaTypes;
@end

@implementation AVCaptionOutputSettings

+ (id)_outputSettingsWithOutputSettingsDictionary:(id)a3 mediaType:(id)a4 exceptionReason:(id *)a5
{
  v5 = [[AVCaptionOutputSettings alloc] initWithCaptionSettingsDictionary:a3 exceptionReason:a5];

  return v5;
}

- (AVCaptionOutputSettings)initWithCaptionSettingsDictionary:(id)a3 exceptionReason:(id *)a4
{
  v16 = 0;
  v15.receiver = self;
  v15.super_class = AVCaptionOutputSettings;
  v5 = [(AVOutputSettings *)&v15 initWithOutputSettingsDictionary:a3 exceptionReason:&v16];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = v5;
  v7 = [(NSDictionary *)[(AVOutputSettings *)v5 outputSettingsDictionary] valueForKey:@"AVCaptionTimeCodeFrameDurationKey"];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
      v10 = @"The value of AVCaptionTimeCodeFrameDurationKey is neither NSValue nor NSDictionary.";
      goto LABEL_11;
    }

    CMTimeMakeFromDictionary(&v13, v8);
    if ((v13.flags & 0x1D) != 1)
    {
      v9 = 0;
      v10 = @"NSDictionary for AVCaptionTimeCodeFrameDurationKey is not convertible to a numeric CMTime.";
      goto LABEL_11;
    }

LABEL_8:
    v9 = 1;
    goto LABEL_12;
  }

  [(__CFDictionary *)v8 CMTimeValue];
  if ((v14 & 0x1D) == 1)
  {
    goto LABEL_8;
  }

  v9 = 0;
  v10 = @"NSValue for AVCaptionTimeCodeFrameDurationKey is not convertible to a numeric CMTime.";
LABEL_11:
  v16 = v10;
LABEL_12:
  v11 = [(NSDictionary *)[(AVOutputSettings *)v6 outputSettingsDictionary] valueForKey:@"AVCaptionUseDropFrameTimeCodeKey"];
  if (v9 && v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = @"The value of AVCaptionUseDropFrameTimeCodeKey is not NSNumber.";
  }

  else if (v9)
  {
    return v6;
  }

LABEL_19:
  v6 = 0;
  if (a4)
  {
    *a4 = v16;
  }

  return v6;
}

- (id)compatibleMediaTypes
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = AVMediaTypesForCaptionEditing();

  return [v2 setWithArray:v3];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)captionTimeCodeFrameDuration
{
  *retstr = **&MEMORY[0x1E6960C70];
  v4 = [(NSDictionary *)[(AVOutputSettings *)self outputSettingsDictionary] valueForKey:@"AVCaptionTimeCodeFrameDurationKey"];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    if (v4)
    {
      result = [v4 CMTimeValue];
    }

    else
    {
      v6 = 0uLL;
      v7 = 0;
    }

    *&retstr->var0 = v6;
    retstr->var3 = v7;
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {

      return CMTimeMakeFromDictionary(retstr, v4);
    }
  }

  return result;
}

- (BOOL)useDropFrameTimeCode
{
  v2 = [(NSDictionary *)[(AVOutputSettings *)self outputSettingsDictionary] valueForKey:@"AVCaptionUseDropFrameTimeCodeKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

@end