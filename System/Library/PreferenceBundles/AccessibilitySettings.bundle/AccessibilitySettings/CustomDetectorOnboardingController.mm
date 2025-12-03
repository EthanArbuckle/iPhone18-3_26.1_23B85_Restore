@interface CustomDetectorOnboardingController
- (CustomDetectorDelegate)customDetectorDelegate;
- (CustomDetectorOnboardingController)initWithCategory:(id)category;
- (CustomDetectorOnboardingController)initWithDetector:(id)detector;
- (void)_allShotsRecorded;
- (void)_bugButtonTapped;
- (void)_cancelModalFlowWithSwipe:(BOOL)swipe fromNameSoundPane:(BOOL)pane;
- (void)_continueToTraining;
- (void)_createInfoPane;
- (void)_createNameSoundPane;
- (void)_finishLater;
- (void)_finishOnboarding;
- (void)_kShotListeningStateDidChange;
- (void)_kShotModelSimilarityWarning;
- (void)_keepListening;
- (void)_keepTraining;
- (void)_setUpContinueButton:(id)button withSelector:(SEL)selector;
- (void)_setupLinkButtonWithTitle:(id)title action:(SEL)action;
- (void)_setupTrainingControllerBoldButtonWithTitle:(id)title action:(SEL)action;
- (void)_startTraining;
- (void)_timeout:(id)_timeout;
- (void)dealloc;
- (void)discardSoundAndKeepListening;
- (void)dismissLearnMorePane;
- (void)enterListeningState;
- (void)enterPreListeningState;
- (void)enterSavingState;
- (void)enterTimeoutState;
- (void)enterWaitingForSaveState;
- (void)enterWaitingForSoundState;
- (void)onboardNewSound;
- (void)presentLearnMorePane;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)saveComplete;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CustomDetectorOnboardingController

