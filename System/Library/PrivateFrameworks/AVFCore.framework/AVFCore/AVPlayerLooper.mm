@interface AVPlayerLooper
+ (AVPlayerLooper)playerLooperWithPlayer:(AVQueuePlayer *)player templateItem:(AVPlayerItem *)itemToLoop;
+ (AVPlayerLooper)playerLooperWithPlayer:(AVQueuePlayer *)player templateItem:(AVPlayerItem *)itemToLoop timeRange:(CMTimeRange *)loopRange;
- (AVPlayerLooper)init;
- (AVPlayerLooper)initWithPlayer:(AVQueuePlayer *)player templateItem:(AVPlayerItem *)itemToLoop timeRange:(CMTimeRange *)loopRange;
- (AVPlayerLooper)initWithPlayer:(AVQueuePlayer *)player templateItem:(AVPlayerItem *)itemToLoop timeRange:(CMTimeRange *)loopRange existingItemsOrdering:(AVPlayerLooperItemOrdering)itemOrdering;
- (AVPlayerLooperStatus)status;
- (BOOL)_isWaitingForLastCopyToFinishSet;
- (BOOL)_setupLoopingReturningError:(id *)error;
- (NSArray)loopingPlayerItems;
- (NSError)error;
- (NSInteger)loopCount;
- (int)_calculateNumberOfCopiesNeeded;
- (void)_changeStatusToFailedWithError:(id)error;
- (void)_cleanupAfterPlayingLastLoopingCopy;
- (void)_configureLoopingItem:(id)item;
- (void)_turnOffLooping;
- (void)dealloc;
- (void)disableLooping;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation AVPlayerLooper

+ (AVPlayerLooper)playerLooperWithPlayer:(AVQueuePlayer *)player templateItem:(AVPlayerItem *)itemToLoop timeRange:(CMTimeRange *)loopRange
{
  v8 = [self alloc];
  v9 = *&loopRange->start.epoch;
  v11[0] = *&loopRange->start.value;
  v11[1] = v9;
  v11[2] = *&loopRange->duration.timescale;
  return [v8 initWithPlayer:player templateItem:itemToLoop timeRange:v11];
}

+ (AVPlayerLooper)playerLooperWithPlayer:(AVQueuePlayer *)player templateItem:(AVPlayerItem *)itemToLoop
{
  v6 = [self alloc];
  v7 = *(MEMORY[0x1E6960C98] + 16);
  v9[0] = *MEMORY[0x1E6960C98];
  v9[1] = v7;
  v9[2] = *(MEMORY[0x1E6960C98] + 32);
  return [v6 initWithPlayer:player templateItem:itemToLoop timeRange:v9];
}

- (AVPlayerLooper)init
{
  v2 = *(MEMORY[0x1E6960C98] + 16);
  v4[0] = *MEMORY[0x1E6960C98];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E6960C98] + 32);
  return [(AVPlayerLooper *)self initWithPlayer:0 templateItem:0 timeRange:v4];
}

