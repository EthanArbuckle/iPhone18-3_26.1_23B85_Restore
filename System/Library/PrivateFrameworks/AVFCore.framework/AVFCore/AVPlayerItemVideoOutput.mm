@interface AVPlayerItemVideoOutput
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)earliestAvailablePixelBufferItemTime;
- (AVPlayerItemVideoOutput)initWithOutputSettings:(NSDictionary *)outputSettings;
- (AVPlayerItemVideoOutput)initWithPixelBufferAttributes:(NSDictionary *)pixelBufferAttributes;
- (BOOL)_attachToPlayerItem:(id)item;
- (BOOL)hasNewPixelBufferForItemTime:(CMTime *)itemTime;
- (BOOL)isDefunct;
- (BOOL)setUpWithOutputSettings:(id)settings outputSettingsArePixelBufferAttributes:(BOOL)attributes withExceptionReason:(id *)reason;
- (BOOL)suppressesPlayerRendering;
- (__CVBuffer)_copyPixelBufferForItemTimeWithOptions:(id *)options itemTimeForDisplay:(id *)display options:(unsigned int)a5;
- (__CVBuffer)copyPixelBufferForItemTime:(id *)time remove:(BOOL)remove itemTimeForDisplay:(id *)display;
- (void)_detachFromPlayerItem;
- (void)_dispatchOutputMediaDataWillChange;
- (void)_dispatchOutputSequenceWasFlushed;
- (void)_respondToPlayerItemFormatDescriptionsChange;
- (void)_setTimebase:(OpaqueCMTimebase *)timebase;
- (void)_startObservingTimebaseNotificationsForTimebase:(OpaqueCMTimebase *)timebase;
- (void)_stopObservingTimebaseNotificationsForTimebase:(OpaqueCMTimebase *)timebase;
- (void)dealloc;
- (void)requestNotificationOfMediaDataChangeAsSoonAsPossible;
- (void)requestNotificationOfMediaDataChangeWithAdvanceInterval:(NSTimeInterval)interval;
- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)delegateQueue;
- (void)setSuppressesPlayerRendering:(BOOL)rendering;
@end

@implementation AVPlayerItemVideoOutput

- (BOOL)setUpWithOutputSettings:(id)settings outputSettingsArePixelBufferAttributes:(BOOL)attributes withExceptionReason:(id *)reason
{
  v10 = objc_alloc_init(AVPlayerItemVideoOutputInternal);
  self->_videoOutputInternal = v10;
  if (v10)
  {
    CFRetain(v10);
    if (!attributes)
    {
      *&self->_videoOutputInternal->suppressesPlayerRendering = [AVVideoOutputSettings _videoOutputSettingsWithVideoSettingsDictionary:settings exceptionReason:reason];
      v10 = *&self->_videoOutputInternal->suppressesPlayerRendering;
      if (!v10)
      {
        return v10;
      }

      if ([(AVPlayerItemVideoOutputInternal *)v10 willYieldCompressedSamples])
      {
        if (reason)
        {
          v16 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"AVPlayerItemVideoOutput does not support compressed output", v11, v12, v13, v14, v15, v23);
          LOBYTE(v10) = 0;
          *reason = v16;
          return v10;
        }

LABEL_9:
        LOBYTE(v10) = 0;
        return v10;
      }

      [*&self->_videoOutputInternal->suppressesPlayerRendering pixelBufferAttributes];
    }

    if (!VTPixelBufferConformerCreateWithAttributes())
    {
      if (self->_videoOutputInternal->pixelBufferConformer)
      {
        v17 = [MEMORY[0x1E696AD98] numberWithDouble:0.015];
        [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v17, *MEMORY[0x1E6973EF8], 0}];
        _weakReference = [(AVPlayerItemOutput *)self _weakReference];
        if (!FigVisualContextCreateRemote())
        {
          vc = self->_videoOutputInternal->vc;
          if (vc)
          {
            v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v20)
            {
              if (!v20(vc, AVPlayerItemVideoOutput_figVCSequentialAvailableCallback, _weakReference))
              {
                self->_videoOutputInternal->stateQueue = dispatch_queue_create("AVPlayerItemOutput queue", 0);
                self->_videoOutputInternal->delegateStorage = objc_alloc_init(AVWeakReferencingDelegateStorage);
                self->_videoOutputInternal->delegateWakeupSource = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_videoOutputInternal->stateQueue);
                self->_videoOutputInternal->advanceWakeUpInterval = 0.0;
                self->_videoOutputInternal->advanceWakeUpIntervalIsValid = 0;
                BYTE4(self->_videoOutputInternal->wakeUpImageTime.epoch) = 0;
                *&self->_videoOutputInternal->immediateWakeUp = 0;
                delegateWakeupSource = self->_videoOutputInternal->delegateWakeupSource;
                handler[0] = MEMORY[0x1E69E9820];
                handler[1] = 3221225472;
                handler[2] = __110__AVPlayerItemVideoOutput_setUpWithOutputSettings_outputSettingsArePixelBufferAttributes_withExceptionReason___block_invoke;
                handler[3] = &unk_1E7460DF0;
                handler[4] = delegateWakeupSource;
                handler[5] = _weakReference;
                dispatch_source_set_event_handler(delegateWakeupSource, handler);
                dispatch_resume(self->_videoOutputInternal->delegateWakeupSource);
                LOBYTE(v10) = 1;
                return v10;
              }
            }
          }
        }
      }
    }

    goto LABEL_9;
  }

  return v10;
}

