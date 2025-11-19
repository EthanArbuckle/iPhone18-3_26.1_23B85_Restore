@interface AVKitIntegratedTimeline
+ (id)keyPathsForValuesAffectingDuration;
- (AVKitIntegratedTimeline)initWithAVPlayerItemIntegratedTimeline:(id)a3;
- (AVKitIntegratedTimeline)initWithPlayerItem:(id)a3;
- (BOOL)_hasSegmentWithNonZeroDuration;
- (NSArray)allInterstitialEvents;
- (double)currentTimeInterval;
- (id)addBoundaryTimeObserverForDisplayTime:(double)a3 usingMainBlock:(id)a4;
- (id)asciiRepresentation;
- (id)description;
- (id)interstitialEvent;
- (id)segmentForDisplayTime:(double)a3 segmentOffset:(double *)a4;
- (id)timelineSegmentContainingTime:(double)a3 inSegments:(id)a4;
- (id)timelineSegmentForPlayerInterstitialEvent:(id)a3;
- (int64_t)currentPlayerItemSegmentType;
- (void)_setPlayerSegments:(id)a3;
- (void)_updatePrimaryPlayerItemReadyForInspection;
- (void)_updatePropertiesFromSnapshot;
- (void)_updatePropertiesFromSnapshotIfStale;
- (void)_updateSeekableTimeRangeProperties;
- (void)dealloc;
- (void)enumerateInterstitialSegments:(id)a3;
- (void)enumerateSegments:(id)a3;
- (void)seekToDate:(id)a3 completionHandler:(id)a4;
- (void)seekToDisplayTime:(double)a3 completionHandler:(id)a4;
- (void)seekToDisplayTime:(double)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5 completionHandler:(id)a6;
- (void)setDurationCached:(id *)a3;
@end

@implementation AVKitIntegratedTimeline

- (void)setDurationCached:(id *)a3
{
  v3 = *&a3->var0;
  self->_durationCached.epoch = a3->var3;
  *&self->_durationCached.value = v3;
}

- (void)seekToDate:(id)a3 completionHandler:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[AVKitIntegratedTimeline seekToDate:completionHandler:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s seeking to date %@", &v10, 0x16u);
  }

  v9 = [(AVKitIntegratedTimeline *)self playerItemIntegratedTimeline];
  [v9 seekToDate:v6 completionHandler:v7];
}

- (void)seekToDisplayTime:(double)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5 completionHandler:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = _AVLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    time = *a4;
    Seconds = CMTimeGetSeconds(&time);
    time = *a5;
    v13 = CMTimeGetSeconds(&time);
    LODWORD(time.value) = 136315906;
    *(&time.value + 4) = "[AVKitIntegratedTimeline seekToDisplayTime:toleranceBefore:toleranceAfter:completionHandler:]";
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = a3;
    HIWORD(time.epoch) = 2048;
    v21 = Seconds;
    v22 = 2048;
    v23 = v13;
    _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s seeking to display time: %f toleranceBefore: %f toleranceAfter: %f", &time, 0x2Au);
  }

  memset(&time, 0, sizeof(time));
  CMTimeMakeWithSeconds(&time, a3, 1000);
  v14 = [(AVKitIntegratedTimeline *)self playerItemIntegratedTimeline];
  v19 = time;
  v17 = *&a4->var0;
  var3 = a4->var3;
  v15 = *&a5->var0;
  v16 = a5->var3;
  [v14 seekToTime:&v19 toleranceBefore:&v17 toleranceAfter:&v15 completionHandler:v10];
}

- (void)seekToDisplayTime:(double)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 136315394;
    *(&buf.value + 4) = "[AVKitIntegratedTimeline seekToDisplayTime:completionHandler:]";
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = a3;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s seeking to display time %.1f", &buf, 0x16u);
  }

  memset(&v16, 0, sizeof(v16));
  CMTimeMakeWithSeconds(&v16, a3, 1000);
  [(AVKitIntegratedTimeline *)self duration];
  if (v8 <= a3)
  {
    v9 = v8;
    v10 = _AVLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 136315650;
      *(&buf.value + 4) = "[AVKitIntegratedTimeline seekToDisplayTime:completionHandler:]";
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = a3;
      HIWORD(buf.epoch) = 2048;
      v18 = v9;
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s requested seek time (%.1f) appears to be >= duration (%.1f)", &buf, 0x20u);
    }
  }

  v11 = [(AVKitIntegratedTimeline *)self playerItemIntegratedTimeline];
  buf = v16;
  v14 = *MEMORY[0x1E6960CC0];
  v15 = *(MEMORY[0x1E6960CC0] + 16);
  v12 = v14;
  v13 = v15;
  [v11 seekToTime:&buf toleranceBefore:&v14 toleranceAfter:&v12 completionHandler:v6];
}

- (void)enumerateInterstitialSegments:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__AVKitIntegratedTimeline_enumerateInterstitialSegments___block_invoke;
  v6[3] = &unk_1E72083F0;
  v7 = v4;
  v5 = v4;
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

- (void)enumerateSegments:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(AVKitIntegratedTimeline *)self timelineSegments];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (NSArray)allInterstitialEvents
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(AVKitIntegratedTimeline *)self _snapshot];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 segments];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 interstitialEvent];

        if (v11)
        {
          v12 = [v10 interstitialEvent];
          [v3 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)interstitialEvent
{
  v2 = [(AVKitIntegratedTimeline *)self currentSegment];
  v3 = [v2 playerInterstitialEvent];

  return v3;
}

- (int64_t)currentPlayerItemSegmentType
{
  v2 = [(AVKitIntegratedTimeline *)self currentSegment];
  v3 = [v2 segmentType];

  return v3;
}

- (BOOL)_hasSegmentWithNonZeroDuration
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(AVKitIntegratedTimeline *)self timelineSegments];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
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

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(AVKitIntegratedTimeline *)self _hasSegmentWithNonZeroDuration];
  if (self->_canSeek != v3)
  {
    [(AVKitIntegratedTimeline *)self setCanSeek:v3];
  }

  if (v3 != [(AVKitIntegratedTimeline *)self isPrimaryPlayerItemReadyForInspection])
  {
    [(AVKitIntegratedTimeline *)self _setPrimaryPlayerItemReadyForInspection:v3];
  }

  [(AVKitIntegratedTimeline *)self _updateSeekableTimeRangeProperties];
}

