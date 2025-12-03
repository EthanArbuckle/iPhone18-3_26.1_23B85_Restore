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
- (RCRecordingViewController)initWithRecordButtonRepository:(id)repository interactionHandler:(id)handler;
- (RCRecordingViewControllerDelegate)recordingViewControllerDelegate;
- (RCTimeController)activeTimeController;
- (RCWaveformDataSource)waveformDataSource;
- (_TtC10VoiceMemos19RCLiveTranscription)liveTranscription;
- (id)createNewWaveformViewControllerWithDataSource:(id)source isOverview:(BOOL)overview isCompact:(BOOL)compact waveformOnly:(BOOL)only;
- (id)createView;
- (id)recordingCardNavigationItem;
- (int64_t)recordingControlState;
- (unint64_t)_trackIndexForCurrentTrackState;
- (void)_beginFileTranscriptionIfNeeded;
- (void)_clearTranscriptView;
- (void)_configureTranscriptViewForLiveTranscription:(id)transcription;
- (void)_configureWaveformViewWithDataSource:(id)source;
- (void)_configureWaveformViewWithDataSources:(id)sources secondTrackDataSource:(id)source overviewDataSource:(id)dataSource;
- (void)_registerForSceneStateChanges:(id)changes;
- (void)_reset;
- (void)_sceneDidEnterBackgroundNotification:(id)notification;
- (void)_sceneWillEnterForegroundNotification:(id)notification;
- (void)_setupTranscriptViewDependenciesIfNeeded;
- (void)_styleView;
- (void)_syncEditingInFlight;
- (void)_syncWaveformCompactness;
- (void)_updateNavigationBarVisibility;
- (void)_updateRecordButtonViewState:(id)state;
- (void)actionActivated:(int64_t)activated;
- (void)audioWaveformControllerDidChangeAVTimes:(id)times;
- (void)cleanupAfterDismiss;
- (void)cleanupAfterExitTrim;
- (void)collapseTranscriptView;
- (void)didUpdateRecordingCenterContentViewState;
- (void)didUpdateRecordingViewDisplayStyle;
- (void)didUpdateRecordingViewState:(int64_t)state newState:(int64_t)newState;
- (void)expandTranscriptView;
- (void)handleCancel;
- (void)handleDeleteForUUID:(id)d;
- (void)handleDone;
- (void)handleRemovalOfUUID:(id)d;
- (void)loadView;
- (void)performControlsAction:(int64_t)action position:(double)position source:(id)source;
- (void)performRenameWithNewTitle:(id)title;
- (void)prepareForPresent:(BOOL)present;
- (void)recordingViewWidthDidChange:(double)change;
- (void)reloadWaveformsFromComposition:(id)composition;
- (void)renameForUUID:(id)d toNewTitle:(id)title;
- (void)reset;
- (void)restyle;
- (void)setActiveTimeController:(id)controller;
- (void)setCurrentTime:(double)time;
- (void)setLiveTranscription:(id)transcription;
- (void)setSelectedTimeRange:(id)range animationDuration:(double)duration;
- (void)showIdleForUUID:(id)d;
- (void)showPlayingForUUID:(id)d;
- (void)startEditWithComposition:(id)composition displayModel:(id)model;
- (void)toggleTranscriptView;
- (void)trackInfoStateDidChangeWithOldState:(unint64_t)state newState:(unint64_t)newState;
- (void)updateCurrentTimeForUUID:(id)d toTime:(double)time;
- (void)updateCurrentTrackTimeRange;
- (void)updateForRecordingEnd:(BOOL)end;
- (void)updateForRecordingStart:(BOOL)start;
- (void)updateForSizeChange;
- (void)updateForTrimMode;
- (void)updateToEditingInFlight:(BOOL)flight progress:(float)progress forUUID:(id)d;
- (void)updateTrimSaveState:(BOOL)state;
- (void)updateUndoState:(BOOL)state isNewRecording:(BOOL)recording;
- (void)updateWithPlaybackSettings:(id)settings;
- (void)updateWithRecordingModel:(id)model requireMatchingUUID:(BOOL)d;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willUpdateRecordingCenterContentViewState:(int64_t)state;
- (void)willUpdateRecordingViewTranscriptState:(int64_t)state;
@end

@implementation RCRecordingViewController

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = RCRecordingViewController;
  [(RCRecordingViewController *)&v4 loadView];
  createView = [(RCRecordingViewController *)self createView];
  [(RCRecordingViewController *)self setView:createView];
  [createView setViewDelegate:self];
  [(RCRecordingViewController *)self _styleView];
  [(RCRecordingViewController *)self _classSpecificLoadView];
}

- (void)_styleView
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  playbackCardHasInsets = [v3 playbackCardHasInsets];

  view = [(RCRecordingViewController *)self view];
  [view setClipsToBounds:playbackCardHasInsets];
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

  trackInfoRepository = [(RCRecordingViewController *)self trackInfoRepository];

  if (!trackInfoRepository)
  {
    v7 = [_TtC10VoiceMemos30RCRecordingTrackInfoRepository repositoryWithObserver:self];
    [(RCRecordingViewController *)self setTrackInfoRepository:v7];
  }

  view = [(RCRecordingViewController *)self view];
  [view setAccessibilityIdentifier:@"RecordingView"];
}

- (void)_setupTranscriptViewDependenciesIfNeeded
{
  v3 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
  deviceIsSupported = [v3 deviceIsSupported];

  if (deviceIsSupported)
  {
    transcriptViewCoordinator = [(RCRecordingViewController *)self transcriptViewCoordinator];

    if (!transcriptViewCoordinator)
    {
      v6 = objc_alloc_init(_TtC10VoiceMemos25TranscriptViewCoordinator);
      [(RCRecordingViewController *)self setTranscriptViewCoordinator:v6];

      transcriptViewCoordinator2 = [(RCRecordingViewController *)self transcriptViewCoordinator];
      [transcriptViewCoordinator2 setTranscriptViewHost:self];

      transcriptViewCoordinator3 = [(RCRecordingViewController *)self transcriptViewCoordinator];
      transcriptView = [transcriptViewCoordinator3 transcriptView];
      view = [(RCRecordingViewController *)self view];
      [view setTranscriptView:transcriptView];

      transcriptViewCoordinator4 = [(RCRecordingViewController *)self transcriptViewCoordinator];
      view2 = [(RCRecordingViewController *)self view];
      [view2 bounds];
      [transcriptViewCoordinator4 didChangeHostViewWidth:v13];

      view3 = [(RCRecordingViewController *)self view];
      window = [view3 window];
      windowScene = [window windowScene];

      if ([windowScene activationState] == 1 || !objc_msgSend(windowScene, "activationState"))
      {
        transcriptViewCoordinator5 = [(RCRecordingViewController *)self transcriptViewCoordinator];
        [transcriptViewCoordinator5 windowSceneWillEnterForeground];
      }
    }
  }
}

