@interface AVPlayerItemIntegratedTimelinePeriodicObserver
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getNextPeriodicFireTimeFromIntegratedCurrentTime:(SEL)a3;
- (AVPlayerItemIntegratedTimelinePeriodicObserver)initWithInterval:(id *)a3 queue:(id)a4 block:(id)a5 integratedTimeline:(id)a6;
- (BOOL)_doesTimeResideInItemIntegratedTimelineOffsets:(id *)a3 withOffsets:(id)a4 timeMappingOut:(id *)a5;
- (BOOL)hasObserverBeenScheduledYet;
- (void)dealloc;
- (void)rescheduleObserverWithSnapshot:(id)a3 itemToSchedule:(id)a4;
@end

@implementation AVPlayerItemIntegratedTimelinePeriodicObserver

- (AVPlayerItemIntegratedTimelinePeriodicObserver)initWithInterval:(id *)a3 queue:(id)a4 block:(id)a5 integratedTimeline:(id)a6
{
  objc_initWeak(&location, a6);
  v16.receiver = self;
  v16.super_class = AVPlayerItemIntegratedTimelinePeriodicObserver;
  v10 = [(AVPlayerItemIntegratedTimelinePeriodicObserver *)&v16 init];
  v11 = v10;
  if (v10)
  {
    var3 = a3->var3;
    *&v10->_interval.value = *&a3->var0;
    if (a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = MEMORY[0x1E69E96A0];
    }

    v11->_interval.epoch = var3;
    v11->_queue = v13;
    dispatch_retain(v13);
    v11->_block = [a5 copy];
    v14 = objc_loadWeak(&location);
    objc_storeWeak(&v11->_integratedTimeline, v14);
    v11->_mutex = FigSimpleMutexCreate();
  }

  objc_destroyWeak(&location);
  return v11;
}

