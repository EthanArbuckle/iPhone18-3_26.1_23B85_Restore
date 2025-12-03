@interface MPRemoteCommandCenter
+ (MPRemoteCommandCenter)sharedCommandCenter;
+ (id)commandCenterForPlayerID:(id)d;
+ (id)commandCenterForPlayerPath:(id)path;
+ (void)getPendingCommandTypesWithCompletion:(id)completion;
+ (void)updateLaunchCommandsWithConfigurationHandler:(id)handler;
- (BOOL)canBeNowPlayingApplication;
- (BOOL)commandHandlersRegistered;
- (BOOL)containsCommand:(id)command;
- (BOOL)isInvalidated;
- (MPAdvanceRepeatModeCommand)advanceRepeatModeCommand;
- (MPAdvanceShuffleModeCommand)advanceShuffleModeCommand;
- (MPChangePlaybackPositionCommand)changePlaybackPositionCommand;
- (MPChangePlaybackRateCommand)changePlaybackRateCommand;
- (MPChangeQueueEndActionCommand)changeQueueEndActionCommand;
- (MPChangeRepeatModeCommand)changeRepeatModeCommand;
- (MPChangeShuffleModeCommand)changeShuffleModeCommand;
- (MPEnhanceDialogueCommand)enhanceDialogueCommand;
- (MPFeedbackCommand)addItemToLibraryCommand;
- (MPFeedbackCommand)addNowPlayingItemToLibraryCommand;
- (MPFeedbackCommand)bookmarkCommand;
- (MPFeedbackCommand)dislikeCommand;
- (MPFeedbackCommand)likeCommand;
- (MPInsertIntoPlaybackQueueCommand)insertIntoPlaybackQueueCommand;
- (MPPreloadPlaybackSessionCommand)preloadPlaybackSessionCommand;
- (MPPrepareForSetPlaybackQueueCommand)prepareForSetPlaybackQueueCommand;
- (MPRatingCommand)ratingCommand;
- (MPRemoteCommand)clearUpNextCommand;
- (MPRemoteCommand)createRadioStationCommand;
- (MPRemoteCommand)delegateAccountCommand;
- (MPRemoteCommand)disableLanguageOptionCommand;
- (MPRemoteCommand)discardPlaybackSessionCommand;
- (MPRemoteCommand)enableLanguageOptionCommand;
- (MPRemoteCommand)leaveSharedPlaybackSessionCommand;
- (MPRemoteCommand)nextTrackCommand;
- (MPRemoteCommand)pauseCommand;
- (MPRemoteCommand)performDialogActionCommand;
- (MPRemoteCommand)playCommand;
- (MPRemoteCommand)playItemInQueueCommand;
- (MPRemoteCommand)postEventNoticeCommand;
- (MPRemoteCommand)prepareVocalsControlCommand;
- (MPRemoteCommand)previousTrackCommand;
- (MPRemoteCommand)removeFromPlaybackQueueCommand;
- (MPRemoteCommand)reshuffleCommand;
- (MPRemoteCommand)seekBackwardCommand;
- (MPRemoteCommand)seekForwardCommand;
- (MPRemoteCommand)specialSeekBackwardCommand;
- (MPRemoteCommand)specialSeekForwardCommand;
- (MPRemoteCommand)stopCommand;
- (MPRemoteCommand)togglePlayPauseCommand;
- (MPRemoteCommandCenter)initWithPlayerID:(id)d;
- (MPRemoteCommandCenter)initWithPlayerPath:(id)path;
- (MPRemoteCommandCenterDelegate)delegate;
- (MPReorderQueueCommand)reorderQueueCommand;
- (MPSetPlaybackQueueCommand)setPlaybackQueueCommand;
- (MPSetPlaybackSessionCommand)setPlaybackSessionCommand;
- (MPSetPriorityForPlaybackSessionCommand)setPriorityForPlaybackSessionCommand;
- (MPSetSleepTimerCommand)setSleepTimerCommand;
- (MPSkipIntervalCommand)skipBackwardCommand;
- (MPSkipIntervalCommand)skipForwardCommand;
- (MPToggleTransitionsCommand)toggleTransitionsCommand;
- (MPVocalsControlCommand)vocalsControlCommand;
- (NSString)playerID;
- (id)_activeCommands;
- (id)_createRemoteCommandWithConcreteClass:(Class)class mediaRemoteType:(unsigned int)type;
- (id)_debugCommandDescriptions;
- (id)_stateDictionary;
- (void)_commandTargetsDidChangeNotification:(id)notification;
- (void)_dispatchMediaRemoteCommand:(unsigned int)command withOptions:(id)options completion:(id)completion;
- (void)_flushEventQueue;
- (void)_locked_reevaluateCanBeNowPlayingApplication;
- (void)_locked_stopMediaRemoteSync;
- (void)_scheduleSupportedCommandsChanged:(BOOL)changed;
- (void)_startMediaRemoteSync;
- (void)dealloc;
- (void)dispatchCommandEvent:(id)event completion:(id)completion;
- (void)getPendingCommandTypesWithCompletion:(id)completion;
- (void)invalidate;
- (void)remoteCommandDidMutatePropagatableProperty:(id)property;
- (void)setDisableAutomaticCanBeNowPlaying:(BOOL)playing;
@end

@implementation MPRemoteCommandCenter

- (NSString)playerID
{
  player = [(MRPlayerPath *)self->_playerPath player];
  identifier = [player identifier];
  v4 = [identifier copy];

  return v4;
}

+ (MPRemoteCommandCenter)sharedCommandCenter
{
  if (sharedCommandCenter___once != -1)
  {
    dispatch_once(&sharedCommandCenter___once, &__block_literal_global_9);
  }

  v3 = sharedCommandCenter___sharedCommandCenter;

  return v3;
}

void __44__MPRemoteCommandCenter_sharedCommandCenter__block_invoke()
{
  v0 = [[MPRemoteCommandCenter alloc] initWithPlayerID:0];
  v1 = sharedCommandCenter___sharedCommandCenter;
  sharedCommandCenter___sharedCommandCenter = v0;
}

- (void)_startMediaRemoteSync
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_mediaRemoteCommandHandler)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPRemoteCommandCenter.m" lineNumber:157 description:@"_startMediaRemoteSync should only be called from -initWithPlayerPath:"];
  }

  objc_initWeak(&location, self);
  v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    playerID = [(MPRemoteCommandCenter *)self playerID];
    playerPath = self->_playerPath;
    *buf = 134218498;
    selfCopy = self;
    v16 = 2114;
    v17 = playerID;
    v18 = 2114;
    v19 = playerPath;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _startMediaRemoteSync | MRMediaRemoteAddCommandHandlerForPlayer [] playerPath=%{public}@", buf, 0x20u);
  }

  v11 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v12, &location);
  v6 = MRMediaRemoteAddCommandHandlerForPlayer();
  mediaRemoteCommandHandler = self->_mediaRemoteCommandHandler;
  self->_mediaRemoteCommandHandler = v6;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__commandTargetsDidChangeNotification_ name:@"MPRemoteCommandTargetsDidChangeNotification" object:0];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (MPSetPlaybackQueueCommand)setPlaybackQueueCommand
{
  setPlaybackQueueCommand = self->_setPlaybackQueueCommand;
  if (!setPlaybackQueueCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:122];
    v5 = self->_setPlaybackQueueCommand;
    self->_setPlaybackQueueCommand = v4;

    setPlaybackQueueCommand = self->_setPlaybackQueueCommand;
  }

  return setPlaybackQueueCommand;
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__MPRemoteCommandCenter_isInvalidated__block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  LOBYTE(self) = self->_invalidated;
  v3[2]();

  return self;
}

- (id)_activeCommands
{
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__MPRemoteCommandCenter__activeCommands__block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(NSMutableArray *)self->_activeCommands sortedArrayUsingComparator:&__block_literal_global_104_56431];
  v3[2](v3);

  return v4;
}

