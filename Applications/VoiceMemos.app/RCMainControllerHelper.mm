@interface RCMainControllerHelper
- ($F24F406B2B787EFB06265DBA3D28CBD5)_selectedTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)allowedTimeRange;
- (BOOL)_errorIsRecordingUnavailable:(id)unavailable;
- (BOOL)_isSelectionTrimmableByDeletingRange:(id)range;
- (BOOL)_isSelectionTrimmableByKeepingRange:(id)range;
- (BOOL)_performRecordingEndTransitionWithUUID:(id)d;
- (BOOL)_shouldEnableTrimSave;
- (BOOL)_transitionToActivityType:(int64_t)type toSubType:(int64_t)subType withDisplayModel:(id)model waveformDataSource:(id)source composition:(id)composition;
- (BOOL)_transitionToIdleForItemWithUUID:(id)d;
- (BOOL)_transitionToPlayingBackForItemWithUUID:(id)d;
- (BOOL)canJumpBackward;
- (BOOL)canJumpForward;
- (BOOL)currentSelectionHasSpatialAudio;
- (BOOL)isPaused;
- (BOOL)isPlaying;
- (BOOL)isPlayingForUUID:(id)d;
- (BOOL)isRecording;
- (BOOL)isSilenceRemovedForUUID:(id)d;
- (BOOL)isSpeechIsolatorEnabledForUUID:(id)d;
- (BOOL)readyForPlayback;
- (BOOL)startCapturing:(id)capturing;
- (NSHashTable)timeObservers;
- (RCActivityWaveformProcessor)activityWaveformProcessor;
- (RCMainControllerHelper)init;
- (RCMainControllerHelperDelegate)delegate;
- (_TtC10VoiceMemos19RCLiveTranscription)liveTranscription;
- (double)currentDuration;
- (double)currentTime;
- (double)layerMixForUUID:(id)d;
- (double)playbackSpeedForUUID:(id)d;
- (float)speechIsolatorForUUID:(id)d;
- (id)_alertControllerWithTitle:(id)title message:(id)message isDestructive:(BOOL)destructive preferredStyle:(int64_t)style source:(id)source handler:(id)handler actionTitle:(id)actionTitle cancelHandler:(id)self0;
- (id)_presentFolderDeletionConfirmationForFolder:(id)folder source:(id)source completionBlock:(id)block;
- (id)_restoreRecordingsWithUUIDs:(id)ds isRecover:(BOOL)recover source:(id)source collectionViewController:(id)controller;
- (id)_undoActionNameForTrimMode:(int64_t)mode isUndo:(BOOL)undo;
- (id)compositionForUUID:(id)d;
- (id)currentPlayerForUUID:(id)d;
- (id)deleteFolder:(id)folder source:(id)source completionBlock:(id)block;
- (id)deleteWithUUIDs:(id)ds source:(id)source showInfo:(BOOL)info;
- (id)eraseAllRecordingsAndConfirmWithSource:(id)source;
- (id)eraseAndConfirmWithUUIDs:(id)ds source:(id)source collectionViewController:(id)controller;
- (id)playbackSettingsForUUID:(id)d;
- (id)recordingInProgressUUID;
- (id)restoreRecordingsWithUUIDs:(id)ds isRecover:(BOOL)recover source:(id)source force:(BOOL)force collectionViewController:(id)controller;
- (id)undoManager;
- (id)uuidOfPlayingOrSelectedRecording;
- (int64_t)timeControllerState;
- (void)__setupRemoteControlCommandsForPlayback;
- (void)__setupRemoteControlCommandsForRecordingForeground;
- (void)_addCommandTarget:(id)target withHandler:(id)handler;
- (void)_addRecordingObservations:(id)observations;
- (void)_adjustCurrentTrimOperationUndoCount:(int64_t)count;
- (void)_audioContentOrDurationDidChange:(id)change;
- (void)_beginOrResumeCaptureSessionWithReplace:(BOOL)replace trackIndex:(unint64_t)index;
- (void)_beginSelectionEditingModeForInsertMode:(BOOL)mode;
- (void)_checkAudioPlayer:(id)player;
- (void)_clearPlaybackInAudioPlayer:(id)player;
- (void)_clearTrimModeUndoStack;
- (void)_deleteFolderWithoutAlert:(id)alert;
- (void)_deleteRecordingsWithUUIDs:(id)ds isRecover:(BOOL)recover;
- (void)_endSelectionEditingMode;
- (void)_enterTrimMode;
- (void)_eraseRecordingsWithUUIDs:(id)ds;
- (void)_handleRecordingUnavailableError:(id)error;
- (void)_jumpByIncrement:(double)increment forUUID:(id)d;
- (void)_jumpToTargetTime:(double)time;
- (void)_markCurrentFileVersionIfNecessary;
- (void)_preloadRecordingForPlayback:(id)playback;
- (void)_reconcileAudioStateWithApplicationState;
- (void)_recordingFailed:(id)failed error:(id)error;
- (void)_recordingStarted:(id)started;
- (void)_recordingStopped:(id)stopped;
- (void)_redoCaptureFragmentWithCompositionControllerRedoInfo:(id)info;
- (void)_redoTrim:(int64_t)trim;
- (void)_refreshAfterEditingOperation:(id)operation;
- (void)_registerUndoDeleteFolder:(id)folder;
- (void)_registerUndoForSetFavorite:(BOOL)favorite changedUUIDs:(id)ds;
- (void)_reloadWaveformDataSourceAndPreviewAssetWithInitialTime:(double)time;
- (void)_removeRecordingObservations:(id)observations;
- (void)_removeRecordingsObservationsForUUIDs:(id)ds;
- (void)_resetSelectedTimeRangeToFullDuration;
- (void)_restoreFolder:(id)folder;
- (void)_restoreRecordingsWithUUIDs:(id)ds isRecover:(BOOL)recover;
- (void)_sceneDidActivateNotification:(id)notification;
- (void)_sceneWillDeactivateNotification:(id)notification;
- (void)_setIsInSelectionEditingMode:(BOOL)mode forInsertMode:(BOOL)insertMode;
- (void)_startNowPlayingUpdateTimerWithPlaybackTime:(double)time playbackRate:(double)rate;
- (void)_startPlaybackOfUUID:(id)d atPosition:(double)position;
- (void)_stopForUUIDs:(id)ds;
- (void)_stopPlaybackInAudioPlayer:(id)player;
- (void)_teardownRemoteControlCommands;
- (void)_undoCaptureFragment;
- (void)_undoTrim:(int64_t)trim;
- (void)_updateNowPlayingInfo;
- (void)_updateRemoteControlState:(int64_t)state;
- (void)_updateTrimSaveEnabledState;
- (void)_updateWillMigrateFromSingleLayerToMultiLayerForRecordingID:(id)d;
- (void)addTimeObserver:(id)observer;
- (void)cancelTrimModeWithDismissal:(BOOL)dismissal;
- (void)dealloc;
- (void)defaultSceneDidConnect:(id)connect;
- (void)deleteRecordingCanceled;
- (void)displayLinkDidUpdate:(id)update withTimeController:(id)controller;
- (void)doneButtonShouldSaveAsNew:(BOOL)new;
- (void)endDescriptionViewTextEditing;
- (void)endScrubbingForUUID:(id)d atPosition:(double)position;
- (void)enterTrimMode;
- (void)exitEditMode;
- (void)exitTrimMode;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openForModifyRecordingWithUUID:(id)d withSubActivityType:(int64_t)type;
- (void)pauseCapturing;
- (void)pauseForUUID:(id)d;
- (void)pauseTime;
- (void)performClearAllRecentlyDeleted;
- (void)performTrimByDeletingSelectedRangeForRecordingWithUUID:(id)d source:(id)source;
- (void)performTrimByKeepingSelectedRangeForRecordingWithUUID:(id)d source:(id)source;
- (void)playbackForUUID:(id)d;
- (void)prepareForPlaybackForUUID:(id)d force:(BOOL)force;
- (void)removeTimeObserver:(id)observer;
- (void)replaceCapturing:(unint64_t)capturing;
- (void)resumeCapturing:(unint64_t)capturing;
- (void)setAllowedTimeRange:(id)range;
- (void)setAudioPlayer:(id)player;
- (void)setAudioRecorder:(id)recorder;
- (void)setCurrentRate:(float)rate;
- (void)setCurrentRecordingDisplayModel:(id)model;
- (void)setCurrentTime:(double)time;
- (void)setFavorite:(BOOL)favorite forRecordingWithUUID:(id)d;
- (void)setFavorite:(BOOL)favorite forRecordingsWithUUIDs:(id)ds;
- (void)setLayerMix:(double)mix forUUID:(id)d;
- (void)setLooping:(BOOL)looping forUUID:(id)d;
- (void)setPlaybackSpeed:(double)speed forUUID:(id)d;
- (void)setRecordingError:(id)error;
- (void)setRemoveSilence:(BOOL)silence forUUID:(id)d;
- (void)setSpeechIsolatorEnabled:(BOOL)enabled forUUID:(id)d;
- (void)setSpeechIsolatorValue:(float)value forUUID:(id)d;
- (void)setTargetTime:(double)time;
- (void)shareRecordingsWithUUIDs:(id)ds inViewController:(id)controller source:(id)source isShareButton:(BOOL)button completionWithItemsHandler:(id)handler;
- (void)startMonitoringFinalizingRecordings;
- (void)startScrubbingForUUID:(id)d atPosition:(double)position;
- (void)stopCapturing;
- (void)stopForUUID:(id)d;
- (void)stopPlayback;
- (void)toggleFavoriteForUUID:(id)d;
- (void)toggleForUUID:(id)d;
- (void)togglePlayback;
- (void)updateScrubbingForUUID:(id)d atPosition:(double)position;
- (void)waveformDataSource:(id)source didLoadWaveformSegment:(id)segment;
- (void)waveformDataSourceDidFinishLoading:(id)loading;
- (void)waveformDataSourceRequiresUpdate:(id)update;
@end

@implementation RCMainControllerHelper

- (RCMainControllerHelper)init
{
  v31.receiver = self;
  v31.super_class = RCMainControllerHelper;
  v2 = [(RCMainControllerHelper *)&v31 init];
  if (v2)
  {
    v3 = objc_opt_new();
    currentUserActivity = v2->_currentUserActivity;
    v2->_currentUserActivity = v3;

    v5 = [[_TtC10VoiceMemos28RCUserActivityStatePublisher alloc] initWithMainControllerHelper:v2];
    activityStatePublisher = v2->_activityStatePublisher;
    v2->_activityStatePublisher = v5;

    byte_1002E8C90 = 0;
    v7 = +[RCDisplayLinkManager sharedManager];
    displayLinkManager = v2->_displayLinkManager;
    v2->_displayLinkManager = v7;

    timeController = [(RCMainControllerHelper *)v2 timeController];
    [(RCDisplayLinkManager *)v2->_displayLinkManager setTimeController:timeController];

    v10 = [[RCUndoTarget alloc] initWithUndoTargetType:1];
    trimModeUndoTarget = v2->_trimModeUndoTarget;
    v2->_trimModeUndoTarget = v10;

    v12 = [[RCUndoTarget alloc] initWithUndoTargetType:0];
    editModeUndoTarget = v2->_editModeUndoTarget;
    v2->_editModeUndoTarget = v12;

    v14 = +[RCRecordingsModelInteractor sharedRecordingsModelInteractor];
    recordingsModelInteractor = v2->_recordingsModelInteractor;
    v2->_recordingsModelInteractor = v14;

    audioProperties = [(RCRecordingsModelInteractor *)v2->_recordingsModelInteractor audioProperties];
    v17 = [audioProperties valueForKey:@"name"];
    audioProperties = v2->_audioProperties;
    v2->_audioProperties = v17;

    v19 = objc_opt_new();
    recordingObservances = v2->_recordingObservances;
    v2->_recordingObservances = v19;

    v21 = [_TtC10VoiceMemos24RCAppStoreRatingPrompter alloc];
    v22 = +[RCApplicationModel sharedApplicationModel];
    v23 = [(RCAppStoreRatingPrompter *)v21 initWithSavedRecordingsModel:v22];
    appStoreRatingPrompter = v2->_appStoreRatingPrompter;
    v2->_appStoreRatingPrompter = v23;

    v25 = +[RecorderAppDelegate sharedAppDelegate];
    defaultSceneDelegate = [v25 defaultSceneDelegate];
    window = [defaultSceneDelegate window];
    windowScene = [window windowScene];

    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v2 selector:"_sceneDidActivateNotification:" name:UISceneDidActivateNotification object:windowScene];
    [v29 addObserver:v2 selector:"_sceneDidEnterBackgroundNotification:" name:UISceneDidEnterBackgroundNotification object:windowScene];
    [v29 addObserver:v2 selector:"_sceneWillDeactivateNotification:" name:UISceneWillDeactivateNotification object:windowScene];
  }

  return v2;
}

- (void)stopPlayback
{
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  if ([audioPlayer playing])
  {
    [(RCMainControllerHelper *)self _clearPlaybackInAudioPlayer:audioPlayer];
  }
}

- (BOOL)isRecording
{
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  v3 = audioRecorder;
  if (audioRecorder)
  {
    if ([audioRecorder preparing])
    {
      recording = 1;
    }

    else
    {
      recording = [v3 recording];
    }
  }

  else
  {
    recording = 0;
  }

  return recording;
}

- (double)currentTime
{
  currentUserActivity = [(RCMainControllerHelper *)self currentUserActivity];
  if (![currentUserActivity activityType] && objc_msgSend(currentUserActivity, "subActivityType") != 3)
  {
    goto LABEL_8;
  }

  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  v5 = audioRecorder;
  if (!audioRecorder || ![audioRecorder recording] || (v8 = 0, v9 = 0.0, (objc_msgSend(v5, "monitorRecordingTime:duration:", &v9, &v8) & 1) == 0))
  {

LABEL_8:
    currentTime = self->_currentTime;
    goto LABEL_9;
  }

  currentTime = v9;

LABEL_9:
  return currentTime;
}

- (void)startMonitoringFinalizingRecordings
{
  objc_initWeak(&location, self);
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002111C;
  block[3] = &unk_10028C738;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, block);
  objc_destroyWeak(&v5);

  objc_destroyWeak(&location);
}

- (void)defaultSceneDidConnect:(id)connect
{
  connectCopy = connect;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_defaultSceneWillEnterForeground:" name:UISceneWillEnterForegroundNotification object:connectCopy];
}

