@interface BKAudiobookPlayer
+ (BKAudiobookPlayer)sharedInstance;
+ (float)playbackRateFrom:(int64_t)from;
+ (id)testInstance;
+ (int64_t)playbackSpeedFrom:(float)from;
- (BKAudiobookBufferInfo)bufferInfo;
- (BKAudiobookChapter)currentChapter;
- (BKAudiobookPlayer)init;
- (BKAudiobookTrack)currentTrack;
- (BOOL)_setCurrentChapterIndex:(unint64_t)index offset:(double)offset completion:(id)completion;
- (BOOL)isLoadingResources;
- (BOOL)isPlaying;
- (BOOL)isPositionValid;
- (BOOL)isScrubbing;
- (BOOL)isStalling;
- (BOOL)isStreaming;
- (BOOL)nextChapterOrRestartAudiobook;
- (BOOL)playChapterAtIndex:(unint64_t)index;
- (BOOL)playChapterAtIndex:(unint64_t)index offset:(double)offset;
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
- (id)_playerErrorWithPlayer:(id)player error:(id)error;
- (id)_stateString;
- (id)allObservers;
- (id)mediaItem;
- (int64_t)state;
- (unint64_t)_chapterAtOffset:(double)offset inTrack:(unint64_t)track;
- (void)_addTimeObserversForTrack:(id)track;
- (void)_configureAudioSession;
- (void)_resetPlayer:(id)player;
- (void)_sendArtworkDidChangeTo:(id)to;
- (void)_sendAudiobookDidChange;
- (void)_sendAudiobookWillChange;
- (void)_sendBufferedTimeRangesDidChange;
- (void)_sendChapterDidChange;
- (void)_sendCurrentPositionDidChange;
- (void)_sendIsScrubbing;
- (void)_sendIsStallingAndIsLoadingResources;
- (void)_sendPlaybackRateDidChange;
- (void)_sendPlayerFailedWithError:(id)error;
- (void)_sendPlayerStalledWithError:(id)error;
- (void)_sendReachedEndOfAudiobook;
- (void)_sendStateDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)_setCurrentPosition:(double)position track:(unint64_t)track chapter:(unint64_t)chapter completion:(id)completion;
- (void)_setCurrentTrackIndex:(unint64_t)index offset:(double)offset completion:(id)completion;
- (void)_updatePlayerWithOffsetInTrack:(double)track chapterIndex:(unint64_t)index hasTrackChanged:(BOOL)changed changedArtworkBlock:(id)block currentTimeCompletion:(id)completion;
- (void)_updateTimeBeforeCurrentTrackWithTrackIndex:(unint64_t)index;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)decrementPrecisionRate;
- (void)fadeIn:(double)in;
- (void)fadeOut:(double)out;
- (void)incrementPrecisionRate;
- (void)movePositionInCurrentAudiobook:(double)audiobook completion:(id)completion;
- (void)movePositionInCurrentChapter:(double)chapter completion:(id)completion;
- (void)pause;
- (void)play;
- (void)player:(id)player bitrateChangedFrom:(float)from to:(float)to;
- (void)player:(id)player didReachPosition:(double)position;
- (void)player:(id)player failedWithError:(id)error;
- (void)player:(id)player loadedTimeRangesDidChange:(id)change durations:(id)durations;
- (void)player:(id)player loadingResourcesStateDidChange:(BOOL)change;
- (void)player:(id)player playbackStalledWithError:(id)error;
- (void)player:(id)player positionDidChange:(double)change;
- (void)player:(id)player stallingStateDidChange:(BOOL)change;
- (void)player:(id)player stateChangedFrom:(int64_t)from to:(int64_t)to;
- (void)player:(id)player volumeDidChange:(float)change;
- (void)playerCurrentItemEnded:(id)ended;
- (void)playerWasInterrupted:(id)interrupted;
- (void)removeObserver:(id)observer;
- (void)setCurrentAudiobook:(id)audiobook initialPosition:(double)position;
- (void)setPlaybackRate:(float)rate;
- (void)setPlaybackSpeed:(int64_t)speed;
- (void)setVolume:(float)volume;
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
  block[4] = self;
  if (qword_47A60 != -1)
  {
    dispatch_once(&qword_47A60, block);
  }

  v2 = qword_47A68;

  return v2;
}

+ (id)testInstance
{
  v2 = objc_alloc_init(self);

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
  player = [(BKAudiobookPlayer *)self player];
  [player setDelegate:0];

  [(BKAudiobookPlayer *)self setPlayer:0];
  v4.receiver = self;
  v4.super_class = BKAudiobookPlayer;
  [(BKAudiobookPlayer *)&v4 dealloc];
}

- (NSError)lastError
{
  player = [(BKAudiobookPlayer *)self player];
  lastError = [player lastError];

  return lastError;
}