- (void)updateForSizeChange
{
  if ([(RCRecordingViewController *)self isViewLoaded])
  {
    view = [(RCRecordingViewController *)self view];
    [view updateForSizeChange];
  }
}

- (void)setActiveTimeController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_storeWeak(&self->_activeTimeController, controllerCopy);
  [(RCWaveformContainerArray *)self->_waveformContainerViewControllers setActiveTimeController:controllerCopy];

  WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);
  [(RCAVWaveformViewController *)self->_overviewWaveformViewController setActiveTimeController:WeakRetained];

  v6 = objc_loadWeakRetained(&self->_activeTimeController);
  [(TranscriptViewCoordinator *)self->_transcriptViewCoordinator setTimeController:v6];
}

- (void)setLiveTranscription:(id)transcription
{
  transcriptionCopy = transcription;
  objc_storeWeak(&self->_liveTranscription, transcriptionCopy);
  [(RCRecordingViewController *)self _configureTranscriptViewForLiveTranscription:transcriptionCopy];
}

- (RCWaveformDataSource)waveformDataSource
{
  v2 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:0];
  waveformDataSource = [v2 waveformDataSource];

  return waveformDataSource;
}

- (RCRecordingViewController)initWithRecordButtonRepository:(id)repository interactionHandler:(id)handler
{
  repositoryCopy = repository;
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = RCRecordingViewController;
  v8 = [(RCRecordingViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(RCRecordingViewController *)v8 setRecordButtonRepository:repositoryCopy];
    [(RCRecordingViewController *)v9 setInteractionHandler:handlerCopy];
  }

  return v9;
}

