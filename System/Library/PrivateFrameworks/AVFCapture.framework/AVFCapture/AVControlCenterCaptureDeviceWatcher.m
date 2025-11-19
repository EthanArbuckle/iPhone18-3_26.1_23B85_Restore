@interface AVControlCenterCaptureDeviceWatcher
- (AVControlCenterCaptureDeviceWatcher)initWithSupportedVideoEffectsDidChangeHandler:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation AVControlCenterCaptureDeviceWatcher

- (AVControlCenterCaptureDeviceWatcher)initWithSupportedVideoEffectsDidChangeHandler:(id)a3
{
  v11.receiver = self;
  v11.super_class = AVControlCenterCaptureDeviceWatcher;
  v4 = [(AVControlCenterCaptureDeviceWatcher *)&v11 init];
  if (v4)
  {
    v4->_handler = [a3 copy];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (AVCCM_CaptureDeviceListChangedContext != a6)
  {
    return;
  }

  v37 = v6;
  v38 = v7;
  v8 = [a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0], a4}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v8;
  v25 = [v8 countByEnumeratingWithState:&v33 objects:v32 count:16];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
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
      v16 = [v15 formats];
      v17 = [v16 countByEnumeratingWithState:&v28 objects:v27 count:16];
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
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v28 + 1) + 8 * i);
            if (v13)
            {
              v13 = 1;
              if ((v11 & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            else
            {
              v13 = [*(*(&v28 + 1) + 8 * i) isCenterStageSupported];
              if ((v11 & 1) == 0)
              {
LABEL_14:
                v11 = [v21 isSmartCropSupported];
                if ((v12 & 1) == 0)
                {
                  goto LABEL_15;
                }

                goto LABEL_20;
              }
            }

            v11 = 1;
            if ((v12 & 1) == 0)
            {
LABEL_15:
              v12 = [v21 isBackgroundBlurSupported];
              if ((v10 & 1) == 0)
              {
                goto LABEL_16;
              }

              goto LABEL_21;
            }

LABEL_20:
            v12 = 1;
            if ((v10 & 1) == 0)
            {
LABEL_16:
              v10 = [v21 isStudioLightSupported];
              if ((v9 & 1) == 0)
              {
                goto LABEL_17;
              }

              goto LABEL_22;
            }

LABEL_21:
            v10 = 1;
            if ((v9 & 1) == 0)
            {
LABEL_17:
              v9 = [v21 reactionEffectsSupported];
              continue;
            }

LABEL_22:
            v9 = 1;
          }

          v18 = [v16 countByEnumeratingWithState:&v28 objects:v27 count:16];
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
  self->_centerStageSupported = v13 & 1;
  self->_backgroundBlurSupported = v12 & 1;
  self->_studioLightingSupported = v10 & 1;
  *&self->_reactionEffectsSupported = v9 & 1;
  if ((v11 & 1) != 0 && (_os_feature_enabled_impl() & 1) == 0)
  {
    self->_centerStageSupported = 0;
  }

  (*(self->_handler + 2))();
}

@end