- (void)_locked_reevaluateCanBeNowPlayingApplication
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_invalidated)
  {
    v3 = self->_anyCommandHandlersRegistered && !self->_disableAutomaticCanBeNowPlaying;
    v4 = v3;
    if (self->_canBeNowPlayingApplication != v4)
    {
      v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl_Oversize");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        playerPath = self->_playerPath;
        activeCommands = self->_activeCommands;
        v8[0] = 67109634;
        v8[1] = v4;
        v9 = 2114;
        v10 = playerPath;
        v11 = 2114;
        v12 = activeCommands;
        _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[RCC] reevaluateCanBeNowPlayingApplication: canBeNowPlayingApplication=%{BOOL}u playerPath=%{public}@ commands=%{public}@", v8, 0x1Cu);
      }

      self->_canBeNowPlayingApplication = v4;
    }
  }
}

- (MPSetPlaybackSessionCommand)setPlaybackSessionCommand
{
  setPlaybackSessionCommand = self->_setPlaybackSessionCommand;
  if (!setPlaybackSessionCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:133];
    v5 = self->_setPlaybackSessionCommand;
    self->_setPlaybackSessionCommand = v4;

    setPlaybackSessionCommand = self->_setPlaybackSessionCommand;
  }

  return setPlaybackSessionCommand;
}

- (MPPrepareForSetPlaybackQueueCommand)prepareForSetPlaybackQueueCommand
{
  prepareForSetPlaybackQueueCommand = self->_prepareForSetPlaybackQueueCommand;
  if (!prepareForSetPlaybackQueueCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:132];
    v5 = self->_prepareForSetPlaybackQueueCommand;
    self->_prepareForSetPlaybackQueueCommand = v4;

    prepareForSetPlaybackQueueCommand = self->_prepareForSetPlaybackQueueCommand;
  }

  return prepareForSetPlaybackQueueCommand;
}

- (void)invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    playerID = [(MPRemoteCommandCenter *)self playerID];
    *buf = 134218242;
    selfCopy = self;
    v10 = 2114;
    v11 = playerID;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] invalidate", buf, 0x16u);
  }

  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__MPRemoteCommandCenter_invalidate__block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  self->_invalidated = 1;
  [(MPRemoteCommandCenter *)self _locked_stopMediaRemoteSync];
  v6 = objc_opt_class();
  objc_sync_enter(v6);
  [__commandCenterMap removeObjectForKey:self->_playerPath];
  objc_sync_exit(v6);

  v5[2](v5);
}

- (MPRemoteCommand)playCommand
{
  playCommand = self->_playCommand;
  if (!playCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:0];
    v5 = self->_playCommand;
    self->_playCommand = v4;

    playCommand = self->_playCommand;
  }

  return playCommand;
}

- (BOOL)canBeNowPlayingApplication
{
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__MPRemoteCommandCenter_canBeNowPlayingApplication__block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  LOBYTE(self) = self->_canBeNowPlayingApplication;
  v3[2]();

  return self;
}

- (MPRemoteCommand)pauseCommand
{
  pauseCommand = self->_pauseCommand;
  if (!pauseCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:1];
    v5 = self->_pauseCommand;
    self->_pauseCommand = v4;

    pauseCommand = self->_pauseCommand;
  }

  return pauseCommand;
}

- (MPRemoteCommand)stopCommand
{
  stopCommand = self->_stopCommand;
  if (!stopCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:3];
    v5 = self->_stopCommand;
    self->_stopCommand = v4;

    stopCommand = self->_stopCommand;
  }

  return stopCommand;
}

- (MPRemoteCommand)togglePlayPauseCommand
{
  togglePlayPauseCommand = self->_togglePlayPauseCommand;
  if (!togglePlayPauseCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:2];
    v5 = self->_togglePlayPauseCommand;
    self->_togglePlayPauseCommand = v4;

    togglePlayPauseCommand = self->_togglePlayPauseCommand;
  }

  return togglePlayPauseCommand;
}

- (MPRemoteCommand)playItemInQueueCommand
{
  playItemInQueueCommand = self->_playItemInQueueCommand;
  if (!playItemInQueueCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:131];
    v5 = self->_playItemInQueueCommand;
    self->_playItemInQueueCommand = v4;

    playItemInQueueCommand = self->_playItemInQueueCommand;
  }

  return playItemInQueueCommand;
}

- (MPRemoteCommand)nextTrackCommand
{
  nextTrackCommand = self->_nextTrackCommand;
  if (!nextTrackCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:4];
    v5 = self->_nextTrackCommand;
    self->_nextTrackCommand = v4;

    nextTrackCommand = self->_nextTrackCommand;
  }

  return nextTrackCommand;
}

- (MPRemoteCommand)previousTrackCommand
{
  previousTrackCommand = self->_previousTrackCommand;
  if (!previousTrackCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:5];
    v5 = self->_previousTrackCommand;
    self->_previousTrackCommand = v4;

    previousTrackCommand = self->_previousTrackCommand;
  }

  return previousTrackCommand;
}

- (MPSkipIntervalCommand)skipForwardCommand
{
  skipForwardCommand = self->_skipForwardCommand;
  if (!skipForwardCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:17];
    v5 = self->_skipForwardCommand;
    self->_skipForwardCommand = v4;

    skipForwardCommand = self->_skipForwardCommand;
  }

  return skipForwardCommand;
}

- (MPSkipIntervalCommand)skipBackwardCommand
{
  skipBackwardCommand = self->_skipBackwardCommand;
  if (!skipBackwardCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:18];
    v5 = self->_skipBackwardCommand;
    self->_skipBackwardCommand = v4;

    skipBackwardCommand = self->_skipBackwardCommand;
  }

  return skipBackwardCommand;
}

- (MPRemoteCommand)seekForwardCommand
{
  seekForwardCommand = self->_seekForwardCommand;
  if (!seekForwardCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:8];
    v5 = self->_seekForwardCommand;
    self->_seekForwardCommand = v4;

    seekForwardCommand = self->_seekForwardCommand;
  }

  return seekForwardCommand;
}

- (MPRemoteCommand)seekBackwardCommand
{
  seekBackwardCommand = self->_seekBackwardCommand;
  if (!seekBackwardCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:10];
    v5 = self->_seekBackwardCommand;
    self->_seekBackwardCommand = v4;

    seekBackwardCommand = self->_seekBackwardCommand;
  }

  return seekBackwardCommand;
}

- (MPChangePlaybackRateCommand)changePlaybackRateCommand
{
  changePlaybackRateCommand = self->_changePlaybackRateCommand;
  if (!changePlaybackRateCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:19];
    v5 = self->_changePlaybackRateCommand;
    self->_changePlaybackRateCommand = v4;

    changePlaybackRateCommand = self->_changePlaybackRateCommand;
  }

  return changePlaybackRateCommand;
}

- (MPChangePlaybackPositionCommand)changePlaybackPositionCommand
{
  changePlaybackPositionCommand = self->_changePlaybackPositionCommand;
  if (!changePlaybackPositionCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:24];
    v5 = self->_changePlaybackPositionCommand;
    self->_changePlaybackPositionCommand = v4;

    changePlaybackPositionCommand = self->_changePlaybackPositionCommand;
  }

  return changePlaybackPositionCommand;
}

- (MPRemoteCommand)specialSeekForwardCommand
{
  specialSeekForwardCommand = self->_specialSeekForwardCommand;
  if (!specialSeekForwardCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:109];
    v5 = self->_specialSeekForwardCommand;
    self->_specialSeekForwardCommand = v4;

    specialSeekForwardCommand = self->_specialSeekForwardCommand;
  }

  return specialSeekForwardCommand;
}

