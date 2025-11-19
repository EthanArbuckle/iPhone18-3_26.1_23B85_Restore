@interface TrainDetectorController
- (AXSDLearnMoreDelegate)learnMoreDelegate;
- (id)locStringForKShotCategory:(id)a3 key:(id)a4;
- (void)_constrainCheckmarkStackView;
- (void)_constrainSavedSoundLabel;
- (void)_constrainVerticalStackView;
- (void)_constrainVisualizationView;
- (void)_setupCheckmarkViews;
- (void)_setupLabel;
- (void)_setupLearnMoreLinkButton;
- (void)_setupSavedSoundLabel;
- (void)_setupVerticalStackView;
- (void)_setupVisualizationView;
- (void)_updateLabelText:(id)a3;
- (void)_updateVisualizerWithValues:(id)a3;
- (void)enterDoneState;
- (void)enterListeningStateWithCheckmarkIndex:(int)a3;
- (void)enterModelSimilarityWarningState:(int)a3;
- (void)enterPreListeningState;
- (void)enterSavingStateWithCheckmarkIndex:(int)a3;
- (void)enterTimeoutState;
- (void)enterWaitingForSaveState:(int)a3;
- (void)enterWaitingForSoundState;
- (void)presentLearnMorePane;
- (void)updateCheckmarkState:(int64_t)a3 checkmarkIndex:(int)a4;
- (void)updateProgressToState:(int64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TrainDetectorController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TrainDetectorController;
  [(TrainDetectorController *)&v3 viewDidLoad];
  [(TrainDetectorController *)self _setupCheckmarkViews];
  [(TrainDetectorController *)self _constrainCheckmarkStackView];
  [(TrainDetectorController *)self _setupSavedSoundLabel];
  [(TrainDetectorController *)self _constrainSavedSoundLabel];
  [(TrainDetectorController *)self _setupVerticalStackView];
  [(TrainDetectorController *)self _constrainVerticalStackView];
  [(TrainDetectorController *)self _setupVisualizationView];
  [(TrainDetectorController *)self _constrainVisualizationView];
  [(TrainDetectorController *)self _setupLabel];
  [(TrainDetectorController *)self updateProgressToState:self->_state];
  [(TrainDetectorController *)self enterPreListeningState];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = TrainDetectorController;
  [(TrainDetectorController *)&v6 viewDidAppear:a3];
  v4 = +[AXSDAudioLevelsHelper sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __41__TrainDetectorController_viewDidAppear___block_invoke;
  v5[3] = &unk_257A28;
  v5[4] = self;
  [v4 registerListener:self forAudioLevelUpdates:v5 withBucketCount:{-[SoundDetectionAudioVisualizationView pipCount](self->_visualizationView, "pipCount")}];
}

void __41__TrainDetectorController_viewDidAppear___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = v2;
    AXPerformBlockOnMainThread();
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = TrainDetectorController;
  [(TrainDetectorController *)&v5 viewWillDisappear:a3];
  v4 = +[AXSDAudioLevelsHelper sharedInstance];
  [v4 deregisterListener:self];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = TrainDetectorController;
  [(TrainDetectorController *)&v2 viewDidLayoutSubviews];
}

- (void)enterPreListeningState
{
  v3 = UIAccessibilityAnnouncementNotification;
  v4 = [(TrainDetectorController *)self savedSoundLabel];
  v5 = [v4 text];
  UIAccessibilityPostNotification(v3, v5);

  v6 = [(TrainDetectorController *)self visualizationView];
  [v6 setHidden:1];

  v7 = [(TrainDetectorController *)self visualizationView];
  v8 = +[UIColor systemGrayColor];
  [v7 setTintColor:v8];

  v9 = [(TrainDetectorController *)self category];
  v10 = [(TrainDetectorController *)self locStringForKShotCategory:v9 key:@"PRE_LISTENING_LABEL"];
  [(TrainDetectorController *)self _updateLabelText:v10];

  v11 = +[UIColor labelColor];
  v12 = [(TrainDetectorController *)self label];
  [v12 setTextColor:v11];

  v13 = [(TrainDetectorController *)self learnMoreLinkButton];
  [v13 setHidden:1];
}

