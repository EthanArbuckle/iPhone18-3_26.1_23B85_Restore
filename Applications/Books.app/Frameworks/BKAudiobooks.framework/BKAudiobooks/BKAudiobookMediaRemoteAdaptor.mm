@interface BKAudiobookMediaRemoteAdaptor
+ (id)startAdaptor;
+ (void)initialize;
- (BKAudiobookMediaRemoteAdaptor)initWithPlayer:(id)a3;
- (id)_skipBackwardCommandEvent;
- (id)_skipForwardCommandEvent;
- (int64_t)onChangePlaybackPositionCommand:(id)a3;
- (int64_t)onChangePlaybackRateCommand:(id)a3;
- (int64_t)onNextTrackCommand:(id)a3;
- (int64_t)onPauseCommand:(id)a3;
- (int64_t)onPlayCommand:(id)a3;
- (int64_t)onPlayItemInQueueCommand:(id)a3;
- (int64_t)onPrevTrackCommand:(id)a3;
- (int64_t)onSeekBackwardCommand:(id)a3;
- (int64_t)onSeekForwardCommand:(id)a3;
- (int64_t)onSkipBackward:(id)a3;
- (int64_t)onSkipForward:(id)a3;
- (int64_t)onSpecialSeekBackwardCommand:(id)a3;
- (int64_t)onSpecialSeekForwardCommand:(id)a3;
- (int64_t)onTogglePlayPauseCommand:(id)a3;
- (void)_setSkipBackwardCommand;
- (void)_setSkipForwardCommand;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)player:(id)a3 audiobookDidChange:(id)a4;
- (void)player:(id)a3 playbackRateDidChange:(float)a4;
- (void)skipControllerSettingsDidChange:(id)a3;
@end

@implementation BKAudiobookMediaRemoteAdaptor

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v4 = @"BKRemoteSkipInsteadOfNextTrackDefaultKey";
    v5 = &__kCFBooleanTrue;
    v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    [v2 registerDefaults:v3];
  }
}

+ (id)startAdaptor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_178EC;
  block[3] = &unk_3D090;
  block[4] = a1;
  if (qword_47A50 != -1)
  {
    dispatch_once(&qword_47A50, block);
  }

  v2 = qword_47A58;

  return v2;
}

