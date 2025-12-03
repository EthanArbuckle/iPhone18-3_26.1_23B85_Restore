@interface BKAudiobookMediaRemoteAdaptor
+ (id)startAdaptor;
+ (void)initialize;
- (BKAudiobookMediaRemoteAdaptor)initWithPlayer:(id)player;
- (id)_skipBackwardCommandEvent;
- (id)_skipForwardCommandEvent;
- (int64_t)onChangePlaybackPositionCommand:(id)command;
- (int64_t)onChangePlaybackRateCommand:(id)command;
- (int64_t)onNextTrackCommand:(id)command;
- (int64_t)onPauseCommand:(id)command;
- (int64_t)onPlayCommand:(id)command;
- (int64_t)onPlayItemInQueueCommand:(id)command;
- (int64_t)onPrevTrackCommand:(id)command;
- (int64_t)onSeekBackwardCommand:(id)command;
- (int64_t)onSeekForwardCommand:(id)command;
- (int64_t)onSkipBackward:(id)backward;
- (int64_t)onSkipForward:(id)forward;
- (int64_t)onSpecialSeekBackwardCommand:(id)command;
- (int64_t)onSpecialSeekForwardCommand:(id)command;
- (int64_t)onTogglePlayPauseCommand:(id)command;
- (void)_setSkipBackwardCommand;
- (void)_setSkipForwardCommand;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)player:(id)player audiobookDidChange:(id)change;
- (void)player:(id)player playbackRateDidChange:(float)change;
- (void)skipControllerSettingsDidChange:(id)change;
@end

@implementation BKAudiobookMediaRemoteAdaptor

+ (void)initialize
{
  if (objc_opt_class() == self)
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
  block[4] = self;
  if (qword_47A50 != -1)
  {
    dispatch_once(&qword_47A50, block);
  }

  v2 = qword_47A58;

  return v2;
}