- (id)createView
{
  v3 = [RCRecordingView alloc];
  recordButtonRepository = [(RCRecordingViewController *)self recordButtonRepository];
  interactionHandler = [(RCRecordingViewController *)self interactionHandler];
  v6 = [(RCRecordingView *)v3 initWithRecordButtonRepository:recordButtonRepository interactionHandler:interactionHandler];

  return v6;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = RCRecordingViewController;
  coordinatorCopy = coordinator;
  [(RCRecordingViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007D33C;
  v8[3] = &unk_10028A488;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v8.receiver = self;
  v8.super_class = RCRecordingViewController;
  [(RCRecordingViewController *)&v8 viewIsAppearing:appearing];
  view = [(RCRecordingViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  [(RCRecordingViewController *)self _registerForSceneStateChanges:windowScene];

  transcriptViewCoordinator = [(RCRecordingViewController *)self transcriptViewCoordinator];
  [transcriptViewCoordinator windowSceneWillEnterForeground];
}

- (void)_registerForSceneStateChanges:(id)changes
{
  if (changes)
  {
    changesCopy = changes;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_sceneWillEnterForegroundNotification:" name:UISceneWillEnterForegroundNotification object:changesCopy];
    [v5 addObserver:self selector:"_sceneDidEnterBackgroundNotification:" name:UISceneDidEnterBackgroundNotification object:changesCopy];
  }
}

- (void)_sceneWillEnterForegroundNotification:(id)notification
{
  transcriptViewCoordinator = [(RCRecordingViewController *)self transcriptViewCoordinator];
  [transcriptViewCoordinator windowSceneWillEnterForeground];
}

- (void)_sceneDidEnterBackgroundNotification:(id)notification
{
  transcriptViewCoordinator = [(RCRecordingViewController *)self transcriptViewCoordinator];
  [transcriptViewCoordinator windowSceneDidEnterBackground];
}

- (void)restyle
{
  viewIfLoaded = [(RCRecordingViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    overviewWaveformViewController = [(RCRecordingViewController *)self overviewWaveformViewController];

    if (overviewWaveformViewController)
    {
      overviewWaveformViewController2 = [(RCRecordingViewController *)self overviewWaveformViewController];
      view = [overviewWaveformViewController2 view];
      view2 = [(RCRecordingViewController *)self view];
      [view2 setOverviewWaveformView:view];
    }

    [(RCRecordingViewController *)self _styleView];
    view3 = [(RCRecordingViewController *)self view];
    [view3 restyle];
  }
}

- (void)_reset
{
  view = [(RCRecordingViewController *)self view];
  [view reset];

  [(RCRecordingViewController *)self _configureWaveformViewWithDataSource:0];
  [(RCRecordingViewController *)self _clearTranscriptView];

  [(RCRecordingViewController *)self updateWithRecordingModel:0];
}

- (int64_t)recordingControlState
{
  view = [(RCRecordingViewController *)self view];
  recordingControlState = [view recordingControlState];

  return recordingControlState;
}

- (void)actionActivated:(int64_t)activated
{
  if ((activated - 1) <= 4)
  {
    v5 = qword_100240418[activated - 1];
    recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
    [recordingViewControllerDelegate performAction:v5 atPosition:0 forUUID:0 sourceController:0 source:-[RCRecordingViewController _trackIndexForCurrentTrackState](self trackIndex:{"_trackIndexForCurrentTrackState"), 0.0}];
  }
}

- (void)updateForRecordingStart:(BOOL)start
{
  startCopy = start;
  [(RCWaveformContainerArray *)self->_waveformContainerViewControllers resetZoomScale];
  view = [(RCRecordingViewController *)self view];
  view2 = [(RCRecordingViewController *)self view];
  [view2 setShouldSaveAsNew:startCopy];

  [view updateForRecordingStart];
}

- (void)_updateRecordButtonViewState:(id)state
{
  stateCopy = state;
  view = [(RCRecordingViewController *)self view];
  [stateCopy currentTime];
  v6 = v5;

  [view updateRecordButtonViewStateWithCurrentTime:v6];
}

- (void)updateForTrimMode
{
  view = [(RCRecordingViewController *)self view];
  [view setRecordingViewState:8];
}

- (void)updateForRecordingEnd:(BOOL)end
{
  endCopy = end;
  view = [(RCRecordingViewController *)self view];
  [view updateForRecordingEnd:endCopy];

  view2 = [(RCRecordingViewController *)self view];
  displayStyle = [view2 displayStyle];

  if (displayStyle == 1)
  {
    [(RCWaveformContainerArray *)self->_waveformContainerViewControllers setCurrentTime:0.0];
    view3 = [(RCRecordingViewController *)self view];
    [view3 setCurrentTime:0.0];

    [(RCRecordingViewController *)self _reset];
  }

  else
  {
    overviewWaveformViewController = [(RCRecordingViewController *)self overviewWaveformViewController];
    [overviewWaveformViewController setIsEditMode:1];

    waveformContainerViewControllers = self->_waveformContainerViewControllers;

    [(RCWaveformContainerArray *)waveformContainerViewControllers setIsEditMode:1];
  }
}

- (void)updateUndoState:(BOOL)state isNewRecording:(BOOL)recording
{
  recordingCopy = recording;
  stateCopy = state;
  view = [(RCRecordingViewController *)self view];
  [view undoStateChanged:stateCopy isNewRecording:recordingCopy];
}

- (void)updateTrimSaveState:(BOOL)state
{
  stateCopy = state;
  view = [(RCRecordingViewController *)self view];
  [view trimSaveStateChanged:stateCopy];
}

- (void)prepareForPresent:(BOOL)present
{
  presentCopy = present;
  view = [(RCRecordingViewController *)self view];
  [view prepareForPresent:presentCopy];
}

- (void)setSelectedTimeRange:(id)range animationDuration:(double)duration
{
  var1 = range.var1;
  var0 = range.var0;
  [RCWaveformContainerArray setSelectedTimeRange:"setSelectedTimeRange:animationDuration:" animationDuration:?];
  overviewWaveformViewController = [(RCRecordingViewController *)self overviewWaveformViewController];
  [overviewWaveformViewController setSelectedTimeRange:var0 animationDuration:{var1, duration}];
}

- (void)toggleTranscriptView
{
  view = [(RCRecordingViewController *)self view];
  v4 = [view centerContentViewState] == 0;

  view2 = [(RCRecordingViewController *)self view];
  [view2 setCenterContentViewState:v4];

  [(RCRecordingViewController *)self _didToggleTranscriptView];
}

- (void)_beginFileTranscriptionIfNeeded
{
  uUID = [(RCRecordingViewController *)self UUID];
  if (uUID)
  {
    v4 = uUID;
    isDisplayingTranscriptView = [(RCRecordingViewController *)self isDisplayingTranscriptView];

    if (isDisplayingTranscriptView)
    {
      isRecording = [(RCRecordingViewController *)self isRecording];
      transcriptViewCoordinator = [(RCRecordingViewController *)self transcriptViewCoordinator];
      isPerformingLiveTranscription = [transcriptViewCoordinator isPerformingLiveTranscription];

      transcriptViewCoordinator2 = [(RCRecordingViewController *)self transcriptViewCoordinator];
      uUID2 = [(RCRecordingViewController *)self UUID];
      v11 = [transcriptViewCoordinator2 isProcessingOrDisplayingFileTranscriptionForUUID:uUID2];

      composition = [(RCRecordingViewController *)self composition];
      if (composition)
      {
        composition2 = [(RCRecordingViewController *)self composition];
        decomposedFragments = [composition2 decomposedFragments];
        v15 = [decomposedFragments count] == 0;
      }

      else
      {
        v15 = 1;
      }

      if (((isRecording | isPerformingLiveTranscription | v11) & 1) == 0 && v15)
      {
        transcriptViewCoordinator3 = [(RCRecordingViewController *)self transcriptViewCoordinator];
        uUID3 = [(RCRecordingViewController *)self UUID];
        [transcriptViewCoordinator3 beginFileTranscriptionForRecordingUUID:uUID3];
      }
    }
  }
}

- (BOOL)hasNoTranscribableContent
{
  transcriptViewCoordinator = [(RCRecordingViewController *)self transcriptViewCoordinator];
  hasNoTranscribableContent = [transcriptViewCoordinator hasNoTranscribableContent];

  return hasNoTranscribableContent;
}

- (BOOL)isDisplayingTranscriptView
{
  view = [(RCRecordingViewController *)self view];
  v3 = [view centerContentViewState] == 1;

  return v3;
}

- (void)showPlayingForUUID:(id)d
{
  dCopy = d;
  uUID = [(RCRecordingViewController *)self UUID];
  v6 = [dCopy isEqualToString:uUID];

  if (v6)
  {
    view = [(RCRecordingViewController *)self view];
    [view setPlayControlState:1];
  }
}

- (void)showIdleForUUID:(id)d
{
  dCopy = d;
  uUID = [(RCRecordingViewController *)self UUID];
  v6 = [dCopy isEqualToString:uUID];

  if (v6)
  {
    view = [(RCRecordingViewController *)self view];
    [view setPlayControlState:0];
  }
}

- (void)renameForUUID:(id)d toNewTitle:(id)title
{
  titleCopy = title;
  dCopy = d;
  uUID = [(RCRecordingViewController *)self UUID];
  v8 = [dCopy isEqualToString:uUID];

  if (v8)
  {
    view = [(RCRecordingViewController *)self view];
    [view setRecordingTitle:titleCopy];
  }
}

- (void)handleDeleteForUUID:(id)d
{
  dCopy = d;
  uUID = [(RCRecordingViewController *)self UUID];
  v6 = [dCopy isEqualToString:uUID];

  if (v6)
  {

    [(RCRecordingViewController *)self _reset];
  }
}

- (void)updateCurrentTimeForUUID:(id)d toTime:(double)time
{
  dCopy = d;
  uUID = [(RCRecordingViewController *)self UUID];
  v8 = [dCopy isEqualToString:uUID];

  if (v8)
  {
    view = [(RCRecordingViewController *)self view];
    [view setCurrentTime:time];
  }
}

- (void)updateToEditingInFlight:(BOOL)flight progress:(float)progress forUUID:(id)d
{
  flightCopy = flight;
  dCopy = d;
  editingStatusDict = [(RCRecordingViewController *)self editingStatusDict];

  if (!editingStatusDict)
  {
    v9 = objc_opt_new();
    [(RCRecordingViewController *)self setEditingStatusDict:v9];
  }

  editingStatusDict2 = [(RCRecordingViewController *)self editingStatusDict];
  v11 = editingStatusDict2;
  if (flightCopy)
  {
    v12 = [editingStatusDict2 objectForKeyedSubscript:dCopy];

    if (!v12)
    {
      v12 = objc_opt_new();
    }

    *&v13 = progress;
    v14 = [NSNumber numberWithFloat:v13];
    [v12 setProgress:v14];

    editingStatusDict3 = [(RCRecordingViewController *)self editingStatusDict];
    [editingStatusDict3 setObject:v12 forKeyedSubscript:dCopy];

    v11 = v12;
  }

  else
  {
    [editingStatusDict2 setObject:0 forKeyedSubscript:dCopy];
  }

  [(RCRecordingViewController *)self _syncEditingInFlight];
}

- (void)_syncEditingInFlight
{
  editingStatusDict = [(RCRecordingViewController *)self editingStatusDict];
  uUID = [(RCRecordingViewController *)self UUID];
  v10 = [editingStatusDict objectForKeyedSubscript:uUID];

  view = [(RCRecordingViewController *)self view];
  if (v10)
  {
    [view setEditingInFlight:1];

    view = [v10 progress];
    [view floatValue];
    v7 = v6;
    view2 = [(RCRecordingViewController *)self view];
    LODWORD(v9) = v7;
    [view2 setEditingProgress:v9];
  }

  else
  {
    [view setEditingInFlight:0];
  }
}

- (void)performControlsAction:(int64_t)action position:(double)position source:(id)source
{
  sourceCopy = source;
  [(RCRecordingViewController *)self stopScrolling];
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  uUID = [(RCRecordingViewController *)self UUID];
  [recordingViewControllerDelegate performAction:action atPosition:uUID forUUID:self sourceController:sourceCopy source:-[RCRecordingViewController _trackIndexForCurrentTrackState](self trackIndex:{"_trackIndexForCurrentTrackState"), position}];
}

- (void)performRenameWithNewTitle:(id)title
{
  titleCopy = title;
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  uUID = [(RCRecordingViewController *)self UUID];
  [recordingViewControllerDelegate performRenameWithNewTitle:titleCopy forUUID:uUID];
}

- (void)updateWithRecordingModel:(id)model requireMatchingUUID:(BOOL)d
{
  dCopy = d;
  modelCopy = model;
  if (!dCopy || ([modelCopy UUID], v6 = objc_claimAutoreleasedReturnValue(), -[RCRecordingViewController UUID](self, "UUID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToString:", v7), v7, v6, v8))
  {
    uUID = [modelCopy UUID];
    [(RCRecordingViewController *)self setUUID:uUID];

    view = [(RCRecordingViewController *)self view];
    title = [modelCopy title];
    [view setRecordingTitle:title];

    [modelCopy duration];
    [view setRecordingDuration:?];
    creationDate = [modelCopy creationDate];
    [view setCreationDate:creationDate];

    [view setHasTranscription:{objc_msgSend(modelCopy, "hasTranscription")}];
  }
}

- (void)updateWithPlaybackSettings:(id)settings
{
  settingsCopy = settings;
  hasCustomizedPlaybackSettings = [settingsCopy hasCustomizedPlaybackSettings];
  view = [(RCRecordingViewController *)self view];
  [view setHasCustomizedPlaybackSettings:hasCustomizedPlaybackSettings];

  [settingsCopy layerMix];
  if (v6 == -1.0)
  {
    trackInfoRepository = self->_trackInfoRepository;
    v8 = 1;
LABEL_5:
    [(RCRecordingTrackInfoRepository *)trackInfoRepository setMutedTrackIndexWithMutedIndex:v8];
    goto LABEL_6;
  }

  [settingsCopy layerMix];
  trackInfoRepository = self->_trackInfoRepository;
  if (v9 == 1.0)
  {
    v8 = 0;
    goto LABEL_5;
  }

  [(RCRecordingTrackInfoRepository *)trackInfoRepository clearMutedTrackIndex];
LABEL_6:
}

- (void)setCurrentTime:(double)time
{
  view = [(RCRecordingViewController *)self view];
  [view setCurrentTime:time];
}

- (void)reloadWaveformsFromComposition:(id)composition
{
  compositionCopy = composition;
  [(RCRecordingViewController *)self setComposition:compositionCopy];
  hasMultipleTracks = [compositionCopy hasMultipleTracks];
  view = [(RCRecordingViewController *)self view];
  [view setHasMultipleTracks:hasMultipleTracks];

  hasSpatialAudio = [compositionCopy hasSpatialAudio];
  view2 = [(RCRecordingViewController *)self view];
  [view2 setHasSpatialRecording:hasSpatialAudio];

  LODWORD(view2) = [compositionCopy hasMultipleTracks];
  v8 = [[RCCompositionWaveformDataSource alloc] initWithComposition:compositionCopy trackIndex:0];
  if (view2)
  {
    v9 = [[RCCompositionWaveformDataSource alloc] initWithComposition:compositionCopy trackIndex:1];
    v10 = [[RCCompositionWaveformDataSource alloc] initWithComposition:compositionCopy trackIndex:-1];
    [(RCRecordingViewController *)self _configureWaveformViewWithDataSources:v8 secondTrackDataSource:v9 overviewDataSource:v10];
  }

  else
  {
    [(RCRecordingViewController *)self _configureWaveformViewWithDataSource:v8];
  }
}

- (void)startEditWithComposition:(id)composition displayModel:(id)model
{
  compositionCopy = composition;
  modelCopy = model;
  [(RCRecordingViewController *)self setComposition:compositionCopy];
  if ([compositionCopy hasMultipleTracks] && (-[RCRecordingViewController trackInfoRepository](self, "trackInfoRepository"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "state"), v7, !v8))
  {
    v9 = 1;
  }

  else
  {
    if ([compositionCopy hasMultipleTracks])
    {
      goto LABEL_7;
    }

    v9 = 0;
  }

  trackInfoRepository = [(RCRecordingViewController *)self trackInfoRepository];
  [trackInfoRepository setState:v9];

LABEL_7:
  [(RCRecordingViewController *)self updateCurrentTrackTimeRange];
  view = [(RCRecordingViewController *)self view];
  [view updateForEditingStart];

  [(RCRecordingViewController *)self reloadWaveformsFromComposition:compositionCopy];
  waveformContainerViewControllers = self->_waveformContainerViewControllers;
  WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);
  [(RCWaveformContainerArray *)waveformContainerViewControllers setActiveTimeController:WeakRetained];

  overviewWaveformViewController = [(RCRecordingViewController *)self overviewWaveformViewController];
  v15 = objc_loadWeakRetained(&self->_activeTimeController);
  [overviewWaveformViewController setActiveTimeController:v15];

  [(RCRecordingViewController *)self updateWithRecordingModel:modelCopy];
  v16 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:[(RCRecordingViewController *)self _trackIndexForCurrentTrackState]];
  [(RCRecordingViewController *)self audioWaveformControllerDidChangeAVTimes:v16];

  [(RCWaveformContainerArray *)self->_waveformContainerViewControllers resetZoomScale];
  [(RCRecordingViewController *)self _beginFileTranscriptionIfNeeded];
}

- (id)createNewWaveformViewControllerWithDataSource:(id)source isOverview:(BOOL)overview isCompact:(BOOL)compact waveformOnly:(BOOL)only
{
  compactCopy = compact;
  overviewCopy = overview;
  onlyCopy = only;
  sourceCopy = source;
  v11 = [[RCAVWaveformViewController alloc] initWithWaveformDataSource:sourceCopy displayStyle:onlyCopy isOverview:overviewCopy isCompact:compactCopy delegate:self];

  waveformViewController = [(RCAVWaveformViewController *)v11 waveformViewController];
  [waveformViewController setIsOverview:overviewCopy];

  WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);
  [(RCAVWaveformViewController *)v11 setActiveTimeController:WeakRetained];

  return v11;
}

- (void)_configureWaveformViewWithDataSources:(id)sources secondTrackDataSource:(id)source overviewDataSource:(id)dataSource
{
  sourcesCopy = sources;
  sourceCopy = source;
  dataSourceCopy = dataSource;
  if (self->_multipleWaveformsViewController)
  {
    v10 = 1;
  }

  else
  {
    v10 = (sourcesCopy | sourceCopy) == 0;
  }

  if (!v10)
  {
    trackInfoRepository = [(RCRecordingViewController *)self trackInfoRepository];

    if (!trackInfoRepository)
    {
      v29 = [_TtC10VoiceMemos30RCRecordingTrackInfoRepository repositoryWithObserver:self];
      [(RCRecordingViewController *)self setTrackInfoRepository:v29];
    }

    waveformContainerViewControllers = self->_waveformContainerViewControllers;
    trackInfoRepository2 = [(RCRecordingViewController *)self trackInfoRepository];
    v32 = [_TtC10VoiceMemos33RCMultipleWaveformsViewController viewControllerWithWaveformContainers:waveformContainerViewControllers trackInfoRepository:trackInfoRepository2];
    multipleWaveformsViewController = self->_multipleWaveformsViewController;
    self->_multipleWaveformsViewController = v32;

    [(RCRecordingViewController *)self addChildViewController:self->_multipleWaveformsViewController];
    [(TrackIndexSettable *)self->_multipleWaveformsViewController didMoveToParentViewController:self];
    view = [(RCRecordingViewController *)self view];
    [view centerContentVerticalHuggingPriority];
    v36 = v35 + -10.0;

    view2 = [(TrackIndexSettable *)self->_multipleWaveformsViewController view];
    *&v38 = v36;
    [view2 setContentHuggingPriority:1 forAxis:v38];

    view3 = [(TrackIndexSettable *)self->_multipleWaveformsViewController view];
    *&v40 = v36;
    [view3 setContentHuggingPriority:0 forAxis:v40];

    view4 = [(TrackIndexSettable *)self->_multipleWaveformsViewController view];
    view5 = [(RCRecordingViewController *)self view];
    [view5 setWaveformView:view4];
  }

  _compactDisplayStyle = [(RCRecordingViewController *)self _compactDisplayStyle];
  [(RCWaveformContainerArray *)self->_waveformContainerViewControllers cancelLoadingWaveformDataSource];
  v12 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers count];
  if (sourcesCopy && !v12)
  {
    v13 = self->_waveformContainerViewControllers;
    v14 = [(RCRecordingViewController *)self createNewWaveformViewControllerWithDataSource:sourcesCopy isOverview:0 isCompact:_compactDisplayStyle waveformOnly:0];
    [(RCWaveformContainerArray *)v13 addContainer:v14];
  }

  v15 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers count];
  if (sourceCopy && v15 == 1)
  {
    v16 = self->_waveformContainerViewControllers;
    v17 = [(RCRecordingViewController *)self createNewWaveformViewControllerWithDataSource:sourceCopy isOverview:0 isCompact:_compactDisplayStyle waveformOnly:1];
    [(RCWaveformContainerArray *)v16 addContainer:v17];
  }

  if ([(RCRecordingViewController *)self isRecording])
  {
    if ([(RCRecordingViewController *)self _trackIndexForCurrentTrackState])
    {
      _trackIndexForCurrentTrackState = [(RCRecordingViewController *)self _trackIndexForCurrentTrackState];
      v19 = sourcesCopy;
      if (_trackIndexForCurrentTrackState != 1)
      {
        goto LABEL_29;
      }

      v20 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:1];
      WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);
      [v20 reloadWaveformDataSource:sourceCopy withActiveTimeController:WeakRetained];
    }

    else
    {
      v43 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:0];
      v44 = objc_loadWeakRetained(&self->_activeTimeController);
      [v43 reloadWaveformDataSource:sourcesCopy withActiveTimeController:v44];

      isSilencing = [(RCRecordingViewController *)self isSilencing];
      v19 = sourcesCopy;
      if (!isSilencing)
      {
        goto LABEL_29;
      }

      v20 = [sourcesCopy copyWithTrackIndex:1 emptyCopy:1];
      WeakRetained = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:1];
      v46 = objc_loadWeakRetained(&self->_activeTimeController);
      [WeakRetained reloadWaveformDataSource:v20 withActiveTimeController:v46];
    }

    goto LABEL_28;
  }

  v22 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:0];
  v23 = objc_loadWeakRetained(&self->_activeTimeController);
  [v22 reloadWaveformDataSource:sourcesCopy withActiveTimeController:v23];

  v24 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:1];
  v25 = objc_loadWeakRetained(&self->_activeTimeController);
  [v24 reloadWaveformDataSource:sourceCopy withActiveTimeController:v25];

  v26 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers count];
  if (!sourceCopy && v26 == 2)
  {
    [(RCWaveformContainerArray *)self->_waveformContainerViewControllers removeContainerAtIndex:1];
  }

  v27 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers count];
  v19 = sourcesCopy;
  if (!sourcesCopy && v27 == 1)
  {
    [(RCWaveformContainerArray *)self->_waveformContainerViewControllers removeContainerAtIndex:0];
LABEL_28:
    v19 = sourcesCopy;
  }