uint64_t __110__AVPlayerItemVideoOutput_setUpWithOutputSettings_outputSettingsArePixelBufferAttributes_withExceptionReason___block_invoke(uint64_t a1)
{
  dispatch_source_set_timer(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v2 = [*(a1 + 40) referencedObject];

  return [v2 _dispatchOutputMediaDataWillChange];
}

- (AVPlayerItemVideoOutput)initWithPixelBufferAttributes:(NSDictionary *)pixelBufferAttributes
{
  v16.receiver = self;
  v16.super_class = AVPlayerItemVideoOutput;
  v5 = [(AVPlayerItemOutput *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v15 = 0;
    if (![(AVPlayerItemVideoOutput *)v5 setUpWithOutputSettings:pixelBufferAttributes outputSettingsArePixelBufferAttributes:1 withExceptionReason:&v15])
    {

      if (v15)
      {
        v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v6 userInfo:{a2, v15, v7, v8, v9, v10, v11, v14), 0}];
        objc_exception_throw(v13);
      }

      return 0;
    }
  }

  return v6;
}

- (AVPlayerItemVideoOutput)initWithOutputSettings:(NSDictionary *)outputSettings
{
  v17.receiver = self;
  v17.super_class = AVPlayerItemVideoOutput;
  v5 = [(AVPlayerItemOutput *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v16 = 0;
    if (![(AVPlayerItemVideoOutput *)v5 setUpWithOutputSettings:outputSettings outputSettingsArePixelBufferAttributes:0 withExceptionReason:&v16])
    {
      v7 = v6;
      if (v16)
      {
        v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v6 userInfo:{a2, v16, v8, v9, v10, v11, v12, v15), 0}];
        objc_exception_throw(v14);
      }

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  videoOutputInternal = self->_videoOutputInternal;
  delegateWakeupSource = videoOutputInternal->delegateWakeupSource;
  if (delegateWakeupSource)
  {
    dispatch_source_cancel(delegateWakeupSource);
    videoOutputInternal = self->_videoOutputInternal;
  }

  pixelBufferConformer = videoOutputInternal->pixelBufferConformer;
  if (pixelBufferConformer)
  {
    CFRelease(pixelBufferConformer);
    videoOutputInternal = self->_videoOutputInternal;
  }

  vc = self->_videoOutputInternal->vc;
  if (vc)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v7(vc, 0, 0);
    }

    v8 = self->_videoOutputInternal->vc;
    if (v8)
    {
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v9)
      {
        v9(v8);
      }
    }
  }

  v10 = self->_videoOutputInternal;
  v11 = v10->vc;
  if (v11)
  {
    CFRelease(v11);
    v10 = self->_videoOutputInternal;
  }

  v12 = self->_videoOutputInternal;
  v13 = v12->delegateWakeupSource;
  if (v13)
  {
    dispatch_release(v13);
    v12 = self->_videoOutputInternal;
  }

  stateQueue = v12->stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
    v12 = self->_videoOutputInternal;
  }

  CFRelease(self->_videoOutputInternal);
  v15.receiver = self;
  v15.super_class = AVPlayerItemVideoOutput;
  [(AVPlayerItemOutput *)&v15 dealloc];
}