- (BKAudiobookMediaRemoteAdaptor)initWithPlayer:(id)a3
{
  v5 = a3;
  v49.receiver = self;
  v49.super_class = BKAudiobookMediaRemoteAdaptor;
  v6 = [(BKAudiobookMediaRemoteAdaptor *)&v49 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, a3);
    v7->_skipBehavior = 1;
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 BOOLForKey:@"BKRemoteSkipInsteadOfNextTrackDefaultKey"];

    [(BKAudiobookMediaRemoteAdaptor *)v7 setSkipBehavior:v9 ^ 1];
    v10 = +[MPRemoteCommandCenter sharedCommandCenter];
    v11 = [v10 playCommand];
    [v11 addTarget:v7 action:"onPlayCommand:"];

    v12 = [v10 playCommand];
    [v12 setEnabled:1];

    v13 = [v10 pauseCommand];
    [v13 addTarget:v7 action:"onPauseCommand:"];

    v14 = [v10 pauseCommand];
    [v14 setEnabled:1];

    v15 = [v10 stopCommand];
    [v15 addTarget:v7 action:"onPauseCommand:"];

    v16 = [v10 stopCommand];
    [v16 setEnabled:1];

    v17 = [v10 togglePlayPauseCommand];
    [v17 addTarget:v7 action:"onTogglePlayPauseCommand:"];

    v18 = [v10 togglePlayPauseCommand];
    [v18 setEnabled:1];

    v19 = [v10 playItemInQueueCommand];
    [v19 addTarget:v7 action:"onPlayItemInQueueCommand:"];

    v20 = [v10 playItemInQueueCommand];
    [v20 setEnabled:1];

    v21 = [v10 nextTrackCommand];
    [v21 addTarget:v7 action:"onNextTrackCommand:"];

    v22 = [v10 nextTrackCommand];
    [v22 setEnabled:1];

    v23 = [v10 previousTrackCommand];
    [v23 addTarget:v7 action:"onPrevTrackCommand:"];

    v24 = [v10 previousTrackCommand];
    [v24 setEnabled:1];

    [(BKAudiobookMediaRemoteAdaptor *)v7 _setSkipForwardCommand];
    [(BKAudiobookMediaRemoteAdaptor *)v7 _setSkipBackwardCommand];
    v25 = [v10 seekForwardCommand];
    [v25 addTarget:v7 action:"onSeekForwardCommand:"];

    v26 = [v10 seekForwardCommand];
    [v26 setEnabled:1];

    v27 = [v10 seekBackwardCommand];
    [v27 addTarget:v7 action:"onSeekBackwardCommand:"];

    v28 = [v10 seekBackwardCommand];
    [v28 setEnabled:1];

    [(BKAudiobookPlayer *)v7->_player playbackRate];
    v30 = v29;
    v31 = [v10 changePlaybackRateCommand];
    LODWORD(v32) = v30;
    [v31 setPreferredRate:v32];

    v33 = [(BKAudiobookPlayer *)v7->_player precisionRates];
    v34 = [v10 changePlaybackRateCommand];
    [v34 setSupportedPlaybackRates:v33];

    v35 = [v10 changePlaybackRateCommand];
    [v35 addTarget:v7 action:"onChangePlaybackRateCommand:"];

    v36 = [v10 changePlaybackRateCommand];
    [v36 setEnabled:1];

    v37 = [v10 changePlaybackPositionCommand];
    [v37 setCanBeControlledByScrubbing:1];

    v38 = [v10 changePlaybackPositionCommand];
    [v38 addTarget:v7 action:"onChangePlaybackPositionCommand:"];

    v39 = [v10 changePlaybackPositionCommand];
    [v39 setEnabled:1];

    v40 = [v10 specialSeekForwardCommand];
    [v40 addTarget:v7 action:"onSpecialSeekForwardCommand:"];

    v41 = [v10 specialSeekForwardCommand];
    [v41 setEnabled:1];

    v42 = [v10 specialSeekBackwardCommand];
    [v42 addTarget:v7 action:"onSpecialSeekBackwardCommand:"];

    v43 = [v10 specialSeekBackwardCommand];
    [v43 setEnabled:1];

    v44 = +[NSUserDefaults standardUserDefaults];
    [v44 addObserver:v7 forKeyPath:@"BKRemoteSkipInsteadOfNextTrackDefaultKey" options:1 context:off_476D0];

    v45 = [(BKAudiobookMediaRemoteAdaptor *)v7 player];
    [v45 addObserver:v7];

    v46 = [(BKAudiobookMediaRemoteAdaptor *)v7 player];
    v47 = [v46 skipController];
    [v47 addObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"BKRemoteSkipInsteadOfNextTrackDefaultKey" context:off_476D0];

  v4 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  [v4 removeObserver:self];

  v5 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  v6 = [v5 skipController];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = BKAudiobookMediaRemoteAdaptor;
  [(BKAudiobookMediaRemoteAdaptor *)&v7 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_476D0 == a6)
  {
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_18124;
    v18[3] = &unk_3D0B8;
    v19 = v12;
    objc_copyWeak(&v20, &location);
    v13 = objc_retainBlock(v18);
    v14 = objc_retainBlock(v13);
    if (v14)
    {
      if (+[NSThread isMainThread])
      {
        v14[2](v14);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_181D0;
        block[3] = &unk_3C6B0;
        v17 = v14;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = BKAudiobookMediaRemoteAdaptor;
    [(BKAudiobookMediaRemoteAdaptor *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (int64_t)onPlayCommand:(id)a3
{
  v4 = a3;
  v5 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "play", buf, 2u);
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = v4;
  v7 = v4;

  v8 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  v9 = [v8 currentAudiobook];

  if (v9)
  {
    v10 = [(BKAudiobookMediaRemoteAdaptor *)self player];
    [v10 play];
  }

  else
  {
    v11 = BKAudiobooksMediaRemoteLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "deferring play command", v14, 2u);
    }

    [(BKAudiobookMediaRemoteAdaptor *)self setShouldProcessDeferredPlayComamnd:1];
  }

  v12 = self->_currentEvent;
  self->_currentEvent = 0;

  return 0;
}

- (int64_t)onPlayItemInQueueCommand:(id)a3
{
  v5 = a3;
  v6 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "play item in queue", buf, 2u);
  }

  objc_storeStrong(&self->_currentEvent, a3);
  v7 = [v5 contentItemID];
  if ([v7 length])
  {
    v8 = [(BKAudiobookMediaRemoteAdaptor *)self player];
    v9 = [v8 currentAudiobook];
    v10 = [v9 chapters];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_18534;
    v20[3] = &unk_3D0E0;
    v11 = v7;
    v21 = v11;
    v12 = [v10 indexOfObjectPassingTest:v20];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = BKAudiobooksMediaRemoteLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_219AC(v11, v13);
      }

      v14 = 200;
    }

    else
    {
      v16 = [(BKAudiobookMediaRemoteAdaptor *)self player];
      v17 = [v16 currentChapterIndex];

      if (v12 == v17)
      {
        v14 = 0;
LABEL_15:
        v15 = v21;
        goto LABEL_16;
      }

      v13 = [(BKAudiobookMediaRemoteAdaptor *)self player];
      [v13 playChapterAtIndex:v12];
      v14 = 0;
    }

    goto LABEL_15;
  }

  v15 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_21A24(v15);
  }

  v14 = 200;