- (void)setCurrentAudiobook:(id)audiobook initialPosition:(double)position
{
  audiobookCopy = audiobook;
  if (self->_currentAudiobook != audiobookCopy)
  {
    [(BKAudiobookPlayer *)self _sendAudiobookWillChange];
    player = [(BKAudiobookPlayer *)self player];
    [player setDelegate:0];

    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    *&self->_currentTrackIndex = vnegq_f64(v9);
    objc_storeStrong(&self->_currentAudiobook, audiobook);
    if (audiobookCopy)
    {
      player2 = [(BKAudiobookPlayer *)self player];

      if (!player2)
      {
        v11 = [BKAVPlayer alloc];
        dataSource = [(BKAudiobookPlayer *)self dataSource];
        v13 = [(BKAVPlayer *)v11 initWithResourceLoader:dataSource];
        [(BKAudiobookPlayer *)self setPlayer:v13];

        [(BKAudiobookPlayer *)self volume];
        v15 = v14;
        player3 = [(BKAudiobookPlayer *)self player];
        LODWORD(v17) = v15;
        [player3 setVolume:v17];

        player4 = [(BKAudiobookPlayer *)self player];
        [player4 playbackRate];
        v19 = [BKAudiobookPlayer playbackSpeedFrom:?];

        if (v19 != -1)
        {
          self->_playbackSpeed = v19;
        }

        player5 = [(BKAudiobookPlayer *)self player];
        [player5 playbackRate];
        [(BKAudiobookPlayer *)self setPlaybackRate:?];
      }
    }

    else
    {
      [(BKAudiobookPlayer *)self setPlayer:0];
    }

    player6 = [(BKAudiobookPlayer *)self player];
    [player6 setDelegate:self];

    v22 = BKAudiobooksLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      title = [(BKAudiobook *)self->_currentAudiobook title];
      *buf = 138412546;
      v36 = title;
      v37 = 2048;
      positionCopy = position;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "setCurrentAudiobook: %@ initialPosition:%.1lf", buf, 0x16u);
    }

    self->_durationOfCurrentAudiobook = 0.0;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    tracks = [(BKAudiobook *)self->_currentAudiobook tracks];
    v25 = [tracks countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(tracks);
          }

          [*(*(&v30 + 1) + 8 * i) duration];
          self->_durationOfCurrentAudiobook = v29 + self->_durationOfCurrentAudiobook;
        }

        v26 = [tracks countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v26);
    }

    [(BKAudiobookPlayer *)self movePositionInCurrentAudiobook:0 completion:position];
    [(BKAudiobookPlayer *)self setListeningSessionStartTime:position];
    [(BKAudiobookPlayer *)self _sendAudiobookDidChange];
  }
}

- (BOOL)isStreaming
{
  player = [(BKAudiobookPlayer *)self player];
  isStreaming = [player isStreaming];

  return isStreaming;
}

- (BOOL)isStalling
{
  player = [(BKAudiobookPlayer *)self player];
  isStalling = [player isStalling];

  return isStalling;
}

- (BOOL)isLoadingResources
{
  player = [(BKAudiobookPlayer *)self player];
  isLoadingResources = [player isLoadingResources];

  return isLoadingResources;
}

- (NSNumber)timeRemainingInBuffer
{
  bufferProducer = [(BKAudiobookPlayer *)self bufferProducer];
  [(BKAudiobookPlayer *)self positionInCurrentTrack];
  v4 = [bufferProducer timeRemainingInBufferFromTrackPosition:?];

  return v4;
}

- (BKAudiobookBufferInfo)bufferInfo
{
  bufferProducer = [(BKAudiobookPlayer *)self bufferProducer];
  bufferInfo = [bufferProducer bufferInfo];

  return bufferInfo;
}

- (BKAudiobookTrack)currentTrack
{
  [(BKAudiobookPlayer *)self currentTrackIndex];
  currentTrackIndex = [(BKAudiobookPlayer *)self currentTrackIndex];
  currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];
  tracks = [currentAudiobook tracks];
  v6 = [tracks count];

  if (currentTrackIndex >= v6)
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
    currentAudiobook2 = [(BKAudiobookPlayer *)self currentAudiobook];
    tracks2 = [currentAudiobook2 tracks];
    v9 = [tracks2 objectAtIndexedSubscript:{-[BKAudiobookPlayer currentTrackIndex](self, "currentTrackIndex")}];
  }

  return v9;
}