- (BOOL)_attachToPlayerItem:(id)item
{
  stateQueue = self->_videoOutputInternal->stateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__AVPlayerItemVideoOutput__attachToPlayerItem___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = self;
  v6[5] = item;
  dispatch_sync(stateQueue, v6);
  [(AVPlayerItemVideoOutput *)self _respondToPlayerItemFormatDescriptionsChange];
  return 1;
}

id __47__AVPlayerItemVideoOutput__attachToPlayerItem___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) _weakReference];
  *(*(*(a1 + 32) + 16) + 32) = result;
  *(*(*(a1 + 32) + 16) + 112) = 1;
  return result;
}

- (void)_detachFromPlayerItem
{
  stateQueue = self->_videoOutputInternal->stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AVPlayerItemVideoOutput__detachFromPlayerItem__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

void *__48__AVPlayerItemVideoOutput__detachFromPlayerItem__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 16) + 32) = 0;
  *(*(*(a1 + 32) + 16) + 112) = 0;
  result = *(a1 + 32);
  v3 = result[2];
  if (*(v3 + 80) == 1 && (dispatch_source_set_timer(*(v3 + 64), 0xFFFFFFFFFFFFFFFFLL, 0, 0), result = *(a1 + 32), v3 = result[2], (*(v3 + 80) & 1) != 0) || *(v3 + 108) == 1)
  {

    return [result _dispatchOutputMediaDataWillChange];
  }

  return result;
}

- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)delegateQueue
{
  if (delegateQueue)
  {
    v8 = 1;
  }

  else
  {
    v8 = delegate == 0;
  }

  if (!v8)
  {
    delegateQueue = MEMORY[0x1E69E96A0];
  }

  if (delegate)
  {
    if (!delegateQueue)
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D940];
      v11 = "newDelegateQueue != NULL";
      goto LABEL_14;
    }
  }

  else if (delegateQueue)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = "newDelegateQueue == NULL";
LABEL_14:
    v13 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", delegateQueue, v4, v5, v6, v7, v11), 0}];
    objc_exception_throw(v13);
  }

  delegateStorage = self->_videoOutputInternal->delegateStorage;

  [AVWeakReferencingDelegateStorage setDelegate:"setDelegate:queue:" queue:?];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)earliestAvailablePixelBufferItemTime
{
  v5 = MEMORY[0x1E6960C70];
  v12 = *MEMORY[0x1E6960C70];
  *&retstr->var0 = *MEMORY[0x1E6960C70];
  v6 = *(v5 + 16);
  retstr->var3 = v6;
  result = FigVisualContextGetEarliestSequentialImageTime();
  if ((retstr->var2 & 0x1D) == 1)
  {
    vc = self->_videoOutputInternal->vc;
    v13 = *&retstr->var0;
    var3 = retstr->var3;
    VTable = CMBaseObjectGetVTable();
    v10 = *(VTable + 16);
    result = (VTable + 16);
    v11 = *(v10 + 40);
    if (!v11 || (v15 = v13, v16 = var3, result = v11(vc, &v15), !result))
    {
      *&retstr->var0 = v12;
      retstr->var3 = v6;
    }
  }

  return result;
}

- (void)requestNotificationOfMediaDataChangeWithAdvanceInterval:(NSTimeInterval)interval
{
  stateQueue = self->_videoOutputInternal->stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__AVPlayerItemVideoOutput_requestNotificationOfMediaDataChangeWithAdvanceInterval___block_invoke;
  v4[3] = &unk_1E7460FA8;
  v4[4] = self;
  *&v4[5] = interval;
  dispatch_sync(stateQueue, v4);
}