- (void)dealloc
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_commandTargets;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_commandTargets objectForKey:v8];
        if (v9)
        {
          [v8 removeTarget:v9];
        }
      }

      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(NSMutableSet *)self->_recordingObservances copy];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(RCMainControllerHelper *)self _removeRecordingObservations:*(*(&v16 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15.receiver = self;
  v15.super_class = RCMainControllerHelper;
  [(RCMainControllerHelper *)&v15 dealloc];
}

- (void)setCurrentRecordingDisplayModel:(id)model
{
  objc_storeStrong(&self->_currentRecordingDisplayModel, model);
  delegate = [(RCMainControllerHelper *)self delegate];
  [delegate didUpdateCurrentRecordingDisplayModel];
}

- (BOOL)startCapturing:(id)capturing
{
  capturingCopy = capturing;
  v5 = OSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[RCMainControllerHelper startCapturing:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- Requested start capturing", buf, 0xCu);
  }

  v6 = +[VMAudioService sharedInstance];
  currentUserActivity = [(RCMainControllerHelper *)self currentUserActivity];
  isTrim = [currentUserActivity isTrim];

  if (isTrim)
  {
    [(RCMainControllerHelper *)self exitTrimMode];
  }

  else
  {
    currentUserActivity2 = [(RCMainControllerHelper *)self currentUserActivity];
    activityType = [currentUserActivity2 activityType];

    if (activityType == 3)
    {
      [(RCMainControllerHelper *)self exitEditMode];
    }
  }

  currentUserActivity3 = [(RCMainControllerHelper *)self currentUserActivity];
  [currentUserActivity3 setSubActivityType:0];

  v20 = 0;
  v12 = [v6 isRecordingEnabled:&v20];
  v13 = v20;
  if (v12)
  {
    v14 = [v6 newRecorderWithTitleBase:capturingCopy];
    [(RCMainControllerHelper *)self setAudioRecorder:v14];
    timeController = [(RCMainControllerHelper *)self timeController];
    [timeController setTargetTime:0.0];

    [(RCMainControllerHelper *)self setTargetTrackIndex:0];
    [(RCMainControllerHelper *)self setOverdubbing:0];
    [(RCMainControllerHelper *)self setSilencing:0];
    if (([v14 startRecording] & 1) == 0)
    {
      delegate = [(RCMainControllerHelper *)self delegate];
      recordingError = [(RCMainControllerHelper *)self recordingError];
      [delegate captureFailedWithError:recordingError];
    }
  }

  else if ([(RCMainControllerHelper *)self _errorIsRecordingUnavailable:v13])
  {
    [(RCMainControllerHelper *)self _handleRecordingUnavailableError:v13];
  }

  else
  {
    delegate2 = [(RCMainControllerHelper *)self delegate];
    [delegate2 captureFailedWithError:v13];
  }

  return v12;
}

- (void)pauseCapturing
{
  v3 = OSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[RCMainControllerHelper pauseCapturing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s -- Requested pause capturing", &v8, 0xCu);
  }

  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  currentUserActivity = [(RCMainControllerHelper *)self currentUserActivity];
  [currentUserActivity setSubActivityType:3];

  if (audioRecorder)
  {
    if ([audioRecorder recording])
    {
      [(RCMainControllerHelper *)self _stopDisplayLink];
      if (([audioRecorder stopRecording] & 1) == 0)
      {
        v6 = OSLogForCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1001BAD7C(self);
        }
      }
    }
  }

  undoManager = [(RCMainControllerHelper *)self undoManager];
  [undoManager setUndoDisabled:0];
}

- (void)resumeCapturing:(unint64_t)capturing
{
  v5 = OSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[RCMainControllerHelper resumeCapturing:]";
    v8 = 2048;
    capturingCopy = capturing;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- Requested resume capture on track %lu", &v6, 0x16u);
  }

  [(RCMainControllerHelper *)self _beginOrResumeCaptureSessionWithReplace:0 trackIndex:capturing];
}

- (void)replaceCapturing:(unint64_t)capturing
{
  v5 = OSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[RCMainControllerHelper replaceCapturing:]";
    v8 = 2048;
    capturingCopy = capturing;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- Requested replace capture on track %lu", &v6, 0x16u);
  }

  [(RCMainControllerHelper *)self _beginOrResumeCaptureSessionWithReplace:1 trackIndex:capturing];
}

- (void)stopCapturing
{
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  currentUserActivity = [(RCMainControllerHelper *)self currentUserActivity];
  if ([currentUserActivity activityType] == 1 && objc_msgSend(currentUserActivity, "subActivityType") == 3)
  {
    currentUserActivity2 = [(RCMainControllerHelper *)self currentUserActivity];
    activityType = [currentUserActivity activityType];
    displayModel = [currentUserActivity displayModel];
    [currentUserActivity2 transitionToActivityType:activityType subType:4 withDisplayModel:displayModel];
  }

  if (audioRecorder && [audioRecorder recording] && objc_msgSend(audioRecorder, "stopRecording"))
  {
    undoManager = [(RCMainControllerHelper *)self undoManager];
    [undoManager setUndoDisabled:0];
  }

  [(RCMainControllerHelper *)self setDidTrimPlayback:0];
}

- (BOOL)isPlaying
{
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  v3 = audioPlayer;
  if (audioPlayer)
  {
    playing = [audioPlayer playing];
  }

  else
  {
    playing = 0;
  }

  return playing;
}

- (BOOL)isPaused
{
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  v3 = audioPlayer;
  if (audioPlayer)
  {
    v4 = [audioPlayer playing] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)recordingInProgressUUID
{
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  recordingID = [audioRecorder recordingID];

  return recordingID;
}

- (void)_beginOrResumeCaptureSessionWithReplace:(BOOL)replace trackIndex:(unint64_t)index
{
  v6 = +[VMAudioService sharedInstance];
  v39 = 0;
  v7 = [v6 isRecordingEnabled:&v39];
  v8 = v39;
  if (v7)
  {
    audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
    if ([audioRecorder shouldWaitForAccessToken])
    {
      v10 = OSLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1001BAF2C(v10);
      }

      goto LABEL_14;
    }

    uuidOfPlayingOrSelectedRecording = [(RCMainControllerHelper *)self uuidOfPlayingOrSelectedRecording];
    if (audioRecorder | uuidOfPlayingOrSelectedRecording)
    {
      if (!audioRecorder)
      {
        audioRecorder = [v6 recorderForRecordingID:uuidOfPlayingOrSelectedRecording];
        [(RCMainControllerHelper *)self setAudioRecorder:audioRecorder];
      }

      recordingID = [audioRecorder recordingID];
      v13 = [v6 fetchRecording:recordingID];
      timeController = [(RCMainControllerHelper *)self timeController];
      [timeController currentTime];
      [timeController setTargetTime:?];
      [(RCMainControllerHelper *)self setTargetTrackIndex:index];
      [(RCMainControllerHelper *)self setOverdubbing:index == 1];
      if (index == 1)
      {
        v15 = +[RecorderAppDelegate sharedAppDelegate];
        [v15 dependencyContainer];
        v36 = uuidOfPlayingOrSelectedRecording;
        v16 = timeController;
        v17 = v13;
        v19 = v18 = recordingID;
        analyticsManager = [v19 analyticsManager];
        [analyticsManager userCapturedSecondLayer];

        recordingID = v18;
        v13 = v17;
        timeController = v16;
        uuidOfPlayingOrSelectedRecording = v36;

        [v13 composedAssetHasMultipleTracks];
        v21 = 0;
      }

      else
      {
        composedAssetHasMultipleTracks = [v13 composedAssetHasMultipleTracks];
        v21 = 0;
        if (!index && composedAssetHasMultipleTracks)
        {
          v21 = RCOverdubRecordingIsEnabled() ^ 1;
        }
      }

      [(RCMainControllerHelper *)self setSilencing:v21];
      self->_isResumingOrReplacing = 1;
      if (([audioRecorder startRecording]& 1) != 0)
      {
        [v13 length];
        if (v23 > 0.0)
        {
          undoManager = [(RCMainControllerHelper *)self undoManager];
          editModeUndoTarget = self->_editModeUndoTarget;
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_1000B4FB0;
          v38[3] = &unk_10028C488;
          v38[4] = self;
          [undoManager registerUndoWithTarget:editModeUndoTarget handler:v38];

          undoManager2 = [(RCMainControllerHelper *)self undoManager];
          v27 = +[NSBundle mainBundle];
          [v27 localizedStringForKey:@"TITLE_FOR_OVERDUB_UNDO" value:&stru_100295BB8 table:0];
          v37 = uuidOfPlayingOrSelectedRecording;
          v28 = timeController;
          v29 = v13;
          v31 = v30 = recordingID;
          [undoManager2 setActionName:v31];

          recordingID = v30;
          v13 = v29;
          timeController = v28;
          uuidOfPlayingOrSelectedRecording = v37;

          delegate = [(RCMainControllerHelper *)self delegate];
          [delegate enableUndoFirstResponder];
        }

        undoManager3 = [(RCMainControllerHelper *)self undoManager];
        [undoManager3 setUndoDisabled:1];

        currentUserActivity = [(RCMainControllerHelper *)self currentUserActivity];
        [currentUserActivity setSubActivityType:3];

        [(RCMainControllerHelper *)self setUuidOfPlayingRecording:0];
      }

      else
      {
        self->_isResumingOrReplacing = 0;
        v35 = OSLogForCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_1001BAE94(self);
        }
      }
    }

    else
    {
      audioRecorder = OSLogForCategory();
      if (os_log_type_enabled(audioRecorder, OS_LOG_TYPE_ERROR))
      {
        sub_1001BAE14();
      }
    }
  }

  else
  {
    if (![(RCMainControllerHelper *)self _errorIsRecordingUnavailable:v8])
    {
      audioRecorder = [(RCMainControllerHelper *)self delegate];
      [audioRecorder captureFailedWithError:v8];
LABEL_14:

      goto LABEL_29;
    }

    [(RCMainControllerHelper *)self _handleRecordingUnavailableError:v8];
  }

LABEL_29:
}

- (void)_recordingStarted:(id)started
{
  startedCopy = started;
  v5 = +[UIApplication sharedApplication];
  isRunningTest = [v5 isRunningTest];

  if (isRunningTest)
  {
    v7 = +[UIApplication sharedApplication];
    delegate = [v7 delegate];
    [delegate ppt_didStartRecording];
  }

  v9 = OSLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v42 = "[RCMainControllerHelper _recordingStarted:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s -- Recording started UI callback", buf, 0xCu);
  }

  v10 = +[RCRecordingStartTimeInfo infoWithCurrentDateAndTime];
  [(RCMainControllerHelper *)self currentTime];
  [v10 setRecordingTimeAtStartTime:?];
  [(RCMainControllerHelper *)self currentDuration];
  [v10 setRecordingDurationAtStartTime:?];
  delegate2 = [(RCMainControllerHelper *)self delegate];
  v34 = v10;
  [delegate2 recordingDidStartWithInfo:v10];

  recordingID = [startedCopy recordingID];
  v32 = +[VMAudioService sharedInstance];
  v13 = [v32 fetchRecording:recordingID];
  if (v13)
  {
    [(RCMainControllerHelper *)self _addRecordingObservations:v13];
  }

  title = [v13 title];
  creationDate = [v13 creationDate];
  v16 = 0.0;
  if (self->_isResumingOrReplacing)
  {
    [v13 length];
    v16 = v17;
  }

  BYTE3(v29) = 0;
  BYTE2(v29) = [v13 composedAssetIsSpatialRecording];
  LOWORD(v29) = 0;
  v31 = title;
  v18 = [RCRecordingDisplayModel recordingDisplayModelWithTitle:"recordingDisplayModelWithTitle:creationDate:duration:UUID:recentlyDeleted:representsDownloadingFile:isFavorite:isEnhanced:hasTranscription:isSpatialRecording:wasManuallyRenamed:" creationDate:title duration:creationDate UUID:recordingID recentlyDeleted:0 representsDownloadingFile:0 isFavorite:0 isEnhanced:v16 hasTranscription:v29 isSpatialRecording:? wasManuallyRenamed:?];
  [(RCMainControllerHelper *)self setCurrentRecordingDisplayModel:v18];
  v33 = recordingID;
  v19 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor compositionLoadedForSavedRecordingUUID:recordingID];
  [(RCMainControllerHelper *)self setCurrentComposition:v19];

  v35 = startedCopy;
  waveformDataSource = [startedCopy waveformDataSource];
  [waveformDataSource addObserver:self];
  [(RCMainControllerHelper *)self setUuidOfPlayingRecording:0];
  if (self->_isResumingOrReplacing)
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  currentComposition = [(RCMainControllerHelper *)self currentComposition];
  v30 = v18;
  [(RCMainControllerHelper *)self _transitionToActivityType:1 toSubType:v21 withDisplayModel:v18 waveformDataSource:waveformDataSource composition:currentComposition];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  allObjects = [(NSHashTable *)self->_timeObservers allObjects];
  v24 = [allObjects countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v37;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(allObjects);
        }

        v28 = *(*(&v36 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v28 timeController:self didChangeState:2];
        }
      }

      v25 = [allObjects countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v25);
  }

  [(RCMainControllerHelper *)self _startDisplayLink];
}

- (void)_recordingStopped:(id)stopped
{
  stoppedCopy = stopped;
  v5 = OSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v47 = "[RCMainControllerHelper _recordingStopped:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- Recording stopped UI callback", buf, 0xCu);
  }

  delegate = [(RCMainControllerHelper *)self delegate];
  [delegate recordingDidEnd];

  recordingID = [stoppedCopy recordingID];
  if (recordingID)
  {
    v8 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor recordingForUUID:recordingID];
    if (v8)
    {
      v9 = v8;
      currentUserActivity = [(RCMainControllerHelper *)self currentUserActivity];
      subActivityType = [currentUserActivity subActivityType];

      if (subActivityType == 2)
      {
        timeController = [(RCMainControllerHelper *)self timeController];
        [timeController setTargetTime:0.0];
      }

      v13 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor compositionLoadedForSavedRecordingUUID:recordingID];
      [(RCMainControllerHelper *)self setCurrentComposition:v13];

      [(RCMainControllerHelper *)self _updateWillMigrateFromSingleLayerToMultiLayerForRecordingID:recordingID];
      [(RCMainControllerHelper *)self _performRecordingEndTransitionWithUUID:recordingID];
      currentComposition = [(RCMainControllerHelper *)self currentComposition];
      savedRecordingUUID = [currentComposition savedRecordingUUID];
      if (savedRecordingUUID)
      {
        v16 = savedRecordingUUID;
        currentComposition2 = [(RCMainControllerHelper *)self currentComposition];
        savedRecordingUUID2 = [currentComposition2 savedRecordingUUID];
        v19 = [savedRecordingUUID2 isEqual:recordingID];

        if (v19)
        {
          v40 = recordingID;
LABEL_14:
          timeController2 = [(RCMainControllerHelper *)self timeController];
          [timeController2 currentTime];
          v25 = v24;

          [v9 length];
          v27 = v26;
          v28 = [RCRecordingDisplayModel recordingDisplayModelWithSavedRecording:v9];
          [(RCMainControllerHelper *)self setCurrentRecordingDisplayModel:v28];

          RCTimeRangeMake();
          v30 = v29;
          v32 = v31;
          timeController3 = [(RCMainControllerHelper *)self timeController];
          [timeController3 setAllowedTimeRange:{v30, v32}];

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          allObjects = [(NSHashTable *)self->_timeObservers allObjects];
          v35 = [allObjects countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v42;
            do
            {
              for (i = 0; i != v36; i = i + 1)
              {
                if (*v42 != v37)
                {
                  objc_enumerationMutation(allObjects);
                }

                v39 = *(*(&v41 + 1) + 8 * i);
                if (objc_opt_respondsToSelector())
                {
                  [v39 timeController:self didChangeCurrentTime:v25 didChangeDuration:v27];
                }

                if (objc_opt_respondsToSelector())
                {
                  [v39 timeController:self didChangeState:0];
                }
              }

              v36 = [allObjects countByEnumeratingWithState:&v41 objects:v45 count:16];
            }

            while (v36);
          }

          [(RCMainControllerHelper *)self _stopDisplayLink];
          recordingID = v40;
          [(RCMainControllerHelper *)self _preloadRecordingForPlayback:v40];
          v20 = v9;
          goto LABEL_26;
        }

        currentComposition3 = [(RCMainControllerHelper *)self currentComposition];
        savedRecordingUUID3 = [currentComposition3 savedRecordingUUID];

        [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor recordingForUUID:savedRecordingUUID3];
        v9 = currentComposition = v9;
        recordingID = savedRecordingUUID3;
      }

      v40 = recordingID;

      goto LABEL_14;
    }
  }

  v20 = OSLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_1001BAFB0();
  }

