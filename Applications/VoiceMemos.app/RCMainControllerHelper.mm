@interface RCMainControllerHelper
- ($F24F406B2B787EFB06265DBA3D28CBD5)_selectedTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)allowedTimeRange;
- (BOOL)_errorIsRecordingUnavailable:(id)a3;
- (BOOL)_isSelectionTrimmableByDeletingRange:(id)a3;
- (BOOL)_isSelectionTrimmableByKeepingRange:(id)a3;
- (BOOL)_performRecordingEndTransitionWithUUID:(id)a3;
- (BOOL)_shouldEnableTrimSave;
- (BOOL)_transitionToActivityType:(int64_t)a3 toSubType:(int64_t)a4 withDisplayModel:(id)a5 waveformDataSource:(id)a6 composition:(id)a7;
- (BOOL)_transitionToIdleForItemWithUUID:(id)a3;
- (BOOL)_transitionToPlayingBackForItemWithUUID:(id)a3;
- (BOOL)canJumpBackward;
- (BOOL)canJumpForward;
- (BOOL)currentSelectionHasSpatialAudio;
- (BOOL)isPaused;
- (BOOL)isPlaying;
- (BOOL)isPlayingForUUID:(id)a3;
- (BOOL)isRecording;
- (BOOL)isSilenceRemovedForUUID:(id)a3;
- (BOOL)isSpeechIsolatorEnabledForUUID:(id)a3;
- (BOOL)readyForPlayback;
- (BOOL)startCapturing:(id)a3;
- (NSHashTable)timeObservers;
- (RCActivityWaveformProcessor)activityWaveformProcessor;
- (RCMainControllerHelper)init;
- (RCMainControllerHelperDelegate)delegate;
- (_TtC10VoiceMemos19RCLiveTranscription)liveTranscription;
- (double)currentDuration;
- (double)currentTime;
- (double)layerMixForUUID:(id)a3;
- (double)playbackSpeedForUUID:(id)a3;
- (float)speechIsolatorForUUID:(id)a3;
- (id)_alertControllerWithTitle:(id)a3 message:(id)a4 isDestructive:(BOOL)a5 preferredStyle:(int64_t)a6 source:(id)a7 handler:(id)a8 actionTitle:(id)a9 cancelHandler:(id)a10;
- (id)_presentFolderDeletionConfirmationForFolder:(id)a3 source:(id)a4 completionBlock:(id)a5;
- (id)_restoreRecordingsWithUUIDs:(id)a3 isRecover:(BOOL)a4 source:(id)a5 collectionViewController:(id)a6;
- (id)_undoActionNameForTrimMode:(int64_t)a3 isUndo:(BOOL)a4;
- (id)compositionForUUID:(id)a3;
- (id)currentPlayerForUUID:(id)a3;
- (id)deleteFolder:(id)a3 source:(id)a4 completionBlock:(id)a5;
- (id)deleteWithUUIDs:(id)a3 source:(id)a4 showInfo:(BOOL)a5;
- (id)eraseAllRecordingsAndConfirmWithSource:(id)a3;
- (id)eraseAndConfirmWithUUIDs:(id)a3 source:(id)a4 collectionViewController:(id)a5;
- (id)playbackSettingsForUUID:(id)a3;
- (id)recordingInProgressUUID;
- (id)restoreRecordingsWithUUIDs:(id)a3 isRecover:(BOOL)a4 source:(id)a5 force:(BOOL)a6 collectionViewController:(id)a7;
- (id)undoManager;
- (id)uuidOfPlayingOrSelectedRecording;
- (int64_t)timeControllerState;
- (void)__setupRemoteControlCommandsForPlayback;
- (void)__setupRemoteControlCommandsForRecordingForeground;
- (void)_addCommandTarget:(id)a3 withHandler:(id)a4;
- (void)_addRecordingObservations:(id)a3;
- (void)_adjustCurrentTrimOperationUndoCount:(int64_t)a3;
- (void)_audioContentOrDurationDidChange:(id)a3;
- (void)_beginOrResumeCaptureSessionWithReplace:(BOOL)a3 trackIndex:(unint64_t)a4;
- (void)_beginSelectionEditingModeForInsertMode:(BOOL)a3;
- (void)_checkAudioPlayer:(id)a3;
- (void)_clearPlaybackInAudioPlayer:(id)a3;
- (void)_clearTrimModeUndoStack;
- (void)_deleteFolderWithoutAlert:(id)a3;
- (void)_deleteRecordingsWithUUIDs:(id)a3 isRecover:(BOOL)a4;
- (void)_endSelectionEditingMode;
- (void)_enterTrimMode;
- (void)_eraseRecordingsWithUUIDs:(id)a3;
- (void)_handleRecordingUnavailableError:(id)a3;
- (void)_jumpByIncrement:(double)a3 forUUID:(id)a4;
- (void)_jumpToTargetTime:(double)a3;
- (void)_markCurrentFileVersionIfNecessary;
- (void)_preloadRecordingForPlayback:(id)a3;
- (void)_reconcileAudioStateWithApplicationState;
- (void)_recordingFailed:(id)a3 error:(id)a4;
- (void)_recordingStarted:(id)a3;
- (void)_recordingStopped:(id)a3;
- (void)_redoCaptureFragmentWithCompositionControllerRedoInfo:(id)a3;
- (void)_redoTrim:(int64_t)a3;
- (void)_refreshAfterEditingOperation:(id)a3;
- (void)_registerUndoDeleteFolder:(id)a3;
- (void)_registerUndoForSetFavorite:(BOOL)a3 changedUUIDs:(id)a4;
- (void)_reloadWaveformDataSourceAndPreviewAssetWithInitialTime:(double)a3;
- (void)_removeRecordingObservations:(id)a3;
- (void)_removeRecordingsObservationsForUUIDs:(id)a3;
- (void)_resetSelectedTimeRangeToFullDuration;
- (void)_restoreFolder:(id)a3;
- (void)_restoreRecordingsWithUUIDs:(id)a3 isRecover:(BOOL)a4;
- (void)_sceneDidActivateNotification:(id)a3;
- (void)_sceneWillDeactivateNotification:(id)a3;
- (void)_setIsInSelectionEditingMode:(BOOL)a3 forInsertMode:(BOOL)a4;
- (void)_startNowPlayingUpdateTimerWithPlaybackTime:(double)a3 playbackRate:(double)a4;
- (void)_startPlaybackOfUUID:(id)a3 atPosition:(double)a4;
- (void)_stopForUUIDs:(id)a3;
- (void)_stopPlaybackInAudioPlayer:(id)a3;
- (void)_teardownRemoteControlCommands;
- (void)_undoCaptureFragment;
- (void)_undoTrim:(int64_t)a3;
- (void)_updateNowPlayingInfo;
- (void)_updateRemoteControlState:(int64_t)a3;
- (void)_updateTrimSaveEnabledState;
- (void)_updateWillMigrateFromSingleLayerToMultiLayerForRecordingID:(id)a3;
- (void)addTimeObserver:(id)a3;
- (void)cancelTrimModeWithDismissal:(BOOL)a3;
- (void)dealloc;
- (void)defaultSceneDidConnect:(id)a3;
- (void)deleteRecordingCanceled;
- (void)displayLinkDidUpdate:(id)a3 withTimeController:(id)a4;
- (void)doneButtonShouldSaveAsNew:(BOOL)a3;
- (void)endDescriptionViewTextEditing;
- (void)endScrubbingForUUID:(id)a3 atPosition:(double)a4;
- (void)enterTrimMode;
- (void)exitEditMode;
- (void)exitTrimMode;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)openForModifyRecordingWithUUID:(id)a3 withSubActivityType:(int64_t)a4;
- (void)pauseCapturing;
- (void)pauseForUUID:(id)a3;
- (void)pauseTime;
- (void)performClearAllRecentlyDeleted;
- (void)performTrimByDeletingSelectedRangeForRecordingWithUUID:(id)a3 source:(id)a4;
- (void)performTrimByKeepingSelectedRangeForRecordingWithUUID:(id)a3 source:(id)a4;
- (void)playbackForUUID:(id)a3;
- (void)prepareForPlaybackForUUID:(id)a3 force:(BOOL)a4;
- (void)removeTimeObserver:(id)a3;
- (void)replaceCapturing:(unint64_t)a3;
- (void)resumeCapturing:(unint64_t)a3;
- (void)setAllowedTimeRange:(id)a3;
- (void)setAudioPlayer:(id)a3;
- (void)setAudioRecorder:(id)a3;
- (void)setCurrentRate:(float)a3;
- (void)setCurrentRecordingDisplayModel:(id)a3;
- (void)setCurrentTime:(double)a3;
- (void)setFavorite:(BOOL)a3 forRecordingWithUUID:(id)a4;
- (void)setFavorite:(BOOL)a3 forRecordingsWithUUIDs:(id)a4;
- (void)setLayerMix:(double)a3 forUUID:(id)a4;
- (void)setLooping:(BOOL)a3 forUUID:(id)a4;
- (void)setPlaybackSpeed:(double)a3 forUUID:(id)a4;
- (void)setRecordingError:(id)a3;
- (void)setRemoveSilence:(BOOL)a3 forUUID:(id)a4;
- (void)setSpeechIsolatorEnabled:(BOOL)a3 forUUID:(id)a4;
- (void)setSpeechIsolatorValue:(float)a3 forUUID:(id)a4;
- (void)setTargetTime:(double)a3;
- (void)shareRecordingsWithUUIDs:(id)a3 inViewController:(id)a4 source:(id)a5 isShareButton:(BOOL)a6 completionWithItemsHandler:(id)a7;
- (void)startMonitoringFinalizingRecordings;
- (void)startScrubbingForUUID:(id)a3 atPosition:(double)a4;
- (void)stopCapturing;
- (void)stopForUUID:(id)a3;
- (void)stopPlayback;
- (void)toggleFavoriteForUUID:(id)a3;
- (void)toggleForUUID:(id)a3;
- (void)togglePlayback;
- (void)updateScrubbingForUUID:(id)a3 atPosition:(double)a4;
- (void)waveformDataSource:(id)a3 didLoadWaveformSegment:(id)a4;
- (void)waveformDataSourceDidFinishLoading:(id)a3;
- (void)waveformDataSourceRequiresUpdate:(id)a3;
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

    v9 = [(RCMainControllerHelper *)v2 timeController];
    [(RCDisplayLinkManager *)v2->_displayLinkManager setTimeController:v9];

    v10 = [[RCUndoTarget alloc] initWithUndoTargetType:1];
    trimModeUndoTarget = v2->_trimModeUndoTarget;
    v2->_trimModeUndoTarget = v10;

    v12 = [[RCUndoTarget alloc] initWithUndoTargetType:0];
    editModeUndoTarget = v2->_editModeUndoTarget;
    v2->_editModeUndoTarget = v12;

    v14 = +[RCRecordingsModelInteractor sharedRecordingsModelInteractor];
    recordingsModelInteractor = v2->_recordingsModelInteractor;
    v2->_recordingsModelInteractor = v14;

    v16 = [(RCRecordingsModelInteractor *)v2->_recordingsModelInteractor audioProperties];
    v17 = [v16 valueForKey:@"name"];
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
    v26 = [v25 defaultSceneDelegate];
    v27 = [v26 window];
    v28 = [v27 windowScene];

    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v2 selector:"_sceneDidActivateNotification:" name:UISceneDidActivateNotification object:v28];
    [v29 addObserver:v2 selector:"_sceneDidEnterBackgroundNotification:" name:UISceneDidEnterBackgroundNotification object:v28];
    [v29 addObserver:v2 selector:"_sceneWillDeactivateNotification:" name:UISceneWillDeactivateNotification object:v28];
  }

  return v2;
}

- (void)stopPlayback
{
  v3 = [(RCMainControllerHelper *)self audioPlayer];
  if ([v3 playing])
  {
    [(RCMainControllerHelper *)self _clearPlaybackInAudioPlayer:v3];
  }
}

