@interface BKAudiobookPlayer
+ (BKAudiobookPlayer)sharedInstance;
+ (float)playbackRateFrom:(int64_t)a3;
+ (id)testInstance;
+ (int64_t)playbackSpeedFrom:(float)a3;
- (BKAudiobookBufferInfo)bufferInfo;
- (BKAudiobookChapter)currentChapter;
- (BKAudiobookPlayer)init;
- (BKAudiobookTrack)currentTrack;
- (BOOL)_setCurrentChapterIndex:(unint64_t)a3 offset:(double)a4 completion:(id)a5;
- (BOOL)isLoadingResources;
- (BOOL)isPlaying;
- (BOOL)isPositionValid;
- (BOOL)isScrubbing;
- (BOOL)isStalling;
- (BOOL)isStreaming;
- (BOOL)nextChapterOrRestartAudiobook;
- (BOOL)playChapterAtIndex:(unint64_t)a3;
- (BOOL)playChapterAtIndex:(unint64_t)a3 offset:(double)a4;
- (BOOL)playNextChapter;
- (BOOL)playPreviousChapter;
- (BOOL)previousChapterOrRestartChapter;
- (NSError)lastError;
- (NSNumber)timeRemainingInBuffer;
- (_NSRange)currentChapterRange;
- (double)durationOfCurrentChapter;
- (double)durationOfCurrentTrack;
- (double)pausedDuration;
- (double)positionInCurrentAudiobook;
- (double)positionInCurrentChapter;
- (double)positionInCurrentTrack;
- (double)timeRemainingInCurrentAudiobook;
- (double)timeRemainingInCurrentChapter;
- (double)timeRemainingInCurrentTrack;
- (float)playbackRate;
- (float)volume;
- (id)_playerErrorWithPlayer:(id)a3 error:(id)a4;
- (id)_stateString;
- (id)allObservers;
- (id)mediaItem;
- (int64_t)state;
- (unint64_t)_chapterAtOffset:(double)a3 inTrack:(unint64_t)a4;
- (void)_addTimeObserversForTrack:(id)a3;
- (void)_configureAudioSession;
- (void)_resetPlayer:(id)a3;
- (void)_sendArtworkDidChangeTo:(id)a3;
- (void)_sendAudiobookDidChange;
- (void)_sendAudiobookWillChange;
- (void)_sendBufferedTimeRangesDidChange;
- (void)_sendChapterDidChange;
- (void)_sendCurrentPositionDidChange;
- (void)_sendIsScrubbing;
- (void)_sendIsStallingAndIsLoadingResources;
- (void)_sendPlaybackRateDidChange;
- (void)_sendPlayerFailedWithError:(id)a3;
- (void)_sendPlayerStalledWithError:(id)a3;
- (void)_sendReachedEndOfAudiobook;
- (void)_sendStateDidChangeFrom:(int64_t)a3 to:(int64_t)a4;
- (void)_setCurrentPosition:(double)a3 track:(unint64_t)a4 chapter:(unint64_t)a5 completion:(id)a6;
- (void)_setCurrentTrackIndex:(unint64_t)a3 offset:(double)a4 completion:(id)a5;
- (void)_updatePlayerWithOffsetInTrack:(double)a3 chapterIndex:(unint64_t)a4 hasTrackChanged:(BOOL)a5 changedArtworkBlock:(id)a6 currentTimeCompletion:(id)a7;
- (void)_updateTimeBeforeCurrentTrackWithTrackIndex:(unint64_t)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)decrementPrecisionRate;
- (void)fadeIn:(double)a3;
- (void)fadeOut:(double)a3;
- (void)incrementPrecisionRate;
- (void)movePositionInCurrentAudiobook:(double)a3 completion:(id)a4;
- (void)movePositionInCurrentChapter:(double)a3 completion:(id)a4;
- (void)pause;
- (void)play;
- (void)player:(id)a3 bitrateChangedFrom:(float)a4 to:(float)a5;
- (void)player:(id)a3 didReachPosition:(double)a4;
- (void)player:(id)a3 failedWithError:(id)a4;
- (void)player:(id)a3 loadedTimeRangesDidChange:(id)a4 durations:(id)a5;
- (void)player:(id)a3 loadingResourcesStateDidChange:(BOOL)a4;
- (void)player:(id)a3 playbackStalledWithError:(id)a4;
- (void)player:(id)a3 positionDidChange:(double)a4;
- (void)player:(id)a3 stallingStateDidChange:(BOOL)a4;
- (void)player:(id)a3 stateChangedFrom:(int64_t)a4 to:(int64_t)a5;
- (void)player:(id)a3 volumeDidChange:(float)a4;
- (void)playerCurrentItemEnded:(id)a3;
- (void)playerWasInterrupted:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setCurrentAudiobook:(id)a3 initialPosition:(double)a4;
- (void)setPlaybackRate:(float)a3;
- (void)setPlaybackSpeed:(int64_t)a3;
- (void)setVolume:(float)a3;
- (void)stop;
- (void)togglePlayPause;
@end

@implementation BKAudiobookPlayer

+ (BKAudiobookPlayer)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_19754;
  block[3] = &unk_3D090;
  block[4] = a1;
  if (qword_47A60 != -1)
  {
    dispatch_once(&qword_47A60, block);
  }

  v2 = qword_47A68;

  return v2;
}