LABEL_16:

  currentEvent = self->_currentEvent;
  self->_currentEvent = 0;

  return v14;
}

- (int64_t)onPauseCommand:(id)a3
{
  v4 = a3;
  v5 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "pause", v11, 2u);
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = v4;
  v7 = v4;

  v8 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  [v8 pause];

  v9 = self->_currentEvent;
  self->_currentEvent = 0;

  return 0;
}

- (int64_t)onTogglePlayPauseCommand:(id)a3
{
  v4 = a3;
  v5 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "toggle playPause", v11, 2u);
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = v4;
  v7 = v4;

  v8 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  [v8 togglePlayPause];

  v9 = self->_currentEvent;
  self->_currentEvent = 0;

  return 0;
}

- (int64_t)onNextTrackCommand:(id)a3
{
  v5 = a3;
  v6 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "next track", v14, 2u);
  }

  objc_storeStrong(&self->_currentEvent, a3);
  v7 = [(BKAudiobookMediaRemoteAdaptor *)self skipBehavior];
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = [(BKAudiobookMediaRemoteAdaptor *)self player];
      v9 = [v8 nextChapterOrRestartAudiobook];

      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 200;
      }
    }

    else
    {
      v10 = 200;
    }
  }

  else
  {
    v11 = [(BKAudiobookMediaRemoteAdaptor *)self _skipForwardCommandEvent];
    v10 = [(BKAudiobookMediaRemoteAdaptor *)self onSkipForward:v11];
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = 0;

  return v10;
}

- (int64_t)onPrevTrackCommand:(id)a3
{
  v5 = a3;
  v6 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "prev track", v14, 2u);
  }

  objc_storeStrong(&self->_currentEvent, a3);
  v7 = [(BKAudiobookMediaRemoteAdaptor *)self skipBehavior];
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = [(BKAudiobookMediaRemoteAdaptor *)self player];
      v9 = [v8 previousChapterOrRestartChapter];

      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 200;
      }
    }

    else
    {
      v10 = 200;
    }
  }

  else
  {
    v11 = [(BKAudiobookMediaRemoteAdaptor *)self _skipBackwardCommandEvent];
    v10 = [(BKAudiobookMediaRemoteAdaptor *)self onSkipBackward:v11];
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = 0;

  return v10;
}