- (AVPlayerLooper)initWithPlayer:(AVQueuePlayer *)player templateItem:(AVPlayerItem *)itemToLoop timeRange:(CMTimeRange *)loopRange existingItemsOrdering:(AVPlayerLooperItemOrdering)itemOrdering
{
  v61.receiver = self;
  v61.super_class = AVPlayerLooper;
  v62 = [[AVTelemetryInterval alloc] initAndStartWith:75];
  v11 = [(AVPlayerLooper *)&v61 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_20;
  }

  if (!player)
  {
    v25 = v11;
    v26 = MEMORY[0x1E695DF30];
    v32 = AVMethodExceptionReasonWithObjectAndSelector(v12, a2, @"invalid parameter not satisfying: %s", v27, v28, v29, v30, v31, "player != nil");
    goto LABEL_23;
  }

  if (!itemToLoop)
  {
    v33 = v11;
    v26 = MEMORY[0x1E695DF30];
    v32 = AVMethodExceptionReasonWithObjectAndSelector(v12, a2, @"invalid parameter not satisfying: %s", v34, v35, v36, v37, v38, "itemToLoop != nil");
    goto LABEL_23;
  }

  if ((loopRange->start.flags & 1) != 0 && (loopRange->duration.flags & 1) != 0 && !loopRange->duration.epoch && (loopRange->duration.value & 0x8000000000000000) == 0)
  {
    time1 = loopRange->duration;
    v57 = *MEMORY[0x1E6960CC0];
    *&time2.value = *MEMORY[0x1E6960CC0];
    v13 = *(MEMORY[0x1E6960CC0] + 16);
    time2.epoch = v13;
    if (CMTimeCompare(&time1, &time2))
    {
      flags = loopRange->start.flags;
      if (flags & 1) != 0 && (v15 = loopRange->duration.flags, (v15) && !loopRange->duration.epoch && (loopRange->duration.value & 0x8000000000000000) == 0 && ((v15 | flags) & 0x10) != 0)
      {
        v51 = v12;
        v26 = MEMORY[0x1E695DF30];
        v32 = AVMethodExceptionReasonWithObjectAndSelector(v12, a2, @"invalid parameter not satisfying: %s", v52, v53, v54, v55, v56, "! CMTIMERANGE_IS_INDEFINITE(loopRange)");
      }

      else
      {
        time1 = loopRange->start;
        *&time2.value = v57;
        time2.epoch = v13;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v45 = v12;
        v26 = MEMORY[0x1E695DF30];
        v32 = AVMethodExceptionReasonWithObjectAndSelector(v12, a2, @"invalid parameter not satisfying: %s", v46, v47, v48, v49, v50, "CMTIME_COMPARE_INLINE(loopRange.start, >=, kCMTimeZero)");
      }
    }

    else
    {
      v39 = v12;
      v26 = MEMORY[0x1E695DF30];
      v32 = AVMethodExceptionReasonWithObjectAndSelector(v12, a2, @"invalid parameter not satisfying: %s", v40, v41, v42, v43, v44, "! CMTIMERANGE_IS_EMPTY(loopRange)");
    }

LABEL_23:
    objc_exception_throw([v26 exceptionWithName:*MEMORY[0x1E695D940] reason:v32 userInfo:0]);
  }

LABEL_15:
  v16 = objc_alloc_init(AVPlayerLooperInternal);
  v12->_looper = v16;
  if (v16 && (v12->_looper->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avplayerlooper.ivars")) != 0 && (v12->_looper->loopingItemCopies = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0], v17 = v12->_looper, v17->loopingItemCopies))
  {
    v17->status = 0;
    v12->_looper->loopCount = 0;
    looper = v12->_looper;
    v19 = MEMORY[0x1E6960CC0];
    *&looper->forwardPlaybackStartTime.value = *MEMORY[0x1E6960CC0];
    looper->forwardPlaybackStartTime.epoch = *(v19 + 16);
    v12->_looper->loopingPlayer = player;
    v12->_looper->loopingItem = itemToLoop;
    v20 = v12->_looper;
    v21 = *&loopRange->start.value;
    v22 = *&loopRange->duration.timescale;
    *&v20->loopRange.start.epoch = *&loopRange->start.epoch;
    *&v20->loopRange.duration.timescale = v22;
    *&v20->loopRange.start.value = v21;
    v12->_looper->weakReference = [[AVWeakReference alloc] initWithReferencedObject:v12];
    v12->_looper->existingItemsPrecede = itemOrdering == AVPlayerLooperItemOrderingLoopingItemsPrecedeExistingItems;
    asset = [(AVPlayerItem *)v12->_looper->loopingItem asset];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __78__AVPlayerLooper_initWithPlayer_templateItem_timeRange_existingItemsOrdering___block_invoke;
    v58[3] = &unk_1E7460C00;
    v58[4] = v12;
    [(AVAsset *)asset loadValuesAsynchronouslyForKeys:&unk_1F0AD3610 completionHandler:v58];
  }

  else
  {

    v12 = 0;
  }

LABEL_20:
  AVTelemetryIntervalEnd(&v62);
  return v12;
}

void __78__AVPlayerLooper_initWithPlayer_templateItem_timeRange_existingItemsOrdering___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 8) dispatchQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__AVPlayerLooper_initWithPlayer_templateItem_timeRange_existingItemsOrdering___block_invoke_2;
  v3[3] = &unk_1E7460C00;
  v3[4] = *(a1 + 32);
  AVSerializeOnQueueAsyncIfNecessary(v2, v3);
}