void __83__AVPlayerItemVideoOutput_requestNotificationOfMediaDataChangeWithAdvanceInterval___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 16) + 72) = *(a1 + 40);
  *(*(*(a1 + 32) + 16) + 80) = 1;
  *(*(*(a1 + 32) + 16) + 112) = 2;
  v2 = *(*(a1 + 32) + 16);
  if (*(v2 + 108) == 1)
  {
    *(v2 + 108) = 0;
    v2 = *(*(a1 + 32) + 16);
  }

  if (*(v2 + 16) != 0.0)
  {
    memset(&v18, 0, sizeof(v18));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v18, HostTimeClock);
    memset(&v17, 0, sizeof(v17));
    CMTimeMakeWithSeconds(&rhs, *(a1 + 40), v18.timescale);
    lhs = v18;
    CMTimeAdd(&v17, &lhs, &rhs);
    memset(&lhs, 0, sizeof(lhs));
    v4 = CMClockGetHostTimeClock();
    v5 = *(*(*(a1 + 32) + 16) + 8);
    rhs = v17;
    CMSyncConvertTime(&lhs, &rhs, v4, v5);
    v6 = *(a1 + 32);
    rhs = lhs;
    if ([v6 hasNewPixelBufferForItemTime:&rhs])
    {
      dispatch_source_set_timer(*(*(*(a1 + 32) + 16) + 64), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      [*(a1 + 32) _dispatchOutputMediaDataWillChange];
    }

    else
    {
      v14 = **&MEMORY[0x1E6960C70];
      v7 = *(*(a1 + 32) + 16);
      v15 = 0;
      v8 = *(v7 + 24);
      v13 = lhs;
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v9 || (rhs = v13, v9(v8, 0, &rhs, &v14, &v15), !v15))
      {
        if ((v14.flags & 0x1D) == 1)
        {
          v10 = *(*(a1 + 32) + 16);
          v11 = *(a1 + 40);
          rhs = v14;
          v12 = AVPlayerItemVideoOutputConvertImageTimeToDispatchTimeWithInterval(v10, &rhs, v11);
          dispatch_source_set_timer(*(*(*(a1 + 32) + 16) + 64), v12, 0xFFFFFFFFFFFFFFFFLL, (*(*(*(a1 + 32) + 16) + 16) / 10.0));
        }
      }
    }
  }
}

- (void)requestNotificationOfMediaDataChangeAsSoonAsPossible
{
  stateQueue = self->_videoOutputInternal->stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AVPlayerItemVideoOutput_requestNotificationOfMediaDataChangeAsSoonAsPossible__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

uint64_t __79__AVPlayerItemVideoOutput_requestNotificationOfMediaDataChangeAsSoonAsPossible__block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 16) + 108) = 1;
  *(*(*(result + 32) + 16) + 112) = 3;
  v1 = *(*(result + 32) + 16);
  if (*(v1 + 80) == 1)
  {
    *(v1 + 80) = 0;
  }

  return result;
}

- (BOOL)hasNewPixelBufferForItemTime:(CMTime *)itemTime
{
  if ((itemTime->flags & 0x1D) != 1)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  vc = self->_videoOutputInternal->vc;
  v8 = *itemTime;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  result = 0;
  if (v6)
  {
    v9 = v8;
    if (v6(vc, &v9))
    {
      return 1;
    }
  }

  return result;
}

- (__CVBuffer)_copyPixelBufferForItemTimeWithOptions:(id *)options itemTimeForDisplay:(id *)display options:(unsigned int)a5
{
  v5 = *&a5;
  v16 = 0;
  cf = 0;
  v7 = *MEMORY[0x1E6960C70];
  v15 = *(MEMORY[0x1E6960C70] + 16);
  videoOutputInternal = self->_videoOutputInternal;
  v14 = v7;
  vc = videoOutputInternal->vc;
  v13 = *options;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v10)
  {
    v11 = *MEMORY[0x1E695E480];
    v18 = v13;
    if (!v10(vc, v11, &v18, v5, &cf, 0, &v14))
    {
      if (display)
      {
        if ((BYTE12(v14) & 0x1D) != 1)
        {
          goto LABEL_8;
        }

        *&display->var0 = v14;
        display->var3 = v15;
      }

      if (VTPixelBufferConformerCopyConformedPixelBuffer())
      {
        v16 = 0;
      }
    }
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

- (__CVBuffer)copyPixelBufferForItemTime:(id *)time remove:(BOOL)remove itemTimeForDisplay:(id *)display
{
  if (remove)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  v8 = *time;
  return [(AVPlayerItemVideoOutput *)self _copyPixelBufferForItemTimeWithOptions:&v8 itemTimeForDisplay:display options:v6];
}

- (void)setSuppressesPlayerRendering:(BOOL)rendering
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__32;
  v11 = __Block_byref_object_dispose__32;
  v12 = 0;
  stateQueue = self->_videoOutputInternal->stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVPlayerItemVideoOutput_setSuppressesPlayerRendering___block_invoke;
  block[3] = &unk_1E7462948;
  renderingCopy = rendering;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(stateQueue, block);
  [objc_msgSend(v8[5] "referencedObject")];

  _Block_object_dispose(&v7, 8);
}

