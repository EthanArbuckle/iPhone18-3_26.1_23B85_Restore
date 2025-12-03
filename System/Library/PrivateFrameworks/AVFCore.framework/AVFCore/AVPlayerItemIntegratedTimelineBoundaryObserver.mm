@interface AVPlayerItemIntegratedTimelineBoundaryObserver
- (AVPlayerItemIntegratedTimelineBoundaryObserver)initWithSegment:(id)segment offsetTimes:(id)times queue:(id)queue block:(id)block;
- (BOOL)_ensureItemTimeOffsetLiesInSegment:(id)segment item:(id)item;
- (BOOL)_isItemCurrentTimeWithinZeroOffsetBoundaryThreshold:(id)threshold offset:(id *)offset;
- (BOOL)hasObserverBeenScheduledYet;
- (id)_currentInterstitialIDForSnapshot:(id)snapshot;
- (id)scheduledSegment;
- (void)dealloc;
- (void)ensureBoundaryObserverSegmentStillExistsWithNewSnapshot:(id)snapshot;
- (void)rescheduleObserverWithSnapshot:(id)snapshot itemToSchedule:(id)schedule;
- (void)setOccasionalBoundaryObserver:(id)observer;
@end

@implementation AVPlayerItemIntegratedTimelineBoundaryObserver

- (AVPlayerItemIntegratedTimelineBoundaryObserver)initWithSegment:(id)segment offsetTimes:(id)times queue:(id)queue block:(id)block
{
  v13.receiver = self;
  v13.super_class = AVPlayerItemIntegratedTimelineBoundaryObserver;
  v10 = [(AVPlayerItemIntegratedTimelineBoundaryObserver *)&v13 init];
  if (v10)
  {
    if (queue)
    {
      queueCopy = queue;
    }

    else
    {
      queueCopy = MEMORY[0x1E69E96A0];
    }

    v10->_queue = queueCopy;
    dispatch_retain(queueCopy);
    v10->_segment = [segment copy];
    v10->_offsetTimes = [times copy];
    v10->_block = [block copy];
    v10->_mutex = FigSimpleMutexCreate();
  }

  return v10;
}

- (void)dealloc
{
  [(AVTimebaseObserver *)self->_boundaryObserver invalidate];

  dispatch_release(self->_queue);
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = AVPlayerItemIntegratedTimelineBoundaryObserver;
  [(AVPlayerItemIntegratedTimelineBoundaryObserver *)&v3 dealloc];
}

- (id)_currentInterstitialIDForSnapshot:(id)snapshot
{
  currentSegment = [snapshot currentSegment];
  if ([currentSegment segmentType] != 1)
  {
    return 0;
  }

  interstitialEvent = [currentSegment interstitialEvent];

  return [interstitialEvent identifier];
}

- (BOOL)_ensureItemTimeOffsetLiesInSegment:(id)segment item:(id)item
{
  _integratedTimelineOffsets = [item _integratedTimelineOffsets];
  v6 = 0uLL;
  v13 = 0u;
  memset(&v14, 0, sizeof(v14));
  v11 = 0u;
  v12 = 0u;
  if (segment)
  {
    [segment timeMapping];
    v6 = 0uLL;
  }

  *&v10.target.start.epoch = v6;
  *&v10.target.duration.timescale = v6;
  *&v10.source.duration.timescale = v6;
  *&v10.target.start.value = v6;
  *&v10.source.start.value = v6;
  *&v10.source.start.epoch = v6;
  CMTimeMappingMakeFromDictionary(&v10, [_integratedTimelineOffsets objectAtIndexedSubscript:0]);
  range = v14;
  target = v10.target;
  if (CMTimeRangeContainsTimeRange(&range, &target))
  {
    return 1;
  }

  range = v14;
  target = v10.target;
  return CMTimeRangeEqual(&range, &target) != 0;
}