- (MPRemoteCommand)specialSeekBackwardCommand
{
  specialSeekBackwardCommand = self->_specialSeekBackwardCommand;
  if (!specialSeekBackwardCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:110];
    v5 = self->_specialSeekBackwardCommand;
    self->_specialSeekBackwardCommand = v4;

    specialSeekBackwardCommand = self->_specialSeekBackwardCommand;
  }

  return specialSeekBackwardCommand;
}

- (MPInsertIntoPlaybackQueueCommand)insertIntoPlaybackQueueCommand
{
  insertIntoPlaybackQueueCommand = self->_insertIntoPlaybackQueueCommand;
  if (!insertIntoPlaybackQueueCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:125];
    v5 = self->_insertIntoPlaybackQueueCommand;
    self->_insertIntoPlaybackQueueCommand = v4;

    insertIntoPlaybackQueueCommand = self->_insertIntoPlaybackQueueCommand;
  }

  return insertIntoPlaybackQueueCommand;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    playerID = [(MPRemoteCommandCenter *)self playerID];
    *buf = 134218242;
    selfCopy = self;
    v10 = 2114;
    v11 = playerID;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] dealloc", buf, 0x16u);
  }

  MEMORY[0x1A58DF190](self->_stateHandler);
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__MPRemoteCommandCenter_dealloc__block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (!self->_invalidated)
  {
    [(MPRemoteCommandCenter *)self _locked_stopMediaRemoteSync];
  }

  v5[2](v5);

  v6.receiver = self;
  v6.super_class = MPRemoteCommandCenter;
  [(MPRemoteCommandCenter *)&v6 dealloc];
}

- (BOOL)commandHandlersRegistered
{
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__MPRemoteCommandCenter_commandHandlersRegistered__block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  LOBYTE(self) = self->_anyCommandHandlersRegistered;
  v3[2]();

  return self;
}

- (MPChangeQueueEndActionCommand)changeQueueEndActionCommand
{
  changeQueueEndActionCommand = self->_changeQueueEndActionCommand;
  if (!changeQueueEndActionCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:135];
    v5 = self->_changeQueueEndActionCommand;
    self->_changeQueueEndActionCommand = v4;

    changeQueueEndActionCommand = self->_changeQueueEndActionCommand;
  }

  return changeQueueEndActionCommand;
}

- (MPFeedbackCommand)likeCommand
{
  likeCommand = self->_likeCommand;
  if (!likeCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:21];
    v5 = self->_likeCommand;
    self->_likeCommand = v4;

    likeCommand = self->_likeCommand;
  }

  return likeCommand;
}

- (MPChangeRepeatModeCommand)changeRepeatModeCommand
{
  changeRepeatModeCommand = self->_changeRepeatModeCommand;
  if (!changeRepeatModeCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:25];
    v5 = self->_changeRepeatModeCommand;
    self->_changeRepeatModeCommand = v4;

    changeRepeatModeCommand = self->_changeRepeatModeCommand;
  }

  return changeRepeatModeCommand;
}

- (id)_debugCommandDescriptions
{
  _activeCommands = [(MPRemoteCommandCenter *)self _activeCommands];
  v3 = [_activeCommands msv_map:&__block_literal_global_112_56398];

  return v3;
}

- (MPSetSleepTimerCommand)setSleepTimerCommand
{
  setSleepTimerCommand = self->_setSleepTimerCommand;
  if (!setSleepTimerCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:124];
    v5 = self->_setSleepTimerCommand;
    self->_setSleepTimerCommand = v4;

    setSleepTimerCommand = self->_setSleepTimerCommand;
  }

  return setSleepTimerCommand;
}

- (MPChangeShuffleModeCommand)changeShuffleModeCommand
{
  changeShuffleModeCommand = self->_changeShuffleModeCommand;
  if (!changeShuffleModeCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:26];
    v5 = self->_changeShuffleModeCommand;
    self->_changeShuffleModeCommand = v4;

    changeShuffleModeCommand = self->_changeShuffleModeCommand;
  }

  return changeShuffleModeCommand;
}

- (MPAdvanceShuffleModeCommand)advanceShuffleModeCommand
{
  advanceShuffleModeCommand = self->_advanceShuffleModeCommand;
  if (!advanceShuffleModeCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:6];
    v5 = self->_advanceShuffleModeCommand;
    self->_advanceShuffleModeCommand = v4;

    advanceShuffleModeCommand = self->_advanceShuffleModeCommand;
  }

  return advanceShuffleModeCommand;
}

- (MPRemoteCommand)createRadioStationCommand
{
  createRadioStationCommand = self->_createRadioStationCommand;
  if (!createRadioStationCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:121];
    v5 = self->_createRadioStationCommand;
    self->_createRadioStationCommand = v4;

    createRadioStationCommand = self->_createRadioStationCommand;
  }

  return createRadioStationCommand;
}

- (MPReorderQueueCommand)reorderQueueCommand
{
  reorderQueueCommand = self->_reorderQueueCommand;
  if (!reorderQueueCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:130];
    v5 = self->_reorderQueueCommand;
    self->_reorderQueueCommand = v4;

    reorderQueueCommand = self->_reorderQueueCommand;
  }

  return reorderQueueCommand;
}

- (MPRemoteCommand)removeFromPlaybackQueueCommand
{
  removeFromPlaybackQueueCommand = self->_removeFromPlaybackQueueCommand;
  if (!removeFromPlaybackQueueCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:129];
    v5 = self->_removeFromPlaybackQueueCommand;
    self->_removeFromPlaybackQueueCommand = v4;

    removeFromPlaybackQueueCommand = self->_removeFromPlaybackQueueCommand;
  }

  return removeFromPlaybackQueueCommand;
}

- (MPAdvanceRepeatModeCommand)advanceRepeatModeCommand
{
  advanceRepeatModeCommand = self->_advanceRepeatModeCommand;
  if (!advanceRepeatModeCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:7];
    v5 = self->_advanceRepeatModeCommand;
    self->_advanceRepeatModeCommand = v4;

    advanceRepeatModeCommand = self->_advanceRepeatModeCommand;
  }

  return advanceRepeatModeCommand;
}

- (MPRemoteCommand)reshuffleCommand
{
  reshuffleCommand = self->_reshuffleCommand;
  if (!reshuffleCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:134];
    v5 = self->_reshuffleCommand;
    self->_reshuffleCommand = v4;

    reshuffleCommand = self->_reshuffleCommand;
  }

  return reshuffleCommand;
}

- (MPToggleTransitionsCommand)toggleTransitionsCommand
{
  toggleTransitionsCommand = self->_toggleTransitionsCommand;
  if (!toggleTransitionsCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:149];
    v5 = self->_toggleTransitionsCommand;
    self->_toggleTransitionsCommand = v4;

    toggleTransitionsCommand = self->_toggleTransitionsCommand;
  }

  return toggleTransitionsCommand;
}

- (MPFeedbackCommand)addNowPlayingItemToLibraryCommand
{
  addNowPlayingItemToLibraryCommand = self->_addNowPlayingItemToLibraryCommand;
  if (!addNowPlayingItemToLibraryCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:127];
    v5 = self->_addNowPlayingItemToLibraryCommand;
    self->_addNowPlayingItemToLibraryCommand = v4;

    addNowPlayingItemToLibraryCommand = self->_addNowPlayingItemToLibraryCommand;
  }

  return addNowPlayingItemToLibraryCommand;
}

- (MPRemoteCommand)leaveSharedPlaybackSessionCommand
{
  leaveSharedPlaybackSessionCommand = self->_leaveSharedPlaybackSessionCommand;
  if (!leaveSharedPlaybackSessionCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:139];
    v5 = self->_leaveSharedPlaybackSessionCommand;
    self->_leaveSharedPlaybackSessionCommand = v4;

    leaveSharedPlaybackSessionCommand = self->_leaveSharedPlaybackSessionCommand;
  }

  return leaveSharedPlaybackSessionCommand;
}