- (BOOL)isRecording
{
  v2 = [(RCMainControllerHelper *)self audioRecorder];
  v3 = v2;
  if (v2)
  {
    if ([v2 preparing])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 recording];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)currentTime
{
  v3 = [(RCMainControllerHelper *)self currentUserActivity];
  if (![v3 activityType] && objc_msgSend(v3, "subActivityType") != 3)
  {
    goto LABEL_8;
  }

  v4 = [(RCMainControllerHelper *)self audioRecorder];
  v5 = v4;
  if (!v4 || ![v4 recording] || (v8 = 0, v9 = 0.0, (objc_msgSend(v5, "monitorRecordingTime:duration:", &v9, &v8) & 1) == 0))
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

- (void)defaultSceneDidConnect:(id)a3
{
  v4 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_defaultSceneWillEnterForeground:" name:UISceneWillEnterForegroundNotification object:v4];
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

- (void)setCurrentRecordingDisplayModel:(id)a3
{
  objc_storeStrong(&self->_currentRecordingDisplayModel, a3);
  v4 = [(RCMainControllerHelper *)self delegate];
  [v4 didUpdateCurrentRecordingDisplayModel];
}

- (BOOL)startCapturing:(id)a3
{
  v4 = a3;
  v5 = OSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[RCMainControllerHelper startCapturing:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- Requested start capturing", buf, 0xCu);
  }

  v6 = +[VMAudioService sharedInstance];
  v7 = [(RCMainControllerHelper *)self currentUserActivity];
  v8 = [v7 isTrim];

  if (v8)
  {
    [(RCMainControllerHelper *)self exitTrimMode];
  }

  else
  {
    v9 = [(RCMainControllerHelper *)self currentUserActivity];
    v10 = [v9 activityType];

    if (v10 == 3)
    {
      [(RCMainControllerHelper *)self exitEditMode];
    }
  }

  v11 = [(RCMainControllerHelper *)self currentUserActivity];
  [v11 setSubActivityType:0];

  v20 = 0;
  v12 = [v6 isRecordingEnabled:&v20];
  v13 = v20;
  if (v12)
  {
    v14 = [v6 newRecorderWithTitleBase:v4];
    [(RCMainControllerHelper *)self setAudioRecorder:v14];
    v15 = [(RCMainControllerHelper *)self timeController];
    [v15 setTargetTime:0.0];

    [(RCMainControllerHelper *)self setTargetTrackIndex:0];
    [(RCMainControllerHelper *)self setOverdubbing:0];
    [(RCMainControllerHelper *)self setSilencing:0];
    if (([v14 startRecording] & 1) == 0)
    {
      v16 = [(RCMainControllerHelper *)self delegate];
      v17 = [(RCMainControllerHelper *)self recordingError];
      [v16 captureFailedWithError:v17];
    }
  }

  else if ([(RCMainControllerHelper *)self _errorIsRecordingUnavailable:v13])
  {
    [(RCMainControllerHelper *)self _handleRecordingUnavailableError:v13];
  }

  else
  {
    v18 = [(RCMainControllerHelper *)self delegate];
    [v18 captureFailedWithError:v13];
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

  v4 = [(RCMainControllerHelper *)self audioRecorder];
  v5 = [(RCMainControllerHelper *)self currentUserActivity];
  [v5 setSubActivityType:3];

  if (v4)
  {
    if ([v4 recording])
    {
      [(RCMainControllerHelper *)self _stopDisplayLink];
      if (([v4 stopRecording] & 1) == 0)
      {
        v6 = OSLogForCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1001BAD7C(self);
        }
      }
    }
  }

  v7 = [(RCMainControllerHelper *)self undoManager];
  [v7 setUndoDisabled:0];
}

- (void)resumeCapturing:(unint64_t)a3
{
  v5 = OSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[RCMainControllerHelper resumeCapturing:]";
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- Requested resume capture on track %lu", &v6, 0x16u);
  }

  [(RCMainControllerHelper *)self _beginOrResumeCaptureSessionWithReplace:0 trackIndex:a3];
}

- (void)replaceCapturing:(unint64_t)a3
{
  v5 = OSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[RCMainControllerHelper replaceCapturing:]";
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- Requested replace capture on track %lu", &v6, 0x16u);
  }

  [(RCMainControllerHelper *)self _beginOrResumeCaptureSessionWithReplace:1 trackIndex:a3];
}

- (void)stopCapturing
{
  v8 = [(RCMainControllerHelper *)self audioRecorder];
  v3 = [(RCMainControllerHelper *)self currentUserActivity];
  if ([v3 activityType] == 1 && objc_msgSend(v3, "subActivityType") == 3)
  {
    v4 = [(RCMainControllerHelper *)self currentUserActivity];
    v5 = [v3 activityType];
    v6 = [v3 displayModel];
    [v4 transitionToActivityType:v5 subType:4 withDisplayModel:v6];
  }

  if (v8 && [v8 recording] && objc_msgSend(v8, "stopRecording"))
  {
    v7 = [(RCMainControllerHelper *)self undoManager];
    [v7 setUndoDisabled:0];
  }

  [(RCMainControllerHelper *)self setDidTrimPlayback:0];
}

- (BOOL)isPlaying
{
  v2 = [(RCMainControllerHelper *)self audioPlayer];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 playing];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isPaused
{
  v2 = [(RCMainControllerHelper *)self audioPlayer];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 playing] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)recordingInProgressUUID
{
  v2 = [(RCMainControllerHelper *)self audioRecorder];
  v3 = [v2 recordingID];

  return v3;
}

- (void)_beginOrResumeCaptureSessionWithReplace:(BOOL)a3 trackIndex:(unint64_t)a4
{
  v6 = +[VMAudioService sharedInstance];
  v39 = 0;
  v7 = [v6 isRecordingEnabled:&v39];
  v8 = v39;
  if (v7)
  {
    v9 = [(RCMainControllerHelper *)self audioRecorder];
    if ([v9 shouldWaitForAccessToken])
    {
      v10 = OSLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1001BAF2C(v10);
      }

      goto LABEL_14;
    }

    v11 = [(RCMainControllerHelper *)self uuidOfPlayingOrSelectedRecording];
    if (v9 | v11)
    {
      if (!v9)
      {
        v9 = [v6 recorderForRecordingID:v11];
        [(RCMainControllerHelper *)self setAudioRecorder:v9];
      }

      v12 = [v9 recordingID];
      v13 = [v6 fetchRecording:v12];
      v14 = [(RCMainControllerHelper *)self timeController];
      [v14 currentTime];
      [v14 setTargetTime:?];
      [(RCMainControllerHelper *)self setTargetTrackIndex:a4];
      [(RCMainControllerHelper *)self setOverdubbing:a4 == 1];
      if (a4 == 1)
      {
        v15 = +[RecorderAppDelegate sharedAppDelegate];
        [v15 dependencyContainer];
        v36 = v11;
        v16 = v14;
        v17 = v13;
        v19 = v18 = v12;
        v20 = [v19 analyticsManager];
        [v20 userCapturedSecondLayer];

        v12 = v18;
        v13 = v17;
        v14 = v16;
        v11 = v36;

        [v13 composedAssetHasMultipleTracks];
        v21 = 0;
      }

      else
      {
        v22 = [v13 composedAssetHasMultipleTracks];
        v21 = 0;
        if (!a4 && v22)
        {
          v21 = RCOverdubRecordingIsEnabled() ^ 1;
        }
      }

      [(RCMainControllerHelper *)self setSilencing:v21];
      self->_isResumingOrReplacing = 1;
      if (([v9 startRecording]& 1) != 0)
      {
        [v13 length];
        if (v23 > 0.0)
        {
          v24 = [(RCMainControllerHelper *)self undoManager];
          editModeUndoTarget = self->_editModeUndoTarget;
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_1000B4FB0;
          v38[3] = &unk_10028C488;
          v38[4] = self;
          [v24 registerUndoWithTarget:editModeUndoTarget handler:v38];

          v26 = [(RCMainControllerHelper *)self undoManager];
          v27 = +[NSBundle mainBundle];
          [v27 localizedStringForKey:@"TITLE_FOR_OVERDUB_UNDO" value:&stru_100295BB8 table:0];
          v37 = v11;
          v28 = v14;
          v29 = v13;
          v31 = v30 = v12;
          [v26 setActionName:v31];

          v12 = v30;
          v13 = v29;
          v14 = v28;
          v11 = v37;

          v32 = [(RCMainControllerHelper *)self delegate];
          [v32 enableUndoFirstResponder];
        }

        v33 = [(RCMainControllerHelper *)self undoManager];
        [v33 setUndoDisabled:1];

        v34 = [(RCMainControllerHelper *)self currentUserActivity];
        [v34 setSubActivityType:3];

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
      v9 = OSLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1001BAE14();
      }
    }
  }

  else
  {
    if (![(RCMainControllerHelper *)self _errorIsRecordingUnavailable:v8])
    {
      v9 = [(RCMainControllerHelper *)self delegate];
      [v9 captureFailedWithError:v8];
LABEL_14:

      goto LABEL_29;
    }

    [(RCMainControllerHelper *)self _handleRecordingUnavailableError:v8];
  }

LABEL_29:
}

- (void)_recordingStarted:(id)a3
{
  v4 = a3;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 isRunningTest];

  if (v6)
  {
    v7 = +[UIApplication sharedApplication];
    v8 = [v7 delegate];
    [v8 ppt_didStartRecording];
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
  v11 = [(RCMainControllerHelper *)self delegate];
  v34 = v10;
  [v11 recordingDidStartWithInfo:v10];

  v12 = [v4 recordingID];
  v32 = +[VMAudioService sharedInstance];
  v13 = [v32 fetchRecording:v12];
  if (v13)
  {
    [(RCMainControllerHelper *)self _addRecordingObservations:v13];
  }

  v14 = [v13 title];
  v15 = [v13 creationDate];
  v16 = 0.0;
  if (self->_isResumingOrReplacing)
  {
    [v13 length];
    v16 = v17;
  }

  BYTE3(v29) = 0;
  BYTE2(v29) = [v13 composedAssetIsSpatialRecording];
  LOWORD(v29) = 0;
  v31 = v14;
  v18 = [RCRecordingDisplayModel recordingDisplayModelWithTitle:"recordingDisplayModelWithTitle:creationDate:duration:UUID:recentlyDeleted:representsDownloadingFile:isFavorite:isEnhanced:hasTranscription:isSpatialRecording:wasManuallyRenamed:" creationDate:v14 duration:v15 UUID:v12 recentlyDeleted:0 representsDownloadingFile:0 isFavorite:0 isEnhanced:v16 hasTranscription:v29 isSpatialRecording:? wasManuallyRenamed:?];
  [(RCMainControllerHelper *)self setCurrentRecordingDisplayModel:v18];
  v33 = v12;
  v19 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor compositionLoadedForSavedRecordingUUID:v12];
  [(RCMainControllerHelper *)self setCurrentComposition:v19];

  v35 = v4;
  v20 = [v4 waveformDataSource];
  [v20 addObserver:self];
  [(RCMainControllerHelper *)self setUuidOfPlayingRecording:0];
  if (self->_isResumingOrReplacing)
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  v22 = [(RCMainControllerHelper *)self currentComposition];
  v30 = v18;
  [(RCMainControllerHelper *)self _transitionToActivityType:1 toSubType:v21 withDisplayModel:v18 waveformDataSource:v20 composition:v22];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = [(NSHashTable *)self->_timeObservers allObjects];
  v24 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v36 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v28 timeController:self didChangeState:2];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v25);
  }

  [(RCMainControllerHelper *)self _startDisplayLink];
}