- (BKAudiobookChapter)currentChapter
{
  if (self->_currentAudiobook)
  {
    [(BKAudiobookPlayer *)self currentChapterIndex];
    currentChapterIndex = [(BKAudiobookPlayer *)self currentChapterIndex];
    currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];
    chapters = [currentAudiobook chapters];
    v6 = [chapters count];

    if (currentChapterIndex < v6)
    {
      currentAudiobook2 = [(BKAudiobookPlayer *)self currentAudiobook];
      chapters2 = [currentAudiobook2 chapters];
      v9 = [chapters2 objectAtIndexedSubscript:{-[BKAudiobookPlayer currentChapterIndex](self, "currentChapterIndex")}];

      goto LABEL_11;
    }

    currentChapterIndex2 = [(BKAudiobookPlayer *)self currentChapterIndex];
    v11 = BKAudiobooksLog();
    v12 = v11;
    if (currentChapterIndex2 == 0x7FFFFFFFFFFFFFFFLL)
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

- (void)_addTimeObserversForTrack:(id)track
{
  trackCopy = track;
  player = [(BKAudiobookPlayer *)self player];
  [player removeAllTimeObservers];

  v6 = objc_opt_new();
  alternateArtworkTimes = [trackCopy alternateArtworkTimes];
  objectEnumerator = [alternateArtworkTimes objectEnumerator];

  chapters = [trackCopy chapters];
  objectEnumerator2 = [chapters objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  nextObject2 = [objectEnumerator2 nextObject];
  v13 = nextObject2;
  while (nextObject && v13)
  {
    [v13 timeRangeInTrack];
    time = v41;
    v14 = [NSNumber numberWithDouble:CMTimeGetSeconds(&time)];
    [nextObject doubleValue];
    v16 = v15;
    [v14 doubleValue];
    if (vabdd_f64(v16, v17) >= 0.01)
    {
      [nextObject doubleValue];
      v22 = v21;
      [v14 doubleValue];
      if (v22 >= v23)
      {
        [v6 addObject:v14];
        nextObject3 = [objectEnumerator2 nextObject];
        v20 = v13;
        v13 = nextObject3;
      }

      else
      {
        [v6 addObject:nextObject];
        nextObject4 = [objectEnumerator nextObject];
        v20 = nextObject;
        nextObject = nextObject4;
      }
    }

    else
    {
      [v6 addObject:nextObject];
      nextObject5 = [objectEnumerator nextObject];

      nextObject6 = [objectEnumerator2 nextObject];
      v20 = v13;
      v13 = nextObject6;
      nextObject = nextObject5;
    }
  }

  if (nextObject)
  {
    do
    {
      [v6 addObject:nextObject];
      nextObject7 = [objectEnumerator nextObject];

      nextObject = nextObject7;
    }

    while (nextObject7);
  }

  if (v13)
  {
    do
    {
      [v13 timeRangeInTrack];
      time = v40;
      v27 = [NSNumber numberWithDouble:CMTimeGetSeconds(&time)];
      [v6 addObject:v27];
      nextObject8 = [objectEnumerator2 nextObject];

      v13 = nextObject8;
    }

    while (nextObject8);
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
        player2 = [(BKAudiobookPlayer *)self player];
        [v34 doubleValue];
        [player2 addTimeObserver:?];
      }

      v31 = [v29 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v31);
  }
}

- (void)_setCurrentPosition:(double)position track:(unint64_t)track chapter:(unint64_t)chapter completion:(id)completion
{
  completionCopy = completion;
  v11 = BKAudiobooksLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    trackCopy = track;
    v25 = 2048;
    chapterCopy = chapter;
    v27 = 2048;
    positionCopy = position;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "_setCurrentPosition: (track,chapter,offset) = (%lu,%lu,%f)", buf, 0x20u);
  }

  if (self->_currentTrackIndex == track)
  {
    [(BKAudiobookPlayer *)self _updatePlayerWithOffsetInTrack:chapter chapterIndex:0 hasTrackChanged:0 changedArtworkBlock:completionCopy currentTimeCompletion:position];
  }

  else
  {
    self->_currentTrackIndex = track;
    currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];
    tracks = [currentAudiobook tracks];
    v14 = [tracks objectAtIndexedSubscript:track];

    objc_initWeak(buf, self);
    player = [(BKAudiobookPlayer *)self player];
    assetURL = [v14 assetURL];
    audibleDRMGroupID = [(BKAudiobookPlayer *)self audibleDRMGroupID];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1A6C0;
    v19[3] = &unk_3D130;
    objc_copyWeak(v22, buf);
    v18 = v14;
    v20 = v18;
    v22[1] = track;
    v22[2] = *&position;
    v22[3] = chapter;
    v21 = completionCopy;
    [player setAssetURL:assetURL audibleDRMGroupID:audibleDRMGroupID completion:v19];

    objc_destroyWeak(v22);
    objc_destroyWeak(buf);
  }
}

- (void)_updatePlayerWithOffsetInTrack:(double)track chapterIndex:(unint64_t)index hasTrackChanged:(BOOL)changed changedArtworkBlock:(id)block currentTimeCompletion:(id)completion
{
  changedCopy = changed;
  blockCopy = block;
  completionCopy = completion;
  player = [(BKAudiobookPlayer *)self player];
  [player currentTime];
  v15 = v14;

  if (v15 != track)
  {
    player2 = [(BKAudiobookPlayer *)self player];
    [player2 setCurrentTime:completionCopy completion:track];

    if (self->_currentChapterIndex == index)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (self->_currentChapterIndex != index)
  {
LABEL_6:
    self->_currentChapterIndex = index;
    [(BKAudiobookPlayer *)self _sendChapterDidChange];
    goto LABEL_7;
  }

  if (!changedCopy)
  {
LABEL_12:
    v17 = objc_retainBlock(completionCopy);
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

  if (changedCopy)
  {
    [(BKAudiobookPlayer *)self _sendArtworkDidChangeTo:blockCopy];
  }

  if (v15 == track)
  {
    goto LABEL_12;
  }

LABEL_15:
}

- (void)_updateTimeBeforeCurrentTrackWithTrackIndex:(unint64_t)index
{
  self->_timeBeforeCurrentTrack = 0.0;
  if (index)
  {
    for (i = 0; i != index; ++i)
    {
      tracks = [(BKAudiobook *)self->_currentAudiobook tracks];
      v7 = [tracks objectAtIndexedSubscript:i];
      [v7 duration];
      self->_timeBeforeCurrentTrack = v8 + self->_timeBeforeCurrentTrack;
    }
  }
}

- (void)_setCurrentTrackIndex:(unint64_t)index offset:(double)offset completion:(id)completion
{
  completionCopy = completion;
  currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];
  tracks = [currentAudiobook tracks];
  v11 = [tracks count];

  if (v11 <= index)
  {
    v16 = BKAudiobooksLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_21C44();
    }

    v17 = objc_retainBlock(completionCopy);
    v14 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, 0);
    }
  }

  else
  {
    currentAudiobook2 = [(BKAudiobookPlayer *)self currentAudiobook];
    tracks2 = [currentAudiobook2 tracks];
    v14 = [tracks2 objectAtIndexedSubscript:index];

    [v14 duration];
    if (v15 <= offset)
    {
      v18 = BKAudiobooksLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_21CB4();
      }

      v19 = objc_retainBlock(completionCopy);
      v20 = v19;
      if (v19)
      {
        (*(v19 + 2))(v19, 0);
      }
    }

    else
    {
      [(BKAudiobookPlayer *)self _setCurrentPosition:index track:[(BKAudiobookPlayer *)self _chapterAtOffset:index inTrack:offset] chapter:completionCopy completion:offset];
    }
  }
}

