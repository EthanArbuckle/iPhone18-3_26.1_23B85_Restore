@interface RCRecordingViewController
- (BOOL)_compactDisplayStyle;
- (BOOL)accessibilityPerformEscape;
- (BOOL)hasNoTranscribableContent;
- (BOOL)hasShareableComposition;
- (BOOL)hasUnsavedEdits;
- (BOOL)isDisplayingTranscriptView;
- (BOOL)isRecording;
- (BOOL)isSilencing;
- (BOOL)recordingTitleHasBeenEdited;
- (BOOL)shouldHideNavigationBar;
- (BOOL)willRecordIntoTrackTwo;
- (RCRecordingControlDelegate)interactionHandler;
- (RCRecordingViewController)initWithRecordButtonRepository:(id)a3 interactionHandler:(id)a4;
- (RCRecordingViewControllerDelegate)recordingViewControllerDelegate;
- (RCTimeController)activeTimeController;
- (RCWaveformDataSource)waveformDataSource;
- (_TtC10VoiceMemos19RCLiveTranscription)liveTranscription;
- (id)createNewWaveformViewControllerWithDataSource:(id)a3 isOverview:(BOOL)a4 isCompact:(BOOL)a5 waveformOnly:(BOOL)a6;
- (id)createView;
- (id)recordingCardNavigationItem;
- (int64_t)recordingControlState;
- (unint64_t)_trackIndexForCurrentTrackState;
- (void)_beginFileTranscriptionIfNeeded;
- (void)_clearTranscriptView;
- (void)_configureTranscriptViewForLiveTranscription:(id)a3;
- (void)_configureWaveformViewWithDataSource:(id)a3;
- (void)_configureWaveformViewWithDataSources:(id)a3 secondTrackDataSource:(id)a4 overviewDataSource:(id)a5;
- (void)_registerForSceneStateChanges:(id)a3;
- (void)_reset;
- (void)_sceneDidEnterBackgroundNotification:(id)a3;
- (void)_sceneWillEnterForegroundNotification:(id)a3;
- (void)_setupTranscriptViewDependenciesIfNeeded;
- (void)_styleView;
- (void)_syncEditingInFlight;
- (void)_syncWaveformCompactness;
- (void)_updateNavigationBarVisibility;
- (void)_updateRecordButtonViewState:(id)a3;
- (void)actionActivated:(int64_t)a3;
- (void)audioWaveformControllerDidChangeAVTimes:(id)a3;
- (void)cleanupAfterDismiss;
- (void)cleanupAfterExitTrim;
- (void)collapseTranscriptView;
- (void)didUpdateRecordingCenterContentViewState;
- (void)didUpdateRecordingViewDisplayStyle;
- (void)didUpdateRecordingViewState:(int64_t)a3 newState:(int64_t)a4;
- (void)expandTranscriptView;
- (void)handleCancel;
- (void)handleDeleteForUUID:(id)a3;
- (void)handleDone;
- (void)handleRemovalOfUUID:(id)a3;
- (void)loadView;
- (void)performControlsAction:(int64_t)a3 position:(double)a4 source:(id)a5;
- (void)performRenameWithNewTitle:(id)a3;
- (void)prepareForPresent:(BOOL)a3;
- (void)recordingViewWidthDidChange:(double)a3;
- (void)reloadWaveformsFromComposition:(id)a3;
- (void)renameForUUID:(id)a3 toNewTitle:(id)a4;
- (void)reset;
- (void)restyle;
- (void)setActiveTimeController:(id)a3;
- (void)setCurrentTime:(double)a3;
- (void)setLiveTranscription:(id)a3;
- (void)setSelectedTimeRange:(id)a3 animationDuration:(double)a4;
- (void)showIdleForUUID:(id)a3;
- (void)showPlayingForUUID:(id)a3;
- (void)startEditWithComposition:(id)a3 displayModel:(id)a4;
- (void)toggleTranscriptView;
- (void)trackInfoStateDidChangeWithOldState:(unint64_t)a3 newState:(unint64_t)a4;
- (void)updateCurrentTimeForUUID:(id)a3 toTime:(double)a4;
- (void)updateCurrentTrackTimeRange;
- (void)updateForRecordingEnd:(BOOL)a3;
- (void)updateForRecordingStart:(BOOL)a3;
- (void)updateForSizeChange;
- (void)updateForTrimMode;
- (void)updateToEditingInFlight:(BOOL)a3 progress:(float)a4 forUUID:(id)a5;
- (void)updateTrimSaveState:(BOOL)a3;
- (void)updateUndoState:(BOOL)a3 isNewRecording:(BOOL)a4;
- (void)updateWithPlaybackSettings:(id)a3;
- (void)updateWithRecordingModel:(id)a3 requireMatchingUUID:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willUpdateRecordingCenterContentViewState:(int64_t)a3;
- (void)willUpdateRecordingViewTranscriptState:(int64_t)a3;
@end

@implementation RCRecordingViewController

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = RCRecordingViewController;
  [(RCRecordingViewController *)&v4 loadView];
  v3 = [(RCRecordingViewController *)self createView];
  [(RCRecordingViewController *)self setView:v3];
  [v3 setViewDelegate:self];
  [(RCRecordingViewController *)self _styleView];
  [(RCRecordingViewController *)self _classSpecificLoadView];
}

- (void)_styleView
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  v4 = [v3 playbackCardHasInsets];

  v5 = [(RCRecordingViewController *)self view];
  [v5 setClipsToBounds:v4];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = RCRecordingViewController;
  [(RCRecordingViewController *)&v9 viewDidLoad];
  [(RCRecordingViewController *)self _setupTranscriptViewDependenciesIfNeeded];
  v3 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
  [v3 registerObserver:self];

  v4 = objc_opt_new();
  waveformContainerViewControllers = self->_waveformContainerViewControllers;
  self->_waveformContainerViewControllers = v4;

  v6 = [(RCRecordingViewController *)self trackInfoRepository];

  if (!v6)
  {
    v7 = [_TtC10VoiceMemos30RCRecordingTrackInfoRepository repositoryWithObserver:self];
    [(RCRecordingViewController *)self setTrackInfoRepository:v7];
  }

  v8 = [(RCRecordingViewController *)self view];
  [v8 setAccessibilityIdentifier:@"RecordingView"];
}