- (CustomDetectorOnboardingController)initWithCategory:(id)category
{
  categoryCopy = category;
  v13.receiver = self;
  v13.super_class = CustomDetectorOnboardingController;
  v5 = [(CustomDetectorOnboardingController *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_isTrainingNewDetector = 1;
    v5->_category = categoryCopy;
    presentationController = [(CustomDetectorOnboardingController *)v5 presentationController];
    [presentationController setDelegate:v6];

    v8 = [[AXSDKShotDetector alloc] initWithName:&stru_25D420];
    [v8 setCategory:categoryCopy];
    v9 = [[SoundDetectionKshotTrainingAudioManager alloc] initWithTargetDetector:v8];
    [(CustomDetectorOnboardingController *)v6 setStateManager:v9];

    stateManager = [(CustomDetectorOnboardingController *)v6 stateManager];
    [stateManager setDelegate:v6];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _kShotModelSimilarityWarning, @"com.apple.accessibility.kshot.model.similarity.warning", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v6;
}

- (CustomDetectorOnboardingController)initWithDetector:(id)detector
{
  detectorCopy = detector;
  v12.receiver = self;
  v12.super_class = CustomDetectorOnboardingController;
  v5 = [(CustomDetectorOnboardingController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    presentationController = [(CustomDetectorOnboardingController *)v5 presentationController];
    [presentationController setDelegate:v6];

    v8 = [[SoundDetectionKshotTrainingAudioManager alloc] initWithTargetDetector:detectorCopy];
    [(CustomDetectorOnboardingController *)v6 setStateManager:v8];

    stateManager = [(CustomDetectorOnboardingController *)v6 stateManager];
    [stateManager setDelegate:v6];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _kShotModelSimilarityWarning, @"com.apple.accessibility.kshot.model.similarity.warning", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v6;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CustomDetectorOnboardingController;
  [(CustomDetectorOnboardingController *)&v10 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = +[AXSDSettings sharedInstance];
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = __49__CustomDetectorOnboardingController_viewDidLoad__block_invoke;
  v7 = &unk_255388;
  objc_copyWeak(&v8, &location);
  [v3 registerUpdateBlock:&v4 forRetrieveSelector:"soundDetectionKShotListeningState" withListener:self];

  if ([(CustomDetectorOnboardingController *)self isTrainingNewDetector:v4])
  {
    [(CustomDetectorOnboardingController *)self _createInfoPane];
  }

  else
  {
    [(CustomDetectorOnboardingController *)self _startTraining];
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __49__CustomDetectorOnboardingController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _kShotListeningStateDidChange];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CustomDetectorOnboardingController;
  [(CustomDetectorOnboardingController *)&v5 viewWillDisappear:disappear];
  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  [stateManager stopListeningAndTrainIfPossible:0];
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  visibleViewController = [(CustomDetectorOnboardingController *)self visibleViewController];
  nameDetectorController = [(CustomDetectorOnboardingController *)self nameDetectorController];
  v6 = [visibleViewController isEqual:nameDetectorController];

  [(CustomDetectorOnboardingController *)self _cancelModalFlowWithSwipe:1 fromNameSoundPane:v6];
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  customDetectorDelegate = [(CustomDetectorOnboardingController *)self customDetectorDelegate];
  [customDetectorDelegate exitedOnboardingFlow];
}

- (void)_createInfoPane
{
  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  targetDetector = [stateManager targetDetector];
  category = [targetDetector category];
  v6 = AXSDDetectorCategoryAlarm;

  if (category == v6)
  {
    v12 = @"CUSTOM_ALARM";
  }

  else
  {
    stateManager2 = [(CustomDetectorOnboardingController *)self stateManager];
    targetDetector2 = [stateManager2 targetDetector];
    category2 = [targetDetector2 category];
    v10 = AXSDDetectorCategoryHousehold;

    if (category2 != v10)
    {
      v23 = &stru_25D420;
      v11 = &stru_25D420;
      goto LABEL_7;
    }

    v12 = @"CUSTOM_APPLIANCE";
  }

  v23 = settingsLocString(v12, @"SoundDetection");
  v13 = AXLocStringKeyForModel();
  v11 = settingsLocString(v13, @"SoundDetection");

LABEL_7:
  v14 = [[DetectorInfoController alloc] initWithTitle:v23 detailText:v11 symbolName:0];
  detectorInfoController = self->_detectorInfoController;
  self->_detectorInfoController = v14;

  v16 = [UIBarButtonItem alloc];
  v17 = settingsLocString(@"CANCEL_BUTTON", @"SoundDetection");
  v18 = [v16 initWithTitle:v17 style:0 target:self action:"_finishLater"];
  detectorInfoController = [(CustomDetectorOnboardingController *)self detectorInfoController];
  navigationItem = [detectorInfoController navigationItem];
  [navigationItem setRightBarButtonItem:v18];

  detectorInfoController2 = [(CustomDetectorOnboardingController *)self detectorInfoController];
  [(CustomDetectorOnboardingController *)self _setUpContinueButton:detectorInfoController2 withSelector:"_createNameSoundPane"];

  detectorInfoController3 = [(CustomDetectorOnboardingController *)self detectorInfoController];
  [(CustomDetectorOnboardingController *)self pushViewController:detectorInfoController3 animated:1];
}

- (void)_createNameSoundPane
{
  v27 = settingsLocString(@"NAME_SOUND_TITLE", @"SoundDetection");
  v3 = settingsLocString(@"NAME_SOUND_SUBTITLE", @"SoundDetection");
  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  targetDetector = [stateManager targetDetector];
  category = [targetDetector category];
  v7 = AXSDDetectorCategoryAlarm;

  if (category == v7)
  {
    v12 = @"CUSTOM_ALARM_NAME";
    v13 = @"CUSTOM_ALARM";
  }

  else
  {
    stateManager2 = [(CustomDetectorOnboardingController *)self stateManager];
    targetDetector2 = [stateManager2 targetDetector];
    category2 = [targetDetector2 category];
    v11 = AXSDDetectorCategoryHousehold;

    if (category2 != v11)
    {
      goto LABEL_6;
    }

    v12 = @"CUSTOM_APPLIANCE_NAME";
    v13 = @"CUSTOM_APPLIANCE";
  }

  v14 = settingsLocString(v13, @"SoundDetection");

  v15 = settingsLocString(v12, @"SoundDetection");

  v27 = v14;
  v3 = v15;
LABEL_6:
  v16 = [[NameDetectorController alloc] initWithTitle:v27 detailText:v3 symbolName:0];
  nameDetectorController = self->_nameDetectorController;
  self->_nameDetectorController = v16;

  nameDetectorController = [(CustomDetectorOnboardingController *)self nameDetectorController];
  [nameDetectorController setDelegate:self];

  nameDetectorController2 = [(CustomDetectorOnboardingController *)self nameDetectorController];
  [nameDetectorController2 setModalInPresentation:1];

  nameDetectorController3 = [(CustomDetectorOnboardingController *)self nameDetectorController];
  [(CustomDetectorOnboardingController *)self _setUpContinueButton:nameDetectorController3 withSelector:"_continueToTraining"];

  v21 = [UIBarButtonItem alloc];
  v22 = settingsLocString(@"CANCEL_BUTTON", @"SoundDetection");
  v23 = [v21 initWithTitle:v22 style:0 target:self action:"_cancelFromNameSound"];
  nameDetectorController4 = [(CustomDetectorOnboardingController *)self nameDetectorController];
  navigationItem = [nameDetectorController4 navigationItem];
  [navigationItem setRightBarButtonItem:v23];

  nameDetectorController5 = [(CustomDetectorOnboardingController *)self nameDetectorController];
  [(CustomDetectorOnboardingController *)self pushViewController:nameDetectorController5 animated:1];
}

- (void)_continueToTraining
{
  nameDetectorController = [(CustomDetectorOnboardingController *)self nameDetectorController];
  detectorNameTextField = [nameDetectorController detectorNameTextField];
  text = [detectorNameTextField text];
  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  targetDetector = [stateManager targetDetector];
  [targetDetector setName:text];

  stateManager2 = [(CustomDetectorOnboardingController *)self stateManager];
  targetDetector2 = [stateManager2 targetDetector];
  name = [targetDetector2 name];
  v11 = [name length];

  if (!v11)
  {
    v12 = settingsLocString(@"CUSTOM_SOUND_PLACEHOLDER", @"SoundDetection");
    stateManager3 = [(CustomDetectorOnboardingController *)self stateManager];
    targetDetector3 = [stateManager3 targetDetector];
    [targetDetector3 setName:v12];
  }

  v15 = +[AXSDSettings sharedInstance];
  stateManager4 = [(CustomDetectorOnboardingController *)self stateManager];
  targetDetector4 = [stateManager4 targetDetector];
  [v15 addKShotDetector:targetDetector4];

  if (!self->_nameDetectorLinkButton)
  {
    v18 = +[OBLinkTrayButton linkButton];
    nameDetectorLinkButton = self->_nameDetectorLinkButton;
    self->_nameDetectorLinkButton = v18;

    nameDetectorLinkButton = [(CustomDetectorOnboardingController *)self nameDetectorLinkButton];
    v21 = settingsLocString(@"FINISH_LATER", @"SoundDetection");
    [nameDetectorLinkButton setTitle:v21 forState:0];

    nameDetectorLinkButton2 = [(CustomDetectorOnboardingController *)self nameDetectorLinkButton];
    [nameDetectorLinkButton2 addTarget:self action:"_cancelFromNameSound" forControlEvents:64];

    nameDetectorController2 = [(CustomDetectorOnboardingController *)self nameDetectorController];
    buttonTray = [nameDetectorController2 buttonTray];
    nameDetectorLinkButton3 = [(CustomDetectorOnboardingController *)self nameDetectorLinkButton];
    [buttonTray addButton:nameDetectorLinkButton3];
  }

  [(CustomDetectorOnboardingController *)self _startTraining];
}

- (void)_startTraining
{
  v35 = AXLocStringKeyForModel();
  v3 = settingsLocString(@"SET_UP", @"SoundDetection");
  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  targetDetector = [stateManager targetDetector];
  name = [targetDetector name];
  v7 = [NSString localizedStringWithFormat:v3, name];

  v8 = [TrainDetectorController alloc];
  v9 = settingsLocString(v35, @"SoundDetection");
  v10 = [(TrainDetectorController *)v8 initWithTitle:v7 detailText:v9 symbolName:0];
  trainingController = self->_trainingController;
  self->_trainingController = v10;

  trainingController = [(CustomDetectorOnboardingController *)self trainingController];
  [trainingController setModalInPresentation:1];

  trainingController2 = [(CustomDetectorOnboardingController *)self trainingController];
  [trainingController2 setLearnMoreDelegate:self];

  stateManager2 = [(CustomDetectorOnboardingController *)self stateManager];
  targetDetector2 = [stateManager2 targetDetector];
  category = [targetDetector2 category];
  trainingController3 = [(CustomDetectorOnboardingController *)self trainingController];
  [trainingController3 setCategory:category];

  v18 = [UIBarButtonItem alloc];
  v19 = settingsLocString(@"CANCEL_BUTTON", @"SoundDetection");
  v20 = [v18 initWithTitle:v19 style:0 target:self action:"_cancelFromTraining"];
  trainingController4 = [(CustomDetectorOnboardingController *)self trainingController];
  navigationItem = [trainingController4 navigationItem];
  [navigationItem setRightBarButtonItem:v20];

  if (AXIsInternalInstall())
  {
    v23 = [UIImage systemImageNamed:@"ant.circle.fill"];
    v24 = +[UIColor systemBlueColor];
    v25 = [v23 imageWithTintColor:v24];
    v26 = [UIButton systemButtonWithImage:v25 target:self action:"_bugButtonTapped"];

    trainingController5 = [(CustomDetectorOnboardingController *)self trainingController];
    navigationItem2 = [trainingController5 navigationItem];
    [navigationItem2 setTitleView:v26];
  }

  linkButton = self->_linkButton;
  self->_linkButton = 0;

  boldButton = self->_boldButton;
  self->_boldButton = 0;

  v31 = settingsLocString(@"START_LISTENING_BUTTON", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupTrainingControllerBoldButtonWithTitle:v31 action:"enterWaitingForSoundState"];

  v32 = settingsLocString(@"FINISH_LATER", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupLinkButtonWithTitle:v32 action:"_finishLater"];

  trainingController6 = [(CustomDetectorOnboardingController *)self trainingController];
  [(CustomDetectorOnboardingController *)self pushViewController:trainingController6 animated:1];

  [(SoundDetectionKshotTrainingAudioManager *)self->_stateManager startListening];
  v34 = +[AXSDSettings sharedInstance];
  [v34 setSoundDetectionKShotListeningState:0];
}

- (void)_cancelModalFlowWithSwipe:(BOOL)swipe fromNameSoundPane:(BOOL)pane
{
  paneCopy = pane;
  swipeCopy = swipe;
  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  if ([stateManager state])
  {
    stateManager2 = [(CustomDetectorOnboardingController *)self stateManager];
    state = [stateManager2 state];

    v10 = state == &dword_4 + 2;
    v11 = !swipeCopy;
    if (state == &dword_4 + 2)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = @"CANCEL_CONFIRMATION";
    }

    else
    {
      v12 = @"FINISH_LATER_CONFIRMATION";
    }
  }

  else
  {

    v10 = 1;
    v12 = @"CANCEL_CONFIRMATION";
  }

  v13 = settingsLocString(v12, @"SoundDetection");
  v14 = [UIAlertController alertControllerWithTitle:0 message:v13 preferredStyle:0];
  if (v10)
  {
    v15 = settingsLocString(@"DISCARD_CHANGES", @"SoundDetection");
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = __82__CustomDetectorOnboardingController__cancelModalFlowWithSwipe_fromNameSoundPane___block_invoke;
    v30[3] = &unk_2557A8;
    v30[4] = self;
    v16 = [UIAlertAction actionWithTitle:v15 style:2 handler:v30];
    [v14 addAction:v16];

    if (paneCopy)
    {
      v17 = @"KEEP_EDITING";
    }

    else
    {
      v17 = @"KEEP_LISTENING";
    }

    v18 = settingsLocString(v17, @"SoundDetection");
    v19 = &__block_literal_global_70;
  }

  else if (swipeCopy)
  {
    v20 = settingsLocString(@"FINISH_LATER", @"SoundDetection");
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __82__CustomDetectorOnboardingController__cancelModalFlowWithSwipe_fromNameSoundPane___block_invoke_4;
    v29[3] = &unk_2557A8;
    v29[4] = self;
    v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:v29];
    [v14 addAction:v21];

    v18 = settingsLocString(@"KEEP_LISTENING", @"SoundDetection");
    v19 = &__block_literal_global_388;
  }

  else
  {
    v22 = settingsLocString(@"DISCARD_CHANGES", @"SoundDetection");
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __82__CustomDetectorOnboardingController__cancelModalFlowWithSwipe_fromNameSoundPane___block_invoke_6;
    v28[3] = &unk_2557A8;
    v28[4] = self;
    v23 = [UIAlertAction actionWithTitle:v22 style:2 handler:v28];
    [v14 addAction:v23];

    v24 = settingsLocString(@"SAVE_PROGRESS", @"SoundDetection");
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __82__CustomDetectorOnboardingController__cancelModalFlowWithSwipe_fromNameSoundPane___block_invoke_8;
    v27[3] = &unk_2557A8;
    v27[4] = self;
    v25 = [UIAlertAction actionWithTitle:v24 style:0 handler:v27];
    [v14 addAction:v25];

    v18 = settingsLocString(@"KEEP_LISTENING", @"SoundDetection");
    v19 = &__block_literal_global_393;
  }

  v26 = [UIAlertAction actionWithTitle:v18 style:1 handler:v19];
  [v14 addAction:v26];

  [(CustomDetectorOnboardingController *)self presentViewController:v14 animated:1 completion:0];
}

id __82__CustomDetectorOnboardingController__cancelModalFlowWithSwipe_fromNameSoundPane___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __82__CustomDetectorOnboardingController__cancelModalFlowWithSwipe_fromNameSoundPane___block_invoke_2;
  v3[3] = &unk_2553B0;
  v3[4] = v1;
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

void __82__CustomDetectorOnboardingController__cancelModalFlowWithSwipe_fromNameSoundPane___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) stateManager];
  [v2 stopListeningAndTrainIfPossible:0];

  v5 = [*(a1 + 32) customDetectorDelegate];
  v3 = [*(a1 + 32) stateManager];
  v4 = [v3 targetDetector];
  [v5 cancelCustomDetectorTrainingForTarget:v4];
}