- (void)_recordingStopped:(id)a3
{
  v4 = a3;
  v5 = OSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v47 = "[RCMainControllerHelper _recordingStopped:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- Recording stopped UI callback", buf, 0xCu);
  }

  v6 = [(RCMainControllerHelper *)self delegate];
  [v6 recordingDidEnd];

  v7 = [v4 recordingID];
  if (v7)
  {
    v8 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor recordingForUUID:v7];
    if (v8)
    {
      v9 = v8;
      v10 = [(RCMainControllerHelper *)self currentUserActivity];
      v11 = [v10 subActivityType];

      if (v11 == 2)
      {
        v12 = [(RCMainControllerHelper *)self timeController];
        [v12 setTargetTime:0.0];
      }

      v13 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor compositionLoadedForSavedRecordingUUID:v7];
      [(RCMainControllerHelper *)self setCurrentComposition:v13];

      [(RCMainControllerHelper *)self _updateWillMigrateFromSingleLayerToMultiLayerForRecordingID:v7];
      [(RCMainControllerHelper *)self _performRecordingEndTransitionWithUUID:v7];
      v14 = [(RCMainControllerHelper *)self currentComposition];
      v15 = [v14 savedRecordingUUID];
      if (v15)
      {
        v16 = v15;
        v17 = [(RCMainControllerHelper *)self currentComposition];
        v18 = [v17 savedRecordingUUID];
        v19 = [v18 isEqual:v7];

        if (v19)
        {
          v40 = v7;
LABEL_14:
          v23 = [(RCMainControllerHelper *)self timeController];
          [v23 currentTime];
          v25 = v24;

          [v9 length];
          v27 = v26;
          v28 = [RCRecordingDisplayModel recordingDisplayModelWithSavedRecording:v9];
          [(RCMainControllerHelper *)self setCurrentRecordingDisplayModel:v28];

          RCTimeRangeMake();
          v30 = v29;
          v32 = v31;
          v33 = [(RCMainControllerHelper *)self timeController];
          [v33 setAllowedTimeRange:{v30, v32}];

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v34 = [(NSHashTable *)self->_timeObservers allObjects];
          v35 = [v34 countByEnumeratingWithState:&v41 objects:v45 count:16];
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
                  objc_enumerationMutation(v34);
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

              v36 = [v34 countByEnumeratingWithState:&v41 objects:v45 count:16];
            }

            while (v36);
          }

          [(RCMainControllerHelper *)self _stopDisplayLink];
          v7 = v40;
          [(RCMainControllerHelper *)self _preloadRecordingForPlayback:v40];
          v20 = v9;
          goto LABEL_26;
        }

        v21 = [(RCMainControllerHelper *)self currentComposition];
        v22 = [v21 savedRecordingUUID];

        [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor recordingForUUID:v22];
        v9 = v14 = v9;
        v7 = v22;
      }

      v40 = v7;

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

- (void)_recordingFailed:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001BB02C();
  }

  if (([v6 recording] & 1) == 0)
  {
    [(RCMainControllerHelper *)self _recordingStopped:v6];
    [(RCMainControllerHelper *)self setAudioRecorder:0];
  }

  v9 = [(RCMainControllerHelper *)self delegate];
  [v9 captureFailedWithError:v7];
}

- (BOOL)_errorIsRecordingUnavailable:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"VMAudioServiceErrorDomain"])
  {
    v5 = [v3 code] == 5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_handleRecordingUnavailableError:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_recordingUnavailableAlertController);

  if (!WeakRetained)
  {
    v6 = [v4 userInfo];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000B5A50;
    v14 = &unk_10028A650;
    v15 = self;
    v16 = v4;
    v7 = objc_retainBlock(&v11);
    v8 = [v6 objectForKeyedSubscript:{NSLocalizedFailureReasonErrorKey, v11, v12, v13, v14, v15}];
    v9 = [v6 objectForKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
    v10 = [UIAlertController rc_OKAlertControllerWithTitle:v8 message:v9 handler:v7];

    [v10 rc_showInMainWindow];
    objc_storeWeak(&self->_recordingUnavailableAlertController, v10);
  }
}

- (void)prepareForPlaybackForUUID:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v26 = a3;
  v6 = [(RCMainControllerHelper *)self currentComposition];
  v7 = [v6 savedRecordingUUID];
  v8 = [v7 isEqualToString:v26];
  v9 = [(RCMainControllerHelper *)self audioPlayer];

  if (v4 || !v9 || (v8 & 1) == 0)
  {
    [(RCMainControllerHelper *)self setUuidOfPlayingRecording:v26];
    v10 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor compositionLoadedForSavedRecordingUUID:v26];
    [(RCMainControllerHelper *)self setCurrentComposition:v10];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [WeakRetained waveformViewController];
    waveformViewController = self->_waveformViewController;
    self->_waveformViewController = v12;

    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = [v14 overviewWaveformViewController];
    overviewWaveformViewController = self->_overviewWaveformViewController;
    self->_overviewWaveformViewController = v15;

    [(RCAVWaveformViewController *)self->_waveformViewController setActiveTimeController:self];
    [(RCAVWaveformViewController *)self->_overviewWaveformViewController setActiveTimeController:self];
    v17 = self->_recordingsModelInteractor;
    v18 = [(RCRecordingsModelInteractor *)v17 recordingForUUID:v7];
    if (v18)
    {
      [(RCMainControllerHelper *)self _removeRecordingObservations:v18];
    }

    v19 = [(RCRecordingsModelInteractor *)v17 recordingForUUID:v26];
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
        v25 = [(RCMainControllerHelper *)self timeController];
        [v25 setAllowedTimeRange:{v22, v24}];
      }
    }

    [(RCMainControllerHelper *)self _preloadRecordingForPlayback:v26];
  }
}

- (BOOL)readyForPlayback
{
  v3 = [(RCMainControllerHelper *)self audioPlayer];
  v4 = [v3 recordingID];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(RCMainControllerHelper *)self audioRecorder];
    v7 = [v6 recordingID];
    v5 = v7 != 0;
  }

  return v5;
}

- (void)playbackForUUID:(id)a3
{
  v4 = a3;
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
    v6 = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
    v7 = [v6 isEqualToString:v4];

    if ((v7 & 1) == 0)
    {
      [(RCMainControllerHelper *)self setUuidOfPlayingRecording:v4];
      [(RCMainControllerHelper *)self prepareForPlaybackForUUID:v4];
    }

    v8 = [(RCMainControllerHelper *)self timeController];
    [v8 currentTime];
    [(RCMainControllerHelper *)self _startPlaybackOfUUID:v4 atPosition:?];
  }
}

- (void)togglePlayback
{
  v3 = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
  [(RCMainControllerHelper *)self toggleForUUID:v3];
}

- (void)toggleForUUID:(id)a3
{
  v6 = a3;
  v4 = [(RCMainControllerHelper *)self currentPlayerForUUID:?];
  v5 = v4;
  if (v4)
  {
    if ([v4 playing])
    {
      [(RCMainControllerHelper *)self pauseForUUID:v6];
    }

    else
    {
      [(RCMainControllerHelper *)self playbackForUUID:v6];
    }
  }
}

- (BOOL)isPlayingForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainControllerHelper *)self audioPlayer];
  v6 = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
  v7 = [v6 isEqualToString:v4];

  if (v7)
  {
    v8 = [v5 playing];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)pauseForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(RCMainControllerHelper *)self currentPlayerForUUID:v4];
    [(RCMainControllerHelper *)self _stopPlaybackInAudioPlayer:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v8 = [(RCMainControllerHelper *)self uuidOfPlayingRecording];

    if (v8)
    {
      v7 = OSLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001BB128(v4, self);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)stopForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(RCMainControllerHelper *)self currentPlayerForUUID:v4];
    [(RCMainControllerHelper *)self _clearPlaybackInAudioPlayer:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v8 = [(RCMainControllerHelper *)self uuidOfPlayingRecording];

    if (v8)
    {
      v7 = OSLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001BB1D0(v4, self);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)startScrubbingForUUID:(id)a3 atPosition:(double)a4
{
  v5 = a3;
  if (([(VMAudioPlayer *)self->_audioPlayer playing]& 1) != 0 || [(VMAudioPlayer *)self->_audioPlayer willPlayPendingPreparation])
  {
    self->_scrubState = 1;
    [(RCMainControllerHelper *)self pauseForUUID:v5];
  }

  else
  {
    self->_scrubState = 2;
  }
}

- (void)updateScrubbingForUUID:(id)a3 atPosition:(double)a4
{
  v5 = [(RCMainControllerHelper *)self timeController];
  [v5 setTargetTime:a4];
}

- (void)endScrubbingForUUID:(id)a3 atPosition:(double)a4
{
  if (self->_scrubState == 1)
  {
    [(RCMainControllerHelper *)self playbackForUUID:a3, a4];
  }

  self->_scrubState = 0;
}

- (BOOL)canJumpForward
{
  if (![(RCMainControllerHelper *)self isRecording])
  {
    v3 = [(RCMainControllerHelper *)self readyForPlayback];
    if (!v3)
    {
      return v3;
    }

    [(RCMainControllerHelper *)self currentDuration];
    if (v4 > 0.05)
    {
      [(RCMainControllerHelper *)self currentTime];
      v6 = v5;
      [(RCMainControllerHelper *)self currentDuration];
      LOBYTE(v3) = v6 < v7;
      return v3;
    }
  }

  LOBYTE(v3) = 0;
  return v3;
}

- (BOOL)canJumpBackward
{
  if (![(RCMainControllerHelper *)self isRecording])
  {
    v3 = [(RCMainControllerHelper *)self readyForPlayback];
    if (!v3)
    {
      return v3;
    }

    [(RCMainControllerHelper *)self currentDuration];
    if (v4 > 0.05)
    {
      [(RCMainControllerHelper *)self currentTime];
      LOBYTE(v3) = v5 > 0.0;
      return v3;
    }
  }

  LOBYTE(v3) = 0;
  return v3;
}

- (void)_stopForUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
    [(RCMainControllerHelper *)self stopForUUID:v7];
  }
}

- (void)_preloadRecordingForPlayback:(id)a3
{
  v4 = a3;
  v5 = [(RCMainControllerHelper *)self audioPlayer];
  if (!v5 || (v6 = v5, -[RCMainControllerHelper audioPlayer](self, "audioPlayer"), v7 = objc_claimAutoreleasedReturnValue(), [v7 recordingID], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", v4), v8, v7, v6, (v9 & 1) == 0))
  {
    v10 = [(RCMainControllerHelper *)self currentPlayerForUUID:v4];
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

- (void)_startPlaybackOfUUID:(id)a3 atPosition:(double)a4
{
  v6 = a3;
  v7 = +[RecorderAppDelegate sharedAppDelegate];
  v8 = [v7 dependencyContainer];
  v9 = [v8 analyticsManager];
  [v9 userPlayedVoiceMemo];

  v16 = [(RCMainControllerHelper *)self timeController];
  v10 = [(RCMainControllerHelper *)self currentPlayerForUUID:v6];

  [v16 allowedTimeRange];
  v12 = v11;
  v14 = v13;
  [v10 setPlayableRange:?];
  if (v14 - a4 >= 0.01)
  {
    v15 = a4;
  }

  else
  {
    v15 = v12;
  }

  [v16 setTargetTime:v15];
  [v10 startPlaying];
}

- (void)_clearPlaybackInAudioPlayer:(id)a3
{
  [(RCMainControllerHelper *)self _stopPlaybackInAudioPlayer:a3];

  [(RCMainControllerHelper *)self setUuidOfPlayingRecording:0];
}

- (void)_stopPlaybackInAudioPlayer:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v5 = [v3 playing];
    v4 = v6;
    if (v5)
    {
      [v6 stopPlaying];
      v4 = v6;
    }
  }
}

- (id)currentPlayerForUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RCMainControllerHelper *)self audioPlayer];
    v6 = v5;
    if (v5 && ([v5 recordingID], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v4, "isEqualToString:", v7), v7, v8))
    {
      v9 = v6;
    }

    else
    {
      v10 = +[VMAudioService sharedInstance];
      v9 = [v10 playerForRecordingID:v4];
      LODWORD(v11) = 1.0;
      [(RCMainControllerHelper *)self setTargetRate:v11];
      v12 = [(RCMainControllerHelper *)self audioRecorder];
      v13 = [v12 recordingID];
      v14 = [v4 isEqualToString:v13];

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

- (void)_jumpByIncrement:(double)a3 forUUID:(id)a4
{
  v8 = [(RCMainControllerHelper *)self audioPlayer];
  v6 = [(RCMainControllerHelper *)self timeController];
  if ([v8 playing])
  {
    [v8 playerTime];
  }

  else
  {
    [v6 currentTime];
  }

  [(RCMainControllerHelper *)self _jumpToTargetTime:v7 + a3];
}

- (void)_jumpToTargetTime:(double)a3
{
  v5 = [(RCMainControllerHelper *)self timeController];
  v6 = [(RCMainControllerHelper *)self audioRecorder];
  v7 = v6;
  v10 = 0;
  v11 = 0;
  if (v6 && [v6 recording] && objc_msgSend(v7, "monitorRecordingTime:duration:", &v11, &v10))
  {
    RCTimeRangeMake();
  }

  else
  {
    [v5 allowedTimeRange];
  }

  if (v8 <= a3)
  {
    v8 = a3;
    if (v9 < a3)
    {
      v8 = v9;
    }
  }

  [v5 setTargetTime:v8];
  [(RCMainControllerHelper *)self _reconcileAudioStateWithApplicationState];
}

- (void)endDescriptionViewTextEditing
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"RecordingDescriptionViewShouldEndEditingNotificationName" object:0];
}