- (void)enterWaitingForSoundState
{
  if (self->_state != 5)
  {
    v4 = [(TrainDetectorController *)self savedSoundLabel];
    [v4 setHidden:1];

    v5 = [(TrainDetectorController *)self visualizationView];
    [v5 setHidden:0];

    v6 = [(TrainDetectorController *)self visualizationView];
    v7 = +[UIColor systemGrayColor];
    [v6 setTintColor:v7];

    v8 = [(TrainDetectorController *)self category];
    v9 = [(TrainDetectorController *)self locStringForKShotCategory:v8 key:@"START_LISTENING_LABEL"];
    [(TrainDetectorController *)self _updateLabelText:v9];

    v10 = +[UIColor systemGrayColor];
    v11 = [(TrainDetectorController *)self label];
    [v11 setTextColor:v10];

    v12 = [(TrainDetectorController *)self learnMoreLinkButton];
    [v12 setHidden:1];

    v13 = dispatch_time(0, 2000000000);

    dispatch_after(v13, &_dispatch_main_q, &__block_literal_global_66);
  }
}

void __52__TrainDetectorController_enterWaitingForSoundState__block_invoke(id a1)
{
  v1 = +[AXSDSettings sharedInstance];
  [v1 setSoundDetectionKShotListeningState:1];
}

- (void)enterListeningStateWithCheckmarkIndex:(int)a3
{
  v3 = *&a3;
  v5 = [(TrainDetectorController *)self savedSoundLabel];
  [v5 setHidden:1];

  v6 = [(TrainDetectorController *)self visualizationView];
  [v6 setHidden:0];

  v7 = [(TrainDetectorController *)self visualizationView];
  v8 = +[UIColor systemBlueColor];
  [v7 setTintColor:v8];

  [(TrainDetectorController *)self updateCheckmarkState:1 checkmarkIndex:v3];
  v9 = [(TrainDetectorController *)self category];
  v10 = [(TrainDetectorController *)self locStringForKShotCategory:v9 key:@"LISTENING"];
  [(TrainDetectorController *)self _updateLabelText:v10];

  v11 = [(TrainDetectorController *)self learnMoreLinkButton];
  [v11 setHidden:1];
}

- (void)updateCheckmarkState:(int64_t)a3 checkmarkIndex:(int)a4
{
  v7 = [(TrainDetectorController *)self checkmarkViews];
  v6 = [v7 objectAtIndexedSubscript:a4];
  [v6 setCheckmarkState:a3];
}

- (void)enterTimeoutState
{
  v3 = [(TrainDetectorController *)self category];
  v4 = [(TrainDetectorController *)self locStringForKShotCategory:v3 key:@"TIMEOUT"];
  [(TrainDetectorController *)self _updateLabelText:v4];

  v5 = +[UIColor labelColor];
  v6 = [(TrainDetectorController *)self label];
  [v6 setTextColor:v5];

  v7 = [(TrainDetectorController *)self savedSoundLabel];
  [v7 setHidden:1];

  v8 = [(TrainDetectorController *)self visualizationView];
  [v8 setHidden:1];

  if (self->_learnMoreLinkButton)
  {
    v9 = [(TrainDetectorController *)self learnMoreLinkButton];
    [v9 setHidden:0];
  }

  else
  {

    [(TrainDetectorController *)self _setupLearnMoreLinkButton];
  }
}

- (void)enterWaitingForSaveState:(int)a3
{
  v3 = *&a3;
  v5 = [(TrainDetectorController *)self savedSoundLabel];
  [v5 setHidden:1];

  v6 = [(TrainDetectorController *)self visualizationView];
  [v6 setHidden:1];

  v7 = +[UIColor labelColor];
  v8 = [(TrainDetectorController *)self label];
  [v8 setTextColor:v7];

  v9 = [(TrainDetectorController *)self category];
  v10 = [(TrainDetectorController *)self locStringForKShotCategory:v9 key:@"WAITING_FOR_SAVE"];
  [(TrainDetectorController *)self _updateLabelText:v10];

  [(TrainDetectorController *)self updateCheckmarkState:3 checkmarkIndex:v3];
}

- (void)enterSavingStateWithCheckmarkIndex:(int)a3
{
  v3 = *&a3;
  v5 = settingsLocString(@"SAVING_SOUND", @"SoundDetection");
  [(TrainDetectorController *)self _updateLabelText:v5];

  [(TrainDetectorController *)self updateCheckmarkState:4 checkmarkIndex:v3];
}

- (void)presentLearnMorePane
{
  v2 = [(TrainDetectorController *)self learnMoreDelegate];
  [v2 presentLearnMorePane];
}