LABEL_29:
  if (!(v19 | sourceCopy))
  {
    trackInfoRepository3 = [(RCRecordingViewController *)self trackInfoRepository];
    [trackInfoRepository3 setState:0];
  }

  overviewWaveformViewController = self->_overviewWaveformViewController;
  if (!overviewWaveformViewController)
  {
    v49 = [(RCRecordingViewController *)self createNewWaveformViewControllerWithDataSource:dataSourceCopy isOverview:1 isCompact:1 waveformOnly:0];
    [(RCRecordingViewController *)self setOverviewWaveformViewController:v49];
    [(RCRecordingViewController *)self addChildViewController:v49];
    [v49 didMoveToParentViewController:self];
    view6 = [v49 view];
    view7 = [(RCRecordingViewController *)self view];
    [view7 setOverviewWaveformView:view6];

    overviewWaveformViewController = self->_overviewWaveformViewController;
  }

  v52 = objc_loadWeakRetained(&self->_activeTimeController);
  [(RCAVWaveformViewController *)overviewWaveformViewController reloadWaveformDataSource:dataSourceCopy withActiveTimeController:v52];

  waveformViewController = [(RCAVWaveformViewController *)self->_overviewWaveformViewController waveformViewController];
  [waveformViewController setIsOverview:1];

  [(RCRecordingViewController *)self _syncWaveformCompactness];
}