- (int64_t)onSkipForward:(id)a3
{
  v4 = a3;
  v5 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "skip forward", v13, 2u);
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = v4;
  v7 = v4;

  v8 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  v9 = [v8 skipController];

  [(MPRemoteCommandEvent *)v7 interval];
  if ([v9 singleSkip:1 interval:?])
  {
    v10 = 0;
  }

  else
  {
    v10 = 200;
  }

  v11 = self->_currentEvent;
  self->_currentEvent = 0;

  return v10;
}

- (int64_t)onSkipBackward:(id)a3
{
  v4 = a3;
  v5 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "skip backward", v13, 2u);
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = v4;
  v7 = v4;

  v8 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  v9 = [v8 skipController];

  [(MPRemoteCommandEvent *)v7 interval];
  if ([v9 singleSkip:0 interval:?])
  {
    v10 = 0;
  }

  else
  {
    v10 = 200;
  }

  v11 = self->_currentEvent;
  self->_currentEvent = 0;

  return v10;
}

- (int64_t)onSeekForwardCommand:(id)a3
{
  v5 = a3;
  v6 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "seek forward", v14, 2u);
  }

  objc_storeStrong(&self->_currentEvent, a3);
  v7 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  v8 = [v7 skipController];

  v9 = [v5 type];
  if (v9 == &dword_0 + 1)
  {
    v10 = [v8 endSeek];
  }

  else
  {
    if (v9)
    {
      v11 = 200;
      goto LABEL_11;
    }

    v10 = [v8 startSeek:1];
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 200;
  }

LABEL_11:
  currentEvent = self->_currentEvent;
  self->_currentEvent = 0;

  return v11;
}

- (int64_t)onSeekBackwardCommand:(id)a3
{
  v5 = a3;
  v6 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "seek backward", v14, 2u);
  }

  objc_storeStrong(&self->_currentEvent, a3);
  v7 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  v8 = [v7 skipController];

  v9 = [v5 type];
  if (v9 == &dword_0 + 1)
  {
    v10 = [v8 endSeek];
  }

  else
  {
    if (v9)
    {
      v11 = 200;
      goto LABEL_11;
    }

    v10 = [v8 startSeek:0];
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 200;
  }

LABEL_11:
  currentEvent = self->_currentEvent;
  self->_currentEvent = 0;

  return v11;
}

- (int64_t)onSpecialSeekForwardCommand:(id)a3
{
  v5 = a3;
  v6 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "special seek forward", v15, 2u);
  }

  objc_storeStrong(&self->_currentEvent, a3);
  if ([v5 type] != &dword_0 + 3)
  {
    v11 = BKAudiobooksMediaRemoteLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_21A68(v5);
    }

LABEL_12:
    v10 = 200;
    goto LABEL_13;
  }

  v7 = [(BKAudiobookMediaRemoteAdaptor *)self skipBehavior];
  if (!v7)
  {
    v14 = [(BKAudiobookMediaRemoteAdaptor *)self _skipForwardCommandEvent];
    v10 = [(BKAudiobookMediaRemoteAdaptor *)self onSkipForward:v14];

    goto LABEL_13;
  }

  if (v7 != 1)
  {
    goto LABEL_12;
  }

  v8 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  v9 = [v8 nextChapterOrRestartAudiobook];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 200;
  }

LABEL_13:
  currentEvent = self->_currentEvent;
  self->_currentEvent = 0;

  return v10;
}

- (int64_t)onSpecialSeekBackwardCommand:(id)a3
{
  v5 = a3;
  v6 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "special seek backward", v15, 2u);
  }

  objc_storeStrong(&self->_currentEvent, a3);
  if ([v5 type] != &dword_0 + 3)
  {
    v11 = BKAudiobooksMediaRemoteLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_21A68(v5);
    }

LABEL_12:
    v10 = 200;
    goto LABEL_13;
  }

  v7 = [(BKAudiobookMediaRemoteAdaptor *)self skipBehavior];
  if (!v7)
  {
    v14 = [(BKAudiobookMediaRemoteAdaptor *)self _skipBackwardCommandEvent];
    v10 = [(BKAudiobookMediaRemoteAdaptor *)self onSkipBackward:v14];

    goto LABEL_13;
  }

  if (v7 != 1)
  {
    goto LABEL_12;
  }

  v8 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  v9 = [v8 previousChapterOrRestartChapter];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 200;
  }