- (BKAudiobookMediaRemoteAdaptor)initWithPlayer:(id)player
{
  playerCopy = player;
  v49.receiver = self;
  v49.super_class = BKAudiobookMediaRemoteAdaptor;
  v6 = [(BKAudiobookMediaRemoteAdaptor *)&v49 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, player);
    v7->_skipBehavior = 1;
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 BOOLForKey:@"BKRemoteSkipInsteadOfNextTrackDefaultKey"];

    [(BKAudiobookMediaRemoteAdaptor *)v7 setSkipBehavior:v9 ^ 1];
    v10 = +[MPRemoteCommandCenter sharedCommandCenter];
    playCommand = [v10 playCommand];
    [playCommand addTarget:v7 action:"onPlayCommand:"];

    playCommand2 = [v10 playCommand];
    [playCommand2 setEnabled:1];

    pauseCommand = [v10 pauseCommand];
    [pauseCommand addTarget:v7 action:"onPauseCommand:"];

    pauseCommand2 = [v10 pauseCommand];
    [pauseCommand2 setEnabled:1];

    stopCommand = [v10 stopCommand];
    [stopCommand addTarget:v7 action:"onPauseCommand:"];

    stopCommand2 = [v10 stopCommand];
    [stopCommand2 setEnabled:1];

    togglePlayPauseCommand = [v10 togglePlayPauseCommand];
    [togglePlayPauseCommand addTarget:v7 action:"onTogglePlayPauseCommand:"];

    togglePlayPauseCommand2 = [v10 togglePlayPauseCommand];
    [togglePlayPauseCommand2 setEnabled:1];

    playItemInQueueCommand = [v10 playItemInQueueCommand];
    [playItemInQueueCommand addTarget:v7 action:"onPlayItemInQueueCommand:"];

    playItemInQueueCommand2 = [v10 playItemInQueueCommand];
    [playItemInQueueCommand2 setEnabled:1];

    nextTrackCommand = [v10 nextTrackCommand];
    [nextTrackCommand addTarget:v7 action:"onNextTrackCommand:"];

    nextTrackCommand2 = [v10 nextTrackCommand];
    [nextTrackCommand2 setEnabled:1];

    previousTrackCommand = [v10 previousTrackCommand];
    [previousTrackCommand addTarget:v7 action:"onPrevTrackCommand:"];

    previousTrackCommand2 = [v10 previousTrackCommand];
    [previousTrackCommand2 setEnabled:1];

    [(BKAudiobookMediaRemoteAdaptor *)v7 _setSkipForwardCommand];
    [(BKAudiobookMediaRemoteAdaptor *)v7 _setSkipBackwardCommand];
    seekForwardCommand = [v10 seekForwardCommand];
    [seekForwardCommand addTarget:v7 action:"onSeekForwardCommand:"];

    seekForwardCommand2 = [v10 seekForwardCommand];
    [seekForwardCommand2 setEnabled:1];

    seekBackwardCommand = [v10 seekBackwardCommand];
    [seekBackwardCommand addTarget:v7 action:"onSeekBackwardCommand:"];

    seekBackwardCommand2 = [v10 seekBackwardCommand];
    [seekBackwardCommand2 setEnabled:1];

    [(BKAudiobookPlayer *)v7->_player playbackRate];
    v30 = v29;
    changePlaybackRateCommand = [v10 changePlaybackRateCommand];
    LODWORD(v32) = v30;
    [changePlaybackRateCommand setPreferredRate:v32];

    precisionRates = [(BKAudiobookPlayer *)v7->_player precisionRates];
    changePlaybackRateCommand2 = [v10 changePlaybackRateCommand];
    [changePlaybackRateCommand2 setSupportedPlaybackRates:precisionRates];

    changePlaybackRateCommand3 = [v10 changePlaybackRateCommand];
    [changePlaybackRateCommand3 addTarget:v7 action:"onChangePlaybackRateCommand:"];

    changePlaybackRateCommand4 = [v10 changePlaybackRateCommand];
    [changePlaybackRateCommand4 setEnabled:1];

    changePlaybackPositionCommand = [v10 changePlaybackPositionCommand];
    [changePlaybackPositionCommand setCanBeControlledByScrubbing:1];

    changePlaybackPositionCommand2 = [v10 changePlaybackPositionCommand];
    [changePlaybackPositionCommand2 addTarget:v7 action:"onChangePlaybackPositionCommand:"];

    changePlaybackPositionCommand3 = [v10 changePlaybackPositionCommand];
    [changePlaybackPositionCommand3 setEnabled:1];

    specialSeekForwardCommand = [v10 specialSeekForwardCommand];
    [specialSeekForwardCommand addTarget:v7 action:"onSpecialSeekForwardCommand:"];

    specialSeekForwardCommand2 = [v10 specialSeekForwardCommand];
    [specialSeekForwardCommand2 setEnabled:1];

    specialSeekBackwardCommand = [v10 specialSeekBackwardCommand];
    [specialSeekBackwardCommand addTarget:v7 action:"onSpecialSeekBackwardCommand:"];

    specialSeekBackwardCommand2 = [v10 specialSeekBackwardCommand];
    [specialSeekBackwardCommand2 setEnabled:1];

    v44 = +[NSUserDefaults standardUserDefaults];
    [v44 addObserver:v7 forKeyPath:@"BKRemoteSkipInsteadOfNextTrackDefaultKey" options:1 context:off_476D0];

    player = [(BKAudiobookMediaRemoteAdaptor *)v7 player];
    [player addObserver:v7];

    player2 = [(BKAudiobookMediaRemoteAdaptor *)v7 player];
    skipController = [player2 skipController];
    [skipController addObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"BKRemoteSkipInsteadOfNextTrackDefaultKey" context:off_476D0];

  player = [(BKAudiobookMediaRemoteAdaptor *)self player];
  [player removeObserver:self];

  player2 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  skipController = [player2 skipController];
  [skipController removeObserver:self];

  v7.receiver = self;
  v7.super_class = BKAudiobookMediaRemoteAdaptor;
  [(BKAudiobookMediaRemoteAdaptor *)&v7 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_476D0 == context)
  {
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_18124;
    v18[3] = &unk_3D0B8;
    v19 = changeCopy;
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
    [(BKAudiobookMediaRemoteAdaptor *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (int64_t)onPlayCommand:(id)command
{
  commandCopy = command;
  v5 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "play", buf, 2u);
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = commandCopy;
  v7 = commandCopy;

  player = [(BKAudiobookMediaRemoteAdaptor *)self player];
  currentAudiobook = [player currentAudiobook];

  if (currentAudiobook)
  {
    player2 = [(BKAudiobookMediaRemoteAdaptor *)self player];
    [player2 play];
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

- (int64_t)onPlayItemInQueueCommand:(id)command
{
  commandCopy = command;
  v6 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "play item in queue", buf, 2u);
  }

  objc_storeStrong(&self->_currentEvent, command);
  contentItemID = [commandCopy contentItemID];
  if ([contentItemID length])
  {
    player = [(BKAudiobookMediaRemoteAdaptor *)self player];
    currentAudiobook = [player currentAudiobook];
    chapters = [currentAudiobook chapters];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_18534;
    v20[3] = &unk_3D0E0;
    v11 = contentItemID;
    v21 = v11;
    v12 = [chapters indexOfObjectPassingTest:v20];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      player3 = BKAudiobooksMediaRemoteLog();
      if (os_log_type_enabled(player3, OS_LOG_TYPE_ERROR))
      {
        sub_219AC(v11, player3);
      }

      v14 = 200;
    }

    else
    {
      player2 = [(BKAudiobookMediaRemoteAdaptor *)self player];
      currentChapterIndex = [player2 currentChapterIndex];

      if (v12 == currentChapterIndex)
      {
        v14 = 0;
LABEL_15:
        v15 = v21;
        goto LABEL_16;
      }

      player3 = [(BKAudiobookMediaRemoteAdaptor *)self player];
      [player3 playChapterAtIndex:v12];
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

- (int64_t)onPauseCommand:(id)command
{
  commandCopy = command;
  v5 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "pause", v11, 2u);
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = commandCopy;
  v7 = commandCopy;

  player = [(BKAudiobookMediaRemoteAdaptor *)self player];
  [player pause];

  v9 = self->_currentEvent;
  self->_currentEvent = 0;

  return 0;
}

- (int64_t)onTogglePlayPauseCommand:(id)command
{
  commandCopy = command;
  v5 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "toggle playPause", v11, 2u);
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = commandCopy;
  v7 = commandCopy;

  player = [(BKAudiobookMediaRemoteAdaptor *)self player];
  [player togglePlayPause];

  v9 = self->_currentEvent;
  self->_currentEvent = 0;

  return 0;
}

- (int64_t)onNextTrackCommand:(id)command
{
  commandCopy = command;
  v6 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "next track", v14, 2u);
  }

  objc_storeStrong(&self->_currentEvent, command);
  skipBehavior = [(BKAudiobookMediaRemoteAdaptor *)self skipBehavior];
  if (skipBehavior)
  {
    if (skipBehavior == 1)
    {
      player = [(BKAudiobookMediaRemoteAdaptor *)self player];
      nextChapterOrRestartAudiobook = [player nextChapterOrRestartAudiobook];

      if (nextChapterOrRestartAudiobook)
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
    _skipForwardCommandEvent = [(BKAudiobookMediaRemoteAdaptor *)self _skipForwardCommandEvent];
    v10 = [(BKAudiobookMediaRemoteAdaptor *)self onSkipForward:_skipForwardCommandEvent];
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = 0;

  return v10;
}

- (int64_t)onPrevTrackCommand:(id)command
{
  commandCopy = command;
  v6 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "prev track", v14, 2u);
  }

  objc_storeStrong(&self->_currentEvent, command);
  skipBehavior = [(BKAudiobookMediaRemoteAdaptor *)self skipBehavior];
  if (skipBehavior)
  {
    if (skipBehavior == 1)
    {
      player = [(BKAudiobookMediaRemoteAdaptor *)self player];
      previousChapterOrRestartChapter = [player previousChapterOrRestartChapter];

      if (previousChapterOrRestartChapter)
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
    _skipBackwardCommandEvent = [(BKAudiobookMediaRemoteAdaptor *)self _skipBackwardCommandEvent];
    v10 = [(BKAudiobookMediaRemoteAdaptor *)self onSkipBackward:_skipBackwardCommandEvent];
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = 0;

  return v10;
}

- (int64_t)onSkipForward:(id)forward
{
  forwardCopy = forward;
  v5 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "skip forward", v13, 2u);
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = forwardCopy;
  v7 = forwardCopy;

  player = [(BKAudiobookMediaRemoteAdaptor *)self player];
  skipController = [player skipController];

  [(MPRemoteCommandEvent *)v7 interval];
  if ([skipController singleSkip:1 interval:?])
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

- (int64_t)onSkipBackward:(id)backward
{
  backwardCopy = backward;
  v5 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "skip backward", v13, 2u);
  }

  currentEvent = self->_currentEvent;
  self->_currentEvent = backwardCopy;
  v7 = backwardCopy;

  player = [(BKAudiobookMediaRemoteAdaptor *)self player];
  skipController = [player skipController];

  [(MPRemoteCommandEvent *)v7 interval];
  if ([skipController singleSkip:0 interval:?])
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

- (int64_t)onSeekForwardCommand:(id)command
{
  commandCopy = command;
  v6 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "seek forward", v14, 2u);
  }

  objc_storeStrong(&self->_currentEvent, command);
  player = [(BKAudiobookMediaRemoteAdaptor *)self player];
  skipController = [player skipController];

  type = [commandCopy type];
  if (type == &dword_0 + 1)
  {
    endSeek = [skipController endSeek];
  }

  else
  {
    if (type)
    {
      v11 = 200;
      goto LABEL_11;
    }

    endSeek = [skipController startSeek:1];
  }

  if (endSeek)
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

