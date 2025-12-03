@interface AVCapturePhotoRequest
+ (id)requestWithDelegate:(id)delegate settings:(id)settings lensStabilizationSupported:(BOOL)supported;
- (AVCapturePhotoRequest)initWithDelegate:(id)delegate settings:(id)settings lensStabilizationSupported:(BOOL)supported;
- (AVCaptureResolvedPhotoSettings)resolvedSettings;
- (void)_resolveExpectedPhotoManifest;
- (void)dealloc;
- (void)setResolvedSettings:(id)settings;
@end

@implementation AVCapturePhotoRequest

+ (id)requestWithDelegate:(id)delegate settings:(id)settings lensStabilizationSupported:(BOOL)supported
{
  v5 = [objc_alloc(objc_opt_class()) initWithDelegate:delegate settings:settings lensStabilizationSupported:supported];

  return v5;
}

- (AVCapturePhotoRequest)initWithDelegate:(id)delegate settings:(id)settings lensStabilizationSupported:(BOOL)supported
{
  v12.receiver = self;
  v12.super_class = AVCapturePhotoRequest;
  v8 = [(AVCapturePhotoRequest *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69881A0]);
    v8->_delegateStorage = v9;
    [(AVWeakReferencingDelegateStorage *)v9 setDelegate:delegate queue:MEMORY[0x1E69E96A0]];
    v8->_unresolvedSettings = settings;
    v8->_lensStabilizationSupported = supported;
    [(AVCapturePhotoRequest *)v8 _resolveExpectedPhotoManifest];
    if (objc_opt_respondsToSelector())
    {
      v10 = 0;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_8;
      }

      v10 = 1;
    }

    v8->_photoCallbackFlavor = v10;
LABEL_8:
    v8->_delegateSupportsDebugMetadataSidecarFile = objc_opt_respondsToSelector() & 1;
    v8->_delegateSupportsMetadataIdentifiersCallback = objc_opt_respondsToSelector() & 1;
  }

  return v8;
}

- (void)dealloc
{
  previewSurface = self->_previewSurface;
  if (previewSurface)
  {
    CFRelease(previewSurface);
  }

  previewSampleBuffer = self->_previewSampleBuffer;
  if (previewSampleBuffer)
  {
    CFRelease(previewSampleBuffer);
  }

  thumbnailSurface = self->_thumbnailSurface;
  if (thumbnailSurface)
  {
    CFRelease(thumbnailSurface);
  }

  v6.receiver = self;
  v6.super_class = AVCapturePhotoRequest;
  [(AVCapturePhotoRequest *)&v6 dealloc];
}

- (AVCaptureResolvedPhotoSettings)resolvedSettings
{
  v2 = self->_resolvedSettings;

  return v2;
}

- (void)setResolvedSettings:(id)settings
{
  if ([settings photoManifest])
  {
    expectedPhotoManifest = self->_expectedPhotoManifest;
    self->_expectedPhotoManifest = [settings photoManifest];
  }

  self->_resolvedSettings = settings;
}

