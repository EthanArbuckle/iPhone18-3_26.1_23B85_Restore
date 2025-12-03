@interface AVKitIntegratedTimeline
+ (id)keyPathsForValuesAffectingDuration;
- (AVKitIntegratedTimeline)initWithAVPlayerItemIntegratedTimeline:(id)timeline;
- (AVKitIntegratedTimeline)initWithPlayerItem:(id)item;
- (BOOL)_hasSegmentWithNonZeroDuration;
- (NSArray)allInterstitialEvents;
- (double)currentTimeInterval;
- (id)addBoundaryTimeObserverForDisplayTime:(double)time usingMainBlock:(id)block;
- (id)asciiRepresentation;
- (id)description;
- (id)interstitialEvent;
- (id)segmentForDisplayTime:(double)time segmentOffset:(double *)offset;
- (id)timelineSegmentContainingTime:(double)time inSegments:(id)segments;
- (id)timelineSegmentForPlayerInterstitialEvent:(id)event;
- (int64_t)currentPlayerItemSegmentType;
- (void)_setPlayerSegments:(id)segments;
- (void)_updatePrimaryPlayerItemReadyForInspection;
- (void)_updatePropertiesFromSnapshot;
- (void)_updatePropertiesFromSnapshotIfStale;
- (void)_updateSeekableTimeRangeProperties;
- (void)dealloc;
- (void)enumerateInterstitialSegments:(id)segments;
- (void)enumerateSegments:(id)segments;
- (void)seekToDate:(id)date completionHandler:(id)handler;
- (void)seekToDisplayTime:(double)time completionHandler:(id)handler;
- (void)seekToDisplayTime:(double)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler;
- (void)setDurationCached:(id *)cached;
@end

@implementation AVKitIntegratedTimeline

- (void)setDurationCached:(id *)cached
{
  v3 = *&cached->var0;
  self->_durationCached.epoch = cached->var3;
  *&self->_durationCached.value = v3;
}

- (void)seekToDate:(id)date completionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  handlerCopy = handler;
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[AVKitIntegratedTimeline seekToDate:completionHandler:]";
    v12 = 2112;
    v13 = dateCopy;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s seeking to date %@", &v10, 0x16u);
  }

  playerItemIntegratedTimeline = [(AVKitIntegratedTimeline *)self playerItemIntegratedTimeline];
  [playerItemIntegratedTimeline seekToDate:dateCopy completionHandler:handlerCopy];
}

- (void)seekToDisplayTime:(double)time toleranceBefore:(id *)before toleranceAfter:(id *)after completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v11 = _AVLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    time = *before;
    Seconds = CMTimeGetSeconds(&time);
    time = *after;
    v13 = CMTimeGetSeconds(&time);
    LODWORD(time.value) = 136315906;
    *(&time.value + 4) = "[AVKitIntegratedTimeline seekToDisplayTime:toleranceBefore:toleranceAfter:completionHandler:]";
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = time;
    HIWORD(time.epoch) = 2048;
    v21 = Seconds;
    v22 = 2048;
    v23 = v13;
    _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s seeking to display time: %f toleranceBefore: %f toleranceAfter: %f", &time, 0x2Au);
  }

  memset(&time, 0, sizeof(time));
  CMTimeMakeWithSeconds(&time, time, 1000);
  playerItemIntegratedTimeline = [(AVKitIntegratedTimeline *)self playerItemIntegratedTimeline];
  timeCopy = time;
  v17 = *&before->var0;
  var3 = before->var3;
  v15 = *&after->var0;
  v16 = after->var3;
  [playerItemIntegratedTimeline seekToTime:&timeCopy toleranceBefore:&v17 toleranceAfter:&v15 completionHandler:handlerCopy];
}

- (void)seekToDisplayTime:(double)time completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 136315394;
    *(&buf.value + 4) = "[AVKitIntegratedTimeline seekToDisplayTime:completionHandler:]";
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = time;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s seeking to display time %.1f", &buf, 0x16u);
  }

  memset(&v16, 0, sizeof(v16));
  CMTimeMakeWithSeconds(&v16, time, 1000);
  [(AVKitIntegratedTimeline *)self duration];
  if (v8 <= time)
  {
    v9 = v8;
    v10 = _AVLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 136315650;
      *(&buf.value + 4) = "[AVKitIntegratedTimeline seekToDisplayTime:completionHandler:]";
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = time;
      HIWORD(buf.epoch) = 2048;
      v18 = v9;
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s requested seek time (%.1f) appears to be >= duration (%.1f)", &buf, 0x20u);
    }
  }

  playerItemIntegratedTimeline = [(AVKitIntegratedTimeline *)self playerItemIntegratedTimeline];
  buf = v16;
  v14 = *MEMORY[0x1E6960CC0];
  v15 = *(MEMORY[0x1E6960CC0] + 16);
  v12 = v14;
  v13 = v15;
  [playerItemIntegratedTimeline seekToTime:&buf toleranceBefore:&v14 toleranceAfter:&v12 completionHandler:handlerCopy];
}