- (void)enterTrimMode
{
  v3 = [(RCMainControllerHelper *)self audioRecorder];
  if (!v3)
  {
    v4 = +[VMAudioService sharedInstance];
    v5 = [(RCMainControllerHelper *)self uuidOfPlayingOrSelectedRecording];
    v3 = [v4 recorderForRecordingID:v5];
  }

  if ([v3 recording])
  {
    if ([v3 stopRecording])
    {
      v6 = [NSString stringWithUTF8String:"recording"];
      v8 = v3;
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
  v3 = [(RCMainControllerHelper *)self delegate];
  [(RCMainControllerHelper *)self currentDuration];
  [v3 recordingDurationUpdated:?];

  [(RCMainControllerHelper *)self _setIsInSelectionEditingMode:0 forInsertMode:0];
  v4 = [(RCMainControllerHelper *)self currentUserActivity];
  [v4 setSubActivityType:0];

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

- (void)cancelTrimModeWithDismissal:(BOOL)a3
{
  v3 = a3;
  if ([(RCUndoTarget *)self->_trimModeUndoTarget sizeOfUndoStack]>= 1)
  {
    v5 = [(RCMainControllerHelper *)self audioRecorder];
    if ([v5 restoreMarkedVersion])
    {
      [(RCMainControllerHelper *)self _reloadWaveformDataSourceAndPreviewAssetWithInitialTime:0.0];
      [(RCMainControllerHelper *)self _clearTrimModeUndoStack];
      v6 = [(RCMainControllerHelper *)self timeController];
      [v6 setTargetTime:0.0];
    }

    else
    {
      v6 = OSLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1001BB374(self);
      }
    }
  }

  if (v3)
  {
    [(RCMainControllerHelper *)self exitTrimMode];
  }
}

- (void)doneButtonShouldSaveAsNew:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCMainControllerHelper *)self audioRecorder];
  v6 = [v5 isNewRecording];

  [(RCMainControllerHelper *)self setShouldSaveAsNew:v3 & (v6 ^ 1)];
}

- (void)exitEditMode
{
  v3 = [(RCMainControllerHelper *)self undoManager];
  [v3 removeAllActionsWithTarget:self->_editModeUndoTarget];

  [(RCUndoTarget *)self->_editModeUndoTarget setSizeOfUndoStack:0];
  [(RCMainControllerHelper *)self _clearTrimModeUndoStack];
  v7 = [(RCMainControllerHelper *)self audioRecorder];
  [CATransaction setFrameStallSkipRequest:1];
  v4 = v7;
  if (v7)
  {
    v5 = [v7 finishEditing:{-[RCMainControllerHelper shouldSaveAsNew](self, "shouldSaveAsNew")}];
    if (v5)
    {
      v6 = [(RCMainControllerHelper *)self delegate];
      [v6 finishedEditingWithNewRecordingUUID:v5];
    }

    [(RCMainControllerHelper *)self setAudioRecorder:0];

    v4 = v7;
  }
}

- (void)performTrimByKeepingSelectedRangeForRecordingWithUUID:(id)a3 source:(id)a4
{
  v5 = a3;
  [(RCMainControllerHelper *)self _selectedTimeRange];
  v7 = v6;
  v9 = v8;
  if ([(RCMainControllerHelper *)self _isSelectionTrimmableByKeepingRange:?])
  {
    v10 = +[VMAudioService sharedInstance];
    v11 = [(RCMainControllerHelper *)self audioRecorder];
    v12 = v11;
    if (!v11 || ([v11 recordingID], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v5, "isEqualToString:", v13), v13, (v14 & 1) == 0))
    {
      v15 = [v10 recorderForRecordingID:v5];

      [(RCMainControllerHelper *)self setAudioRecorder:v15];
      v12 = v15;
    }

    [(RCMainControllerHelper *)self _markCurrentFileVersionIfNecessary];
    v23 = 0;
    v16 = [v12 trimRecording:&v23 error:{v7, v9}];
    v17 = v23;
    if (v16)
    {
      [(RCMainControllerHelper *)self _refreshAfterEditingOperation:v5];
      v18 = [(RCMainControllerHelper *)self delegate];
      [(RCMainControllerHelper *)self _adjustCurrentTrimOperationUndoCount:1];
      v19 = [v18 undoManager];
      trimModeUndoTarget = self->_trimModeUndoTarget;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000B70A0;
      v22[3] = &unk_10028C488;
      v22[4] = self;
      [v19 registerUndoWithTarget:trimModeUndoTarget handler:v22];
      v21 = [(RCMainControllerHelper *)self _undoActionNameForTrimMode:0 isUndo:1];
      [v19 setActionName:v21];

      [v18 enableUndoFirstResponder];
    }

    else
    {
      v18 = OSLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
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

- (void)performTrimByDeletingSelectedRangeForRecordingWithUUID:(id)a3 source:(id)a4
{
  v5 = a3;
  [(RCMainControllerHelper *)self _selectedTimeRange];
  v7 = v6;
  v9 = v8;
  if ([(RCMainControllerHelper *)self _isSelectionTrimmableByDeletingRange:?])
  {
    v10 = +[VMAudioService sharedInstance];
    v11 = [(RCMainControllerHelper *)self audioRecorder];
    v12 = v11;
    if (!v11 || ([v11 recordingID], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v5, "isEqualToString:", v13), v13, (v14 & 1) == 0))
    {
      v15 = [v10 recorderForRecordingID:v5];

      [(RCMainControllerHelper *)self setAudioRecorder:v15];
      v12 = v15;
    }

    [(RCMainControllerHelper *)self _markCurrentFileVersionIfNecessary];
    v23 = 0;
    v16 = [v12 cutRecording:&v23 error:{v7, v9}];
    v17 = v23;
    if (v16)
    {
      [(RCMainControllerHelper *)self _refreshAfterEditingOperation:v5];
      v18 = [(RCMainControllerHelper *)self delegate];
      [(RCMainControllerHelper *)self _adjustCurrentTrimOperationUndoCount:1];
      v19 = [v18 undoManager];
      trimModeUndoTarget = self->_trimModeUndoTarget;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000B72DC;
      v22[3] = &unk_10028C488;
      v22[4] = self;
      [v19 registerUndoWithTarget:trimModeUndoTarget handler:v22];
      v21 = [(RCMainControllerHelper *)self _undoActionNameForTrimMode:1 isUndo:1];
      [v19 setActionName:v21];

      [v18 enableUndoFirstResponder];
    }

    else
    {
      v18 = OSLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
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

- (void)openForModifyRecordingWithUUID:(id)a3 withSubActivityType:(int64_t)a4
{
  v12 = a3;
  v6 = [RCRecordingDisplayModel recordingDisplayModelForUUID:?];
  v7 = v6;
  if (v6 && ([v6 recentlyDeleted] & 1) == 0)
  {
    v8 = +[VMAudioService sharedInstance];
    v9 = [v8 recorderForRecordingID:v12];
    [(RCMainControllerHelper *)self setAudioRecorder:v9];
    v10 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor compositionLoadedForSavedRecordingUUID:v12];
    [(RCMainControllerHelper *)self setCurrentComposition:v10];

    v11 = [(RCMainControllerHelper *)self currentComposition];
    [(RCMainControllerHelper *)self _transitionToActivityType:3 toSubType:a4 withDisplayModel:v7 waveformDataSource:0 composition:v11];
  }
}

- (void)_enterTrimMode
{
  [(RCMainControllerHelper *)self _setIsInSelectionEditingMode:1 forInsertMode:0];
  v3 = [(RCMainControllerHelper *)self currentUserActivity];
  [v3 setSubActivityType:1];

  [(RCMainControllerHelper *)self _adjustCurrentTrimOperationUndoCount:0];
}

- (void)_resetSelectedTimeRangeToFullDuration
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained waveformViewController];
  [v4 resetSelectedTimeRangeToFullDuration];

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 overviewWaveformViewController];
  [v6 resetSelectedTimeRangeToFullDuration];

  v13 = objc_loadWeakRetained(&self->_delegate);
  v7 = [v13 waveformViewController];
  [v7 selectedTimeRange];
  v9 = v8;
  v11 = v10;
  v12 = [(RCMainControllerHelper *)self timeController];
  [v12 setAllowedTimeRange:{v9, v11}];
}

