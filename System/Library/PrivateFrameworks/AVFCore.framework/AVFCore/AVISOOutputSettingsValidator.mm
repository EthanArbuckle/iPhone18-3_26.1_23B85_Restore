@interface AVISOOutputSettingsValidator
- (BOOL)validateAudioOutputSettings:(id)settings reason:(id *)reason;
- (BOOL)validateVideoOutputSettings:(id)settings reason:(id *)reason;
@end

@implementation AVISOOutputSettingsValidator

- (BOOL)validateAudioOutputSettings:(id)settings reason:(id *)reason
{
  v7.receiver = self;
  v7.super_class = AVISOOutputSettingsValidator;
  v5 = [(AVMediaFileOutputSettingsValidator *)&v7 validateAudioOutputSettings:settings reason:?];
  if (reason && v5)
  {
    *reason = 0;
  }

  return v5;
}

- (BOOL)validateVideoOutputSettings:(id)settings reason:(id *)reason
{
  v12.receiver = self;
  v12.super_class = AVISOOutputSettingsValidator;
  if (![AVMediaFileOutputSettingsValidator validateVideoOutputSettings:sel_validateVideoOutputSettings_reason_ reason:?])
  {
    return 0;
  }

  if ([settings willYieldCompressedSamples])
  {
    v7 = [objc_msgSend(settings "videoSettingsDictionary")];
    if ([v7 isEqualToString:@"avc1"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"jpeg") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"hvc1"))
    {
      v8 = 0;
      v9 = 1;
      if (!reason)
      {
        return v9;
      }

      goto LABEL_11;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The video codec %@ is not compatible with file type %@", v7, -[AVMediaFileType UTI](-[AVMediaFileOutputSettingsValidator fileType](self, "fileType"), "UTI")];
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Uncompressed video is not allowed for file type %@", -[AVMediaFileType UTI](-[AVMediaFileOutputSettingsValidator fileType](self, "fileType"), "UTI"), v11];
  }

  v9 = 0;
  if (reason)
  {
LABEL_11:
    *reason = v8;
  }

  return v9;
}

@end