id __82__CustomDetectorOnboardingController__cancelModalFlowWithSwipe_fromNameSoundPane___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __82__CustomDetectorOnboardingController__cancelModalFlowWithSwipe_fromNameSoundPane___block_invoke_7;
  v3[3] = &unk_2553B0;
  v3[4] = v1;
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

void __82__CustomDetectorOnboardingController__cancelModalFlowWithSwipe_fromNameSoundPane___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) stateManager];
  [v2 stopListeningAndTrainIfPossible:0];

  v5 = [*(a1 + 32) customDetectorDelegate];
  v3 = [*(a1 + 32) stateManager];
  v4 = [v3 targetDetector];
  [v5 cancelCustomDetectorTrainingForTarget:v4];
}

- (void)_finishOnboarding
{
  customDetectorDelegate = [(CustomDetectorOnboardingController *)self customDetectorDelegate];
  [customDetectorDelegate exitedOnboardingFlow];

  timeoutTimer = [(CustomDetectorOnboardingController *)self timeoutTimer];
  [timeoutTimer invalidate];

  [(CustomDetectorOnboardingController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_finishLater
{
  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  [stateManager stopListeningAndTrainIfPossible:0];

  timeoutTimer = [(CustomDetectorOnboardingController *)self timeoutTimer];
  [timeoutTimer invalidate];

  customDetectorDelegate = [(CustomDetectorOnboardingController *)self customDetectorDelegate];
  [customDetectorDelegate exitedOnboardingFlow];

  [(CustomDetectorOnboardingController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)enterWaitingForSoundState
{
  boldButton = [(CustomDetectorOnboardingController *)self boldButton];
  [boldButton setHidden:1];

  trainingController = [(CustomDetectorOnboardingController *)self trainingController];
  [trainingController enterWaitingForSoundState];

  v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"_timeout:" selector:0 userInfo:0 repeats:30.0];
  [(CustomDetectorOnboardingController *)self setTimeoutTimer:v5];
}

- (void)enterPreListeningState
{
  v3 = settingsLocString(@"FINISH_LATER", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupLinkButtonWithTitle:v3 action:"_finishLater"];

  v4 = settingsLocString(@"START_LISTENING_BUTTON", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupTrainingControllerBoldButtonWithTitle:v4 action:"enterWaitingForSoundState"];

  boldButton = [(CustomDetectorOnboardingController *)self boldButton];
  [boldButton setEnabled:1];

  trainingController = [(CustomDetectorOnboardingController *)self trainingController];
  [trainingController enterPreListeningState];
}

- (void)_timeout:(id)_timeout
{
  timeoutTimer = [(CustomDetectorOnboardingController *)self timeoutTimer];
  [timeoutTimer invalidate];

  [(CustomDetectorOnboardingController *)self setTimeoutTimer:0];
  v5 = +[AXSDSettings sharedInstance];
  [v5 setSoundDetectionKShotListeningState:5];
}

- (void)enterTimeoutState
{
  if ([(CustomDetectorOnboardingController *)self isTrainingNewDetector])
  {
    v3 = settingsLocString(@"DIFFERENT_SOUND_BUTTON", @"SoundDetection");
    [(CustomDetectorOnboardingController *)self _setupTrainingControllerBoldButtonWithTitle:v3 action:"onboardNewSound"];
  }

  v4 = settingsLocString(@"IGNORE_KEEP_LISTENING", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupLinkButtonWithTitle:v4 action:"_keepListening"];

  trainingController = [(CustomDetectorOnboardingController *)self trainingController];
  [trainingController enterTimeoutState];
}

- (void)presentLearnMorePane
{
  v3 = [LearnMoreController alloc];
  v4 = settingsLocString(@"LEARN_MORE_TITLE", @"SoundDetection");
  v5 = [(LearnMoreController *)v3 initWithTitle:v4];
  learnMoreController = self->_learnMoreController;
  self->_learnMoreController = v5;

  learnMoreController = [(CustomDetectorOnboardingController *)self learnMoreController];
  [(CustomDetectorOnboardingController *)self _setUpContinueButton:learnMoreController withSelector:"dismissLearnMorePane"];

  learnMoreController2 = [(CustomDetectorOnboardingController *)self learnMoreController];
  [(CustomDetectorOnboardingController *)self presentViewController:learnMoreController2 animated:1 completion:0];
}

- (void)dismissLearnMorePane
{
  learnMoreController = [(CustomDetectorOnboardingController *)self learnMoreController];
  [learnMoreController dismissViewControllerAnimated:1 completion:0];
}

- (void)onboardNewSound
{
  v3 = +[AXSDSettings sharedInstance];
  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  targetDetector = [stateManager targetDetector];
  [v3 deleteTrainingFilesForDetector:targetDetector];

  v6 = [(CustomDetectorOnboardingController *)self popViewControllerAnimated:1];
  nameDetectorController = [(CustomDetectorOnboardingController *)self nameDetectorController];
  detectorNameTextField = [nameDetectorController detectorNameTextField];
  [detectorNameTextField setText:&stru_25D420];
}

- (void)enterListeningState
{
  trainingController = [(CustomDetectorOnboardingController *)self trainingController];
  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  [trainingController enterListeningStateWithCheckmarkIndex:{objc_msgSend(stateManager, "state")}];

  v5 = settingsLocString(@"FINISH_LATER", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupLinkButtonWithTitle:v5 action:"_finishLater"];

  boldButton = [(CustomDetectorOnboardingController *)self boldButton];
  [boldButton setHidden:1];
}

- (void)enterWaitingForSaveState
{
  trainingController = [(CustomDetectorOnboardingController *)self trainingController];
  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  [trainingController enterWaitingForSaveState:{objc_msgSend(stateManager, "state")}];

  v5 = settingsLocString(@"IGNORE_KEEP_LISTENING", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupLinkButtonWithTitle:v5 action:"discardSoundAndKeepListening"];

  v6 = settingsLocString(@"SAVE_SOUND", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupTrainingControllerBoldButtonWithTitle:v6 action:"enterSavingState"];
}

- (void)enterSavingState
{
  v3 = +[AXSDSettings sharedInstance];
  [v3 setKShotShouldSaveCurrentSound:1];

  trainingController = [(CustomDetectorOnboardingController *)self trainingController];
  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  [trainingController enterSavingStateWithCheckmarkIndex:{objc_msgSend(stateManager, "state")}];

  v6 = settingsLocString(@"START_LISTENING_BUTTON", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupTrainingControllerBoldButtonWithTitle:v6 action:"enterWaitingForSoundState"];

  v7 = settingsLocString(@"FINISH_LATER", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupLinkButtonWithTitle:v7 action:"_finishLater"];

  boldButton = [(CustomDetectorOnboardingController *)self boldButton];
  [boldButton setEnabled:0];
}

- (void)saveComplete
{
  v2 = +[AXSDSettings sharedInstance];
  [v2 setSoundDetectionKShotListeningState:0];
}

- (void)discardSoundAndKeepListening
{
  v3 = +[AXSDSettings sharedInstance];
  [v3 setKShotShouldSaveCurrentSound:0];

  trainingController = [(CustomDetectorOnboardingController *)self trainingController];
  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  [trainingController resetCheckmarkIndex:{objc_msgSend(stateManager, "state")}];

  [(CustomDetectorOnboardingController *)self _keepListening];
}

- (void)_keepListening
{
  [(CustomDetectorOnboardingController *)self enterWaitingForSoundState];
  v3 = settingsLocString(@"FINISH_LATER", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupLinkButtonWithTitle:v3 action:"_finishLater"];
}

- (void)_keepTraining
{
  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  [stateManager updateState];

  trainingController = [(CustomDetectorOnboardingController *)self trainingController];
  stateManager2 = [(CustomDetectorOnboardingController *)self stateManager];
  [trainingController resetCheckmarkIndex:{objc_msgSend(stateManager2, "state")}];

  v6 = +[AXSDSettings sharedInstance];
  [v6 setSoundDetectionKShotListeningState:0];
}

- (void)_allShotsRecorded
{
  linkButton = [(CustomDetectorOnboardingController *)self linkButton];
  [linkButton setHidden:1];

  trainingController = [(CustomDetectorOnboardingController *)self trainingController];
  [trainingController enterDoneState];

  v5 = settingsLocString(@"DONE_BUTTON", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupTrainingControllerBoldButtonWithTitle:v5 action:"_finishOnboarding"];

  boldButton = [(CustomDetectorOnboardingController *)self boldButton];
  [boldButton setEnabled:1];

  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  [stateManager stopListeningAndTrainIfPossible:1];
}

- (void)_kShotModelSimilarityWarning
{
  v3 = settingsLocString(@"DIFFERENT_SOUND_BUTTON", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupTrainingControllerBoldButtonWithTitle:v3 action:"onboardNewSound"];

  v4 = settingsLocString(@"IGNORE_KEEP_LISTENING", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupLinkButtonWithTitle:v4 action:"_keepTraining"];

  v5 = +[AXSDSettings sharedInstance];
  [v5 setSoundDetectionKShotListeningState:6];

  trainingController = [(CustomDetectorOnboardingController *)self trainingController];
  stateManager = [(CustomDetectorOnboardingController *)self stateManager];
  [trainingController enterModelSimilarityWarningState:{objc_msgSend(stateManager, "state")}];
}

- (void)_kShotListeningStateDidChange
{
  v3 = +[AXSDSettings sharedInstance];
  soundDetectionKShotListeningState = [v3 soundDetectionKShotListeningState];

  if (soundDetectionKShotListeningState <= 2)
  {
    if (soundDetectionKShotListeningState)
    {
      if (soundDetectionKShotListeningState == (&dword_0 + 2))
      {
        [(CustomDetectorOnboardingController *)self enterListeningState];
        timeoutTimer = [(CustomDetectorOnboardingController *)self timeoutTimer];
        [timeoutTimer invalidate];
      }
    }

    else
    {

      [(CustomDetectorOnboardingController *)self enterPreListeningState];
    }
  }

  else if (soundDetectionKShotListeningState == (&dword_0 + 3))
  {

    [(CustomDetectorOnboardingController *)self enterWaitingForSaveState];
  }

  else if (soundDetectionKShotListeningState == &dword_4)
  {

    [(CustomDetectorOnboardingController *)self saveComplete];
  }

  else if (soundDetectionKShotListeningState == (&dword_4 + 1))
  {

    [(CustomDetectorOnboardingController *)self enterTimeoutState];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = CustomDetectorOnboardingController;
  [(CustomDetectorOnboardingController *)&v5 dealloc];
}

void __53__CustomDetectorOnboardingController_stateDidUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) trainingController];
  [v2 updateProgressToState:*(a1 + 40)];

  v3 = *(a1 + 40);
  if (v3 != 6)
  {
    if (v3 == 5)
    {
      v4 = *(a1 + 32);

      [v4 _allShotsRecorded];
    }

    else
    {
      v5 = +[AXSDSettings sharedInstance];
      [v5 setSoundDetectionKShotListeningState:4];
    }
  }
}

- (void)_setupLinkButtonWithTitle:(id)title action:(SEL)action
{
  if (self->_linkButton)
  {
    titleCopy = title;
    linkButton = [(CustomDetectorOnboardingController *)self linkButton];
    [linkButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

    linkButton2 = [(CustomDetectorOnboardingController *)self linkButton];
    [linkButton2 setTitle:titleCopy forState:0];

    linkButton3 = [(CustomDetectorOnboardingController *)self linkButton];
    [linkButton3 addTarget:self action:action forControlEvents:64];
  }

  else
  {
    titleCopy2 = title;
    v10 = +[OBLinkTrayButton linkButton];
    linkButton = self->_linkButton;
    self->_linkButton = v10;

    linkButton4 = [(CustomDetectorOnboardingController *)self linkButton];
    [linkButton4 setTitle:titleCopy2 forState:0];

    linkButton5 = [(CustomDetectorOnboardingController *)self linkButton];
    [linkButton5 addTarget:self action:action forControlEvents:64];

    linkButton3 = [(CustomDetectorOnboardingController *)self trainingController];
    buttonTray = [linkButton3 buttonTray];
    linkButton6 = [(CustomDetectorOnboardingController *)self linkButton];
    [buttonTray addButton:linkButton6];
  }
}

- (void)_setupTrainingControllerBoldButtonWithTitle:(id)title action:(SEL)action
{
  if (self->_boldButton)
  {
    titleCopy = title;
    boldButton = [(CustomDetectorOnboardingController *)self boldButton];
    [boldButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

    boldButton2 = [(CustomDetectorOnboardingController *)self boldButton];
    [boldButton2 setTitle:titleCopy forState:0];

    boldButton3 = [(CustomDetectorOnboardingController *)self boldButton];
    [boldButton3 addTarget:self action:action forControlEvents:64];

    boldButton4 = [(CustomDetectorOnboardingController *)self boldButton];
    [boldButton4 setHidden:0];

    boldButton5 = [(CustomDetectorOnboardingController *)self boldButton];
    [boldButton5 setEnabled:1];
  }

  else
  {
    titleCopy2 = title;
    v12 = +[OBBoldTrayButton boldButton];
    boldButton = self->_boldButton;
    self->_boldButton = v12;

    boldButton6 = [(CustomDetectorOnboardingController *)self boldButton];
    [boldButton6 setTitle:titleCopy2 forState:0];

    boldButton7 = [(CustomDetectorOnboardingController *)self boldButton];
    [boldButton7 addTarget:self action:action forControlEvents:64];

    boldButton5 = [(CustomDetectorOnboardingController *)self trainingController];
    buttonTray = [boldButton5 buttonTray];
    boldButton8 = [(CustomDetectorOnboardingController *)self boldButton];
    [buttonTray addButton:boldButton8];
  }
}

- (void)_setUpContinueButton:(id)button withSelector:(SEL)selector
{
  buttonCopy = button;
  v7 = +[OBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v7;

  continueButton = [(CustomDetectorOnboardingController *)self continueButton];
  v10 = settingsLocString(@"CONTINUE_BUTTON", @"SoundDetection");
  [continueButton setTitle:v10 forState:0];

  continueButton2 = [(CustomDetectorOnboardingController *)self continueButton];
  [continueButton2 addTarget:self action:selector forControlEvents:64];

  buttonTray = [buttonCopy buttonTray];

  continueButton3 = [(CustomDetectorOnboardingController *)self continueButton];
  [buttonTray addButton:continueButton3];
}

- (void)_bugButtonTapped
{
  v3 = settingsLocString(@"TTR_ALERT_TITLE", @"SoundDetection");
  v4 = settingsLocString(@"TTR_ALERT_MESSAGE", @"SoundDetection");
  v5 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = settingsLocString(@"TTR_CONTINUE_TITLE", @"SoundDetection");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __54__CustomDetectorOnboardingController__bugButtonTapped__block_invoke;
  v10[3] = &unk_2557A8;
  v10[4] = self;
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:v10];

  [v5 addAction:v7];
  v8 = settingsLocString(@"TTR_CANCEL_TITLE", @"SoundDetection");
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:&__block_literal_global_447];

  [v5 addAction:v9];
  [(CustomDetectorOnboardingController *)self presentViewController:v5 animated:1 completion:0];
}

void __54__CustomDetectorOnboardingController__bugButtonTapped__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateManager];
  v1 = [v2 targetDetector];
  AXSDKShotGatherFilesAndGenerateRadarForDetector();
}

- (CustomDetectorDelegate)customDetectorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_customDetectorDelegate);

  return WeakRetained;
}

@end