LABEL_26:
}

- (void)_recordingFailed:(id)failed error:(id)error
{
  failedCopy = failed;
  errorCopy = error;
  v8 = OSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001BB02C();
  }

  if (([failedCopy recording] & 1) == 0)
  {
    [(RCMainControllerHelper *)self _recordingStopped:failedCopy];
    [(RCMainControllerHelper *)self setAudioRecorder:0];
  }

  delegate = [(RCMainControllerHelper *)self delegate];
  [delegate captureFailedWithError:errorCopy];
}

- (BOOL)_errorIsRecordingUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  domain = [unavailableCopy domain];
  if ([domain isEqualToString:@"VMAudioServiceErrorDomain"])
  {
    v5 = [unavailableCopy code] == 5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_handleRecordingUnavailableError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_recordingUnavailableAlertController);

  if (!WeakRetained)
  {
    userInfo = [errorCopy userInfo];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000B5A50;
    v14 = &unk_10028A650;
    selfCopy = self;
    v16 = errorCopy;
    v7 = objc_retainBlock(&v11);
    v8 = [userInfo objectForKeyedSubscript:{NSLocalizedFailureReasonErrorKey, v11, v12, v13, v14, selfCopy}];
    v9 = [userInfo objectForKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
    v10 = [UIAlertController rc_OKAlertControllerWithTitle:v8 message:v9 handler:v7];

    [v10 rc_showInMainWindow];
    objc_storeWeak(&self->_recordingUnavailableAlertController, v10);
  }
}

- (void)prepareForPlaybackForUUID:(id)d force:(BOOL)force
{
  forceCopy = force;
  dCopy = d;
  currentComposition = [(RCMainControllerHelper *)self currentComposition];
  savedRecordingUUID = [currentComposition savedRecordingUUID];
  v8 = [savedRecordingUUID isEqualToString:dCopy];
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];

  if (forceCopy || !audioPlayer || (v8 & 1) == 0)
  {
    [(RCMainControllerHelper *)self setUuidOfPlayingRecording:dCopy];
    v10 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor compositionLoadedForSavedRecordingUUID:dCopy];
    [(RCMainControllerHelper *)self setCurrentComposition:v10];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    waveformViewController = [WeakRetained waveformViewController];
    waveformViewController = self->_waveformViewController;
    self->_waveformViewController = waveformViewController;

    v14 = objc_loadWeakRetained(&self->_delegate);
    overviewWaveformViewController = [v14 overviewWaveformViewController];
    overviewWaveformViewController = self->_overviewWaveformViewController;
    self->_overviewWaveformViewController = overviewWaveformViewController;

    [(RCAVWaveformViewController *)self->_waveformViewController setActiveTimeController:self];
    [(RCAVWaveformViewController *)self->_overviewWaveformViewController setActiveTimeController:self];
    v17 = self->_recordingsModelInteractor;
    v18 = [(RCRecordingsModelInteractor *)v17 recordingForUUID:savedRecordingUUID];
    if (v18)
    {
      [(RCMainControllerHelper *)self _removeRecordingObservations:v18];
    }

    v19 = [(RCRecordingsModelInteractor *)v17 recordingForUUID:dCopy];
    if (v19)
    {
      [(RCMainControllerHelper *)self _addRecordingObservations:v19];
      v20 = [RCRecordingDisplayModel recordingDisplayModelWithSavedRecording:v19];
      [(RCMainControllerHelper *)self setCurrentRecordingDisplayModel:v20];

      if ((v8 & 1) == 0)
      {
        [v19 length];
        RCTimeRangeMake();
        v22 = v21;
        v24 = v23;
        timeController = [(RCMainControllerHelper *)self timeController];
        [timeController setAllowedTimeRange:{v22, v24}];
      }
    }

    [(RCMainControllerHelper *)self _preloadRecordingForPlayback:dCopy];
  }
}

- (BOOL)readyForPlayback
{
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  recordingID = [audioPlayer recordingID];
  if (recordingID)
  {
    v5 = 1;
  }

  else
  {
    audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
    recordingID2 = [audioRecorder recordingID];
    v5 = recordingID2 != 0;
  }

  return v5;
}

- (void)playbackForUUID:(id)d
{
  dCopy = d;
  if ([(RCMainControllerHelper *)self isRecording])
  {
    v5 = OSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001BB0A8();
    }
  }

  else
  {
    uuidOfPlayingRecording = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
    v7 = [uuidOfPlayingRecording isEqualToString:dCopy];

    if ((v7 & 1) == 0)
    {
      [(RCMainControllerHelper *)self setUuidOfPlayingRecording:dCopy];
      [(RCMainControllerHelper *)self prepareForPlaybackForUUID:dCopy];
    }

    timeController = [(RCMainControllerHelper *)self timeController];
    [timeController currentTime];
    [(RCMainControllerHelper *)self _startPlaybackOfUUID:dCopy atPosition:?];
  }
}

- (void)togglePlayback
{
  uuidOfPlayingRecording = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
  [(RCMainControllerHelper *)self toggleForUUID:uuidOfPlayingRecording];
}

- (void)toggleForUUID:(id)d
{
  dCopy = d;
  v4 = [(RCMainControllerHelper *)self currentPlayerForUUID:?];
  v5 = v4;
  if (v4)
  {
    if ([v4 playing])
    {
      [(RCMainControllerHelper *)self pauseForUUID:dCopy];
    }

    else
    {
      [(RCMainControllerHelper *)self playbackForUUID:dCopy];
    }
  }
}

- (BOOL)isPlayingForUUID:(id)d
{
  dCopy = d;
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  uuidOfPlayingRecording = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
  v7 = [uuidOfPlayingRecording isEqualToString:dCopy];

  if (v7)
  {
    playing = [audioPlayer playing];
  }

  else
  {
    playing = 0;
  }

  return playing;
}

