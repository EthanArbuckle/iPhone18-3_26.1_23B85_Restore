@interface FigVideoLayer
- (BOOL)isVideoLayerBeingServiced;
- (FigVideoLayer)initWithDeferredTransaction:(OpaqueFigDeferredTransaction *)transaction;
- (FigVideoLayer)initWithLayer:(id)layer;
- (FigVideoLayer)initWithoutDeferredTransaction;
- (id)actionForKey:(id)key;
- (id)layerDisplayName;
- (void)_sendVideoLayerIsBeingServicedNotification;
- (void)_setupInternalFigVideoLayer;
- (void)dealloc;
- (void)layerDidBecomeVisible:(BOOL)visible;
- (void)notificationBarrier;
- (void)setContentsSlotID:(unsigned int)d;
@end

@implementation FigVideoLayer

- (void)_setupInternalFigVideoLayer
{
  self->_videoLayer->isPresentationLayer = 0;
  self->_videoLayer->visible = 0;
  self->_videoLayer->serializationMutex = FigSimpleMutexCreate();
  self->_videoLayer->notificationSerialQueue = dispatch_queue_create("com.apple.coremedia.videolayer.notificationqueue", 0);
}

- (FigVideoLayer)initWithDeferredTransaction:(OpaqueFigDeferredTransaction *)transaction
{
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!transaction)
  {
    if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf))
    {
      goto LABEL_11;
    }

    transaction = cf;
  }

  v7.receiver = self;
  v7.super_class = FigVideoLayer;
  self = [(FigThreadSafeCALayer *)&v7 initWithDeferredTransaction:transaction];
  if (!self)
  {
    goto LABEL_7;
  }

  v5 = objc_alloc_init(FigVideoLayerInternal);
  self->_videoLayer = v5;
  if (v5)
  {
    CFRetain(v5);
    [(FigVideoLayer *)self _setupTraceLevel];
    FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing(transaction, self, 1, "[FigVideoLayer initWithDeferredTransaction:]");
    [(FigVideoLayer *)self _setupInternalFigVideoLayer];
    goto LABEL_7;
  }

  if ([FigVideoLayer initWithDeferredTransaction:])
  {
LABEL_7:
    if (cf)
    {
      FigDeferredTransactionCommit(cf, 0);
      CFRelease(cf);
    }

    return self;
  }

LABEL_11:

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

- (FigVideoLayer)initWithoutDeferredTransaction
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v6.receiver = self;
  v6.super_class = FigVideoLayer;
  initWithoutDeferredTransaction = [(FigThreadSafeCALayer *)&v6 initWithoutDeferredTransaction];
  if (initWithoutDeferredTransaction)
  {
    v4 = objc_alloc_init(FigVideoLayerInternal);
    initWithoutDeferredTransaction->_videoLayer = v4;
    if (v4)
    {
      CFRetain(v4);
      [(FigVideoLayer *)initWithoutDeferredTransaction _setupTraceLevel];
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setDisableActions:1];
      [(FigVideoLayer *)initWithoutDeferredTransaction setAllowsDisplayCompositing:1];
      [MEMORY[0x1E6979518] commit];
      [(FigVideoLayer *)initWithoutDeferredTransaction _setupInternalFigVideoLayer];
    }

    else
    {

      return 0;
    }
  }

  return initWithoutDeferredTransaction;
}

- (FigVideoLayer)initWithLayer:(id)layer
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    return 0;
  }

  v8.receiver = self;
  v8.super_class = FigVideoLayer;
  v5 = [(FigVideoLayer *)&v8 initWithLayer:layer];
  if (v5)
  {
    v6 = objc_alloc_init(FigVideoLayerInternal);
    v5->_videoLayer = v6;
    if (v6)
    {
      CFRetain(v6);
      v5->_videoLayer->isPresentationLayer = 1;
      v5->_videoLayer->visible = 0;
      return v5;
    }

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  videoLayer = self->_videoLayer;
  if (videoLayer->serializationMutex)
  {
    FigSimpleMutexDestroy();
    videoLayer = self->_videoLayer;
  }

  if (videoLayer->notificationSerialQueue && (dispatch_release(videoLayer->notificationSerialQueue), (videoLayer = self->_videoLayer) == 0))
  {
    v4 = 0;
  }

  else
  {
    CFRelease(videoLayer);
    v4 = self->_videoLayer;
  }

  v5.receiver = self;
  v5.super_class = FigVideoLayer;
  [(FigBaseCALayer *)&v5 dealloc];
}

- (id)actionForKey:(id)key
{
  if (([key isEqualToString:@"contentsCDRStrength"] & 1) == 0 && (objc_msgSend(key, "isEqualToString:", @"contentsEDRStrength") & 1) == 0 && !objc_msgSend(key, "isEqualToString:", @"preferredDynamicRange"))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = FigVideoLayer;
  return [(FigBaseCALayer *)&v6 actionForKey:key];
}

- (void)layerDidBecomeVisible:(BOOL)visible
{
  visibleCopy = visible;
  if (!self->_videoLayer->isPresentationLayer)
  {
    FigSimpleMutexLock();
    self->_videoLayer->visible = visibleCopy;
    FigSimpleMutexUnlock();
    notificationSerialQueue = self->_videoLayer->notificationSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__FigVideoLayer_layerDidBecomeVisible___block_invoke;
    block[3] = &unk_1E7482608;
    block[4] = self;
    dispatch_async(notificationSerialQueue, block);
  }

  v6.receiver = self;
  v6.super_class = FigVideoLayer;
  [(FigVideoLayer *)&v6 layerDidBecomeVisible:visibleCopy];
}

- (BOOL)isVideoLayerBeingServiced
{
  FigSimpleMutexLock();
  LOBYTE(self) = self->_videoLayer->visible;
  FigSimpleMutexUnlock();
  return self;
}

- (id)layerDisplayName
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_videoLayer->visible)
  {
    return 0;
  }

  v2 = [-[FigVideoLayer context](self "context")];
  v3 = [v2 objectForKey:*MEMORY[0x1E6979698]];
  if (v3)
  {
    unsignedIntValue = [v3 unsignedIntValue];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    displays = [MEMORY[0x1E6979328] displays];
    v6 = [displays countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(displays);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (unsignedIntValue == [v10 displayId])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [displays countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          goto LABEL_14;
        }
      }

      result = [v10 name];
      if (result)
      {
        return result;
      }
    }
  }

LABEL_14:
  result = [v2 objectForKey:*MEMORY[0x1E69796A0]];
  if (!result)
  {
    return [objc_msgSend(MEMORY[0x1E6979328] "mainDisplay")];
  }

  return result;
}

- (void)notificationBarrier
{
  notificationSerialQueue = self->_videoLayer->notificationSerialQueue;
  if (notificationSerialQueue)
  {
    dispatch_sync(notificationSerialQueue, &__block_literal_global_103);
  }
}

- (void)_sendVideoLayerIsBeingServicedNotification
{
  CMNotificationCenterGetDefaultLocalCenter();

  CMNotificationCenterPostNotification();
}

- (void)setContentsSlotID:(unsigned int)d
{
  v8 = *MEMORY[0x1E69E9840];
  self->_contentsSlotID = d;
  v4 = [MEMORY[0x1E6979320] objectForSlot:?];
  if (dword_1ED4CBEF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(FigVideoLayer *)self setContents:v4, v6, v7];
}

@end