- (MPVocalsControlCommand)vocalsControlCommand
{
  vocalsControlCommand = self->_vocalsControlCommand;
  if (!vocalsControlCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:142];
    v5 = self->_vocalsControlCommand;
    self->_vocalsControlCommand = v4;

    vocalsControlCommand = self->_vocalsControlCommand;
  }

  return vocalsControlCommand;
}

- (MPRemoteCommand)clearUpNextCommand
{
  clearUpNextCommand = self->_clearUpNextCommand;
  if (!clearUpNextCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:144];
    v5 = self->_clearUpNextCommand;
    self->_clearUpNextCommand = v4;

    clearUpNextCommand = self->_clearUpNextCommand;
  }

  return clearUpNextCommand;
}

- (MPRemoteCommand)delegateAccountCommand
{
  delegateAccountCommand = self->_delegateAccountCommand;
  if (!delegateAccountCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:146];
    v5 = self->_delegateAccountCommand;
    self->_delegateAccountCommand = v4;

    delegateAccountCommand = self->_delegateAccountCommand;
  }

  return delegateAccountCommand;
}

- (MPFeedbackCommand)dislikeCommand
{
  dislikeCommand = self->_dislikeCommand;
  if (!dislikeCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:22];
    v5 = self->_dislikeCommand;
    self->_dislikeCommand = v4;

    dislikeCommand = self->_dislikeCommand;
  }

  return dislikeCommand;
}

- (MPRatingCommand)ratingCommand
{
  ratingCommand = self->_ratingCommand;
  if (!ratingCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:20];
    v5 = self->_ratingCommand;
    self->_ratingCommand = v4;

    ratingCommand = self->_ratingCommand;
  }

  return ratingCommand;
}

- (MPRemoteCommand)prepareVocalsControlCommand
{
  prepareVocalsControlCommand = self->_prepareVocalsControlCommand;
  if (!prepareVocalsControlCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:143];
    v5 = self->_prepareVocalsControlCommand;
    self->_prepareVocalsControlCommand = v4;

    prepareVocalsControlCommand = self->_prepareVocalsControlCommand;
  }

  return prepareVocalsControlCommand;
}

id __50__MPRemoteCommandCenter__debugCommandDescriptions__block_invoke(uint64_t a1, void *a2)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MEMORY[0x1E695DF90];
  v15[0] = @"commandType";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v2, "mediaRemoteCommandType")}];
  v16[0] = v4;
  v15[1] = @"supported";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isSupported")}];
  v16[1] = v5;
  v15[2] = @"enabled";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isEnabled")}];
  v16[2] = v6;
  v15[3] = @"options";
  v7 = [v2 _mediaRemoteCommandInfoOptions];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v9 = v7;
  }

  v16[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v11 = [v3 dictionaryWithDictionary:v10];

  if (([v2 isSupported] & 1) == 0)
  {
    v12 = [v2 unsupportedReasons];
    [v11 setObject:v12 forKeyedSubscript:@"unsupportedReasons"];
  }

  if (([v2 isEnabled] & 1) == 0)
  {
    v13 = [v2 disabledReasons];
    [v11 setObject:v13 forKeyedSubscript:@"disabledReasons"];
  }

  return v11;
}

- (MPRemoteCommandCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_scheduleSupportedCommandsChanged:(BOOL)changed
{
  if (!self->_scheduledSupportedCommandsChangedNotification || changed)
  {
    aBlock[7] = v3;
    aBlock[8] = v4;
    changedCopy = changed;
    self->_scheduledSupportedCommandsChangedNotification = 1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__MPRemoteCommandCenter__scheduleSupportedCommandsChanged___block_invoke;
    aBlock[3] = &unk_1E7682518;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    if (changedCopy)
    {
      dispatch_async(MEMORY[0x1E69E96A0], v7);
    }

    else
    {
      v8 = 200000000;
      if ((MSVDeviceIsWatch() & 1) == 0 && !MSVDeviceIsAudioAccessory())
      {
        v8 = 100000000;
      }

      v9 = dispatch_time(0, v8);
      dispatch_after(v9, MEMORY[0x1E69E96A0], v7);
    }
  }
}

void __59__MPRemoteCommandCenter__scheduleSupportedCommandsChanged___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isInvalidated] & 1) == 0)
  {
    v2 = *(a1 + 32);
    if (v2[41] == 1)
    {
      v3 = [v2 _activeCommands];
      v4 = [v3 msv_flatMap:&__block_literal_global_144_56381];
      v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = *(a1 + 32);
        v8 = *(v7 + 8);
        v10 = 138413058;
        v11 = v6;
        v12 = 2048;
        v13 = v7;
        v14 = 2112;
        v15 = v8;
        v16 = 2114;
        v17 = v4;
        v9 = v6;
        _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p (%@)> [MPRemoteCommandCenter] setSupportedCommands %{public}@", &v10, 0x2Au);
      }

      MRMediaRemoteSetSupportedCommandsForPlayer();
      [*(a1 + 32) canBeNowPlayingApplication];
      MRMediaRemoteSetCanBeNowPlayingForPlayer();
      *(*(a1 + 32) + 41) = 0;
    }
  }
}

void __59__MPRemoteCommandCenter__scheduleSupportedCommandsChanged___block_invoke_145(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 msv_description];
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_ERROR, "Error setting supported commands error=%{public}@", &v5, 0xCu);
    }
  }
}

id __59__MPRemoteCommandCenter__scheduleSupportedCommandsChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSupported])
  {
    v3 = [v2 commandInfoRepresentations];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)_stateDictionary
{
  v8[3] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v8[0] = self->_activeCommands;
  v7[0] = @"activeCommands";
  v7[1] = @"canBeNowPlayingApplication";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_canBeNowPlayingApplication];
  v8[1] = v3;
  v7[2] = @"pendingEventsCount";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_eventQueue, "count")}];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)containsCommand:(id)command
{
  commandCenter = [command commandCenter];
  LOBYTE(self) = commandCenter == self;

  return self;
}

- (void)_commandTargetsDidChangeNotification:(id)notification
{
  v15 = *MEMORY[0x1E69E9840];
  if (![(MPRemoteCommandCenter *)self isInvalidated])
  {
    [(MPRemoteCommandCenter *)self _activeCommands];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v13 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v10 + 1) + 8 * i) hasTargets])
          {
            LODWORD(v5) = 1;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    os_unfair_lock_lock_with_options();
    anyCommandHandlersRegistered = self->_anyCommandHandlersRegistered;
    if (anyCommandHandlersRegistered != v5)
    {
      self->_anyCommandHandlersRegistered = v5;
      [(MPRemoteCommandCenter *)self _locked_reevaluateCanBeNowPlayingApplication];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__MPRemoteCommandCenter__commandTargetsDidChangeNotification___block_invoke;
      block[3] = &unk_1E7682518;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    os_unfair_lock_unlock(&self->_lock);
    [(MPRemoteCommandCenter *)self _scheduleSupportedCommandsChanged:anyCommandHandlersRegistered != v5];
  }
}

void __62__MPRemoteCommandCenter__commandTargetsDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPRemoteCommandCenterCommandHandlersRegisteredNotification" object:*(a1 + 32) userInfo:0];
}

- (id)_createRemoteCommandWithConcreteClass:(Class)class mediaRemoteType:(unsigned int)type
{
  v4 = *&type;
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = NSStringFromClass(class);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPRemoteCommandCenter.m" lineNumber:590 description:{@"Attempted to create remote command object of unknown class %@", v14}];
  }

  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__MPRemoteCommandCenter__createRemoteCommandWithConcreteClass_mediaRemoteType___block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  activeCommands = self->_activeCommands;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__MPRemoteCommandCenter__createRemoteCommandWithConcreteClass_mediaRemoteType___block_invoke_2;
  v15[3] = &__block_descriptor_44_e32_B32__0__MPRemoteCommand_8Q16_B24lu32l8;
  v15[4] = class;
  v16 = v4;
  v10 = [(NSMutableArray *)activeCommands indexOfObjectPassingTest:v15];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [[class alloc] initWithMediaRemoteCommandType:v4];
    [v11 setCommandCenter:self];
    [(NSMutableArray *)self->_activeCommands addObject:v11];
  }

  else
  {
    v11 = [(NSMutableArray *)self->_activeCommands objectAtIndex:v10];
  }

  v8[2](v8);

  return v11;
}