- (BOOL)_isItemCurrentTimeWithinZeroOffsetBoundaryThreshold:(id)threshold offset:(id *)offset
{
  if (threshold)
  {
    [threshold currentTime];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  v6 = *offset;
  CMTimeSubtract(&time, &lhs, &v6);
  return fabs(CMTimeGetSeconds(&time)) < 0.3;
}

- (void)setOccasionalBoundaryObserver:(id)observer
{
  boundaryObserver = self->_boundaryObserver;
  if (boundaryObserver != observer)
  {
    [(AVTimebaseObserver *)boundaryObserver invalidate];

    self->_boundaryObserver = observer;
  }
}

- (void)rescheduleObserverWithSnapshot:(id)snapshot itemToSchedule:(id)schedule
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = *(MEMORY[0x1E6960C78] + 32);
  v8 = *(MEMORY[0x1E6960C78] + 64);
  v9 = *(MEMORY[0x1E6960C78] + 80);
  *&v39.start.value = *(MEMORY[0x1E6960C78] + 48);
  *&v39.start.epoch = v8;
  *&v39.duration.timescale = v9;
  v10 = *MEMORY[0x1E6960C78];
  *&v38.start.epoch = *(MEMORY[0x1E6960C78] + 16);
  *&v38.duration.timescale = v7;
  v11 = *(MEMORY[0x1E6960C98] + 16);
  *&v37.start.value = *MEMORY[0x1E6960C98];
  *&v37.start.epoch = v11;
  *&v37.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  *&v38.start.value = v10;
  timebase = [schedule timebase];
  array = [MEMORY[0x1E695DF70] array];
  if (schedule && !self->_segmentWasRemoved)
  {
    FigSimpleMutexLock();
    segmentType = [(AVPlayerItemSegment *)self->_segment segmentType];
    if (segmentType)
    {
      identifier = [(AVPlayerInterstitialEvent *)[(AVPlayerItemSegment *)self->_segment interstitialEvent] identifier];
      if (identifier == -[AVPlayerItemIntegratedTimelineBoundaryObserver _currentInterstitialIDForSnapshot:](self, "_currentInterstitialIDForSnapshot:", snapshot) && -[AVPlayerItemIntegratedTimelineBoundaryObserver _ensureItemTimeOffsetLiesInSegment:item:](self, "_ensureItemTimeOffsetLiesInSegment:item:", [snapshot currentSegment], schedule))
      {
        _interstitialEventItemTimeOffset = [schedule _interstitialEventItemTimeOffset];
        if (_interstitialEventItemTimeOffset)
        {
          CMTimeRangeMakeFromDictionary(&v37, _interstitialEventItemTimeOffset);
        }

        goto LABEL_13;
      }
    }

    else if (!self->_boundaryObserver)
    {
      segment = self->_segment;
      if (segment)
      {
        [(AVPlayerItemSegment *)segment timeMapping];
      }

      else
      {
        memset(lhs, 0, sizeof(lhs));
      }

      v38 = lhs[0];
      v39 = lhs[1];
      v37 = lhs[1];
LABEL_13:
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      offsetTimes = self->_offsetTimes;
      v18 = [(NSArray *)offsetTimes countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v18)
      {
        v19 = *v34;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(offsetTimes);
            }

            v21 = *(*(&v33 + 1) + 8 * i);
            memset(&location, 0, sizeof(location));
            if (v21)
            {
              [v21 CMTimeValue];
            }

            memset(&v31, 0, sizeof(v31));
            if (segmentType)
            {
              v31 = location;
              memset(&v30, 0, sizeof(v30));
              lhs[0].start = location;
              *&rhs.start.value = *&v37.start.value;
              rhs.start.epoch = v37.start.epoch;
              CMTimeSubtract(&v30, &lhs[0].start, &rhs.start);
            }

            else
            {
              *&lhs[0].start.value = *&v37.start.value;
              lhs[0].start.epoch = v37.start.epoch;
              rhs.start = location;
              CMTimeAdd(&v31, &lhs[0].start, &rhs.start);
              memset(&v30, 0, sizeof(v30));
              v29 = v31;
              lhs[0] = v39;
              rhs = v38;
              CMTimeMapTimeFromRangeToRange(&v30, &v29, lhs, &rhs);
            }

            lhs[0].start = v30;
            if (CMTimeGetSeconds(&lhs[0].start) <= 0.3 && (lhs[0].start = v30, [(AVPlayerItemIntegratedTimelineBoundaryObserver *)self _isItemCurrentTimeWithinZeroOffsetBoundaryThreshold:schedule offset:lhs]))
            {
              (*(self->_block + 2))();
            }

            else
            {
              lhs[0] = v37;
              rhs.start = v31;
              if (((CMTimeRangeContainsTime(lhs, &rhs.start) == 0) & ~(segmentType == 0)) == 0)
              {
                lhs[0].start = v30;
                [array addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCMTime:", lhs)}];
              }
            }
          }

          v18 = [(NSArray *)offsetTimes countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v18);
      }

      if ([array count])
      {
        objc_initWeak(&location, self);
        if (dword_1EAEFCDD0)
        {
          LODWORD(v31.value) = 0;
          LOBYTE(v30.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          value = v31.value;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v30.value))
          {
            v24 = value;
          }

          else
          {
            v24 = value & 0xFFFFFFFE;
          }

          if (v24)
          {
            LODWORD(rhs.start.value) = 136315906;
            *(&rhs.start.value + 4) = "[AVPlayerItemIntegratedTimelineBoundaryObserver rescheduleObserverWithSnapshot:itemToSchedule:]";
            LOWORD(rhs.start.flags) = 2048;
            *(&rhs.start.flags + 2) = self;
            HIWORD(rhs.start.epoch) = 2048;
            rhs.duration.value = schedule;
            LOWORD(rhs.duration.timescale) = 2112;
            *(&rhs.duration.timescale + 2) = array;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __96__AVPlayerItemIntegratedTimelineBoundaryObserver_rescheduleObserverWithSnapshot_itemToSchedule___block_invoke;
        v27[3] = &unk_1E74636C0;
        objc_copyWeak(&v28, &location);
        self->_hasBeenScheduled = 1;
        v25 = [[AVOccasionalTimebaseObserver alloc] initWithTimebase:timebase times:array queue:self->_queue block:v27];
        [(AVPlayerItemIntegratedTimelineBoundaryObserver *)self setOccasionalBoundaryObserver:v25];

        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
      }
    }

    FigSimpleMutexUnlock();
  }
}