uint64_t __78__AVPlayerLooper_initWithPlayer_templateItem_timeRange_existingItemsOrdering___block_invoke_2(uint64_t a1)
{
  v6 = 0;
  if ([objc_msgSend(*(*(*(a1 + 32) + 8) + 16) "asset")] == 2)
  {
    v5 = 0;
    result = [*(a1 + 32) _setupLoopingReturningError:&v5];
    if (result)
    {
      return result;
    }

    v3 = *(a1 + 32);
    v4 = v5;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = v6;
  }

  return [v3 _changeStatusToFailedWithError:v4];
}

- (AVPlayerLooper)initWithPlayer:(AVQueuePlayer *)player templateItem:(AVPlayerItem *)itemToLoop timeRange:(CMTimeRange *)loopRange
{
  v5 = *&loopRange->start.epoch;
  v7[0] = *&loopRange->start.value;
  v7[1] = v5;
  v7[2] = *&loopRange->duration.timescale;
  return [(AVPlayerLooper *)self initWithPlayer:player templateItem:itemToLoop timeRange:v7 existingItemsOrdering:0];
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  looper = self->_looper;
  if (looper)
  {

    v4 = self->_looper;
    if (v4->listeningForItemFailedToPlayToEndTime)
    {
      v5 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      loopingItemCopies = self->_looper->loopingItemCopies;
      v7 = [(NSMutableArray *)loopingItemCopies countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(loopingItemCopies);
            }

            [v5 removeListenerWithWeakReference:self->_looper->weakReference callback:_avplLoopingItemFailedToPlayToEndTimeNotificationHandler name:@"AVPlayerItemFailedToPlayToEndTimeNotification" object:*(*(&v18 + 1) + 8 * i)];
          }

          v8 = [(NSMutableArray *)loopingItemCopies countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }

      self->_looper->listeningForItemFailedToPlayToEndTime = 0;
      v4 = self->_looper;
    }

    loopingPlayer = v4->loopingPlayer;
    if (loopingPlayer)
    {
      v12 = v4->loopingItemCopies;
      playerOriginalActionAtItemEnd = v4->playerOriginalActionAtItemEnd;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __25__AVPlayerLooper_dealloc__block_invoke;
      block[3] = &unk_1E7460FF0;
      block[4] = v12;
      block[5] = loopingPlayer;
      block[6] = playerOriginalActionAtItemEnd;
      if (dyld_program_sdk_at_least() & 1) != 0 || (dyld_program_sdk_at_least() & 1) != 0 || (dyld_program_sdk_at_least() & 1) != 0 || (dyld_program_sdk_at_least())
      {
        dispatch_async([(AVPlayer *)loopingPlayer dispatchQueue], block);
      }

      else
      {
        AVSerializeOnQueueAsyncIfNecessary([(AVPlayer *)loopingPlayer dispatchQueue], block);
      }
    }

    v14 = self->_looper;
    ivarAccessQueue = v14->ivarAccessQueue;
    if (ivarAccessQueue)
    {
      dispatch_release(ivarAccessQueue);
      self->_looper->ivarAccessQueue = 0;
      v14 = self->_looper;
    }
  }

  v16.receiver = self;
  v16.super_class = AVPlayerLooper;
  [(AVPlayerLooper *)&v16 dealloc];
}

uint64_t __25__AVPlayerLooper_dealloc__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) removeItem:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  if (*(a1 + 48))
  {
    return [*(a1 + 40) setActionAtItemEnd:?];
  }

  return result;
}