- (void)_configureWaveformViewWithDataSource:(id)source
{
  sourceCopy = source;
  if ([(RCRecordingViewController *)self isRecording])
  {
    _trackIndexForCurrentTrackState = [(RCRecordingViewController *)self _trackIndexForCurrentTrackState];
    if (_trackIndexForCurrentTrackState)
    {
      v5 = 0;
    }

    else
    {
      v5 = sourceCopy;
    }

    if (_trackIndexForCurrentTrackState == 1)
    {
      v6 = sourceCopy;
    }

    else
    {
      v6 = 0;
    }

    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = self;
    v5 = sourceCopy;
    v6 = 0;
  }

  [(RCRecordingViewController *)selfCopy2 _configureWaveformViewWithDataSources:v5 secondTrackDataSource:v6 overviewDataSource:?];
}

- (BOOL)_compactDisplayStyle
{
  view = [(RCRecordingViewController *)self view];
  displayStyle = [view displayStyle];

  if (displayStyle != 1)
  {
    return displayStyle == 2;
  }

  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  supportsCompactRecordingCard = [v5 supportsCompactRecordingCard];

  return supportsCompactRecordingCard;
}

- (void)_syncWaveformCompactness
{
  _compactDisplayStyle = [(RCRecordingViewController *)self _compactDisplayStyle];
  view = [(RCRecordingViewController *)self view];
  v5 = [view displayStyle] == 3;

  view2 = [(RCRecordingViewController *)self view];
  recordingViewState = [view2 recordingViewState];

  waveformViewControllers = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers waveformViewControllers];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007F1CC;
  v10[3] = &unk_10028B780;
  v11 = ((recordingViewState - 2) < 6) & _compactDisplayStyle;
  v12 = _compactDisplayStyle;
  v13 = v5;
  [waveformViewControllers enumerateObjectsUsingBlock:v10];

  if (_compactDisplayStyle)
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