- (void)enumerateInterstitialSegments:(id)segments
{
  segmentsCopy = segments;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__AVKitIntegratedTimeline_enumerateInterstitialSegments___block_invoke;
  v6[3] = &unk_1E72083F0;
  v7 = segmentsCopy;
  v5 = segmentsCopy;
  [(AVKitIntegratedTimeline *)self enumerateSegments:v6];
}

void __57__AVKitIntegratedTimeline_enumerateInterstitialSegments___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isInterstitial])
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateSegments:(id)segments
{
  v15 = *MEMORY[0x1E69E9840];
  segmentsCopy = segments;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  timelineSegments = [(AVKitIntegratedTimeline *)self timelineSegments];
  v6 = [timelineSegments countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(timelineSegments);
        }

        segmentsCopy[2](segmentsCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [timelineSegments countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (NSArray)allInterstitialEvents
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  _snapshot = [(AVKitIntegratedTimeline *)self _snapshot];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  segments = [_snapshot segments];
  v6 = [segments countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(segments);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        interstitialEvent = [v10 interstitialEvent];

        if (interstitialEvent)
        {
          interstitialEvent2 = [v10 interstitialEvent];
          [array addObject:interstitialEvent2];
        }
      }

      v7 = [segments countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)interstitialEvent
{
  currentSegment = [(AVKitIntegratedTimeline *)self currentSegment];
  playerInterstitialEvent = [currentSegment playerInterstitialEvent];

  return playerInterstitialEvent;
}

- (int64_t)currentPlayerItemSegmentType
{
  currentSegment = [(AVKitIntegratedTimeline *)self currentSegment];
  segmentType = [currentSegment segmentType];

  return segmentType;
}

- (BOOL)_hasSegmentWithNonZeroDuration
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  timelineSegments = [(AVKitIntegratedTimeline *)self timelineSegments];
  v3 = [timelineSegments countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(timelineSegments);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (v6)
        {
          [v6 duration];
          if (v7 > 0.0)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [timelineSegments countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (void)_updatePrimaryPlayerItemReadyForInspection
{
  _hasSegmentWithNonZeroDuration = [(AVKitIntegratedTimeline *)self _hasSegmentWithNonZeroDuration];
  if (self->_canSeek != _hasSegmentWithNonZeroDuration)
  {
    [(AVKitIntegratedTimeline *)self setCanSeek:_hasSegmentWithNonZeroDuration];
  }

  if (_hasSegmentWithNonZeroDuration != [(AVKitIntegratedTimeline *)self isPrimaryPlayerItemReadyForInspection])
  {
    [(AVKitIntegratedTimeline *)self _setPrimaryPlayerItemReadyForInspection:_hasSegmentWithNonZeroDuration];
  }

  [(AVKitIntegratedTimeline *)self _updateSeekableTimeRangeProperties];
}

- (void)_updateSeekableTimeRangeProperties
{
  v19[1] = *MEMORY[0x1E69E9840];
  timelineSegments = [(AVKitIntegratedTimeline *)self timelineSegments];
  v4 = [timelineSegments count];

  if (v4)
  {
    timelineSegments2 = [(AVKitIntegratedTimeline *)self timelineSegments];
    firstObject = [timelineSegments2 firstObject];

    timelineSegments3 = [(AVKitIntegratedTimeline *)self timelineSegments];
    lastObject = [timelineSegments3 lastObject];

    [firstObject startTime];
    v10 = v9;
    [lastObject startTime];
    v12 = v11;
    [lastObject duration];
    v14 = [[AVTimeRange alloc] initWithStartTime:v10 endTime:v12 + v13];
  }

  else
  {
    v14 = 0;
  }

  if (v14 != self->_seekableTimeRange)
  {
    [(AVKitIntegratedTimeline *)self _setSeekableTimeRange:v14];
    if (v14)
    {
      v15 = MEMORY[0x1E696B098];
      [(AVTimeRange *)v14 cmTimeRange];
      v16 = [v15 valueWithCMTimeRange:&v18];
      v19[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    }

    else
    {
      v17 = MEMORY[0x1E695E0F0];
    }

    [(AVKitIntegratedTimeline *)self _setSeekableCMTimeRanges:v17];
  }
}

- (void)_updatePropertiesFromSnapshotIfStale
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  if (v3 > self->_timeOfLastSnapshotUpdate + 0.25)
  {

    [(AVKitIntegratedTimeline *)self _updatePropertiesFromSnapshot];
  }
}

- (void)_updatePropertiesFromSnapshot
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_unfairLock);
  if (self->_isSnapshotUpdateInProgress)
  {

    os_unfair_lock_unlock(&self->_unfairLock);
  }

  else
  {
    self->_isSnapshotUpdateInProgress = 1;
    os_unfair_lock_unlock(&self->_unfairLock);
    _snapshot = [(AVKitIntegratedTimeline *)self _snapshot];
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      segments = [_snapshot segments];
      LODWORD(buf.value) = 136315394;
      *(&buf.value + 4) = "[AVKitIntegratedTimeline _updatePropertiesFromSnapshot]";
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = segments;
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s AVKitIntegratedTimeline snapshot segments - %@", &buf, 0x16u);
    }

    if (_snapshot)
    {
      memset(&buf, 0, sizeof(buf));
      [_snapshot duration];
      time1 = self->_durationCached;
      v14 = buf;
      if (CMTimeCompare(&time1, &v14))
      {
        v6 = _AVLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          time1 = buf;
          Seconds = CMTimeGetSeconds(&time1);
          LODWORD(time1.value) = 136315394;
          *(&time1.value + 4) = "[AVKitIntegratedTimeline _updatePropertiesFromSnapshot]";
          LOWORD(time1.flags) = 2048;
          *(&time1.flags + 2) = Seconds;
          _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s [scanning/AVKitIntegratedTimeline] updated _durationCached to %.3f", &time1, 0x16u);
        }

        time1 = buf;
        [(AVKitIntegratedTimeline *)self setDurationCached:&time1];
      }

      segments2 = [_snapshot segments];
      [(AVKitIntegratedTimeline *)self _setPlayerSegments:segments2];

      currentSegment = [_snapshot currentSegment];
      v10 = [[AVTimelineSegment alloc] initWithSegment:currentSegment];
      if (v10 != self->_currentSegment)
      {
        if (!currentSegment || ([(AVKitIntegratedTimeline *)self currentSegment], v11 = objc_claimAutoreleasedReturnValue(), v12 = [(AVTimelineSegment *)v10 isEqual:v11], v11, !v12))
        {
          [(AVKitIntegratedTimeline *)self setCurrentSegment:v10];
        }
      }
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_timeOfLastSnapshotUpdate = v13;
    os_unfair_lock_lock(&self->_unfairLock);
    self->_isSnapshotUpdateInProgress = 0;
    os_unfair_lock_unlock(&self->_unfairLock);
  }
}

- (void)_setPlayerSegments:(id)segments
{
  v19 = *MEMORY[0x1E69E9840];
  segmentsCopy = segments;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = segmentsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [AVTimelineSegment alloc];
        v13 = [(AVTimelineSegment *)v12 initWithSegment:v11, v14];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(AVKitIntegratedTimeline *)self _setTimelineSegments:v5];
  [(AVKitIntegratedTimeline *)self _updatePrimaryPlayerItemReadyForInspection];
}

- (id)timelineSegmentContainingTime:(double)time inSegments:(id)segments
{
  v20 = *MEMORY[0x1E69E9840];
  segmentsCopy = segments;
  v6 = segmentsCopy;
  if (time >= 0.0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = segmentsCopy;
    v7 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          [v11 duration];
          if (time < v12)
          {
            v7 = v11;
            goto LABEL_13;
          }

          [v11 duration];
          time = time - v13;
        }

        v7 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)addBoundaryTimeObserverForDisplayTime:(double)time usingMainBlock:(id)block
{
  v15[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  seconds = 0.0;
  v7 = [(AVKitIntegratedTimeline *)self segmentForDisplayTime:&seconds segmentOffset:time];
  if (v7)
  {
    v8 = MEMORY[0x1E696B098];
    CMTimeMakeWithSeconds(&v13, seconds, 1000);
    v9 = [v8 valueWithCMTime:&v13];
    v15[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v11 = [(AVKitIntegratedTimeline *)self addBoundaryTimeObserverForSegment:v7 offsetsIntoSegment:v10 queue:MEMORY[0x1E69E96A0] usingBlock:blockCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)timelineSegmentForPlayerInterstitialEvent:(id)event
{
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    identifier = [eventCopy identifier];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    timelineSegments = [(AVKitIntegratedTimeline *)self timelineSegments];
    v8 = [timelineSegments countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(timelineSegments);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          playerInterstitialEvent = [v11 playerInterstitialEvent];
          identifier2 = [playerInterstitialEvent identifier];
          if ([playerInterstitialEvent isEqual:v5])
          {
            if (!(identifier | identifier2))
            {
              identifier2 = 0;
LABEL_17:
              v8 = v11;

              goto LABEL_18;
            }

            if ([identifier isEqualToString:identifier2])
            {
              goto LABEL_17;
            }
          }
        }

        v8 = [timelineSegments countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  else
  {
    identifier = _AVLog();
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[AVKitIntegratedTimeline timelineSegmentForPlayerInterstitialEvent:]";
      _os_log_impl(&dword_18B49C000, identifier, OS_LOG_TYPE_DEFAULT, "%s error: interstitialEvent not specified", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)segmentForDisplayTime:(double)time segmentOffset:(double *)offset
{
  memset(&v12, 0, sizeof(v12));
  CMTimeMakeWithSeconds(&v12, time, 1000);
  currentSnapshot = [(AVPlayerItemIntegratedTimeline *)self->_playerItemIntegratedTimeline currentSnapshot];
  v11 = **&MEMORY[0x1E6960CC0];
  v9 = v12;
  v10 = 0;
  [currentSnapshot mapTime:&v9 toSegment:&v10 atSegmentOffset:&v11];
  v7 = v10;
  if (offset)
  {
    v9 = v11;
    *offset = CMTimeGetSeconds(&v9);
  }

  return v7;
}

void __48__AVKitIntegratedTimeline__loadMissingDurations__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 playerInterstitialEvent];

  if (v3)
  {
    v4 = [v2 playerInterstitialEvent];
    v5 = [v4 templateItems];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (v11)
          {
            [v11 duration];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (double)currentTimeInterval
{
  playerItemIntegratedTimeline = self->_playerItemIntegratedTimeline;
  if (playerItemIntegratedTimeline)
  {
    [(AVPlayerItemIntegratedTimeline *)playerItemIntegratedTimeline currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  asciiRepresentation = [(AVKitIntegratedTimeline *)self asciiRepresentation];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __38__AVKitIntegratedTimeline_description__block_invoke;
  v19[3] = &unk_1E7209258;
  v6 = v3;
  v20 = v6;
  v7 = v4;
  v21 = v7;
  [(AVKitIntegratedTimeline *)self enumerateSegments:v19];
  if ([v7 count])
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [v7 componentsJoinedByString:{@", "}];
    v10 = [v8 stringWithFormat:@"interstitials %@", v9];
    [v6 addObject:v10];
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = _ClassAndPointer(self);
  v13 = _ClassAndPointer(self->_playerItemIntegratedTimeline);
  [(AVKitIntegratedTimeline *)self duration];
  v15 = v14;
  v16 = [v6 componentsJoinedByString:{@", "}];
  v17 = [v11 stringWithFormat:@"%@ [%@] duration = %.1f (%@) %@", v12, v13, v15, v16, asciiRepresentation];

  return v17;
}

void __38__AVKitIntegratedTimeline_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 description];
  [v4 addObject:v5];

  if ([v3 isInterstitial] && (objc_msgSend(v3, "supplementsPrimaryContent") & 1) == 0)
  {
    [v3 startTime];
    v7 = v6;
    [v3 duration];
    v9 = v8;
    v10 = [v3 playerInterstitialEvent];
    v11 = [v10 templateItems];
    v12 = [v11 firstObject];
    v13 = v12;
    if (v12)
    {
      [v12 duration];
    }

    v14 = MEMORY[0x1E696AEC0];
    LODWORD(v13) = vcvtmd_s64_f64(v7 / 60.0);
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d:%0.2d.%d", v13, fmod(v7, 60.0), ((v7 - trunc(v7)) * 10.0)];
    v16 = [v14 stringWithFormat:@"<@ %@ for %.1fs>", v15, v9];

    [*(a1 + 40) addObject:v16];
  }
}

- (id)asciiRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__AVKitIntegratedTimeline_asciiRepresentation__block_invoke;
  v7[3] = &unk_1E72083A8;
  v8 = v3;
  v4 = v3;
  [(AVKitIntegratedTimeline *)self enumerateSegments:v7];
  v5 = [v4 componentsJoinedByString:&stru_1EFED57D8];

  return v5;
}

void __46__AVKitIntegratedTimeline_asciiRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if (([v11 isPrimary] & 1) != 0 || objc_msgSend(v11, "supplementsPrimaryContent"))
  {
    v3 = [v11 supplementsPrimaryContent];
    v4 = @"——————————————————————————————";
    if (v3)
    {
      v4 = @"------------------------------";
    }

    v5 = v4;
    [v11 duration];
    v7 = vcvtpd_s64_f64(v6 / 10.0 + 0.0001);
    if ([(__CFString *)v5 length]<= v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = [(__CFString *)v5 substringToIndex:v7];
    }

    v9 = v8;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v8];
    [*(a1 + 32) addObject:v10];
  }

  else
  {
    [*(a1 + 32) addObject:@"*"];
  }
}

- (void)dealloc
{
  if (self->_timelineSnapshotNotificationObservation)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_timelineSnapshotNotificationObservation];
  }

  v4.receiver = self;
  v4.super_class = AVKitIntegratedTimeline;
  [(AVKitIntegratedTimeline *)&v4 dealloc];
}

- (AVKitIntegratedTimeline)initWithPlayerItem:(id)item
{
  integratedTimeline = [item integratedTimeline];
  if (integratedTimeline)
  {
    self = [(AVKitIntegratedTimeline *)self initWithAVPlayerItemIntegratedTimeline:integratedTimeline];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (AVKitIntegratedTimeline)initWithAVPlayerItemIntegratedTimeline:(id)timeline
{
  v26 = *MEMORY[0x1E69E9840];
  timelineCopy = timeline;
  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[AVKitIntegratedTimeline initWithAVPlayerItemIntegratedTimeline:]";
    v24 = 2112;
    v25 = timelineCopy;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s timeline = %@", buf, 0x16u);
  }

  v21.receiver = self;
  v21.super_class = AVKitIntegratedTimeline;
  v7 = [(AVKitIntegratedTimeline *)&v21 init];
  v8 = v7;
  if (v7)
  {
    v7->_unfairLock._os_unfair_lock_opaque = 0;
    v9 = [[AVObservationController alloc] initWithOwner:v7];
    observationController = v8->_observationController;
    v8->_observationController = v9;

    objc_storeStrong(&v8->_playerItemIntegratedTimeline, timeline);
    v11 = MEMORY[0x1E6960C68];
    *&v8->_durationCached.value = *MEMORY[0x1E6960C68];
    v8->_durationCached.epoch = *(v11 + 16);
    v8->_timeOfLastSnapshotUpdate = 0.0;
    v8->_numberOfSegments = 0;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    timelineSegments = v8->_timelineSegments;
    v8->_timelineSegments = v12;

    [(AVKitIntegratedTimeline *)v8 _loadMissingDurations];
    objc_initWeak(buf, v8);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__AVKitIntegratedTimeline_initWithAVPlayerItemIntegratedTimeline___block_invoke;
    v19[3] = &unk_1E7208898;
    objc_copyWeak(&v20, buf);
    v16 = [defaultCenter addObserverForName:*MEMORY[0x1E69879E0] object:timelineCopy queue:mainQueue usingBlock:v19];
    timelineSnapshotNotificationObservation = v8->_timelineSnapshotNotificationObservation;
    v8->_timelineSnapshotNotificationObservation = v16;

    [(AVKitIntegratedTimeline *)v8 _updatePropertiesFromSnapshot];
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  return v8;
}

void __66__AVKitIntegratedTimeline_initWithAVPlayerItemIntegratedTimeline___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 userInfo];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69879E8]];

  if (![v6 isEqualToString:*MEMORY[0x1E69879F0]] || (objc_msgSend(WeakRetained, "isPrimaryPlayerItemReadyForInspection") & 1) == 0)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "IntegratedTimelineSnapshotsOutOfSync; reason: %{public}@", &v8, 0xCu);
    }

    [WeakRetained _updatePropertiesFromSnapshot];
  }
}

+ (id)keyPathsForValuesAffectingDuration
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"durationCached";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

@end