- (void)enterModelSimilarityWarningState:(int)a3
{
  v3 = *&a3;
  v5 = settingsLocString(@"MODEL_SIMILARITY_WARNING", @"SoundDetection");
  [(TrainDetectorController *)self _updateLabelText:v5];

  [(TrainDetectorController *)self updateCheckmarkState:5 checkmarkIndex:v3];
}

- (void)enterDoneState
{
  v3 = [(TrainDetectorController *)self headerView];
  v4 = settingsLocString(@"RECORDING_COMPLETE", @"SoundDetection");
  [v3 setDetailText:v4];

  v5 = [(TrainDetectorController *)self visualizationView];
  [v5 setHidden:1];

  v6 = [(TrainDetectorController *)self savedSoundLabel];
  [v6 setHidden:1];

  v7 = [(TrainDetectorController *)self learnMoreLinkButton];
  [v7 setHidden:1];

  v8 = +[UIColor labelColor];
  v9 = [(TrainDetectorController *)self label];
  [v9 setTextColor:v8];

  v10 = settingsLocString(@"TRAINING_TIME_EXPLANATION", @"SoundDetection");
  [(TrainDetectorController *)self _updateLabelText:v10];
}

- (void)_updateLabelText:(id)a3
{
  v4 = a3;
  v5 = [(TrainDetectorController *)self label];
  [v5 setText:v4];

  v6 = [(TrainDetectorController *)self label];
  [v6 sizeToFit];

  LODWORD(v6) = UIAccessibilityLayoutChangedNotification;
  v7 = [(TrainDetectorController *)self label];
  UIAccessibilityPostNotification(v6, v7);
}

- (void)_updateVisualizerWithValues:(id)a3
{
  v4 = a3;
  v5 = [(TrainDetectorController *)self visualizationView];
  [v5 updateWithMagnitudes:v4];
}

- (void)_setupVerticalStackView
{
  v3 = objc_alloc_init(UIStackView);
  [(TrainDetectorController *)self setVerticalStackView:v3];

  v4 = [(TrainDetectorController *)self verticalStackView];
  [v4 setDistribution:4];

  v5 = [(TrainDetectorController *)self verticalStackView];
  [v5 setAxis:1];

  v6 = [(TrainDetectorController *)self verticalStackView];
  [v6 setSpacing:10.0];

  v7 = [(TrainDetectorController *)self verticalStackView];
  [v7 setAlignment:3];

  v9 = [(TrainDetectorController *)self contentView];
  v8 = [(TrainDetectorController *)self verticalStackView];
  [v9 addSubview:v8];
}

- (void)_constrainVerticalStackView
{
  v3 = [(TrainDetectorController *)self verticalStackView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(TrainDetectorController *)self verticalStackView];
  v5 = [v4 leftAnchor];
  v6 = [(TrainDetectorController *)self contentView];
  v7 = [v6 leftAnchor];
  v8 = [v5 constraintEqualToAnchor:v7 constant:10.0];
  [v8 setActive:1];

  v9 = [(TrainDetectorController *)self verticalStackView];
  v10 = [v9 rightAnchor];
  v11 = [(TrainDetectorController *)self contentView];
  v12 = [v11 rightAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:-10.0];
  [v13 setActive:1];

  v14 = [(TrainDetectorController *)self verticalStackView];
  v15 = [v14 topAnchor];
  v16 = [(TrainDetectorController *)self checkmarkStackView];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 constant:70.0];
  [v18 setActive:1];

  v23 = [(TrainDetectorController *)self verticalStackView];
  v19 = [v23 bottomAnchor];
  v20 = [(TrainDetectorController *)self contentView];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:-70.0];
  [v22 setActive:1];
}

- (void)_setupVisualizationView
{
  v3 = objc_alloc_init(SoundDetectionAudioVisualizationView);
  [(TrainDetectorController *)self setVisualizationView:v3];

  v4 = [(TrainDetectorController *)self verticalStackView];
  v5 = [(TrainDetectorController *)self visualizationView];
  [v4 addArrangedSubview:v5];

  v6 = [(TrainDetectorController *)self visualizationView];
  [v6 setHidden:1];
}