- (void)_configureTranscriptViewForLiveTranscription:(id)transcription
{
  transcriptionCopy = transcription;
  transcriptViewCoordinator = [(RCRecordingViewController *)self transcriptViewCoordinator];
  [transcriptViewCoordinator beginLiveTranscription:transcriptionCopy];
}

- (void)_clearTranscriptView
{
  transcriptViewCoordinator = [(RCRecordingViewController *)self transcriptViewCoordinator];
  [transcriptViewCoordinator clearData];
}

- (void)handleCancel
{
  view = [(RCRecordingViewController *)self view];
  recordingViewState = [view recordingViewState];

  if (recordingViewState == 8)
  {
    recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
    [recordingViewControllerDelegate cancelTrimMode];
  }
}

- (void)cleanupAfterExitTrim
{
  v3 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers objectAtIndexedSubscript:[(RCRecordingViewController *)self _trackIndexForCurrentTrackState]];
  activeTimeController = [v3 activeTimeController];
  [activeTimeController currentRate];
  v6 = v5;

  view = [(RCRecordingViewController *)self view];
  v8 = view;
  if (v6 <= 0.0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  [view setRecordingViewState:v9];

  view2 = [(RCRecordingViewController *)self view];
  [(RCWaveformContainerArray *)self->_waveformContainerViewControllers currentTime];
  [view2 updateRecordButtonViewStateWithCurrentTime:?];
}

- (void)handleDone
{
  view = [(RCRecordingViewController *)self view];
  recordingViewState = [view recordingViewState];
  if (recordingViewState > 8)
  {
    goto LABEL_7;
  }

  if (((1 << recordingViewState) & 0x3C) != 0)
  {
    recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
    [recordingViewControllerDelegate endEditing];
    goto LABEL_6;
  }

  if (((1 << recordingViewState) & 0xC2) != 0)
  {
    recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
    [recordingViewControllerDelegate performAction:4 atPosition:0 forUUID:0 sourceController:0 source:-[RCRecordingViewController _trackIndexForCurrentTrackState](self trackIndex:{"_trackIndexForCurrentTrackState"), 0.0}];
LABEL_6:

LABEL_7:
    trackInfoRepository = [(RCRecordingViewController *)self trackInfoRepository];
    [trackInfoRepository setState:0];

    goto LABEL_8;
  }

  if (recordingViewState != 8)
  {
    goto LABEL_7;
  }

  recordingViewControllerDelegate2 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  [recordingViewControllerDelegate2 exitTrimMode];

  [view setRecordingViewState:5];
  recordingViewControllerDelegate3 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  [recordingViewControllerDelegate3 didExitTrimMode];

  +[RCAnalyticsUtilities sendDidTrimVoiceMemo];
  [(RCWaveformContainerArray *)self->_waveformContainerViewControllers currentTime];
  [view updateRecordButtonViewStateWithCurrentTime:?];
LABEL_8:
}

