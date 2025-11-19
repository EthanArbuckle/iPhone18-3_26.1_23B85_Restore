@interface FigVideoContainerLayer
- (BOOL)_checkIfRebuildIsRequiredWhileHoldingVideoTargetMutex;
- (BOOL)isReadyForDisplay;
- (BOOL)requiresRebuild;
- (CALayer)videoLayer;
- (CGSize)presentationSize;
- (FigVideoContainerLayer)initWithUUID:(id)a3;
- (FigVideoContainerLayer)initWithVideoReceiverAndUUID:(id)a3;
- (OpaqueFigVideoReceiver)copyVideoReceiver;
- (OpaqueFigVideoTarget)videoTarget;
- (id)actionForKey:(id)a3;
- (id)preferredDynamicRange;
- (int)_createAndSetupVideoReceiverWithDeferredTransaction:(OpaqueFigDeferredTransaction *)a3;
- (void)_subscribeToVideoReceiver:(OpaqueFigVideoReceiver *)a3;
- (void)_unsubscribeFromVideoReceiver:(OpaqueFigVideoReceiver *)a3;
- (void)dealloc;
- (void)layoutSublayers;
- (void)rebuild;
- (void)setIsReadyForDisplay:(BOOL)a3;
- (void)setPreferredDynamicRange:(id)a3;
- (void)setPresentationSize:(CGSize)a3;
- (void)setSTSLabel:(id)a3;
- (void)setToneMapToStandardDynamicRange:(BOOL)a3;
- (void)setVideoLayer:(id)a3;
- (void)setupVideoLayer:(id)a3;
@end

@implementation FigVideoContainerLayer

- (FigVideoContainerLayer)initWithVideoReceiverAndUUID:(id)a3
{
  if (_os_feature_enabled_impl())
  {
    self = [(FigVideoContainerLayer *)self initWithUUID:a3];
    self->_createdForVideoReceiver = 1;
    self->_videoTargetAndReceiverMutex = FigSimpleMutexCreate();
    if ([(FigVideoContainerLayer *)self _createAndSetupVideoReceiverWithDeferredTransaction:0])
    {
      v5 = self;
      return 0;
    }
  }

  return self;
}

- (FigVideoContainerLayer)initWithUUID:(id)a3
{
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v9.receiver = self;
  v9.super_class = FigVideoContainerLayer;
  v5 = [(FigBaseCALayer *)&v9 init];
  v6 = v5;
  v5->_createdForVideoReceiver = 0;
  if (a3)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__FigVideoContainerLayer_initWithUUID___block_invoke;
    v8[3] = &unk_1E7483A30;
    v8[4] = v5;
    v8[5] = a3;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  v6->_readyForDisplay = 0;
  v6->_presentationSize = *MEMORY[0x1E695F060];
  v6->_configurationLock = FigSimpleMutexCreate();
  v6->_HDRPreferDynamicRangeMutex = FigSimpleMutexCreate();
  return v6;
}

uint64_t __39__FigVideoContainerLayer_initWithUUID___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  *(*(a1 + 32) + 168) = objc_alloc_init(MEMORY[0x1E6979398]);
  v2 = *(a1 + 32);
  v3 = v2[21];
  [v2 bounds];
  [v3 setFrame:?];
  [*(a1 + 32) addSublayer:*(*(a1 + 32) + 168)];
  [*(*(a1 + 32) + 168) setValue:objc_msgSend(*(a1 + 40) forKeyPath:{"UUIDString"), @"separatedOptions.AudioTether"}];
  v4 = MEMORY[0x1E6979518];

  return [v4 commit];
}

- (BOOL)isReadyForDisplay
{
  if (self->_createdForVideoReceiver)
  {
    FigSimpleMutexLock();
    readyForDisplay = self->_readyForDisplay;
    FigSimpleMutexUnlock();
  }

  else
  {
    return 0;
  }

  return readyForDisplay;
}

