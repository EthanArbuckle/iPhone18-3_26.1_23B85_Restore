@interface AVCapturePhotoBracketSettings
+ (AVCapturePhotoBracketSettings)photoBracketSettingsWithRawPixelFormatType:(OSType)rawPixelFormatType processedFormat:(NSDictionary *)processedFormat bracketedSettings:(NSArray *)bracketedSettings;
+ (AVCapturePhotoBracketSettings)photoBracketSettingsWithRawPixelFormatType:(OSType)rawPixelFormatType rawFileType:(AVFileType)rawFileType processedFormat:(NSDictionary *)processedFormat processedFileType:(AVFileType)processedFileType bracketedSettings:(NSArray *)bracketedSettings;
- (id)_initWithFormat:(id)format processedFileType:(id)type rawPixelFormatType:(unsigned int)formatType rawFileType:(id)fileType bracketedSettings:(id)settings uniqueID:(int64_t)d exceptionReason:(id *)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
- (void)setAutoDualCameraFusionEnabled:(BOOL)enabled;
- (void)setAutoRedEyeReductionEnabled:(BOOL)enabled;
- (void)setAutoStillImageStabilizationEnabled:(BOOL)enabled;
- (void)setAutoVirtualDeviceFusionEnabled:(BOOL)enabled;
- (void)setEV0PhotoDeliveryEnabled:(BOOL)enabled;
- (void)setFlashMode:(int64_t)mode;
- (void)setHDRMode:(int64_t)mode;
- (void)setLivePhotoMovieFileURL:(id)l;
- (void)setLivePhotoMovieFileURLForOriginalPhoto:(id)photo;
- (void)setLivePhotoMovieMetadata:(id)metadata;
- (void)setLivePhotoMovieMetadataForOriginalPhoto:(id)photo;
@end

@implementation AVCapturePhotoBracketSettings

+ (AVCapturePhotoBracketSettings)photoBracketSettingsWithRawPixelFormatType:(OSType)rawPixelFormatType processedFormat:(NSDictionary *)processedFormat bracketedSettings:(NSArray *)bracketedSettings
{
  v9 = 0;
  v5 = [objc_alloc(objc_opt_class()) _initWithFormat:processedFormat processedFileType:0 rawPixelFormatType:*&rawPixelFormatType rawFileType:0 bracketedSettings:bracketedSettings uniqueID:0 exceptionReason:&v9];
  v6 = v5;
  if (!v9)
  {
    return v5;
  }

  v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v7);
  }

  NSLog(&cfstr_SuppressingExc.isa, v7);
  return 0;
}

+ (AVCapturePhotoBracketSettings)photoBracketSettingsWithRawPixelFormatType:(OSType)rawPixelFormatType rawFileType:(AVFileType)rawFileType processedFormat:(NSDictionary *)processedFormat processedFileType:(AVFileType)processedFileType bracketedSettings:(NSArray *)bracketedSettings
{
  v11 = 0;
  v7 = [objc_alloc(objc_opt_class()) _initWithFormat:processedFormat processedFileType:processedFileType rawPixelFormatType:*&rawPixelFormatType rawFileType:rawFileType bracketedSettings:bracketedSettings uniqueID:0 exceptionReason:&v11];
  v8 = v7;
  if (!v11)
  {
    return v7;
  }

  v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v9);
  }

  NSLog(&cfstr_SuppressingExc.isa, v9);
  return 0;
}

- (id)_initWithFormat:(id)format processedFileType:(id)type rawPixelFormatType:(unsigned int)formatType rawFileType:(id)fileType bracketedSettings:(id)settings uniqueID:(int64_t)d exceptionReason:(id *)reason
{
  v32 = 0;
  if (!settings)
  {
    v22 = @"bracketedSettings may not be nil";
LABEL_17:
    v32 = v22;
    goto LABEL_18;
  }

  v13 = *&formatType;
  if (![settings count])
  {
    v22 = @"Bracketed capture settings array contains 0 elements";
    goto LABEL_17;
  }

  [settings objectAtIndexedSubscript:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = @"Bracketed capture settings array may only contain AVCaptureBracketedStillImageSettings objects";
    goto LABEL_17;
  }

  formatCopy = format;
  v16 = objc_opt_class();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = [settings countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(settings);
        }

        if (objc_opt_class() != v16)
        {
          v22 = @"All elements in the bracketed capture settings array must be of the same class";
          goto LABEL_17;
        }
      }

      v18 = [settings countByEnumeratingWithState:&v28 objects:v27 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v26.receiver = self;
  v26.super_class = AVCapturePhotoBracketSettings;
  v21 = [(AVCapturePhotoSettings *)&v26 _initWithFormat:formatCopy processedFileType:type rawPixelFormatType:v13 rawFileType:fileType burstQualityCaptureEnabled:0 uniqueID:d exceptionReason:&v32];
  self = v21;
  v22 = v32;
  if (!v32)
  {
    if (v21)
    {
      v23 = objc_alloc_init(AVCapturePhotoBracketSettingsInternal);
      self->_bracketSettingsInternal = v23;
      if (v23)
      {
        self->_bracketSettingsInternal->bracketedSettings = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:settings];
        [(AVCapturePhotoSettings *)self _setPhotoQualityPrioritization:1];
        [(AVCapturePhotoBracketSettings *)self setAutoVirtualDeviceFusionEnabled:0];
        [(AVCapturePhotoBracketSettings *)self setAutoRedEyeReductionEnabled:0];
      }
    }

    return self;
  }

