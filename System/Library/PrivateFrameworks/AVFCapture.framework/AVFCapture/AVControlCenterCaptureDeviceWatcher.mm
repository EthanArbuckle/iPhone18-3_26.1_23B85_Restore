@interface AVControlCenterCaptureDeviceWatcher
- (AVControlCenterCaptureDeviceWatcher)initWithSupportedVideoEffectsDidChangeHandler:(id)handler;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation AVControlCenterCaptureDeviceWatcher

- (AVControlCenterCaptureDeviceWatcher)initWithSupportedVideoEffectsDidChangeHandler:(id)handler
{
  v11.receiver = self;
  v11.super_class = AVControlCenterCaptureDeviceWatcher;
  v4 = [(AVControlCenterCaptureDeviceWatcher *)&v11 init];
  if (v4)
  {
    v4->_handler = [handler copy];
    if (MGCopyAnswer() == *MEMORY[0x1E695E4D0])
    {
      v10[0] = @"AVCaptureDeviceTypeBuiltInWideAngleCamera";
      v10[1] = @"AVCaptureDeviceTypeExternal";
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
      v6 = 0;
    }

    else
    {
      v9 = @"AVCaptureDeviceTypeBuiltInWideAngleCamera";
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
      v6 = 2;
    }

    v7 = [AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:v5 mediaType:*MEMORY[0x1E6987608] position:v6];
    v4->_discoverySession = v7;
    [(AVCaptureDeviceDiscoverySession *)v7 addObserver:v4 forKeyPath:@"devices" options:5 context:AVCCM_CaptureDeviceListChangedContext];
  }

  return v4;
}

- (void)dealloc
{
  [(AVCaptureDeviceDiscoverySession *)self->_discoverySession removeObserver:self forKeyPath:@"devices" context:AVCCM_CaptureDeviceListChangedContext];

  v3.receiver = self;
  v3.super_class = AVControlCenterCaptureDeviceWatcher;
  [(AVControlCenterCaptureDeviceWatcher *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (AVCCM_CaptureDeviceListChangedContext != context)
  {
    return;
  }

  v37 = v6;
  v38 = v7;
  v8 = [change objectForKeyedSubscript:{*MEMORY[0x1E696A4F0], object}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v8;
  v25 = [v8 countByEnumeratingWithState:&v33 objects:v32 count:16];
  reactionEffectsSupported = 0;
  isStudioLightSupported = 0;
  isSmartCropSupported = 0;
  isBackgroundBlurSupported = 0;
  isCenterStageSupported = 0;
  if (!v25)
  {
    goto LABEL_27;
  }

  v24 = *v34;
  do
  {
    v14 = 0;
    do
    {
      if (*v34 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v26 = v14;
      v15 = *(*(&v33 + 1) + 8 * v14);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      formats = [v15 formats];
      v17 = [formats countByEnumeratingWithState:&v28 objects:v27 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v29;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(formats);
            }

            v21 = *(*(&v28 + 1) + 8 * i);
            if (isCenterStageSupported)
            {
              isCenterStageSupported = 1;
              if ((isSmartCropSupported & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            else
            {
              isCenterStageSupported = [*(*(&v28 + 1) + 8 * i) isCenterStageSupported];
              if ((isSmartCropSupported & 1) == 0)
              {
LABEL_14:
                isSmartCropSupported = [v21 isSmartCropSupported];
                if ((isBackgroundBlurSupported & 1) == 0)
                {
                  goto LABEL_15;
                }

                goto LABEL_20;
              }
            }

            isSmartCropSupported = 1;
            if ((isBackgroundBlurSupported & 1) == 0)
            {
LABEL_15:
              isBackgroundBlurSupported = [v21 isBackgroundBlurSupported];
              if ((isStudioLightSupported & 1) == 0)
              {
                goto LABEL_16;
              }

              goto LABEL_21;
            }

LABEL_20:
            isBackgroundBlurSupported = 1;
            if ((isStudioLightSupported & 1) == 0)
            {
LABEL_16:
              isStudioLightSupported = [v21 isStudioLightSupported];
              if ((reactionEffectsSupported & 1) == 0)
              {
                goto LABEL_17;
              }

              goto LABEL_22;
            }

LABEL_21:
            isStudioLightSupported = 1;
            if ((reactionEffectsSupported & 1) == 0)
            {
LABEL_17:
              reactionEffectsSupported = [v21 reactionEffectsSupported];
              continue;
            }

LABEL_22:
            reactionEffectsSupported = 1;
          }

          v18 = [formats countByEnumeratingWithState:&v28 objects:v27 count:16];
        }

        while (v18);
      }

      v14 = v26 + 1;
    }

    while (v26 + 1 != v25);
    v25 = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
  }

  while (v25);
LABEL_27:
  self->_centerStageSupported = isCenterStageSupported & 1;
  self->_backgroundBlurSupported = isBackgroundBlurSupported & 1;
  self->_studioLightingSupported = isStudioLightSupported & 1;
  *&self->_reactionEffectsSupported = reactionEffectsSupported & 1;
  if ((isSmartCropSupported & 1) != 0 && (_os_feature_enabled_impl() & 1) == 0)
  {
    self->_centerStageSupported = 0;
  }

  (*(self->_handler + 2))();
}

@end