id __56__AVPlayerItemVideoOutput_setSuppressesPlayerRendering___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 16) + 120) = *(a1 + 48);
  result = *(*(*(a1 + 32) + 16) + 32);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)suppressesPlayerRendering
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  videoOutputInternal = self->_videoOutputInternal;
  v10 = 0;
  stateQueue = videoOutputInternal->stateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__AVPlayerItemVideoOutput_suppressesPlayerRendering__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_respondToPlayerItemFormatDescriptionsChange
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__32;
  videoOutputInternal = self->_videoOutputInternal;
  v15 = __Block_byref_object_dispose__32;
  v16 = 0;
  stateQueue = videoOutputInternal->stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__AVPlayerItemVideoOutput__respondToPlayerItemFormatDescriptionsChange__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(stateQueue, block);
  v5 = v12[5];
  if (v5)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = 0;
    v9 = 0;
    v7 = 0;
    [*&self->_videoOutputInternal->suppressesPlayerRendering colorPropertiesConsideringFormatDescriptions:objc_msgSend(v12[5] colorPrimaries:"_enabledTrackFormatDescriptions") transferFunction:&v9 ycbcrMatrix:{&v8, &v7}];
    if (v9)
    {
      [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x1E6965D88]];
    }

    if (v8)
    {
      [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x1E6965F30]];
    }

    if (v7)
    {
      [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E6965F98]];
    }

    VTPixelBufferConformerSetColorProperties();
    v5 = v12[5];
  }

  _Block_object_dispose(&v11, 8);
}

id __71__AVPlayerItemVideoOutput__respondToPlayerItemFormatDescriptionsChange__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 16) + 32) referencedObject];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_stopObservingTimebaseNotificationsForTimebase:(OpaqueCMTimebase *)timebase
{
  if (timebase)
  {
    v5 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVPlayerItemOutput *)self _weakReference];
    v7 = *MEMORY[0x1E6960CD0];

    [v5 removeListenerWithWeakReference:_weakReference callback:AVPlayerItemVideoOutput_timebaseNotificationCallback name:v7 object:timebase];
  }
}

- (void)_startObservingTimebaseNotificationsForTimebase:(OpaqueCMTimebase *)timebase
{
  if (timebase)
  {
    v5 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVPlayerItemOutput *)self _weakReference];
    v7 = *MEMORY[0x1E6960CD0];

    [v5 addListenerWithWeakReference:_weakReference callback:AVPlayerItemVideoOutput_timebaseNotificationCallback name:v7 object:timebase flags:0];
  }
}

- (void)_setTimebase:(OpaqueCMTimebase *)timebase
{
  v7.receiver = self;
  v7.super_class = AVPlayerItemVideoOutput;
  [(AVPlayerItemOutput *)&v7 _setTimebase:?];
  stateQueue = self->_videoOutputInternal->stateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__AVPlayerItemVideoOutput__setTimebase___block_invoke;
  v6[3] = &unk_1E7460FA8;
  v6[4] = self;
  v6[5] = timebase;
  dispatch_sync(stateQueue, v6);
}

uint64_t __40__AVPlayerItemVideoOutput__setTimebase___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopObservingTimebaseNotificationsForTimebase:*(*(*(a1 + 32) + 16) + 8)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 32);
  v6 = *(v5[2] + 8);

  return [v5 _startObservingTimebaseNotificationsForTimebase:v6];
}

- (void)_dispatchOutputMediaDataWillChange
{
  videoOutputInternal = self->_videoOutputInternal;
  if ((videoOutputInternal->wakeUpImageTime.epoch & 0x100000000) != 0 || videoOutputInternal->advanceWakeUpIntervalIsValid)
  {
    delegateStorage = videoOutputInternal->delegateStorage;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__AVPlayerItemVideoOutput__dispatchOutputMediaDataWillChange__block_invoke;
    v5[3] = &unk_1E7463C50;
    v5[4] = self;
    [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v5];
    videoOutputInternal = self->_videoOutputInternal;
  }

  videoOutputInternal->advanceWakeUpInterval = 0.0;
  self->_videoOutputInternal->advanceWakeUpIntervalIsValid = 0;
  BYTE4(self->_videoOutputInternal->wakeUpImageTime.epoch) = 0;
}