LABEL_13:
  currentEvent = self->_currentEvent;
  self->_currentEvent = 0;

  return v10;
}

- (int64_t)onChangePlaybackRateCommand:(id)a3
{
  v4 = a3;
  v5 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "change playback rate", v11, 2u);
  }

  [v4 playbackRate];
  v7 = v6;

  v8 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  LODWORD(v9) = v7;
  [v8 setPlaybackRate:v9];

  return 0;
}

- (int64_t)onChangePlaybackPositionCommand:(id)a3
{
  v4 = a3;
  v5 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "playback position", v17, 2u);
  }

  v6 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  [v6 durationOfCurrentChapter];
  v8 = v7;

  v9 = v8 + -0.1;
  [(MPRemoteCommandEvent *)v4 positionTime];
  if (v9 < v10)
  {
    v10 = v9;
  }

  v11 = fmax(v10, 0.0);
  currentEvent = self->_currentEvent;
  self->_currentEvent = v4;
  v13 = v4;

  v14 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  [v14 movePositionInCurrentChapter:0 completion:v11];

  v15 = self->_currentEvent;
  self->_currentEvent = 0;

  return 0;
}

- (id)_skipForwardCommandEvent
{
  v2 = +[MPRemoteCommandCenter sharedCommandCenter];
  v3 = [v2 skipForwardCommand];

  v4 = [v3 preferredIntervals];
  v5 = [v4 firstObject];

  [v5 doubleValue];
  v6 = [v3 newCommandEventWithInterval:?];

  return v6;
}

- (id)_skipBackwardCommandEvent
{
  v2 = +[MPRemoteCommandCenter sharedCommandCenter];
  v3 = [v2 skipBackwardCommand];

  v4 = [v3 preferredIntervals];
  v5 = [v4 firstObject];

  [v5 doubleValue];
  v6 = [v3 newCommandEventWithInterval:?];

  return v6;
}

- (void)_setSkipForwardCommand
{
  v3 = +[MPRemoteCommandCenter sharedCommandCenter];
  v4 = [v3 skipForwardCommand];
  v5 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  v6 = [v5 skipController];
  [v6 forwardSkipTime];
  v7 = [NSNumber numberWithDouble:?];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [v4 setPreferredIntervals:v8];

  [v4 addTarget:self action:"onSkipForward:"];
  [v4 setEnabled:1];
}

- (void)_setSkipBackwardCommand
{
  v3 = +[MPRemoteCommandCenter sharedCommandCenter];
  v4 = [v3 skipBackwardCommand];
  v5 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  v6 = [v5 skipController];
  [v6 backwardSkipTime];
  v7 = [NSNumber numberWithDouble:?];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [v4 setPreferredIntervals:v8];

  [v4 addTarget:self action:"onSkipBackward:"];
  [v4 setEnabled:1];
}

- (void)skipControllerSettingsDidChange:(id)a3
{
  [(BKAudiobookMediaRemoteAdaptor *)self _setSkipForwardCommand];

  [(BKAudiobookMediaRemoteAdaptor *)self _setSkipBackwardCommand];
}

- (void)player:(id)a3 playbackRateDidChange:(float)a4
{
  v7 = +[MPRemoteCommandCenter sharedCommandCenter];
  v5 = [v7 changePlaybackRateCommand];
  *&v6 = a4;
  [v5 setPreferredRate:v6];
}

- (void)player:(id)a3 audiobookDidChange:(id)a4
{
  v6 = [(BKAudiobookMediaRemoteAdaptor *)self shouldProcessDeferredPlayComamnd];
  if (a4 && v6)
  {
    v7 = BKAudiobooksMediaRemoteLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "executing deferred play command", v9, 2u);
    }

    v8 = [(BKAudiobookMediaRemoteAdaptor *)self player];
    [v8 play];
  }

  [(BKAudiobookMediaRemoteAdaptor *)self setShouldProcessDeferredPlayComamnd:0];
}

@end