- (void)pauseForUUID:(id)d
{
  dCopy = d;
  uuidOfPlayingRecording = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
  v6 = [dCopy isEqualToString:uuidOfPlayingRecording];

  if (v6)
  {
    v7 = [(RCMainControllerHelper *)self currentPlayerForUUID:dCopy];
    [(RCMainControllerHelper *)self _stopPlaybackInAudioPlayer:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (dCopy)
  {
    uuidOfPlayingRecording2 = [(RCMainControllerHelper *)self uuidOfPlayingRecording];

    if (uuidOfPlayingRecording2)
    {
      v7 = OSLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001BB128(dCopy, self);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)stopForUUID:(id)d
{
  dCopy = d;
  uuidOfPlayingRecording = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
  v6 = [dCopy isEqualToString:uuidOfPlayingRecording];

  if (v6)
  {
    v7 = [(RCMainControllerHelper *)self currentPlayerForUUID:dCopy];
    [(RCMainControllerHelper *)self _clearPlaybackInAudioPlayer:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (dCopy)
  {
    uuidOfPlayingRecording2 = [(RCMainControllerHelper *)self uuidOfPlayingRecording];

    if (uuidOfPlayingRecording2)
    {
      v7 = OSLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001BB1D0(dCopy, self);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)startScrubbingForUUID:(id)d atPosition:(double)position
{
  dCopy = d;
  if (([(VMAudioPlayer *)self->_audioPlayer playing]& 1) != 0 || [(VMAudioPlayer *)self->_audioPlayer willPlayPendingPreparation])
  {
    self->_scrubState = 1;
    [(RCMainControllerHelper *)self pauseForUUID:dCopy];
  }

  else
  {
    self->_scrubState = 2;
  }
}

- (void)updateScrubbingForUUID:(id)d atPosition:(double)position
{
  timeController = [(RCMainControllerHelper *)self timeController];
  [timeController setTargetTime:position];
}

- (void)endScrubbingForUUID:(id)d atPosition:(double)position
{
  if (self->_scrubState == 1)
  {
    [(RCMainControllerHelper *)self playbackForUUID:d, position];
  }

  self->_scrubState = 0;
}

- (BOOL)canJumpForward
{
  if (![(RCMainControllerHelper *)self isRecording])
  {
    readyForPlayback = [(RCMainControllerHelper *)self readyForPlayback];
    if (!readyForPlayback)
    {
      return readyForPlayback;
    }

    [(RCMainControllerHelper *)self currentDuration];
    if (v4 > 0.05)
    {
      [(RCMainControllerHelper *)self currentTime];
      v6 = v5;
      [(RCMainControllerHelper *)self currentDuration];
      LOBYTE(readyForPlayback) = v6 < v7;
      return readyForPlayback;
    }
  }

  LOBYTE(readyForPlayback) = 0;
  return readyForPlayback;
}

- (BOOL)canJumpBackward
{
  if (![(RCMainControllerHelper *)self isRecording])
  {
    readyForPlayback = [(RCMainControllerHelper *)self readyForPlayback];
    if (!readyForPlayback)
    {
      return readyForPlayback;
    }

    [(RCMainControllerHelper *)self currentDuration];
    if (v4 > 0.05)
    {
      [(RCMainControllerHelper *)self currentTime];
      LOBYTE(readyForPlayback) = v5 > 0.0;
      return readyForPlayback;
    }
  }

  LOBYTE(readyForPlayback) = 0;
  return readyForPlayback;
}

- (void)_stopForUUIDs:(id)ds
{
  dsCopy = ds;
  uuidOfPlayingRecording = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
  v6 = [dsCopy containsObject:uuidOfPlayingRecording];

  if (v6)
  {
    uuidOfPlayingRecording2 = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
    [(RCMainControllerHelper *)self stopForUUID:uuidOfPlayingRecording2];
  }
}

- (void)_preloadRecordingForPlayback:(id)playback
{
  playbackCopy = playback;
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  if (!audioPlayer || (v6 = audioPlayer, -[RCMainControllerHelper audioPlayer](self, "audioPlayer"), v7 = objc_claimAutoreleasedReturnValue(), [v7 recordingID], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", playbackCopy), v8, v7, v6, (v9 & 1) == 0))
  {
    v10 = [(RCMainControllerHelper *)self currentPlayerForUUID:playbackCopy];
    if (!v10)
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1001BB278();
      }
    }
  }
}

- (void)_startPlaybackOfUUID:(id)d atPosition:(double)position
{
  dCopy = d;
  v7 = +[RecorderAppDelegate sharedAppDelegate];
  dependencyContainer = [v7 dependencyContainer];
  analyticsManager = [dependencyContainer analyticsManager];
  [analyticsManager userPlayedVoiceMemo];

  timeController = [(RCMainControllerHelper *)self timeController];
  v10 = [(RCMainControllerHelper *)self currentPlayerForUUID:dCopy];

  [timeController allowedTimeRange];
  v12 = v11;
  v14 = v13;
  [v10 setPlayableRange:?];
  if (v14 - position >= 0.01)
  {
    positionCopy = position;
  }

  else
  {
    positionCopy = v12;
  }

  [timeController setTargetTime:positionCopy];
  [v10 startPlaying];
}

- (void)_clearPlaybackInAudioPlayer:(id)player
{
  [(RCMainControllerHelper *)self _stopPlaybackInAudioPlayer:player];

  [(RCMainControllerHelper *)self setUuidOfPlayingRecording:0];
}

- (void)_stopPlaybackInAudioPlayer:(id)player
{
  playerCopy = player;
  v4 = playerCopy;
  if (playerCopy)
  {
    v6 = playerCopy;
    playing = [playerCopy playing];
    v4 = v6;
    if (playing)
    {
      [v6 stopPlaying];
      v4 = v6;
    }
  }
}

- (id)currentPlayerForUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
    v6 = audioPlayer;
    if (audioPlayer && ([audioPlayer recordingID], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(dCopy, "isEqualToString:", v7), v7, v8))
    {
      v9 = v6;
    }

    else
    {
      v10 = +[VMAudioService sharedInstance];
      v9 = [v10 playerForRecordingID:dCopy];
      LODWORD(v11) = 1.0;
      [(RCMainControllerHelper *)self setTargetRate:v11];
      audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
      recordingID = [audioRecorder recordingID];
      v14 = [dCopy isEqualToString:recordingID];

      if (v14)
      {
        [(RCMainControllerHelper *)self targetTime];
        [v9 setPlayerTime:?];
      }

      else
      {
        [(RCMainControllerHelper *)self setTargetTime:0.0];
      }

      [v9 setController:self];
      [(RCMainControllerHelper *)self setAudioPlayer:v9];
    }
  }

  else
  {
    v15 = OSLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1001BB2F4();
    }

    v9 = 0;
  }

  return v9;
}

- (void)_jumpByIncrement:(double)increment forUUID:(id)d
{
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  timeController = [(RCMainControllerHelper *)self timeController];
  if ([audioPlayer playing])
  {
    [audioPlayer playerTime];
  }

  else
  {
    [timeController currentTime];
  }

  [(RCMainControllerHelper *)self _jumpToTargetTime:v7 + increment];
}

- (void)_jumpToTargetTime:(double)time
{
  timeController = [(RCMainControllerHelper *)self timeController];
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  v7 = audioRecorder;
  v10 = 0;
  v11 = 0;
  if (audioRecorder && [audioRecorder recording] && objc_msgSend(v7, "monitorRecordingTime:duration:", &v11, &v10))
  {
    RCTimeRangeMake();
  }

  else
  {
    [timeController allowedTimeRange];
  }

  if (timeCopy <= time)
  {
    timeCopy = time;
    if (v9 < time)
    {
      timeCopy = v9;
    }
  }

  [timeController setTargetTime:timeCopy];
  [(RCMainControllerHelper *)self _reconcileAudioStateWithApplicationState];
}

- (void)endDescriptionViewTextEditing
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"RecordingDescriptionViewShouldEndEditingNotificationName" object:0];
}

- (void)enterTrimMode
{
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  if (!audioRecorder)
  {
    v4 = +[VMAudioService sharedInstance];
    uuidOfPlayingOrSelectedRecording = [(RCMainControllerHelper *)self uuidOfPlayingOrSelectedRecording];
    audioRecorder = [v4 recorderForRecordingID:uuidOfPlayingOrSelectedRecording];
  }

  if ([audioRecorder recording])
  {
    if ([audioRecorder stopRecording])
    {
      v6 = [NSString stringWithUTF8String:"recording"];
      v8 = audioRecorder;
      v7 = RCObserveChangesToKeyPath();
    }
  }

  else
  {
    [(RCMainControllerHelper *)self _enterTrimMode];
  }
}

- (void)exitTrimMode
{
  [(RCUndoTarget *)self->_trimModeUndoTarget setShouldEnableSave:0];
  delegate = [(RCMainControllerHelper *)self delegate];
  [(RCMainControllerHelper *)self currentDuration];
  [delegate recordingDurationUpdated:?];

  [(RCMainControllerHelper *)self _setIsInSelectionEditingMode:0 forInsertMode:0];
  currentUserActivity = [(RCMainControllerHelper *)self currentUserActivity];
  [currentUserActivity setSubActivityType:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"TRIM_END_ANNOUNCE" value:&stru_100295BB8 table:0];

  v7 = dispatch_time(0, 800000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B6C48;
  block[3] = &unk_10028A3B8;
  v10 = v6;
  v8 = v6;
  dispatch_after(v7, &_dispatch_main_q, block);
}

- (void)cancelTrimModeWithDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  if ([(RCUndoTarget *)self->_trimModeUndoTarget sizeOfUndoStack]>= 1)
  {
    audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
    if ([audioRecorder restoreMarkedVersion])
    {
      [(RCMainControllerHelper *)self _reloadWaveformDataSourceAndPreviewAssetWithInitialTime:0.0];
      [(RCMainControllerHelper *)self _clearTrimModeUndoStack];
      timeController = [(RCMainControllerHelper *)self timeController];
      [timeController setTargetTime:0.0];
    }

    else
    {
      timeController = OSLogForCategory();
      if (os_log_type_enabled(timeController, OS_LOG_TYPE_ERROR))
      {
        sub_1001BB374(self);
      }
    }
  }

  if (dismissalCopy)
  {
    [(RCMainControllerHelper *)self exitTrimMode];
  }
}

- (void)doneButtonShouldSaveAsNew:(BOOL)new
{
  newCopy = new;
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  isNewRecording = [audioRecorder isNewRecording];

  [(RCMainControllerHelper *)self setShouldSaveAsNew:newCopy & (isNewRecording ^ 1)];
}

- (void)exitEditMode
{
  undoManager = [(RCMainControllerHelper *)self undoManager];
  [undoManager removeAllActionsWithTarget:self->_editModeUndoTarget];

  [(RCUndoTarget *)self->_editModeUndoTarget setSizeOfUndoStack:0];
  [(RCMainControllerHelper *)self _clearTrimModeUndoStack];
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  [CATransaction setFrameStallSkipRequest:1];
  v4 = audioRecorder;
  if (audioRecorder)
  {
    v5 = [audioRecorder finishEditing:{-[RCMainControllerHelper shouldSaveAsNew](self, "shouldSaveAsNew")}];
    if (v5)
    {
      delegate = [(RCMainControllerHelper *)self delegate];
      [delegate finishedEditingWithNewRecordingUUID:v5];
    }

    [(RCMainControllerHelper *)self setAudioRecorder:0];

    v4 = audioRecorder;
  }
}

- (void)performTrimByKeepingSelectedRangeForRecordingWithUUID:(id)d source:(id)source
{
  dCopy = d;
  [(RCMainControllerHelper *)self _selectedTimeRange];
  v7 = v6;
  v9 = v8;
  if ([(RCMainControllerHelper *)self _isSelectionTrimmableByKeepingRange:?])
  {
    v10 = +[VMAudioService sharedInstance];
    audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
    v12 = audioRecorder;
    if (!audioRecorder || ([audioRecorder recordingID], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(dCopy, "isEqualToString:", v13), v13, (v14 & 1) == 0))
    {
      v15 = [v10 recorderForRecordingID:dCopy];

      [(RCMainControllerHelper *)self setAudioRecorder:v15];
      v12 = v15;
    }

    [(RCMainControllerHelper *)self _markCurrentFileVersionIfNecessary];
    v23 = 0;
    v16 = [v12 trimRecording:&v23 error:{v7, v9}];
    v17 = v23;
    if (v16)
    {
      [(RCMainControllerHelper *)self _refreshAfterEditingOperation:dCopy];
      delegate = [(RCMainControllerHelper *)self delegate];
      [(RCMainControllerHelper *)self _adjustCurrentTrimOperationUndoCount:1];
      undoManager = [delegate undoManager];
      trimModeUndoTarget = self->_trimModeUndoTarget;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000B70A0;
      v22[3] = &unk_10028C488;
      v22[4] = self;
      [undoManager registerUndoWithTarget:trimModeUndoTarget handler:v22];
      v21 = [(RCMainControllerHelper *)self _undoActionNameForTrimMode:0 isUndo:1];
      [undoManager setActionName:v21];

      [delegate enableUndoFirstResponder];
    }

    else
    {
      delegate = OSLogForCategory();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
      {
        sub_1001BB40C();
      }
    }
  }

  else
  {
    [(RCMainControllerHelper *)self _cancelTrim];
  }
}

- (void)performTrimByDeletingSelectedRangeForRecordingWithUUID:(id)d source:(id)source
{
  dCopy = d;
  [(RCMainControllerHelper *)self _selectedTimeRange];
  v7 = v6;
  v9 = v8;
  if ([(RCMainControllerHelper *)self _isSelectionTrimmableByDeletingRange:?])
  {
    v10 = +[VMAudioService sharedInstance];
    audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
    v12 = audioRecorder;
    if (!audioRecorder || ([audioRecorder recordingID], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(dCopy, "isEqualToString:", v13), v13, (v14 & 1) == 0))
    {
      v15 = [v10 recorderForRecordingID:dCopy];

      [(RCMainControllerHelper *)self setAudioRecorder:v15];
      v12 = v15;
    }

    [(RCMainControllerHelper *)self _markCurrentFileVersionIfNecessary];
    v23 = 0;
    v16 = [v12 cutRecording:&v23 error:{v7, v9}];
    v17 = v23;
    if (v16)
    {
      [(RCMainControllerHelper *)self _refreshAfterEditingOperation:dCopy];
      delegate = [(RCMainControllerHelper *)self delegate];
      [(RCMainControllerHelper *)self _adjustCurrentTrimOperationUndoCount:1];
      undoManager = [delegate undoManager];
      trimModeUndoTarget = self->_trimModeUndoTarget;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000B72DC;
      v22[3] = &unk_10028C488;
      v22[4] = self;
      [undoManager registerUndoWithTarget:trimModeUndoTarget handler:v22];
      v21 = [(RCMainControllerHelper *)self _undoActionNameForTrimMode:1 isUndo:1];
      [undoManager setActionName:v21];

      [delegate enableUndoFirstResponder];
    }

    else
    {
      delegate = OSLogForCategory();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
      {
        sub_1001BB488();
      }
    }
  }

  else
  {
    [(RCMainControllerHelper *)self _cancelTrim];
  }
}

- (void)openForModifyRecordingWithUUID:(id)d withSubActivityType:(int64_t)type
{
  dCopy = d;
  v6 = [RCRecordingDisplayModel recordingDisplayModelForUUID:?];
  v7 = v6;
  if (v6 && ([v6 recentlyDeleted] & 1) == 0)
  {
    v8 = +[VMAudioService sharedInstance];
    v9 = [v8 recorderForRecordingID:dCopy];
    [(RCMainControllerHelper *)self setAudioRecorder:v9];
    v10 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor compositionLoadedForSavedRecordingUUID:dCopy];
    [(RCMainControllerHelper *)self setCurrentComposition:v10];

    currentComposition = [(RCMainControllerHelper *)self currentComposition];
    [(RCMainControllerHelper *)self _transitionToActivityType:3 toSubType:type withDisplayModel:v7 waveformDataSource:0 composition:currentComposition];
  }
}

- (void)_enterTrimMode
{
  [(RCMainControllerHelper *)self _setIsInSelectionEditingMode:1 forInsertMode:0];
  currentUserActivity = [(RCMainControllerHelper *)self currentUserActivity];
  [currentUserActivity setSubActivityType:1];

  [(RCMainControllerHelper *)self _adjustCurrentTrimOperationUndoCount:0];
}

- (void)_resetSelectedTimeRangeToFullDuration
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  waveformViewController = [WeakRetained waveformViewController];
  [waveformViewController resetSelectedTimeRangeToFullDuration];

  v5 = objc_loadWeakRetained(&self->_delegate);
  overviewWaveformViewController = [v5 overviewWaveformViewController];
  [overviewWaveformViewController resetSelectedTimeRangeToFullDuration];

  v13 = objc_loadWeakRetained(&self->_delegate);
  waveformViewController2 = [v13 waveformViewController];
  [waveformViewController2 selectedTimeRange];
  v9 = v8;
  v11 = v10;
  timeController = [(RCMainControllerHelper *)self timeController];
  [timeController setAllowedTimeRange:{v9, v11}];
}

- (void)_setIsInSelectionEditingMode:(BOOL)mode forInsertMode:(BOOL)insertMode
{
  if (byte_1002E8C90 != mode)
  {
    byte_1002E8C90 = mode;
    if (mode)
    {
      [(RCMainControllerHelper *)self _beginSelectionEditingModeForInsertMode:insertMode];
    }

    else
    {
      [(RCMainControllerHelper *)self _endSelectionEditingMode:mode];
    }
  }

  if (byte_1002E8C90 == 1)
  {

    [(RCMainControllerHelper *)self _resetSelectedTimeRangeToFullDuration];
  }
}

- (void)_endSelectionEditingMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  waveformViewController = [WeakRetained waveformViewController];
  waveformViewController = self->_waveformViewController;
  self->_waveformViewController = waveformViewController;

  v6 = objc_loadWeakRetained(&self->_delegate);
  overviewWaveformViewController = [v6 overviewWaveformViewController];
  overviewWaveformViewController = self->_overviewWaveformViewController;
  self->_overviewWaveformViewController = overviewWaveformViewController;

  v9 = self->_waveformViewController;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B7694;
  v10[3] = &unk_10028A3B8;
  v10[4] = self;
  [(RCAVWaveformViewController *)v9 hidSelectionOverlayWithCompletionBlock:v10];
  [(RCAVWaveformViewController *)self->_overviewWaveformViewController hidSelectionOverlayWithCompletionBlock:&stru_10028C4A8];
  [(RCMainControllerHelper *)self pauseCapturing];
}

- (void)_beginSelectionEditingModeForInsertMode:(BOOL)mode
{
  modeCopy = mode;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  waveformViewController = [WeakRetained waveformViewController];
  waveformViewController = self->_waveformViewController;
  self->_waveformViewController = waveformViewController;

  v8 = objc_loadWeakRetained(&self->_delegate);
  overviewWaveformViewController = [v8 overviewWaveformViewController];
  overviewWaveformViewController = self->_overviewWaveformViewController;
  self->_overviewWaveformViewController = overviewWaveformViewController;

  [(RCAVWaveformViewController *)self->_waveformViewController showSelectionOverlayAndEnableInsertMode:modeCopy];
  v11 = self->_overviewWaveformViewController;

  [(RCAVWaveformViewController *)v11 showSelectionOverlayAndEnableInsertMode:modeCopy];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_selectedTimeRange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  waveformViewController = [WeakRetained waveformViewController];
  waveformViewController = self->_waveformViewController;
  self->_waveformViewController = waveformViewController;

  v6 = self->_waveformViewController;

  [(RCAVWaveformViewController *)v6 selectedTimeRange];
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (void)_refreshAfterEditingOperation:(id)operation
{
  recordingsModelInteractor = self->_recordingsModelInteractor;
  operationCopy = operation;
  v6 = [(RCRecordingsModelInteractor *)recordingsModelInteractor compositionLoadedForSavedRecordingUUID:operationCopy];
  [(RCMainControllerHelper *)self setCurrentComposition:v6];

  [(RCMainControllerHelper *)self _updateWillMigrateFromSingleLayerToMultiLayerForRecordingID:operationCopy];
  [(RCAVWaveformViewController *)self->_waveformViewController nextPreviewStartTime];
  [(RCMainControllerHelper *)self _reloadWaveformDataSourceAndPreviewAssetWithInitialTime:?];

  [(RCMainControllerHelper *)self _resetSelectedTimeRangeToFullDuration];
}

- (void)_markCurrentFileVersionIfNecessary
{
  if (![(RCUndoTarget *)self->_trimModeUndoTarget sizeOfUndoStack])
  {
    audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
    [audioRecorder markCurrentVersion];
  }
}

- (BOOL)_isSelectionTrimmableByKeepingRange:(id)range
{
  RCTimeRangeDeltaWithUIPrecision();
  v5 = v4;
  if (v4 < 1.0)
  {
    return 0;
  }

  [(RCMainControllerHelper *)self currentDuration];
  return v7 - v5 > 0.05;
}

- (BOOL)_isSelectionTrimmableByDeletingRange:(id)range
{
  RCTimeRangeDeltaWithUIPrecision();
  v5 = v4;
  if (v4 <= 0.05)
  {
    return 0;
  }

  [(RCMainControllerHelper *)self currentDuration];
  return v6 - v5 >= 1.0;
}

- (void)_reloadWaveformDataSourceAndPreviewAssetWithInitialTime:(double)time
{
  currentComposition = [(RCMainControllerHelper *)self currentComposition];
  [currentComposition composedDuration];
  v7 = v6;

  if (v7 <= time)
  {
    time = v7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  currentComposition2 = [(RCMainControllerHelper *)self currentComposition];
  [WeakRetained reloadWaveformsFromComposition:currentComposition2];

  timeController = [(RCMainControllerHelper *)self timeController];
  [timeController setTargetTime:time];
}

- (void)setFavorite:(BOOL)favorite forRecordingWithUUID:(id)d
{
  favoriteCopy = favorite;
  dCopy = d;
  dCopy2 = d;
  v7 = [NSArray arrayWithObjects:&dCopy count:1];

  [(RCMainControllerHelper *)self setFavorite:favoriteCopy forRecordingsWithUUIDs:v7, dCopy];
}

- (void)setFavorite:(BOOL)favorite forRecordingsWithUUIDs:(id)ds
{
  favoriteCopy = favorite;
  dsCopy = ds;
  [(RCMainControllerHelper *)self endDescriptionViewTextEditing];
  v7 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor setFavorite:favoriteCopy forUUIDs:dsCopy];

  [(RCMainControllerHelper *)self _registerUndoForSetFavorite:favoriteCopy changedUUIDs:v7];
}

- (void)_registerUndoForSetFavorite:(BOOL)favorite changedUUIDs:(id)ds
{
  favoriteCopy = favorite;
  dsCopy = ds;
  undoManager = [(RCMainControllerHelper *)self undoManager];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000B7D14;
  v20 = &unk_10028C4D0;
  v22 = favoriteCopy;
  v8 = dsCopy;
  v21 = v8;
  [undoManager registerUndoWithTarget:self handler:&v17];
  LODWORD(self) = [undoManager isUndoing];
  v9 = +[NSBundle mainBundle];
  v10 = v9;
  if (self)
  {
    v11 = @"REMOVE_FROM_FAVORITES_ACTION";
  }

  else
  {
    v11 = @"ADD_TO_FAVORITES_ACTION";
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_100295BB8 table:0];

  if ([undoManager isUndoing])
  {
    v13 = @"ADD_TO_FAVORITES_ACTION";
  }

  else
  {
    v13 = @"REMOVE_FROM_FAVORITES_ACTION";
  }

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:v13 value:&stru_100295BB8 table:0];

  if (favoriteCopy)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  [undoManager setActionName:v16];
}

