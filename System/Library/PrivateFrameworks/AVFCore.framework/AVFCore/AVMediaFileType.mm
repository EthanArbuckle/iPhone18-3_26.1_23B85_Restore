@interface AVMediaFileType
+ (__CFString)figFileTypeProfileFromAVFileTypeProfile:(id)a3;
+ (id)_mediaFileTypeWithFileTypeIdentifier:(id)a3 exceptionReason:(id *)a4;
+ (id)allFileTypeIdentifiers;
+ (void)initialize;
- (AVMediaFileType)initWithFileTypeIdentifier:(id)a3 exceptionReason:(id *)a4;
- (BOOL)supportsFormat:(opaqueCMFormatDescription *)a3;
- (BOOL)supportsOutputSettings:(id)a3 reason:(id *)a4;
- (BOOL)supportsSampleReferences;
- (NSSet)supportedMediaTypes;
- (NSString)defaultFileExtension;
- (NSString)figFormatReaderFileFormat;
- (id)description;
- (void)dealloc;
@end

@implementation AVMediaFileType

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc(MEMORY[0x1E695DF20]);
    sFigFileFormatsForUTIs = [v2 initWithObjectsAndKeys:{@"com.apple.quicktime-movie", *MEMORY[0x1E6971B70], @"com.apple.quicktime-audio", *MEMORY[0x1E6971B68], @"public.mpeg-4", *MEMORY[0x1E6971B38], @"public.3gpp", *MEMORY[0x1E6971BA0], @"com.apple.m4v-video", *MEMORY[0x1E6971B98], @"com.apple.m4a-audio", *MEMORY[0x1E6971B50], @"com.apple.immersive-video", *MEMORY[0x1E6971B58], @"com.apple.coreaudio-format", *MEMORY[0x1E6971B80], @"com.microsoft.waveform-audio", *MEMORY[0x1E6971B40], @"public.aiff-audio", *MEMORY[0x1E6971B40], @"public.aifc-audio", *MEMORY[0x1E6971B48], @"org.3gpp.adaptive-multi-rate-audio", *MEMORY[0x1E6971B90], @"com.apple.itunes-timed-text", *MEMORY[0x1E6971B78], @"com.scenarist.closed-caption", *MEMORY[0x1E6971B88], @"org.w3.webvtt", 0}];
  }
}

+ (id)allFileTypeIdentifiers
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [sFigFileFormatsForUTIs allKeys];

  return [v2 setWithArray:v3];
}

+ (id)_mediaFileTypeWithFileTypeIdentifier:(id)a3 exceptionReason:(id *)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithFileTypeIdentifier:a3 exceptionReason:a4];

  return v4;
}

- (AVMediaFileType)initWithFileTypeIdentifier:(id)a3 exceptionReason:(id *)a4
{
  v20.receiver = self;
  v20.super_class = AVMediaFileType;
  v7 = [(AVMediaFileType *)&v20 init];
  v8 = v7;
  if (!a3)
  {
    v13 = v7;
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v8 userInfo:{a2, @"invalid parameter not satisfying: %s", v14, v15, v16, v17, v18, "UTI != nil"), 0}];
    objc_exception_throw(v19);
  }

  if (v7)
  {
    v7->_uti = [a3 copyWithZone:{-[AVMediaFileType zone](v7, "zone")}];
    v9 = [objc_opt_class() allFileTypeIdentifiers];
    if ([v9 containsObject:v8->_uti])
    {
      v10 = objc_alloc_init(AVDispatchOnce);
      v11 = 0;
      v8->_supportsSampleReferencesOnce = v10;
      if (!a4)
      {
        return v8;
      }
    }

    else
    {

      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid file type UTI.  Available file types are: %@", objc_msgSend(objc_msgSend(v9, "allObjects"), "componentsJoinedByString:", @", ")];
      v8 = 0;
      if (!a4)
      {
        return v8;
      }
    }

    goto LABEL_7;
  }

  v11 = 0;
  if (a4)
  {
LABEL_7:
    *a4 = v11;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMediaFileType;
  [(AVMediaFileType *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, UTI = %@>", NSStringFromClass(v4), self, -[AVMediaFileType UTI](self, "UTI")];
}

- (NSString)defaultFileExtension
{
  v2 = [(AVMediaFileType *)self UTI];
  if ([(NSString *)v2 isEqualToString:@"com.apple.itunes-timed-text"])
  {
    return @"itt";
  }

  if ([(NSString *)v2 isEqualToString:@"com.scenarist.closed-caption"])
  {
    return @"scc";
  }

  if ([(NSString *)v2 isEqualToString:@"org.w3.webvtt"])
  {
    return @"vtt";
  }

  if ([(NSString *)v2 isEqualToString:@"com.apple.quicktime-audio"])
  {
    return @"qta";
  }

  if ([(NSString *)v2 isEqualToString:@"com.apple.immersive-video"])
  {
    return @"aivu";
  }

  if ([(NSString *)v2 isEqualToString:@"org.nema.dicom"])
  {
    return @"dcm";
  }

  v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:v2];

  return [v4 preferredFilenameExtension];
}

- (NSSet)supportedMediaTypes
{
  v2 = [(AVMediaFileType *)self UTI];
  if (([(NSString *)v2 isEqual:@"com.apple.coreaudio-format"]& 1) != 0 || ([(NSString *)v2 isEqual:@"com.microsoft.waveform-audio"]& 1) != 0 || ([(NSString *)v2 isEqual:@"public.aiff-audio"]& 1) != 0 || ([(NSString *)v2 isEqual:@"public.aifc-audio"]& 1) != 0 || [(NSString *)v2 isEqual:@"org.3gpp.adaptive-multi-rate-audio"])
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = &AVMediaTypeAudio;
  }

  else
  {
    if ([(NSString *)v2 isEqual:@"com.apple.itunes-timed-text"])
    {
      v3 = MEMORY[0x1E695DFD8];
    }

    else
    {
      if ([(NSString *)v2 isEqual:@"com.scenarist.closed-caption"])
      {
        v3 = MEMORY[0x1E695DFD8];
        v4 = &AVMediaTypeClosedCaption;
        goto LABEL_7;
      }

      v7 = [(NSString *)v2 isEqual:@"org.w3.webvtt"];
      v3 = MEMORY[0x1E695DFD8];
      if (!v7)
      {
        return [MEMORY[0x1E695DFD8] setWithObjects:{@"vide", @"soun", @"clcp", @"text", @"sbtl", @"tmcd", @"meta", @"hapt", @"auxv", @"scen", 0}];
      }
    }

    v4 = &AVMediaTypeText;
  }

LABEL_7:
  v5 = *v4;

  return [v3 setWithObject:v5];
}