BOOL __79__MPRemoteCommandCenter__createRemoteCommandWithConcreteClass_mediaRemoteType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class() == *(a1 + 32) && [v3 mediaRemoteCommandType] == *(a1 + 40);

  return v4;
}

BOOL __40__MPRemoteCommandCenter__activeCommands__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  LODWORD(a2) = [a2 mediaRemoteCommandType];
  v5 = [v4 mediaRemoteCommandType];

  return a2 < v5;
}

- (MPEnhanceDialogueCommand)enhanceDialogueCommand
{
  enhanceDialogueCommand = self->_enhanceDialogueCommand;
  if (!enhanceDialogueCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:147];
    v5 = self->_enhanceDialogueCommand;
    self->_enhanceDialogueCommand = v4;

    enhanceDialogueCommand = self->_enhanceDialogueCommand;
  }

  return enhanceDialogueCommand;
}

- (MPRemoteCommand)postEventNoticeCommand
{
  postEventNoticeCommand = self->_postEventNoticeCommand;
  if (!postEventNoticeCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:140];
    v5 = self->_postEventNoticeCommand;
    self->_postEventNoticeCommand = v4;

    postEventNoticeCommand = self->_postEventNoticeCommand;
  }

  return postEventNoticeCommand;
}

- (MPRemoteCommand)discardPlaybackSessionCommand
{
  discardPlaybackSessionCommand = self->_discardPlaybackSessionCommand;
  if (!discardPlaybackSessionCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:138];
    v5 = self->_discardPlaybackSessionCommand;
    self->_discardPlaybackSessionCommand = v4;

    discardPlaybackSessionCommand = self->_discardPlaybackSessionCommand;
  }

  return discardPlaybackSessionCommand;
}

- (MPSetPriorityForPlaybackSessionCommand)setPriorityForPlaybackSessionCommand
{
  setPriorityForPlaybackSessionCommand = self->_setPriorityForPlaybackSessionCommand;
  if (!setPriorityForPlaybackSessionCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:137];
    v5 = self->_setPriorityForPlaybackSessionCommand;
    self->_setPriorityForPlaybackSessionCommand = v4;

    setPriorityForPlaybackSessionCommand = self->_setPriorityForPlaybackSessionCommand;
  }

  return setPriorityForPlaybackSessionCommand;
}

- (MPPreloadPlaybackSessionCommand)preloadPlaybackSessionCommand
{
  preloadPlaybackSessionCommand = self->_preloadPlaybackSessionCommand;
  if (!preloadPlaybackSessionCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:136];
    v5 = self->_preloadPlaybackSessionCommand;
    self->_preloadPlaybackSessionCommand = v4;

    preloadPlaybackSessionCommand = self->_preloadPlaybackSessionCommand;
  }

  return preloadPlaybackSessionCommand;
}

- (MPFeedbackCommand)addItemToLibraryCommand
{
  addItemToLibraryCommand = self->_addItemToLibraryCommand;
  if (!addItemToLibraryCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:128];
    v5 = self->_addItemToLibraryCommand;
    self->_addItemToLibraryCommand = v4;

    addItemToLibraryCommand = self->_addItemToLibraryCommand;
  }

  return addItemToLibraryCommand;
}

- (MPFeedbackCommand)bookmarkCommand
{
  bookmarkCommand = self->_bookmarkCommand;
  if (!bookmarkCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:23];
    v5 = self->_bookmarkCommand;
    self->_bookmarkCommand = v4;

    bookmarkCommand = self->_bookmarkCommand;
  }

  return bookmarkCommand;
}

- (MPRemoteCommand)performDialogActionCommand
{
  performDialogActionCommand = self->_performDialogActionCommand;
  if (!performDialogActionCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:145];
    v5 = self->_performDialogActionCommand;
    self->_performDialogActionCommand = v4;

    performDialogActionCommand = self->_performDialogActionCommand;
  }

  return performDialogActionCommand;
}

- (MPRemoteCommand)disableLanguageOptionCommand
{
  disableLanguageOptionCommand = self->_disableLanguageOptionCommand;
  if (!disableLanguageOptionCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:28];
    v5 = self->_disableLanguageOptionCommand;
    self->_disableLanguageOptionCommand = v4;

    disableLanguageOptionCommand = self->_disableLanguageOptionCommand;
  }

  return disableLanguageOptionCommand;
}

- (MPRemoteCommand)enableLanguageOptionCommand
{
  enableLanguageOptionCommand = self->_enableLanguageOptionCommand;
  if (!enableLanguageOptionCommand)
  {
    v4 = [(MPRemoteCommandCenter *)self _createRemoteCommandWithConcreteClass:objc_opt_class() mediaRemoteType:27];
    v5 = self->_enableLanguageOptionCommand;
    self->_enableLanguageOptionCommand = v4;

    enableLanguageOptionCommand = self->_enableLanguageOptionCommand;
  }

  return enableLanguageOptionCommand;
}

- (void)setDisableAutomaticCanBeNowPlaying:(BOOL)playing
{
  os_unfair_lock_lock(&self->_lock);
  self->_disableAutomaticCanBeNowPlaying = playing;
  [(MPRemoteCommandCenter *)self _locked_reevaluateCanBeNowPlayingApplication];
  os_unfair_lock_unlock(&self->_lock);

  [(MPRemoteCommandCenter *)self _scheduleSupportedCommandsChanged:1];
}

- (void)getPendingCommandTypesWithCompletion:(id)completion
{
  completionCopy = completion;
  MRNowPlayingPlayerPathGetPlayer();
  v4 = MRMediaRemoteCopyPendingCommands();
  completionCopy[2](completionCopy, v4, 0);
}