void *__96__AVPlayerItemIntegratedTimelineBoundaryObserver_rescheduleObserverWithSnapshot_itemToSchedule___block_invoke(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v2 = *(result[5] + 16);

    return v2();
  }

  return result;
}

- (void)ensureBoundaryObserverSegmentStillExistsWithNewSnapshot:(id)snapshot
{
  v18 = *MEMORY[0x1E69E9840];
  segments = [snapshot segments];
  FigSimpleMutexLock();
  if ([(AVPlayerItemSegment *)self->_segment segmentType]== 1 && !self->_segmentWasRemoved)
  {
    identifier = [(AVPlayerInterstitialEvent *)[(AVPlayerItemSegment *)self->_segment interstitialEvent] identifier];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [segments countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
LABEL_6:
      v9 = 0;
      while (1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(segments);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if ([v10 segmentType] == 1 && -[NSString isEqualToString:](identifier, "isEqualToString:", objc_msgSend(objc_msgSend(v10, "interstitialEvent"), "identifier")))
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [segments countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v7)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __106__AVPlayerItemIntegratedTimelineBoundaryObserver_ensureBoundaryObserverSegmentStillExistsWithNewSnapshot___block_invoke;
      block[3] = &unk_1E7460C00;
      block[4] = self;
      dispatch_async(queue, block);
      self->_segmentWasRemoved = 1;
      [(AVPlayerItemIntegratedTimelineBoundaryObserver *)self setOccasionalBoundaryObserver:0];
    }
  }

  FigSimpleMutexUnlock();
}

- (BOOL)hasObserverBeenScheduledYet
{
  FigSimpleMutexLock();
  hasBeenScheduled = self->_hasBeenScheduled;
  FigSimpleMutexUnlock();
  return hasBeenScheduled;
}

- (id)scheduledSegment
{
  FigSimpleMutexLock();
  segment = self->_segment;
  FigSimpleMutexUnlock();
  return segment;
}

@end