- (void)dealloc
{
  [(AVTimebaseObserver *)self->_periodicObserver invalidate];

  dispatch_release(self->_queue);
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = AVPlayerItemIntegratedTimelinePeriodicObserver;
  [(AVPlayerItemIntegratedTimelinePeriodicObserver *)&v3 dealloc];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getNextPeriodicFireTimeFromIntegratedCurrentTime:(SEL)a3
{
  memset(&v9, 0, sizeof(v9));
  timescale = self->_interval.timescale;
  v8 = *a4;
  CMTimeConvertScale(&v9, &v8, timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  return CMTimeMake(retstr, self->_interval.value + self->_interval.value * (v9.value / self->_interval.value), self->_interval.timescale);
}

- (BOOL)_doesTimeResideInItemIntegratedTimelineOffsets:(id *)a3 withOffsets:(id)a4 timeMappingOut:(id *)a5
{
  v8 = *(MEMORY[0x1E6960C78] + 48);
  *&v22.source.duration.timescale = *(MEMORY[0x1E6960C78] + 32);
  *&v22.target.start.value = v8;
  v9 = *(MEMORY[0x1E6960C78] + 80);
  *&v22.target.start.epoch = *(MEMORY[0x1E6960C78] + 64);
  *&v22.target.duration.timescale = v9;
  v10 = *(MEMORY[0x1E6960C78] + 16);
  *&v22.source.start.value = *MEMORY[0x1E6960C78];
  *&v22.source.start.epoch = v10;
  if (![a4 count])
  {
    if (!a5)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v11 = 1;
  do
  {
    CMTimeMappingMakeFromDictionary(&v22, [a4 objectAtIndex:v11 - 1]);
    range = v22.target;
    v20 = *a3;
    v12 = CMTimeRangeContainsTime(&range, &v20);
    v13 = v12 != 0;
    if (v11 >= [a4 count])
    {
      break;
    }

    ++v11;
  }

  while (!v12);
  if (a5)
  {
    if (v12)
    {
      v13 = 1;
      v14 = &v22;
LABEL_10:
      v15 = *&v14->source.start.epoch;
      *&a5->var0.var0.var0 = *&v14->source.start.value;
      *&a5->var0.var0.var3 = v15;
      v16 = *&v14->source.duration.timescale;
      v17 = *&v14->target.start.value;
      v18 = *&v14->target.duration.timescale;
      *&a5->var1.var0.var3 = *&v14->target.start.epoch;
      *&a5->var1.var1.var1 = v18;
      *&a5->var0.var1.var1 = v16;
      *&a5->var1.var0.var0 = v17;
      return v13;
    }

LABEL_9:
    v13 = 0;
    v14 = MEMORY[0x1E6960C78];
    goto LABEL_10;
  }

  return v13;
}

- (void)rescheduleObserverWithSnapshot:(id)a3 itemToSchedule:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = [a3 currentSegment];
  v47 = 0uLL;
  v48 = 0;
  if (a3)
  {
    [a3 currentTime];
  }

  v8 = [a4 timebase];
  v46 = **&MEMORY[0x1E6960CC0];
  start = **&MEMORY[0x1E6960C70];
  v44 = start;
  interval = self->_interval;
  v9 = *(MEMORY[0x1E6960C78] + 48);
  *&v41.duration.timescale = *(MEMORY[0x1E6960C78] + 32);
  *&v42.start.value = v9;
  v10 = *(MEMORY[0x1E6960C78] + 80);
  *&v42.start.epoch = *(MEMORY[0x1E6960C78] + 64);
  *&v42.duration.timescale = v10;
  v11 = *(MEMORY[0x1E6960C78] + 16);
  *&v41.start.value = *MEMORY[0x1E6960C78];
  *&v41.start.epoch = v11;
  v40 = 0;
  v12 = [v7 segmentType];
  v13 = v12 == 1 && [objc_msgSend(v7 "interstitialEvent")] == 0;
  if (a4)
  {
    FigSimpleMutexLock();
    *&range.start.value = v47;
    range.start.epoch = v48;
    [(AVPlayerItemIntegratedTimelinePeriodicObserver *)self _getNextPeriodicFireTimeFromIntegratedCurrentTime:&range];
    range.start = v44;
    [a3 mapTime:&range toSegment:&v40 atSegmentOffset:&start];
    v14 = [a4 _integratedTimelineOffsets];
    range.start = v44;
    v15 = [(AVPlayerItemIntegratedTimelinePeriodicObserver *)self _doesTimeResideInItemIntegratedTimelineOffsets:&range withOffsets:v14 timeMappingOut:&v41];
    v16 = v15;
    if (!v15)
    {
      goto LABEL_39;
    }

    if (v7)
    {
      [v7 timeMapping];
    }

    else
    {
      v38 = 0u;
      memset(&v39, 0, sizeof(v39));
      v36 = 0u;
      v37 = 0u;
    }

    range = v39;
    *&time.start.value = *&v42.start.value;
    time.start.epoch = v42.start.epoch;
    if (CMTimeRangeContainsTime(&range, &time.start))
    {
LABEL_39:
      if ((self->_observedTimeMapping.target.start.flags & 1) == 0 || (self->_observedTimeMapping.target.duration.flags & 1) == 0 || self->_observedTimeMapping.target.duration.epoch || self->_observedTimeMapping.target.duration.value < 0 || (v29 = *&self->_observedTimeMapping.source.start.epoch, *&range.start.value = *&self->_observedTimeMapping.source.start.value, *&range.start.epoch = v29, *&range.duration.timescale = *&self->_observedTimeMapping.source.duration.timescale, time = v41, !CMTimeRangeEqual(&range, &time)) || (v30 = *&self->_observedTimeMapping.target.start.epoch, *&range.start.value = *&self->_observedTimeMapping.target.start.value, *&range.start.epoch = v30, *&range.duration.timescale = *&self->_observedTimeMapping.target.duration.timescale, time = v42, !CMTimeRangeEqual(&range, &time)))
      {
        if (v40 != v7 || !v16 || v13)
        {
          CMTimeMake(&interval, 0x7FFFFFFFFFFFFFFFLL, 1);
          if (a3)
          {
            [a3 currentTime];
          }

          else
          {
            memset(&range, 0, 24);
          }

          -[AVPlayerItemIntegratedTimelinePeriodicObserver _doesTimeResideInItemIntegratedTimelineOffsets:withOffsets:timeMappingOut:](self, "_doesTimeResideInItemIntegratedTimelineOffsets:withOffsets:timeMappingOut:", &range, [a4 _integratedTimelineOffsets], &v41);
        }

        else
        {
          if (v12 == 1)
          {
            time.start = v44;
            rhs = v42.start;
            CMTimeSubtract(&range.start, &time.start, &rhs);
            start = range.start;
          }

          timescale = self->_interval.timescale;
          time.start = start;
          CMTimeConvertScale(&range.start, &time.start, timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          start = range.start;
          memset(&range, 0, 24);
          v18 = self->_interval.timescale;
          *&time.start.value = *&v41.start.value;
          time.start.epoch = v41.start.epoch;
          CMTimeConvertScale(&range.start, &time.start, v18, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          memset(&time, 0, 24);
          rhs = range.start;
          lhs = start;
          CMTimeAdd(&time.start, &rhs, &lhs);
          memset(&rhs, 0, sizeof(rhs));
          CMTimeMake(&rhs, time.start.value / self->_interval.value * self->_interval.value, self->_interval.timescale);
          lhs = time.start;
          v33 = rhs;
          CMTimeSubtract(&v46, &lhs, &v33);
          interval = self->_interval;
        }

        v19 = *&v42.start.value;
        *&self->_observedTimeMapping.source.duration.timescale = *&v41.duration.timescale;
        *&self->_observedTimeMapping.target.start.value = v19;
        v20 = *&v42.duration.timescale;
        *&self->_observedTimeMapping.target.start.epoch = *&v42.start.epoch;
        *&self->_observedTimeMapping.target.duration.timescale = v20;
        v21 = *&v41.start.epoch;
        *&self->_observedTimeMapping.source.start.value = *&v41.start.value;
        *&self->_observedTimeMapping.source.start.epoch = v21;
        [(AVTimebaseObserver *)self->_periodicObserver invalidate];

        self->_periodicObserver = 0;
        if (dword_1EAEFCDD0)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(lhs.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          value = rhs.value;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, lhs.value))
          {
            v24 = value;
          }

          else
          {
            v24 = value & 0xFFFFFFFE;
          }

          if (v24)
          {
            range.start = v46;
            Seconds = CMTimeGetSeconds(&range.start);
            range.start = interval;
            v26 = CMTimeGetSeconds(&range.start);
            LODWORD(time.start.value) = 136315906;
            *(&time.start.value + 4) = "[AVPlayerItemIntegratedTimelinePeriodicObserver rescheduleObserverWithSnapshot:itemToSchedule:]";
            LOWORD(time.start.flags) = 2048;
            *(&time.start.flags + 2) = self;
            HIWORD(time.start.epoch) = 2048;
            time.duration.value = Seconds;
            LOWORD(time.duration.timescale) = 2048;
            *(&time.duration.timescale + 2) = v26;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        objc_initWeak(&rhs, self);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __96__AVPlayerItemIntegratedTimelinePeriodicObserver_rescheduleObserverWithSnapshot_itemToSchedule___block_invoke;
        v31[3] = &unk_1E7465BB8;
        objc_copyWeak(&v32, &rhs);
        self->_hasBeenScheduled = 1;
        v27 = [AVPeriodicTimebaseObserver alloc];
        queue = self->_queue;
        range.start = interval;
        time.start = v46;
        self->_periodicObserver = [(AVPeriodicTimebaseObserver *)v27 initWithTimebase:v8 interval:&range offset:&time queue:queue block:v31];
        objc_destroyWeak(&v32);
        objc_destroyWeak(&rhs);
      }
    }

    FigSimpleMutexUnlock();
  }
}

void __96__AVPlayerItemIntegratedTimelinePeriodicObserver_rescheduleObserverWithSnapshot_itemToSchedule___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  if (Weak)
  {
    if (objc_loadWeak(Weak + 21))
    {
      v9 = 0uLL;
      v10 = 0;
      v3 = objc_loadWeak(Weak + 21);
      if (v3)
      {
        [v3 currentTime];
        if (BYTE12(v9))
        {
          v5 = Weak[6];
          v6 = v5[2];
          v7 = v9;
          v8 = v10;
          v6(v5, &v7, v4);
        }
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)hasObserverBeenScheduledYet
{
  FigSimpleMutexLock();
  hasBeenScheduled = self->_hasBeenScheduled;
  FigSimpleMutexUnlock();
  return hasBeenScheduled;
}

@end