- (void)setIsReadyForDisplay:(BOOL)a3
{
  v3 = a3;
  FigSimpleMutexLock();
  readyForDisplay = self->_readyForDisplay;
  self->_readyForDisplay = v3;
  FigSimpleMutexUnlock();
  if (readyForDisplay != v3)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];

    [v6 postNotificationName:@"IsReadyForDisplayDidChange" object:self];
  }
}

- (CGSize)presentationSize
{
  if (self->_createdForVideoReceiver)
  {
    FigSimpleMutexLock();
    width = self->_presentationSize.width;
    height = self->_presentationSize.height;
    FigSimpleMutexUnlock();
  }

  else
  {
    width = *MEMORY[0x1E695F060];
    height = *(MEMORY[0x1E695F060] + 8);
  }

  v5 = width;
  v6 = height;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setPresentationSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  FigSimpleMutexLock();
  v6 = self->_presentationSize.width;
  v7 = self->_presentationSize.height;
  self->_presentationSize.width = width;
  self->_presentationSize.height = height;
  FigSimpleMutexUnlock();
  if (width != v6 || height != v7)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];

    [v9 postNotificationName:@"PresentationSizeDidChange" object:self];
  }
}

- (BOOL)_checkIfRebuildIsRequiredWhileHoldingVideoTargetMutex
{
  videoTarget = self->_videoTarget;
  if (!videoTarget)
  {
    return 1;
  }

  cf = 0;
  CMBaseObject = FigVideoTargetGetCMBaseObject(videoTarget);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return *MEMORY[0x1E695E4D0] != 0;
  }

  v4(CMBaseObject, @"IsValid", *MEMORY[0x1E695E480], &cf);
  v5 = *MEMORY[0x1E695E4D0] != cf;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

- (BOOL)requiresRebuild
{
  if (!FigUseVideoReceiverForCALayer() || !self->_createdForVideoReceiver)
  {
    return 0;
  }

  FigSimpleMutexLock();
  v3 = [(FigVideoContainerLayer *)self _checkIfRebuildIsRequiredWhileHoldingVideoTargetMutex];
  FigSimpleMutexUnlock();
  return v3;
}