- (BOOL)_setCurrentChapterIndex:(unint64_t)index offset:(double)offset completion:(id)completion
{
  completionCopy = completion;
  currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];
  chapters = [currentAudiobook chapters];
  v11 = [chapters count];

  if (v11 <= index)
  {
    v16 = BKAudiobooksLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_21D28();
    }

    v17 = objc_retainBlock(completionCopy);
    v14 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, 0);
    }

    goto LABEL_14;
  }

  currentAudiobook2 = [(BKAudiobookPlayer *)self currentAudiobook];
  chapters2 = [currentAudiobook2 chapters];
  v14 = [chapters2 objectAtIndexedSubscript:index];

  [v14 duration];
  if (v15 <= offset)
  {
    v18 = BKAudiobooksLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_21D98();
    }

    v19 = objc_retainBlock(completionCopy);
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
  -[BKAudiobookPlayer _setCurrentPosition:track:chapter:completion:](self, "_setCurrentPosition:track:chapter:completion:", [v14 albumTrackNumber], index, completionCopy, CMTimeGetSeconds(&time) + offset);
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

- (void)movePositionInCurrentAudiobook:(double)audiobook completion:(id)completion
{
  completionCopy = completion;
  currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];
  tracks = [currentAudiobook tracks];

  v9 = [tracks count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0.0;
    while (1)
    {
      v13 = [tracks objectAtIndexedSubscript:v11];
      [v13 duration];
      v15 = v12 + v14;
      if (v12 <= audiobook && v15 > audiobook)
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

    [(BKAudiobookPlayer *)self _setCurrentTrackIndex:v11 offset:completionCopy completion:audiobook - v12];
  }

  else
  {
LABEL_9:
    v17 = BKAudiobooksLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_21E0C(self);
    }

    [(BKAudiobookPlayer *)self _setCurrentTrackIndex:0 offset:completionCopy completion:0.0];
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
  player = [(BKAudiobookPlayer *)self player];
  [player currentTime];
  v4 = v3;

  return v4;
}

- (BOOL)isPositionValid
{
  player = [(BKAudiobookPlayer *)self player];
  isCurrentTimeValid = [player isCurrentTimeValid];

  return isCurrentTimeValid;
}

- (double)durationOfCurrentTrack
{
  currentTrack = [(BKAudiobookPlayer *)self currentTrack];
  [currentTrack duration];
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
  pausedTime = [(BKAudiobookPlayer *)self pausedTime];
  if (pausedTime)
  {
    v4 = +[NSDate date];
    pausedTime2 = [(BKAudiobookPlayer *)self pausedTime];
    [v4 timeIntervalSinceDate:pausedTime2];
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
  currentChapter = [(BKAudiobookPlayer *)self currentChapter];
  v4 = currentChapter;
  if (currentChapter)
  {
    [currentChapter timeRangeInTrack];
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

- (void)movePositionInCurrentChapter:(double)chapter completion:(id)completion
{
  completionCopy = completion;
  currentChapter = [(BKAudiobookPlayer *)self currentChapter];
  v8 = currentChapter;
  if (chapter < 0.0 || ([currentChapter duration], v9 <= chapter))
  {
    v10 = BKAudiobooksLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_21EB4();
    }

    v11 = objc_retainBlock(completionCopy);
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
    [(BKAudiobookPlayer *)self _setCurrentPosition:[(BKAudiobookPlayer *)self currentTrackIndex] track:[(BKAudiobookPlayer *)self currentChapterIndex] chapter:completionCopy completion:CMTimeGetSeconds(&time) + chapter];
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
  currentChapter = [(BKAudiobookPlayer *)self currentChapter];
  [currentChapter duration];
  v4 = v3;

  return v4;
}

- (void)play
{
  player = [(BKAudiobookPlayer *)self player];
  [player play];
}

- (void)pause
{
  player = [(BKAudiobookPlayer *)self player];
  [player pause];
}

- (void)togglePlayPause
{
  player = [(BKAudiobookPlayer *)self player];
  [player togglePlayPause];
}

- (void)stop
{
  player = [(BKAudiobookPlayer *)self player];
  [player stop];
}

- (void)fadeIn:(double)in
{
  player = [(BKAudiobookPlayer *)self player];
  [player fadeIn:in];
}

- (void)fadeOut:(double)out
{
  player = [(BKAudiobookPlayer *)self player];
  [player fadeOut:out];
}

- (BOOL)playChapterAtIndex:(unint64_t)index
{
  currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];
  chapters = [currentAudiobook chapters];
  v7 = [chapters count];

  if (v7 <= index)
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

    return [(BKAudiobookPlayer *)self playChapterAtIndex:index offset:0.0];
  }
}

- (BOOL)playChapterAtIndex:(unint64_t)index offset:(double)offset
{
  v7 = BKAudiobooksLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218240;
    indexCopy = index;
    v12 = 2048;
    offsetCopy = offset;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "playChapterAtIndex:%lu offset:%f", &v10, 0x16u);
  }

  v8 = [(BKAudiobookPlayer *)self _setCurrentChapterIndex:index offset:0 completion:offset];
  if (v8)
  {
    [(BKAudiobookPlayer *)self play];
  }

  return v8;
}