- (void)_setupCheckmarkViews
{
  v3 = [(TrainDetectorController *)self checkmarkViews];

  if (!v3)
  {
    v4 = +[NSMutableArray array];
    [(TrainDetectorController *)self setCheckmarkViews:v4];
  }

  v5 = 5;
  do
  {
    v6 = objc_alloc_init(CheckmarkTrainingView);
    v7 = [(TrainDetectorController *)self checkmarkViews];
    [v7 addObject:v6];

    --v5;
  }

  while (v5);
  v8 = [UIStackView alloc];
  v9 = [(TrainDetectorController *)self checkmarkViews];
  v10 = [v8 initWithArrangedSubviews:v9];
  [(TrainDetectorController *)self setCheckmarkStackView:v10];

  v11 = [(TrainDetectorController *)self checkmarkStackView];
  [v11 setDistribution:4];

  v12 = [(TrainDetectorController *)self checkmarkStackView];
  [v12 setAxis:0];

  v13 = [(TrainDetectorController *)self checkmarkStackView];
  [v13 setSpacing:10.0];

  v14 = [(TrainDetectorController *)self checkmarkStackView];
  [v14 setAlignment:3];

  v16 = [(TrainDetectorController *)self contentView];
  v15 = [(TrainDetectorController *)self checkmarkStackView];
  [v16 addSubview:v15];
}

- (void)_constrainCheckmarkStackView
{
  v3 = [(TrainDetectorController *)self checkmarkStackView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(TrainDetectorController *)self checkmarkStackView];
  v5 = [v4 leftAnchor];
  v6 = [(TrainDetectorController *)self contentView];
  v7 = [v6 leftAnchor];
  v8 = [v5 constraintEqualToAnchor:v7 constant:10.0];
  [v8 setActive:1];

  v9 = [(TrainDetectorController *)self checkmarkStackView];
  v10 = [v9 rightAnchor];
  v11 = [(TrainDetectorController *)self contentView];
  v12 = [v11 rightAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:-10.0];
  [v13 setActive:1];

  v18 = [(TrainDetectorController *)self checkmarkStackView];
  v14 = [v18 topAnchor];
  v15 = [(TrainDetectorController *)self contentView];
  v16 = [v15 topAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:70.0];
  [v17 setActive:1];
}

- (void)_setupLabel
{
  v3 = objc_alloc_init(UILabel);
  label = self->_label;
  self->_label = v3;

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v6 = [(TrainDetectorController *)self label];
  [v6 setFont:v5];

  v7 = [(TrainDetectorController *)self label];
  [v7 setTextAlignment:1];

  v8 = [(TrainDetectorController *)self label];
  [v8 setNumberOfLines:0];

  v9 = [(TrainDetectorController *)self label];
  [v9 setLineBreakMode:0];

  v10 = [(TrainDetectorController *)self label];
  [v10 setAdjustsFontForContentSizeCategory:1];

  v12 = [(TrainDetectorController *)self verticalStackView];
  v11 = [(TrainDetectorController *)self label];
  [v12 addArrangedSubview:v11];
}

- (void)_setupSavedSoundLabel
{
  v3 = objc_alloc_init(UILabel);
  savedSoundLabel = self->_savedSoundLabel;
  self->_savedSoundLabel = v3;

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v6 = [(TrainDetectorController *)self savedSoundLabel];
  [v6 setFont:v5];

  v7 = [(TrainDetectorController *)self savedSoundLabel];
  [v7 setTextAlignment:1];

  v8 = +[UIColor secondaryLabelColor];
  v9 = [(TrainDetectorController *)self savedSoundLabel];
  [v9 setTextColor:v8];

  v10 = [(TrainDetectorController *)self savedSoundLabel];
  [v10 setNumberOfLines:0];

  v11 = [(TrainDetectorController *)self savedSoundLabel];
  [v11 setLineBreakMode:0];

  v12 = [(TrainDetectorController *)self savedSoundLabel];
  [v12 setAdjustsFontForContentSizeCategory:1];

  v13 = [(TrainDetectorController *)self contentView];
  v14 = [(TrainDetectorController *)self savedSoundLabel];
  [v13 addSubview:v14];

  v15 = [(TrainDetectorController *)self savedSoundLabel];
  [v15 setHidden:1];
}

- (void)_constrainSavedSoundLabel
{
  v3 = [(TrainDetectorController *)self savedSoundLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(TrainDetectorController *)self savedSoundLabel];
  v5 = [v4 leftAnchor];
  v6 = [(TrainDetectorController *)self contentView];
  v7 = [v6 leftAnchor];
  v8 = [v5 constraintEqualToAnchor:v7 constant:10.0];
  [v8 setActive:1];

  v9 = [(TrainDetectorController *)self savedSoundLabel];
  v10 = [v9 rightAnchor];
  v11 = [(TrainDetectorController *)self contentView];
  v12 = [v11 rightAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:-10.0];
  [v13 setActive:1];

  v18 = [(TrainDetectorController *)self savedSoundLabel];
  v14 = [v18 topAnchor];
  v15 = [(TrainDetectorController *)self checkmarkStackView];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:10.0];
  [v17 setActive:1];
}