- (void)_setIsInSelectionEditingMode:(BOOL)a3 forInsertMode:(BOOL)a4
{
  if (byte_1002E8C90 != a3)
  {
    byte_1002E8C90 = a3;
    if (a3)
    {
      [(RCMainControllerHelper *)self _beginSelectionEditingModeForInsertMode:a4];
    }

    else
    {
      [(RCMainControllerHelper *)self _endSelectionEditingMode:a3];
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
  v4 = [WeakRetained waveformViewController];
  waveformViewController = self->_waveformViewController;
  self->_waveformViewController = v4;

  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = [v6 overviewWaveformViewController];
  overviewWaveformViewController = self->_overviewWaveformViewController;
  self->_overviewWaveformViewController = v7;

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

- (void)_beginSelectionEditingModeForInsertMode:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained waveformViewController];
  waveformViewController = self->_waveformViewController;
  self->_waveformViewController = v6;

  v8 = objc_loadWeakRetained(&self->_delegate);
  v9 = [v8 overviewWaveformViewController];
  overviewWaveformViewController = self->_overviewWaveformViewController;
  self->_overviewWaveformViewController = v9;

  [(RCAVWaveformViewController *)self->_waveformViewController showSelectionOverlayAndEnableInsertMode:v3];
  v11 = self->_overviewWaveformViewController;

  [(RCAVWaveformViewController *)v11 showSelectionOverlayAndEnableInsertMode:v3];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_selectedTimeRange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained waveformViewController];
  waveformViewController = self->_waveformViewController;
  self->_waveformViewController = v4;

  v6 = self->_waveformViewController;

  [(RCAVWaveformViewController *)v6 selectedTimeRange];
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (void)_refreshAfterEditingOperation:(id)a3
{
  recordingsModelInteractor = self->_recordingsModelInteractor;
  v5 = a3;
  v6 = [(RCRecordingsModelInteractor *)recordingsModelInteractor compositionLoadedForSavedRecordingUUID:v5];
  [(RCMainControllerHelper *)self setCurrentComposition:v6];

  [(RCMainControllerHelper *)self _updateWillMigrateFromSingleLayerToMultiLayerForRecordingID:v5];
  [(RCAVWaveformViewController *)self->_waveformViewController nextPreviewStartTime];
  [(RCMainControllerHelper *)self _reloadWaveformDataSourceAndPreviewAssetWithInitialTime:?];

  [(RCMainControllerHelper *)self _resetSelectedTimeRangeToFullDuration];
}

- (void)_markCurrentFileVersionIfNecessary
{
  if (![(RCUndoTarget *)self->_trimModeUndoTarget sizeOfUndoStack])
  {
    v3 = [(RCMainControllerHelper *)self audioRecorder];
    [v3 markCurrentVersion];
  }
}

- (BOOL)_isSelectionTrimmableByKeepingRange:(id)a3
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

- (BOOL)_isSelectionTrimmableByDeletingRange:(id)a3
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

- (void)_reloadWaveformDataSourceAndPreviewAssetWithInitialTime:(double)a3
{
  v5 = [(RCMainControllerHelper *)self currentComposition];
  [v5 composedDuration];
  v7 = v6;

  if (v7 <= a3)
  {
    a3 = v7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [(RCMainControllerHelper *)self currentComposition];
  [WeakRetained reloadWaveformsFromComposition:v9];

  v10 = [(RCMainControllerHelper *)self timeController];
  [v10 setTargetTime:a3];
}

- (void)setFavorite:(BOOL)a3 forRecordingWithUUID:(id)a4
{
  v4 = a3;
  v8 = a4;
  v6 = a4;
  v7 = [NSArray arrayWithObjects:&v8 count:1];

  [(RCMainControllerHelper *)self setFavorite:v4 forRecordingsWithUUIDs:v7, v8];
}

- (void)setFavorite:(BOOL)a3 forRecordingsWithUUIDs:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(RCMainControllerHelper *)self endDescriptionViewTextEditing];
  v7 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor setFavorite:v4 forUUIDs:v6];

  [(RCMainControllerHelper *)self _registerUndoForSetFavorite:v4 changedUUIDs:v7];
}

- (void)_registerUndoForSetFavorite:(BOOL)a3 changedUUIDs:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(RCMainControllerHelper *)self undoManager];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000B7D14;
  v20 = &unk_10028C4D0;
  v22 = v4;
  v8 = v6;
  v21 = v8;
  [v7 registerUndoWithTarget:self handler:&v17];
  LODWORD(self) = [v7 isUndoing];
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

  if ([v7 isUndoing])
  {
    v13 = @"ADD_TO_FAVORITES_ACTION";
  }

  else
  {
    v13 = @"REMOVE_FROM_FAVORITES_ACTION";
  }

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:v13 value:&stru_100295BB8 table:0];

  if (v4)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  [v7 setActionName:v16];
}

- (void)toggleFavoriteForUUID:(id)a3
{
  v4 = a3;
  [(RCMainControllerHelper *)self setFavorite:[(RCMainControllerHelper *)self isFavoriteForUUID:v4]^ 1 forRecordingWithUUID:v4];
}

- (id)compositionForUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RCMainControllerHelper *)self currentComposition];
    v6 = [v5 savedRecordingUUID];
    v7 = [v6 isEqualToString:v4];

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor compositionLoadedForSavedRecordingUUID:v4];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)playbackSettingsForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingDisplayModel *)self->_currentRecordingDisplayModel UUID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor recordingForUUID:v4];
    v8 = [v7 enhanced];
    v9 = [v7 isSkipSilenceEnabled];
    [v7 playRate];
    v11 = v10;
    [v7 layerMix];
    v13 = v12;
    v14 = [(RCMainControllerHelper *)self currentComposition];
    v15 = [v14 hasMultipleTracks];

    v16 = [(RCMainControllerHelper *)self currentComposition];
    v17 = [v16 hasSpatialAudio];

    v18 = [v7 isSpeechIsolatorEnabled];
    [v7 speechIsolatorValue];
    v20 = v19;
    v21 = [RCPlaybackSettings alloc];
    LODWORD(v22) = v11;
    LODWORD(v23) = v13;
    LODWORD(v24) = v20;
    v25 = [(RCPlaybackSettings *)v21 initWithUUID:v4 enhanced:v8 silenceRemoved:v9 playbackSpeed:v15 layerMix:v17 hasMultipleTracks:v18 isSpatialRecording:v22 speechIsolatorEnabled:v23 speechIsolatorValue:v24];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)isSilenceRemovedForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainControllerHelper *)self audioPlayer];
  v6 = [v5 recordingID];

  if ([v4 isEqualToString:v6])
  {
    v7 = [(RCMainControllerHelper *)self audioPlayer];
    v8 = [v7 silenceRemoverEnabled];
  }

  else
  {
    v9 = OSLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BB504();
    }

    v8 = 0;
  }

  return v8;
}

- (double)playbackSpeedForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainControllerHelper *)self audioPlayer];
  v6 = [v5 recordingID];

  if ([v4 isEqualToString:v6])
  {
    v7 = [(RCMainControllerHelper *)self audioPlayer];
    [v7 rate];
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

- (double)layerMixForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainControllerHelper *)self audioPlayer];
  v6 = [v5 recordingID];

  if ([v4 isEqualToString:v6])
  {
    v7 = [(RCMainControllerHelper *)self audioPlayer];
    [v7 layerMix];
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

- (BOOL)isSpeechIsolatorEnabledForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainControllerHelper *)self audioPlayer];
  v6 = [v5 recordingID];

  if ([v4 isEqualToString:v6])
  {
    v7 = [(RCMainControllerHelper *)self audioPlayer];
    v8 = [v7 speechIsolatorEnabled];
  }

  else
  {
    v9 = OSLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BB660();
    }

    v8 = 0;
  }

  return v8;
}

- (float)speechIsolatorForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainControllerHelper *)self audioPlayer];
  v6 = [v5 recordingID];

  if ([v4 isEqualToString:v6])
  {
    v7 = [(RCMainControllerHelper *)self audioPlayer];
    [v7 speechIsolatorValue];
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
  v2 = [(RCMainControllerHelper *)self currentComposition];
  v3 = [v2 hasSpatialAudio];

  return v3;
}

- (void)setRemoveSilence:(BOOL)a3 forUUID:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(RCMainControllerHelper *)self audioPlayer];
  v8 = [v7 recordingID];

  if ([v6 isEqualToString:v8])
  {
    v9 = [(RCMainControllerHelper *)self audioPlayer];
    [v9 setSilenceRemoverEnabled:v4];

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

- (void)setPlaybackSpeed:(double)a3 forUUID:(id)a4
{
  v6 = a4;
  v7 = [(RCMainControllerHelper *)self audioPlayer];
  v8 = [v7 recordingID];

  if ([v6 isEqualToString:v8])
  {
    v10 = [(RCMainControllerHelper *)self audioPlayer];
    v9 = a3;
    *&v11 = v9;
    [v10 setRate:v11];

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

- (void)setLayerMix:(double)a3 forUUID:(id)a4
{
  v6 = a4;
  v7 = [(RCMainControllerHelper *)self audioPlayer];
  v8 = [v7 recordingID];

  if ([v6 isEqualToString:v8])
  {
    +[RCApplicationModel sharedApplicationModel];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B8720;
    v14 = v13[3] = &unk_10028C4F8;
    v15 = v6;
    v16 = a3;
    v9 = v14;
    [v9 performBlockAndWait:v13];
    v11 = [(RCMainControllerHelper *)self audioPlayer];
    v10 = a3;
    *&v12 = v10;
    [v11 setLayerMix:v12];

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

- (void)setLooping:(BOOL)a3 forUUID:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(RCMainControllerHelper *)self audioPlayer];
  v8 = [v7 recordingID];
  if ([v6 isEqualToString:v8])
  {
    [v7 setLooping:v4];
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

- (void)setSpeechIsolatorEnabled:(BOOL)a3 forUUID:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(RCMainControllerHelper *)self audioPlayer];
  v8 = [v7 recordingID];

  if ([v6 isEqualToString:v8])
  {
    v9 = [(RCMainControllerHelper *)self audioPlayer];
    [v9 setSpeechIsolatorEnabled:v4];

    [(RCMainControllerHelper *)self _reconcileAudioStateWithApplicationState];
    if (!v4)
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

  if (v4)
  {
LABEL_7:
    v11 = +[RecorderAppDelegate sharedAppDelegate];
    v12 = [v11 dependencyContainer];
    v13 = [v12 analyticsManager];
    [v13 userEnabledStudioVoice];
  }

LABEL_8:
}

- (void)setSpeechIsolatorValue:(float)a3 forUUID:(id)a4
{
  v6 = a4;
  v7 = [(RCMainControllerHelper *)self audioPlayer];
  v8 = [v7 recordingID];

  if ([v6 isEqualToString:v8])
  {
    v9 = [(RCMainControllerHelper *)self audioPlayer];
    *&v10 = a3;
    [v9 setSpeechIsolatorValue:v10];

    [(RCMainControllerHelper *)self _reconcileAudioStateWithApplicationState];
    v11 = +[RecorderAppDelegate sharedAppDelegate];
    v12 = [v11 dependencyContainer];
    v13 = [v12 analyticsManager];
    [v13 userEditedStudioVoiceSlider];
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

- (void)shareRecordingsWithUUIDs:(id)a3 inViewController:(id)a4 source:(id)a5 isShareButton:(BOOL)a6 completionWithItemsHandler:(id)a7
{
  v11 = a4;
  v12 = a5;
  v30 = a7;
  v13 = self->_recordingsModelInteractor;
  v14 = [(RCRecordingsModelInteractor *)v13 recordingsForUUIDs:a3];
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
  v23 = [v22 shouldShareUsingRCShareMemoViewController];

  if (v23)
  {
    v24 = v30;
    LOBYTE(v28) = a6;
    [RCShareMemoViewController presentInViewController:v11 source:v12 compositions:v15 ignoringInteraction:1 shouldContinuePreparingBlock:0 preparedToPresentBlock:0 isShareButton:v28 completionWithItemsHandler:v30];
  }

  else
  {
    v25 = [VMActivityItemsConfigurationHelper activityItemsConfigurationForCompositions:v15];
    v26 = [[UIActivityViewController alloc] initWithActivityItemsConfiguration:v25];
    v24 = v30;
    [v26 setCompletionWithItemsHandler:v30];
    [v11 setModalPresentationStyle:7];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [v26 popoverPresentationController];
        [v27 setBarButtonItem:v12];
      }
    }

    [v11 presentViewController:v26 animated:1 completion:0];
  }
}

- (id)eraseAndConfirmWithUUIDs:(id)a3 source:(id)a4 collectionViewController:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 count];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"ERASE_RECORDINGS" value:&stru_100295BB8 table:0];
  v14 = [NSString localizedStringWithFormat:v13, v11];

  v15 = v14;
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"DELETE_FOREVER" value:&stru_100295BB8 table:0];

  v18 = +[RCRecorderStyleProvider sharedStyleProvider];
  v19 = [v18 presentsRecoverConfirmationAsAlert];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000B8F30;
  v25[3] = &unk_10028C520;
  v26 = v9;
  v27 = self;
  v28 = v8;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000B8F74;
  v24[3] = &unk_10028B378;
  v24[4] = self;
  v20 = v8;
  v21 = v9;
  v22 = [(RCMainControllerHelper *)self _alertControllerWithTitle:v15 message:0 isDestructive:1 preferredStyle:v19 source:v10 handler:v25 actionTitle:v17 cancelHandler:v24];

  return v22;
}