- (void)_setupTranscriptViewDependenciesIfNeeded
{
  v3 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
  v4 = [v3 deviceIsSupported];

  if (v4)
  {
    v5 = [(RCRecordingViewController *)self transcriptViewCoordinator];

    if (!v5)
    {
      v6 = objc_alloc_init(_TtC10VoiceMemos25TranscriptViewCoordinator);
      [(RCRecordingViewController *)self setTranscriptViewCoordinator:v6];

      v7 = [(RCRecordingViewController *)self transcriptViewCoordinator];
      [v7 setTranscriptViewHost:self];

      v8 = [(RCRecordingViewController *)self transcriptViewCoordinator];
      v9 = [v8 transcriptView];
      v10 = [(RCRecordingViewController *)self view];
      [v10 setTranscriptView:v9];

      v11 = [(RCRecordingViewController *)self transcriptViewCoordinator];
      v12 = [(RCRecordingViewController *)self view];
      [v12 bounds];
      [v11 didChangeHostViewWidth:v13];

      v14 = [(RCRecordingViewController *)self view];
      v15 = [v14 window];
      v17 = [v15 windowScene];

      if ([v17 activationState] == 1 || !objc_msgSend(v17, "activationState"))
      {
        v16 = [(RCRecordingViewController *)self transcriptViewCoordinator];
        [v16 windowSceneWillEnterForeground];
      }
    }
  }
}

- (void)updateForSizeChange
{
  if ([(RCRecordingViewController *)self isViewLoaded])
  {
    v3 = [(RCRecordingViewController *)self view];
    [v3 updateForSizeChange];
  }
}

- (void)setActiveTimeController:(id)a3
{
  v7 = a3;
  v4 = objc_storeWeak(&self->_activeTimeController, v7);
  [(RCWaveformContainerArray *)self->_waveformContainerViewControllers setActiveTimeController:v7];

  WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);
  [(RCAVWaveformViewController *)self->_overviewWaveformViewController setActiveTimeController:WeakRetained];

  v6 = objc_loadWeakRetained(&self->_activeTimeController);
  [(TranscriptViewCoordinator *)self->_transcriptViewCoordinator setTimeController:v6];
}

- (void)setLiveTranscription:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_liveTranscription, v4);
  [(RCRecordingViewController *)self _configureTranscriptViewForLiveTranscription:v4];
}

- (RCWaveformDataSource)waveformDataSource
{
  v2 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:0];
  v3 = [v2 waveformDataSource];

  return v3;
}

- (RCRecordingViewController)initWithRecordButtonRepository:(id)a3 interactionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RCRecordingViewController;
  v8 = [(RCRecordingViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(RCRecordingViewController *)v8 setRecordButtonRepository:v6];
    [(RCRecordingViewController *)v9 setInteractionHandler:v7];
  }

  return v9;
}

- (id)createView
{
  v3 = [RCRecordingView alloc];
  v4 = [(RCRecordingViewController *)self recordButtonRepository];
  v5 = [(RCRecordingViewController *)self interactionHandler];
  v6 = [(RCRecordingView *)v3 initWithRecordButtonRepository:v4 interactionHandler:v5];

  return v6;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = RCRecordingViewController;
  v7 = a4;
  [(RCRecordingViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007D33C;
  v8[3] = &unk_10028A488;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = RCRecordingViewController;
  [(RCRecordingViewController *)&v8 viewIsAppearing:a3];
  v4 = [(RCRecordingViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  [(RCRecordingViewController *)self _registerForSceneStateChanges:v6];

  v7 = [(RCRecordingViewController *)self transcriptViewCoordinator];
  [v7 windowSceneWillEnterForeground];
}

- (void)_registerForSceneStateChanges:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_sceneWillEnterForegroundNotification:" name:UISceneWillEnterForegroundNotification object:v4];
    [v5 addObserver:self selector:"_sceneDidEnterBackgroundNotification:" name:UISceneDidEnterBackgroundNotification object:v4];
  }
}

- (void)_sceneWillEnterForegroundNotification:(id)a3
{
  v3 = [(RCRecordingViewController *)self transcriptViewCoordinator];
  [v3 windowSceneWillEnterForeground];
}

- (void)_sceneDidEnterBackgroundNotification:(id)a3
{
  v3 = [(RCRecordingViewController *)self transcriptViewCoordinator];
  [v3 windowSceneDidEnterBackground];
}

- (void)restyle
{
  v3 = [(RCRecordingViewController *)self viewIfLoaded];

  if (v3)
  {
    v4 = [(RCRecordingViewController *)self overviewWaveformViewController];

    if (v4)
    {
      v5 = [(RCRecordingViewController *)self overviewWaveformViewController];
      v6 = [v5 view];
      v7 = [(RCRecordingViewController *)self view];
      [v7 setOverviewWaveformView:v6];
    }

    [(RCRecordingViewController *)self _styleView];
    v8 = [(RCRecordingViewController *)self view];
    [v8 restyle];
  }
}

- (void)_reset
{
  v3 = [(RCRecordingViewController *)self view];
  [v3 reset];

  [(RCRecordingViewController *)self _configureWaveformViewWithDataSource:0];
  [(RCRecordingViewController *)self _clearTranscriptView];

  [(RCRecordingViewController *)self updateWithRecordingModel:0];
}

- (int64_t)recordingControlState
{
  v2 = [(RCRecordingViewController *)self view];
  v3 = [v2 recordingControlState];

  return v3;
}

- (void)actionActivated:(int64_t)a3
{
  if ((a3 - 1) <= 4)
  {
    v5 = qword_100240418[a3 - 1];
    v6 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
    [v6 performAction:v5 atPosition:0 forUUID:0 sourceController:0 source:-[RCRecordingViewController _trackIndexForCurrentTrackState](self trackIndex:{"_trackIndexForCurrentTrackState"), 0.0}];
  }
}

- (void)updateForRecordingStart:(BOOL)a3
{
  v3 = a3;
  [(RCWaveformContainerArray *)self->_waveformContainerViewControllers resetZoomScale];
  v6 = [(RCRecordingViewController *)self view];
  v5 = [(RCRecordingViewController *)self view];
  [v5 setShouldSaveAsNew:v3];

  [v6 updateForRecordingStart];
}

- (void)_updateRecordButtonViewState:(id)a3
{
  v4 = a3;
  v7 = [(RCRecordingViewController *)self view];
  [v4 currentTime];
  v6 = v5;

  [v7 updateRecordButtonViewStateWithCurrentTime:v6];
}

- (void)updateForTrimMode
{
  v2 = [(RCRecordingViewController *)self view];
  [v2 setRecordingViewState:8];
}

- (void)updateForRecordingEnd:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCRecordingViewController *)self view];
  [v5 updateForRecordingEnd:v3];

  v6 = [(RCRecordingViewController *)self view];
  v7 = [v6 displayStyle];

  if (v7 == 1)
  {
    [(RCWaveformContainerArray *)self->_waveformContainerViewControllers setCurrentTime:0.0];
    v8 = [(RCRecordingViewController *)self view];
    [v8 setCurrentTime:0.0];

    [(RCRecordingViewController *)self _reset];
  }

  else
  {
    v9 = [(RCRecordingViewController *)self overviewWaveformViewController];
    [v9 setIsEditMode:1];

    waveformContainerViewControllers = self->_waveformContainerViewControllers;

    [(RCWaveformContainerArray *)waveformContainerViewControllers setIsEditMode:1];
  }
}

