@interface AVCaptureVideoSettingsValidator
+ (BOOL)validateVideoSettings:(id)a3 allowingFeatures:(unint64_t)a4 validPixelKeys:(id)a5 validPixelFormats:(id)a6 validCodecKeys:(id)a7 validCodecs:(id)a8 exceptionReason:(id *)a9;
@end

@implementation AVCaptureVideoSettingsValidator

+ (BOOL)validateVideoSettings:(id)a3 allowingFeatures:(unint64_t)a4 validPixelKeys:(id)a5 validPixelFormats:(id)a6 validCodecKeys:(id)a7 validCodecs:(id)a8 exceptionReason:(id *)a9
{
  v9 = a4;
  if (!a3)
  {
    if ((a4 & 1) == 0)
    {
      LOBYTE(v15) = 0;
      v21 = @"nil settings";
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v15 = [a3 count] | a4 & 2;
  if (!v15)
  {
    v21 = @"source passthru (empty dictionary) is not supported";
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v15) = 0;
    v21 = @"not a dictionary";
    goto LABEL_35;
  }

  v16 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6966130]), "intValue"}];
  v17 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];
  v18 = v17;
  if (v16 && v17)
  {
    LOBYTE(v15) = 0;
    v21 = @"kCVPixelBufferPixelFormatTypeKey and AVVideoCodecKey may not both be specified";
    goto LABEL_35;
  }

  if (!v16 && !v17)
  {
    LOBYTE(v15) = 0;
    v21 = @"Either kCVPixelBufferPixelFormatTypeKey or AVVideoCodecKey must be specified";
    goto LABEL_35;
  }

  if ((v9 & 4) != 0 && v16)
  {
    if (!a5 || (v19 = [MEMORY[0x1E695DFD8] setWithArray:a5], v20 = objc_msgSend(MEMORY[0x1E695DFA8], "setWithArray:", objc_msgSend(a3, "allKeys")), objc_msgSend(v20, "minusSet:", v19), !objc_msgSend(v20, "count")))
    {
      if (a6 && ([a6 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v16)}] & 1) == 0)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported pixel format type specified: %@. Supported pixel format types are %@", AVStringForOSType(), a6];
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
    v21 = [v30 stringWithFormat:@"Unsupported keys specified: %@. Supported keys are %@", v31, v32];
    goto LABEL_47;
  }

  if ((v9 & 8) == 0 || !v17)
  {
    if (v16)
    {
      LOBYTE(v15) = 0;
      v21 = @"kCVPixelBufferPixelFormatTypeKey is unsupported";
      goto LABEL_35;
    }

    if (v17)
    {
      LOBYTE(v15) = 0;
      v21 = @"AVVideoCodecKey is unsupported";
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (!a7)
  {
LABEL_29:
    if (a8 && ([a8 containsObject:v18] & 1) == 0)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported codec specified: %@. Supported codecs are %@", v18, a8];
      goto LABEL_47;
    }

LABEL_34:
    v21 = 0;
    LOBYTE(v15) = 1;
    goto LABEL_35;
  }

  v22 = [MEMORY[0x1E695DFD8] setWithArray:a7];
  v23 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(a3, "allKeys")}];
  [v23 minusSet:v22];
  if ((v9 & 0x10) == 0 || ([v18 isEqual:*MEMORY[0x1E6987D00]] & 1) == 0 && (objc_msgSend(v18, "isEqual:", *MEMORY[0x1E6987CF0]) & 1) == 0 && !objc_msgSend(v18, "isEqual:", AVStringForOSType()))
  {
    goto LABEL_52;
  }

  v24 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6987D30]];
  v25 = *MEMORY[0x1E6987DC0];
  if (v24)
  {
    v26 = v24;
    v27 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6987DC0]];
    v28 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(v26, "allKeys")}];
    [v28 minusSet:v27];
    if ([v28 count])
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported AVVideoCompressionProperties specified: %@. Supported keys are %@", v28, v27];
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
  v21 = @"AVVideoQualityKey is present at the top level instead of inside the AVVideoCompressionPropertiesKey sub-dictionary";
LABEL_35:
  if (a9)
  {
    *a9 = v21;
  }

  return v15;
}

@end