- (id)eraseAllRecordingsAndConfirmWithSource:(id)a3
{
  v4 = a3;
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v6 = [v5 presentsRecoverConfirmationAsAlert];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"ERASE_ALL_MEMOS_CONFIRMATION_ALERT_TITLE" value:&stru_100295BB8 table:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B90EC;
  v13[3] = &unk_10028B378;
  v13[4] = self;
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"DELETE_FOREVER" value:&stru_100295BB8 table:0];
  v11 = [(RCMainControllerHelper *)self _alertControllerWithTitle:v8 message:0 isDestructive:1 preferredStyle:v6 source:v4 handler:v13 actionTitle:v10 cancelHandler:0];

  return v11;
}

- (void)_eraseRecordingsWithUUIDs:(id)a3
{
  v4 = a3;
  [(RCMainControllerHelper *)self _stopForUUIDs:v4];
  [(RCMainControllerHelper *)self _removeRecordingsObservationsForUUIDs:v4];
  [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor eraseRecordingsWithUUIDs:v4];
  v5 = [(RCMainControllerHelper *)self delegate];
  [v5 userDidEraseRecordingsWithUUIDs:v4];

  v7 = [(RCMainControllerHelper *)self delegate];
  v6 = [v7 undoManager];
  [v6 removeAllActionsWithTarget:self];
}

- (id)deleteWithUUIDs:(id)a3 source:(id)a4 showInfo:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  [(RCMainControllerHelper *)self _deleteRecordingsWithUUIDs:v7 isRecover:0];
  v8 = +[NSUserDefaults sharedSettingsUserDefaults];
  v9 = v8;
  v10 = 0;
  if (v5)
  {
    if (v8)
    {
      v11 = [v8 rc_recentlyDeletedWindow];
      v12 = [v9 rc_deletionIsImmediate];
      v13 = +[NSUserDefaults standardUserDefaults];
      v14 = [v13 BOOLForKey:@"kRCDeleteInformationAlertAlreadyShownKey"];

      v10 = 0;
      if ((v12 & 1) == 0 && (v14 & 1) == 0)
      {
        v15 = [v7 count];
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
        if (v11 > 6)
        {
          if (v11 == 7)
          {
            v21 = @"DELETE_MEMO_INFORMATION_ALERT_MESSAGE_SEVEN_DAYS";
            goto LABEL_17;
          }

          if (v11 == 30)
          {
            v21 = @"DELETE_MEMO_INFORMATION_ALERT_MESSAGE_THIRTY_DAYS";
            goto LABEL_17;
          }
        }

        else
        {
          if (v11 == -1)
          {
            v21 = @"DELETE_MEMO_INFORMATION_ALERT_MESSAGE_FOREVER";
            goto LABEL_17;
          }

          if (v11 == 1)
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
  v3 = [(RCMainControllerHelper *)self delegate];
  v4 = [v3 undoManager];

  [v4 removeAllActionsWithTarget:self];
}

- (id)restoreRecordingsWithUUIDs:(id)a3 isRecover:(BOOL)a4 source:(id)a5 force:(BOOL)a6 collectionViewController:(id)a7
{
  if (a6)
  {
    [(RCMainControllerHelper *)self _restoreRecordingsWithUUIDs:a3 isRecover:a4, a5, a6, a7];
    v7 = 0;
  }

  else
  {
    v7 = [(RCMainControllerHelper *)self _restoreRecordingsWithUUIDs:a3 isRecover:a4 source:a5 collectionViewController:a7];
  }

  return v7;
}

- (void)deleteRecordingCanceled
{
  v2 = [(RCMainControllerHelper *)self delegate];
  [v2 userDidCancelDeleteRecording];
}

- (void)_deleteRecordingsWithUUIDs:(id)a3 isRecover:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[NSUserDefaults sharedSettingsUserDefaults];
  v8 = v7;
  if (v7 && [v7 rc_deletionIsImmediate])
  {
    [(RCMainControllerHelper *)self _stopForUUIDs:v6];
    [(RCMainControllerHelper *)self _removeRecordingsObservationsForUUIDs:v6];
    [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor eraseRecordingsWithUUIDs:v6];
    v9 = [(RCMainControllerHelper *)self delegate];
    [v9 userDidEraseRecordingsWithUUIDs:v6];
  }

  else
  {
    [(RCMainControllerHelper *)self _stopForUUIDs:v6];
    [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor deleteRecordingsWithUUIDs:v6];
    v10 = [(RCMainControllerHelper *)self delegate];
    [v10 userDidDeleteRecordingsWithUUIDs:v6];

    v11 = [(RCMainControllerHelper *)self delegate];
    v12 = [v11 undoManager];

    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1000B9770;
    v20 = &unk_10028C548;
    v21 = v6;
    v22 = v4;
    [v12 registerUndoWithTarget:self handler:&v17];
    v13 = [NSBundle mainBundle:v17];
    v14 = v13;
    if (v4)
    {
      v15 = @"RECOVER_RECORDING_ACTION";
    }

    else
    {
      v15 = @"DELETE_RECORDING_ACTION";
    }

    v16 = [v13 localizedStringForKey:v15 value:&stru_100295BB8 table:0];

    [v12 setActionName:v16];
  }
}

- (void)_restoreRecordingsWithUUIDs:(id)a3 isRecover:(BOOL)a4
{
  v4 = a4;
  v6 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor restoreRecordingsWithUUIDs:a3];
  v7 = [(RCMainControllerHelper *)self delegate];
  [v7 userDidRecoverRecordingsWithUUIDs:v6];

  if ([v6 count])
  {
    v8 = [(RCMainControllerHelper *)self delegate];
    v9 = [v8 undoManager];

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000B9904;
    v17 = &unk_10028C548;
    v18 = v6;
    v19 = v4;
    [v9 registerUndoWithTarget:self handler:&v14];
    v10 = [NSBundle mainBundle:v14];
    v11 = v10;
    if (v4)
    {
      v12 = @"RECOVER_RECORDING_ACTION";
    }

    else
    {
      v12 = @"DELETE_RECORDING_ACTION";
    }

    v13 = [v10 localizedStringForKey:v12 value:&stru_100295BB8 table:0];

    [v9 setActionName:v13];
  }
}

- (id)_restoreRecordingsWithUUIDs:(id)a3 isRecover:(BOOL)a4 source:(id)a5 collectionViewController:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = [v10 count];
  v14 = +[NSBundle mainBundle];
  v15 = v14;
  if (v8)
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
  v20 = [v19 presentsRecoverConfirmationAsAlert];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000B9ADC;
  v25[3] = &unk_10028C570;
  v26 = v11;
  v27 = self;
  v28 = v10;
  v29 = v8;
  v21 = v10;
  v22 = v11;
  v23 = [(RCMainControllerHelper *)self _alertControllerWithTitle:0 message:0 isDestructive:!v8 preferredStyle:v20 source:v12 handler:v25 actionTitle:v18 cancelHandler:0];

  return v23;
}

- (id)deleteFolder:(id)a3 source:(id)a4 completionBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = +[RCApplicationModel sharedApplicationModel];
  v12 = [v11 playableRecordingsForFolder:v10];
  v13 = [v12 na_map:&stru_10028C5B0];

  v14 = [_TtC10VoiceMemos23RCUserFolderRestoreInfo alloc];
  v15 = [v10 name];
  v16 = -[RCUserFolderRestoreInfo initWithName:rank:recordingUUIDs:](v14, "initWithName:rank:recordingUUIDs:", v15, [v10 rank], v13);

  if ([v13 count])
  {
    v17 = [(RCMainControllerHelper *)self _presentFolderDeletionConfirmationForFolder:v10 source:v8 completionBlock:v9];
  }

  else
  {
    [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor deleteUserFolder:v10];

    if (v9)
    {
      v9[2](v9, 1);
    }

    v17 = 0;
  }

  [(RCMainControllerHelper *)self _registerUndoDeleteFolder:v16];

  return v17;
}

- (void)_registerUndoDeleteFolder:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults sharedSettingsUserDefaults];
  v6 = v5;
  if (!v5 || ([v5 rc_deletionIsImmediate] & 1) == 0)
  {
    v7 = [(RCMainControllerHelper *)self undoManager];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000B9DD8;
    v14 = &unk_10028C1D8;
    v15 = v4;
    v16 = self;
    [v7 registerUndoWithTarget:self handler:&v11];

    v8 = [(RCMainControllerHelper *)self undoManager:v11];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"DELETE_FOLDER_ACTION" value:&stru_100295BB8 table:0];
    [v8 setActionName:v10];
  }
}

- (void)_deleteFolderWithoutAlert:(id)a3
{
  v4 = a3;
  v5 = +[RCApplicationModel sharedApplicationModel];
  v6 = [v5 playableRecordingsForFolder:v4];
  v10 = [v6 na_map:&stru_10028C5D0];

  v7 = [_TtC10VoiceMemos23RCUserFolderRestoreInfo alloc];
  v8 = [v4 name];
  v9 = -[RCUserFolderRestoreInfo initWithName:rank:recordingUUIDs:](v7, "initWithName:rank:recordingUUIDs:", v8, [v4 rank], v10);

  [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor deleteUserFolder:v4];
  [(RCMainControllerHelper *)self _registerUndoDeleteFolder:v9];
}

- (void)_restoreFolder:(id)a3
{
  v4 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor restoreFolder:a3];
  if (v4)
  {
    v5 = [(RCMainControllerHelper *)self undoManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000BA094;
    v9[3] = &unk_10028C488;
    v10 = v4;
    [v5 registerUndoWithTarget:self handler:v9];

    v6 = [(RCMainControllerHelper *)self undoManager];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"DELETE_FOLDER_ACTION" value:&stru_100295BB8 table:0];
    [v6 setActionName:v8];
  }
}

- (id)_presentFolderDeletionConfirmationForFolder:(id)a3 source:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor playableCountForFolder:v8];
  if (v11)
  {
    v12 = v11;
    v13 = +[NSUserDefaults sharedSettingsUserDefaults];
    v25 = v13;
    v26 = v9;
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
    v30 = v8;
    v31 = v10;
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"OK" value:&stru_100295BB8 table:0];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000BA3A0;
    v27[3] = &unk_10028B7B0;
    v28 = v31;
    v9 = v26;
    v23 = [(RCMainControllerHelper *)self _alertControllerWithTitle:v17 message:v20 isDestructive:1 preferredStyle:1 source:v26 handler:v29 actionTitle:v22 cancelHandler:v27];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)_addCommandTarget:(id)a3 withHandler:(id)a4
{
  v7 = a3;
  v6 = [v7 addTargetWithHandler:a4];
  if (v6)
  {
    [(NSMapTable *)self->_commandTargets setObject:v6 forKey:v7];
  }
}