- (void)_flushEventQueue
{
  v33 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    playerID = [(MPRemoteCommandCenter *)self playerID];
    v6 = [(NSMutableArray *)self->_eventQueue count];
    *buf = 134218498;
    selfCopy7 = self;
    v27 = 2114;
    v28 = playerID;
    v29 = 2048;
    v30 = v6;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _flushEventQueue | start [] events.count=%ld", buf, 0x20u);
  }

  v7 = [(NSMutableArray *)self->_eventQueue msv_removeWhere:&__block_literal_global_72_56457];
  if ([v7 count] >= 1)
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      playerID2 = [(MPRemoteCommandCenter *)self playerID];
      v10 = [(NSMutableArray *)self->_eventQueue count];
      *buf = 134218754;
      selfCopy7 = self;
      v27 = 2114;
      v28 = playerID2;
      v29 = 2048;
      v30 = v10;
      v31 = 2114;
      v32 = v7;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _flushEventQueue | flush [removed finalized events] events.count=%ld removedEvents=%{public}@", buf, 0x2Au);
    }
  }

  v11 = [(NSMutableArray *)self->_eventQueue msv_firstWhere:&__block_literal_global_75_56459];
  os_unfair_lock_unlock(&self->_lock);
  if (v11)
  {
    state = [(_MPRemoteCommandEventDispatch *)v11 state];
    v13 = v11[5];
    if (state > 99)
    {
      if ((state - 100) < 2 || (state - 200) < 2)
      {
        v17 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          playerID3 = [(MPRemoteCommandCenter *)self playerID];
          *buf = 134218498;
          selfCopy7 = self;
          v27 = 2114;
          v28 = playerID3;
          v29 = 2114;
          v30 = v13;
          _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _flushEventQueue | recursing [nextEvent was finalized] event=%{public}@", buf, 0x20u);
        }

        [(MPRemoteCommandCenter *)self _flushEventQueue];
      }
    }

    else if (state < 2)
    {
      v19 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        playerID4 = [(MPRemoteCommandCenter *)self playerID];
        *buf = 134218498;
        selfCopy7 = self;
        v27 = 2114;
        v28 = playerID4;
        v29 = 2114;
        v30 = v13;
        _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _flushEventQueue | asserting [nextEvent not delivered] event=%{public}@", buf, 0x20u);
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = v11[5];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPRemoteCommandCenter.m" lineNumber:402 description:{@"_flushEventQueue found nextEvent with unexpected state: %@ -> %ld", v22, state}];
    }

    else if (state == 2)
    {
      v23 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        playerID5 = [(MPRemoteCommandCenter *)self playerID];
        *buf = 134218498;
        selfCopy7 = self;
        v27 = 2114;
        v28 = playerID5;
        v29 = 2114;
        v30 = v13;
        _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _flushEventQueue | dispatching [] event=%{public}@", buf, 0x20u);
      }

      [(_MPRemoteCommandEventDispatch *)v11 dispatch];
    }

    else if (state == 3)
    {
      playerID7 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(playerID7, OS_LOG_TYPE_DEFAULT))
      {
        playerID6 = [(MPRemoteCommandCenter *)self playerID];
        *buf = 134218498;
        selfCopy7 = self;
        v27 = 2114;
        v28 = playerID6;
        v29 = 2114;
        v30 = v13;
        _os_log_impl(&dword_1A238D000, playerID7, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _flushEventQueue | waiting [nextEvent already dispatched] event=%{public}@", buf, 0x20u);
      }

      goto LABEL_16;
    }
  }

  else
  {
    v13 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      playerID7 = [(MPRemoteCommandCenter *)self playerID];
      v16 = [(NSMutableArray *)self->_eventQueue count];
      *buf = 134218498;
      selfCopy7 = self;
      v27 = 2114;
      v28 = playerID7;
      v29 = 2048;
      v30 = v16;
      _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _flushEventQueue | empty [no next event] events.count=%ld", buf, 0x20u);
LABEL_16:
    }
  }
}

- (void)dispatchCommandEvent:(id)event completion:(id)completion
{
  v49[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([(MPRemoteCommandCenter *)self isInvalidated])
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      playerID = [(MPRemoteCommandCenter *)self playerID];
      *buf = 134218242;
      selfCopy6 = self;
      v44 = 2114;
      v45 = playerID;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] dispatchCommandEvent | undeliverable [command center invalidated]", buf, 0x16u);
    }

    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:5 debugDescription:{@"Undeliverable command event [invalidated] %@", eventCopy}];
    v11 = [MPRemoteCommandStatus statusWithCode:404 error:v10];
    v49[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
    completionCopy[2](completionCopy, v12);
  }

  else if (eventCopy)
  {
    command = [eventCopy command];
    skipSerializedEventDelivery = [command skipSerializedEventDelivery];

    if (skipSerializedEventDelivery)
    {
      v15 = [_MPRemoteCommandEventDispatch alloc];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __57__MPRemoteCommandCenter_dispatchCommandEvent_completion___block_invoke;
      v39[3] = &unk_1E7681F50;
      v39[4] = self;
      v16 = eventCopy;
      v40 = v16;
      v41 = completionCopy;
      v17 = [(_MPRemoteCommandEventDispatch *)&v15->super.isa initWithEvent:v16 continuation:v39];
      v18 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        playerID2 = [(MPRemoteCommandCenter *)self playerID];
        *buf = 134218498;
        selfCopy6 = self;
        v44 = 2114;
        v45 = playerID2;
        v46 = 2114;
        v47 = v16;
        _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] dispatchCommandEvent | delivering event [non-serialized] event=%{public}@", buf, 0x20u);
      }

      [(_MPRemoteCommandEventDispatch *)v17 deliver];
      v20 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        playerID3 = [(MPRemoteCommandCenter *)self playerID];
        *buf = 134218498;
        selfCopy6 = self;
        v44 = 2114;
        v45 = playerID3;
        v46 = 2114;
        v47 = v16;
        _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] dispatchCommandEvent | dispatching event [non-serialized] event=%{public}@", buf, 0x20u);
      }

      [(_MPRemoteCommandEventDispatch *)v17 dispatch];
    }

    else
    {
      objc_initWeak(&location, self);
      v27 = [_MPRemoteCommandEventDispatch alloc];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __57__MPRemoteCommandCenter_dispatchCommandEvent_completion___block_invoke_68;
      v34[3] = &unk_1E7681FC8;
      objc_copyWeak(&v37, &location);
      v28 = eventCopy;
      v35 = v28;
      v36 = completionCopy;
      v29 = [(_MPRemoteCommandEventDispatch *)&v27->super.isa initWithEvent:v28 continuation:v34];
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableArray *)self->_eventQueue addObject:v29];
      v30 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        playerID4 = [(MPRemoteCommandCenter *)self playerID];
        *buf = 134218498;
        selfCopy6 = self;
        v44 = 2114;
        v45 = playerID4;
        v46 = 2114;
        v47 = v28;
        _os_log_impl(&dword_1A238D000, v30, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] dispatchCommandEvent | delivering event [] event=%{public}@", buf, 0x20u);
      }

      [(_MPRemoteCommandEventDispatch *)v29 deliver];
      os_unfair_lock_unlock(&self->_lock);
      v32 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        playerID5 = [(MPRemoteCommandCenter *)self playerID];
        *buf = 134218242;
        selfCopy6 = self;
        v44 = 2114;
        v45 = playerID5;
        _os_log_impl(&dword_1A238D000, v32, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] dispatchCommandEvent | flushing event queue [event added]", buf, 0x16u);
      }

      [(MPRemoteCommandCenter *)self _flushEventQueue];
      objc_destroyWeak(&v37);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v22 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      playerID6 = [(MPRemoteCommandCenter *)self playerID];
      *buf = 134218242;
      selfCopy6 = self;
      v44 = 2114;
      v45 = playerID6;
      _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] dispatchCommandEvent | undeliverable [missing command event]", buf, 0x16u);
    }

    v24 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:5 debugDescription:@"Undeliverable command event [missing event]"];
    v25 = [MPRemoteCommandStatus statusWithCode:404 error:v24];
    v48 = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
    completionCopy[2](completionCopy, v26);
  }
}

void __57__MPRemoteCommandCenter_dispatchCommandEvent_completion___block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = [v5 playerID];
    v7 = a1[5];
    v8 = [v3 msv_compactDescription];
    v9 = 134218754;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] dispatchCommandEvent | finishing event [non-serialized] event=%{public}@ statuses=[%{public}@]", &v9, 0x2Au);
  }

  (*(a1[6] + 16))();
}

void __57__MPRemoteCommandCenter_dispatchCommandEvent_completion___block_invoke_68(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained playerID];
    v7 = *(a1 + 32);
    v8 = [v3 msv_compactDescription];
    *buf = 134218754;
    v13 = WeakRetained;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] dispatchCommandEvent | finishing event [] event=%{public}@ statuses=[%{public}@]", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MPRemoteCommandCenter_dispatchCommandEvent_completion___block_invoke_69;
  block[3] = &unk_1E7682518;
  v11 = WeakRetained;
  v9 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __57__MPRemoteCommandCenter_dispatchCommandEvent_completion___block_invoke_69(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 playerID];
    v6 = 134218242;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] dispatchCommandEvent | flushing event queue [event completed]", &v6, 0x16u);
  }

  return [*(a1 + 32) _flushEventQueue];
}