- (void)updateUndoState:(BOOL)a3 isNewRecording:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(RCRecordingViewController *)self view];
  [v6 undoStateChanged:v5 isNewRecording:v4];
}

- (void)updateTrimSaveState:(BOOL)a3
{
  v3 = a3;
  v4 = [(RCRecordingViewController *)self view];
  [v4 trimSaveStateChanged:v3];
}

- (void)prepareForPresent:(BOOL)a3
{
  v3 = a3;
  v4 = [(RCRecordingViewController *)self view];
  [v4 prepareForPresent:v3];
}

- (void)setSelectedTimeRange:(id)a3 animationDuration:(double)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  [RCWaveformContainerArray setSelectedTimeRange:"setSelectedTimeRange:animationDuration:" animationDuration:?];
  v8 = [(RCRecordingViewController *)self overviewWaveformViewController];
  [v8 setSelectedTimeRange:var0 animationDuration:{var1, a4}];
}

- (void)toggleTranscriptView
{
  v3 = [(RCRecordingViewController *)self view];
  v4 = [v3 centerContentViewState] == 0;

  v5 = [(RCRecordingViewController *)self view];
  [v5 setCenterContentViewState:v4];

  [(RCRecordingViewController *)self _didToggleTranscriptView];
}

- (void)_beginFileTranscriptionIfNeeded
{
  v3 = [(RCRecordingViewController *)self UUID];
  if (v3)
  {
    v4 = v3;
    v5 = [(RCRecordingViewController *)self isDisplayingTranscriptView];

    if (v5)
    {
      v6 = [(RCRecordingViewController *)self isRecording];
      v7 = [(RCRecordingViewController *)self transcriptViewCoordinator];
      v8 = [v7 isPerformingLiveTranscription];

      v9 = [(RCRecordingViewController *)self transcriptViewCoordinator];
      v10 = [(RCRecordingViewController *)self UUID];
      v11 = [v9 isProcessingOrDisplayingFileTranscriptionForUUID:v10];

      v12 = [(RCRecordingViewController *)self composition];
      if (v12)
      {
        v13 = [(RCRecordingViewController *)self composition];
        v14 = [v13 decomposedFragments];
        v15 = [v14 count] == 0;
      }

      else
      {
        v15 = 1;
      }

      if (((v6 | v8 | v11) & 1) == 0 && v15)
      {
        v17 = [(RCRecordingViewController *)self transcriptViewCoordinator];
        v16 = [(RCRecordingViewController *)self UUID];
        [v17 beginFileTranscriptionForRecordingUUID:v16];
      }
    }
  }
}

- (BOOL)hasNoTranscribableContent
{
  v2 = [(RCRecordingViewController *)self transcriptViewCoordinator];
  v3 = [v2 hasNoTranscribableContent];

  return v3;
}

- (BOOL)isDisplayingTranscriptView
{
  v2 = [(RCRecordingViewController *)self view];
  v3 = [v2 centerContentViewState] == 1;

  return v3;
}

- (void)showPlayingForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingViewController *)self UUID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(RCRecordingViewController *)self view];
    [v7 setPlayControlState:1];
  }
}

- (void)showIdleForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingViewController *)self UUID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(RCRecordingViewController *)self view];
    [v7 setPlayControlState:0];
  }
}

- (void)renameForUUID:(id)a3 toNewTitle:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(RCRecordingViewController *)self UUID];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [(RCRecordingViewController *)self view];
    [v9 setRecordingTitle:v10];
  }
}

- (void)handleDeleteForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingViewController *)self UUID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {

    [(RCRecordingViewController *)self _reset];
  }
}

- (void)updateCurrentTimeForUUID:(id)a3 toTime:(double)a4
{
  v6 = a3;
  v7 = [(RCRecordingViewController *)self UUID];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [(RCRecordingViewController *)self view];
    [v9 setCurrentTime:a4];
  }
}