- (void)_updateRemoteControlState:(int64_t)a3
{
  if (self->_remoteControlState != a3)
  {
    self->_remoteControlState = a3;
    [(RCMainControllerHelper *)self _teardownRemoteControlCommands];
    if (a3)
    {
      v5 = +[NSMapTable weakToStrongObjectsMapTable];
      commandTargets = self->_commandTargets;
      self->_commandTargets = v5;

      if (a3 == 2)
      {

        [(RCMainControllerHelper *)self __setupRemoteControlCommandsForRecordingForeground];
      }

      else if (a3 == 1)
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
  v4 = [(RCMainControllerHelper *)self currentRecordingDisplayModel];
  v5 = [v4 title];
  v6 = v5;
  if (!v4 || !self->_remoteControlState || !v5)
  {
    [v3 setNowPlayingInfo:0];
    [v3 setPlaybackState:0];
    goto LABEL_19;
  }

  v7 = [(RCMainControllerHelper *)self audioPlayer];
  v8 = [(RCMainControllerHelper *)self timeController];
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

    [v4 duration];
    v12 = v13;
    if ([v7 playing])
    {
      [v7 playerTime];
    }

    else
    {
      [v8 currentTime];
    }

    v11 = v14;
    [v7 rate];
    v10 = v16;
    if ([v7 playing])
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

  if ([v7 playing] && objc_msgSend(v7, "silenceRemoverEnabled"))
  {
    [(RCMainControllerHelper *)self _startNowPlayingUpdateTimerWithPlaybackTime:v11 playbackRate:v10];
  }

LABEL_19:
}

- (void)_startNowPlayingUpdateTimerWithPlaybackTime:(double)a3 playbackRate:(double)a4
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
  v13[1] = *&a3;
  v13[2] = *&a4;
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
  v4 = [v3 pauseCommand];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000BAE90;
  v28[3] = &unk_10028C648;
  objc_copyWeak(&v29, location);
  [(RCMainControllerHelper *)self _addCommandTarget:v4 withHandler:v28];

  v5 = [v3 playCommand];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000BAF04;
  v26[3] = &unk_10028C648;
  objc_copyWeak(&v27, location);
  [(RCMainControllerHelper *)self _addCommandTarget:v5 withHandler:v26];

  v6 = [v3 togglePlayPauseCommand];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000BAF8C;
  v24[3] = &unk_10028C648;
  objc_copyWeak(&v25, location);
  [(RCMainControllerHelper *)self _addCommandTarget:v6 withHandler:v24];

  v7 = [v3 skipBackwardCommand];
  [v7 setPreferredIntervals:&off_10029AC38];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000BB000;
  v22[3] = &unk_10028C648;
  objc_copyWeak(&v23, location);
  [(RCMainControllerHelper *)self _addCommandTarget:v7 withHandler:v22];
  v8 = [v3 skipForwardCommand];
  [v8 setPreferredIntervals:&off_10029AC50];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000BB090;
  v20[3] = &unk_10028C648;
  objc_copyWeak(&v21, location);
  [(RCMainControllerHelper *)self _addCommandTarget:v8 withHandler:v20];
  v9 = [v3 seekBackwardCommand];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000BB11C;
  v17[3] = &unk_10028C670;
  objc_copyWeak(&v19, location);
  v18 = &off_10029AC38;
  [(RCMainControllerHelper *)self _addCommandTarget:v9 withHandler:v17];

  v10 = [v3 seekForwardCommand];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000BB1B0;
  v14[3] = &unk_10028C670;
  objc_copyWeak(&v16, location);
  v15 = &off_10029AC38;
  [(RCMainControllerHelper *)self _addCommandTarget:v10 withHandler:v14];

  v11 = [v3 changePlaybackPositionCommand];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000BB240;
  v12[3] = &unk_10028C648;
  objc_copyWeak(&v13, location);
  [(RCMainControllerHelper *)self _addCommandTarget:v11 withHandler:v12];

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
  v5 = [v4 pauseCommand];
  [(RCMainControllerHelper *)self _addCommandTarget:v5 withHandler:v3];

  v6 = [v4 togglePlayPauseCommand];
  [(RCMainControllerHelper *)self _addCommandTarget:v6 withHandler:v3];

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

- (void)_sceneDidActivateNotification:(id)a3
{
  if (self->_hasBecomeActive)
  {
    [(RCMainControllerHelper *)self _reconcileAudioStateWithApplicationState];
  }

  self->_hasBecomeActive = 1;
}

- (void)_sceneWillDeactivateNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB640;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)displayLinkDidUpdate:(id)a3 withTimeController:(id)a4
{
  v5 = [(RCMainControllerHelper *)self currentUserActivity:a3];
  if ([v5 activityType] || objc_msgSend(v5, "subActivityType") == 3)
  {
    v6 = [(RCMainControllerHelper *)self audioRecorder];
    v7 = v6;
    if (v6 && [v6 recording])
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
      v8 = [(NSHashTable *)self->_timeObservers allObjects];
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
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
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v13 timeController:self didChangeCurrentTime:v20 didChangeDuration:v19];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v14 = [(RCMainControllerHelper *)self audioPlayer];
      v8 = v14;
      if (v14 && [v14 playing])
      {
        [v8 playerTime];
        [(RCMainControllerHelper *)self setCurrentTime:?];
      }
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (BOOL)_transitionToActivityType:(int64_t)a3 toSubType:(int64_t)a4 withDisplayModel:(id)a5 waveformDataSource:(id)a6 composition:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if ([(RCMainControllerHelper *)self _requiresUUIDForActivityType:a3])
  {
    v15 = [v12 UUID];

    if (!v15)
    {
      goto LABEL_8;
    }
  }

  v16 = [(RCMainControllerHelper *)self currentUserActivity];
  v17 = [v16 activityType];

  v18 = [(RCMainControllerHelper *)self currentUserActivity];
  v19 = [v18 subActivityType];

  if (v17 == 3)
  {
    v20 = [(RCMainControllerHelper *)self currentUserActivity];
    v21 = [v20 subActivityType];

    if (v21 == 1)
    {
      [(RCUndoTarget *)self->_trimModeUndoTarget setShouldEnableSave:1];
    }
  }

  v22 = [(RCMainControllerHelper *)self currentUserActivity];
  v23 = [v22 transitionToActivityType:a3 subType:a4 withDisplayModel:v12];

  if (v23)
  {
    v24 = [[RCUserActivityTypeTransitionInfo alloc] initWithToActivityType:a3 toSubType:a4 fromActivityType:v17 fromSubType:v19 displayModel:v12 waveformDataSource:v13 composition:v14];
    v25 = [(RCMainControllerHelper *)self delegate];
    [v25 didTransitionWithTransitionInfo:v24];

    v26 = 1;
  }

  else
  {
LABEL_8:
    v26 = 0;
  }

  return v26;
}

- (BOOL)_performRecordingEndTransitionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCMainControllerHelper *)self currentUserActivity];
  v6 = [v5 requiresDismissalAtEndOfCapture];

  v7 = [(RCMainControllerHelper *)self delegate];
  v8 = [v7 isQuickRecordingWorkflowDismissal];

  v9 = [RCRecordingDisplayModel recordingDisplayModelForUUID:v4];

  if (v9)
  {
    if ((v6 | v8))
    {
      v10 = 0;
    }

    else
    {
      v10 = 3;
    }

    v11 = [(RCMainControllerHelper *)self currentComposition];
    v12 = [(RCMainControllerHelper *)self _transitionToActivityType:v10 toSubType:0 withDisplayModel:v9 waveformDataSource:0 composition:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_transitionToIdleForItemWithUUID:(id)a3
{
  v4 = [RCRecordingDisplayModel recordingDisplayModelForUUID:a3];
  if (v4)
  {
    if (self->_scrubState == 1)
    {
      v5 = 5;
    }

    else
    {
      v7 = [(RCMainControllerHelper *)self currentUserActivity];
      v8 = [v7 isTrim];

      v5 = v8;
    }

    v9 = [(RCMainControllerHelper *)self currentComposition];
    v6 = [(RCMainControllerHelper *)self _transitionToActivityType:0 toSubType:v5 withDisplayModel:v4 waveformDataSource:0 composition:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_transitionToPlayingBackForItemWithUUID:(id)a3
{
  v4 = [RCRecordingDisplayModel recordingDisplayModelForUUID:a3];
  if (v4)
  {
    v5 = [(RCMainControllerHelper *)self currentComposition];
    v6 = [(RCMainControllerHelper *)self _transitionToActivityType:2 toSubType:0 withDisplayModel:v4 waveformDataSource:0 composition:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)undoManager
{
  v2 = [(RCMainControllerHelper *)self delegate];
  v3 = [v2 undoManager];

  return v3;
}

- (void)_undoCaptureFragment
{
  v3 = [(RCMainControllerHelper *)self audioRecorder];
  if ([v3 undoEditing])
  {
    v4 = [v3 recordingID];
    [(RCMainControllerHelper *)self _refreshAfterEditingOperation:v4];

    v5 = +[NSMutableDictionary dictionary];
    v6 = [(RCMainControllerHelper *)self undoManager];
    editModeUndoTarget = self->_editModeUndoTarget;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000BBDC0;
    v16 = &unk_10028C1D8;
    v17 = self;
    v18 = v5;
    v8 = v5;
    [v6 registerUndoWithTarget:editModeUndoTarget handler:&v13];

    v9 = [(RCMainControllerHelper *)self undoManager:v13];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"TITLE_FOR_OVERDUB_REDO" value:&stru_100295BB8 table:0];
    [v9 setActionName:v11];

    v12 = [(RCMainControllerHelper *)self delegate];
    [v12 enableUndoFirstResponder];
  }
}

- (void)_undoTrim:(int64_t)a3
{
  v5 = [(RCMainControllerHelper *)self audioRecorder];
  if ([v5 undoEditing])
  {
    [(RCMainControllerHelper *)self _adjustCurrentTrimOperationUndoCount:-1];
    v6 = [v5 recordingID];
    [(RCMainControllerHelper *)self _refreshAfterEditingOperation:v6];

    v7 = [(RCMainControllerHelper *)self delegate];
    v8 = [v7 undoManager];

    trimModeUndoTarget = self->_trimModeUndoTarget;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000BBF28;
    v11[3] = &unk_10028C698;
    v11[4] = self;
    v11[5] = a3;
    [v8 registerUndoWithTarget:trimModeUndoTarget handler:v11];
    v10 = [(RCMainControllerHelper *)self _undoActionNameForTrimMode:a3 isUndo:0];
    [v8 setActionName:v10];
  }

  else
  {
    v8 = OSLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001BBA00(self);
    }
  }
}

- (void)_redoTrim:(int64_t)a3
{
  v5 = [(RCMainControllerHelper *)self audioRecorder];
  if ([v5 redoEditing])
  {
    [(RCMainControllerHelper *)self _adjustCurrentTrimOperationUndoCount:1];
    v6 = [v5 recordingID];
    [(RCMainControllerHelper *)self _refreshAfterEditingOperation:v6];

    v7 = [(RCMainControllerHelper *)self delegate];
    v8 = [v7 undoManager];

    trimModeUndoTarget = self->_trimModeUndoTarget;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000BC090;
    v11[3] = &unk_10028C698;
    v11[4] = self;
    v11[5] = a3;
    [v8 registerUndoWithTarget:trimModeUndoTarget handler:v11];
    v10 = [(RCMainControllerHelper *)self _undoActionNameForTrimMode:a3 isUndo:1];
    [v8 setActionName:v10];
  }

  else
  {
    v8 = OSLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001BBA98(self);
    }
  }
}

- (void)_redoCaptureFragmentWithCompositionControllerRedoInfo:(id)a3
{
  v4 = [(RCMainControllerHelper *)self audioRecorder];
  if ([v4 redoEditing])
  {
    v5 = [v4 recordingID];
    [(RCMainControllerHelper *)self _refreshAfterEditingOperation:v5];

    v6 = [(RCMainControllerHelper *)self undoManager];
    editModeUndoTarget = self->_editModeUndoTarget;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000BC1E8;
    v12[3] = &unk_10028C488;
    v12[4] = self;
    [v6 registerUndoWithTarget:editModeUndoTarget handler:v12];

    v8 = [(RCMainControllerHelper *)self undoManager];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"TITLE_FOR_OVERDUB_UNDO" value:&stru_100295BB8 table:0];
    [v8 setActionName:v10];

    v11 = [(RCMainControllerHelper *)self delegate];
    [v11 enableUndoFirstResponder];
  }
}

- (id)_undoActionNameForTrimMode:(int64_t)a3 isUndo:(BOOL)a4
{
  if (a3)
  {
    if (a3 != 1)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v5 = +[NSBundle mainBundle];
    if (a4)
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
    if (a4)
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

- (void)_adjustCurrentTrimOperationUndoCount:(int64_t)a3
{
  trimModeUndoTarget = self->_trimModeUndoTarget;
  if (a3)
  {
    a3 += [(RCUndoTarget *)self->_trimModeUndoTarget sizeOfUndoStack];
  }

  [(RCUndoTarget *)trimModeUndoTarget setSizeOfUndoStack:a3];

  [(RCMainControllerHelper *)self _updateTrimSaveEnabledState];
}

- (void)_clearTrimModeUndoStack
{
  v3 = [(RCMainControllerHelper *)self undoManager];
  [v3 removeAllActionsWithTarget:self->_trimModeUndoTarget];

  [(RCMainControllerHelper *)self _adjustCurrentTrimOperationUndoCount:0];
}

- (void)_updateTrimSaveEnabledState
{
  v3 = [(RCMainControllerHelper *)self delegate];
  [v3 shouldEnableTrimSave:{-[RCMainControllerHelper _shouldEnableTrimSave](self, "_shouldEnableTrimSave")}];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  if (self->_audioProperties == a6)
  {
    v12 = a5;
    v13 = [v12 objectForKeyedSubscript:NSKeyValueChangeOldKey];
    v14 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];

    LOBYTE(v12) = [v13 isEqual:v14];
    if ((v12 & 1) == 0)
    {
      v15 = [(RCMainControllerHelper *)self audioPlayer];
      v16 = v15;
      if (v15 && [v15 playing])
      {
        self->_hasDeferredContentChanges = 1;
      }

      else
      {
        [(RCMainControllerHelper *)self _audioContentOrDurationDidChange:v10];
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = RCMainControllerHelper;
    v11 = a5;
    [(RCMainControllerHelper *)&v17 observeValueForKeyPath:a3 ofObject:v10 change:v11 context:a6];
  }
}

- (void)_addRecordingObservations:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(NSMutableSet *)self->_recordingObservances containsObject:v4]& 1) == 0)
  {
    v5 = OSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BBB30(v4);
    }

    [(NSMutableSet *)self->_recordingObservances addObject:v4];
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

          [v4 addObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v10) options:3 context:{self->_audioProperties, v11}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_removeRecordingObservations:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSMutableSet *)self->_recordingObservances containsObject:v4])
  {
    v5 = OSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BBBC0(v4);
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

          [v4 removeObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v10) context:{self->_audioProperties, v11}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(NSMutableSet *)self->_recordingObservances removeObject:v4];
  }
}