- (void)_dispatchMediaRemoteCommand:(unsigned int)command withOptions:(id)options completion:(id)completion
{
  v6 = *&command;
  v42[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  completionCopy = completion;
  if ((v6 - 100) > 5)
  {
    if (v6 == 11)
    {
      v10 = 10;
    }

    else
    {
      v10 = v6;
      if (v6 == 9)
      {
        v10 = 8;
      }
    }
  }

  else if (((1 << (v6 - 100)) & 0x15) != 0)
  {
    v10 = 109;
  }

  else
  {
    v10 = 110;
  }

  _activeCommands = [(MPRemoteCommandCenter *)self _activeCommands];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __76__MPRemoteCommandCenter__dispatchMediaRemoteCommand_withOptions_completion___block_invoke;
  v31[3] = &__block_descriptor_36_e25_B16__0__MPRemoteCommand_8l;
  v32 = v10;
  v12 = [_activeCommands msv_firstWhere:v31];
  v13 = v12;
  if (!v12)
  {
    v17 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      playerID = [(MPRemoteCommandCenter *)self playerID];
      *buf = 134218498;
      selfCopy3 = self;
      v36 = 2114;
      v37 = playerID;
      v38 = 2048;
      v39 = v10;
      _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _dispatchMediaRemoteCommand | undeliverable [no registered command] mediaRemoteCommandType=%ld", buf, 0x20u);
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = MRMediaRemoteCopyCommandDescription();
    v21 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B10B0]];
    v14 = [v19 msv_errorWithDomain:@"MPErrorDomain" code:5 debugDescription:{@"Undeliverable command [never supported] %@: %@", v20, v21}];

    v22 = [MPRemoteCommandStatus statusWithCode:404 error:v14];
    v42[0] = v22;
    v23 = MEMORY[0x1E695DEC8];
    v24 = v42;
    goto LABEL_20;
  }

  if (([v12 isSupported] & 1) == 0)
  {
    v25 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      playerID2 = [(MPRemoteCommandCenter *)self playerID];
      *buf = 134218754;
      selfCopy3 = self;
      v36 = 2114;
      v37 = playerID2;
      v38 = 2048;
      v39 = v10;
      v40 = 2114;
      v41 = v13;
      _os_log_impl(&dword_1A238D000, v25, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _dispatchMediaRemoteCommand | undeliverable [command not supported] mediaRemoteCommandType=%ld command=%{public}@", buf, 0x2Au);
    }

    v27 = MEMORY[0x1E696ABC0];
    v28 = MRMediaRemoteCopyCommandDescription();
    v29 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B10B0]];
    v14 = [v27 msv_errorWithDomain:@"MPErrorDomain" code:5 debugDescription:{@"Undeliverable command [unsupported] %@: %@", v28, v29}];

    v22 = [MPRemoteCommandStatus statusWithCode:404 error:v14];
    v33 = v22;
    v23 = MEMORY[0x1E695DEC8];
    v24 = &v33;
LABEL_20:
    v30 = [v23 arrayWithObjects:v24 count:1];
    completionCopy[2](completionCopy, v30);

    goto LABEL_21;
  }

  v14 = [v13 newCommandEventWithCommandType:v6 options:optionsCopy];
  v15 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    playerID3 = [(MPRemoteCommandCenter *)self playerID];
    *buf = 134218754;
    selfCopy3 = self;
    v36 = 2114;
    v37 = playerID3;
    v38 = 2048;
    v39 = v10;
    v40 = 2114;
    v41 = v14;
    _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _dispatchMediaRemoteCommand | dispatching [] mediaRemoteCommandType=%ld event=%{public}@", buf, 0x2Au);
  }

  [(MPRemoteCommandCenter *)self dispatchCommandEvent:v14 completion:completionCopy];
LABEL_21:
}

- (void)remoteCommandDidMutatePropagatableProperty:(id)property
{
  v13 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  if ([(MPRemoteCommandCenter *)self isInvalidated])
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      playerID = [(MPRemoteCommandCenter *)self playerID];
      v7 = 134218498;
      selfCopy = self;
      v9 = 2114;
      v10 = playerID;
      v11 = 2114;
      v12 = propertyCopy;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "[RCC:%p:%{public}@] remoteCommandDidMutatePropagatableProperty | ignoring [command center invalidated] command=%{public}@", &v7, 0x20u);
    }
  }

  else
  {
    [(MPRemoteCommandCenter *)self _scheduleSupportedCommandsChanged:0];
  }
}

- (void)_locked_stopMediaRemoteSync
{
  v46 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_mediaRemoteCommandHandler)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPRemoteCommandCenter.m" lineNumber:212 description:@"_stopMediaRemoteSync should only be called from -invalidate"];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"MPRemoteCommandTargetsDidChangeNotification" object:0];
  v4 = [(NSMutableArray *)self->_eventQueue copy];
  selfCopy = self;
  [(NSMutableArray *)self->_eventQueue removeAllObjects];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    v9 = 0x1E7672000uLL;
    v10 = "com.apple.amp.mediaplayer";
    v11 = "RemoteControl";
    do
    {
      v12 = 0;
      v35 = v7;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v36 + 1) + 8 * v12);
        if ([(_MPRemoteCommandEventDispatch *)v13 state]<= 99 && v13)
        {
          os_unfair_lock_lock_with_options();
          if (*(v13 + 80) >= 101)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:sel_cancel object:v13 file:@"_MPRemoteCommandEventDispatch.m" lineNumber:253 description:{@"Cannot cancel an already finished command event: %@ state:%ld", *(v13 + 40), *(v13 + 80)}];
          }

          os_unfair_lock_unlock((v13 + 32));
          v14 = [*(v9 + 2496) statusWithCode:8686];
          v15 = os_log_create(v10, v11);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [*(v13 + 40) commandID];
            v16 = v8;
            v17 = v5;
            v18 = v11;
            v19 = v10;
            v21 = v20 = v9;
            *buf = 138543618;
            *&buf[4] = v21;
            v41 = 2114;
            v42 = v14;
            _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "[RCE:%{public}@] cancel | [] status=%{public}@", buf, 0x16u);

            v9 = v20;
            v10 = v19;
            v11 = v18;
            v5 = v17;
            v8 = v16;
            v7 = v35;
          }

          *buf = v14;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
          [v13 _finishWithStatuses:v22 state:101];
        }

        ++v12;
      }

      while (v7 != v12);
      v7 = [v5 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v7);
  }

  v24 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    playerID = [(MPRemoteCommandCenter *)selfCopy playerID];
    playerPath = selfCopy->_playerPath;
    *buf = 134218498;
    *&buf[4] = selfCopy;
    v41 = 2114;
    v42 = playerID;
    v43 = 2114;
    v44 = playerPath;
    _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _stopMediaRemoteSync | MRMediaRemoteRemoveCommandHandlerBlockForPlayer [] playerPath=%{public}@", buf, 0x20u);
  }

  MRMediaRemoteRemoveCommandHandlerBlockForPlayer();
  mediaRemoteCommandHandler = selfCopy->_mediaRemoteCommandHandler;
  selfCopy->_mediaRemoteCommandHandler = 0;

  v28 = [MPNowPlayingInfoCenter infoCenterForPlayerPath:selfCopy->_playerPath];
  if (!v28)
  {
    v29 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      playerID2 = [(MPRemoteCommandCenter *)selfCopy playerID];
      v31 = selfCopy->_playerPath;
      *buf = 134218498;
      *&buf[4] = selfCopy;
      v41 = 2114;
      v42 = playerID2;
      v43 = 2114;
      v44 = v31;
      _os_log_impl(&dword_1A238D000, v29, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _stopMediaRemoteSync | MRMediaRemoteRemovePlayer [infoCenter does not exist] playerPath=%{public}@", buf, 0x20u);
    }

    MRMediaRemoteRemovePlayer();
  }
}