+ (id)testInstance
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (BKAudiobookPlayer)init
{
  v18.receiver = self;
  v18.super_class = BKAudiobookPlayer;
  v2 = [(BKAudiobookPlayer *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = +[NSHashTable weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v4;

    [(BKAudiobookPlayer *)v3 _configureAudioSession];
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    *&v3->_currentTrackIndex = vnegq_f64(v6);
    v7 = [[BKAudiobookSkipController alloc] initWithAudiobookControls:v3];
    skipController = v3->_skipController;
    v3->_skipController = v7;

    [(BKAudiobookSkipController *)v3->_skipController setBaseEventInterval:0.4];
    [(BKAudiobookSkipController *)v3->_skipController accelerateToInterval:6 afterEventCount:0.2];
    [(BKAudiobookSkipController *)v3->_skipController setPlaySkipSoundEffect:1];
    v3->_audibleDRMGroupID = -1;
    v3->_secondsToRewindAfterInterruption = 0;
    standardRates = v3->_standardRates;
    v3->_standardRates = &off_3E0A8;

    precisionRates = v3->_precisionRates;
    v3->_precisionRates = &off_3E0C0;

    v3->_playbackSpeed = -1;
    [(BKAudiobookPlayer *)v3 _initialVolume];
    v3->_volume = v11;
    v12 = objc_alloc_init(BKAudiobookPlayerDataSource);
    dataSource = v3->_dataSource;
    v3->_dataSource = v12;

    [(BKAudiobookPlayerDataSource *)v3->_dataSource setDelegate:v3];
    v14 = objc_opt_new();
    bufferProducer = v3->_bufferProducer;
    v3->_bufferProducer = v14;

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v3 selector:"_resetPlayer:" name:AVAudioSessionMediaServicesWereResetNotification object:0];
  }

  return v3;
}

- (void)dealloc
{
  [(BKAudiobookPlayer *)self stop];
  [(BKAudiobookPlayer *)self setObservers:0];
  v3 = [(BKAudiobookPlayer *)self player];
  [v3 setDelegate:0];

  [(BKAudiobookPlayer *)self setPlayer:0];
  v4.receiver = self;
  v4.super_class = BKAudiobookPlayer;
  [(BKAudiobookPlayer *)&v4 dealloc];
}

- (NSError)lastError
{
  v2 = [(BKAudiobookPlayer *)self player];
  v3 = [v2 lastError];

  return v3;
}

- (void)setCurrentAudiobook:(id)a3 initialPosition:(double)a4
{
  v7 = a3;
  if (self->_currentAudiobook != v7)
  {
    [(BKAudiobookPlayer *)self _sendAudiobookWillChange];
    v8 = [(BKAudiobookPlayer *)self player];
    [v8 setDelegate:0];

    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    *&self->_currentTrackIndex = vnegq_f64(v9);
    objc_storeStrong(&self->_currentAudiobook, a3);
    if (v7)
    {
      v10 = [(BKAudiobookPlayer *)self player];

      if (!v10)
      {
        v11 = [BKAVPlayer alloc];
        v12 = [(BKAudiobookPlayer *)self dataSource];
        v13 = [(BKAVPlayer *)v11 initWithResourceLoader:v12];
        [(BKAudiobookPlayer *)self setPlayer:v13];

        [(BKAudiobookPlayer *)self volume];
        v15 = v14;
        v16 = [(BKAudiobookPlayer *)self player];
        LODWORD(v17) = v15;
        [v16 setVolume:v17];

        v18 = [(BKAudiobookPlayer *)self player];
        [v18 playbackRate];
        v19 = [BKAudiobookPlayer playbackSpeedFrom:?];

        if (v19 != -1)
        {
          self->_playbackSpeed = v19;
        }

        v20 = [(BKAudiobookPlayer *)self player];
        [v20 playbackRate];
        [(BKAudiobookPlayer *)self setPlaybackRate:?];
      }
    }

    else
    {
      [(BKAudiobookPlayer *)self setPlayer:0];
    }

    v21 = [(BKAudiobookPlayer *)self player];
    [v21 setDelegate:self];

    v22 = BKAudiobooksLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [(BKAudiobook *)self->_currentAudiobook title];
      *buf = 138412546;
      v36 = v23;
      v37 = 2048;
      v38 = a4;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "setCurrentAudiobook: %@ initialPosition:%.1lf", buf, 0x16u);
    }

    self->_durationOfCurrentAudiobook = 0.0;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = [(BKAudiobook *)self->_currentAudiobook tracks];
    v25 = [v24 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v31;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [*(*(&v30 + 1) + 8 * i) duration];
          self->_durationOfCurrentAudiobook = v29 + self->_durationOfCurrentAudiobook;
        }

        v26 = [v24 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v26);
    }

    [(BKAudiobookPlayer *)self movePositionInCurrentAudiobook:0 completion:a4];
    [(BKAudiobookPlayer *)self setListeningSessionStartTime:a4];
    [(BKAudiobookPlayer *)self _sendAudiobookDidChange];
  }
}

- (BOOL)isStreaming
{
  v2 = [(BKAudiobookPlayer *)self player];
  v3 = [v2 isStreaming];

  return v3;
}

- (BOOL)isStalling
{
  v2 = [(BKAudiobookPlayer *)self player];
  v3 = [v2 isStalling];

  return v3;
}

- (BOOL)isLoadingResources
{
  v2 = [(BKAudiobookPlayer *)self player];
  v3 = [v2 isLoadingResources];

  return v3;
}

- (NSNumber)timeRemainingInBuffer
{
  v3 = [(BKAudiobookPlayer *)self bufferProducer];
  [(BKAudiobookPlayer *)self positionInCurrentTrack];
  v4 = [v3 timeRemainingInBufferFromTrackPosition:?];

  return v4;
}

- (BKAudiobookBufferInfo)bufferInfo
{
  v2 = [(BKAudiobookPlayer *)self bufferProducer];
  v3 = [v2 bufferInfo];

  return v3;
}

- (BKAudiobookTrack)currentTrack
{
  [(BKAudiobookPlayer *)self currentTrackIndex];
  v3 = [(BKAudiobookPlayer *)self currentTrackIndex];
  v4 = [(BKAudiobookPlayer *)self currentAudiobook];
  v5 = [v4 tracks];
  v6 = [v5 count];

  if (v3 >= v6)
  {
    v10 = BKAudiobooksLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_21AE4();
    }

    v9 = 0;
  }

  else
  {
    v7 = [(BKAudiobookPlayer *)self currentAudiobook];
    v8 = [v7 tracks];
    v9 = [v8 objectAtIndexedSubscript:{-[BKAudiobookPlayer currentTrackIndex](self, "currentTrackIndex")}];
  }

  return v9;
}