- (AVPlayerLooperStatus)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_looper->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__AVPlayerLooper_status__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  ivarAccessQueue = self->_looper->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__AVPlayerLooper_error__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __23__AVPlayerLooper_error__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 152);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_changeStatusToFailedWithError:(id)error
{
  [(AVPlayerLooper *)self willChangeValueForKey:@"error"];
  [(AVPlayerLooper *)self willChangeValueForKey:@"status"];
  ivarAccessQueue = self->_looper->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AVPlayerLooper__changeStatusToFailedWithError___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = self;
  v6[5] = error;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerLooper *)self didChangeValueForKey:@"error"];
  [(AVPlayerLooper *)self didChangeValueForKey:@"status"];
}

uint64_t __49__AVPlayerLooper__changeStatusToFailedWithError___block_invoke(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 144) != 2)
  {
    v1 = result;
    result = [*(result + 40) copy];
    *(*(*(v1 + 32) + 8) + 152) = result;
    *(*(*(v1 + 32) + 8) + 144) = 2;
  }

  return result;
}

- (void)disableLooping
{
  v3 = [[AVTelemetryInterval alloc] initAndStartWith:76];
  [(AVPlayerLooper *)self _turnOffLooping];
  AVTelemetryIntervalEnd(&v3);
}

- (NSInteger)loopCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_looper->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__AVPlayerLooper_loopCount__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSArray)loopingPlayerItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  ivarAccessQueue = self->_looper->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AVPlayerLooper_loopingPlayerItems__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __36__AVPlayerLooper_loopingPlayerItems__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x1E695DEC8] arrayWithArray:*(*(*(a1 + 32) + 8) + 24)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_configureLoopingItem:(id)item
{
  looper = self->_looper;
  if ((looper->loopRange.start.flags & 1) != 0 && (looper->loopRange.duration.flags & 1) != 0 && !looper->loopRange.duration.epoch && (looper->loopRange.duration.value & 0x8000000000000000) == 0)
  {
    *&range.start.value = *&looper->loopRange.start.value;
    range.start.epoch = looper->loopRange.start.epoch;
    [item setReversePlaybackEndTime:&range];
    v6 = self->_looper;
    v7 = *&v6->loopRange.start.epoch;
    *&range.start.value = *&v6->loopRange.start.value;
    *&range.start.epoch = v7;
    *&range.duration.timescale = *&v6->loopRange.duration.timescale;
    CMTimeRangeGetEnd(&v10, &range);
    [item setForwardPlaybackEndTime:&v10];
    looper = self->_looper;
  }

  *&range.start.value = *&looper->forwardPlaybackStartTime.value;
  range.start.epoch = looper->forwardPlaybackStartTime.epoch;
  v10 = **&MEMORY[0x1E6960CC0];
  v8 = v10;
  [item seekToTime:&range toleranceBefore:&v10 toleranceAfter:&v8 completionHandler:0];
}