- (void)updateToEditingInFlight:(BOOL)a3 progress:(float)a4 forUUID:(id)a5
{
  v6 = a3;
  v16 = a5;
  v8 = [(RCRecordingViewController *)self editingStatusDict];

  if (!v8)
  {
    v9 = objc_opt_new();
    [(RCRecordingViewController *)self setEditingStatusDict:v9];
  }

  v10 = [(RCRecordingViewController *)self editingStatusDict];
  v11 = v10;
  if (v6)
  {
    v12 = [v10 objectForKeyedSubscript:v16];

    if (!v12)
    {
      v12 = objc_opt_new();
    }

    *&v13 = a4;
    v14 = [NSNumber numberWithFloat:v13];
    [v12 setProgress:v14];

    v15 = [(RCRecordingViewController *)self editingStatusDict];
    [v15 setObject:v12 forKeyedSubscript:v16];

    v11 = v12;
  }

  else
  {
    [v10 setObject:0 forKeyedSubscript:v16];
  }

  [(RCRecordingViewController *)self _syncEditingInFlight];
}

- (void)_syncEditingInFlight
{
  v3 = [(RCRecordingViewController *)self editingStatusDict];
  v4 = [(RCRecordingViewController *)self UUID];
  v10 = [v3 objectForKeyedSubscript:v4];

  v5 = [(RCRecordingViewController *)self view];
  if (v10)
  {
    [v5 setEditingInFlight:1];

    v5 = [v10 progress];
    [v5 floatValue];
    v7 = v6;
    v8 = [(RCRecordingViewController *)self view];
    LODWORD(v9) = v7;
    [v8 setEditingProgress:v9];
  }

  else
  {
    [v5 setEditingInFlight:0];
  }
}

- (void)performControlsAction:(int64_t)a3 position:(double)a4 source:(id)a5
{
  v8 = a5;
  [(RCRecordingViewController *)self stopScrolling];
  v10 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v9 = [(RCRecordingViewController *)self UUID];
  [v10 performAction:a3 atPosition:v9 forUUID:self sourceController:v8 source:-[RCRecordingViewController _trackIndexForCurrentTrackState](self trackIndex:{"_trackIndexForCurrentTrackState"), a4}];
}

- (void)performRenameWithNewTitle:(id)a3
{
  v4 = a3;
  v6 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v5 = [(RCRecordingViewController *)self UUID];
  [v6 performRenameWithNewTitle:v4 forUUID:v5];
}

- (void)updateWithRecordingModel:(id)a3 requireMatchingUUID:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  if (!v4 || ([v13 UUID], v6 = objc_claimAutoreleasedReturnValue(), -[RCRecordingViewController UUID](self, "UUID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToString:", v7), v7, v6, v8))
  {
    v9 = [v13 UUID];
    [(RCRecordingViewController *)self setUUID:v9];

    v10 = [(RCRecordingViewController *)self view];
    v11 = [v13 title];
    [v10 setRecordingTitle:v11];

    [v13 duration];
    [v10 setRecordingDuration:?];
    v12 = [v13 creationDate];
    [v10 setCreationDate:v12];

    [v10 setHasTranscription:{objc_msgSend(v13, "hasTranscription")}];
  }
}

- (void)updateWithPlaybackSettings:(id)a3
{
  v10 = a3;
  v4 = [v10 hasCustomizedPlaybackSettings];
  v5 = [(RCRecordingViewController *)self view];
  [v5 setHasCustomizedPlaybackSettings:v4];

  [v10 layerMix];
  if (v6 == -1.0)
  {
    trackInfoRepository = self->_trackInfoRepository;
    v8 = 1;
LABEL_5:
    [(RCRecordingTrackInfoRepository *)trackInfoRepository setMutedTrackIndexWithMutedIndex:v8];
    goto LABEL_6;
  }

  [v10 layerMix];
  trackInfoRepository = self->_trackInfoRepository;
  if (v9 == 1.0)
  {
    v8 = 0;
    goto LABEL_5;
  }

  [(RCRecordingTrackInfoRepository *)trackInfoRepository clearMutedTrackIndex];
LABEL_6:
}

- (void)setCurrentTime:(double)a3
{
  v4 = [(RCRecordingViewController *)self view];
  [v4 setCurrentTime:a3];
}

- (void)reloadWaveformsFromComposition:(id)a3
{
  v11 = a3;
  [(RCRecordingViewController *)self setComposition:v11];
  v4 = [v11 hasMultipleTracks];
  v5 = [(RCRecordingViewController *)self view];
  [v5 setHasMultipleTracks:v4];

  v6 = [v11 hasSpatialAudio];
  v7 = [(RCRecordingViewController *)self view];
  [v7 setHasSpatialRecording:v6];

  LODWORD(v7) = [v11 hasMultipleTracks];
  v8 = [[RCCompositionWaveformDataSource alloc] initWithComposition:v11 trackIndex:0];
  if (v7)
  {
    v9 = [[RCCompositionWaveformDataSource alloc] initWithComposition:v11 trackIndex:1];
    v10 = [[RCCompositionWaveformDataSource alloc] initWithComposition:v11 trackIndex:-1];
    [(RCRecordingViewController *)self _configureWaveformViewWithDataSources:v8 secondTrackDataSource:v9 overviewDataSource:v10];
  }

  else
  {
    [(RCRecordingViewController *)self _configureWaveformViewWithDataSource:v8];
  }
}