- (BKAudiobookChapter)currentChapter
{
  if (self->_currentAudiobook)
  {
    [(BKAudiobookPlayer *)self currentChapterIndex];
    v3 = [(BKAudiobookPlayer *)self currentChapterIndex];
    v4 = [(BKAudiobookPlayer *)self currentAudiobook];
    v5 = [v4 chapters];
    v6 = [v5 count];

    if (v3 < v6)
    {
      v7 = [(BKAudiobookPlayer *)self currentAudiobook];
      v8 = [v7 chapters];
      v9 = [v8 objectAtIndexedSubscript:{-[BKAudiobookPlayer currentChapterIndex](self, "currentChapterIndex")}];

      goto LABEL_11;
    }

    v10 = [(BKAudiobookPlayer *)self currentChapterIndex];
    v11 = BKAudiobooksLog();
    v12 = v11;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "current chapter requested but not set", v14, 2u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_21B94();
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)_addTimeObserversForTrack:(id)a3
{
  v4 = a3;
  v5 = [(BKAudiobookPlayer *)self player];
  [v5 removeAllTimeObservers];

  v6 = objc_opt_new();
  v7 = [v4 alternateArtworkTimes];
  v8 = [v7 objectEnumerator];

  v9 = [v4 chapters];
  v10 = [v9 objectEnumerator];

  v11 = [v8 nextObject];
  v12 = [v10 nextObject];
  v13 = v12;
  while (v11 && v13)
  {
    [v13 timeRangeInTrack];
    time = v41;
    v14 = [NSNumber numberWithDouble:CMTimeGetSeconds(&time)];
    [v11 doubleValue];
    v16 = v15;
    [v14 doubleValue];
    if (vabdd_f64(v16, v17) >= 0.01)
    {
      [v11 doubleValue];
      v22 = v21;
      [v14 doubleValue];
      if (v22 >= v23)
      {
        [v6 addObject:v14];
        v25 = [v10 nextObject];
        v20 = v13;
        v13 = v25;
      }

      else
      {
        [v6 addObject:v11];
        v24 = [v8 nextObject];
        v20 = v11;
        v11 = v24;
      }
    }

    else
    {
      [v6 addObject:v11];
      v18 = [v8 nextObject];

      v19 = [v10 nextObject];
      v20 = v13;
      v13 = v19;
      v11 = v18;
    }
  }

  if (v11)
  {
    do
    {
      [v6 addObject:v11];
      v26 = [v8 nextObject];

      v11 = v26;
    }

    while (v26);
  }

  if (v13)
  {
    do
    {
      [v13 timeRangeInTrack];
      time = v40;
      v27 = [NSNumber numberWithDouble:CMTimeGetSeconds(&time)];
      [v6 addObject:v27];
      v28 = [v10 nextObject];

      v13 = v28;
    }

    while (v28);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = v6;
  v30 = [v29 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v37;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v36 + 1) + 8 * i);
        v35 = [(BKAudiobookPlayer *)self player];
        [v34 doubleValue];
        [v35 addTimeObserver:?];
      }

      v31 = [v29 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v31);
  }
}

- (void)_setCurrentPosition:(double)a3 track:(unint64_t)a4 chapter:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = BKAudiobooksLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v24 = a4;
    v25 = 2048;
    v26 = a5;
    v27 = 2048;
    v28 = a3;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "_setCurrentPosition: (track,chapter,offset) = (%lu,%lu,%f)", buf, 0x20u);
  }

  if (self->_currentTrackIndex == a4)
  {
    [(BKAudiobookPlayer *)self _updatePlayerWithOffsetInTrack:a5 chapterIndex:0 hasTrackChanged:0 changedArtworkBlock:v10 currentTimeCompletion:a3];
  }

  else
  {
    self->_currentTrackIndex = a4;
    v12 = [(BKAudiobookPlayer *)self currentAudiobook];
    v13 = [v12 tracks];
    v14 = [v13 objectAtIndexedSubscript:a4];

    objc_initWeak(buf, self);
    v15 = [(BKAudiobookPlayer *)self player];
    v16 = [v14 assetURL];
    v17 = [(BKAudiobookPlayer *)self audibleDRMGroupID];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1A6C0;
    v19[3] = &unk_3D130;
    objc_copyWeak(v22, buf);
    v18 = v14;
    v20 = v18;
    v22[1] = a4;
    v22[2] = *&a3;
    v22[3] = a5;
    v21 = v10;
    [v15 setAssetURL:v16 audibleDRMGroupID:v17 completion:v19];

    objc_destroyWeak(v22);
    objc_destroyWeak(buf);
  }
}

- (void)_updatePlayerWithOffsetInTrack:(double)a3 chapterIndex:(unint64_t)a4 hasTrackChanged:(BOOL)a5 changedArtworkBlock:(id)a6 currentTimeCompletion:(id)a7
{
  v8 = a5;
  v19 = a6;
  v12 = a7;
  v13 = [(BKAudiobookPlayer *)self player];
  [v13 currentTime];
  v15 = v14;

  if (v15 != a3)
  {
    v16 = [(BKAudiobookPlayer *)self player];
    [v16 setCurrentTime:v12 completion:a3];

    if (self->_currentChapterIndex == a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (self->_currentChapterIndex != a4)
  {
LABEL_6:
    self->_currentChapterIndex = a4;
    [(BKAudiobookPlayer *)self _sendChapterDidChange];
    goto LABEL_7;
  }

  if (!v8)
  {
LABEL_12:
    v17 = objc_retainBlock(v12);
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, 1);
    }

    goto LABEL_15;
  }

LABEL_7:
  if ([(BKAudiobookPlayer *)self isPositionValid])
  {
    [(BKAudiobookPlayer *)self _sendCurrentPositionDidChange];
  }

  if (v8)
  {
    [(BKAudiobookPlayer *)self _sendArtworkDidChangeTo:v19];
  }

  if (v15 == a3)
  {
    goto LABEL_12;
  }

LABEL_15:
}

- (void)_updateTimeBeforeCurrentTrackWithTrackIndex:(unint64_t)a3
{
  self->_timeBeforeCurrentTrack = 0.0;
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      v6 = [(BKAudiobook *)self->_currentAudiobook tracks];
      v7 = [v6 objectAtIndexedSubscript:i];
      [v7 duration];
      self->_timeBeforeCurrentTrack = v8 + self->_timeBeforeCurrentTrack;
    }
  }
}