- (int64_t)onSeekBackwardCommand:(id)command
{
  commandCopy = command;
  v6 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "seek backward", v14, 2u);
  }

  objc_storeStrong(&self->_currentEvent, command);
  player = [(BKAudiobookMediaRemoteAdaptor *)self player];
  skipController = [player skipController];

  type = [commandCopy type];
  if (type == &dword_0 + 1)
  {
    endSeek = [skipController endSeek];
  }

  else
  {
    if (type)
    {
      v11 = 200;
      goto LABEL_11;
    }

    endSeek = [skipController startSeek:0];
  }

  if (endSeek)
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

- (int64_t)onSpecialSeekForwardCommand:(id)command
{
  commandCopy = command;
  v6 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "special seek forward", v15, 2u);
  }

  objc_storeStrong(&self->_currentEvent, command);
  if ([commandCopy type] != &dword_0 + 3)
  {
    v11 = BKAudiobooksMediaRemoteLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_21A68(commandCopy);
    }

LABEL_12:
    v10 = 200;
    goto LABEL_13;
  }

  skipBehavior = [(BKAudiobookMediaRemoteAdaptor *)self skipBehavior];
  if (!skipBehavior)
  {
    _skipForwardCommandEvent = [(BKAudiobookMediaRemoteAdaptor *)self _skipForwardCommandEvent];
    v10 = [(BKAudiobookMediaRemoteAdaptor *)self onSkipForward:_skipForwardCommandEvent];

    goto LABEL_13;
  }

  if (skipBehavior != 1)
  {
    goto LABEL_12;
  }

  player = [(BKAudiobookMediaRemoteAdaptor *)self player];
  nextChapterOrRestartAudiobook = [player nextChapterOrRestartAudiobook];

  if (nextChapterOrRestartAudiobook)
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