- (void)toggleFavoriteForUUID:(id)d
{
  dCopy = d;
  [(RCMainControllerHelper *)self setFavorite:[(RCMainControllerHelper *)self isFavoriteForUUID:dCopy]^ 1 forRecordingWithUUID:dCopy];
}

- (id)compositionForUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    currentComposition = [(RCMainControllerHelper *)self currentComposition];
    savedRecordingUUID = [currentComposition savedRecordingUUID];
    v7 = [savedRecordingUUID isEqualToString:dCopy];

    if (v7)
    {
      v8 = currentComposition;
    }

    else
    {
      v8 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor compositionLoadedForSavedRecordingUUID:dCopy];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)playbackSettingsForUUID:(id)d
{
  dCopy = d;
  uUID = [(RCRecordingDisplayModel *)self->_currentRecordingDisplayModel UUID];
  v6 = [dCopy isEqualToString:uUID];

  if (v6)
  {
    v7 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor recordingForUUID:dCopy];
    enhanced = [v7 enhanced];
    isSkipSilenceEnabled = [v7 isSkipSilenceEnabled];
    [v7 playRate];
    v11 = v10;
    [v7 layerMix];
    v13 = v12;
    currentComposition = [(RCMainControllerHelper *)self currentComposition];
    hasMultipleTracks = [currentComposition hasMultipleTracks];

    currentComposition2 = [(RCMainControllerHelper *)self currentComposition];
    hasSpatialAudio = [currentComposition2 hasSpatialAudio];

    isSpeechIsolatorEnabled = [v7 isSpeechIsolatorEnabled];
    [v7 speechIsolatorValue];
    v20 = v19;
    v21 = [RCPlaybackSettings alloc];
    LODWORD(v22) = v11;
    LODWORD(v23) = v13;
    LODWORD(v24) = v20;
    v25 = [(RCPlaybackSettings *)v21 initWithUUID:dCopy enhanced:enhanced silenceRemoved:isSkipSilenceEnabled playbackSpeed:hasMultipleTracks layerMix:hasSpatialAudio hasMultipleTracks:isSpeechIsolatorEnabled isSpatialRecording:v22 speechIsolatorEnabled:v23 speechIsolatorValue:v24];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)isSilenceRemovedForUUID:(id)d
{
  dCopy = d;
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  recordingID = [audioPlayer recordingID];

  if ([dCopy isEqualToString:recordingID])
  {
    audioPlayer2 = [(RCMainControllerHelper *)self audioPlayer];
    silenceRemoverEnabled = [audioPlayer2 silenceRemoverEnabled];
  }

  else
  {
    v9 = OSLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BB504();
    }

    silenceRemoverEnabled = 0;
  }

  return silenceRemoverEnabled;
}

- (double)playbackSpeedForUUID:(id)d
{
  dCopy = d;
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  recordingID = [audioPlayer recordingID];

  if ([dCopy isEqualToString:recordingID])
  {
    audioPlayer2 = [(RCMainControllerHelper *)self audioPlayer];
    [audioPlayer2 rate];
    v9 = v8;
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BB578();
    }

    v9 = 1.0;
  }

  return v9;
}

- (double)layerMixForUUID:(id)d
{
  dCopy = d;
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  recordingID = [audioPlayer recordingID];

  if ([dCopy isEqualToString:recordingID])
  {
    audioPlayer2 = [(RCMainControllerHelper *)self audioPlayer];
    [audioPlayer2 layerMix];
    v9 = v8;
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BB5EC();
    }

    v9 = 0.0;
  }

  return v9;
}

- (BOOL)isSpeechIsolatorEnabledForUUID:(id)d
{
  dCopy = d;
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  recordingID = [audioPlayer recordingID];

  if ([dCopy isEqualToString:recordingID])
  {
    audioPlayer2 = [(RCMainControllerHelper *)self audioPlayer];
    speechIsolatorEnabled = [audioPlayer2 speechIsolatorEnabled];
  }

  else
  {
    v9 = OSLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BB660();
    }

    speechIsolatorEnabled = 0;
  }

  return speechIsolatorEnabled;
}

- (float)speechIsolatorForUUID:(id)d
{
  dCopy = d;
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  recordingID = [audioPlayer recordingID];

  if ([dCopy isEqualToString:recordingID])
  {
    audioPlayer2 = [(RCMainControllerHelper *)self audioPlayer];
    [audioPlayer2 speechIsolatorValue];
    v9 = v8;
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BB6D4();
    }

    v9 = kDefaultSpeechIsolatorValue;
  }

  return v9;
}

- (BOOL)currentSelectionHasSpatialAudio
{
  currentComposition = [(RCMainControllerHelper *)self currentComposition];
  hasSpatialAudio = [currentComposition hasSpatialAudio];

  return hasSpatialAudio;
}

- (void)setRemoveSilence:(BOOL)silence forUUID:(id)d
{
  silenceCopy = silence;
  dCopy = d;
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  recordingID = [audioPlayer recordingID];

  if ([dCopy isEqualToString:recordingID])
  {
    audioPlayer2 = [(RCMainControllerHelper *)self audioPlayer];
    [audioPlayer2 setSilenceRemoverEnabled:silenceCopy];

    [(RCMainControllerHelper *)self _reconcileAudioStateWithApplicationState];
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BB748();
    }
  }
}

- (void)setPlaybackSpeed:(double)speed forUUID:(id)d
{
  dCopy = d;
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  recordingID = [audioPlayer recordingID];

  if ([dCopy isEqualToString:recordingID])
  {
    audioPlayer2 = [(RCMainControllerHelper *)self audioPlayer];
    speedCopy = speed;
    *&v11 = speedCopy;
    [audioPlayer2 setRate:v11];

    [(RCMainControllerHelper *)self _reconcileAudioStateWithApplicationState];
  }

  else
  {
    v12 = OSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BB7BC();
    }
  }
}

- (void)setLayerMix:(double)mix forUUID:(id)d
{
  dCopy = d;
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  recordingID = [audioPlayer recordingID];

  if ([dCopy isEqualToString:recordingID])
  {
    +[RCApplicationModel sharedApplicationModel];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B8720;
    v14 = v13[3] = &unk_10028C4F8;
    v15 = dCopy;
    mixCopy = mix;
    v9 = v14;
    [v9 performBlockAndWait:v13];
    audioPlayer2 = [(RCMainControllerHelper *)self audioPlayer];
    mixCopy2 = mix;
    *&v12 = mixCopy2;
    [audioPlayer2 setLayerMix:v12];

    [(RCMainControllerHelper *)self _reconcileAudioStateWithApplicationState];
  }

  else
  {
    v9 = OSLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BB830();
    }
  }
}

- (void)setLooping:(BOOL)looping forUUID:(id)d
{
  loopingCopy = looping;
  dCopy = d;
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  recordingID = [audioPlayer recordingID];
  if ([dCopy isEqualToString:recordingID])
  {
    [audioPlayer setLooping:loopingCopy];
  }

  else
  {
    v9 = OSLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BB8A4();
    }
  }
}

- (void)setSpeechIsolatorEnabled:(BOOL)enabled forUUID:(id)d
{
  enabledCopy = enabled;
  dCopy = d;
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  recordingID = [audioPlayer recordingID];

  if ([dCopy isEqualToString:recordingID])
  {
    audioPlayer2 = [(RCMainControllerHelper *)self audioPlayer];
    [audioPlayer2 setSpeechIsolatorEnabled:enabledCopy];

    [(RCMainControllerHelper *)self _reconcileAudioStateWithApplicationState];
    if (!enabledCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = OSLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1001BB918();
  }

  if (enabledCopy)
  {
LABEL_7:
    v11 = +[RecorderAppDelegate sharedAppDelegate];
    dependencyContainer = [v11 dependencyContainer];
    analyticsManager = [dependencyContainer analyticsManager];
    [analyticsManager userEnabledStudioVoice];
  }

LABEL_8:
}

- (void)setSpeechIsolatorValue:(float)value forUUID:(id)d
{
  dCopy = d;
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  recordingID = [audioPlayer recordingID];

  if ([dCopy isEqualToString:recordingID])
  {
    audioPlayer2 = [(RCMainControllerHelper *)self audioPlayer];
    *&v10 = value;
    [audioPlayer2 setSpeechIsolatorValue:v10];

    [(RCMainControllerHelper *)self _reconcileAudioStateWithApplicationState];
    v11 = +[RecorderAppDelegate sharedAppDelegate];
    dependencyContainer = [v11 dependencyContainer];
    analyticsManager = [dependencyContainer analyticsManager];
    [analyticsManager userEditedStudioVoiceSlider];
  }

  else
  {
    v11 = OSLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BB98C();
    }
  }
}

- (void)shareRecordingsWithUUIDs:(id)ds inViewController:(id)controller source:(id)source isShareButton:(BOOL)button completionWithItemsHandler:(id)handler
{
  controllerCopy = controller;
  sourceCopy = source;
  handlerCopy = handler;
  v13 = self->_recordingsModelInteractor;
  v14 = [(RCRecordingsModelInteractor *)v13 recordingsForUUIDs:ds];
  v15 = +[NSMutableArray array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      v20 = 0;
      do
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [RCComposition compositionLoadedForSavedRecording:*(*(&v31 + 1) + 8 * v20)];
        [v15 addObject:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v18);
  }

  v22 = +[RCRecorderStyleProvider sharedStyleProvider];
  shouldShareUsingRCShareMemoViewController = [v22 shouldShareUsingRCShareMemoViewController];

  if (shouldShareUsingRCShareMemoViewController)
  {
    v24 = handlerCopy;
    LOBYTE(v28) = button;
    [RCShareMemoViewController presentInViewController:controllerCopy source:sourceCopy compositions:v15 ignoringInteraction:1 shouldContinuePreparingBlock:0 preparedToPresentBlock:0 isShareButton:v28 completionWithItemsHandler:handlerCopy];
  }

  else
  {
    v25 = [VMActivityItemsConfigurationHelper activityItemsConfigurationForCompositions:v15];
    v26 = [[UIActivityViewController alloc] initWithActivityItemsConfiguration:v25];
    v24 = handlerCopy;
    [v26 setCompletionWithItemsHandler:handlerCopy];
    [controllerCopy setModalPresentationStyle:7];
    if (sourceCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        popoverPresentationController = [v26 popoverPresentationController];
        [popoverPresentationController setBarButtonItem:sourceCopy];
      }
    }

    [controllerCopy presentViewController:v26 animated:1 completion:0];
  }
}

- (id)eraseAndConfirmWithUUIDs:(id)ds source:(id)source collectionViewController:(id)controller
{
  dsCopy = ds;
  controllerCopy = controller;
  sourceCopy = source;
  v11 = [dsCopy count];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"ERASE_RECORDINGS" value:&stru_100295BB8 table:0];
  v14 = [NSString localizedStringWithFormat:v13, v11];

  v15 = v14;
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"DELETE_FOREVER" value:&stru_100295BB8 table:0];

  v18 = +[RCRecorderStyleProvider sharedStyleProvider];
  presentsRecoverConfirmationAsAlert = [v18 presentsRecoverConfirmationAsAlert];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000B8F30;
  v25[3] = &unk_10028C520;
  v26 = controllerCopy;
  selfCopy = self;
  v28 = dsCopy;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000B8F74;
  v24[3] = &unk_10028B378;
  v24[4] = self;
  v20 = dsCopy;
  v21 = controllerCopy;
  v22 = [(RCMainControllerHelper *)self _alertControllerWithTitle:v15 message:0 isDestructive:1 preferredStyle:presentsRecoverConfirmationAsAlert source:sourceCopy handler:v25 actionTitle:v17 cancelHandler:v24];

  return v22;
}

- (id)eraseAllRecordingsAndConfirmWithSource:(id)source
{
  sourceCopy = source;
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  presentsRecoverConfirmationAsAlert = [v5 presentsRecoverConfirmationAsAlert];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"ERASE_ALL_MEMOS_CONFIRMATION_ALERT_TITLE" value:&stru_100295BB8 table:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B90EC;
  v13[3] = &unk_10028B378;
  v13[4] = self;
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"DELETE_FOREVER" value:&stru_100295BB8 table:0];
  v11 = [(RCMainControllerHelper *)self _alertControllerWithTitle:v8 message:0 isDestructive:1 preferredStyle:presentsRecoverConfirmationAsAlert source:sourceCopy handler:v13 actionTitle:v10 cancelHandler:0];

  return v11;
}

- (void)_eraseRecordingsWithUUIDs:(id)ds
{
  dsCopy = ds;
  [(RCMainControllerHelper *)self _stopForUUIDs:dsCopy];
  [(RCMainControllerHelper *)self _removeRecordingsObservationsForUUIDs:dsCopy];
  [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor eraseRecordingsWithUUIDs:dsCopy];
  delegate = [(RCMainControllerHelper *)self delegate];
  [delegate userDidEraseRecordingsWithUUIDs:dsCopy];

  delegate2 = [(RCMainControllerHelper *)self delegate];
  undoManager = [delegate2 undoManager];
  [undoManager removeAllActionsWithTarget:self];
}

- (id)deleteWithUUIDs:(id)ds source:(id)source showInfo:(BOOL)info
{
  infoCopy = info;
  dsCopy = ds;
  [(RCMainControllerHelper *)self _deleteRecordingsWithUUIDs:dsCopy isRecover:0];
  v8 = +[NSUserDefaults sharedSettingsUserDefaults];
  v9 = v8;
  v10 = 0;
  if (infoCopy)
  {
    if (v8)
    {
      rc_recentlyDeletedWindow = [v8 rc_recentlyDeletedWindow];
      rc_deletionIsImmediate = [v9 rc_deletionIsImmediate];
      v13 = +[NSUserDefaults standardUserDefaults];
      v14 = [v13 BOOLForKey:@"kRCDeleteInformationAlertAlreadyShownKey"];

      v10 = 0;
      if ((rc_deletionIsImmediate & 1) == 0 && (v14 & 1) == 0)
      {
        v15 = [dsCopy count];
        v16 = +[NSBundle mainBundle];
        v17 = v16;
        if (v15 == 1)
        {
          v18 = @"DELETE_MEMO_INFORMATION_ALERT_ONE";
        }

        else
        {
          v18 = @"DELETE_MEMO_INFORMATION_ALERT_MULTIPLE";
        }

        v19 = [v16 localizedStringForKey:v18 value:&stru_100295BB8 table:0];

        v20 = 0;
        if (rc_recentlyDeletedWindow > 6)
        {
          if (rc_recentlyDeletedWindow == 7)
          {
            v21 = @"DELETE_MEMO_INFORMATION_ALERT_MESSAGE_SEVEN_DAYS";
            goto LABEL_17;
          }

          if (rc_recentlyDeletedWindow == 30)
          {
            v21 = @"DELETE_MEMO_INFORMATION_ALERT_MESSAGE_THIRTY_DAYS";
            goto LABEL_17;
          }
        }

        else
        {
          if (rc_recentlyDeletedWindow == -1)
          {
            v21 = @"DELETE_MEMO_INFORMATION_ALERT_MESSAGE_FOREVER";
            goto LABEL_17;
          }

          if (rc_recentlyDeletedWindow == 1)
          {
            v21 = @"DELETE_MEMO_INFORMATION_ALERT_MESSAGE_ONE_DAY";
LABEL_17:
            v22 = +[NSBundle mainBundle];
            v20 = [v22 localizedStringForKey:v21 value:&stru_100295BB8 table:0];
          }
        }

        v10 = [UIAlertController alertControllerWithTitle:v19 message:v20 preferredStyle:1];
        v23 = +[NSBundle mainBundle];
        v24 = [v23 localizedStringForKey:@"OK" value:&stru_100295BB8 table:0];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000B9458;
        v27[3] = &unk_10028B378;
        v28 = @"kRCDeleteInformationAlertAlreadyShownKey";
        v25 = [UIAlertAction actionWithTitle:v24 style:0 handler:v27];
        [v10 addAction:v25];
      }
    }
  }

  return v10;
}