- (BOOL)playNextChapter
{
  currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];

  if (currentAudiobook)
  {
    v4 = self->_currentChapterIndex + 1;
    currentAudiobook2 = [(BKAudiobookPlayer *)self currentAudiobook];
    chapters = [currentAudiobook2 chapters];
    v7 = [chapters count];

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
  currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];
  if (currentAudiobook)
  {
    currentChapterIndex = self->_currentChapterIndex;

    if (currentChapterIndex)
    {
      [(BKAudiobookPlayer *)self playChapterAtIndex:self->_currentChapterIndex - 1];
      LOBYTE(currentAudiobook) = 1;
    }

    else
    {
      LOBYTE(currentAudiobook) = 0;
    }
  }

  return currentAudiobook;
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
  currentChapterIndex = [v2 currentChapterIndex];
  currentAudiobook = [v2 currentAudiobook];
  chapters = [currentAudiobook chapters];
  v6 = [chapters count] - 1;

  v7 = BKAudiobooksLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (currentChapterIndex >= v6)
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
  player = [(BKAudiobookPlayer *)self player];
  state = [player state];

  return state;
}

- (BOOL)isPlaying
{
  player = [(BKAudiobookPlayer *)self player];
  isPlaying = [player isPlaying];

  return isPlaying;
}

- (BOOL)isScrubbing
{
  player = [(BKAudiobookPlayer *)self player];
  isScrubbing = [player isScrubbing];

  return isScrubbing;
}

- (float)playbackRate
{
  player = [(BKAudiobookPlayer *)self player];
  [player playbackRate];
  v4 = v3;

  return v4;
}

- (void)setPlaybackRate:(float)rate
{
  player = [(BKAudiobookPlayer *)self player];
  *&v6 = rate;
  [player setPlaybackRate:v6];

  *&v7 = rate;
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
  player = [(BKAudiobookPlayer *)self player];
  [player playbackRate];
  v5 = v4;

  precisionRates = [(BKAudiobookPlayer *)self precisionRates];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1BE04;
  v13[3] = &unk_3D150;
  v14 = v5;
  v7 = [precisionRates indexOfObjectPassingTest:v13];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    precisionRates3 = BKAudiobooksLog();
    if (os_log_type_enabled(precisionRates3, OS_LOG_TYPE_ERROR))
    {
      sub_21FEC();
    }
  }

  else
  {
    precisionRates2 = [(BKAudiobookPlayer *)self precisionRates];
    v10 = [precisionRates2 count] - 1;

    if (v7 == v10)
    {
      v11 = v7;
    }

    else
    {
      v11 = v7 + 1;
    }

    precisionRates3 = [(BKAudiobookPlayer *)self precisionRates];
    v12 = [precisionRates3 objectAtIndexedSubscript:v11];
    [v12 floatValue];
    [(BKAudiobookPlayer *)self setPlaybackRate:?];
  }
}

- (void)decrementPrecisionRate
{
  player = [(BKAudiobookPlayer *)self player];
  [player playbackRate];
  v5 = v4;

  precisionRates = [(BKAudiobookPlayer *)self precisionRates];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1BF8C;
  v10[3] = &unk_3D150;
  v11 = v5;
  v7 = [precisionRates indexOfObjectPassingTest:v10];

  if (!v7)
  {
    goto LABEL_6;
  }

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    --v7;
LABEL_6:
    precisionRates2 = [(BKAudiobookPlayer *)self precisionRates];
    v9 = [precisionRates2 objectAtIndexedSubscript:v7];
    [v9 floatValue];
    [(BKAudiobookPlayer *)self setPlaybackRate:?];

    goto LABEL_7;
  }

  precisionRates2 = BKAudiobooksLog();
  if (os_log_type_enabled(precisionRates2, OS_LOG_TYPE_ERROR))
  {
    sub_22064();
  }

LABEL_7:
}

- (float)volume
{
  player = [(BKAudiobookPlayer *)self player];
  v4 = player;
  if (player)
  {
    [player volume];
    volume = v5;
  }

  else
  {
    volume = self->_volume;
  }

  return volume;
}

