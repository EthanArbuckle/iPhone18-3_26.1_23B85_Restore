@interface AVPlayerItemIntegratedTimeline
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- (AVPlayerItemIntegratedTimelineSnapshot)currentSnapshot;
- (BOOL)_shouldDeferSeekToDelegate;
- (NSDate)currentDate;
- (id)_currentItemForCurrentSegment;
- (id)_currentItemForSegmentType:(int64_t)type;
- (id)_initInternal;
- (id)addBoundaryTimeObserverForSegment:(id)segment offsetsIntoSegment:(id)intoSegment queue:(id)queue usingBlock:(id)block;
- (id)addPeriodicTimeObserverForInterval:(id *)interval queue:(id)queue usingBlock:(id)block;
- (int)_createSeekID;
- (int)_deferOrIssueSeekOnFigTimelineForID:(int)d time:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after options:(__CFDictionary *)options;
- (int64_t)_currentSegmentTypeOfCurrentSnapshot;
- (void)_addInterstitialPlayerListeners;
- (void)_addListener;
- (void)_attachCoordinator:(OpaqueFigPlayerInterstitialCoordinator *)coordinator;
- (void)_attachInterstitialPlayer:(id)player;
- (void)_attachToItem:(id)item;
- (void)_cancelPendingSeekAndRegisterSeekID:(int)d seekTime:(id *)time withCompletionHandler:(id)handler;
- (void)_cancelPendingSeeks;
- (void)_clearCachedSeekWithLock;
- (void)_ensureObserversHandleSnapshotSegmentsChanged;
- (void)_informDelegateOfSeekForTimeIfNecessary:(id *)necessary;
- (void)_issueCachedSeekIfNecessary;
- (void)_removeInterstitialPlayerListeners;
- (void)_removeListeners;
- (void)_resetPlaybackCoordinatorTimelineExpectations:(__CFDictionary *)expectations;
- (void)_seekToDate:(id)date options:(__CFDictionary *)options completionHandler:(id)handler;
- (void)_seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after options:(__CFDictionary *)options completionHandler:(id)handler;
- (void)_setInitialSeekState:(int)state time:(id *)time date:(id)date toleranceBefore:(id *)before toleranceAfter:(id *)after options:(__CFDictionary *)options;
- (void)_unregisterInvokeAndReleasePendingSeekCompletionHandlerForSeekID:(int)d finished:(BOOL)finished;
- (void)dealloc;
- (void)removeTimeObserver:(id)observer;
- (void)seekToDate:(id)date completionHandler:(id)handler;
- (void)seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler;
@end

@implementation AVPlayerItemIntegratedTimeline

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (id)_initInternal
{
  v5.receiver = self;
  v5.super_class = AVPlayerItemIntegratedTimeline;
  v2 = [(AVPlayerItemIntegratedTimeline *)&v5 init];
  v2->_weakReference = [[AVWeakReference alloc] initWithReferencedObject:v2];
  v2->_seekIDMutex = FigSimpleMutexCreate();
  v2->_nextSeekIDToGenerate = FPSupport_InitialSeekIDForSource();
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2->_stateQueue = dispatch_queue_create("com.apple.avfoundation.integratedtimelinestatequeue", v3);
  v2->_observers = objc_alloc_init(MEMORY[0x1E695DF70]);
  return v2;
}

- (void)dealloc
{
  [(AVPlayerItemIntegratedTimeline *)self _removeListeners];
  [(AVPlayerItemIntegratedTimeline *)self _cancelPendingSeeks];
  [(AVPlayerItemIntegratedTimeline *)self _removeInterstitialPlayerListeners];
  FigSimpleMutexDestroy();
  figTimeline = self->_figTimeline;
  if (figTimeline)
  {
    CFRelease(figTimeline);
  }

  initialOptions = self->_initialOptions;
  if (initialOptions)
  {
    CFRelease(initialOptions);
  }

  dispatch_release(self->_stateQueue);
  v5.receiver = self;
  v5.super_class = AVPlayerItemIntegratedTimeline;
  [(AVPlayerItemIntegratedTimeline *)&v5 dealloc];
}