- (void)performClearAllRecentlyDeleted
{
  [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor eraseAllDeleted];
  delegate = [(RCMainControllerHelper *)self delegate];
  undoManager = [delegate undoManager];

  [undoManager removeAllActionsWithTarget:self];
}

- (id)restoreRecordingsWithUUIDs:(id)ds isRecover:(BOOL)recover source:(id)source force:(BOOL)force collectionViewController:(id)controller
{
  if (force)
  {
    [(RCMainControllerHelper *)self _restoreRecordingsWithUUIDs:ds isRecover:recover, source, force, controller];
    v7 = 0;
  }

  else
  {
    v7 = [(RCMainControllerHelper *)self _restoreRecordingsWithUUIDs:ds isRecover:recover source:source collectionViewController:controller];
  }

  return v7;
}

- (void)deleteRecordingCanceled
{
  delegate = [(RCMainControllerHelper *)self delegate];
  [delegate userDidCancelDeleteRecording];
}

- (void)_deleteRecordingsWithUUIDs:(id)ds isRecover:(BOOL)recover
{
  recoverCopy = recover;
  dsCopy = ds;
  v7 = +[NSUserDefaults sharedSettingsUserDefaults];
  v8 = v7;
  if (v7 && [v7 rc_deletionIsImmediate])
  {
    [(RCMainControllerHelper *)self _stopForUUIDs:dsCopy];
    [(RCMainControllerHelper *)self _removeRecordingsObservationsForUUIDs:dsCopy];
    [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor eraseRecordingsWithUUIDs:dsCopy];
    delegate = [(RCMainControllerHelper *)self delegate];
    [delegate userDidEraseRecordingsWithUUIDs:dsCopy];
  }

  else
  {
    [(RCMainControllerHelper *)self _stopForUUIDs:dsCopy];
    [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor deleteRecordingsWithUUIDs:dsCopy];
    delegate2 = [(RCMainControllerHelper *)self delegate];
    [delegate2 userDidDeleteRecordingsWithUUIDs:dsCopy];

    delegate3 = [(RCMainControllerHelper *)self delegate];
    undoManager = [delegate3 undoManager];

    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1000B9770;
    v20 = &unk_10028C548;
    v21 = dsCopy;
    v22 = recoverCopy;
    [undoManager registerUndoWithTarget:self handler:&v17];
    v13 = [NSBundle mainBundle:v17];
    v14 = v13;
    if (recoverCopy)
    {
      v15 = @"RECOVER_RECORDING_ACTION";
    }

    else
    {
      v15 = @"DELETE_RECORDING_ACTION";
    }

    v16 = [v13 localizedStringForKey:v15 value:&stru_100295BB8 table:0];

    [undoManager setActionName:v16];
  }
}

- (void)_restoreRecordingsWithUUIDs:(id)ds isRecover:(BOOL)recover
{
  recoverCopy = recover;
  v6 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor restoreRecordingsWithUUIDs:ds];
  delegate = [(RCMainControllerHelper *)self delegate];
  [delegate userDidRecoverRecordingsWithUUIDs:v6];

  if ([v6 count])
  {
    delegate2 = [(RCMainControllerHelper *)self delegate];
    undoManager = [delegate2 undoManager];

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000B9904;
    v17 = &unk_10028C548;
    v18 = v6;
    v19 = recoverCopy;
    [undoManager registerUndoWithTarget:self handler:&v14];
    v10 = [NSBundle mainBundle:v14];
    v11 = v10;
    if (recoverCopy)
    {
      v12 = @"RECOVER_RECORDING_ACTION";
    }

    else
    {
      v12 = @"DELETE_RECORDING_ACTION";
    }

    v13 = [v10 localizedStringForKey:v12 value:&stru_100295BB8 table:0];

    [undoManager setActionName:v13];
  }
}

- (id)_restoreRecordingsWithUUIDs:(id)ds isRecover:(BOOL)recover source:(id)source collectionViewController:(id)controller
{
  recoverCopy = recover;
  dsCopy = ds;
  controllerCopy = controller;
  sourceCopy = source;
  v13 = [dsCopy count];
  v14 = +[NSBundle mainBundle];
  v15 = v14;
  if (recoverCopy)
  {
    v16 = @"Recover %lu Recordings";
  }

  else
  {
    v16 = @"Permanently Delete %lu Recordings";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_100295BB8 table:0];
  v18 = [NSString localizedStringWithFormat:v17, v13];

  v19 = +[RCRecorderStyleProvider sharedStyleProvider];
  presentsRecoverConfirmationAsAlert = [v19 presentsRecoverConfirmationAsAlert];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000B9ADC;
  v25[3] = &unk_10028C570;
  v26 = controllerCopy;
  selfCopy = self;
  v28 = dsCopy;
  v29 = recoverCopy;
  v21 = dsCopy;
  v22 = controllerCopy;
  v23 = [(RCMainControllerHelper *)self _alertControllerWithTitle:0 message:0 isDestructive:!recoverCopy preferredStyle:presentsRecoverConfirmationAsAlert source:sourceCopy handler:v25 actionTitle:v18 cancelHandler:0];

  return v23;
}

- (id)deleteFolder:(id)folder source:(id)source completionBlock:(id)block
{
  sourceCopy = source;
  blockCopy = block;
  folderCopy = folder;
  v11 = +[RCApplicationModel sharedApplicationModel];
  v12 = [v11 playableRecordingsForFolder:folderCopy];
  v13 = [v12 na_map:&stru_10028C5B0];

  v14 = [_TtC10VoiceMemos23RCUserFolderRestoreInfo alloc];
  name = [folderCopy name];
  v16 = -[RCUserFolderRestoreInfo initWithName:rank:recordingUUIDs:](v14, "initWithName:rank:recordingUUIDs:", name, [folderCopy rank], v13);

  if ([v13 count])
  {
    v17 = [(RCMainControllerHelper *)self _presentFolderDeletionConfirmationForFolder:folderCopy source:sourceCopy completionBlock:blockCopy];
  }

  else
  {
    [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor deleteUserFolder:folderCopy];

    if (blockCopy)
    {
      blockCopy[2](blockCopy, 1);
    }

    v17 = 0;
  }

  [(RCMainControllerHelper *)self _registerUndoDeleteFolder:v16];

  return v17;
}

- (void)_registerUndoDeleteFolder:(id)folder
{
  folderCopy = folder;
  v5 = +[NSUserDefaults sharedSettingsUserDefaults];
  v6 = v5;
  if (!v5 || ([v5 rc_deletionIsImmediate] & 1) == 0)
  {
    undoManager = [(RCMainControllerHelper *)self undoManager];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000B9DD8;
    v14 = &unk_10028C1D8;
    v15 = folderCopy;
    selfCopy = self;
    [undoManager registerUndoWithTarget:self handler:&v11];

    v8 = [(RCMainControllerHelper *)self undoManager:v11];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"DELETE_FOLDER_ACTION" value:&stru_100295BB8 table:0];
    [v8 setActionName:v10];
  }
}

- (void)_deleteFolderWithoutAlert:(id)alert
{
  alertCopy = alert;
  v5 = +[RCApplicationModel sharedApplicationModel];
  v6 = [v5 playableRecordingsForFolder:alertCopy];
  v10 = [v6 na_map:&stru_10028C5D0];

  v7 = [_TtC10VoiceMemos23RCUserFolderRestoreInfo alloc];
  name = [alertCopy name];
  v9 = -[RCUserFolderRestoreInfo initWithName:rank:recordingUUIDs:](v7, "initWithName:rank:recordingUUIDs:", name, [alertCopy rank], v10);

  [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor deleteUserFolder:alertCopy];
  [(RCMainControllerHelper *)self _registerUndoDeleteFolder:v9];
}

- (void)_restoreFolder:(id)folder
{
  v4 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor restoreFolder:folder];
  if (v4)
  {
    undoManager = [(RCMainControllerHelper *)self undoManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000BA094;
    v9[3] = &unk_10028C488;
    v10 = v4;
    [undoManager registerUndoWithTarget:self handler:v9];

    undoManager2 = [(RCMainControllerHelper *)self undoManager];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"DELETE_FOLDER_ACTION" value:&stru_100295BB8 table:0];
    [undoManager2 setActionName:v8];
  }
}

- (id)_presentFolderDeletionConfirmationForFolder:(id)folder source:(id)source completionBlock:(id)block
{
  folderCopy = folder;
  sourceCopy = source;
  blockCopy = block;
  v11 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor playableCountForFolder:folderCopy];
  if (v11)
  {
    v12 = v11;
    v13 = +[NSUserDefaults sharedSettingsUserDefaults];
    v25 = v13;
    v26 = sourceCopy;
    if (v13 && ([v13 rc_deletionIsImmediate] & 1) != 0)
    {
      v14 = @"ERASE_FOLDER_IMMEDIATE";
      v15 = @"DELETE_FOLDER_TITLE_PERMANENT";
    }

    else
    {
      v14 = @"ERASE_FOLDER";
      v15 = @"DELETE_FOLDER_TITLE";
    }

    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:v15 value:&stru_100295BB8 table:0];

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:v14 value:&stru_100295BB8 table:0];
    v20 = [NSString localizedStringWithFormat:v19, v12];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000BA344;
    v29[3] = &unk_10028C5F8;
    v29[4] = self;
    v30 = folderCopy;
    v31 = blockCopy;
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"OK" value:&stru_100295BB8 table:0];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000BA3A0;
    v27[3] = &unk_10028B7B0;
    v28 = v31;
    sourceCopy = v26;
    v23 = [(RCMainControllerHelper *)self _alertControllerWithTitle:v17 message:v20 isDestructive:1 preferredStyle:1 source:v26 handler:v29 actionTitle:v22 cancelHandler:v27];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)_addCommandTarget:(id)target withHandler:(id)handler
{
  targetCopy = target;
  v6 = [targetCopy addTargetWithHandler:handler];
  if (v6)
  {
    [(NSMapTable *)self->_commandTargets setObject:v6 forKey:targetCopy];
  }
}

- (void)_updateRemoteControlState:(int64_t)state
{
  if (self->_remoteControlState != state)
  {
    self->_remoteControlState = state;
    [(RCMainControllerHelper *)self _teardownRemoteControlCommands];
    if (state)
    {
      v5 = +[NSMapTable weakToStrongObjectsMapTable];
      commandTargets = self->_commandTargets;
      self->_commandTargets = v5;

      if (state == 2)
      {

        [(RCMainControllerHelper *)self __setupRemoteControlCommandsForRecordingForeground];
      }

      else if (state == 1)
      {

        [(RCMainControllerHelper *)self __setupRemoteControlCommandsForPlayback];
      }
    }
  }
}

- (void)_updateNowPlayingInfo
{
  [(NSTimer *)self->_nowPlayingUpdateTimer invalidate];
  v3 = +[MPNowPlayingInfoCenter defaultCenter];
  currentRecordingDisplayModel = [(RCMainControllerHelper *)self currentRecordingDisplayModel];
  title = [currentRecordingDisplayModel title];
  v6 = title;
  if (!currentRecordingDisplayModel || !self->_remoteControlState || !title)
  {
    [v3 setNowPlayingInfo:0];
    [v3 setPlaybackState:0];
    goto LABEL_19;
  }

  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  timeController = [(RCMainControllerHelper *)self timeController];
  remoteControlState = self->_remoteControlState;
  v10 = 1.0;
  v11 = 0.0;
  v12 = 3.40282347e38;
  if (remoteControlState == 2)
  {
    v15 = 1;
  }

  else
  {
    if (remoteControlState != 1)
    {
      goto LABEL_15;
    }

    [currentRecordingDisplayModel duration];
    v12 = v13;
    if ([audioPlayer playing])
    {
      [audioPlayer playerTime];
    }

    else
    {
      [timeController currentTime];
    }

    v11 = v14;
    [audioPlayer rate];
    v10 = v16;
    if ([audioPlayer playing])
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

  [v3 setPlaybackState:v15];
LABEL_15:
  v22[0] = v6;
  v21[0] = MPMediaItemPropertyTitle;
  v21[1] = MPMediaItemPropertyPlaybackDuration;
  v17 = [NSNumber numberWithDouble:v12];
  v22[1] = v17;
  v22[2] = &off_10029AB20;
  v21[2] = MPNowPlayingInfoPropertyMediaType;
  v21[3] = MPNowPlayingInfoPropertyElapsedPlaybackTime;
  v18 = [NSNumber numberWithDouble:v11];
  v22[3] = v18;
  v21[4] = MPNowPlayingInfoPropertyPlaybackRate;
  v19 = [NSNumber numberWithDouble:v10];
  v22[4] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:5];
  [v3 setNowPlayingInfo:v20];

  if ([audioPlayer playing] && objc_msgSend(audioPlayer, "silenceRemoverEnabled"))
  {
    [(RCMainControllerHelper *)self _startNowPlayingUpdateTimerWithPlaybackTime:v11 playbackRate:v10];
  }

LABEL_19:
}