- (void)_setCurrentTrackIndex:(unint64_t)a3 offset:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(BKAudiobookPlayer *)self currentAudiobook];
  v10 = [v9 tracks];
  v11 = [v10 count];

  if (v11 <= a3)
  {
    v16 = BKAudiobooksLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_21C44();
    }

    v17 = objc_retainBlock(v8);
    v14 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, 0);
    }
  }

  else
  {
    v12 = [(BKAudiobookPlayer *)self currentAudiobook];
    v13 = [v12 tracks];
    v14 = [v13 objectAtIndexedSubscript:a3];

    [v14 duration];
    if (v15 <= a4)
    {
      v18 = BKAudiobooksLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_21CB4();
      }

      v19 = objc_retainBlock(v8);
      v20 = v19;
      if (v19)
      {
        (*(v19 + 2))(v19, 0);
      }
    }

    else
    {
      [(BKAudiobookPlayer *)self _setCurrentPosition:a3 track:[(BKAudiobookPlayer *)self _chapterAtOffset:a3 inTrack:a4] chapter:v8 completion:a4];
    }
  }
}

- (BOOL)_setCurrentChapterIndex:(unint64_t)a3 offset:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(BKAudiobookPlayer *)self currentAudiobook];
  v10 = [v9 chapters];
  v11 = [v10 count];

  if (v11 <= a3)
  {
    v16 = BKAudiobooksLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_21D28();
    }

    v17 = objc_retainBlock(v8);
    v14 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, 0);
    }

    goto LABEL_14;
  }

  v12 = [(BKAudiobookPlayer *)self currentAudiobook];
  v13 = [v12 chapters];
  v14 = [v13 objectAtIndexedSubscript:a3];

  [v14 duration];
  if (v15 <= a4)
  {
    v18 = BKAudiobooksLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_21D98();
    }

    v19 = objc_retainBlock(v8);
    v20 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19, 0);
    }

LABEL_14:
    v21 = 0;
    goto LABEL_17;
  }

  if (v14)
  {
    [v14 timeRangeInTrack];
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
  }

  time = v23;
  -[BKAudiobookPlayer _setCurrentPosition:track:chapter:completion:](self, "_setCurrentPosition:track:chapter:completion:", [v14 albumTrackNumber], a3, v8, CMTimeGetSeconds(&time) + a4);
  v21 = 1;
LABEL_17:

  return v21;
}

- (double)positionInCurrentAudiobook
{
  [(BKAudiobookPlayer *)self timeBeforeCurrentTrack];
  v4 = v3;
  [(BKAudiobookPlayer *)self positionInCurrentTrack];
  result = v4 + v5;
  if (self->_durationOfCurrentAudiobook < result)
  {
    return self->_durationOfCurrentAudiobook;
  }

  return result;
}

- (void)movePositionInCurrentAudiobook:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(BKAudiobookPlayer *)self currentAudiobook];
  v8 = [v7 tracks];

  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0.0;
    while (1)
    {
      v13 = [v8 objectAtIndexedSubscript:v11];
      [v13 duration];
      v15 = v12 + v14;
      if (v12 <= a3 && v15 > a3)
      {
        break;
      }

      ++v11;
      v12 = v15;
      if (v10 == v11)
      {
        goto LABEL_9;
      }
    }

    [(BKAudiobookPlayer *)self _setCurrentTrackIndex:v11 offset:v6 completion:a3 - v12];
  }

  else
  {
LABEL_9:
    v17 = BKAudiobooksLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_21E0C(self);
    }

    [(BKAudiobookPlayer *)self _setCurrentTrackIndex:0 offset:v6 completion:0.0];
  }
}

- (double)timeRemainingInCurrentAudiobook
{
  [(BKAudiobookPlayer *)self durationOfCurrentAudiobook];
  v4 = v3;
  [(BKAudiobookPlayer *)self positionInCurrentAudiobook];
  return v4 - v5;
}

- (double)positionInCurrentTrack
{
  v2 = [(BKAudiobookPlayer *)self player];
  [v2 currentTime];
  v4 = v3;

  return v4;
}

- (BOOL)isPositionValid
{
  v2 = [(BKAudiobookPlayer *)self player];
  v3 = [v2 isCurrentTimeValid];

  return v3;
}

- (double)durationOfCurrentTrack
{
  v2 = [(BKAudiobookPlayer *)self currentTrack];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (double)timeRemainingInCurrentTrack
{
  [(BKAudiobookPlayer *)self durationOfCurrentTrack];
  v4 = v3;
  [(BKAudiobookPlayer *)self positionInCurrentTrack];
  return v4 - v5;
}

- (double)pausedDuration
{
  v3 = [(BKAudiobookPlayer *)self pausedTime];
  if (v3)
  {
    v4 = +[NSDate date];
    v5 = [(BKAudiobookPlayer *)self pausedTime];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (double)positionInCurrentChapter
{
  v3 = [(BKAudiobookPlayer *)self currentChapter];
  v4 = v3;
  if (v3)
  {
    [v3 timeRangeInTrack];
  }

  else
  {
    v10 = 0u;
    memset(v9, 0, sizeof(v9));
  }

  time = *v9;
  Seconds = CMTimeGetSeconds(&time);
  [(BKAudiobookPlayer *)self positionInCurrentTrack:Seconds];
  v7 = v6 - Seconds;

  return v7;
}

- (void)movePositionInCurrentChapter:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(BKAudiobookPlayer *)self currentChapter];
  v8 = v7;
  if (a3 < 0.0 || ([v7 duration], v9 <= a3))
  {
    v10 = BKAudiobooksLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_21EB4();
    }

    v11 = objc_retainBlock(v6);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }

  else
  {
    if (v8)
    {
      [v8 timeRangeInTrack];
    }

    else
    {
      memset(&v13, 0, sizeof(v13));
    }

    time = v13;
    [(BKAudiobookPlayer *)self _setCurrentPosition:[(BKAudiobookPlayer *)self currentTrackIndex] track:[(BKAudiobookPlayer *)self currentChapterIndex] chapter:v6 completion:CMTimeGetSeconds(&time) + a3];
  }
}

- (double)timeRemainingInCurrentChapter
{
  [(BKAudiobookPlayer *)self durationOfCurrentChapter];
  v4 = v3;
  [(BKAudiobookPlayer *)self positionInCurrentChapter];
  return v4 - v5;
}

