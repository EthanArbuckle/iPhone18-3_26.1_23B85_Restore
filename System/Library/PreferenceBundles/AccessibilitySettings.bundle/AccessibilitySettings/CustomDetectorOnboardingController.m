@interface CustomDetectorOnboardingController
- (CustomDetectorDelegate)customDetectorDelegate;
- (CustomDetectorOnboardingController)initWithCategory:(id)a3;
- (CustomDetectorOnboardingController)initWithDetector:(id)a3;
- (void)_allShotsRecorded;
- (void)_bugButtonTapped;
- (void)_cancelModalFlowWithSwipe:(BOOL)a3 fromNameSoundPane:(BOOL)a4;
- (void)_continueToTraining;
- (void)_createInfoPane;
- (void)_createNameSoundPane;
- (void)_finishLater;
- (void)_finishOnboarding;
- (void)_kShotListeningStateDidChange;
- (void)_kShotModelSimilarityWarning;
- (void)_keepListening;
- (void)_keepTraining;
- (void)_setUpContinueButton:(id)a3 withSelector:(SEL)a4;
- (void)_setupLinkButtonWithTitle:(id)a3 action:(SEL)a4;
- (void)_setupTrainingControllerBoldButtonWithTitle:(id)a3 action:(SEL)a4;
- (void)_startTraining;
- (void)_timeout:(id)a3;
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
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)saveComplete;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CustomDetectorOnboardingController