- (BOOL)supportsSampleReferences
{
  v3 = [(AVMediaFileType *)self UTI];
  supportsSampleReferencesOnce = self->_supportsSampleReferencesOnce;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AVMediaFileType_supportsSampleReferences__block_invoke;
  v6[3] = &unk_1E7460FA8;
  v6[4] = self;
  v6[5] = v3;
  [(AVDispatchOnce *)supportsSampleReferencesOnce runBlockOnce:v6];
  return self->_supportsSampleReferences;
}

uint64_t __43__AVMediaFileType_supportsSampleReferences__block_invoke(uint64_t a1)
{
  result = MEMORY[0x19A8CA0F0](*(a1 + 40));
  *(*(a1 + 32) + 24) = result != 0;
  return result;
}

- (NSString)figFormatReaderFileFormat
{
  v2 = sFigFileFormatsForUTIs;
  v3 = [(AVMediaFileType *)self UTI];

  return [v2 objectForKey:v3];
}

- (BOOL)supportsOutputSettings:(id)a3 reason:(id *)a4
{
  v6 = [AVMediaFileOutputSettingsValidator mediaFileOutputSettingsValidatorForFileType:self];

  return [a3 validateUsingOutputSettingsValidator:v6 reason:a4];
}

- (BOOL)supportsFormat:(opaqueCMFormatDescription *)a3
{
  if (!a3)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "formatDesc != NULL"), 0}];
    objc_exception_throw(v17);
  }

  v10 = [(AVMediaFileType *)self UTI];
  if ([(NSString *)v10 isEqualToString:@"com.apple.quicktime-movie"])
  {
    goto LABEL_3;
  }

  if (![(NSString *)v10 isEqualToString:@"public.mpeg-4"])
  {
    if ([(NSString *)v10 isEqualToString:@"com.apple.m4v-video"])
    {
      MediaType = CMFormatDescriptionGetMediaType(a3);
      LOBYTE(v11) = 1;
      if (MediaType <= 1936684397)
      {
LABEL_24:
        if (MediaType == 1668047728)
        {
          return v11;
        }

        goto LABEL_25;
      }

      if (MediaType != 1986618469)
      {
        if (MediaType == 1952807028)
        {
          return v11;
        }

        if (MediaType != 1936684398)
        {
          goto LABEL_81;
        }

        MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
        LOBYTE(v11) = 1;
        if (MediaSubType > 1700998450)
        {
          if (MediaSubType == 1700998451)
          {
            return v11;
          }

          v14 = 1970495843;
        }

        else
        {
          if (MediaSubType == 1633772320)
          {
            return v11;
          }

          v14 = 1633889587;
        }

        goto LABEL_80;
      }

      MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
      LOBYTE(v11) = 1;
      if (MediaSubType <= 1752589104)
      {
        if (MediaSubType == 1635148593)
        {
          return v11;
        }

        v14 = 1685481521;
        goto LABEL_80;
      }

LABEL_66:
      if (MediaSubType == 1752589105)
      {
        return v11;
      }

      v14 = 1785750887;
      goto LABEL_80;
    }

    if ([(NSString *)v10 isEqualToString:@"com.apple.m4a-audio"])
    {
      MediaType = CMFormatDescriptionGetMediaType(a3);
      LOBYTE(v11) = 1;
      if (MediaType <= 1936684397)
      {
        if (MediaType == 1668047728)
        {
          return v11;
        }

        if (MediaType == 1751216244)
        {
          MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
          LOBYTE(v11) = 1;
          if (MediaSubType == 1634230640 || MediaSubType == 1634230642)
          {
            return v11;
          }

          v14 = 1651866234;
          goto LABEL_80;
        }

LABEL_25:
        if (MediaType != 1935832172 || CMFormatDescriptionGetMediaSubType(a3) != 1954034535)
        {
LABEL_81:
          v11 = [(AVMediaFileType *)self figFormatReaderFileFormat];
          if (v11)
          {
            LOBYTE(v11) = FigRemakerCanFileTypeSupportFormatDescription() != 0;
          }

          return v11;
        }

LABEL_3:
        LOBYTE(v11) = 1;
        return v11;
      }

      if (MediaType != 1986618469)
      {
        if (MediaType == 1952807028)
        {
          return v11;
        }

        if (MediaType != 1936684398)
        {
          goto LABEL_81;
        }

        MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
        LOBYTE(v11) = 1;
        if (MediaSubType == 1633772320)
        {
          return v11;
        }

        v15 = 1633889587;
LABEL_76:
        if (MediaSubType == v15)
        {
          return v11;
        }

        v14 = 1700998451;
        goto LABEL_80;
      }

      MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
      LOBYTE(v11) = 1;
      if (MediaSubType == 1635148593)
      {
        return v11;
      }

      goto LABEL_66;
    }

    if ([(NSString *)v10 isEqualToString:@"com.apple.immersive-video"])
    {
      goto LABEL_3;
    }

    if ([(NSString *)v10 isEqualToString:@"com.apple.itunes-timed-text"])
    {
LABEL_37:
      LOBYTE(v11) = 0;
      return v11;
    }

    if ([(NSString *)v10 isEqualToString:@"com.scenarist.closed-caption"])
    {
      if (CMFormatDescriptionGetMediaType(a3) != 1668047728)
      {
        goto LABEL_37;
      }

      LODWORD(v11) = CMFormatDescriptionGetMediaSubType(a3);
      v16 = 1664495672;
    }

    else
    {
      if (![(NSString *)v10 isEqualToString:@"org.w3.webvtt"])
      {
        goto LABEL_81;
      }

      if (CMFormatDescriptionGetMediaType(a3) != 1952807028)
      {
        goto LABEL_37;
      }

      LODWORD(v11) = CMFormatDescriptionGetMediaSubType(a3);
      v16 = 2004251764;
    }

    LOBYTE(v11) = v11 == v16;
    return v11;
  }

  MediaType = CMFormatDescriptionGetMediaType(a3);
  LOBYTE(v11) = 1;
  if (MediaType <= 1936684397)
  {
    goto LABEL_24;
  }

  if (MediaType == 1986618469)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
    LOBYTE(v11) = 1;
    if (MediaSubType > 1785750886)
    {
      if (MediaSubType == 1785750887)
      {
        return v11;
      }

      v14 = 1836070006;
    }

    else
    {
      if (MediaSubType == 1635148593)
      {
        return v11;
      }

      v14 = 1752589105;
    }

    goto LABEL_80;
  }

  if (MediaType == 1952807028)
  {
    return v11;
  }

  if (MediaType != 1936684398)
  {
    goto LABEL_81;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
  LOBYTE(v11) = 1;
  if (MediaSubType > 1667326831)
  {
    if (MediaSubType > 1902207847)
    {
      if (MediaSubType <= 1970495842)
      {
        if (MediaSubType == 1902207848)
        {
          return v11;
        }

        v14 = 1902207856;
      }

      else
      {
        if (MediaSubType == 1970495843 || MediaSubType == 2053202792)
        {
          return v11;
        }

        v14 = 2053202800;
      }

      goto LABEL_80;
    }

    if (MediaSubType > 1885430114)
    {
      if (MediaSubType == 1885430115 || MediaSubType == 1885430632)
      {
        return v11;
      }

      v14 = 1885430640;
      goto LABEL_80;
    }

    v15 = 1667326832;
    goto LABEL_76;
  }

  if (MediaSubType > 1633889586)
  {
    if (MediaSubType == 1633889587 || MediaSubType == 1634492771)
    {
      return v11;
    }

    v14 = 1667326824;
    goto LABEL_80;
  }

  if (((MediaSubType - 1633772389) > 0xB || ((1 << (MediaSubType - 101)) & 0x80F) == 0) && MediaSubType != 1633771875)
  {
    v14 = 1633772320;
LABEL_80:
    if (MediaSubType == v14)
    {
      return v11;
    }

    goto LABEL_81;
  }

  return v11;
}

+ (__CFString)figFileTypeProfileFromAVFileTypeProfile:(id)a3
{
  if ([a3 isEqual:@"MPEG4AppleHLS"])
  {
    return *MEMORY[0x1E69719F8];
  }

  if ([a3 isEqual:@"MPEG4CMAFCompliant"])
  {
    return *MEMORY[0x1E6971A00];
  }

  return 0;
}

@end