- (void)_setupLearnMoreLinkButton
{
  v3 = [UIButton buttonWithType:1];
  learnMoreLinkButton = self->_learnMoreLinkButton;
  self->_learnMoreLinkButton = v3;

  v5 = [(TrainDetectorController *)self learnMoreLinkButton];
  [v5 addTarget:self action:"presentLearnMorePane" forControlEvents:64];

  v6 = [(TrainDetectorController *)self learnMoreLinkButton];
  [v6 setFrame:{0.0, 0.0, 150.0, 50.0}];

  v7 = [(TrainDetectorController *)self learnMoreLinkButton];
  v8 = +[UIColor systemBlueColor];
  [v7 setTitleColor:v8 forState:0];

  v9 = [(TrainDetectorController *)self learnMoreLinkButton];
  v10 = settingsLocString(@"LEARN_MORE_BUTTON", @"SoundDetection");
  [v9 setTitle:v10 forState:0];

  v11 = [(TrainDetectorController *)self learnMoreLinkButton];
  v12 = [v11 titleLabel];
  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v12 setFont:v13];

  v14 = [(TrainDetectorController *)self learnMoreLinkButton];
  v15 = [v14 titleLabel];
  [v15 setAdjustsFontForContentSizeCategory:1];

  v16 = [(TrainDetectorController *)self learnMoreLinkButton];
  v17 = [v16 titleLabel];
  [v17 setNumberOfLines:0];

  v18 = [(TrainDetectorController *)self learnMoreLinkButton];
  v19 = [v18 titleLabel];
  [v19 setLineBreakMode:0];

  v20 = [(TrainDetectorController *)self learnMoreLinkButton];
  v21 = [v20 titleLabel];
  [v21 setTextAlignment:1];

  v23 = [(TrainDetectorController *)self verticalStackView];
  v22 = [(TrainDetectorController *)self learnMoreLinkButton];
  [v23 addArrangedSubview:v22];
}

- (void)_constrainVisualizationView
{
  v3 = [(TrainDetectorController *)self visualizationView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(TrainDetectorController *)self visualizationView];
  v5 = [v4 leftAnchor];
  v6 = [(TrainDetectorController *)self verticalStackView];
  v7 = [v6 leftAnchor];
  v8 = [v5 constraintEqualToAnchor:v7 constant:10.0];
  [v8 setActive:1];

  v9 = [(TrainDetectorController *)self visualizationView];
  v10 = [v9 rightAnchor];
  v11 = [(TrainDetectorController *)self verticalStackView];
  v12 = [v11 rightAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:-10.0];
  [v13 setActive:1];

  v16 = [(TrainDetectorController *)self visualizationView];
  v14 = [v16 heightAnchor];
  v15 = [v14 constraintEqualToConstant:90.0];
  [v15 setActive:1];
}

- (void)updateProgressToState:(int64_t)a3
{
  self->_state = a3;
  v3 = a3 - 1;
  if ((a3 - 1) <= 4)
  {
    v6 = 0;
    do
    {
      v7 = [(TrainDetectorController *)self checkmarkViews];
      v8 = [v7 objectAtIndexedSubscript:v6];
      [v8 setCheckmarkState:2];

      ++v6;
    }

    while (a3 != v6);
    if (v3 < 4)
    {
      v9 = off_258DE8[v3];
      v10 = [(TrainDetectorController *)self savedSoundLabel];
      v11 = settingsLocString(v9, @"SoundDetection");
      [v10 setText:v11];
    }

    v12 = [(TrainDetectorController *)self savedSoundLabel];
    [v12 setHidden:0];

    v13 = [(TrainDetectorController *)self savedSoundLabel];
    [v13 sizeToFit];
  }
}

- (id)locStringForKShotCategory:(id)a3 key:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:AXSDDetectorCategoryAlarm])
  {
    v7 = @"_ALARM";
  }

  else if ([v5 isEqualToString:AXSDDetectorCategoryHousehold])
  {
    v7 = @"_APPLIANCE";
  }

  else
  {
    v7 = &stru_25D420;
  }

  v8 = [v6 stringByAppendingString:v7];

  v9 = settingsLocString(v8, @"SoundDetection");

  return v9;
}

- (AXSDLearnMoreDelegate)learnMoreDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_learnMoreDelegate);

  return WeakRetained;
}

@end