- (void)_attachToItem:(id)item
{
  _copyFigPlaybackItem = [item _copyFigPlaybackItem];
  v6 = _copyFigPlaybackItem;
  if (self->_figTimeline)
  {
    v7 = 1;
  }

  else
  {
    v7 = _copyFigPlaybackItem == 0;
  }

  if (!v7)
  {
    FigItemIntegratedTimelineCreate();
    [(AVPlayerItemIntegratedTimeline *)self _addListener];
    self->_weakReferenceToPrimaryItem = [[AVWeakReference alloc] initWithReferencedObject:item];
    if ([(NSArray *)[(AVPlayerItemIntegratedTimelineSnapshot *)[(AVPlayerItemIntegratedTimeline *)self currentSnapshot] segments] count])
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:@"AVPlayerIntegratedTimelineSnapshotsOutOfSyncReasonSegmentsChanged" forKey:@"AVPlayerIntegratedTimelineSnapshotsOutOfSyncReasonKey"];
      [(AVPlayerItemIntegratedTimeline *)self _issueCachedSeekIfNecessary];
      [(AVPlayerItemIntegratedTimeline *)self _ensureObserversHandleSnapshotSegmentsChanged];
      v9 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerIntegratedTimelineSnapshotsOutOfSyncNotification" object:self userInfo:dictionary];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }

    goto LABEL_10;
  }

  if (_copyFigPlaybackItem)
  {
LABEL_10:
    CFRelease(v6);
  }
}

- (void)_attachCoordinator:(OpaqueFigPlayerInterstitialCoordinator *)coordinator
{
  figTimeline = self->_figTimeline;
  if (figTimeline)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v6 = *MEMORY[0x1E6971E58];

      v5(figTimeline, v6, coordinator);
    }
  }
}

- (void)_attachInterstitialPlayer:(id)player
{
  if (player && !self->_weakReferenceToInterstitialPlayer)
  {
    self->_weakReferenceToInterstitialPlayer = [[AVWeakReference alloc] initWithReferencedObject:player];

    [(AVPlayerItemIntegratedTimeline *)self _addInterstitialPlayerListeners];
  }
}