- (void)_updateSeekableTimeRangeProperties
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [(AVKitIntegratedTimeline *)self timelineSegments];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AVKitIntegratedTimeline *)self timelineSegments];
    v6 = [v5 firstObject];

    v7 = [(AVKitIntegratedTimeline *)self timelineSegments];
    v8 = [v7 lastObject];

    [v6 startTime];
    v10 = v9;
    [v8 startTime];
    v12 = v11;
    [v8 duration];
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
    v3 = [(AVKitIntegratedTimeline *)self _snapshot];
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 segments];
      LODWORD(buf.value) = 136315394;
      *(&buf.value + 4) = "[AVKitIntegratedTimeline _updatePropertiesFromSnapshot]";
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = v5;
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s AVKitIntegratedTimeline snapshot segments - %@", &buf, 0x16u);
    }

    if (v3)
    {
      memset(&buf, 0, sizeof(buf));
      [v3 duration];
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

      v8 = [v3 segments];
      [(AVKitIntegratedTimeline *)self _setPlayerSegments:v8];

      v9 = [v3 currentSegment];
      v10 = [[AVTimelineSegment alloc] initWithSegment:v9];
      if (v10 != self->_currentSegment)
      {
        if (!v9 || ([(AVKitIntegratedTimeline *)self currentSegment], v11 = objc_claimAutoreleasedReturnValue(), v12 = [(AVTimelineSegment *)v10 isEqual:v11], v11, !v12))
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

- (void)_setPlayerSegments:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

- (id)timelineSegmentContainingTime:(double)a3 inSegments:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (a3 >= 0.0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v5;
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
          if (a3 < v12)
          {
            v7 = v11;
            goto LABEL_13;
          }

          [v11 duration];
          a3 = a3 - v13;
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

- (id)addBoundaryTimeObserverForDisplayTime:(double)a3 usingMainBlock:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  seconds = 0.0;
  v7 = [(AVKitIntegratedTimeline *)self segmentForDisplayTime:&seconds segmentOffset:a3];
  if (v7)
  {
    v8 = MEMORY[0x1E696B098];
    CMTimeMakeWithSeconds(&v13, seconds, 1000);
    v9 = [v8 valueWithCMTime:&v13];
    v15[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v11 = [(AVKitIntegratedTimeline *)self addBoundaryTimeObserverForSegment:v7 offsetsIntoSegment:v10 queue:MEMORY[0x1E69E96A0] usingBlock:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)timelineSegmentForPlayerInterstitialEvent:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(AVKitIntegratedTimeline *)self timelineSegments];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 playerInterstitialEvent];
          v13 = [v12 identifier];
          if ([v12 isEqual:v5])
          {
            if (!(v6 | v13))
            {
              v13 = 0;
LABEL_17:
              v8 = v11;

              goto LABEL_18;
            }

            if ([v6 isEqualToString:v13])
            {
              goto LABEL_17;
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[AVKitIntegratedTimeline timelineSegmentForPlayerInterstitialEvent:]";
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s error: interstitialEvent not specified", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)segmentForDisplayTime:(double)a3 segmentOffset:(double *)a4
{
  memset(&v12, 0, sizeof(v12));
  CMTimeMakeWithSeconds(&v12, a3, 1000);
  v6 = [(AVPlayerItemIntegratedTimeline *)self->_playerItemIntegratedTimeline currentSnapshot];
  v11 = **&MEMORY[0x1E6960CC0];
  v9 = v12;
  v10 = 0;
  [v6 mapTime:&v9 toSegment:&v10 atSegmentOffset:&v11];
  v7 = v10;
  if (a4)
  {
    v9 = v11;
    *a4 = CMTimeGetSeconds(&v9);
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
  v5 = [(AVKitIntegratedTimeline *)self asciiRepresentation];
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
  v17 = [v11 stringWithFormat:@"%@ [%@] duration = %.1f (%@) %@", v12, v13, v15, v16, v5];

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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_timelineSnapshotNotificationObservation];
  }

  v4.receiver = self;
  v4.super_class = AVKitIntegratedTimeline;
  [(AVKitIntegratedTimeline *)&v4 dealloc];
}

- (AVKitIntegratedTimeline)initWithPlayerItem:(id)a3
{
  v4 = [a3 integratedTimeline];
  if (v4)
  {
    self = [(AVKitIntegratedTimeline *)self initWithAVPlayerItemIntegratedTimeline:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (AVKitIntegratedTimeline)initWithAVPlayerItemIntegratedTimeline:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[AVKitIntegratedTimeline initWithAVPlayerItemIntegratedTimeline:]";
    v24 = 2112;
    v25 = v5;
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

    objc_storeStrong(&v8->_playerItemIntegratedTimeline, a3);
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
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = [MEMORY[0x1E696ADC8] mainQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__AVKitIntegratedTimeline_initWithAVPlayerItemIntegratedTimeline___block_invoke;
    v19[3] = &unk_1E7208898;
    objc_copyWeak(&v20, buf);
    v16 = [v14 addObserverForName:*MEMORY[0x1E69879E0] object:v5 queue:v15 usingBlock:v19];
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