- (int)_calculateNumberOfCopiesNeeded
{
  looper = self->_looper;
  v4 = 10.0;
  if ((looper->loopRange.start.flags & 1) != 0 && (looper->loopRange.duration.flags & 1) != 0 && !looper->loopRange.duration.epoch && (looper->loopRange.duration.value & 0x8000000000000000) == 0)
  {
    time = looper->loopRange.duration;
    v4 = fmin(CMTimeGetSeconds(&time), 10.0);
    looper = self->_looper;
  }

  loopingItem = looper->loopingItem;
  if (loopingItem)
  {
    [(AVPlayerItem *)loopingItem duration];
    if ((v9 & 0x1D) == 1)
    {
      v6 = self->_looper->loopingItem;
      if (v6)
      {
        [(AVPlayerItem *)v6 duration];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      Seconds = CMTimeGetSeconds(&time);
      if (Seconds < v4)
      {
        v4 = Seconds;
      }
    }
  }

  if (v4 * 3.0 >= 10.0)
  {
    return 3;
  }

  if (v4 <= 0.0)
  {
    return 0;
  }

  if (v4 <= 0.1)
  {
    return 100;
  }

  result = vcvtpd_s64_f64(10.0 / v4);
  if (result <= 2)
  {
    return 0;
  }

  return result;
}

- (BOOL)_setupLoopingReturningError:(id *)error
{
  v72[1] = *MEMORY[0x1E69E9840];
  if ([(AVPlayerLooper *)self status])
  {
    goto LABEL_2;
  }

  looper = self->_looper;
  if ((looper->loopRange.start.flags & 1) != 0 && (looper->loopRange.duration.flags & 1) != 0 && !looper->loopRange.duration.epoch && (looper->loopRange.duration.value & 0x8000000000000000) == 0)
  {
    loopingItem = looper->loopingItem;
    if (loopingItem)
    {
      [(AVPlayerItem *)loopingItem duration];
      if ((BYTE4(v63) & 0x1D) == 1)
      {
        v43 = self->_looper;
        v44 = v43->loopingItem;
        if (v44)
        {
          [(AVPlayerItem *)v44 duration];
        }

        else
        {
          memset(&time2, 0, 24);
        }

        time1 = v43->loopRange.start;
        if ((CMTimeCompare(&time1, &time2.start) & 0x80000000) == 0)
        {
          if (error)
          {
            v71 = *MEMORY[0x1E695E618];
            v72[0] = @"Loop range must start within [0, item duration]";
            v38 = MEMORY[0x1E695DF20];
            v39 = v72;
            v40 = &v71;
            goto LABEL_45;
          }

          goto LABEL_62;
        }

        v45 = self->_looper;
        v46 = *&v45->loopRange.start.epoch;
        *&time2.start.value = *&v45->loopRange.start.value;
        *&time2.start.epoch = v46;
        *&time2.duration.timescale = *&v45->loopRange.duration.timescale;
        CMTimeRangeGetEnd(&time1, &time2);
        v47 = self->_looper->loopingItem;
        if (v47)
        {
          [(AVPlayerItem *)v47 duration];
        }

        else
        {
          memset(&time2, 0, 24);
        }

        if (CMTimeCompare(&time1, &time2.start) >= 1)
        {
          if (error)
          {
            v69 = *MEMORY[0x1E695E618];
            v70 = @"Loop range must be within [0, item duration]";
            v38 = MEMORY[0x1E695DF20];
            v39 = &v70;
            v40 = &v69;
            goto LABEL_45;
          }

          goto LABEL_62;
        }
      }
    }

    else
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
    }
  }

  _calculateNumberOfCopiesNeeded = [(AVPlayerLooper *)self _calculateNumberOfCopiesNeeded];
  if (!_calculateNumberOfCopiesNeeded)
  {
    if (error)
    {
      v67 = *MEMORY[0x1E695E618];
      v68 = @"Template AVPlayerItem's duration must not be 0";
      v38 = MEMORY[0x1E695DF20];
      v39 = &v68;
      v40 = &v67;
LABEL_45:
      v41 = AVLocalizedError(@"AVFoundationErrorDomain", -11838, [v38 dictionaryWithObjects:v39 forKeys:v40 count:1]);
      LOBYTE(v5) = 0;
      *error = v41;
      return v5;
    }

LABEL_62:
    LOBYTE(v5) = 0;
    return v5;
  }

  v8 = _calculateNumberOfCopiesNeeded;
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:_calculateNumberOfCopiesNeeded];
  if (v8 < 1)
  {
LABEL_12:
    [(AVPlayerLooper *)self willChangeValueForKey:@"loopingPlayerItems"];
    ivarAccessQueue = self->_looper->ivarAccessQueue;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __46__AVPlayerLooper__setupLoopingReturningError___block_invoke;
    v59[3] = &unk_1E7460DF0;
    v59[4] = self;
    v59[5] = v9;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v59);
    [(AVPlayerLooper *)self didChangeValueForKey:@"loopingPlayerItems"];
    [(AVPlayer *)self->_looper->loopingPlayer rate];
    v14 = v13;
    if (v13 != 0.0)
    {
      [(AVPlayer *)self->_looper->loopingPlayer setRate:0.0];
    }

    v15 = self->_looper;
    if ((v15->loopRange.start.flags & 1) != 0 && (v15->loopRange.duration.flags & 1) != 0 && !v15->loopRange.duration.epoch && (v15->loopRange.duration.value & 0x8000000000000000) == 0)
    {
      *&v15->forwardPlaybackStartTime.value = *&v15->loopRange.start.value;
      v15->forwardPlaybackStartTime.epoch = v15->loopRange.start.epoch;
      v15 = self->_looper;
    }

    currentItem = [(AVPlayer *)v15->loopingPlayer currentItem];
    v17 = currentItem;
    if (currentItem)
    {
      v18 = currentItem;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    loopingItemCopies = self->_looper->loopingItemCopies;
    v20 = [(NSMutableArray *)loopingItemCopies countByEnumeratingWithState:&v55 objects:v66 count:16];
    v21 = v17;
    if (v20)
    {
      v22 = v20;
      v23 = *v56;
      v21 = v17;
      do
      {
        v24 = 0;
        v25 = v21;
        do
        {
          if (*v56 != v23)
          {
            objc_enumerationMutation(loopingItemCopies);
          }

          v21 = *(*(&v55 + 1) + 8 * v24);
          [(AVPlayerLooper *)self _configureLoopingItem:v21];
          [(AVQueuePlayer *)self->_looper->loopingPlayer insertItem:v21 afterItem:v25];
          ++v24;
          v25 = v21;
        }

        while (v22 != v24);
        v22 = [(NSMutableArray *)loopingItemCopies countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v22);
    }

    if (v17)
    {
      v26 = self->_looper;
      if (v26->existingItemsPrecede)
      {
        [(AVQueuePlayer *)v26->loopingPlayer removeItem:v17];
        [(AVQueuePlayer *)self->_looper->loopingPlayer insertItem:v17 afterItem:v21];
      }
    }

    self->_looper->lastEnqueuedLoopingItem = v21;
    self->_looper->playerOriginalActionAtItemEnd = [(AVPlayer *)self->_looper->loopingPlayer actionAtItemEnd];
    v27 = self->_looper;
    if (v27->playerOriginalActionAtItemEnd)
    {
      [(AVQueuePlayer *)v27->loopingPlayer setActionAtItemEnd:0];
    }

    [(AVPlayerLooper *)self willChangeValueForKey:@"status"];
    v28 = self->_looper->ivarAccessQueue;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __46__AVPlayerLooper__setupLoopingReturningError___block_invoke_2;
    v54[3] = &unk_1E7460C00;
    v54[4] = self;
    av_readwrite_dispatch_queue_write(v28, v54);
    [(AVPlayerLooper *)self didChangeValueForKey:@"status"];
    v29 = +[AVKVODispatcher sharedKVODispatcher];
    self->_looper->playerCurrentItemKVOInvoker = [v29 startObservingObject:self->_looper->loopingPlayer weakObserver:self forKeyPath:@"currentItem" options:3 context:@"AVPlayerLooperObservationCurrentItemContext"];
    v30 = self->_looper->playerCurrentItemKVOInvoker;
    self->_looper->loopingItemStatusKVOInvokers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = self->_looper->loopingItemCopies;
    v32 = [(NSMutableArray *)obj countByEnumeratingWithState:&v50 objects:v65 count:16];
    if (v32)
    {
      v34 = v32;
      v35 = *v51;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v51 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v50 + 1) + 8 * i);
          -[NSMutableArray addObject:](self->_looper->loopingItemStatusKVOInvokers, "addObject:", [v29 startObservingObject:v37 weakObserver:self forKeyPath:@"status" options:3 context:@"AVPlayerLooperObservationItemStatusContext"]);
          [v31 addListenerWithWeakReference:self->_looper->weakReference callback:_avplLoopingItemFailedToPlayToEndTimeNotificationHandler name:@"AVPlayerItemFailedToPlayToEndTimeNotification" object:v37 flags:0];
        }

        v34 = [(NSMutableArray *)obj countByEnumeratingWithState:&v50 objects:v65 count:16];
      }

      while (v34);
    }

    LOBYTE(v5) = 1;
    self->_looper->listeningForItemFailedToPlayToEndTime = 1;
    if (v14 != 0.0)
    {
      *&v33 = v14;
      [(AVPlayer *)self->_looper->loopingPlayer setRate:v33];
LABEL_2:
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    v10 = v8 + 1;
    while (1)
    {
      v5 = [(AVPlayerItem *)self->_looper->loopingItem copyWithZone:[(AVPlayerLooper *)self zone]];
      if (!v5)
      {
        break;
      }

      v11 = v5;
      [v9 addObject:v5];

      if (--v10 <= 1)
      {
        goto LABEL_12;
      }
    }
  }

  return v5;
}