- (double)durationOfCurrentChapter
{
  v2 = [(BKAudiobookPlayer *)self currentChapter];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (void)play
{
  v2 = [(BKAudiobookPlayer *)self player];
  [v2 play];
}

- (void)pause
{
  v2 = [(BKAudiobookPlayer *)self player];
  [v2 pause];
}

- (void)togglePlayPause
{
  v2 = [(BKAudiobookPlayer *)self player];
  [v2 togglePlayPause];
}

- (void)stop
{
  v2 = [(BKAudiobookPlayer *)self player];
  [v2 stop];
}

- (void)fadeIn:(double)a3
{
  v4 = [(BKAudiobookPlayer *)self player];
  [v4 fadeIn:a3];
}

- (void)fadeOut:(double)a3
{
  v4 = [(BKAudiobookPlayer *)self player];
  [v4 fadeOut:a3];
}

- (BOOL)playChapterAtIndex:(unint64_t)a3
{
  v5 = [(BKAudiobookPlayer *)self currentAudiobook];
  v6 = [v5 chapters];
  v7 = [v6 count];

  if (v7 <= a3)
  {
    v8 = BKAudiobooksLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_21F30(self);
    }

    return 0;
  }

  else
  {

    return [(BKAudiobookPlayer *)self playChapterAtIndex:a3 offset:0.0];
  }
}

- (BOOL)playChapterAtIndex:(unint64_t)a3 offset:(double)a4
{
  v7 = BKAudiobooksLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218240;
    v11 = a3;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "playChapterAtIndex:%lu offset:%f", &v10, 0x16u);
  }

  v8 = [(BKAudiobookPlayer *)self _setCurrentChapterIndex:a3 offset:0 completion:a4];
  if (v8)
  {
    [(BKAudiobookPlayer *)self play];
  }

  return v8;
}

- (BOOL)playNextChapter
{
  v3 = [(BKAudiobookPlayer *)self currentAudiobook];

  if (v3)
  {
    v4 = self->_currentChapterIndex + 1;
    v5 = [(BKAudiobookPlayer *)self currentAudiobook];
    v6 = [v5 chapters];
    v7 = [v6 count];

    if (v4 < v7)
    {
      [(BKAudiobookPlayer *)self playChapterAtIndex:v4];
      return 1;
    }

    v9 = BKAudiobooksLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BKAudiobookPlayer stopping playback because there are no remaining chapters", v10, 2u);
    }

    [(BKAudiobookPlayer *)self stop];
  }

  return 0;
}

- (BOOL)playPreviousChapter
{
  v3 = [(BKAudiobookPlayer *)self currentAudiobook];
  if (v3)
  {
    currentChapterIndex = self->_currentChapterIndex;

    if (currentChapterIndex)
    {
      [(BKAudiobookPlayer *)self playChapterAtIndex:self->_currentChapterIndex - 1];
      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)previousChapterOrRestartChapter
{
  v2 = +[BKAudiobookPlayer sharedInstance];
  [v2 positionInCurrentChapter];
  if (v3 <= 5.0 && [v2 currentChapterIndex])
  {
    v4 = BKAudiobooksLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Within threshold. Going to previous chapter.", buf, 2u);
    }

    [v2 setCurrentChapterIndex:{objc_msgSend(v2, "currentChapterIndex") - 1}];
  }

  else
  {
    v5 = BKAudiobooksLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Outside of threshold or no previous chapter. Restarting chapter.", v7, 2u);
    }

    [v2 movePositionInCurrentChapter:0 completion:0.0];
  }

  return 1;
}

- (BOOL)nextChapterOrRestartAudiobook
{
  v2 = +[BKAudiobookPlayer sharedInstance];
  v3 = [v2 currentChapterIndex];
  v4 = [v2 currentAudiobook];
  v5 = [v4 chapters];
  v6 = [v5 count] - 1;

  v7 = BKAudiobooksLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v3 >= v6)
  {
    if (v8)
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "At the last chapter. Restarting from beginning.", v11, 2u);
    }

    v9 = 0;
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Going to next chapter.", buf, 2u);
    }

    v9 = [v2 currentChapterIndex] + 1;
  }

  [v2 setCurrentChapterIndex:v9];

  return 1;
}

- (int64_t)state
{
  v2 = [(BKAudiobookPlayer *)self player];
  v3 = [v2 state];

  return v3;
}

- (BOOL)isPlaying
{
  v2 = [(BKAudiobookPlayer *)self player];
  v3 = [v2 isPlaying];

  return v3;
}

- (BOOL)isScrubbing
{
  v2 = [(BKAudiobookPlayer *)self player];
  v3 = [v2 isScrubbing];

  return v3;
}

- (float)playbackRate
{
  v2 = [(BKAudiobookPlayer *)self player];
  [v2 playbackRate];
  v4 = v3;

  return v4;
}

- (void)setPlaybackRate:(float)a3
{
  v5 = [(BKAudiobookPlayer *)self player];
  *&v6 = a3;
  [v5 setPlaybackRate:v6];

  *&v7 = a3;
  v8 = [BKAudiobookPlayer playbackSpeedFrom:v7];
  if (v8 != -1)
  {
    self->_playbackSpeed = v8;
  }

  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1BC80;
  v9[3] = &unk_3C818;
  objc_copyWeak(&v10, &location);
  dispatch_async(&_dispatch_main_q, v9);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)incrementPrecisionRate
{
  v3 = [(BKAudiobookPlayer *)self player];
  [v3 playbackRate];
  v5 = v4;

  v6 = [(BKAudiobookPlayer *)self precisionRates];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1BE04;
  v13[3] = &unk_3D150;
  v14 = v5;
  v7 = [v6 indexOfObjectPassingTest:v13];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = BKAudiobooksLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_21FEC();
    }
  }

  else
  {
    v9 = [(BKAudiobookPlayer *)self precisionRates];
    v10 = [v9 count] - 1;

    if (v7 == v10)
    {
      v11 = v7;
    }

    else
    {
      v11 = v7 + 1;
    }

    v8 = [(BKAudiobookPlayer *)self precisionRates];
    v12 = [v8 objectAtIndexedSubscript:v11];
    [v12 floatValue];
    [(BKAudiobookPlayer *)self setPlaybackRate:?];
  }
}