- (void)setVolume:(float)volume
{
  if (self->_volume != volume)
  {
    self->_volume = volume;
    player = [(BKAudiobookPlayer *)self player];
    *&v4 = volume;
    [player setVolume:v4];
  }
}

- (void)setPlaybackSpeed:(int64_t)speed
{
  [BKAudiobookPlayer playbackRateFrom:speed];

  [(BKAudiobookPlayer *)self setPlaybackRate:?];
}

+ (float)playbackRateFrom:(int64_t)from
{
  result = 0.0;
  if (from <= 1)
  {
    if (from == -1)
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
      if (from == 1)
      {
        result = 1.0;
      }

      if (!from)
      {
        return 0.75;
      }
    }
  }

  else
  {
    v4 = 1.75;
    v5 = 2.0;
    if (from != 5)
    {
      v5 = 0.0;
    }

    if (from != 4)
    {
      v4 = v5;
    }

    if (from == 3)
    {
      result = 1.5;
    }

    if (from == 2)
    {
      result = 1.25;
    }

    if (from > 3)
    {
      return v4;
    }
  }

  return result;
}

+ (int64_t)playbackSpeedFrom:(float)from
{
  fromCopy = from;
  if (fabs(fromCopy + -0.75) < 0.00999999978)
  {
    return 0;
  }

  if (fabs(fromCopy + -1.0) < 0.00999999978)
  {
    return 1;
  }

  if (fabs(fromCopy + -1.25) < 0.00999999978)
  {
    return 2;
  }

  if (fabs(fromCopy + -1.5) < 0.00999999978)
  {
    return 3;
  }

  if (fabs(fromCopy + -1.75) < 0.00999999978)
  {
    return 4;
  }

  if (fabs(fromCopy + -2.0) >= 0.00999999978)
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

- (void)_resetPlayer:(id)player
{
  playerCopy = player;
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

- (unint64_t)_chapterAtOffset:(double)offset inTrack:(unint64_t)track
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
  CMTimeMake(&v14, ((offset + 0.001) * 1000.0), 1000);
  currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];
  chapters = [currentAudiobook chapters];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1C670;
  v12[3] = &unk_3D178;
  v13 = v14;
  v12[4] = &v15;
  v12[5] = track;
  [chapters enumerateObjectsUsingBlock:v12];
  v10 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v10;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_accessLock);
  observers = [(BKAudiobookPlayer *)self observers];
  [observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_accessLock);
  observers = [(BKAudiobookPlayer *)self observers];
  [observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (id)allObservers
{
  os_unfair_lock_lock(&self->_accessLock);
  observers = [(BKAudiobookPlayer *)self observers];
  allObjects = [observers allObjects];

  os_unfair_lock_unlock(&self->_accessLock);

  return allObjects;
}

- (void)_sendAudiobookWillChange
{
  v3 = BKAudiobooksLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];
    *buf = 138412290;
    v18 = currentAudiobook;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "observer: audiobook will change = %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObservers = [(BKAudiobookPlayer *)self allObservers];
  v6 = [allObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allObservers);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          currentAudiobook2 = [(BKAudiobookPlayer *)self currentAudiobook];
          [v10 player:self audiobookWillChange:currentAudiobook2];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_sendAudiobookDidChange
{
  v3 = BKAudiobooksLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];
    *buf = 138412290;
    v18 = currentAudiobook;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "observer: audiobook did change = %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObservers = [(BKAudiobookPlayer *)self allObservers];
  v6 = [allObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allObservers);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          currentAudiobook2 = [(BKAudiobookPlayer *)self currentAudiobook];
          [v10 player:self audiobookDidChange:currentAudiobook2];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    currentChapterIndex = [(BKAudiobookPlayer *)self currentChapterIndex];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "observer: chapter = %lu", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allObservers = [(BKAudiobookPlayer *)self allObservers];
  v5 = [allObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allObservers);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          currentChapter = [(BKAudiobookPlayer *)self currentChapter];
          [v9 player:self chapterDidChange:currentChapter];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(BKAudiobookPlayer *)self _sendBufferedTimeRangesDidChange];
}

- (void)_sendArtworkDidChangeTo:(id)to
{
  toCopy = to;
  if (self->_supportsAlternateArtwork)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allObservers = [(BKAudiobookPlayer *)self allObservers];
    v6 = [allObservers countByEnumeratingWithState:&v15 objects:v21 count:16];
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
            objc_enumerationMutation(allObservers);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            if (toCopy && !v9)
            {
              v13 = BKAudiobooksLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v14;
                v20 = 0;
                _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "observer: artwork = %p", buf, 0xCu);
              }

              v9 = toCopy[2](toCopy);
            }

            [v12 player:self artworkDidChange:{v9, v14}];
          }

          v11 = v11 + 1;
        }

        while (v8 != v11);
        v8 = [allObservers countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v8);
    }
  }
}