- (void)cleanupAfterDismiss
{
  [(RCRecordingViewController *)self _reset];
  view = [(RCRecordingViewController *)self view];
  [view cleanupAfterDismiss];
}

- (void)reset
{
  view = [(RCRecordingViewController *)self view];
  [view reset];
}

- (BOOL)recordingTitleHasBeenEdited
{
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  uUID = [(RCRecordingViewController *)self UUID];
  v5 = [recordingViewControllerDelegate recordingTitleHasBeenEditedForUUID:uUID];

  return v5;
}

- (BOOL)isRecording
{
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  isRecording = [recordingViewControllerDelegate isRecording];

  return isRecording;
}

- (BOOL)isSilencing
{
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  isSilencing = [recordingViewControllerDelegate isSilencing];

  return isSilencing;
}

- (BOOL)willRecordIntoTrackTwo
{
  trackInfoRepository = [(RCRecordingViewController *)self trackInfoRepository];
  if ([trackInfoRepository state] == 2)
  {
    composition = [(RCRecordingViewController *)self composition];
    v5 = [composition hasMultipleTracks] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)hasUnsavedEdits
{
  composition = [(RCRecordingViewController *)self composition];
  decomposedFragments = [composition decomposedFragments];
  v4 = [decomposedFragments count] != 0;

  return v4;
}

- (void)didUpdateRecordingViewState:(int64_t)state newState:(int64_t)newState
{
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  [recordingViewControllerDelegate didUpdateRecordingViewState:state newState:newState];

  multipleWaveformsViewController = self->_multipleWaveformsViewController;
  view = [(RCRecordingViewController *)self view];
  -[TrackIndexSettable recordingViewStateDidUpdate:](multipleWaveformsViewController, "recordingViewStateDidUpdate:", [view recordingViewState]);

  hasNoTranscribableContent = [(RCRecordingViewController *)self hasNoTranscribableContent];
  view2 = [(RCRecordingViewController *)self view];
  [view2 setHasNoTranscribableContent:hasNoTranscribableContent];
}

- (void)didUpdateRecordingViewDisplayStyle
{
  if ([(RCRecordingViewController *)self isDisplayingTranscriptView])
  {
    view = [(RCRecordingViewController *)self view];
    displayStyle = [view displayStyle];

    if (displayStyle != 3)
    {
      [(RCRecordingViewController *)self toggleTranscriptView];
    }
  }

  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  [recordingViewControllerDelegate didUpdateRecordingViewDisplayStyle];

  [(RCRecordingViewController *)self _updateNavigationBarVisibility];
}

- (void)_updateNavigationBarVisibility
{
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  recordingCardNavigationController = [recordingViewControllerDelegate recordingCardNavigationController];

  shouldHideNavigationBar = [(RCRecordingViewController *)self shouldHideNavigationBar];
  v5 = recordingCardNavigationController;
  if (recordingCardNavigationController)
  {
    navigationController = [(RCRecordingViewController *)self navigationController];
    isNavigationBarHidden = [navigationController isNavigationBarHidden];

    v5 = recordingCardNavigationController;
    if (shouldHideNavigationBar != isNavigationBarHidden)
    {
      [recordingCardNavigationController setNavigationBarHidden:shouldHideNavigationBar];
      recordingViewControllerDelegate2 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
      [recordingViewControllerDelegate2 didUpdateNavigationBarVisibility];

      v5 = recordingCardNavigationController;
    }
  }
}

- (void)willUpdateRecordingCenterContentViewState:(int64_t)state
{
  if (state == 1)
  {
    transcriptViewCoordinator = [(RCRecordingViewController *)self transcriptViewCoordinator];
    [transcriptViewCoordinator willDisplayTranscriptView];

    v7 = +[RecorderAppDelegate sharedAppDelegate];
    dependencyContainer = [v7 dependencyContainer];
    analyticsManager = [dependencyContainer analyticsManager];
    [analyticsManager userViewedTranscription];
  }
}

- (void)didUpdateRecordingCenterContentViewState
{
  view = [(RCRecordingViewController *)self view];
  centerContentViewState = [view centerContentViewState];

  if (centerContentViewState != 1)
  {
    transcriptViewCoordinator = [(RCRecordingViewController *)self transcriptViewCoordinator];
    [transcriptViewCoordinator didDismissTranscriptView];
  }
}

- (void)willUpdateRecordingViewTranscriptState:(int64_t)state
{
  if (state)
  {
    if (state != 1)
    {
      return;
    }

    transcriptViewCoordinator = [(RCRecordingViewController *)self transcriptViewCoordinator];
    [transcriptViewCoordinator willExpandTranscriptView];
  }

  else
  {
    transcriptViewCoordinator = [(RCRecordingViewController *)self transcriptViewCoordinator];
    [transcriptViewCoordinator willCollapseTranscriptView];
  }
}

- (void)recordingViewWidthDidChange:(double)change
{
  transcriptViewCoordinator = [(RCRecordingViewController *)self transcriptViewCoordinator];
  [transcriptViewCoordinator didChangeHostViewWidth:change];
}

- (id)recordingCardNavigationItem
{
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  recordingCardNavigationItem = [recordingViewControllerDelegate recordingCardNavigationItem];

  return recordingCardNavigationItem;
}

- (BOOL)shouldHideNavigationBar
{
  view = [(RCRecordingViewController *)self view];
  if ([view displayStyle] == 3)
  {
    v4 = 0;
  }

  else
  {
    view2 = [(RCRecordingViewController *)self view];
    recordButtonRepository = [view2 recordButtonRepository];
    v4 = [recordButtonRepository state] == 2;
  }

  return v4;
}

- (BOOL)accessibilityPerformEscape
{
  view = [(RCRecordingViewController *)self view];
  if ([view displayStyle] == 2)
  {

    return 0;
  }

  view2 = [(RCRecordingViewController *)self view];
  recordingViewState = [view2 recordingViewState];

  if (recordingViewState == 1)
  {
    return 0;
  }

  [(RCRecordingViewController *)self handleDone];
  return 1;
}

- (void)expandTranscriptView
{
  view = [(RCRecordingViewController *)self view];
  [view setTranscriptViewState:1];
}

- (void)collapseTranscriptView
{
  view = [(RCRecordingViewController *)self view];
  [view setTranscriptViewState:0];
}

- (void)trackInfoStateDidChangeWithOldState:(unint64_t)state newState:(unint64_t)newState
{
  view = [(RCRecordingViewController *)self view];
  [view updateTrackState:newState];

  if ([(RCRecordingViewController *)self willRecordIntoTrackTwo])
  {
    v7 = +[RecorderAppDelegate sharedAppDelegate];
    dependencyContainer = [v7 dependencyContainer];
    analyticsManager = [dependencyContainer analyticsManager];
    [analyticsManager userEnabledSecondLayer];

    activeTimeController = [(RCRecordingViewController *)self activeTimeController];
    [activeTimeController setTargetTime:0.0];
  }

  if (newState)
  {
    _trackIndexForCurrentTrackState = [(RCRecordingViewController *)self _trackIndexForCurrentTrackState];
    waveformContainerViewControllers = [(RCRecordingViewController *)self waveformContainerViewControllers];
    v13 = [waveformContainerViewControllers objectAtIndexedSubscript:_trackIndexForCurrentTrackState];
    waveformViewController = [v13 waveformViewController];
    [waveformViewController bounceWaveform];
  }

  [(RCRecordingViewController *)self updateCurrentTrackTimeRange];
  view2 = [(RCRecordingViewController *)self view];
  waveformContainerViewControllers2 = [(RCRecordingViewController *)self waveformContainerViewControllers];
  [waveformContainerViewControllers2 currentTime];
  [view2 updateRecordButtonViewStateWithCurrentTime:?];
}

- (void)audioWaveformControllerDidChangeAVTimes:(id)times
{
  timesCopy = times;
  waveformViewControllers = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers waveformViewControllers];
  if ([waveformViewControllers containsObject:timesCopy])
  {
  }

  else
  {
    overviewWaveformViewController = [(RCRecordingViewController *)self overviewWaveformViewController];

    if (overviewWaveformViewController != timesCopy)
    {
      goto LABEL_18;
    }
  }

  if ((byte_1002D70A0 & 1) == 0)
  {
    byte_1002D70A0 = 1;
    view = [(RCRecordingViewController *)self view];
    playControlState = [view playControlState];

    isRecording = [(RCRecordingViewController *)self isRecording];
    view2 = [(RCRecordingViewController *)self view];
    recordingViewState = [view2 recordingViewState];

    activeTimeController = [(RCRecordingViewController *)self activeTimeController];
    [activeTimeController currentDuration];
    v14 = v13;
    view3 = [(RCRecordingViewController *)self view];
    [view3 setRecordingDuration:v14];

    [activeTimeController currentTime];
    v17 = v16;
    view4 = [(RCRecordingViewController *)self view];
    [view4 setCurrentTime:v17];

    if (!playControlState && (isRecording & 1) == 0 && recordingViewState)
    {
      [(RCRecordingViewController *)self _updateRecordButtonViewState:timesCopy];
    }

    view5 = [(RCRecordingViewController *)self view];
    if ([view5 recordingViewState] == 8)
    {
      [timesCopy selectedTimeRange];
      [activeTimeController currentDuration];
      RCTimeRangeMake();
      v20 = RCTimeRangeEqualToTimeRange();

      v21 = v20 ^ 1u;
    }

    else
    {

      v21 = 0;
    }

    view6 = [(RCRecordingViewController *)self view];
    [view6 setTrimEnabled:v21];

    overviewWaveformViewController2 = [(RCRecordingViewController *)self overviewWaveformViewController];

    if (overviewWaveformViewController2 == timesCopy)
    {
      waveformContainerViewControllers = self->_waveformContainerViewControllers;
      [timesCopy selectedTimeRange];
      [RCWaveformContainerArray setSelectedTimeRange:"setSelectedTimeRange:animationDuration:" animationDuration:?];
    }

    else
    {
      overviewWaveformViewController3 = [(RCRecordingViewController *)self overviewWaveformViewController];
      waveformViewController = [overviewWaveformViewController3 waveformViewController];
      isSelectionOverlayCurrentlyTracking = [waveformViewController isSelectionOverlayCurrentlyTracking];

      if (isSelectionOverlayCurrentlyTracking)
      {
        [(RCRecordingViewController *)self stopScrolling];
      }

      waveformViewControllers2 = [(RCWaveformContainerArray *)self->_waveformContainerViewControllers waveformViewControllers];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100080230;
      v32[3] = &unk_10028A6D0;
      v28 = timesCopy;
      v33 = v28;
      [waveformViewControllers2 enumerateObjectsUsingBlock:v32];

      overviewWaveformViewController4 = [(RCRecordingViewController *)self overviewWaveformViewController];
      [v28 selectedTimeRange];
      [overviewWaveformViewController4 setSelectedTimeRange:? animationDuration:?];
    }

    recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
    [timesCopy currentTime];
    [recordingViewControllerDelegate waveformTimeUpdated:?];

    byte_1002D70A0 = 0;
  }

LABEL_18:
}