- (void)decrementPrecisionRate
{
  v3 = [(BKAudiobookPlayer *)self player];
  [v3 playbackRate];
  v5 = v4;

  v6 = [(BKAudiobookPlayer *)self precisionRates];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1BF8C;
  v10[3] = &unk_3D150;
  v11 = v5;
  v7 = [v6 indexOfObjectPassingTest:v10];

  if (!v7)
  {
    goto LABEL_6;
  }

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    --v7;
LABEL_6:
    v8 = [(BKAudiobookPlayer *)self precisionRates];
    v9 = [v8 objectAtIndexedSubscript:v7];
    [v9 floatValue];
    [(BKAudiobookPlayer *)self setPlaybackRate:?];

    goto LABEL_7;
  }

  v8 = BKAudiobooksLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_22064();
  }

LABEL_7:
}

- (float)volume
{
  v3 = [(BKAudiobookPlayer *)self player];
  v4 = v3;
  if (v3)
  {
    [v3 volume];
    volume = v5;
  }

  else
  {
    volume = self->_volume;
  }

  return volume;
}

- (void)setVolume:(float)a3
{
  if (self->_volume != a3)
  {
    self->_volume = a3;
    v5 = [(BKAudiobookPlayer *)self player];
    *&v4 = a3;
    [v5 setVolume:v4];
  }
}

- (void)setPlaybackSpeed:(int64_t)a3
{
  [BKAudiobookPlayer playbackRateFrom:a3];

  [(BKAudiobookPlayer *)self setPlaybackRate:?];
}

+ (float)playbackRateFrom:(int64_t)a3
{
  result = 0.0;
  if (a3 <= 1)
  {
    if (a3 == -1)
    {
      v6 = BKAudiobooksLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_220DC();
      }

      return 1.0;
    }

    else
    {
      if (a3 == 1)
      {
        result = 1.0;
      }

      if (!a3)
      {
        return 0.75;
      }
    }
  }

  else
  {
    v4 = 1.75;
    v5 = 2.0;
    if (a3 != 5)
    {
      v5 = 0.0;
    }

    if (a3 != 4)
    {
      v4 = v5;
    }

    if (a3 == 3)
    {
      result = 1.5;
    }

    if (a3 == 2)
    {
      result = 1.25;
    }

    if (a3 > 3)
    {
      return v4;
    }
  }

  return result;
}

+ (int64_t)playbackSpeedFrom:(float)a3
{
  v3 = a3;
  if (fabs(v3 + -0.75) < 0.00999999978)
  {
    return 0;
  }

  if (fabs(v3 + -1.0) < 0.00999999978)
  {
    return 1;
  }

  if (fabs(v3 + -1.25) < 0.00999999978)
  {
    return 2;
  }

  if (fabs(v3 + -1.5) < 0.00999999978)
  {
    return 3;
  }

  if (fabs(v3 + -1.75) < 0.00999999978)
  {
    return 4;
  }

  if (fabs(v3 + -2.0) >= 0.00999999978)
  {
    return -1;
  }

  return 5;
}

- (void)_configureAudioSession
{
  v2 = BKAudiobooksLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "_configureAudioSession", v4, 2u);
  }

  v3 = +[AVAudioSession sharedInstance];
  [v3 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeSpokenAudio routeSharingPolicy:1 options:0 error:0];
}

- (void)_resetPlayer:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1C484;
  v8[3] = &unk_3C818;
  objc_copyWeak(&v9, &location);
  v5 = objc_retainBlock(v8);
  if (v5)
  {
    if (+[NSThread isMainThread])
    {
      (v5[2])(v5);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1C4EC;
      block[3] = &unk_3C6B0;
      v7 = v5;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (unint64_t)_chapterAtOffset:(double)a3 inTrack:(unint64_t)a4
{
  v7 = BKAudiobooksLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_22118();
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  memset(&v14, 0, sizeof(v14));
  CMTimeMake(&v14, ((a3 + 0.001) * 1000.0), 1000);
  v8 = [(BKAudiobookPlayer *)self currentAudiobook];
  v9 = [v8 chapters];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1C670;
  v12[3] = &unk_3D178;
  v13 = v14;
  v12[4] = &v15;
  v12[5] = a4;
  [v9 enumerateObjectsUsingBlock:v12];
  v10 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v10;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(BKAudiobookPlayer *)self observers];
  [v5 addObject:v4];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(BKAudiobookPlayer *)self observers];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (id)allObservers
{
  os_unfair_lock_lock(&self->_accessLock);
  v3 = [(BKAudiobookPlayer *)self observers];
  v4 = [v3 allObjects];

  os_unfair_lock_unlock(&self->_accessLock);

  return v4;
}

- (void)_sendAudiobookWillChange
{
  v3 = BKAudiobooksLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BKAudiobookPlayer *)self currentAudiobook];
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "observer: audiobook will change = %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(BKAudiobookPlayer *)self allObservers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(BKAudiobookPlayer *)self currentAudiobook];
          [v10 player:self audiobookWillChange:v11];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_sendAudiobookDidChange
{
  v3 = BKAudiobooksLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BKAudiobookPlayer *)self currentAudiobook];
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "observer: audiobook did change = %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(BKAudiobookPlayer *)self allObservers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(BKAudiobookPlayer *)self currentAudiobook];
          [v10 player:self audiobookDidChange:v11];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_sendChapterDidChange
{
  v3 = BKAudiobooksLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = [(BKAudiobookPlayer *)self currentChapterIndex];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "observer: chapter = %lu", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(BKAudiobookPlayer *)self allObservers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = [(BKAudiobookPlayer *)self currentChapter];
          [v9 player:self chapterDidChange:v10];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(BKAudiobookPlayer *)self _sendBufferedTimeRangesDidChange];
}

- (void)_sendArtworkDidChangeTo:(id)a3
{
  v4 = a3;
  if (self->_supportsAlternateArtwork)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(BKAudiobookPlayer *)self allObservers];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = 0;
      v10 = *v16;
      *&v7 = 134217984;
      v14 = v7;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            if (v4 && !v9)
            {
              v13 = BKAudiobooksLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v14;
                v20 = 0;
                _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "observer: artwork = %p", buf, 0xCu);
              }

              v9 = v4[2](v4);
            }

            [v12 player:self artworkDidChange:{v9, v14}];
          }

          v11 = v11 + 1;
        }

        while (v8 != v11);
        v8 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v8);
    }
  }
}