- (void)startEditWithComposition:(id)a3 displayModel:(id)a4
{
  v17 = a3;
  v6 = a4;
  [(RCRecordingViewController *)self setComposition:v17];
  if ([v17 hasMultipleTracks] && (-[RCRecordingViewController trackInfoRepository](self, "trackInfoRepository"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "state"), v7, !v8))
  {
    v9 = 1;
  }

  else
  {
    if ([v17 hasMultipleTracks])
    {
      goto LABEL_7;
    }

    v9 = 0;
  }

  v10 = [(RCRecordingViewController *)self trackInfoRepository];
  [v10 setState:v9];

LABEL_7:
  [(RCRecordingViewController *)self updateCurrentTrackTimeRange];
  v11 = [(RCRecordingViewController *)self view];
  [v11 updateForEditingStart];

  [(RCRecordingViewController *)self reloadWaveformsFromComposition:v17];
  waveformContainerViewControllers = self->_waveformContainerViewControllers;
  WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);
  [(RCWaveformContainerArray *)waveformContainerViewControllers setActiveTimeController:WeakRetained];

  v14 = [(RCRecordingViewController *)self overviewWaveformViewController];
  v15 = objc_loadWeakRetained(&self->_activeTimeController);
  [v14 setActiveTimeController:v15];

  [(RCRecordingViewController *)self updateWithRecordingModel:v6];
  v16 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:[(RCRecordingViewController *)self _trackIndexForCurrentTrackState]];
  [(RCRecordingViewController *)self audioWaveformControllerDidChangeAVTimes:v16];

  [(RCWaveformContainerArray *)self->_waveformContainerViewControllers resetZoomScale];
  [(RCRecordingViewController *)self _beginFileTranscriptionIfNeeded];
}

- (id)createNewWaveformViewControllerWithDataSource:(id)a3 isOverview:(BOOL)a4 isCompact:(BOOL)a5 waveformOnly:(BOOL)a6
{
  v6 = a5;
  v7 = a4;
  v9 = a6;
  v10 = a3;
  v11 = [[RCAVWaveformViewController alloc] initWithWaveformDataSource:v10 displayStyle:v9 isOverview:v7 isCompact:v6 delegate:self];

  v12 = [(RCAVWaveformViewController *)v11 waveformViewController];
  [v12 setIsOverview:v7];

  WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);
  [(RCAVWaveformViewController *)v11 setActiveTimeController:WeakRetained];

  return v11;
}

- (void)_configureWaveformViewWithDataSources:(id)a3 secondTrackDataSource:(id)a4 overviewDataSource:(id)a5
{
  v54 = a3;
  v8 = a4;
  v9 = a5;
  if (self->_multipleWaveformsViewController)
  {
    v10 = 1;
  }

  else
  {
    v10 = (v54 | v8) == 0;
  }

  if (!v10)
  {
    v28 = [(RCRecordingViewController *)self trackInfoRepository];

    if (!v28)
    {
      v29 = [_TtC10VoiceMemos30RCRecordingTrackInfoRepository repositoryWithObserver:self];
      [(RCRecordingViewController *)self setTrackInfoRepository:v29];
    }

    waveformContainerViewControllers = self->_waveformContainerViewControllers;
    v31 = [(RCRecordingViewController *)self trackInfoRepository];
    v32 = [_TtC10VoiceMemos33RCMultipleWaveformsViewController viewControllerWithWaveformContainers:waveformContainerViewControllers trackInfoRepository:v31];
    multipleWaveformsViewController = self->_multipleWaveformsViewController;
    self->_multipleWaveformsViewController = v32;

    [(RCRecordingViewController *)self addChildViewController:self->_multipleWaveformsViewController];
    [(TrackIndexSettable *)self->_multipleWaveformsViewController didMoveToParentViewController:self];
    v34 = [(RCRecordingViewController *)self view];
    [v34 centerContentVerticalHuggingPriority];
    v36 = v35 + -10.0;

    v37 = [(TrackIndexSettable *)self->_multipleWaveformsViewController view];
    *&v38 = v36;
    [v37 setContentHuggingPriority:1 forAxis:v38];

    v39 = [(TrackIndexSettable *)self->_multipleWaveformsViewController view];
    *&v40 = v36;
    [v39 setContentHuggingPriority:0 forAxis:v40];

    v41 = [(TrackIndexSettable *)self->_multipleWaveformsViewController view];
    v42 = [(RCRecordingViewController *)self view];
    [v42 setWaveformView:v41];
  }

  v11 = [(RCRecordingViewController *)self _compactDisplayStyle];
  [(RCWaveformContainerArray *)self->_waveformContainerViewControllers cancelLoadingWaveformDataSource];
  v12 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers count];
  if (v54 && !v12)
  {
    v13 = self->_waveformContainerViewControllers;
    v14 = [(RCRecordingViewController *)self createNewWaveformViewControllerWithDataSource:v54 isOverview:0 isCompact:v11 waveformOnly:0];
    [(RCWaveformContainerArray *)v13 addContainer:v14];
  }

  v15 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers count];
  if (v8 && v15 == 1)
  {
    v16 = self->_waveformContainerViewControllers;
    v17 = [(RCRecordingViewController *)self createNewWaveformViewControllerWithDataSource:v8 isOverview:0 isCompact:v11 waveformOnly:1];
    [(RCWaveformContainerArray *)v16 addContainer:v17];
  }

  if ([(RCRecordingViewController *)self isRecording])
  {
    if ([(RCRecordingViewController *)self _trackIndexForCurrentTrackState])
    {
      v18 = [(RCRecordingViewController *)self _trackIndexForCurrentTrackState];
      v19 = v54;
      if (v18 != 1)
      {
        goto LABEL_29;
      }

      v20 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:1];
      WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);
      [v20 reloadWaveformDataSource:v8 withActiveTimeController:WeakRetained];
    }

    else
    {
      v43 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:0];
      v44 = objc_loadWeakRetained(&self->_activeTimeController);
      [v43 reloadWaveformDataSource:v54 withActiveTimeController:v44];

      v45 = [(RCRecordingViewController *)self isSilencing];
      v19 = v54;
      if (!v45)
      {
        goto LABEL_29;
      }

      v20 = [v54 copyWithTrackIndex:1 emptyCopy:1];
      WeakRetained = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:1];
      v46 = objc_loadWeakRetained(&self->_activeTimeController);
      [WeakRetained reloadWaveformDataSource:v20 withActiveTimeController:v46];
    }

    goto LABEL_28;
  }

  v22 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:0];
  v23 = objc_loadWeakRetained(&self->_activeTimeController);
  [v22 reloadWaveformDataSource:v54 withActiveTimeController:v23];

  v24 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:1];
  v25 = objc_loadWeakRetained(&self->_activeTimeController);
  [v24 reloadWaveformDataSource:v8 withActiveTimeController:v25];

  v26 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers count];
  if (!v8 && v26 == 2)
  {
    [(RCWaveformContainerArray *)self->_waveformContainerViewControllers removeContainerAtIndex:1];
  }

  v27 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers count];
  v19 = v54;
  if (!v54 && v27 == 1)
  {
    [(RCWaveformContainerArray *)self->_waveformContainerViewControllers removeContainerAtIndex:0];
LABEL_28:
    v19 = v54;
  }