- (int64_t)onSpecialSeekBackwardCommand:(id)command
{
  commandCopy = command;
  v6 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "special seek backward", v15, 2u);
  }

  objc_storeStrong(&self->_currentEvent, command);
  if ([commandCopy type] != &dword_0 + 3)
  {
    v11 = BKAudiobooksMediaRemoteLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_21A68(commandCopy);
    }

LABEL_12:
    v10 = 200;
    goto LABEL_13;
  }

  skipBehavior = [(BKAudiobookMediaRemoteAdaptor *)self skipBehavior];
  if (!skipBehavior)
  {
    _skipBackwardCommandEvent = [(BKAudiobookMediaRemoteAdaptor *)self _skipBackwardCommandEvent];
    v10 = [(BKAudiobookMediaRemoteAdaptor *)self onSkipBackward:_skipBackwardCommandEvent];

    goto LABEL_13;
  }

  if (skipBehavior != 1)
  {
    goto LABEL_12;
  }

  player = [(BKAudiobookMediaRemoteAdaptor *)self player];
  previousChapterOrRestartChapter = [player previousChapterOrRestartChapter];

  if (previousChapterOrRestartChapter)
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

- (int64_t)onChangePlaybackRateCommand:(id)command
{
  commandCopy = command;
  v5 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "change playback rate", v11, 2u);
  }

  [commandCopy playbackRate];
  v7 = v6;

  player = [(BKAudiobookMediaRemoteAdaptor *)self player];
  LODWORD(v9) = v7;
  [player setPlaybackRate:v9];

  return 0;
}