- (id)_stateString
{
  v2 = [(BKAudiobookPlayer *)self state];
  if ((v2 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_3D1C0[v2 - 1];
  }
}

- (void)_sendStateDidChangeFrom:(int64_t)a3 to:(int64_t)a4
{
  v7 = BKAudiobooksLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(BKAudiobookPlayer *)self _stateString];
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "observer: state = %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(BKAudiobookPlayer *)self allObservers];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 player:self stateDidChangeFrom:a3 to:a4];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)_sendCurrentPositionDidChange
{
  v3 = BKAudiobooksLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_22190(self);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BKAudiobookPlayer *)self allObservers];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [(BKAudiobookPlayer *)self positionInCurrentChapter];
          v11 = v10;
          v12 = [(BKAudiobookPlayer *)self currentChapterIndex];
          [(BKAudiobookPlayer *)self positionInCurrentAudiobook];
          [v9 player:self currentPositionDidChange:v12 inChapter:v11 absolutePosition:v13];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)_sendPlaybackRateDidChange
{
  v3 = BKAudiobooksLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [(BKAudiobookPlayer *)self positionInCurrentChapter];
    *buf = 134217984;
    v17 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "observer: position = %f", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(BKAudiobookPlayer *)self allObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [(BKAudiobookPlayer *)self playbackRate];
          [v10 player:self playbackRateDidChange:?];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_sendPlayerFailedWithError:(id)a3
{
  v4 = a3;
  v5 = BKAudiobooksLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22208();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(BKAudiobookPlayer *)self allObservers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 player:self failedWithError:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_sendPlayerStalledWithError:(id)a3
{
  v4 = a3;
  v5 = BKAudiobooksLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22278();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(BKAudiobookPlayer *)self allObservers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 player:self playbackStalledWithError:v4];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_sendReachedEndOfAudiobook
{
  v3 = BKAudiobooksLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BKAudiobookPlayer *)self currentAudiobook];
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "observer: audiobook = %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(BKAudiobookPlayer *)self allObservers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(BKAudiobookPlayer *)self currentAudiobook];
          [v10 player:self reachedEndOfAudiobook:v11];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_sendIsScrubbing
{
  v3 = BKAudiobooksLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_222E8(self);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(BKAudiobookPlayer *)self allObservers];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 player:self isScrubbing:{-[BKAudiobookPlayer isScrubbing](self, "isScrubbing")}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_sendIsStallingAndIsLoadingResources
{
  v3 = BKAudiobooksLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_222E8(self);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BKAudiobookPlayer *)self allObservers];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = [(BKAudiobookPlayer *)self player];
          v11 = [v10 isStalling];
          v12 = [(BKAudiobookPlayer *)self player];
          [v9 player:self isStalling:v11 isLoadingResources:{objc_msgSend(v12, "isLoadingResources")}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_sendBufferedTimeRangesDidChange
{
  v3 = [(BKAudiobookPlayer *)self bufferProducer];
  v4 = [(BKAudiobookPlayer *)self currentChapter];
  v5 = [(BKAudiobookPlayer *)self bufferedStartTimes];
  v6 = [(BKAudiobookPlayer *)self bufferedDurations];
  [v3 updateWithChapter:v4 bufferedTrackPositions:v5 bufferedTrackDurations:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(BKAudiobookPlayer *)self allObservers];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [(BKAudiobookPlayer *)self currentChapterIndex];
          v14 = [(BKAudiobookPlayer *)self bufferInfo];
          [v12 player:self bufferedPositionsDidChangeInChapter:v13 bufferInfo:v14];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)player:(id)a3 stateChangedFrom:(int64_t)a4 to:(int64_t)a5
{
  v8 = a3;
  v9 = BKAudiobooksLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromBKAudiobookPlayerState(a4);
    v11 = NSStringFromBKAudiobookPlayerState(a5);
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Player state changed from %@ to %@", &v14, 0x16u);
  }

  v12 = [(BKAudiobookPlayer *)self player];

  if (v12 == v8)
  {
    if (a5 >= 3)
    {
      if (a5 == 3)
      {
        if (a4 != 3)
        {
          v13 = +[NSDate date];
          [(BKAudiobookPlayer *)self setPausedTime:v13];
        }

        goto LABEL_9;
      }

      if (a5 != 4)
      {
LABEL_9:
        [(BKAudiobookPlayer *)self _sendStateDidChangeFrom:a4 to:a5];
        return;
      }

      [(BKAudiobookPlayer *)self setCurrentTrackIndex:0];
    }

    [(BKAudiobookPlayer *)self setPausedTime:0];
    goto LABEL_9;
  }
}

- (void)player:(id)a3 positionDidChange:(double)a4
{
  v5 = a3;
  v6 = [(BKAudiobookPlayer *)self player];

  if (v6 == v5)
  {

    [(BKAudiobookPlayer *)self _sendCurrentPositionDidChange];
  }
}

- (void)player:(id)a3 failedWithError:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(BKAudiobookPlayer *)self player];

  if (v7 == v9)
  {
    v8 = [(BKAudiobookPlayer *)self _playerErrorWithPlayer:v9 error:v6];
    [(BKAudiobookPlayer *)self _sendPlayerFailedWithError:v8];
  }
}

- (void)player:(id)a3 playbackStalledWithError:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(BKAudiobookPlayer *)self player];

  if (v7 == v9)
  {
    v8 = [(BKAudiobookPlayer *)self _playerErrorWithPlayer:v9 error:v6];
    [(BKAudiobookPlayer *)self _sendPlayerStalledWithError:v8];
  }
}

- (id)_playerErrorWithPlayer:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = [a3 assetNetworkError];
  if (v6)
  {
    v7 = BKAudiobooksLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2236C();
    }

    v8 = v5;
    v9 = 1;
    v5 = v6;