- (id)actionForKey:(id)a3
{
  if (([a3 isEqualToString:@"contentsCDRStrength"] & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", @"contentsEDRStrength") & 1) == 0 && !objc_msgSend(a3, "isEqualToString:", @"preferredDynamicRange"))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = FigVideoContainerLayer;
  return [(FigBaseCALayer *)&v6 actionForKey:a3];
}

- (void)dealloc
{
  if (_os_feature_enabled_impl() && self->_createdForVideoReceiver)
  {
    [(FigVideoContainerLayer *)self _unsubscribeFromVideoReceiver:self->_videoReceiver];
    videoReceiver = self->_videoReceiver;
    if (videoReceiver)
    {
      CFRelease(videoReceiver);
      self->_videoReceiver = 0;
    }

    videoTarget = self->_videoTarget;
    if (videoTarget)
    {
      CFRelease(videoTarget);
      self->_videoTarget = 0;
    }

    if (self->_videoTargetAndReceiverMutex)
    {
      FigSimpleMutexDestroy();
      self->_videoTargetAndReceiverMutex = 0;
    }
  }

  if (self->_HDRPreferDynamicRangeMutex)
  {
    FigSimpleMutexDestroy();
    self->_HDRPreferDynamicRangeMutex = 0;
  }

  if (self->_configurationLock)
  {
    FigSimpleMutexDestroy();
    self->_configurationLock = 0;
  }

  v5.receiver = self;
  v5.super_class = FigVideoContainerLayer;
  [(FigBaseCALayer *)&v5 dealloc];
}

- (void)layoutSublayers
{
  if (self->_shouldResizeVideoLayer)
  {
    v3 = [(FigVideoContainerLayer *)self videoLayer];
    [(FigVideoContainerLayer *)self bounds];
    [(CALayer *)v3 setFrame:?];
  }

  STSLayer = self->_STSLayer;
  [(FigVideoContainerLayer *)self bounds];
  [(CALayer *)STSLayer setFrame:?];
  UUIDLayer = self->_UUIDLayer;
  [(FigVideoContainerLayer *)self bounds];

  [(CALayer *)UUIDLayer setFrame:?];
}

- (void)setSTSLabel:(id)a3
{
  STSLabel = self->_STSLabel;
  if (STSLabel != a3)
  {
    v6 = STSLabel;
    self->_STSLabel = a3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__FigVideoContainerLayer_setSTSLabel___block_invoke;
    block[3] = &unk_1E7482608;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __38__FigVideoContainerLayer_setSTSLabel___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  v4 = *(v2 + 136);
  if (v3)
  {
    if (!v4)
    {
      *(*(a1 + 32) + 136) = objc_alloc_init(MEMORY[0x1E6979398]);
      v5 = *(a1 + 32);
      v6 = v5[17];
      [v5 bounds];
      [v6 setFrame:?];
      [*(a1 + 32) addSublayer:*(*(a1 + 32) + 136)];
      v7 = *(a1 + 32);
      v4 = *(v7 + 136);
      v3 = *(v7 + 120);
    }

    [v4 setValue:v3 forKeyPath:@"separatedOptions.STSLabel"];
  }

  else if (v4)
  {
    [v4 removeFromSuperlayer];

    *(*(a1 + 32) + 136) = 0;
  }

  v8 = MEMORY[0x1E6979518];

  return [v8 commit];
}

- (void)setVideoLayer:(id)a3
{
  if (!_os_feature_enabled_impl() || !self->_createdForVideoReceiver)
  {
    videoLayer = self->_videoLayer;
    if (videoLayer != a3)
    {

      self->_videoLayer = a3;
      v6 = objc_autoreleasePoolPush();
      [(FigVideoContainerLayer *)self setupVideoLayer:a3];

      objc_autoreleasePoolPop(v6);
    }
  }
}

- (CALayer)videoLayer
{
  v7 = 0;
  if (_os_feature_enabled_impl() && self->_createdForVideoReceiver)
  {
    FigSimpleMutexLock();
    CMBaseObject = FigVideoReceiverGetCMBaseObject(self->_videoReceiver);
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, @"VideoLayer", *MEMORY[0x1E695E480], &v7);
    }

    FigSimpleMutexUnlock();
    v5 = v7;
  }

  else
  {
    v5 = self->_videoLayer;
    v7 = v5;
  }

  return v5;
}

- (id)preferredDynamicRange
{
  FigSimpleMutexLock();
  v3 = self->_preferredCADynamicRange;
  FigSimpleMutexUnlock();

  return v3;
}

- (OpaqueFigVideoReceiver)copyVideoReceiver
{
  if (FigUseVideoReceiverForCALayer() && self->_createdForVideoReceiver)
  {
    FigSimpleMutexLock();
    videoReceiver = self->_videoReceiver;
    if (videoReceiver)
    {
      CFRetain(videoReceiver);
    }

    FigSimpleMutexUnlock();
  }

  return self->_videoReceiver;
}

- (OpaqueFigVideoTarget)videoTarget
{
  if (!FigUseVideoReceiverForCALayer() || !self->_createdForVideoReceiver)
  {
    return 0;
  }

  FigSimpleMutexLock();
  videoTarget = self->_videoTarget;
  if (!videoTarget)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v4 = CFRetain(videoTarget);
  FigSimpleMutexUnlock();
  if (!v4)
  {
    return 0;
  }

  return CFAutorelease(v4);
}

- (void)setToneMapToStandardDynamicRange:(BOOL)a3
{
  v3 = a3;
  [(CALayer *)[(FigVideoContainerLayer *)self videoLayer] setToneMapToStandardDynamicRange:a3];
  v5.receiver = self;
  v5.super_class = FigVideoContainerLayer;
  [(FigVideoContainerLayer *)&v5 setToneMapToStandardDynamicRange:v3];
}

- (void)_unsubscribeFromVideoReceiver:(OpaqueFigVideoReceiver *)a3
{
  if (a3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 24) + 112);
    if (v4)
    {
      v4(a3, 0, 0);
    }

    v5 = *(CMBaseObjectGetVTable() + 16);
    if (*v5 >= 2uLL)
    {
      v6 = v5[25];
      if (v6)
      {
        v6(a3, 0, 0);
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_0_74();

    FigNotificationCenterRemoveWeakListener();
  }
}

- (void)_subscribeToVideoReceiver:(OpaqueFigVideoReceiver *)a3
{
  if (a3)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 24) + 112);
    if (v5)
    {
      if (!v5(a3, videoContainerLayer_boundsDidChangeCallback, self))
      {
        v6 = *(CMBaseObjectGetVTable() + 16);
        if (*v6 >= 2uLL)
        {
          v7 = v6[25];
          if (v7)
          {
            if (!v7(a3, videoContainerLayer_activeConfigurationChangedCallback, self))
            {
              CMNotificationCenterGetDefaultLocalCenter();
              OUTLINED_FUNCTION_0_74();

              FigNotificationCenterAddWeakListener();
            }
          }
        }
      }
    }
  }
}

