@interface AVCaptureVideoSettingsValidator
+ (BOOL)validateVideoSettings:(id)settings allowingFeatures:(unint64_t)features validPixelKeys:(id)keys validPixelFormats:(id)formats validCodecKeys:(id)codecKeys validCodecs:(id)codecs exceptionReason:(id *)reason;
@end

@implementation AVCaptureVideoSettingsValidator

+ (BOOL)validateVideoSettings:(id)settings allowingFeatures:(unint64_t)features validPixelKeys:(id)keys validPixelFormats:(id)formats validCodecKeys:(id)codecKeys validCodecs:(id)codecs exceptionReason:(id *)reason
{
  featuresCopy = features;
  if (!settings)
  {
    if ((features & 1) == 0)
    {
      LOBYTE(v15) = 0;
      formats = @"nil settings";
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v15 = [settings count] | features & 2;
  if (!v15)
  {
    formats = @"source passthru (empty dictionary) is not supported";
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v15) = 0;
    formats = @"not a dictionary";
    goto LABEL_35;
  }

  v16 = [objc_msgSend(settings objectForKeyedSubscript:{*MEMORY[0x1E6966130]), "intValue"}];
  v17 = [settings objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];
  v18 = v17;
  if (v16 && v17)
  {
    LOBYTE(v15) = 0;
    formats = @"kCVPixelBufferPixelFormatTypeKey and AVVideoCodecKey may not both be specified";
    goto LABEL_35;
  }

  if (!v16 && !v17)
  {
    LOBYTE(v15) = 0;
    formats = @"Either kCVPixelBufferPixelFormatTypeKey or AVVideoCodecKey must be specified";
    goto LABEL_35;
  }

  if ((featuresCopy & 4) != 0 && v16)
  {
    if (!keys || (v19 = [MEMORY[0x1E695DFD8] setWithArray:keys], v20 = objc_msgSend(MEMORY[0x1E695DFA8], "setWithArray:", objc_msgSend(settings, "allKeys")), objc_msgSend(v20, "minusSet:", v19), !objc_msgSend(v20, "count")))
    {
      if (formats && ([formats containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v16)}] & 1) == 0)
      {
        formats = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported pixel format type specified: %@. Supported pixel format types are %@", AVStringForOSType(), formats];
LABEL_47:
        LOBYTE(v15) = 0;
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v30 = MEMORY[0x1E696AEC0];
    v31 = v20;
    v32 = v19;
LABEL_46:
    formats = [v30 stringWithFormat:@"Unsupported keys specified: %@. Supported keys are %@", v31, v32];
    goto LABEL_47;
  }

  if ((featuresCopy & 8) == 0 || !v17)
  {
    if (v16)
    {
      LOBYTE(v15) = 0;
      formats = @"kCVPixelBufferPixelFormatTypeKey is unsupported";
      goto LABEL_35;
    }

    if (v17)
    {
      LOBYTE(v15) = 0;
      formats = @"AVVideoCodecKey is unsupported";
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (!codecKeys)
  {
LABEL_29:
    if (codecs && ([codecs containsObject:v18] & 1) == 0)
    {
      formats = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported codec specified: %@. Supported codecs are %@", v18, codecs];
      goto LABEL_47;
    }

LABEL_34:
    formats = 0;
    LOBYTE(v15) = 1;
    goto LABEL_35;
  }

  v22 = [MEMORY[0x1E695DFD8] setWithArray:codecKeys];
  v23 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(settings, "allKeys")}];
  [v23 minusSet:v22];
  if ((featuresCopy & 0x10) == 0 || ([v18 isEqual:*MEMORY[0x1E6987D00]] & 1) == 0 && (objc_msgSend(v18, "isEqual:", *MEMORY[0x1E6987CF0]) & 1) == 0 && !objc_msgSend(v18, "isEqual:", AVStringForOSType()))
  {
    goto LABEL_52;
  }

  v24 = [settings objectForKeyedSubscript:*MEMORY[0x1E6987D30]];
  v25 = *MEMORY[0x1E6987DC0];
  if (v24)
  {
    v26 = v24;
    v27 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6987DC0]];
    v28 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(v26, "allKeys")}];
    [v28 minusSet:v27];
    if ([v28 count])
    {
      formats = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported AVVideoCompressionProperties specified: %@. Supported keys are %@", v28, v27];
      goto LABEL_47;
    }
  }

  if (![v23 containsObject:v25] || !objc_msgSend(v23, "count"))
  {
LABEL_52:
    if ([v23 count])
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = v23;
      v32 = v22;
      goto LABEL_46;
    }

    goto LABEL_29;
  }

  LOBYTE(v15) = 0;
  formats = @"AVVideoQualityKey is present at the top level instead of inside the AVVideoCompressionPropertiesKey sub-dictionary";
LABEL_35:
  if (reason)
  {
    *reason = formats;
  }

  return v15;
}

@end