LABEL_29:
  if (!(v19 | v8))
  {
    v47 = [(RCRecordingViewController *)self trackInfoRepository];
    [v47 setState:0];
  }

  overviewWaveformViewController = self->_overviewWaveformViewController;
  if (!overviewWaveformViewController)
  {
    v49 = [(RCRecordingViewController *)self createNewWaveformViewControllerWithDataSource:v9 isOverview:1 isCompact:1 waveformOnly:0];
    [(RCRecordingViewController *)self setOverviewWaveformViewController:v49];
    [(RCRecordingViewController *)self addChildViewController:v49];
    [v49 didMoveToParentViewController:self];
    v50 = [v49 view];
    v51 = [(RCRecordingViewController *)self view];
    [v51 setOverviewWaveformView:v50];

    overviewWaveformViewController = self->_overviewWaveformViewController;
  }

  v52 = objc_loadWeakRetained(&self->_activeTimeController);
  [(RCAVWaveformViewController *)overviewWaveformViewController reloadWaveformDataSource:v9 withActiveTimeController:v52];

  v53 = [(RCAVWaveformViewController *)self->_overviewWaveformViewController waveformViewController];
  [v53 setIsOverview:1];

  [(RCRecordingViewController *)self _syncWaveformCompactness];
}

- (void)_configureWaveformViewWithDataSource:(id)a3
{
  v8 = a3;
  if ([(RCRecordingViewController *)self isRecording])
  {
    v4 = [(RCRecordingViewController *)self _trackIndexForCurrentTrackState];
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v8;
    }

    if (v4 == 1)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }

    v7 = self;
  }

  else
  {
    v7 = self;
    v5 = v8;
    v6 = 0;
  }

  [(RCRecordingViewController *)v7 _configureWaveformViewWithDataSources:v5 secondTrackDataSource:v6 overviewDataSource:?];
}

- (BOOL)_compactDisplayStyle
{
  v2 = [(RCRecordingViewController *)self view];
  v3 = [v2 displayStyle];

  if (v3 != 1)
  {
    return v3 == 2;
  }

  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v6 = [v5 supportsCompactRecordingCard];

  return v6;
}

- (void)_syncWaveformCompactness
{
  v3 = [(RCRecordingViewController *)self _compactDisplayStyle];
  v4 = [(RCRecordingViewController *)self view];
  v5 = [v4 displayStyle] == 3;

  v6 = [(RCRecordingViewController *)self view];
  v7 = [v6 recordingViewState];

  v8 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers waveformViewControllers];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007F1CC;
  v10[3] = &unk_10028B780;
  v11 = ((v7 - 2) < 6) & v3;
  v12 = v3;
  v13 = v5;
  [v8 enumerateObjectsUsingBlock:v10];

  if (v3)
  {
    v9 = 1;
  }

  else
  {
    v9 = RCOverdubRecordingIsEnabled() ^ 1;
  }

  [(TrackIndexSettable *)self->_multipleWaveformsViewController setHideTrackSwitch:v9];
  [(TrackIndexSettable *)self->_multipleWaveformsViewController setDisableTrackSwitch:[(RCRecordingViewController *)self isRecording]];
}

- (void)_configureTranscriptViewForLiveTranscription:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingViewController *)self transcriptViewCoordinator];
  [v5 beginLiveTranscription:v4];
}

- (void)_clearTranscriptView
{
  v2 = [(RCRecordingViewController *)self transcriptViewCoordinator];
  [v2 clearData];
}

- (void)handleCancel
{
  v3 = [(RCRecordingViewController *)self view];
  v4 = [v3 recordingViewState];

  if (v4 == 8)
  {
    v5 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
    [v5 cancelTrimMode];
  }
}

- (void)cleanupAfterExitTrim
{
  v3 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:[(RCRecordingViewController *)self _trackIndexForCurrentTrackState]];
  v4 = [v3 activeTimeController];
  [v4 currentRate];
  v6 = v5;

  v7 = [(RCRecordingViewController *)self view];
  v8 = v7;
  if (v6 <= 0.0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  [v7 setRecordingViewState:v9];

  v10 = [(RCRecordingViewController *)self view];
  [(RCWaveformContainerArray *)self->_waveformContainerViewControllers currentTime];
  [v10 updateRecordButtonViewStateWithCurrentTime:?];
}

- (void)handleDone
{
  v8 = [(RCRecordingViewController *)self view];
  v3 = [v8 recordingViewState];
  if (v3 > 8)
  {
    goto LABEL_7;
  }

  if (((1 << v3) & 0x3C) != 0)
  {
    v4 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
    [v4 endEditing];
    goto LABEL_6;
  }

  if (((1 << v3) & 0xC2) != 0)
  {
    v4 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
    [v4 performAction:4 atPosition:0 forUUID:0 sourceController:0 source:-[RCRecordingViewController _trackIndexForCurrentTrackState](self trackIndex:{"_trackIndexForCurrentTrackState"), 0.0}];
LABEL_6:

LABEL_7:
    v5 = [(RCRecordingViewController *)self trackInfoRepository];
    [v5 setState:0];

    goto LABEL_8;
  }

  if (v3 != 8)
  {
    goto LABEL_7;
  }

  v6 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  [v6 exitTrimMode];

  [v8 setRecordingViewState:5];
  v7 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  [v7 didExitTrimMode];

  +[RCAnalyticsUtilities sendDidTrimVoiceMemo];
  [(RCWaveformContainerArray *)self->_waveformContainerViewControllers currentTime];
  [v8 updateRecordButtonViewStateWithCurrentTime:?];
LABEL_8:
}