void __46__MPRemoteCommandCenter__startMediaRemoteSync__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [WeakRetained playerID];
      v12 = WeakRetained[1];
      v13 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B10B0]];
      v14 = MRMediaRemoteCopyCommandDescription();
      v15 = [v7 objectForKeyedSubscript:@"kMRMediaRemoteOptionSenderID"];
      *buf = 134219266;
      v21 = WeakRetained;
      v22 = 2114;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      v26 = 2114;
      v27 = v13;
      v28 = 2114;
      v29 = v14;
      v30 = 2114;
      v31 = v15;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _startMediaRemoteSync | received command [] playerPath=%{public}@ commandID=%{public}@ command=%{public}@ sender=<%{public}@>", buf, 0x3Eu);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __46__MPRemoteCommandCenter__startMediaRemoteSync__block_invoke_36;
    v16[3] = &unk_1E7681F50;
    v17 = WeakRetained;
    v18 = v7;
    v19 = v8;
    [v17 _dispatchMediaRemoteCommand:a2 withOptions:v18 completion:v16];
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

void __46__MPRemoteCommandCenter__startMediaRemoteSync__block_invoke_36(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [a2 msv_map:&__block_literal_global_39_56518];
  v6 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [v7 playerID];
    v9 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69B10B0]];
    v10 = [v5 msv_compactDescription];
    v11 = 134218754;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] _startMediaRemoteSync | sending response [] commandID=%{public}@ mrStatuses=[%{public}@]", &v11, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
}

- (MPRemoteCommandCenter)initWithPlayerPath:(id)path
{
  v34 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v27.receiver = self;
  v27.super_class = MPRemoteCommandCenter;
  v6 = [(MPRemoteCommandCenter *)&v27 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MPRemoteCommandCenter_initWithPlayerPath___block_invoke;
  block[3] = &unk_1E7682518;
  v8 = v6;
  v26 = v8;
  if (initWithPlayerPath__onceToken_56527 != -1)
  {
    dispatch_once(&initWithPlayerPath__onceToken_56527, block);
    if (pathCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!pathCopy)
  {
LABEL_4:
    pathCopy = [MEMORY[0x1E69B0AD0] localPlayerPath];
  }

LABEL_5:
  v9 = [pathCopy copy];
  playerPath = v8->_playerPath;
  v8->_playerPath = v9;

  v11 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    playerID = [(MPRemoteCommandCenter *)v8 playerID];
    v13 = v8->_playerPath;
    *buf = 134218498;
    v29 = v8;
    v30 = 2114;
    v31 = playerID;
    v32 = 2114;
    v33 = v13;
    _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] initWithPlayerPath:%{public}@", buf, 0x20u);
  }

  v14 = [objc_opt_class() commandCenterForPlayerPath:v8->_playerPath];
  v15 = v14 == 0;

  if (!v15)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v8 file:@"MPRemoteCommandCenter.m" lineNumber:135 description:{@"Cannot have two MPRemoteCommandCenters for the same playerPath: %@", pathCopy}];
  }

  v16 = objc_opt_class();
  objc_sync_enter(v16);
  [__commandCenterMap setObject:v8 forKey:v8->_playerPath];
  objc_sync_exit(v16);

  v8->_lock._os_unfair_lock_opaque = 0;
  array = [MEMORY[0x1E695DF70] array];
  activeCommands = v8->_activeCommands;
  v8->_activeCommands = array;

  array2 = [MEMORY[0x1E695DF70] array];
  eventQueue = v8->_eventQueue;
  v8->_eventQueue = array2;

  [(MPRemoteCommandCenter *)v8 _startMediaRemoteSync];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __44__MPRemoteCommandCenter_initWithPlayerPath___block_invoke_24;
  v23[3] = &unk_1E7681F08;
  v24 = v8;
  v24->_stateHandler = __44__MPRemoteCommandCenter_initWithPlayerPath___block_invoke_24(v23);

LABEL_10:
  return v7;
}

void __44__MPRemoteCommandCenter_initWithPlayerPath___block_invoke()
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = __commandCenterMap;
  __commandCenterMap = v0;

  objc_sync_exit(obj);
}

uint64_t __44__MPRemoteCommandCenter_initWithPlayerPath___block_invoke_24(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = dispatch_get_global_queue(0, 0);
  v3 = [*(*(a1 + 32) + 8) description];
  v4 = [@"MPRemoteCommandCenter:" stringByAppendingString:v3];
  objc_copyWeak(&v7, &location);
  v5 = MSVLogAddStateHandler();
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);
  return v5;
}

uint64_t __44__MPRemoteCommandCenter_initWithPlayerPath___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained _stateDictionary];
      v9 = v5[2](v5, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MPRemoteCommandCenter)initWithPlayerID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    defaultPlayer = [objc_alloc(MEMORY[0x1E69B0AC8]) initWithIdentifier:dCopy displayName:dCopy];
  }

  else
  {
    defaultPlayer = [MEMORY[0x1E69B0AC8] defaultPlayer];
  }

  v6 = defaultPlayer;
  v7 = objc_alloc(MEMORY[0x1E69B0AD0]);
  localOrigin = [MEMORY[0x1E69B0AA0] localOrigin];
  localClient = [MEMORY[0x1E69B09D8] localClient];
  v10 = [v7 initWithOrigin:localOrigin client:localClient player:v6];

  v11 = [(MPRemoteCommandCenter *)self initWithPlayerPath:v10];
  return v11;
}

+ (void)getPendingCommandTypesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = MRMediaRemoteCopyPendingCommands();
  completionCopy[2](completionCopy, v4, 0);
}

+ (id)commandCenterForPlayerPath:(id)path
{
  pathCopy = path;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [__commandCenterMap objectForKey:pathCopy];
  objc_sync_exit(v4);

  return v5;
}

+ (id)commandCenterForPlayerID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    defaultPlayer = [objc_alloc(MEMORY[0x1E69B0AC8]) initWithIdentifier:dCopy displayName:dCopy];
  }

  else
  {
    defaultPlayer = [MEMORY[0x1E69B0AC8] defaultPlayer];
  }

  v5 = defaultPlayer;
  v6 = objc_alloc(MEMORY[0x1E69B0AD0]);
  localOrigin = [MEMORY[0x1E69B0AA0] localOrigin];
  localClient = [MEMORY[0x1E69B09D8] localClient];
  v9 = [v6 initWithOrigin:localOrigin client:localClient player:v5];

  v10 = [objc_opt_class() commandCenterForPlayerPath:v9];

  return v10;
}

+ (void)updateLaunchCommandsWithConfigurationHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v4 = objc_autoreleasePoolPush();
  v5 = [(MPRemoteCommandCenter *)[_MPRemoteLaunchCommandCenter alloc] initWithPlayerID:@"LaunchCommandBuilder"];
  handlerCopy[2](handlerCopy, v5);
  _activeCommands = [(MPRemoteCommandCenter *)v5 _activeCommands];
  v7 = [_activeCommands msv_flatMap:&__block_literal_global_56550];
  v8 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    playerID = [(MPRemoteCommandCenter *)v5 playerID];
    *buf = 134218498;
    v13 = v5;
    v14 = 2114;
    v15 = playerID;
    v16 = 2114;
    v17 = _activeCommands;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] updateLaunchCommands | MRMediaRemoteSetDefaultSupportedCommands [] commands=%{public}@", buf, 0x20u);
  }

  [(MPRemoteCommandCenter *)v5 invalidate];
  v11 = v5;
  v10 = v5;
  MRMediaRemoteSetDefaultSupportedCommands();

  objc_autoreleasePoolPop(v4);
}

void __70__MPRemoteCommandCenter_updateLaunchCommandsWithConfigurationHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v6 playerID];
      v8 = [v3 msv_description];
      v11 = 134218498;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "[RCC:%p:%{public}@] updateLaunchCommands | updated commands [] error=%{public}@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = [v9 playerID];
    v11 = 134218242;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[RCC:%p:%{public}@] updateLaunchCommands | updated commands []", &v11, 0x16u);
  }
}

@end