- (int64_t)onChangePlaybackPositionCommand:(id)command
{
  commandCopy = command;
  v5 = BKAudiobooksMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "playback position", v17, 2u);
  }

  player = [(BKAudiobookMediaRemoteAdaptor *)self player];
  [player durationOfCurrentChapter];
  v8 = v7;

  v9 = v8 + -0.1;
  [(MPRemoteCommandEvent *)commandCopy positionTime];
  if (v9 < v10)
  {
    v10 = v9;
  }

  v11 = fmax(v10, 0.0);
  currentEvent = self->_currentEvent;
  self->_currentEvent = commandCopy;
  v13 = commandCopy;

  player2 = [(BKAudiobookMediaRemoteAdaptor *)self player];
  [player2 movePositionInCurrentChapter:0 completion:v11];

  v15 = self->_currentEvent;
  self->_currentEvent = 0;

  return 0;
}

- (id)_skipForwardCommandEvent
{
  v2 = +[MPRemoteCommandCenter sharedCommandCenter];
  skipForwardCommand = [v2 skipForwardCommand];

  preferredIntervals = [skipForwardCommand preferredIntervals];
  firstObject = [preferredIntervals firstObject];

  [firstObject doubleValue];
  v6 = [skipForwardCommand newCommandEventWithInterval:?];

  return v6;
}

- (id)_skipBackwardCommandEvent
{
  v2 = +[MPRemoteCommandCenter sharedCommandCenter];
  skipBackwardCommand = [v2 skipBackwardCommand];

  preferredIntervals = [skipBackwardCommand preferredIntervals];
  firstObject = [preferredIntervals firstObject];

  [firstObject doubleValue];
  v6 = [skipBackwardCommand newCommandEventWithInterval:?];

  return v6;
}

- (void)_setSkipForwardCommand
{
  v3 = +[MPRemoteCommandCenter sharedCommandCenter];
  skipForwardCommand = [v3 skipForwardCommand];
  player = [(BKAudiobookMediaRemoteAdaptor *)self player];
  skipController = [player skipController];
  [skipController forwardSkipTime];
  v7 = [NSNumber numberWithDouble:?];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [skipForwardCommand setPreferredIntervals:v8];

  [skipForwardCommand addTarget:self action:"onSkipForward:"];
  [skipForwardCommand setEnabled:1];
}

- (void)_setSkipBackwardCommand
{
  v3 = +[MPRemoteCommandCenter sharedCommandCenter];
  skipBackwardCommand = [v3 skipBackwardCommand];
  player = [(BKAudiobookMediaRemoteAdaptor *)self player];
  skipController = [player skipController];
  [skipController backwardSkipTime];
  v7 = [NSNumber numberWithDouble:?];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [skipBackwardCommand setPreferredIntervals:v8];

  [skipBackwardCommand addTarget:self action:"onSkipBackward:"];
  [skipBackwardCommand setEnabled:1];
}

- (void)skipControllerSettingsDidChange:(id)change
{
  [(BKAudiobookMediaRemoteAdaptor *)self _setSkipForwardCommand];

  [(BKAudiobookMediaRemoteAdaptor *)self _setSkipBackwardCommand];
}

- (void)player:(id)player playbackRateDidChange:(float)change
{
  v7 = +[MPRemoteCommandCenter sharedCommandCenter];
  changePlaybackRateCommand = [v7 changePlaybackRateCommand];
  *&v6 = change;
  [changePlaybackRateCommand setPreferredRate:v6];
}

- (void)player:(id)player audiobookDidChange:(id)change
{
  shouldProcessDeferredPlayComamnd = [(BKAudiobookMediaRemoteAdaptor *)self shouldProcessDeferredPlayComamnd];
  if (change && shouldProcessDeferredPlayComamnd)
  {
    v7 = BKAudiobooksMediaRemoteLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "executing deferred play command", v9, 2u);
    }

    player = [(BKAudiobookMediaRemoteAdaptor *)self player];
    [player play];
  }

  [(BKAudiobookMediaRemoteAdaptor *)self setShouldProcessDeferredPlayComamnd:0];
}

@end