- (void)rebuild
{
  cf = 0;
  v3 = *MEMORY[0x1E695E480];
  FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
  if (_os_feature_enabled_impl() && self->_createdForVideoReceiver)
  {
    FigSimpleMutexLock();
    if ([(FigVideoContainerLayer *)self _checkIfRebuildIsRequiredWhileHoldingVideoTargetMutex])
    {
      videoReceiver = self->_videoReceiver;
      if (videoReceiver)
      {
        v10 = 0;
        CMBaseObject = FigVideoReceiverGetCMBaseObject(videoReceiver);
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v6)
        {
          v6(CMBaseObject, @"VideoLayer", v3, &v10);
          if (v10)
          {
            v7 = CFArrayCreate(v3, &v10, 1, MEMORY[0x1E695E9C0]);
            FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(cf, v7, 1);
            FPSupport_AppendDeferredTransactionChangeToRelease(cf, v10);
            FPSupport_AppendDeferredTransactionChangeToRelease(cf, v7);
          }
        }

        [(FigVideoContainerLayer *)self _unsubscribeFromVideoReceiver:self->_videoReceiver, v10];
        v8 = self->_videoReceiver;
        if (v8)
        {
          CFRelease(v8);
          self->_videoReceiver = 0;
        }
      }

      videoTarget = self->_videoTarget;
      if (videoTarget)
      {
        CFRelease(videoTarget);
        self->_videoTarget = 0;
      }

      [(FigVideoContainerLayer *)self _createAndSetupVideoReceiverWithDeferredTransaction:cf];
      FigSimpleMutexUnlock();
      [(FigVideoContainerLayer *)self setIsReadyForDisplay:0];
      [(FigVideoContainerLayer *)self setPresentationSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    }

    else
    {
      FigSimpleMutexUnlock();
    }
  }

  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }
}