- (void)handleRemovalOfUUID:(id)d
{
  dCopy = d;
  uUID = [(RCRecordingViewController *)self UUID];
  v6 = [uUID isEqualToString:dCopy];

  if (v6)
  {

    [(RCRecordingViewController *)self _reset];
  }
}

- (BOOL)hasShareableComposition
{
  composition = [(RCRecordingViewController *)self composition];
  compositionIsShareable = [composition compositionIsShareable];

  return compositionIsShareable;
}

- (unint64_t)_trackIndexForCurrentTrackState
{
  trackInfoRepository = [(RCRecordingViewController *)self trackInfoRepository];
  state = [trackInfoRepository state];

  if (state < 3)
  {
    return qword_100240440[state];
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
  composition = [(RCRecordingViewController *)self composition];
  if ([composition hasMultipleTracks])
  {
    IsEnabled = RCOverdubRecordingIsEnabled();

    if (IsEnabled)
    {
      _trackIndexForCurrentTrackState = [(RCRecordingViewController *)self _trackIndexForCurrentTrackState];
      composition2 = [(RCRecordingViewController *)self composition];
      [composition2 composedTimeRangeForTrackIndex:_trackIndexForCurrentTrackState];
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
  view = [(RCRecordingViewController *)self view];
  [view setCurrentTrackTimeRange:{v8, v10}];
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