uint64_t __46__AVPlayerLooper__setupLoopingReturningError___block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (!*(v1 + 144))
  {
    *(v1 + 144) = 1;
  }

  return result;
}

- (void)_turnOffLooping
{
  [(AVPlayerLooper *)self willChangeValueForKey:@"status"];
  ivarAccessQueue = self->_looper->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__AVPlayerLooper__turnOffLooping__block_invoke;
  v6[3] = &unk_1E7460C00;
  v6[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerLooper *)self didChangeValueForKey:@"status"];
  dispatchQueue = [(AVPlayer *)self->_looper->loopingPlayer dispatchQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AVPlayerLooper__turnOffLooping__block_invoke_2;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  AVSerializeOnQueueAsyncIfNecessary(dispatchQueue, v5);
}

uint64_t __33__AVPlayerLooper__turnOffLooping__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (*(v1 + 144) != 2)
  {
    *(v1 + 144) = 3;
  }

  return result;
}

void __33__AVPlayerLooper__turnOffLooping__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 128) = 0;
  v2 = [*(*(*(a1 + 32) + 8) + 8) currentItem];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (*(*(&v12 + 1) + 8 * i) == v2)
        {
          v6 = 1;
        }

        else
        {
          [*(*(*(a1 + 32) + 8) + 8) removeItem:?];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
    if (v6)
    {
      v9 = *(a1 + 32);
      v10 = *(*(v9 + 8) + 88);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __33__AVPlayerLooper__turnOffLooping__block_invoke_3;
      v11[3] = &unk_1E7460C00;
      v11[4] = v9;
      av_readwrite_dispatch_queue_write(v10, v11);
    }
  }
}