- (int)_createAndSetupVideoReceiverWithDeferredTransaction:(OpaqueFigDeferredTransaction *)a3
{
  v3 = a3;
  v20[24] = *MEMORY[0x1E69E9840];
  cf = 0;
  v20[0] = self;
  v5 = MEMORY[0x1E695E480];
  if (!a3)
  {
    FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
    v3 = cf;
  }

  v6 = [[FigVideoLayer alloc] initWithDeferredTransaction:v3];
  values = v6;
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  [(FigVideoContainerLayer *)self setupVideoLayer:v6];
  v8 = *v5;
  v9 = FigVideoReceiverCreateWithVideoLayer(v8, v7, 0, &self->_videoReceiver);
  if (v9)
  {
LABEL_21:
    v15 = v9;
    Mutable = 0;
    goto LABEL_15;
  }

  [(FigVideoContainerLayer *)self _subscribeToVideoReceiver:self->_videoReceiver];
  v10 = CFArrayCreate(v8, &values, 1, MEMORY[0x1E695E9C0]);
  if (!v10 || (v11 = v10, (v12 = CFArrayCreate(v8, v20, 1, MEMORY[0x1E695E9C0])) == 0))
  {
LABEL_20:
    v9 = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  v13 = v12;
  v9 = FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(v3, v11, 1);
  if (v9)
  {
    goto LABEL_21;
  }

  v9 = FPSupport_AppendDeferredTransactionChangeForAttachingFigVideoLayersToClientLayers();
  if (v9)
  {
    goto LABEL_21;
  }

  v9 = FPSupport_AppendDeferredTransactionChangeForSettingEdgeAntialiasingMaskOnLayers(v3, 0, v11);
  if (v9)
  {
    goto LABEL_21;
  }

  v9 = FPSupport_AppendDeferredTransactionChangeToRelease(v3, v13);
  if (v9)
  {
    goto LABEL_21;
  }

  v9 = FPSupport_AppendDeferredTransactionChangeToRelease(v3, v11);
  if (v9)
  {
    goto LABEL_21;
  }

  v9 = FPSupport_AppendDeferredTransactionChangeToRelease(v3, values);
  if (v9)
  {
    goto LABEL_21;
  }

  Mutable = CFDictionaryCreateMutable(v8, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"ReceiverInSuspendibleProcess", *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(Mutable, @"RequiresOSTransaction", *MEMORY[0x1E695E4C0]);
  v15 = FigVideoTargetCreateWithVideoReceiver(v8, *(v20[0] + 18), Mutable, v20[0] + 152);
  if (dword_1ED4CBDD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_15:
  if (cf)
  {
    FigDeferredTransactionCommit(cf, 0);
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v15;
}

- (void)setupVideoLayer:(id)a3
{
  cf = 0;
  if (!FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf))
  {
    FigSimpleMutexLock();
    preferredCADynamicRange = self->_preferredCADynamicRange;
    if (preferredCADynamicRange)
    {
      FBLSupportAppendDeferredTransactionChangeToSetPreferredCADynamicRange(cf, a3, preferredCADynamicRange, "[FigVideoContainerLayer setupVideoLayer:]");
    }

    FigSimpleMutexUnlock();
    if (objc_opt_respondsToSelector())
    {
      [a3 enableDRMFallback];
    }

    if (objc_opt_respondsToSelector())
    {
      [a3 setToneMapToStandardDynamicRange:{-[FigVideoContainerLayer toneMapToStandardDynamicRange](self, "toneMapToStandardDynamicRange")}];
    }
  }

  FigDeferredTransactionCommit(cf, 1);
  CFRelease(cf);
}

- (void)setPreferredDynamicRange:(id)a3
{
  cf = 0;
  if (!FigCFEqual())
  {
    v5 = [(FigVideoContainerLayer *)self videoLayer];
    if (!FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf))
    {
      FigSimpleMutexLock();

      self->_preferredCADynamicRange = 0;
      if (a3)
      {
        v6 = [a3 copy];
        self->_preferredCADynamicRange = v6;
        if (v5)
        {
          if (v6)
          {
            FBLSupportAppendDeferredTransactionChangeToSetPreferredCADynamicRange(cf, v5, v6, "[FigVideoContainerLayer setPreferredDynamicRange:]");
          }
        }
      }

      FigSimpleMutexUnlock();
      v7 = v5;
      FPSupport_AppendDeferredTransactionChangeToRelease(cf, v5);
    }
  }

  if (cf)
  {
    FigDeferredTransactionCommit(cf, 1);
    CFRelease(cf);
  }
}

@end