- (void)cleanupAfterDismiss
{
  [(RCRecordingViewController *)self _reset];
  v3 = [(RCRecordingViewController *)self view];
  [v3 cleanupAfterDismiss];
}

- (void)reset
{
  v2 = [(RCRecordingViewController *)self view];
  [v2 reset];
}

- (BOOL)recordingTitleHasBeenEdited
{
  v3 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v4 = [(RCRecordingViewController *)self UUID];
  v5 = [v3 recordingTitleHasBeenEditedForUUID:v4];

  return v5;
}

- (BOOL)isRecording
{
  v2 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v3 = [v2 isRecording];

  return v3;
}

- (BOOL)isSilencing
{
  v2 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v3 = [v2 isSilencing];

  return v3;
}

- (BOOL)willRecordIntoTrackTwo
{
  v3 = [(RCRecordingViewController *)self trackInfoRepository];
  if ([v3 state] == 2)
  {
    v4 = [(RCRecordingViewController *)self composition];
    v5 = [v4 hasMultipleTracks] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)hasUnsavedEdits
{
  v2 = [(RCRecordingViewController *)self composition];
  v3 = [v2 decomposedFragments];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)didUpdateRecordingViewState:(int64_t)a3 newState:(int64_t)a4
{
  v7 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  [v7 didUpdateRecordingViewState:a3 newState:a4];

  multipleWaveformsViewController = self->_multipleWaveformsViewController;
  v9 = [(RCRecordingViewController *)self view];
  -[TrackIndexSettable recordingViewStateDidUpdate:](multipleWaveformsViewController, "recordingViewStateDidUpdate:", [v9 recordingViewState]);

  v10 = [(RCRecordingViewController *)self hasNoTranscribableContent];
  v11 = [(RCRecordingViewController *)self view];
  [v11 setHasNoTranscribableContent:v10];
}

- (void)didUpdateRecordingViewDisplayStyle
{
  if ([(RCRecordingViewController *)self isDisplayingTranscriptView])
  {
    v3 = [(RCRecordingViewController *)self view];
    v4 = [v3 displayStyle];

    if (v4 != 3)
    {
      [(RCRecordingViewController *)self toggleTranscriptView];
    }
  }

  v5 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  [v5 didUpdateRecordingViewDisplayStyle];

  [(RCRecordingViewController *)self _updateNavigationBarVisibility];
}

- (void)_updateNavigationBarVisibility
{
  v3 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v9 = [v3 recordingCardNavigationController];

  v4 = [(RCRecordingViewController *)self shouldHideNavigationBar];
  v5 = v9;
  if (v9)
  {
    v6 = [(RCRecordingViewController *)self navigationController];
    v7 = [v6 isNavigationBarHidden];

    v5 = v9;
    if (v4 != v7)
    {
      [v9 setNavigationBarHidden:v4];
      v8 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
      [v8 didUpdateNavigationBarVisibility];

      v5 = v9;
    }
  }
}

- (void)willUpdateRecordingCenterContentViewState:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(RCRecordingViewController *)self transcriptViewCoordinator];
    [v4 willDisplayTranscriptView];

    v7 = +[RecorderAppDelegate sharedAppDelegate];
    v5 = [v7 dependencyContainer];
    v6 = [v5 analyticsManager];
    [v6 userViewedTranscription];
  }
}

- (void)didUpdateRecordingCenterContentViewState
{
  v3 = [(RCRecordingViewController *)self view];
  v4 = [v3 centerContentViewState];

  if (v4 != 1)
  {
    v5 = [(RCRecordingViewController *)self transcriptViewCoordinator];
    [v5 didDismissTranscriptView];
  }
}

- (void)willUpdateRecordingViewTranscriptState:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    v3 = [(RCRecordingViewController *)self transcriptViewCoordinator];
    [v3 willExpandTranscriptView];
  }

  else
  {
    v3 = [(RCRecordingViewController *)self transcriptViewCoordinator];
    [v3 willCollapseTranscriptView];
  }
}

- (void)recordingViewWidthDidChange:(double)a3
{
  v4 = [(RCRecordingViewController *)self transcriptViewCoordinator];
  [v4 didChangeHostViewWidth:a3];
}

- (id)recordingCardNavigationItem
{
  v2 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v3 = [v2 recordingCardNavigationItem];

  return v3;
}

- (BOOL)shouldHideNavigationBar
{
  v3 = [(RCRecordingViewController *)self view];
  if ([v3 displayStyle] == 3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(RCRecordingViewController *)self view];
    v6 = [v5 recordButtonRepository];
    v4 = [v6 state] == 2;
  }

  return v4;
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(RCRecordingViewController *)self view];
  if ([v3 displayStyle] == 2)
  {

    return 0;
  }

  v4 = [(RCRecordingViewController *)self view];
  v5 = [v4 recordingViewState];

  if (v5 == 1)
  {
    return 0;
  }

  [(RCRecordingViewController *)self handleDone];
  return 1;
}

- (void)expandTranscriptView
{
  v2 = [(RCRecordingViewController *)self view];
  [v2 setTranscriptViewState:1];
}

- (void)collapseTranscriptView
{
  v2 = [(RCRecordingViewController *)self view];
  [v2 setTranscriptViewState:0];
}

