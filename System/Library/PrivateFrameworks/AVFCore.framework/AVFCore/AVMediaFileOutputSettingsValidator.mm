@interface AVMediaFileOutputSettingsValidator
+ (id)mediaFileOutputSettingsValidatorForFileType:(id)type;
+ (void)initialize;
- (AVMediaFileOutputSettingsValidator)initWithFileType:(id)type;
- (BOOL)validateAudioOutputSettings:(id)settings reason:(id *)reason;
- (BOOL)validateVideoOutputSettings:(id)settings reason:(id *)reason;
- (void)dealloc;
@end

@implementation AVMediaFileOutputSettingsValidator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    v7 = objc_opt_class();
    v6 = objc_opt_class();
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    sAVMediaFileOutputSettingsValidatorClassesForFileType = [v8 initWithObjectsAndKeys:{v7, @"com.microsoft.waveform-audio", v6, @"public.aiff-audio", v2, @"public.aifc-audio", v3, @"public.mpeg-4", v4, @"com.apple.m4v-video", v5, @"com.apple.m4a-audio", objc_opt_class(), @"public.3gpp", 0}];
  }
}

+ (id)mediaFileOutputSettingsValidatorForFileType:(id)type
{
  v4 = [sAVMediaFileOutputSettingsValidatorClassesForFileType objectForKey:{objc_msgSend(type, "UTI")}];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = [[v4 alloc] initWithFileType:type];

  return v5;
}

- (AVMediaFileOutputSettingsValidator)initWithFileType:(id)type
{
  v15.receiver = self;
  v15.super_class = AVMediaFileOutputSettingsValidator;
  v5 = [(AVMediaFileOutputSettingsValidator *)&v15 init];
  v6 = objc_opt_class();
  AVRequireConcreteObject(v5, a2, v6);
  if (!type)
  {
    v8 = v5;
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid parameter not satisfying: %s", v9, v10, v11, v12, v13, "fileType != nil"), 0}];
    objc_exception_throw(v14);
  }

  if (v5)
  {
    v5->_fileType = [type copyWithZone:{-[AVMediaFileOutputSettingsValidator zone](v5, "zone")}];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMediaFileOutputSettingsValidator;
  [(AVMediaFileOutputSettingsValidator *)&v3 dealloc];
}

- (BOOL)validateAudioOutputSettings:(id)settings reason:(id *)reason
{
  audioSettingsDictionary = [settings audioSettingsDictionary];
  fileType = [(AVMediaFileOutputSettingsValidator *)self fileType];
  v8 = [audioSettingsDictionary objectForKey:*MEMORY[0x1E69582B0]];
  if (!v8 || (v9 = [v8 unsignedIntValue], (v10 = -[AVMediaFileType audioFileTypeID](fileType, "audioFileTypeID")) == 0))
  {
LABEL_12:
    v13 = 0;
    v14 = 1;
    goto LABEL_13;
  }

  outDataSize = 0;
  inSpecifier = v10;
  if (AudioFileGetGlobalInfoSize(0x666D6964u, 4u, &inSpecifier, &outDataSize))
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_malloc(outDataSize, 0x100004052888210uLL);
    if (v11 && !AudioFileGetGlobalInfo(0x666D6964u, 4u, &inSpecifier, &outDataSize, v11) && outDataSize >= 4)
    {
      v12 = 0;
      while (*&v11[v12] != v9)
      {
        v12 += 4;
        if ((outDataSize & 0xFFFFFFFC) == v12)
        {
          goto LABEL_10;
        }
      }

      free(v11);
      goto LABEL_12;
    }
  }

LABEL_10:
  free(v11);
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Format ID '%@' is not compatible with file type %@", AVStringForOSType(v9), -[AVMediaFileType UTI](fileType, "UTI")];
  v14 = 0;
LABEL_13:
  v15 = [audioSettingsDictionary objectForKey:*MEMORY[0x1E69582F0]];
  if (v14 && v15)
  {
    bOOLValue = [v15 BOOLValue];
    if (bOOLValue)
    {
      v13 = @"Cannot write non-interleaved audio to a file";
    }

    LOBYTE(v14) = bOOLValue ^ 1;
  }

  if (reason)
  {
    *reason = v13;
  }

  return v14;
}

- (BOOL)validateVideoOutputSettings:(id)settings reason:(id *)reason
{
  if (reason)
  {
    *reason = 0;
  }

  return 1;
}

@end