- (AVPlayerItemIntegratedTimelineSnapshot)currentSnapshot
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = **&MEMORY[0x1E6960C70];
  v26 = v27;
  figTimeline = self->_figTimeline;
  if (figTimeline)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v4(figTimeline, &v28, &v27, &v26, &v30, &v29);
    }
  }

  FigSimpleMutexLock();
  if (self->_initialTime.timescale)
  {
    v5 = *(&self->_initialSeekID + 1);
    v26.epoch = *&self->_initialTime.flags;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    *&v26.value = v5;
    v6 = v28;
    v7 = [v28 countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if (v11)
          {
            [*(*(&v22 + 1) + 8 * i) timeMapping];
          }

          else
          {
            v19 = 0u;
            memset(&v20, 0, sizeof(v20));
            v17 = 0u;
            v18 = 0u;
          }

          range = v20;
          v16 = v26;
          if (CMTimeRangeContainsTime(&range, &v16))
          {
            v12 = v29;
            v29 = v11;
            if (v11)
            {
              CFRetain(v11);
            }

            if (v12)
            {
              CFRelease(v12);
            }

            goto LABEL_21;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v31 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_21:
  FigSimpleMutexUnlock();
  v13 = [AVPlayerItemIntegratedTimelineSnapshot alloc];
  range.start = v27;
  v16 = v26;
  v14 = [(AVPlayerItemIntegratedTimelineSnapshot *)v13 initWithSegments:v28 duration:&range currentTime:&v16 currentDate:v30 currentSegment:v29];
  if (v28)
  {
    CFRelease(v28);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v14;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  *retstr = **&MEMORY[0x1E6960C70];
  FigSimpleMutexLock();
  if (self->_initialTime.timescale)
  {
    *&retstr->var0 = *(&self->_initialSeekID + 1);
    retstr->var3 = *&self->_initialTime.flags;
  }

  result = FigSimpleMutexUnlock();
  if ((retstr->var2 & 1) == 0)
  {
    figTimeline = self->_figTimeline;
    if (figTimeline)
    {
      VTable = CMBaseObjectGetVTable();
      v8 = *(VTable + 16);
      result = (VTable + 16);
      v9 = *(v8 + 16);
      if (v9)
      {

        return v9(figTimeline, retstr);
      }
    }
  }

  return result;
}

- (NSDate)currentDate
{
  v6 = 0;
  figTimeline = self->_figTimeline;
  if (figTimeline && (v3 = *(*(CMBaseObjectGetVTable() + 16) + 24)) != 0)
  {
    v3(figTimeline, &v6);
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_currentSegmentTypeOfCurrentSnapshot
{
  currentSegment = [(AVPlayerItemIntegratedTimelineSnapshot *)[(AVPlayerItemIntegratedTimeline *)self currentSnapshot] currentSegment];

  return [(AVPlayerItemSegment *)currentSegment segmentType];
}

- (int)_createSeekID
{
  FigSimpleMutexLock();
  nextSeekIDToGenerate = self->_nextSeekIDToGenerate;
  self->_nextSeekIDToGenerate = FPSupport_IncrementSeekID();
  FigSimpleMutexUnlock();
  return nextSeekIDToGenerate;
}

- (void)_cancelPendingSeekAndRegisterSeekID:(int)d seekTime:(id *)time withCompletionHandler:(id)handler
{
  FigSimpleMutexLock();
  pendingSeekID = self->_pendingSeekID;
  seekCompletionHandler = self->_seekCompletionHandler;
  self->_pendingSeekID = d;
  var3 = time->var3;
  *&self->_pendingSeekTime.value = *&time->var0;
  self->_pendingSeekTime.epoch = var3;
  if (handler)
  {
    v12 = [handler copy];
  }

  else
  {
    v12 = 0;
  }

  self->_seekCompletionHandler = v12;
  FigSimpleMutexUnlock();
  if (pendingSeekID && seekCompletionHandler)
  {
    if (dword_1EAEFCDD0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    seekCompletionHandler[2](seekCompletionHandler, 0);
  }
}

- (void)_unregisterInvokeAndReleasePendingSeekCompletionHandlerForSeekID:(int)d finished:(BOOL)finished
{
  finishedCopy = finished;
  FigSimpleMutexLock();
  pendingSeekID = self->_pendingSeekID;
  if (pendingSeekID)
  {
    v8 = pendingSeekID == d;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    seekCompletionHandler = self->_seekCompletionHandler;
    self->_pendingSeekID = 0;
    v10 = MEMORY[0x1E6960C70];
    *&self->_pendingSeekTime.value = *MEMORY[0x1E6960C70];
    self->_pendingSeekTime.epoch = *(v10 + 16);
    self->_seekCompletionHandler = 0;
    FigSimpleMutexUnlock();
    if (seekCompletionHandler)
    {
      if (dword_1EAEFCDD0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      seekCompletionHandler[2](seekCompletionHandler, finishedCopy);
    }
  }

  else
  {

    FigSimpleMutexUnlock();
  }
}

- (void)_clearCachedSeekWithLock
{
  self->_initialSeekID = 0;
  v3 = MEMORY[0x1E6960C70];
  v4 = *MEMORY[0x1E6960C70];
  *(&self->_initialSeekID + 1) = *MEMORY[0x1E6960C70];
  v5 = *(v3 + 16);
  *&self->_initialTime.flags = v5;
  *&self->_initialToleranceAfter.value = v4;
  self->_initialToleranceAfter.epoch = v5;
  *&self->_initialToleranceBefore.value = v4;
  self->_initialToleranceBefore.epoch = v5;

  self->_initialDate = 0;
  initialOptions = self->_initialOptions;
  if (initialOptions)
  {
    CFRelease(initialOptions);
    self->_initialOptions = 0;
  }
}

- (void)_informDelegateOfSeekForTimeIfNecessary:(id *)necessary
{
  if (objc_loadWeak(&self->_seekDelegate))
  {
    objc_loadWeak(&self->_seekDelegate);
    if (objc_opt_respondsToSelector())
    {
      currentSnapshot = [(AVPlayerItemIntegratedTimeline *)self currentSnapshot];
      Weak = objc_loadWeak(&self->_seekDelegate);
      if (currentSnapshot)
      {
        [(AVPlayerItemIntegratedTimelineSnapshot *)currentSnapshot currentTime];
      }

      else
      {
        memset(v9, 0, sizeof(v9));
      }

      v7 = *&necessary->var0;
      var3 = necessary->var3;
      [Weak integratedTimeline:self willSeekToTime:&v7 currentTime:v9];
    }
  }
}

- (BOOL)_shouldDeferSeekToDelegate
{
  v18 = *MEMORY[0x1E69E9840];
  segments = [(AVPlayerItemIntegratedTimelineSnapshot *)[(AVPlayerItemIntegratedTimeline *)self currentSnapshot] segments];
  v4 = [(NSArray *)segments count];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSArray *)segments countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(segments);
        }

        interstitialEvent = [*(*(&v13 + 1) + 8 * i) interstitialEvent];
        if (interstitialEvent && [interstitialEvent timelineOccupancy])
        {
          v10 = 1;
          goto LABEL_12;
        }
      }

      v6 = [(NSArray *)segments countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:
  Weak = objc_loadWeak(&self->_seekDelegate);
  if (Weak)
  {
    objc_loadWeak(&self->_seekDelegate);
    LOBYTE(Weak) = v10 & (v4 > 1) & objc_opt_respondsToSelector();
  }

  return Weak;
}

- (int)_deferOrIssueSeekOnFigTimelineForID:(int)d time:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after options:(__CFDictionary *)options
{
  v11 = *&d;
  v28 = *MEMORY[0x1E69E9840];
  if ([(AVPlayerItemIntegratedTimeline *)self _shouldDeferSeekToDelegate])
  {
    if (dword_1EAEFCDD0)
    {
      LODWORD(v23) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    Weak = objc_loadWeak(&self->_seekDelegate);
    time = *time;
    v25 = *&before->var0;
    var3 = before->var3;
    v23 = *&after->var0;
    v24 = after->var3;
    [Weak integratedTimeline:self didRequestSeekToTime:&time seekID:v11 toleranceBefore:&v25 toleranceAfter:&v23];
    return 0;
  }

  else
  {
    time = *time;
    [(AVPlayerItemIntegratedTimeline *)self _informDelegateOfSeekForTimeIfNecessary:&time];
    figTimeline = self->_figTimeline;
    *&type.value = *&time->var0;
    type.epoch = time->var3;
    v20 = *&before->var0;
    v21 = before->var3;
    v18 = *&after->var0;
    v19 = after->var3;
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v15)
    {
      time = type;
      v25 = v20;
      var3 = v21;
      v23 = v18;
      v24 = v19;
      return v15(figTimeline, v11, &time, &v25, &v23, options);
    }

    else
    {
      return -12782;
    }
  }
}

- (void)_issueCachedSeekIfNecessary
{
  v21 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  initialSeekID = self->_initialSeekID;
  v19 = *(&self->_initialSeekID + 1);
  timescale = self->_initialTime.timescale;
  value_high = HIDWORD(self->_initialTime.value);
  v5 = *&self->_initialTime.flags;
  v6 = self->_initialDate;
  initialToleranceBefore = self->_initialToleranceBefore;
  v14 = *&self->_initialToleranceAfter.value;
  initialOptions = self->_initialOptions;
  epoch = self->_initialToleranceAfter.epoch;
  if (initialOptions)
  {
    v8 = CFRetain(initialOptions);
  }

  else
  {
    v8 = 0;
  }

  [(AVPlayerItemIntegratedTimeline *)self _clearCachedSeekWithLock];
  FigSimpleMutexUnlock();
  if (!initialSeekID)
  {
    goto LABEL_16;
  }

  if ([(AVPlayerItemIntegratedTimeline *)self _shouldIssueCachedSeek:v8])
  {
    if ((timescale & 1) == 0 || v6)
    {
      if (!v6)
      {
        goto LABEL_16;
      }

      [(AVPlayerItemIntegratedTimeline *)self _resetPlaybackCoordinatorTimelineExpectations:v8];
      figTimeline = self->_figTimeline;
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v10)
      {
        if (!v10(figTimeline, initialSeekID, v6, v8))
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      [(AVPlayerItemIntegratedTimeline *)self _resetPlaybackCoordinatorTimelineExpectations:v8];
      time.value = v19;
      time.timescale = value_high;
      time.flags = timescale;
      time.epoch = v5;
      v17 = initialToleranceBefore;
      v12 = v14;
      v13 = epoch;
      if (![(AVPlayerItemIntegratedTimeline *)self _deferOrIssueSeekOnFigTimelineForID:initialSeekID time:&time toleranceBefore:&v17 toleranceAfter:&v12 options:v8])
      {
        goto LABEL_16;
      }
    }

    [(AVPlayerItemIntegratedTimeline *)self _unregisterInvokeAndReleasePendingSeekCompletionHandlerForSeekID:initialSeekID finished:0];
    goto LABEL_16;
  }

  if (dword_1EAEFCDD0)
  {
    LODWORD(v12) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_16:

  if (v8)
  {
    CFRelease(v8);
  }
}

- (void)_setInitialSeekState:(int)state time:(id *)time date:(id)date toleranceBefore:(id *)before toleranceAfter:(id *)after options:(__CFDictionary *)options
{
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, options);
  FigCFDictionarySetBoolean();
  FigSimpleMutexLock();
  self->_initialSeekID = state;
  var3 = time->var3;
  *(&self->_initialSeekID + 1) = *&time->var0;
  *&self->_initialTime.flags = var3;
  v16 = *&after->var0;
  self->_initialToleranceAfter.epoch = after->var3;
  *&self->_initialToleranceAfter.value = v16;
  v17 = *&before->var0;
  self->_initialToleranceBefore.epoch = before->var3;
  *&self->_initialToleranceBefore.value = v17;
  self->_initialDate = date;
  self->_initialOptions = MutableCopy;

  FigSimpleMutexUnlock();
}

- (void)_cancelPendingSeeks
{
  FigSimpleMutexLock();
  pendingSeekID = self->_pendingSeekID;
  FigSimpleMutexUnlock();

  [(AVPlayerItemIntegratedTimeline *)self _unregisterInvokeAndReleasePendingSeekCompletionHandlerForSeekID:pendingSeekID finished:0];
}

- (void)_seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after options:(__CFDictionary *)options completionHandler:(id)handler
{
  _createSeekID = [(AVPlayerItemIntegratedTimeline *)self _createSeekID];
  v14 = [(NSArray *)[(AVPlayerItemIntegratedTimelineSnapshot *)[(AVPlayerItemIntegratedTimeline *)self currentSnapshot] segments] count];
  v19 = *time;
  [(AVPlayerItemIntegratedTimeline *)self _cancelPendingSeekAndRegisterSeekID:_createSeekID seekTime:&v19 withCompletionHandler:handler];
  if (self->_figTimeline && v14)
  {
    [(AVPlayerItemIntegratedTimeline *)self _resetPlaybackCoordinatorTimelineExpectations:options];
    v19 = *time;
    v17 = *&before->var0;
    var3 = before->var3;
    v15 = *&after->var0;
    v16 = after->var3;
    if ([(AVPlayerItemIntegratedTimeline *)self _deferOrIssueSeekOnFigTimelineForID:_createSeekID time:&v19 toleranceBefore:&v17 toleranceAfter:&v15 options:options])
    {
      [(AVPlayerItemIntegratedTimeline *)self _unregisterInvokeAndReleasePendingSeekCompletionHandlerForSeekID:_createSeekID finished:0];
    }
  }

  else
  {
    v19 = *time;
    v17 = *&before->var0;
    var3 = before->var3;
    v15 = *&after->var0;
    v16 = after->var3;
    [(AVPlayerItemIntegratedTimeline *)self _setInitialSeekState:_createSeekID time:&v19 date:0 toleranceBefore:&v17 toleranceAfter:&v15 options:options];
  }
}

- (void)seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16[0] = *MEMORY[0x1E6972C98];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  v16[1] = *MEMORY[0x1E6972C90];
  v17[0] = v11;
  v17[1] = &unk_1F0AD3538;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v15 = *time;
  v14 = *before;
  v13 = *after;
  [(AVPlayerItemIntegratedTimeline *)self _seekToTime:&v15 toleranceBefore:&v14 toleranceAfter:&v13 options:v12 completionHandler:handler];
}

- (void)_seekToDate:(id)date options:(__CFDictionary *)options completionHandler:(id)handler
{
  _createSeekID = [(AVPlayerItemIntegratedTimeline *)self _createSeekID];
  v10 = [(NSArray *)[(AVPlayerItemIntegratedTimelineSnapshot *)[(AVPlayerItemIntegratedTimeline *)self currentSnapshot] segments] count];
  v14 = *MEMORY[0x1E6960C70];
  v19 = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  v20 = v11;
  [(AVPlayerItemIntegratedTimeline *)self _cancelPendingSeekAndRegisterSeekID:_createSeekID seekTime:&v19 withCompletionHandler:handler];
  if (self->_figTimeline && v10)
  {
    [(AVPlayerItemIntegratedTimeline *)self _resetPlaybackCoordinatorTimelineExpectations:options];
    figTimeline = self->_figTimeline;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v13 || v13(figTimeline, _createSeekID, date, options))
    {
      [(AVPlayerItemIntegratedTimeline *)self _unregisterInvokeAndReleasePendingSeekCompletionHandlerForSeekID:_createSeekID finished:0];
    }
  }

  else
  {
    v19 = v14;
    v20 = v11;
    v17 = v14;
    v18 = v11;
    v15 = v14;
    v16 = v11;
    [(AVPlayerItemIntegratedTimeline *)self _setInitialSeekState:_createSeekID time:&v19 date:date toleranceBefore:&v17 toleranceAfter:&v15 options:options];
  }
}

- (void)seekToDate:(id)date completionHandler:(id)handler
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = *MEMORY[0x1E6972C98];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  v8[1] = *MEMORY[0x1E6972C90];
  v9[0] = v7;
  v9[1] = &unk_1F0AD3538;
  -[AVPlayerItemIntegratedTimeline _seekToDate:options:completionHandler:](self, "_seekToDate:options:completionHandler:", date, [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2], handler);
}

- (void)_resetPlaybackCoordinatorTimelineExpectations:(__CFDictionary *)expectations
{
  v4 = [-[AVWeakReference referencedObject](self->_weakReferenceToPrimaryItem "referencedObject")];
  [v4 _playbackCoordinatorWithoutTriggeringFullSetup];
  [(NSArray *)[(AVPlayerItemIntegratedTimelineSnapshot *)[(AVPlayerItemIntegratedTimeline *)self currentSnapshot] segments] count];
  FigCFDictionaryGetInt32IfPresent();
}

- (void)_addListener
{
  v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v3 addListenerWithWeakReference:self->_weakReference callback:avitemintegratedtimeline_fpNotificationCallback name:*MEMORY[0x1E6971E88] object:self->_figTimeline flags:0];
  [v3 addListenerWithWeakReference:self->_weakReference callback:avitemintegratedtimeline_fpNotificationCallback name:*MEMORY[0x1E6971E78] object:self->_figTimeline flags:0];
  v4 = *MEMORY[0x1E6971E80];
  figTimeline = self->_figTimeline;
  weakReference = self->_weakReference;

  [v3 addListenerWithWeakReference:weakReference callback:avitemintegratedtimeline_fpNotificationCallback name:v4 object:figTimeline flags:0];
}

- (void)_addInterstitialPlayerListeners
{
  v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_weakReference;
  referencedObject = [(AVWeakReference *)self->_weakReferenceToInterstitialPlayer referencedObject];

  [v3 addListenerWithWeakReference:weakReference callback:avitemintegratedtimeline_interstitialPlayer_fpNotificationCallback name:@"AVPlayerCurrentItemDidChangeNotification" object:referencedObject flags:0];
}

- (void)_removeInterstitialPlayerListeners
{
  v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_weakReference;
  referencedObject = [(AVWeakReference *)self->_weakReferenceToInterstitialPlayer referencedObject];

  [v3 removeListenerWithWeakReference:weakReference callback:avitemintegratedtimeline_interstitialPlayer_fpNotificationCallback name:@"AVPlayerCurrentItemDidChangeNotification" object:referencedObject];
}

- (void)_removeListeners
{
  v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  if (self->_figTimeline)
  {
    v4 = v3;
    [v3 removeListenerWithWeakReference:self->_weakReference callback:avitemintegratedtimeline_fpNotificationCallback name:*MEMORY[0x1E6971E88] object:?];
    [v4 removeListenerWithWeakReference:self->_weakReference callback:avitemintegratedtimeline_fpNotificationCallback name:*MEMORY[0x1E6971E78] object:self->_figTimeline];
    v5 = *MEMORY[0x1E6971E80];
    figTimeline = self->_figTimeline;
    weakReference = self->_weakReference;

    [v4 removeListenerWithWeakReference:weakReference callback:avitemintegratedtimeline_fpNotificationCallback name:v5 object:figTimeline];
  }
}

- (id)_currentItemForSegmentType:(int64_t)type
{
  if (type)
  {
    _interstitialPlayer = [(AVPlayerItemIntegratedTimeline *)self _interstitialPlayer];

    return [_interstitialPlayer currentItem];
  }

  else
  {

    return [(AVPlayerItemIntegratedTimeline *)self _primaryItem];
  }
}

- (id)_currentItemForCurrentSegment
{
  _currentSegmentTypeOfCurrentSnapshot = [(AVPlayerItemIntegratedTimeline *)self _currentSegmentTypeOfCurrentSnapshot];

  return [(AVPlayerItemIntegratedTimeline *)self _currentItemForSegmentType:_currentSegmentTypeOfCurrentSnapshot];
}

- (id)addPeriodicTimeObserverForInterval:(id *)interval queue:(id)queue usingBlock:(id)block
{
  v9 = [AVPlayerItemIntegratedTimelinePeriodicObserver alloc];
  v14 = *interval;
  v10 = [(AVPlayerItemIntegratedTimelinePeriodicObserver *)v9 initWithInterval:&v14 queue:queue block:block integratedTimeline:self];
  [(AVPlayerItemIntegratedTimelinePeriodicObserver *)v10 rescheduleObserverWithSnapshot:[(AVPlayerItemIntegratedTimeline *)self currentSnapshot] itemToSchedule:[(AVPlayerItemIntegratedTimeline *)self _currentItemForCurrentSegment]];
  stateQueue = self->_stateQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __126__AVPlayerItemIntegratedTimeline_AVPlayerItemIntegratedTimelineObserver__addPeriodicTimeObserverForInterval_queue_usingBlock___block_invoke;
  v13[3] = &unk_1E7460DF0;
  v13[4] = self;
  v13[5] = v10;
  dispatch_sync(stateQueue, v13);
  return v10;
}

- (id)addBoundaryTimeObserverForSegment:(id)segment offsetsIntoSegment:(id)intoSegment queue:(id)queue usingBlock:(id)block
{
  v8 = [[AVPlayerItemIntegratedTimelineBoundaryObserver alloc] initWithSegment:segment offsetTimes:intoSegment queue:queue block:block];
  -[AVPlayerItemIntegratedTimelineBoundaryObserver rescheduleObserverWithSnapshot:itemToSchedule:](v8, "rescheduleObserverWithSnapshot:itemToSchedule:", -[AVPlayerItemIntegratedTimeline currentSnapshot](self, "currentSnapshot"), -[AVPlayerItemIntegratedTimeline _currentItemForSegmentType:](self, "_currentItemForSegmentType:", [segment segmentType]));
  stateQueue = self->_stateQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __144__AVPlayerItemIntegratedTimeline_AVPlayerItemIntegratedTimelineObserver__addBoundaryTimeObserverForSegment_offsetsIntoSegment_queue_usingBlock___block_invoke;
  v11[3] = &unk_1E7460DF0;
  v11[4] = self;
  v11[5] = v8;
  dispatch_sync(stateQueue, v11);
  return v8;
}

- (void)removeTimeObserver:(id)observer
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __93__AVPlayerItemIntegratedTimeline_AVPlayerItemIntegratedTimelineObserver__removeTimeObserver___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = observer;
  dispatch_sync(stateQueue, v4);
}

- (void)_ensureObserversHandleSnapshotSegmentsChanged
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__AVPlayerItemIntegratedTimeline_AVPlayerItemIntegratedTimelineObserver___ensureObserversHandleSnapshotSegmentsChanged__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

@end