- (id)_stateString
{
  state = [(BKAudiobookPlayer *)self state];
  if ((state - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_3D1C0[state - 1];
  }
}

- (void)_sendStateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  v7 = BKAudiobooksLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _stateString = [(BKAudiobookPlayer *)self _stateString];
    *buf = 138412290;
    v21 = _stateString;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "observer: state = %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObservers = [(BKAudiobookPlayer *)self allObservers];
  v10 = [allObservers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allObservers);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 player:self stateDidChangeFrom:from to:to];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [allObservers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  allObservers = [(BKAudiobookPlayer *)self allObservers];
  v5 = [allObservers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allObservers);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [(BKAudiobookPlayer *)self positionInCurrentChapter];
          v11 = v10;
          currentChapterIndex = [(BKAudiobookPlayer *)self currentChapterIndex];
          [(BKAudiobookPlayer *)self positionInCurrentAudiobook];
          [v9 player:self currentPositionDidChange:currentChapterIndex inChapter:v11 absolutePosition:v13];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allObservers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  allObservers = [(BKAudiobookPlayer *)self allObservers];
  v6 = [allObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allObservers);
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
      v7 = [allObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_sendPlayerFailedWithError:(id)error
{
  errorCopy = error;
  v5 = BKAudiobooksLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22208();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObservers = [(BKAudiobookPlayer *)self allObservers];
  v7 = [allObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allObservers);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 player:self failedWithError:errorCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_sendPlayerStalledWithError:(id)error
{
  errorCopy = error;
  v5 = BKAudiobooksLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22278();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObservers = [(BKAudiobookPlayer *)self allObservers];
  v7 = [allObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allObservers);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 player:self playbackStalledWithError:errorCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_sendReachedEndOfAudiobook
{
  v3 = BKAudiobooksLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];
    *buf = 138412290;
    v18 = currentAudiobook;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "observer: audiobook = %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObservers = [(BKAudiobookPlayer *)self allObservers];
  v6 = [allObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allObservers);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          currentAudiobook2 = [(BKAudiobookPlayer *)self currentAudiobook];
          [v10 player:self reachedEndOfAudiobook:currentAudiobook2];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  allObservers = [(BKAudiobookPlayer *)self allObservers];
  v5 = [allObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allObservers);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 player:self isScrubbing:{-[BKAudiobookPlayer isScrubbing](self, "isScrubbing")}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allObservers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  allObservers = [(BKAudiobookPlayer *)self allObservers];
  v5 = [allObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allObservers);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          player = [(BKAudiobookPlayer *)self player];
          isStalling = [player isStalling];
          player2 = [(BKAudiobookPlayer *)self player];
          [v9 player:self isStalling:isStalling isLoadingResources:{objc_msgSend(player2, "isLoadingResources")}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_sendBufferedTimeRangesDidChange
{
  bufferProducer = [(BKAudiobookPlayer *)self bufferProducer];
  currentChapter = [(BKAudiobookPlayer *)self currentChapter];
  bufferedStartTimes = [(BKAudiobookPlayer *)self bufferedStartTimes];
  bufferedDurations = [(BKAudiobookPlayer *)self bufferedDurations];
  [bufferProducer updateWithChapter:currentChapter bufferedTrackPositions:bufferedStartTimes bufferedTrackDurations:bufferedDurations];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObservers = [(BKAudiobookPlayer *)self allObservers];
  v8 = [allObservers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allObservers);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          currentChapterIndex = [(BKAudiobookPlayer *)self currentChapterIndex];
          bufferInfo = [(BKAudiobookPlayer *)self bufferInfo];
          [v12 player:self bufferedPositionsDidChangeInChapter:currentChapterIndex bufferInfo:bufferInfo];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allObservers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)player:(id)player stateChangedFrom:(int64_t)from to:(int64_t)to
{
  playerCopy = player;
  v9 = BKAudiobooksLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromBKAudiobookPlayerState(from);
    v11 = NSStringFromBKAudiobookPlayerState(to);
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Player state changed from %@ to %@", &v14, 0x16u);
  }

  player = [(BKAudiobookPlayer *)self player];

  if (player == playerCopy)
  {
    if (to >= 3)
    {
      if (to == 3)
      {
        if (from != 3)
        {
          v13 = +[NSDate date];
          [(BKAudiobookPlayer *)self setPausedTime:v13];
        }

        goto LABEL_9;
      }

      if (to != 4)
      {
LABEL_9:
        [(BKAudiobookPlayer *)self _sendStateDidChangeFrom:from to:to];
        return;
      }

      [(BKAudiobookPlayer *)self setCurrentTrackIndex:0];
    }

    [(BKAudiobookPlayer *)self setPausedTime:0];
    goto LABEL_9;
  }
}

- (void)player:(id)player positionDidChange:(double)change
{
  playerCopy = player;
  player = [(BKAudiobookPlayer *)self player];

  if (player == playerCopy)
  {

    [(BKAudiobookPlayer *)self _sendCurrentPositionDidChange];
  }
}

- (void)player:(id)player failedWithError:(id)error
{
  playerCopy = player;
  errorCopy = error;
  player = [(BKAudiobookPlayer *)self player];

  if (player == playerCopy)
  {
    v8 = [(BKAudiobookPlayer *)self _playerErrorWithPlayer:playerCopy error:errorCopy];
    [(BKAudiobookPlayer *)self _sendPlayerFailedWithError:v8];
  }
}

- (void)player:(id)player playbackStalledWithError:(id)error
{
  playerCopy = player;
  errorCopy = error;
  player = [(BKAudiobookPlayer *)self player];

  if (player == playerCopy)
  {
    v8 = [(BKAudiobookPlayer *)self _playerErrorWithPlayer:playerCopy error:errorCopy];
    [(BKAudiobookPlayer *)self _sendPlayerStalledWithError:v8];
  }
}

- (id)_playerErrorWithPlayer:(id)player error:(id)error
{
  errorCopy = error;
  assetNetworkError = [player assetNetworkError];
  if (assetNetworkError)
  {
    v7 = BKAudiobooksLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2236C();
    }

    v8 = errorCopy;
    v9 = 1;
    errorCopy = assetNetworkError;
LABEL_5:

    v10 = 0;
    goto LABEL_13;
  }

  domain = [errorCopy domain];
  v12 = [domain isEqualToString:AVFoundationErrorDomain];

  if (v12)
  {
    code = [errorCopy code];
    if (code == -11819)
    {
      v8 = BKAudiobooksLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22410();
      }

      v9 = 3;
      goto LABEL_5;
    }

    if (code == -11835)
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
  domain2 = [errorCopy domain];
  if (![domain2 isEqualToString:BLErrorDomain])
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
    if (errorCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  code2 = [errorCopy code];

  if (code2 == stru_20.segname)
  {
    v16 = 0;
  }

  else
  {
    v16 = v10;
  }

  if (code2 == stru_20.segname)
  {
    v9 = 5;
  }

  if (v16)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (errorCopy)
  {
LABEL_21:
    v21 = NSUnderlyingErrorKey;
    v22 = errorCopy;
    v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    goto LABEL_27;
  }

LABEL_26:
  v17 = 0;
LABEL_27:
  v19 = [NSError errorWithDomain:@"BKAudiobookPlayerErrorDomain" code:v9 userInfo:v17];

  return v19;
}

- (void)player:(id)player stallingStateDidChange:(BOOL)change
{
  playerCopy = player;
  player = [(BKAudiobookPlayer *)self player];

  if (player == playerCopy)
  {

    [(BKAudiobookPlayer *)self _sendIsStallingAndIsLoadingResources];
  }
}

- (void)player:(id)player loadingResourcesStateDidChange:(BOOL)change
{
  playerCopy = player;
  player = [(BKAudiobookPlayer *)self player];

  if (player == playerCopy)
  {

    [(BKAudiobookPlayer *)self _sendIsStallingAndIsLoadingResources];
  }
}

- (void)player:(id)player didReachPosition:(double)position
{
  playerCopy = player;
  v7 = BKAudiobooksLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    positionCopy = position;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "handling boundary time: %.1f", buf, 0xCu);
  }

  player = [(BKAudiobookPlayer *)self player];

  if (player == playerCopy)
  {
    if ([playerCopy isScrubbing])
    {
      [playerCopy pause];
    }

    else
    {
      v9 = [(BKAudiobookPlayer *)self _chapterAtOffset:self->_currentTrackIndex inTrack:position];
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

      currentTrack = [(BKAudiobookPlayer *)self currentTrack];
      if ([currentTrack hasAlternateArtwork])
      {
        [currentTrack alternateArtworkTimes];
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
              if (vabdd_f64(v18, position) < 0.01)
              {
                v19[0] = _NSConcreteStackBlock;
                v19[1] = 3221225472;
                v19[2] = sub_1E6B4;
                v19[3] = &unk_3D1A0;
                v20 = currentTrack;
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

- (void)playerCurrentItemEnded:(id)ended
{
  endedCopy = ended;
  player = [(BKAudiobookPlayer *)self player];

  if (player == endedCopy)
  {
    v6 = BKAudiobooksLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "playerCurrentItemEnded:", buf, 2u);
    }

    v7 = [(BKAudiobookPlayer *)self currentTrackIndex]+ 1;
    currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];
    tracks = [currentAudiobook tracks];
    v10 = [tracks count];

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

- (void)player:(id)player loadedTimeRangesDidChange:(id)change durations:(id)durations
{
  changeCopy = change;
  durationsCopy = durations;
  playerCopy = player;
  player = [(BKAudiobookPlayer *)self player];

  if (player == playerCopy)
  {
    v12 = [changeCopy count];
    if (v12 == [durationsCopy count])
    {
      [(BKAudiobookPlayer *)self setBufferedStartTimes:changeCopy];
      [(BKAudiobookPlayer *)self setBufferedDurations:durationsCopy];
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

- (void)playerWasInterrupted:(id)interrupted
{
  if (self->_secondsToRewindAfterInterruption)
  {
    [(BKAudiobookPlayer *)self positionInCurrentAudiobook];
    v5 = fmax(v4 - self->_secondsToRewindAfterInterruption, 0.0);

    [(BKAudiobookPlayer *)self movePositionInCurrentAudiobook:0 completion:v5];
  }
}

- (void)player:(id)player bitrateChangedFrom:(float)from to:(float)to
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(BKAudiobookPlayer *)self allObservers:player];
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
          *&v14 = from;
          *&v15 = to;
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

- (void)player:(id)player volumeDidChange:(float)change
{
  self->_volume = change;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(BKAudiobookPlayer *)self allObservers:player];
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
          *&v12 = change;
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
  currentAudiobook = [(BKAudiobookPlayer *)self currentAudiobook];
  representativeItem = [currentAudiobook representativeItem];

  return representativeItem;
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