- (CustomDetectorOnboardingController)initWithCategory:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CustomDetectorOnboardingController;
  v5 = [(CustomDetectorOnboardingController *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_isTrainingNewDetector = 1;
    v5->_category = v4;
    v7 = [(CustomDetectorOnboardingController *)v5 presentationController];
    [v7 setDelegate:v6];

    v8 = [[AXSDKShotDetector alloc] initWithName:&stru_25D420];
    [v8 setCategory:v4];
    v9 = [[SoundDetectionKshotTrainingAudioManager alloc] initWithTargetDetector:v8];
    [(CustomDetectorOnboardingController *)v6 setStateManager:v9];

    v10 = [(CustomDetectorOnboardingController *)v6 stateManager];
    [v10 setDelegate:v6];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _kShotModelSimilarityWarning, @"com.apple.accessibility.kshot.model.similarity.warning", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v6;
}

- (CustomDetectorOnboardingController)initWithDetector:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CustomDetectorOnboardingController;
  v5 = [(CustomDetectorOnboardingController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(CustomDetectorOnboardingController *)v5 presentationController];
    [v7 setDelegate:v6];

    v8 = [[SoundDetectionKshotTrainingAudioManager alloc] initWithTargetDetector:v4];
    [(CustomDetectorOnboardingController *)v6 setStateManager:v8];

    v9 = [(CustomDetectorOnboardingController *)v6 stateManager];
    [v9 setDelegate:v6];

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

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CustomDetectorOnboardingController;
  [(CustomDetectorOnboardingController *)&v5 viewWillDisappear:a3];
  v4 = [(CustomDetectorOnboardingController *)self stateManager];
  [v4 stopListeningAndTrainIfPossible:0];
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = [(CustomDetectorOnboardingController *)self visibleViewController];
  v5 = [(CustomDetectorOnboardingController *)self nameDetectorController];
  v6 = [v4 isEqual:v5];

  [(CustomDetectorOnboardingController *)self _cancelModalFlowWithSwipe:1 fromNameSoundPane:v6];
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v3 = [(CustomDetectorOnboardingController *)self customDetectorDelegate];
  [v3 exitedOnboardingFlow];
}

- (void)_createInfoPane
{
  v3 = [(CustomDetectorOnboardingController *)self stateManager];
  v4 = [v3 targetDetector];
  v5 = [v4 category];
  v6 = AXSDDetectorCategoryAlarm;

  if (v5 == v6)
  {
    v12 = @"CUSTOM_ALARM";
  }

  else
  {
    v7 = [(CustomDetectorOnboardingController *)self stateManager];
    v8 = [v7 targetDetector];
    v9 = [v8 category];
    v10 = AXSDDetectorCategoryHousehold;

    if (v9 != v10)
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
  v19 = [(CustomDetectorOnboardingController *)self detectorInfoController];
  v20 = [v19 navigationItem];
  [v20 setRightBarButtonItem:v18];

  v21 = [(CustomDetectorOnboardingController *)self detectorInfoController];
  [(CustomDetectorOnboardingController *)self _setUpContinueButton:v21 withSelector:"_createNameSoundPane"];

  v22 = [(CustomDetectorOnboardingController *)self detectorInfoController];
  [(CustomDetectorOnboardingController *)self pushViewController:v22 animated:1];
}

- (void)_createNameSoundPane
{
  v27 = settingsLocString(@"NAME_SOUND_TITLE", @"SoundDetection");
  v3 = settingsLocString(@"NAME_SOUND_SUBTITLE", @"SoundDetection");
  v4 = [(CustomDetectorOnboardingController *)self stateManager];
  v5 = [v4 targetDetector];
  v6 = [v5 category];
  v7 = AXSDDetectorCategoryAlarm;

  if (v6 == v7)
  {
    v12 = @"CUSTOM_ALARM_NAME";
    v13 = @"CUSTOM_ALARM";
  }

  else
  {
    v8 = [(CustomDetectorOnboardingController *)self stateManager];
    v9 = [v8 targetDetector];
    v10 = [v9 category];
    v11 = AXSDDetectorCategoryHousehold;

    if (v10 != v11)
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

  v18 = [(CustomDetectorOnboardingController *)self nameDetectorController];
  [v18 setDelegate:self];

  v19 = [(CustomDetectorOnboardingController *)self nameDetectorController];
  [v19 setModalInPresentation:1];

  v20 = [(CustomDetectorOnboardingController *)self nameDetectorController];
  [(CustomDetectorOnboardingController *)self _setUpContinueButton:v20 withSelector:"_continueToTraining"];

  v21 = [UIBarButtonItem alloc];
  v22 = settingsLocString(@"CANCEL_BUTTON", @"SoundDetection");
  v23 = [v21 initWithTitle:v22 style:0 target:self action:"_cancelFromNameSound"];
  v24 = [(CustomDetectorOnboardingController *)self nameDetectorController];
  v25 = [v24 navigationItem];
  [v25 setRightBarButtonItem:v23];

  v26 = [(CustomDetectorOnboardingController *)self nameDetectorController];
  [(CustomDetectorOnboardingController *)self pushViewController:v26 animated:1];
}

- (void)_continueToTraining
{
  v3 = [(CustomDetectorOnboardingController *)self nameDetectorController];
  v4 = [v3 detectorNameTextField];
  v5 = [v4 text];
  v6 = [(CustomDetectorOnboardingController *)self stateManager];
  v7 = [v6 targetDetector];
  [v7 setName:v5];

  v8 = [(CustomDetectorOnboardingController *)self stateManager];
  v9 = [v8 targetDetector];
  v10 = [v9 name];
  v11 = [v10 length];

  if (!v11)
  {
    v12 = settingsLocString(@"CUSTOM_SOUND_PLACEHOLDER", @"SoundDetection");
    v13 = [(CustomDetectorOnboardingController *)self stateManager];
    v14 = [v13 targetDetector];
    [v14 setName:v12];
  }

  v15 = +[AXSDSettings sharedInstance];
  v16 = [(CustomDetectorOnboardingController *)self stateManager];
  v17 = [v16 targetDetector];
  [v15 addKShotDetector:v17];

  if (!self->_nameDetectorLinkButton)
  {
    v18 = +[OBLinkTrayButton linkButton];
    nameDetectorLinkButton = self->_nameDetectorLinkButton;
    self->_nameDetectorLinkButton = v18;

    v20 = [(CustomDetectorOnboardingController *)self nameDetectorLinkButton];
    v21 = settingsLocString(@"FINISH_LATER", @"SoundDetection");
    [v20 setTitle:v21 forState:0];

    v22 = [(CustomDetectorOnboardingController *)self nameDetectorLinkButton];
    [v22 addTarget:self action:"_cancelFromNameSound" forControlEvents:64];

    v23 = [(CustomDetectorOnboardingController *)self nameDetectorController];
    v24 = [v23 buttonTray];
    v25 = [(CustomDetectorOnboardingController *)self nameDetectorLinkButton];
    [v24 addButton:v25];
  }

  [(CustomDetectorOnboardingController *)self _startTraining];
}

- (void)_startTraining
{
  v35 = AXLocStringKeyForModel();
  v3 = settingsLocString(@"SET_UP", @"SoundDetection");
  v4 = [(CustomDetectorOnboardingController *)self stateManager];
  v5 = [v4 targetDetector];
  v6 = [v5 name];
  v7 = [NSString localizedStringWithFormat:v3, v6];

  v8 = [TrainDetectorController alloc];
  v9 = settingsLocString(v35, @"SoundDetection");
  v10 = [(TrainDetectorController *)v8 initWithTitle:v7 detailText:v9 symbolName:0];
  trainingController = self->_trainingController;
  self->_trainingController = v10;

  v12 = [(CustomDetectorOnboardingController *)self trainingController];
  [v12 setModalInPresentation:1];

  v13 = [(CustomDetectorOnboardingController *)self trainingController];
  [v13 setLearnMoreDelegate:self];

  v14 = [(CustomDetectorOnboardingController *)self stateManager];
  v15 = [v14 targetDetector];
  v16 = [v15 category];
  v17 = [(CustomDetectorOnboardingController *)self trainingController];
  [v17 setCategory:v16];

  v18 = [UIBarButtonItem alloc];
  v19 = settingsLocString(@"CANCEL_BUTTON", @"SoundDetection");
  v20 = [v18 initWithTitle:v19 style:0 target:self action:"_cancelFromTraining"];
  v21 = [(CustomDetectorOnboardingController *)self trainingController];
  v22 = [v21 navigationItem];
  [v22 setRightBarButtonItem:v20];

  if (AXIsInternalInstall())
  {
    v23 = [UIImage systemImageNamed:@"ant.circle.fill"];
    v24 = +[UIColor systemBlueColor];
    v25 = [v23 imageWithTintColor:v24];
    v26 = [UIButton systemButtonWithImage:v25 target:self action:"_bugButtonTapped"];

    v27 = [(CustomDetectorOnboardingController *)self trainingController];
    v28 = [v27 navigationItem];
    [v28 setTitleView:v26];
  }

  linkButton = self->_linkButton;
  self->_linkButton = 0;

  boldButton = self->_boldButton;
  self->_boldButton = 0;

  v31 = settingsLocString(@"START_LISTENING_BUTTON", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupTrainingControllerBoldButtonWithTitle:v31 action:"enterWaitingForSoundState"];

  v32 = settingsLocString(@"FINISH_LATER", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupLinkButtonWithTitle:v32 action:"_finishLater"];

  v33 = [(CustomDetectorOnboardingController *)self trainingController];
  [(CustomDetectorOnboardingController *)self pushViewController:v33 animated:1];

  [(SoundDetectionKshotTrainingAudioManager *)self->_stateManager startListening];
  v34 = +[AXSDSettings sharedInstance];
  [v34 setSoundDetectionKShotListeningState:0];
}

- (void)_cancelModalFlowWithSwipe:(BOOL)a3 fromNameSoundPane:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CustomDetectorOnboardingController *)self stateManager];
  if ([v7 state])
  {
    v8 = [(CustomDetectorOnboardingController *)self stateManager];
    v9 = [v8 state];

    v10 = v9 == &dword_4 + 2;
    v11 = !v5;
    if (v9 == &dword_4 + 2)
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

    if (v4)
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

  else if (v5)
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
  v3 = [(CustomDetectorOnboardingController *)self customDetectorDelegate];
  [v3 exitedOnboardingFlow];

  v4 = [(CustomDetectorOnboardingController *)self timeoutTimer];
  [v4 invalidate];

  [(CustomDetectorOnboardingController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_finishLater
{
  v3 = [(CustomDetectorOnboardingController *)self stateManager];
  [v3 stopListeningAndTrainIfPossible:0];

  v4 = [(CustomDetectorOnboardingController *)self timeoutTimer];
  [v4 invalidate];

  v5 = [(CustomDetectorOnboardingController *)self customDetectorDelegate];
  [v5 exitedOnboardingFlow];

  [(CustomDetectorOnboardingController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)enterWaitingForSoundState
{
  v3 = [(CustomDetectorOnboardingController *)self boldButton];
  [v3 setHidden:1];

  v4 = [(CustomDetectorOnboardingController *)self trainingController];
  [v4 enterWaitingForSoundState];

  v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"_timeout:" selector:0 userInfo:0 repeats:30.0];
  [(CustomDetectorOnboardingController *)self setTimeoutTimer:v5];
}

- (void)enterPreListeningState
{
  v3 = settingsLocString(@"FINISH_LATER", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupLinkButtonWithTitle:v3 action:"_finishLater"];

  v4 = settingsLocString(@"START_LISTENING_BUTTON", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupTrainingControllerBoldButtonWithTitle:v4 action:"enterWaitingForSoundState"];

  v5 = [(CustomDetectorOnboardingController *)self boldButton];
  [v5 setEnabled:1];

  v6 = [(CustomDetectorOnboardingController *)self trainingController];
  [v6 enterPreListeningState];
}

- (void)_timeout:(id)a3
{
  v4 = [(CustomDetectorOnboardingController *)self timeoutTimer];
  [v4 invalidate];

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

  v5 = [(CustomDetectorOnboardingController *)self trainingController];
  [v5 enterTimeoutState];
}

- (void)presentLearnMorePane
{
  v3 = [LearnMoreController alloc];
  v4 = settingsLocString(@"LEARN_MORE_TITLE", @"SoundDetection");
  v5 = [(LearnMoreController *)v3 initWithTitle:v4];
  learnMoreController = self->_learnMoreController;
  self->_learnMoreController = v5;

  v7 = [(CustomDetectorOnboardingController *)self learnMoreController];
  [(CustomDetectorOnboardingController *)self _setUpContinueButton:v7 withSelector:"dismissLearnMorePane"];

  v8 = [(CustomDetectorOnboardingController *)self learnMoreController];
  [(CustomDetectorOnboardingController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)dismissLearnMorePane
{
  v2 = [(CustomDetectorOnboardingController *)self learnMoreController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)onboardNewSound
{
  v3 = +[AXSDSettings sharedInstance];
  v4 = [(CustomDetectorOnboardingController *)self stateManager];
  v5 = [v4 targetDetector];
  [v3 deleteTrainingFilesForDetector:v5];

  v6 = [(CustomDetectorOnboardingController *)self popViewControllerAnimated:1];
  v8 = [(CustomDetectorOnboardingController *)self nameDetectorController];
  v7 = [v8 detectorNameTextField];
  [v7 setText:&stru_25D420];
}

- (void)enterListeningState
{
  v3 = [(CustomDetectorOnboardingController *)self trainingController];
  v4 = [(CustomDetectorOnboardingController *)self stateManager];
  [v3 enterListeningStateWithCheckmarkIndex:{objc_msgSend(v4, "state")}];

  v5 = settingsLocString(@"FINISH_LATER", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupLinkButtonWithTitle:v5 action:"_finishLater"];

  v6 = [(CustomDetectorOnboardingController *)self boldButton];
  [v6 setHidden:1];
}

- (void)enterWaitingForSaveState
{
  v3 = [(CustomDetectorOnboardingController *)self trainingController];
  v4 = [(CustomDetectorOnboardingController *)self stateManager];
  [v3 enterWaitingForSaveState:{objc_msgSend(v4, "state")}];

  v5 = settingsLocString(@"IGNORE_KEEP_LISTENING", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupLinkButtonWithTitle:v5 action:"discardSoundAndKeepListening"];

  v6 = settingsLocString(@"SAVE_SOUND", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupTrainingControllerBoldButtonWithTitle:v6 action:"enterSavingState"];
}

- (void)enterSavingState
{
  v3 = +[AXSDSettings sharedInstance];
  [v3 setKShotShouldSaveCurrentSound:1];

  v4 = [(CustomDetectorOnboardingController *)self trainingController];
  v5 = [(CustomDetectorOnboardingController *)self stateManager];
  [v4 enterSavingStateWithCheckmarkIndex:{objc_msgSend(v5, "state")}];

  v6 = settingsLocString(@"START_LISTENING_BUTTON", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupTrainingControllerBoldButtonWithTitle:v6 action:"enterWaitingForSoundState"];

  v7 = settingsLocString(@"FINISH_LATER", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupLinkButtonWithTitle:v7 action:"_finishLater"];

  v8 = [(CustomDetectorOnboardingController *)self boldButton];
  [v8 setEnabled:0];
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

  v4 = [(CustomDetectorOnboardingController *)self trainingController];
  v5 = [(CustomDetectorOnboardingController *)self stateManager];
  [v4 resetCheckmarkIndex:{objc_msgSend(v5, "state")}];

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
  v3 = [(CustomDetectorOnboardingController *)self stateManager];
  [v3 updateState];

  v4 = [(CustomDetectorOnboardingController *)self trainingController];
  v5 = [(CustomDetectorOnboardingController *)self stateManager];
  [v4 resetCheckmarkIndex:{objc_msgSend(v5, "state")}];

  v6 = +[AXSDSettings sharedInstance];
  [v6 setSoundDetectionKShotListeningState:0];
}

- (void)_allShotsRecorded
{
  v3 = [(CustomDetectorOnboardingController *)self linkButton];
  [v3 setHidden:1];

  v4 = [(CustomDetectorOnboardingController *)self trainingController];
  [v4 enterDoneState];

  v5 = settingsLocString(@"DONE_BUTTON", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupTrainingControllerBoldButtonWithTitle:v5 action:"_finishOnboarding"];

  v6 = [(CustomDetectorOnboardingController *)self boldButton];
  [v6 setEnabled:1];

  v7 = [(CustomDetectorOnboardingController *)self stateManager];
  [v7 stopListeningAndTrainIfPossible:1];
}

- (void)_kShotModelSimilarityWarning
{
  v3 = settingsLocString(@"DIFFERENT_SOUND_BUTTON", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupTrainingControllerBoldButtonWithTitle:v3 action:"onboardNewSound"];

  v4 = settingsLocString(@"IGNORE_KEEP_LISTENING", @"SoundDetection");
  [(CustomDetectorOnboardingController *)self _setupLinkButtonWithTitle:v4 action:"_keepTraining"];

  v5 = +[AXSDSettings sharedInstance];
  [v5 setSoundDetectionKShotListeningState:6];

  v7 = [(CustomDetectorOnboardingController *)self trainingController];
  v6 = [(CustomDetectorOnboardingController *)self stateManager];
  [v7 enterModelSimilarityWarningState:{objc_msgSend(v6, "state")}];
}

- (void)_kShotListeningStateDidChange
{
  v3 = +[AXSDSettings sharedInstance];
  v4 = [v3 soundDetectionKShotListeningState];

  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == (&dword_0 + 2))
      {
        [(CustomDetectorOnboardingController *)self enterListeningState];
        v5 = [(CustomDetectorOnboardingController *)self timeoutTimer];
        [v5 invalidate];
      }
    }

    else
    {

      [(CustomDetectorOnboardingController *)self enterPreListeningState];
    }
  }

  else if (v4 == (&dword_0 + 3))
  {

    [(CustomDetectorOnboardingController *)self enterWaitingForSaveState];
  }

  else if (v4 == &dword_4)
  {

    [(CustomDetectorOnboardingController *)self saveComplete];
  }

  else if (v4 == (&dword_4 + 1))
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

- (void)_setupLinkButtonWithTitle:(id)a3 action:(SEL)a4
{
  if (self->_linkButton)
  {
    v6 = a3;
    v7 = [(CustomDetectorOnboardingController *)self linkButton];
    [v7 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

    v8 = [(CustomDetectorOnboardingController *)self linkButton];
    [v8 setTitle:v6 forState:0];

    v16 = [(CustomDetectorOnboardingController *)self linkButton];
    [v16 addTarget:self action:a4 forControlEvents:64];
  }

  else
  {
    v9 = a3;
    v10 = +[OBLinkTrayButton linkButton];
    linkButton = self->_linkButton;
    self->_linkButton = v10;

    v12 = [(CustomDetectorOnboardingController *)self linkButton];
    [v12 setTitle:v9 forState:0];

    v13 = [(CustomDetectorOnboardingController *)self linkButton];
    [v13 addTarget:self action:a4 forControlEvents:64];

    v16 = [(CustomDetectorOnboardingController *)self trainingController];
    v14 = [v16 buttonTray];
    v15 = [(CustomDetectorOnboardingController *)self linkButton];
    [v14 addButton:v15];
  }
}

- (void)_setupTrainingControllerBoldButtonWithTitle:(id)a3 action:(SEL)a4
{
  if (self->_boldButton)
  {
    v6 = a3;
    v7 = [(CustomDetectorOnboardingController *)self boldButton];
    [v7 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

    v8 = [(CustomDetectorOnboardingController *)self boldButton];
    [v8 setTitle:v6 forState:0];

    v9 = [(CustomDetectorOnboardingController *)self boldButton];
    [v9 addTarget:self action:a4 forControlEvents:64];

    v10 = [(CustomDetectorOnboardingController *)self boldButton];
    [v10 setHidden:0];

    v18 = [(CustomDetectorOnboardingController *)self boldButton];
    [v18 setEnabled:1];
  }

  else
  {
    v11 = a3;
    v12 = +[OBBoldTrayButton boldButton];
    boldButton = self->_boldButton;
    self->_boldButton = v12;

    v14 = [(CustomDetectorOnboardingController *)self boldButton];
    [v14 setTitle:v11 forState:0];

    v15 = [(CustomDetectorOnboardingController *)self boldButton];
    [v15 addTarget:self action:a4 forControlEvents:64];

    v18 = [(CustomDetectorOnboardingController *)self trainingController];
    v16 = [v18 buttonTray];
    v17 = [(CustomDetectorOnboardingController *)self boldButton];
    [v16 addButton:v17];
  }
}

- (void)_setUpContinueButton:(id)a3 withSelector:(SEL)a4
{
  v6 = a3;
  v7 = +[OBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v7;

  v9 = [(CustomDetectorOnboardingController *)self continueButton];
  v10 = settingsLocString(@"CONTINUE_BUTTON", @"SoundDetection");
  [v9 setTitle:v10 forState:0];

  v11 = [(CustomDetectorOnboardingController *)self continueButton];
  [v11 addTarget:self action:a4 forControlEvents:64];

  v13 = [v6 buttonTray];

  v12 = [(CustomDetectorOnboardingController *)self continueButton];
  [v13 addButton:v12];
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