- (BOOL)_isWaitingForLastCopyToFinishSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_looper->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AVPlayerLooper__isWaitingForLastCopyToFinishSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_cleanupAfterPlayingLastLoopingCopy
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(AVPlayerLooper *)self _isWaitingForLastCopyToFinishSet])
  {
    ivarAccessQueue = self->_looper->ivarAccessQueue;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __53__AVPlayerLooper__cleanupAfterPlayingLastLoopingCopy__block_invoke;
    v25[3] = &unk_1E7460C00;
    v25[4] = self;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v25);
    looper = self->_looper;
    if (looper->playerOriginalActionAtItemEnd)
    {
      [(AVQueuePlayer *)looper->loopingPlayer setActionAtItemEnd:?];
      looper = self->_looper;
    }

    if (looper->listeningForItemFailedToPlayToEndTime)
    {
      v5 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      loopingItemCopies = self->_looper->loopingItemCopies;
      v7 = [(NSMutableArray *)loopingItemCopies countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v22;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(loopingItemCopies);
            }

            [v5 removeListenerWithWeakReference:self->_looper->weakReference callback:_avplLoopingItemFailedToPlayToEndTimeNotificationHandler name:@"AVPlayerItemFailedToPlayToEndTimeNotification" object:*(*(&v21 + 1) + 8 * i)];
          }

          v8 = [(NSMutableArray *)loopingItemCopies countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v8);
      }

      self->_looper->listeningForItemFailedToPlayToEndTime = 0;
      looper = self->_looper;
    }

    loopingItemStatusKVOInvokers = looper->loopingItemStatusKVOInvokers;
    if (loopingItemStatusKVOInvokers)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v12 = [(NSMutableArray *)loopingItemStatusKVOInvokers countByEnumeratingWithState:&v17 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v18;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(loopingItemStatusKVOInvokers);
            }

            [*(*(&v17 + 1) + 8 * j) cancelCallbacks];
          }

          v13 = [(NSMutableArray *)loopingItemStatusKVOInvokers countByEnumeratingWithState:&v17 objects:v26 count:16];
        }

        while (v13);
      }

      self->_looper->loopingItemStatusKVOInvokers = 0;
      looper = self->_looper;
    }

    playerCurrentItemKVOInvoker = looper->playerCurrentItemKVOInvoker;
    if (playerCurrentItemKVOInvoker)
    {
      [(AVCallbackCancellation *)playerCurrentItemKVOInvoker cancelCallbacks];

      self->_looper->playerCurrentItemKVOInvoker = 0;
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([(AVPlayerLooper *)self status]== AVPlayerLooperStatusReady || [(AVPlayerLooper *)self _isWaitingForLastCopyToFinishSet])
  {
    if (context == @"AVPlayerLooperObservationCurrentItemContext")
    {
      v10 = [change objectForKey:*MEMORY[0x1E696A500]];
      if ([(AVPlayerLooper *)self status]== AVPlayerLooperStatusReady)
      {
        if (v10 != [MEMORY[0x1E695DFB0] null] && -[NSMutableArray indexOfObjectIdenticalTo:](self->_looper->loopingItemCopies, "indexOfObjectIdenticalTo:", v10) != 0x7FFFFFFFFFFFFFFFLL && self->_looper->lastEnqueuedLoopingItem)
        {
          [(AVPlayerLooper *)self _configureLoopingItem:v10];
          [(AVQueuePlayer *)self->_looper->loopingPlayer insertItem:v10 afterItem:self->_looper->lastEnqueuedLoopingItem];
          self->_looper->lastEnqueuedLoopingItem = v10;
          [(AVPlayerLooper *)self willChangeValueForKey:@"loopCount"];
          ivarAccessQueue = self->_looper->ivarAccessQueue;
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __65__AVPlayerLooper_observeValueForKeyPath_ofObject_change_context___block_invoke;
          v14[3] = &unk_1E7460C00;
          v14[4] = self;
          av_readwrite_dispatch_queue_write(ivarAccessQueue, v14);
          [(AVPlayerLooper *)self didChangeValueForKey:@"loopCount"];
        }
      }

      else if (-[AVPlayerLooper _isWaitingForLastCopyToFinishSet](self, "_isWaitingForLastCopyToFinishSet") && v10 != [MEMORY[0x1E695DFB0] null] && -[NSMutableArray indexOfObjectIdenticalTo:](self->_looper->loopingItemCopies, "indexOfObjectIdenticalTo:", v10) != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(AVPlayerLooper *)self willChangeValueForKey:@"loopCount"];
        v12 = self->_looper->ivarAccessQueue;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __65__AVPlayerLooper_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
        v13[3] = &unk_1E7460C00;
        v13[4] = self;
        av_readwrite_dispatch_queue_write(v12, v13);
        [(AVPlayerLooper *)self didChangeValueForKey:@"loopCount"];
        [(AVPlayerLooper *)self _cleanupAfterPlayingLastLoopingCopy];
      }
    }

    else if (object && context == @"AVPlayerLooperObservationItemStatusContext" && -[NSMutableArray indexOfObjectIdenticalTo:](self->_looper->loopingItemCopies, "indexOfObjectIdenticalTo:", object) != 0x7FFFFFFFFFFFFFFFLL && [object status] == 2)
    {
      -[AVPlayerLooper _changeStatusToFailedWithError:](self, "_changeStatusToFailedWithError:", [object error]);

      [(AVPlayerLooper *)self _turnOffLooping];
    }
  }
}

@end