- (void)_startNowPlayingUpdateTimerWithPlaybackTime:(double)time playbackRate:(double)rate
{
  [(NSTimer *)self->_nowPlayingUpdateTimer invalidate];
  v7 = +[NSDate date];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BA8AC;
  v11[3] = &unk_10028C620;
  objc_copyWeak(v13, &location);
  v8 = v7;
  v12 = v8;
  v13[1] = *&time;
  v13[2] = *&rate;
  v13[3] = 0x3FF0000000000000;
  v9 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v11 block:1.0];
  nowPlayingUpdateTimer = self->_nowPlayingUpdateTimer;
  self->_nowPlayingUpdateTimer = v9;

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)__setupRemoteControlCommandsForPlayback
{
  v3 = +[MPRemoteCommandCenter sharedCommandCenter];
  objc_initWeak(location, self);
  pauseCommand = [v3 pauseCommand];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000BAE90;
  v28[3] = &unk_10028C648;
  objc_copyWeak(&v29, location);
  [(RCMainControllerHelper *)self _addCommandTarget:pauseCommand withHandler:v28];

  playCommand = [v3 playCommand];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000BAF04;
  v26[3] = &unk_10028C648;
  objc_copyWeak(&v27, location);
  [(RCMainControllerHelper *)self _addCommandTarget:playCommand withHandler:v26];

  togglePlayPauseCommand = [v3 togglePlayPauseCommand];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000BAF8C;
  v24[3] = &unk_10028C648;
  objc_copyWeak(&v25, location);
  [(RCMainControllerHelper *)self _addCommandTarget:togglePlayPauseCommand withHandler:v24];

  skipBackwardCommand = [v3 skipBackwardCommand];
  [skipBackwardCommand setPreferredIntervals:&off_10029AC38];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000BB000;
  v22[3] = &unk_10028C648;
  objc_copyWeak(&v23, location);
  [(RCMainControllerHelper *)self _addCommandTarget:skipBackwardCommand withHandler:v22];
  skipForwardCommand = [v3 skipForwardCommand];
  [skipForwardCommand setPreferredIntervals:&off_10029AC50];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000BB090;
  v20[3] = &unk_10028C648;
  objc_copyWeak(&v21, location);
  [(RCMainControllerHelper *)self _addCommandTarget:skipForwardCommand withHandler:v20];
  seekBackwardCommand = [v3 seekBackwardCommand];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000BB11C;
  v17[3] = &unk_10028C670;
  objc_copyWeak(&v19, location);
  v18 = &off_10029AC38;
  [(RCMainControllerHelper *)self _addCommandTarget:seekBackwardCommand withHandler:v17];

  seekForwardCommand = [v3 seekForwardCommand];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000BB1B0;
  v14[3] = &unk_10028C670;
  objc_copyWeak(&v16, location);
  v15 = &off_10029AC38;
  [(RCMainControllerHelper *)self _addCommandTarget:seekForwardCommand withHandler:v14];

  changePlaybackPositionCommand = [v3 changePlaybackPositionCommand];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000BB240;
  v12[3] = &unk_10028C648;
  objc_copyWeak(&v13, location);
  [(RCMainControllerHelper *)self _addCommandTarget:changePlaybackPositionCommand withHandler:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(location);
}

- (void)__setupRemoteControlCommandsForRecordingForeground
{
  objc_initWeak(&location, self);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000BB3F4;
  v10 = &unk_10028C648;
  objc_copyWeak(&v11, &location);
  v3 = objc_retainBlock(&v7);
  v4 = [MPRemoteCommandCenter sharedCommandCenter:v7];
  pauseCommand = [v4 pauseCommand];
  [(RCMainControllerHelper *)self _addCommandTarget:pauseCommand withHandler:v3];

  togglePlayPauseCommand = [v4 togglePlayPauseCommand];
  [(RCMainControllerHelper *)self _addCommandTarget:togglePlayPauseCommand withHandler:v3];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_teardownRemoteControlCommands
{
  commandTargets = self->_commandTargets;
  if (commandTargets)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = commandTargets;
    v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = [(NSMapTable *)self->_commandTargets objectForKey:v9, v12];
          [v9 removeTarget:v10];
        }

        v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v11 = self->_commandTargets;
    self->_commandTargets = 0;
  }
}

- (void)_sceneDidActivateNotification:(id)notification
{
  if (self->_hasBecomeActive)
  {
    [(RCMainControllerHelper *)self _reconcileAudioStateWithApplicationState];
  }

  self->_hasBecomeActive = 1;
}

- (void)_sceneWillDeactivateNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB640;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)displayLinkDidUpdate:(id)update withTimeController:(id)controller
{
  v5 = [(RCMainControllerHelper *)self currentUserActivity:update];
  if ([v5 activityType] || objc_msgSend(v5, "subActivityType") == 3)
  {
    audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
    v7 = audioRecorder;
    if (audioRecorder && [audioRecorder recording])
    {
      v19 = 0.0;
      v20 = 0.0;
      if (![v7 monitorRecordingTime:&v20 duration:&v19])
      {
LABEL_20:

        goto LABEL_21;
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      allObjects = [(NSHashTable *)self->_timeObservers allObjects];
      v9 = [allObjects countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(allObjects);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v13 timeController:self didChangeCurrentTime:v20 didChangeDuration:v19];
            }
          }

          v10 = [allObjects countByEnumeratingWithState:&v15 objects:v21 count:16];
        }

        while (v10);
      }
    }

    else
    {
      audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
      allObjects = audioPlayer;
      if (audioPlayer && [audioPlayer playing])
      {
        [allObjects playerTime];
        [(RCMainControllerHelper *)self setCurrentTime:?];
      }
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (BOOL)_transitionToActivityType:(int64_t)type toSubType:(int64_t)subType withDisplayModel:(id)model waveformDataSource:(id)source composition:(id)composition
{
  modelCopy = model;
  sourceCopy = source;
  compositionCopy = composition;
  if ([(RCMainControllerHelper *)self _requiresUUIDForActivityType:type])
  {
    uUID = [modelCopy UUID];

    if (!uUID)
    {
      goto LABEL_8;
    }
  }

  currentUserActivity = [(RCMainControllerHelper *)self currentUserActivity];
  activityType = [currentUserActivity activityType];

  currentUserActivity2 = [(RCMainControllerHelper *)self currentUserActivity];
  subActivityType = [currentUserActivity2 subActivityType];

  if (activityType == 3)
  {
    currentUserActivity3 = [(RCMainControllerHelper *)self currentUserActivity];
    subActivityType2 = [currentUserActivity3 subActivityType];

    if (subActivityType2 == 1)
    {
      [(RCUndoTarget *)self->_trimModeUndoTarget setShouldEnableSave:1];
    }
  }

  currentUserActivity4 = [(RCMainControllerHelper *)self currentUserActivity];
  v23 = [currentUserActivity4 transitionToActivityType:type subType:subType withDisplayModel:modelCopy];

  if (v23)
  {
    v24 = [[RCUserActivityTypeTransitionInfo alloc] initWithToActivityType:type toSubType:subType fromActivityType:activityType fromSubType:subActivityType displayModel:modelCopy waveformDataSource:sourceCopy composition:compositionCopy];
    delegate = [(RCMainControllerHelper *)self delegate];
    [delegate didTransitionWithTransitionInfo:v24];

    v26 = 1;
  }

  else
  {
LABEL_8:
    v26 = 0;
  }

  return v26;
}

- (BOOL)_performRecordingEndTransitionWithUUID:(id)d
{
  dCopy = d;
  currentUserActivity = [(RCMainControllerHelper *)self currentUserActivity];
  requiresDismissalAtEndOfCapture = [currentUserActivity requiresDismissalAtEndOfCapture];

  delegate = [(RCMainControllerHelper *)self delegate];
  isQuickRecordingWorkflowDismissal = [delegate isQuickRecordingWorkflowDismissal];

  v9 = [RCRecordingDisplayModel recordingDisplayModelForUUID:dCopy];

  if (v9)
  {
    if ((requiresDismissalAtEndOfCapture | isQuickRecordingWorkflowDismissal))
    {
      v10 = 0;
    }

    else
    {
      v10 = 3;
    }

    currentComposition = [(RCMainControllerHelper *)self currentComposition];
    v12 = [(RCMainControllerHelper *)self _transitionToActivityType:v10 toSubType:0 withDisplayModel:v9 waveformDataSource:0 composition:currentComposition];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_transitionToIdleForItemWithUUID:(id)d
{
  v4 = [RCRecordingDisplayModel recordingDisplayModelForUUID:d];
  if (v4)
  {
    if (self->_scrubState == 1)
    {
      v5 = 5;
    }

    else
    {
      currentUserActivity = [(RCMainControllerHelper *)self currentUserActivity];
      isTrim = [currentUserActivity isTrim];

      v5 = isTrim;
    }

    currentComposition = [(RCMainControllerHelper *)self currentComposition];
    v6 = [(RCMainControllerHelper *)self _transitionToActivityType:0 toSubType:v5 withDisplayModel:v4 waveformDataSource:0 composition:currentComposition];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_transitionToPlayingBackForItemWithUUID:(id)d
{
  v4 = [RCRecordingDisplayModel recordingDisplayModelForUUID:d];
  if (v4)
  {
    currentComposition = [(RCMainControllerHelper *)self currentComposition];
    v6 = [(RCMainControllerHelper *)self _transitionToActivityType:2 toSubType:0 withDisplayModel:v4 waveformDataSource:0 composition:currentComposition];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)undoManager
{
  delegate = [(RCMainControllerHelper *)self delegate];
  undoManager = [delegate undoManager];

  return undoManager;
}

- (void)_undoCaptureFragment
{
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  if ([audioRecorder undoEditing])
  {
    recordingID = [audioRecorder recordingID];
    [(RCMainControllerHelper *)self _refreshAfterEditingOperation:recordingID];

    v5 = +[NSMutableDictionary dictionary];
    undoManager = [(RCMainControllerHelper *)self undoManager];
    editModeUndoTarget = self->_editModeUndoTarget;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000BBDC0;
    v16 = &unk_10028C1D8;
    selfCopy = self;
    v18 = v5;
    v8 = v5;
    [undoManager registerUndoWithTarget:editModeUndoTarget handler:&v13];

    v9 = [(RCMainControllerHelper *)self undoManager:v13];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"TITLE_FOR_OVERDUB_REDO" value:&stru_100295BB8 table:0];
    [v9 setActionName:v11];

    delegate = [(RCMainControllerHelper *)self delegate];
    [delegate enableUndoFirstResponder];
  }
}

- (void)_undoTrim:(int64_t)trim
{
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  if ([audioRecorder undoEditing])
  {
    [(RCMainControllerHelper *)self _adjustCurrentTrimOperationUndoCount:-1];
    recordingID = [audioRecorder recordingID];
    [(RCMainControllerHelper *)self _refreshAfterEditingOperation:recordingID];

    delegate = [(RCMainControllerHelper *)self delegate];
    undoManager = [delegate undoManager];

    trimModeUndoTarget = self->_trimModeUndoTarget;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000BBF28;
    v11[3] = &unk_10028C698;
    v11[4] = self;
    v11[5] = trim;
    [undoManager registerUndoWithTarget:trimModeUndoTarget handler:v11];
    v10 = [(RCMainControllerHelper *)self _undoActionNameForTrimMode:trim isUndo:0];
    [undoManager setActionName:v10];
  }

  else
  {
    undoManager = OSLogForCategory();
    if (os_log_type_enabled(undoManager, OS_LOG_TYPE_ERROR))
    {
      sub_1001BBA00(self);
    }
  }
}

- (void)_redoTrim:(int64_t)trim
{
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  if ([audioRecorder redoEditing])
  {
    [(RCMainControllerHelper *)self _adjustCurrentTrimOperationUndoCount:1];
    recordingID = [audioRecorder recordingID];
    [(RCMainControllerHelper *)self _refreshAfterEditingOperation:recordingID];

    delegate = [(RCMainControllerHelper *)self delegate];
    undoManager = [delegate undoManager];

    trimModeUndoTarget = self->_trimModeUndoTarget;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000BC090;
    v11[3] = &unk_10028C698;
    v11[4] = self;
    v11[5] = trim;
    [undoManager registerUndoWithTarget:trimModeUndoTarget handler:v11];
    v10 = [(RCMainControllerHelper *)self _undoActionNameForTrimMode:trim isUndo:1];
    [undoManager setActionName:v10];
  }

  else
  {
    undoManager = OSLogForCategory();
    if (os_log_type_enabled(undoManager, OS_LOG_TYPE_ERROR))
    {
      sub_1001BBA98(self);
    }
  }
}

- (void)_redoCaptureFragmentWithCompositionControllerRedoInfo:(id)info
{
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  if ([audioRecorder redoEditing])
  {
    recordingID = [audioRecorder recordingID];
    [(RCMainControllerHelper *)self _refreshAfterEditingOperation:recordingID];

    undoManager = [(RCMainControllerHelper *)self undoManager];
    editModeUndoTarget = self->_editModeUndoTarget;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000BC1E8;
    v12[3] = &unk_10028C488;
    v12[4] = self;
    [undoManager registerUndoWithTarget:editModeUndoTarget handler:v12];

    undoManager2 = [(RCMainControllerHelper *)self undoManager];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"TITLE_FOR_OVERDUB_UNDO" value:&stru_100295BB8 table:0];
    [undoManager2 setActionName:v10];

    delegate = [(RCMainControllerHelper *)self delegate];
    [delegate enableUndoFirstResponder];
  }
}

- (id)_undoActionNameForTrimMode:(int64_t)mode isUndo:(BOOL)undo
{
  if (mode)
  {
    if (mode != 1)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v5 = +[NSBundle mainBundle];
    if (undo)
    {
      v6 = @"TITLE_FOR_DELETE_RANGE_UNDO";
    }

    else
    {
      v6 = @"TITLE_FOR_DELETE_RANGE_REDO";
    }
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    if (undo)
    {
      v6 = @"TITLE_FOR_TRIM_TO_RANGE_UNDO";
    }

    else
    {
      v6 = @"TITLE_FOR_TRIM_TO_RANGE_REDO";
    }
  }

  v7 = [v5 localizedStringForKey:v6 value:&stru_100295BB8 table:0];

LABEL_11:

  return v7;
}

- (void)_adjustCurrentTrimOperationUndoCount:(int64_t)count
{
  trimModeUndoTarget = self->_trimModeUndoTarget;
  if (count)
  {
    count += [(RCUndoTarget *)self->_trimModeUndoTarget sizeOfUndoStack];
  }

  [(RCUndoTarget *)trimModeUndoTarget setSizeOfUndoStack:count];

  [(RCMainControllerHelper *)self _updateTrimSaveEnabledState];
}

- (void)_clearTrimModeUndoStack
{
  undoManager = [(RCMainControllerHelper *)self undoManager];
  [undoManager removeAllActionsWithTarget:self->_trimModeUndoTarget];

  [(RCMainControllerHelper *)self _adjustCurrentTrimOperationUndoCount:0];
}

- (void)_updateTrimSaveEnabledState
{
  delegate = [(RCMainControllerHelper *)self delegate];
  [delegate shouldEnableTrimSave:{-[RCMainControllerHelper _shouldEnableTrimSave](self, "_shouldEnableTrimSave")}];
}

- (BOOL)_shouldEnableTrimSave
{
  if ([(RCUndoTarget *)self->_trimModeUndoTarget sizeOfUndoStack]> 0)
  {
    return 1;
  }

  trimModeUndoTarget = self->_trimModeUndoTarget;

  return [(RCUndoTarget *)trimModeUndoTarget shouldEnableSave];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if (self->_audioProperties == context)
  {
    changeCopy = change;
    v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
    v14 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];

    LOBYTE(changeCopy) = [v13 isEqual:v14];
    if ((changeCopy & 1) == 0)
    {
      audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
      v16 = audioPlayer;
      if (audioPlayer && [audioPlayer playing])
      {
        self->_hasDeferredContentChanges = 1;
      }

      else
      {
        [(RCMainControllerHelper *)self _audioContentOrDurationDidChange:objectCopy];
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = RCMainControllerHelper;
    changeCopy2 = change;
    [(RCMainControllerHelper *)&v17 observeValueForKeyPath:path ofObject:objectCopy change:changeCopy2 context:context];
  }
}

- (void)_addRecordingObservations:(id)observations
{
  observationsCopy = observations;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(NSMutableSet *)self->_recordingObservances containsObject:observationsCopy]& 1) == 0)
  {
    v5 = OSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BBB30(observationsCopy);
    }

    [(NSMutableSet *)self->_recordingObservances addObject:observationsCopy];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_audioProperties;
    v7 = [(NSSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [observationsCopy addObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v10) options:3 context:{self->_audioProperties, v11}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_removeRecordingObservations:(id)observations
{
  observationsCopy = observations;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSMutableSet *)self->_recordingObservances containsObject:observationsCopy])
  {
    v5 = OSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BBBC0(observationsCopy);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_audioProperties;
    v7 = [(NSSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [observationsCopy removeObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v10) context:{self->_audioProperties, v11}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(NSMutableSet *)self->_recordingObservances removeObject:observationsCopy];
  }
}

- (void)_removeRecordingsObservationsForUUIDs:(id)ds
{
  v4 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor recordingsForUUIDs:ds];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
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
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(RCMainControllerHelper *)self _removeRecordingObservations:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_audioContentOrDurationDidChange:(id)change
{
  changeCopy = change;
  v9 = [RCComposition compositionLoadedForSavedRecording:changeCopy];
  [(RCMainControllerHelper *)self setCurrentComposition:?];
  delegate = [(RCMainControllerHelper *)self delegate];
  [changeCopy length];
  v7 = v6;

  [delegate recordingDurationUpdated:v7];
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  if ([audioPlayer playing])
  {
    [audioPlayer stopPlaying];
  }
}

- (void)waveformDataSourceDidFinishLoading:(id)loading
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BCABC;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)waveformDataSource:(id)source didLoadWaveformSegment:(id)segment
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BCB8C;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)waveformDataSourceRequiresUpdate:(id)update
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BCC5C;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setAllowedTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  if (RCTimeRangeEqualToTimeRange())
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BBC50(v6);
    }
  }

  self->_allowedTimeRange.beginTime = var0;
  self->_allowedTimeRange.endTime = var1;
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  v8 = audioPlayer;
  if (audioPlayer)
  {
    [audioPlayer setPlayableRange:{var0, var1}];
  }
}