- (void)trackInfoStateDidChangeWithOldState:(unint64_t)a3 newState:(unint64_t)a4
{
  v6 = [(RCRecordingViewController *)self view];
  [v6 updateTrackState:a4];

  if ([(RCRecordingViewController *)self willRecordIntoTrackTwo])
  {
    v7 = +[RecorderAppDelegate sharedAppDelegate];
    v8 = [v7 dependencyContainer];
    v9 = [v8 analyticsManager];
    [v9 userEnabledSecondLayer];

    v10 = [(RCRecordingViewController *)self activeTimeController];
    [v10 setTargetTime:0.0];
  }

  if (a4)
  {
    v11 = [(RCRecordingViewController *)self _trackIndexForCurrentTrackState];
    v12 = [(RCRecordingViewController *)self waveformContainerViewControllers];
    v13 = [v12 objectAtIndexedSubscript:v11];
    v14 = [v13 waveformViewController];
    [v14 bounceWaveform];
  }

  [(RCRecordingViewController *)self updateCurrentTrackTimeRange];
  v16 = [(RCRecordingViewController *)self view];
  v15 = [(RCRecordingViewController *)self waveformContainerViewControllers];
  [v15 currentTime];
  [v16 updateRecordButtonViewStateWithCurrentTime:?];
}

- (void)audioWaveformControllerDidChangeAVTimes:(id)a3
{
  v4 = a3;
  v5 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers waveformViewControllers];
  if ([v5 containsObject:v4])
  {
  }

  else
  {
    v6 = [(RCRecordingViewController *)self overviewWaveformViewController];

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

  if ((byte_1002D70A0 & 1) == 0)
  {
    byte_1002D70A0 = 1;
    v7 = [(RCRecordingViewController *)self view];
    v8 = [v7 playControlState];

    v9 = [(RCRecordingViewController *)self isRecording];
    v10 = [(RCRecordingViewController *)self view];
    v11 = [v10 recordingViewState];

    v12 = [(RCRecordingViewController *)self activeTimeController];
    [v12 currentDuration];
    v14 = v13;
    v15 = [(RCRecordingViewController *)self view];
    [v15 setRecordingDuration:v14];

    [v12 currentTime];
    v17 = v16;
    v18 = [(RCRecordingViewController *)self view];
    [v18 setCurrentTime:v17];

    if (!v8 && (v9 & 1) == 0 && v11)
    {
      [(RCRecordingViewController *)self _updateRecordButtonViewState:v4];
    }

    v19 = [(RCRecordingViewController *)self view];
    if ([v19 recordingViewState] == 8)
    {
      [v4 selectedTimeRange];
      [v12 currentDuration];
      RCTimeRangeMake();
      v20 = RCTimeRangeEqualToTimeRange();

      v21 = v20 ^ 1u;
    }

    else
    {

      v21 = 0;
    }

    v22 = [(RCRecordingViewController *)self view];
    [v22 setTrimEnabled:v21];

    v23 = [(RCRecordingViewController *)self overviewWaveformViewController];

    if (v23 == v4)
    {
      waveformContainerViewControllers = self->_waveformContainerViewControllers;
      [v4 selectedTimeRange];
      [RCWaveformContainerArray setSelectedTimeRange:"setSelectedTimeRange:animationDuration:" animationDuration:?];
    }

    else
    {
      v24 = [(RCRecordingViewController *)self overviewWaveformViewController];
      v25 = [v24 waveformViewController];
      v26 = [v25 isSelectionOverlayCurrentlyTracking];

      if (v26)
      {
        [(RCRecordingViewController *)self stopScrolling];
      }

      v27 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers waveformViewControllers];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100080230;
      v32[3] = &unk_10028A6D0;
      v28 = v4;
      v33 = v28;
      [v27 enumerateObjectsUsingBlock:v32];

      v29 = [(RCRecordingViewController *)self overviewWaveformViewController];
      [v28 selectedTimeRange];
      [v29 setSelectedTimeRange:? animationDuration:?];
    }

    v31 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
    [v4 currentTime];
    [v31 waveformTimeUpdated:?];

    byte_1002D70A0 = 0;
  }

LABEL_18:
}

- (void)handleRemovalOfUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingViewController *)self UUID];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {

    [(RCRecordingViewController *)self _reset];
  }
}

- (BOOL)hasShareableComposition
{
  v2 = [(RCRecordingViewController *)self composition];
  v3 = [v2 compositionIsShareable];

  return v3;
}

- (unint64_t)_trackIndexForCurrentTrackState
{
  v2 = [(RCRecordingViewController *)self trackInfoRepository];
  v3 = [v2 state];

  if (v3 < 3)
  {
    return qword_100240440[v3];
  }

  v5 = OSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1001B8F9C(v5);
  }

  return 0;
}

- (void)updateCurrentTrackTimeRange
{
  v3 = [(RCRecordingViewController *)self composition];
  if ([v3 hasMultipleTracks])
  {
    IsEnabled = RCOverdubRecordingIsEnabled();

    if (IsEnabled)
    {
      v5 = [(RCRecordingViewController *)self _trackIndexForCurrentTrackState];
      v6 = [(RCRecordingViewController *)self composition];
      [v6 composedTimeRangeForTrackIndex:v5];
      v8 = v7;
      v10 = v9;

      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = RCTimeRangeEverything[0];
  v10 = RCTimeRangeEverything[1];
LABEL_6:
  v11 = [(RCRecordingViewController *)self view];
  [v11 setCurrentTrackTimeRange:{v8, v10}];
}

- (RCRecordingViewControllerDelegate)recordingViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingViewControllerDelegate);

  return WeakRetained;
}

- (RCTimeController)activeTimeController
{
  WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);

  return WeakRetained;
}

- (_TtC10VoiceMemos19RCLiveTranscription)liveTranscription
{
  WeakRetained = objc_loadWeakRetained(&self->_liveTranscription);

  return WeakRetained;
}

- (RCRecordingControlDelegate)interactionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionHandler);

  return WeakRetained;
}

@end