uint64_t __61__AVPlayerItemVideoOutput__dispatchOutputMediaDataWillChange__block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(v3 + 32);

      return [a2 outputMediaDataWillChange:v4];
    }
  }

  return result;
}

- (void)_dispatchOutputSequenceWasFlushed
{
  delegateStorage = self->_videoOutputInternal->delegateStorage;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__AVPlayerItemVideoOutput__dispatchOutputSequenceWasFlushed__block_invoke;
  v3[3] = &unk_1E7463C50;
  v3[4] = self;
  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v3];
}

uint64_t __60__AVPlayerItemVideoOutput__dispatchOutputSequenceWasFlushed__block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(v3 + 32);

      return [a2 outputSequenceWasFlushed:v4];
    }
  }

  return result;
}

- (BOOL)isDefunct
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  videoOutputInternal = self->_videoOutputInternal;
  v10 = 0;
  stateQueue = videoOutputInternal->stateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__AVPlayerItemVideoOutput_isDefunct__block_invoke;
  v6[3] = &unk_1E7460EE0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = *(v8 + 24) == 1;
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __36__AVPlayerItemVideoOutput_isDefunct__block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 16) + 24);
  v3 = *(*(a1 + 40) + 8);
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 8);
  result = VTable + 8;
  v6 = v7;
  if (*v7 >= 5uLL && (v8 = v6[11]) != 0)
  {
    result = v8(v2, v3 + 24);
    v9 = result == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a1 + 40) + 8);
  if (!*(v10 + 24) && !v9)
  {
    *(v10 + 24) = 1;
  }

  return result;
}

void __AVPlayerItemVideoOutput_timebaseNotificationCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  v9 = *(v2 + 84);
  Rate = CMTimebaseGetRate(*(v2 + 8));
  v5 = *(a1 + 32);
  if (*(v5 + 80) != 1)
  {
    if (*(v5 + 108) != 1 || *(v5 + 16) != 0.0 || Rate == 0.0)
    {
      goto LABEL_12;
    }

LABEL_11:
    [*(a1 + 40) _dispatchOutputMediaDataWillChange];
    goto LABEL_12;
  }

  v6 = *(v5 + 16);
  if (v6 == Rate)
  {
    goto LABEL_12;
  }

  if (v6 == 0.0 && Rate != 0.0)
  {
    goto LABEL_11;
  }

  if (v6 == 0.0 || Rate != 0.0)
  {
    v8 = v9;
    v7 = AVPlayerItemVideoOutputConvertImageTimeToDispatchTimeWithInterval(v5, &v8, v3);
    dispatch_source_set_timer(*(*(a1 + 32) + 64), v7, 0xFFFFFFFFFFFFFFFFLL, (Rate / 10.0));
  }

LABEL_12:
  *(*(a1 + 32) + 16) = Rate;
}

uint64_t __AVPlayerItemVideoOutput_figVCSequentialAvailableCallback_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 80) == 1)
  {
    dispatch_source_set_timer(*(v2 + 64), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    [*(a1 + 40) _dispatchOutputMediaDataWillChange];
  }

  v3 = *(a1 + 40);

  return [v3 _dispatchOutputSequenceWasFlushed];
}

void __AVPlayerItemVideoOutput_figVCSequentialAvailableCallback_block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  v6 = *(v3 + 16);
  v7 = *(a1 + 56);
  *(v3 + 84) = *(a1 + 40);
  *(v3 + 100) = v7;
  if (v5 == 1 && v6 != 0.0)
  {
    v15 = v1;
    v16 = v2;
    v9 = *(a1 + 32);
    v14 = *(a1 + 40);
    v10 = AVPlayerItemVideoOutputConvertImageTimeToDispatchTimeWithInterval(v9, &v14, v4);
    v11 = *(a1 + 32);
    v12 = *(v11 + 64);
    v13 = (*(v11 + 16) / 10.0);

    dispatch_source_set_timer(v12, v10, 0xFFFFFFFFFFFFFFFFLL, v13);
  }
}

@end