- (int64_t)timeControllerState
{
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  v4 = audioRecorder;
  if (audioRecorder && ([audioRecorder recording] & 1) != 0)
  {
    playing = 2;
  }

  else
  {
    audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
    v7 = audioPlayer;
    if (audioPlayer)
    {
      playing = [audioPlayer playing];
    }

    else
    {
      playing = 0;
    }
  }

  return playing;
}

- (NSHashTable)timeObservers
{
  timeObservers = self->_timeObservers;
  if (!timeObservers)
  {
    v4 = +[NSHashTable weakObjectsHashTable];
    v5 = self->_timeObservers;
    self->_timeObservers = v4;

    timeObservers = self->_timeObservers;
  }

  return timeObservers;
}

- (void)pauseTime
{
  audioPlayer = [(RCMainControllerHelper *)self audioPlayer];
  if (audioPlayer)
  {
    [audioPlayer stopPlaying];
  }

  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  v4 = audioRecorder;
  if (audioRecorder)
  {
    [audioRecorder stopRecording];
  }
}

- (void)addTimeObserver:(id)observer
{
  observerCopy = observer;
  timeObservers = [(RCMainControllerHelper *)self timeObservers];
  [timeObservers addObject:observerCopy];
}

- (void)removeTimeObserver:(id)observer
{
  observerCopy = observer;
  timeObservers = [(RCMainControllerHelper *)self timeObservers];
  [timeObservers removeObject:observerCopy];
}

- (RCActivityWaveformProcessor)activityWaveformProcessor
{
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  activityWaveformProcessor = [audioRecorder activityWaveformProcessor];

  return activityWaveformProcessor;
}

- (_TtC10VoiceMemos19RCLiveTranscription)liveTranscription
{
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  liveTranscription = [audioRecorder liveTranscription];

  return liveTranscription;
}

- (void)setTargetTime:(double)time
{
  self->_targetTime = time;
  audioPlayer = self->_audioPlayer;
  if (audioPlayer)
  {
    [(VMAudioPlayer *)audioPlayer setPlayerTime:time];
  }

  if ([(RCMainControllerHelper *)self timeControllerState]!= 2)
  {

    [(RCMainControllerHelper *)self setCurrentTime:time];
  }
}

- (void)setCurrentRate:(float)rate
{
  self->_currentRate = rate;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allObjects = [(NSHashTable *)self->_timeObservers allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          *&v11 = rate;
          [v10 timeController:self didChangeRate:v11];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)setCurrentTime:(double)time
{
  self->_currentTime = time;
  delegate = [(RCMainControllerHelper *)self delegate];
  uuidOfPlayingOrSelectedRecording = [(RCMainControllerHelper *)self uuidOfPlayingOrSelectedRecording];
  [delegate setCurrentTime:uuidOfPlayingOrSelectedRecording withUUID:time];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allObjects = [(NSHashTable *)self->_timeObservers allObjects];
  v8 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 timeController:self didChangeCurrentTime:time];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)setRecordingError:(id)error
{
  errorCopy = error;
  objc_storeStrong(&self->_recordingError, error);
  if (errorCopy)
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001BBCD4();
    }

    v7 = objc_retainBlock(self->_recordingErrorHandler);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, errorCopy);
    }
  }
}

- (double)currentDuration
{
  audioRecorder = [(RCMainControllerHelper *)self audioRecorder];
  v4 = audioRecorder;
  if (audioRecorder && [audioRecorder recording])
  {
    v10 = 0.0;
    v11 = 0;
    if ([v4 monitorRecordingTime:&v11 duration:&v10])
    {
      v5 = v10;
    }

    else
    {
      [v4 idleDuration];
      v5 = v9;
    }
  }

  else
  {
    currentRecordingDisplayModel = [(RCMainControllerHelper *)self currentRecordingDisplayModel];
    [currentRecordingDisplayModel duration];
    v5 = v7;
  }

  return v5;
}

- (void)_checkAudioPlayer:(id)player
{
  playerCopy = player;
  if (![playerCopy playing])
  {
    [(RCMainControllerHelper *)self setCurrentRate:0.0];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    allObjects = [(NSHashTable *)self->_timeObservers allObjects];
    v16 = [allObjects countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(allObjects);
          }

          v20 = *(*(&v34 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v20 timeController:self didChangeRate:0.0];
          }

          if (objc_opt_respondsToSelector())
          {
            [v20 timeController:self didChangeState:0];
          }
        }

        v17 = [allObjects countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v17);
    }

    uuidOfPlayingRecording = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
    [(RCMainControllerHelper *)self _transitionToIdleForItemWithUUID:uuidOfPlayingRecording];

    [(RCMainControllerHelper *)self _stopDisplayLink];
    if (!self->_hasDeferredContentChanges)
    {
      goto LABEL_37;
    }

    recordingsModelInteractor = self->_recordingsModelInteractor;
    recordingID = [playerCopy recordingID];
    v11 = [(RCRecordingsModelInteractor *)recordingsModelInteractor recordingForUUID:recordingID];

    if (v11)
    {
      [(RCMainControllerHelper *)self _audioContentOrDurationDidChange:v11];
      self->_hasDeferredContentChanges = 0;
    }

LABEL_36:

LABEL_37:
    [(RCMainControllerHelper *)self _reconcileAudioStateWithApplicationState];
    goto LABEL_38;
  }

  v6 = +[UIApplication sharedApplication];
  isRunningTest = [v6 isRunningTest];

  if (isRunningTest)
  {
    v8 = +[UIApplication sharedApplication];
    delegate = [v8 delegate];
    [delegate ppt_didStartVoiceMemoPreviewPlayback];
  }

  recordingID2 = [playerCopy recordingID];
  v11 = [RCRecordingDisplayModel recordingDisplayModelForUUID:recordingID2];

  if (v11)
  {
    v33 = playerCopy;
    [v11 setIsPlaying:1];
    currentUserActivity = [(RCMainControllerHelper *)self currentUserActivity];
    isTrim = [currentUserActivity isTrim];
    if (isTrim)
    {
      currentUserActivity2 = [(RCMainControllerHelper *)self currentUserActivity];
      subActivityType = [currentUserActivity2 subActivityType];
    }

    else
    {
      subActivityType = 0;
    }

    currentComposition = [(RCMainControllerHelper *)self currentComposition];
    [(RCMainControllerHelper *)self _transitionToActivityType:2 toSubType:subActivityType withDisplayModel:v11 waveformDataSource:0 composition:currentComposition];

    if (isTrim)
    {
    }

    +[RCAnalyticsUtilities sendDidPlaybackVoiceMemo];
    [(RCMainControllerHelper *)self _startDisplayLink];
    LODWORD(v25) = 1.0;
    [(RCMainControllerHelper *)self setCurrentRate:v25];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    allObjects2 = [(NSHashTable *)self->_timeObservers allObjects];
    v27 = [allObjects2 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v39;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(allObjects2);
          }

          v31 = *(*(&v38 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            LODWORD(v32) = 1.0;
            [v31 timeController:self didChangeRate:v32];
          }

          if (objc_opt_respondsToSelector())
          {
            [v31 timeController:self didChangeState:1];
          }
        }

        v28 = [allObjects2 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v28);
    }

    playerCopy = v33;
    goto LABEL_36;
  }

LABEL_38:
}

- (void)setAudioPlayer:(id)player
{
  playerCopy = player;
  playerObservance = self->_playerObservance;
  if (playerObservance)
  {
    [(RCKeyPathObservance *)playerObservance remove];
    v7 = self->_playerObservance;
    self->_playerObservance = 0;
  }

  objc_storeStrong(&self->_audioPlayer, player);
  if (playerCopy)
  {
    v8 = [NSString stringWithUTF8String:"playing"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000BD97C;
    v14 = &unk_10028BA68;
    selfCopy = self;
    v16 = playerCopy;
    v9 = RCObserveChangesToKeyPath();
    v10 = self->_playerObservance;
    self->_playerObservance = v9;
  }

  [(RCMainControllerHelper *)self _reconcileAudioStateWithApplicationState:v11];
}

- (void)setAudioRecorder:(id)recorder
{
  recorderCopy = recorder;
  audioRecorder = self->_audioRecorder;
  if (audioRecorder)
  {
    [(VMAudioRecorder *)audioRecorder setController:0];
  }

  recorderObservance = self->_recorderObservance;
  if (recorderObservance)
  {
    [(RCKeyPathObservance *)recorderObservance remove];
    v8 = self->_recorderObservance;
    self->_recorderObservance = 0;
  }

  audioVersions = self->_audioVersions;
  if (audioVersions)
  {
    self->_audioVersions = 0;
  }

  objc_storeStrong(&self->_audioRecorder, recorder);
  if (self->_audioRecorder)
  {
    objc_initWeak(&location, self);
    v10 = [NSString stringWithUTF8String:"recording"];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1000BDBB0;
    v23 = &unk_10028C6C0;
    objc_copyWeak(&v25, &location);
    v11 = recorderCopy;
    v24 = v11;
    v12 = RCObserveChangesToKeyPath();
    v13 = self->_recorderObservance;
    self->_recorderObservance = v12;

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000BDC2C;
    v18[3] = &unk_10028C6E8;
    v18[4] = self;
    v14 = v11;
    v19 = v14;
    v15 = objc_retainBlock(v18);
    [(RCMainControllerHelper *)self setRecordingErrorHandler:v15];
    versions = [v14 versions];
    v17 = self->_audioVersions;
    self->_audioVersions = versions;

    [(VMAudioRecorder *)self->_audioRecorder setController:self];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    [(RCMainControllerHelper *)self setRecordingErrorHandler:0];
  }
}

- (void)_reconcileAudioStateWithApplicationState
{
  v3 = +[RecorderAppDelegate sharedAppDelegate];
  defaultSceneDelegate = [v3 defaultSceneDelegate];
  isInForeground = [defaultSceneDelegate isInForeground];
  isPlaying = [(RCMainControllerHelper *)self isPlaying];
  isPaused = [(RCMainControllerHelper *)self isPaused];
  isRecording = [(RCMainControllerHelper *)self isRecording];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  connectedPlatterSceneDelegates = [v3 connectedPlatterSceneDelegates];
  v10 = [connectedPlatterSceneDelegates countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v15 = isPaused;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(connectedPlatterSceneDelegates);
        }

        if ([*(*(&v16 + 1) + 8 * i) isInAndromeda])
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v10 = [connectedPlatterSceneDelegates countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_11:
    isPaused = v15;
  }

  [(RCDisplayLinkManager *)self->_displayLinkManager setPaused:v10];
  if (((isPlaying | isRecording | isInForeground) & 1) == 0)
  {
    v13 = +[VMAudioService sharedInstance];
    [v13 deactivateAudioSession];
  }

  if (isInForeground & isRecording)
  {
    v14 = 2;
  }

  else
  {
    v14 = (isPlaying | isPaused & isInForeground) & 1;
  }

  [(RCMainControllerHelper *)self _updateRemoteControlState:v14];
  [(RCMainControllerHelper *)self _updateNowPlayingInfo];
}

- (id)_alertControllerWithTitle:(id)title message:(id)message isDestructive:(BOOL)destructive preferredStyle:(int64_t)style source:(id)source handler:(id)handler actionTitle:(id)actionTitle cancelHandler:(id)self0
{
  destructiveCopy = destructive;
  handlerCopy = handler;
  actionTitleCopy = actionTitle;
  cancelHandlerCopy = cancelHandler;
  if (source)
  {
    styleCopy = style;
  }

  else
  {
    styleCopy = 1;
  }

  v19 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:styleCopy];
  if (destructiveCopy)
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  v21 = [UIAlertAction actionWithTitle:actionTitleCopy style:v20 handler:handlerCopy];
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"CANCEL" value:&stru_100295BB8 table:0];
  v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:cancelHandlerCopy];

  v36[0] = v21;
  v36[1] = v24;
  [NSArray arrayWithObjects:v36 count:2];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = v34 = 0u;
  v26 = [v25 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v32;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [v19 addAction:{*(*(&v31 + 1) + 8 * i), v31}];
      }

      v27 = [v25 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v27);
  }

  return v19;
}

- (id)uuidOfPlayingOrSelectedRecording
{
  uuidOfPlayingRecording = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
  v4 = uuidOfPlayingRecording;
  if (uuidOfPlayingRecording)
  {
    selectedUUID = uuidOfPlayingRecording;
  }

  else
  {
    delegate = [(RCMainControllerHelper *)self delegate];
    selectedUUID = [delegate selectedUUID];
  }

  return selectedUUID;
}

- (void)_updateWillMigrateFromSingleLayerToMultiLayerForRecordingID:(id)d
{
  dCopy = d;
  if (RCOverdubRecordingIsEnabled())
  {
    v4 = +[RCApplicationModel sharedApplicationModel];
    v5 = [v4 recordingWithUniqueID:dCopy];

    if (v5)
    {
      v6 = [v5 composedAssetHasMultipleTracks] ^ 1;
    }

    else
    {
      v6 = 1;
    }

    self->_willMigrateFromSingleLayerToMultiLayer = [(RCComposition *)self->_currentComposition hasMultipleTracks]& v6;
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)allowedTimeRange
{
  beginTime = self->_allowedTimeRange.beginTime;
  endTime = self->_allowedTimeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- (RCMainControllerHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end