- (void)_resolveExpectedPhotoManifest
{
  formatFourCC = [(AVCapturePhotoSettings *)self->_unresolvedSettings formatFourCC];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(AVCapturePhotoSettings *)self->_unresolvedSettings isDepthDataDeliveryEnabled]&& [(AVCapturePhotoSettings *)self->_unresolvedSettings embedsDepthDataInPhoto])
  {
    if ([(AVCapturePhotoSettings *)self->_unresolvedSettings isDepthDataFiltered])
    {
      v4 = 32;
    }

    else
    {
      v4 = 16;
    }
  }

  else
  {
    v4 = 0;
  }

  if ([(AVCapturePhotoSettings *)self->_unresolvedSettings isBurstQualityCaptureEnabled])
  {
    v5 = v4 | 0x200;
  }

  else
  {
    v5 = v4;
  }

  if ([(AVCapturePhotoSettings *)self->_unresolvedSettings HDRMode])
  {
    if ([(AVCapturePhotoSettings *)self->_unresolvedSettings isEV0PhotoDeliveryEnabled])
    {
      [v17 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v5 | 1)}];
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if ([AVCapturePhotoOutput isAppleProRAWPixelFormat:[(AVCapturePhotoSettings *)self->_unresolvedSettings rawPhotoPixelFormatType]])
    {
      v7 = 65538;
    }

    else
    {
      v7 = 2;
    }

    [v17 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v7 | v5)}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [-[AVCapturePhotoSettings bracketedSettings](self->_unresolvedSettings "bracketedSettings")];
    }

    else
    {
      v6 = 1;
    }

    if ([(NSArray *)[(AVCapturePhotoSettings *)self->_unresolvedSettings virtualDeviceConstituentPhotoDeliveryEnabledDevices] count])
    {
      v6 *= [(NSArray *)[(AVCapturePhotoSettings *)self->_unresolvedSettings virtualDeviceConstituentPhotoDeliveryEnabledDevices] count];
    }

    if ([(AVCapturePhotoSettings *)self->_unresolvedSettings isConstantColorEnabled]&& [(AVCapturePhotoSettings *)self->_unresolvedSettings isConstantColorFallbackPhotoDeliveryEnabled])
    {
      v6 = 2;
    }

    else if (!v6)
    {
      goto LABEL_35;
    }

    v8 = v6;
    do
    {
      if ([AVCapturePhotoOutput isAppleProRAWPixelFormat:[(AVCapturePhotoSettings *)self->_unresolvedSettings rawPhotoPixelFormatType]])
      {
        [v17 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v5 | 0x10000)}];
      }

      if ([AVCapturePhotoOutput isBayerRAWPixelFormat:[(AVCapturePhotoSettings *)self->_unresolvedSettings rawPhotoPixelFormatType]])
      {
        [v17 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v5 | 0x80)}];
      }

      if (formatFourCC)
      {
        [v17 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v5)}];
      }

      --v8;
    }

    while (v8);
  }

LABEL_35:
  if ([-[AVCapturePhotoSettings photoFilters](self->_unresolvedSettings "photoFilters")] && v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v10 = [objc_msgSend(v17 objectAtIndexedSubscript:{i), "unsignedIntValue"}];
      [v17 replaceObjectAtIndex:i withObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v10 | 4u)}];
    }
  }

  if ([-[AVCapturePhotoSettings adjustedPhotoFilters](self->_unresolvedSettings "adjustedPhotoFilters")])
  {
    v11 = AVCIFilterArrayContainsPortraitFilters([(AVCapturePhotoSettings *)self->_unresolvedSettings adjustedPhotoFilters]);
    if ([v17 count])
    {
      v12 = 0;
      if (v11)
      {
        v13 = 72;
      }

      else
      {
        v13 = 8;
      }

      do
      {
        v14 = [objc_msgSend(v17 objectAtIndexedSubscript:{v12), "unsignedIntValue"}];
        [v17 insertObject:objc_msgSend(MEMORY[0x1E696AD98] atIndex:{"numberWithUnsignedInt:", v13 | v14), v12 + 1}];
        v12 += 2;
      }

      while ([v17 count] > v12);
    }
  }

  if (-[AVCapturePhotoSettings isAutoSpatialOverCaptureEnabled](self->_unresolvedSettings, "isAutoSpatialOverCaptureEnabled") && [v17 count])
  {
    v15 = 0;
    do
    {
      v16 = [objc_msgSend(v17 objectAtIndexedSubscript:{v15), "unsignedIntValue"}];
      [v17 insertObject:objc_msgSend(MEMORY[0x1E696AD98] atIndex:{"numberWithUnsignedInt:", v16 | 0x800u), v15 + 1}];
      v15 += 2;
    }

    while ([v17 count] > v15);
  }

  self->_expectedPhotoManifest = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v17];
}

@end