LABEL_5:

    v10 = 0;
    goto LABEL_13;
  }

  v11 = [v5 domain];
  v12 = [v11 isEqualToString:AVFoundationErrorDomain];

  if (v12)
  {
    v13 = [v5 code];
    if (v13 == -11819)
    {
      v8 = BKAudiobooksLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22410();
      }

      v9 = 3;
      goto LABEL_5;
    }

    if (v13 == -11835)
    {
      v8 = BKAudiobooksLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_2244C();
      }

      v9 = 2;
      goto LABEL_5;
    }
  }

  v9 = 0;
  v10 = 1;
LABEL_13:
  v14 = [v5 domain];
  if (![v14 isEqualToString:BLErrorDomain])
  {

    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_23:
    v18 = BKAudiobooksLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22488();
    }

    v9 = 0;
    if (v5)
    {
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v15 = [v5 code];

  if (v15 == stru_20.segname)
  {
    v16 = 0;
  }

  else
  {
    v16 = v10;
  }

  if (v15 == stru_20.segname)
  {
    v9 = 5;
  }

  if (v16)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (v5)
  {
LABEL_21:
    v21 = NSUnderlyingErrorKey;
    v22 = v5;
    v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    goto LABEL_27;
  }

LABEL_26:
  v17 = 0;
LABEL_27:
  v19 = [NSError errorWithDomain:@"BKAudiobookPlayerErrorDomain" code:v9 userInfo:v17];

  return v19;
}

- (void)player:(id)a3 stallingStateDidChange:(BOOL)a4
{
  v5 = a3;
  v6 = [(BKAudiobookPlayer *)self player];

  if (v6 == v5)
  {

    [(BKAudiobookPlayer *)self _sendIsStallingAndIsLoadingResources];
  }
}

- (void)player:(id)a3 loadingResourcesStateDidChange:(BOOL)a4
{
  v5 = a3;
  v6 = [(BKAudiobookPlayer *)self player];

  if (v6 == v5)
  {

    [(BKAudiobookPlayer *)self _sendIsStallingAndIsLoadingResources];
  }
}

- (void)player:(id)a3 didReachPosition:(double)a4
{
  v6 = a3;
  v7 = BKAudiobooksLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v28 = a4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "handling boundary time: %.1f", buf, 0xCu);
  }

  v8 = [(BKAudiobookPlayer *)self player];

  if (v8 == v6)
  {
    if ([v6 isScrubbing])
    {
      [v6 pause];
    }

    else
    {
      v9 = [(BKAudiobookPlayer *)self _chapterAtOffset:self->_currentTrackIndex inTrack:a4];
      if (v9 == self->_currentChapterIndex)
      {
        v10 = BKAudiobooksLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_2252C();
        }
      }

      else
      {
        self->_currentChapterIndex = v9;
        [(BKAudiobookPlayer *)self _sendChapterDidChange];
        [(BKAudiobookPlayer *)self _sendCurrentPositionDidChange];
      }

      v11 = [(BKAudiobookPlayer *)self currentTrack];
      if ([v11 hasAlternateArtwork])
      {
        [v11 alternateArtworkTimes];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v12 = v25 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v23;
          while (2)
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v22 + 1) + 8 * i);
              [v17 doubleValue];
              if (vabdd_f64(v18, a4) < 0.01)
              {
                v19[0] = _NSConcreteStackBlock;
                v19[1] = 3221225472;
                v19[2] = sub_1E6B4;
                v19[3] = &unk_3D1A0;
                v20 = v11;
                v21 = v17;
                [(BKAudiobookPlayer *)self _sendArtworkDidChangeTo:v19];

                goto LABEL_22;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:
      }
    }
  }
}

- (void)playerCurrentItemEnded:(id)a3
{
  v4 = a3;
  v5 = [(BKAudiobookPlayer *)self player];

  if (v5 == v4)
  {
    v6 = BKAudiobooksLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "playerCurrentItemEnded:", buf, 2u);
    }

    v7 = [(BKAudiobookPlayer *)self currentTrackIndex]+ 1;
    v8 = [(BKAudiobookPlayer *)self currentAudiobook];
    v9 = [v8 tracks];
    v10 = [v9 count];

    if (v7 >= v10)
    {
      v11 = BKAudiobooksLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "playerCurrentItemEnded: stopping audiobook playback as there are no remaining tracks", v12, 2u);
      }

      [(BKAudiobookPlayer *)self stop];
      [(BKAudiobookPlayer *)self _sendReachedEndOfAudiobook];
    }

    else
    {
      [(BKAudiobookPlayer *)self setCurrentTrackIndex:v7];
      [(BKAudiobookPlayer *)self play];
    }
  }
}

- (void)player:(id)a3 loadedTimeRangesDidChange:(id)a4 durations:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(BKAudiobookPlayer *)self player];

  if (v11 == v10)
  {
    v12 = [v8 count];
    if (v12 == [v9 count])
    {
      [(BKAudiobookPlayer *)self setBufferedStartTimes:v8];
      [(BKAudiobookPlayer *)self setBufferedDurations:v9];
      [(BKAudiobookPlayer *)self _sendBufferedTimeRangesDidChange];
    }

    else
    {
      v13 = BKAudiobooksLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_2256C();
      }
    }
  }
}

- (void)playerWasInterrupted:(id)a3
{
  if (self->_secondsToRewindAfterInterruption)
  {
    [(BKAudiobookPlayer *)self positionInCurrentAudiobook];
    v5 = fmax(v4 - self->_secondsToRewindAfterInterruption, 0.0);

    [(BKAudiobookPlayer *)self movePositionInCurrentAudiobook:0 completion:v5];
  }
}

- (void)player:(id)a3 bitrateChangedFrom:(float)a4 to:(float)a5
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(BKAudiobookPlayer *)self allObservers:a3];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          *&v14 = a4;
          *&v15 = a5;
          [v13 player:self bitRateChangedFrom:v14 to:v15];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)player:(id)a3 volumeDidChange:(float)a4
{
  self->_volume = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(BKAudiobookPlayer *)self allObservers:a3];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          *&v12 = a4;
          [v11 player:self volumeDidChange:v12];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)mediaItem
{
  v2 = [(BKAudiobookPlayer *)self currentAudiobook];
  v3 = [v2 representativeItem];

  return v3;
}

- (_NSRange)currentChapterRange
{
  length = self->_currentChapterRange.length;
  location = self->_currentChapterRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end