- (void)_removeRecordingsObservationsForUUIDs:(id)a3
{
  v4 = [(RCRecordingsModelInteractor *)self->_recordingsModelInteractor recordingsForUUIDs:a3];
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

- (void)_audioContentOrDurationDidChange:(id)a3
{
  v4 = a3;
  v9 = [RCComposition compositionLoadedForSavedRecording:v4];
  [(RCMainControllerHelper *)self setCurrentComposition:?];
  v5 = [(RCMainControllerHelper *)self delegate];
  [v4 length];
  v7 = v6;

  [v5 recordingDurationUpdated:v7];
  v8 = [(RCMainControllerHelper *)self audioPlayer];
  if ([v8 playing])
  {
    [v8 stopPlaying];
  }
}

- (void)waveformDataSourceDidFinishLoading:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BCABC;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)waveformDataSource:(id)a3 didLoadWaveformSegment:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BCB8C;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)waveformDataSourceRequiresUpdate:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BCC5C;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setAllowedTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
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
  v7 = [(RCMainControllerHelper *)self audioPlayer];
  v8 = v7;
  if (v7)
  {
    [v7 setPlayableRange:{var0, var1}];
  }
}

- (int64_t)timeControllerState
{
  v3 = [(RCMainControllerHelper *)self audioRecorder];
  v4 = v3;
  if (v3 && ([v3 recording] & 1) != 0)
  {
    v5 = 2;
  }

  else
  {
    v6 = [(RCMainControllerHelper *)self audioPlayer];
    v7 = v6;
    if (v6)
    {
      v5 = [v6 playing];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
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
  v5 = [(RCMainControllerHelper *)self audioPlayer];
  if (v5)
  {
    [v5 stopPlaying];
  }

  v3 = [(RCMainControllerHelper *)self audioRecorder];
  v4 = v3;
  if (v3)
  {
    [v3 stopRecording];
  }
}

- (void)addTimeObserver:(id)a3
{
  v4 = a3;
  v5 = [(RCMainControllerHelper *)self timeObservers];
  [v5 addObject:v4];
}

- (void)removeTimeObserver:(id)a3
{
  v4 = a3;
  v5 = [(RCMainControllerHelper *)self timeObservers];
  [v5 removeObject:v4];
}

- (RCActivityWaveformProcessor)activityWaveformProcessor
{
  v2 = [(RCMainControllerHelper *)self audioRecorder];
  v3 = [v2 activityWaveformProcessor];

  return v3;
}

- (_TtC10VoiceMemos19RCLiveTranscription)liveTranscription
{
  v2 = [(RCMainControllerHelper *)self audioRecorder];
  v3 = [v2 liveTranscription];

  return v3;
}

- (void)setTargetTime:(double)a3
{
  self->_targetTime = a3;
  audioPlayer = self->_audioPlayer;
  if (audioPlayer)
  {
    [(VMAudioPlayer *)audioPlayer setPlayerTime:a3];
  }

  if ([(RCMainControllerHelper *)self timeControllerState]!= 2)
  {

    [(RCMainControllerHelper *)self setCurrentTime:a3];
  }
}

- (void)setCurrentRate:(float)a3
{
  self->_currentRate = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSHashTable *)self->_timeObservers allObjects];
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
          *&v11 = a3;
          [v10 timeController:self didChangeRate:v11];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)setCurrentTime:(double)a3
{
  self->_currentTime = a3;
  v5 = [(RCMainControllerHelper *)self delegate];
  v6 = [(RCMainControllerHelper *)self uuidOfPlayingOrSelectedRecording];
  [v5 setCurrentTime:v6 withUUID:a3];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(NSHashTable *)self->_timeObservers allObjects];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 timeController:self didChangeCurrentTime:a3];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)setRecordingError:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_recordingError, a3);
  if (v5)
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
      (*(v7 + 2))(v7, v5);
    }
  }
}

- (double)currentDuration
{
  v3 = [(RCMainControllerHelper *)self audioRecorder];
  v4 = v3;
  if (v3 && [v3 recording])
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
    v6 = [(RCMainControllerHelper *)self currentRecordingDisplayModel];
    [v6 duration];
    v5 = v7;
  }

  return v5;
}

- (void)_checkAudioPlayer:(id)a3
{
  v5 = a3;
  if (![v5 playing])
  {
    [(RCMainControllerHelper *)self setCurrentRate:0.0];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = [(NSHashTable *)self->_timeObservers allObjects];
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
            objc_enumerationMutation(v15);
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

        v17 = [v15 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v17);
    }

    v21 = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
    [(RCMainControllerHelper *)self _transitionToIdleForItemWithUUID:v21];

    [(RCMainControllerHelper *)self _stopDisplayLink];
    if (!self->_hasDeferredContentChanges)
    {
      goto LABEL_37;
    }

    recordingsModelInteractor = self->_recordingsModelInteractor;
    v23 = [v5 recordingID];
    v11 = [(RCRecordingsModelInteractor *)recordingsModelInteractor recordingForUUID:v23];

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
  v7 = [v6 isRunningTest];

  if (v7)
  {
    v8 = +[UIApplication sharedApplication];
    v9 = [v8 delegate];
    [v9 ppt_didStartVoiceMemoPreviewPlayback];
  }

  v10 = [v5 recordingID];
  v11 = [RCRecordingDisplayModel recordingDisplayModelForUUID:v10];

  if (v11)
  {
    v33 = v5;
    [v11 setIsPlaying:1];
    v12 = [(RCMainControllerHelper *)self currentUserActivity];
    v13 = [v12 isTrim];
    if (v13)
    {
      v3 = [(RCMainControllerHelper *)self currentUserActivity];
      v14 = [v3 subActivityType];
    }

    else
    {
      v14 = 0;
    }

    v24 = [(RCMainControllerHelper *)self currentComposition];
    [(RCMainControllerHelper *)self _transitionToActivityType:2 toSubType:v14 withDisplayModel:v11 waveformDataSource:0 composition:v24];

    if (v13)
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
    v26 = [(NSHashTable *)self->_timeObservers allObjects];
    v27 = [v26 countByEnumeratingWithState:&v38 objects:v43 count:16];
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
            objc_enumerationMutation(v26);
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

        v28 = [v26 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v28);
    }

    v5 = v33;
    goto LABEL_36;
  }

LABEL_38:
}

- (void)setAudioPlayer:(id)a3
{
  v5 = a3;
  playerObservance = self->_playerObservance;
  if (playerObservance)
  {
    [(RCKeyPathObservance *)playerObservance remove];
    v7 = self->_playerObservance;
    self->_playerObservance = 0;
  }

  objc_storeStrong(&self->_audioPlayer, a3);
  if (v5)
  {
    v8 = [NSString stringWithUTF8String:"playing"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000BD97C;
    v14 = &unk_10028BA68;
    v15 = self;
    v16 = v5;
    v9 = RCObserveChangesToKeyPath();
    v10 = self->_playerObservance;
    self->_playerObservance = v9;
  }

  [(RCMainControllerHelper *)self _reconcileAudioStateWithApplicationState:v11];
}

- (void)setAudioRecorder:(id)a3
{
  v5 = a3;
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

  objc_storeStrong(&self->_audioRecorder, a3);
  if (self->_audioRecorder)
  {
    objc_initWeak(&location, self);
    v10 = [NSString stringWithUTF8String:"recording"];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1000BDBB0;
    v23 = &unk_10028C6C0;
    objc_copyWeak(&v25, &location);
    v11 = v5;
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
    v16 = [v14 versions];
    v17 = self->_audioVersions;
    self->_audioVersions = v16;

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
  v4 = [v3 defaultSceneDelegate];
  v5 = [v4 isInForeground];
  v6 = [(RCMainControllerHelper *)self isPlaying];
  v7 = [(RCMainControllerHelper *)self isPaused];
  v8 = [(RCMainControllerHelper *)self isRecording];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v3 connectedPlatterSceneDelegates];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v15 = v7;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v16 + 1) + 8 * i) isInAndromeda])
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_11:
    v7 = v15;
  }

  [(RCDisplayLinkManager *)self->_displayLinkManager setPaused:v10];
  if (((v6 | v8 | v5) & 1) == 0)
  {
    v13 = +[VMAudioService sharedInstance];
    [v13 deactivateAudioSession];
  }

  if (v5 & v8)
  {
    v14 = 2;
  }

  else
  {
    v14 = (v6 | v7 & v5) & 1;
  }

  [(RCMainControllerHelper *)self _updateRemoteControlState:v14];
  [(RCMainControllerHelper *)self _updateNowPlayingInfo];
}

- (id)_alertControllerWithTitle:(id)a3 message:(id)a4 isDestructive:(BOOL)a5 preferredStyle:(int64_t)a6 source:(id)a7 handler:(id)a8 actionTitle:(id)a9 cancelHandler:(id)a10
{
  v12 = a5;
  v15 = a8;
  v16 = a9;
  v17 = a10;
  if (a7)
  {
    v18 = a6;
  }

  else
  {
    v18 = 1;
  }

  v19 = [UIAlertController alertControllerWithTitle:a3 message:a4 preferredStyle:v18];
  if (v12)
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  v21 = [UIAlertAction actionWithTitle:v16 style:v20 handler:v15];
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"CANCEL" value:&stru_100295BB8 table:0];
  v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:v17];

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
  v3 = [(RCMainControllerHelper *)self uuidOfPlayingRecording];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(RCMainControllerHelper *)self delegate];
    v5 = [v6 selectedUUID];
  }

  return v5;
}

- (void)_updateWillMigrateFromSingleLayerToMultiLayerForRecordingID:(id)a3
{
  v7 = a3;
  if (RCOverdubRecordingIsEnabled())
  {
    v4 = +[RCApplicationModel sharedApplicationModel];
    v5 = [v4 recordingWithUniqueID:v7];

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