LABEL_18:
  if (reason)
  {
    *reason = v22;
  }

  return 0;
}

- (void)dealloc
{
  bracketSettingsInternal = self->_bracketSettingsInternal;
  if (bracketSettingsInternal)
  {
  }

  v4.receiver = self;
  v4.super_class = AVCapturePhotoBracketSettings;
  [(AVCapturePhotoSettings *)&v4 dealloc];
}

- (id)debugDescription
{
  if (self->_bracketSettingsInternal->lensStabilizationEnabled)
  {
    v2 = @" lensStab:ON";
  }

  else
  {
    v2 = &stru_1F1CBCFE8;
  }

  v4.receiver = self;
  v4.super_class = AVCapturePhotoBracketSettings;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ bracket:%d%@", -[AVCapturePhotoSettings debugDescription](&v4, sel_debugDescription), -[NSArray count](self->_bracketSettingsInternal->bracketedSettings, "count"), v2];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCapturePhotoBracketSettings debugDescription](self, "debugDescription")];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = AVCapturePhotoBracketSettings;
  v5 = [(AVCapturePhotoSettings *)&v7 copyWithZone:?];
  if (v5)
  {
    v5[2] = [(AVCapturePhotoBracketSettingsInternal *)self->_bracketSettingsInternal copyWithZone:zone];
  }

  return v5;
}

- (void)setFlashMode:(int64_t)mode
{
  if (mode)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = AVCapturePhotoBracketSettings;
    [(AVCapturePhotoSettings *)&v4 setFlashMode:?];
  }
}

- (void)setAutoRedEyeReductionEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = AVCapturePhotoBracketSettings;
    [(AVCapturePhotoSettings *)&v4 setAutoRedEyeReductionEnabled:?];
  }
}

- (void)setHDRMode:(int64_t)mode
{
  if (mode)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = AVCapturePhotoBracketSettings;
    [(AVCapturePhotoSettings *)&v4 setHDRMode:?];
  }
}

- (void)setEV0PhotoDeliveryEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = AVCapturePhotoBracketSettings;
    [(AVCapturePhotoSettings *)&v4 setEV0PhotoDeliveryEnabled:?];
  }
}

- (void)setAutoStillImageStabilizationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = AVCapturePhotoBracketSettings;
    [(AVCapturePhotoSettings *)&v4 setAutoStillImageStabilizationEnabled:?];
  }
}

- (void)setAutoVirtualDeviceFusionEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = AVCapturePhotoBracketSettings;
    [(AVCapturePhotoSettings *)&v4 setAutoVirtualDeviceFusionEnabled:?];
  }
}

- (void)setAutoDualCameraFusionEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = AVCapturePhotoBracketSettings;
    [(AVCapturePhotoSettings *)&v4 setAutoDualCameraFusionEnabled:?];
  }
}

- (void)setLivePhotoMovieFileURL:(id)l
{
  if (l)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = AVCapturePhotoBracketSettings;
    [(AVCapturePhotoSettings *)&v4 setLivePhotoMovieFileURL:?];
  }
}

- (void)setLivePhotoMovieFileURLForOriginalPhoto:(id)photo
{
  if (photo)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = AVCapturePhotoBracketSettings;
    [(AVCapturePhotoSettings *)&v4 setLivePhotoMovieFileURLForOriginalPhoto:?];
  }
}

- (void)setLivePhotoMovieMetadata:(id)metadata
{
  if (metadata)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = AVCapturePhotoBracketSettings;
    [(AVCapturePhotoSettings *)&v4 setLivePhotoMovieMetadata:?];
  }
}

- (void)setLivePhotoMovieMetadataForOriginalPhoto:(id)photo
{
  if (photo)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = AVCapturePhotoBracketSettings;
    [(AVCapturePhotoSettings *)&v4 setLivePhotoMovieMetadataForOriginalPhoto:?];
  }
}

@end