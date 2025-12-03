@interface TrainDetectorController
- (AXSDLearnMoreDelegate)learnMoreDelegate;
- (id)locStringForKShotCategory:(id)category key:(id)key;
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
- (void)_updateLabelText:(id)text;
- (void)_updateVisualizerWithValues:(id)values;
- (void)enterDoneState;
- (void)enterListeningStateWithCheckmarkIndex:(int)index;
- (void)enterModelSimilarityWarningState:(int)state;
- (void)enterPreListeningState;
- (void)enterSavingStateWithCheckmarkIndex:(int)index;
- (void)enterTimeoutState;
- (void)enterWaitingForSaveState:(int)state;
- (void)enterWaitingForSoundState;
- (void)presentLearnMorePane;
- (void)updateCheckmarkState:(int64_t)state checkmarkIndex:(int)index;
- (void)updateProgressToState:(int64_t)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = TrainDetectorController;
  [(TrainDetectorController *)&v6 viewDidAppear:appear];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = TrainDetectorController;
  [(TrainDetectorController *)&v5 viewWillDisappear:disappear];
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
  savedSoundLabel = [(TrainDetectorController *)self savedSoundLabel];
  text = [savedSoundLabel text];
  UIAccessibilityPostNotification(v3, text);

  visualizationView = [(TrainDetectorController *)self visualizationView];
  [visualizationView setHidden:1];

  visualizationView2 = [(TrainDetectorController *)self visualizationView];
  v8 = +[UIColor systemGrayColor];
  [visualizationView2 setTintColor:v8];

  category = [(TrainDetectorController *)self category];
  v10 = [(TrainDetectorController *)self locStringForKShotCategory:category key:@"PRE_LISTENING_LABEL"];
  [(TrainDetectorController *)self _updateLabelText:v10];

  v11 = +[UIColor labelColor];
  label = [(TrainDetectorController *)self label];
  [label setTextColor:v11];

  learnMoreLinkButton = [(TrainDetectorController *)self learnMoreLinkButton];
  [learnMoreLinkButton setHidden:1];
}

- (void)enterWaitingForSoundState
{
  if (self->_state != 5)
  {
    savedSoundLabel = [(TrainDetectorController *)self savedSoundLabel];
    [savedSoundLabel setHidden:1];

    visualizationView = [(TrainDetectorController *)self visualizationView];
    [visualizationView setHidden:0];

    visualizationView2 = [(TrainDetectorController *)self visualizationView];
    v7 = +[UIColor systemGrayColor];
    [visualizationView2 setTintColor:v7];

    category = [(TrainDetectorController *)self category];
    v9 = [(TrainDetectorController *)self locStringForKShotCategory:category key:@"START_LISTENING_LABEL"];
    [(TrainDetectorController *)self _updateLabelText:v9];

    v10 = +[UIColor systemGrayColor];
    label = [(TrainDetectorController *)self label];
    [label setTextColor:v10];

    learnMoreLinkButton = [(TrainDetectorController *)self learnMoreLinkButton];
    [learnMoreLinkButton setHidden:1];

    v13 = dispatch_time(0, 2000000000);

    dispatch_after(v13, &_dispatch_main_q, &__block_literal_global_66);
  }
}

void __52__TrainDetectorController_enterWaitingForSoundState__block_invoke(id a1)
{
  v1 = +[AXSDSettings sharedInstance];
  [v1 setSoundDetectionKShotListeningState:1];
}

- (void)enterListeningStateWithCheckmarkIndex:(int)index
{
  v3 = *&index;
  savedSoundLabel = [(TrainDetectorController *)self savedSoundLabel];
  [savedSoundLabel setHidden:1];

  visualizationView = [(TrainDetectorController *)self visualizationView];
  [visualizationView setHidden:0];

  visualizationView2 = [(TrainDetectorController *)self visualizationView];
  v8 = +[UIColor systemBlueColor];
  [visualizationView2 setTintColor:v8];

  [(TrainDetectorController *)self updateCheckmarkState:1 checkmarkIndex:v3];
  category = [(TrainDetectorController *)self category];
  v10 = [(TrainDetectorController *)self locStringForKShotCategory:category key:@"LISTENING"];
  [(TrainDetectorController *)self _updateLabelText:v10];

  learnMoreLinkButton = [(TrainDetectorController *)self learnMoreLinkButton];
  [learnMoreLinkButton setHidden:1];
}

- (void)updateCheckmarkState:(int64_t)state checkmarkIndex:(int)index
{
  checkmarkViews = [(TrainDetectorController *)self checkmarkViews];
  v6 = [checkmarkViews objectAtIndexedSubscript:index];
  [v6 setCheckmarkState:state];
}

- (void)enterTimeoutState
{
  category = [(TrainDetectorController *)self category];
  v4 = [(TrainDetectorController *)self locStringForKShotCategory:category key:@"TIMEOUT"];
  [(TrainDetectorController *)self _updateLabelText:v4];

  v5 = +[UIColor labelColor];
  label = [(TrainDetectorController *)self label];
  [label setTextColor:v5];

  savedSoundLabel = [(TrainDetectorController *)self savedSoundLabel];
  [savedSoundLabel setHidden:1];

  visualizationView = [(TrainDetectorController *)self visualizationView];
  [visualizationView setHidden:1];

  if (self->_learnMoreLinkButton)
  {
    learnMoreLinkButton = [(TrainDetectorController *)self learnMoreLinkButton];
    [learnMoreLinkButton setHidden:0];
  }

  else
  {

    [(TrainDetectorController *)self _setupLearnMoreLinkButton];
  }
}

- (void)enterWaitingForSaveState:(int)state
{
  v3 = *&state;
  savedSoundLabel = [(TrainDetectorController *)self savedSoundLabel];
  [savedSoundLabel setHidden:1];

  visualizationView = [(TrainDetectorController *)self visualizationView];
  [visualizationView setHidden:1];

  v7 = +[UIColor labelColor];
  label = [(TrainDetectorController *)self label];
  [label setTextColor:v7];

  category = [(TrainDetectorController *)self category];
  v10 = [(TrainDetectorController *)self locStringForKShotCategory:category key:@"WAITING_FOR_SAVE"];
  [(TrainDetectorController *)self _updateLabelText:v10];

  [(TrainDetectorController *)self updateCheckmarkState:3 checkmarkIndex:v3];
}

- (void)enterSavingStateWithCheckmarkIndex:(int)index
{
  v3 = *&index;
  v5 = settingsLocString(@"SAVING_SOUND", @"SoundDetection");
  [(TrainDetectorController *)self _updateLabelText:v5];

  [(TrainDetectorController *)self updateCheckmarkState:4 checkmarkIndex:v3];
}

- (void)presentLearnMorePane
{
  learnMoreDelegate = [(TrainDetectorController *)self learnMoreDelegate];
  [learnMoreDelegate presentLearnMorePane];
}

- (void)enterModelSimilarityWarningState:(int)state
{
  v3 = *&state;
  v5 = settingsLocString(@"MODEL_SIMILARITY_WARNING", @"SoundDetection");
  [(TrainDetectorController *)self _updateLabelText:v5];

  [(TrainDetectorController *)self updateCheckmarkState:5 checkmarkIndex:v3];
}

- (void)enterDoneState
{
  headerView = [(TrainDetectorController *)self headerView];
  v4 = settingsLocString(@"RECORDING_COMPLETE", @"SoundDetection");
  [headerView setDetailText:v4];

  visualizationView = [(TrainDetectorController *)self visualizationView];
  [visualizationView setHidden:1];

  savedSoundLabel = [(TrainDetectorController *)self savedSoundLabel];
  [savedSoundLabel setHidden:1];

  learnMoreLinkButton = [(TrainDetectorController *)self learnMoreLinkButton];
  [learnMoreLinkButton setHidden:1];

  v8 = +[UIColor labelColor];
  label = [(TrainDetectorController *)self label];
  [label setTextColor:v8];

  v10 = settingsLocString(@"TRAINING_TIME_EXPLANATION", @"SoundDetection");
  [(TrainDetectorController *)self _updateLabelText:v10];
}

- (void)_updateLabelText:(id)text
{
  textCopy = text;
  label = [(TrainDetectorController *)self label];
  [label setText:textCopy];

  label2 = [(TrainDetectorController *)self label];
  [label2 sizeToFit];

  LODWORD(label2) = UIAccessibilityLayoutChangedNotification;
  label3 = [(TrainDetectorController *)self label];
  UIAccessibilityPostNotification(label2, label3);
}

- (void)_updateVisualizerWithValues:(id)values
{
  valuesCopy = values;
  visualizationView = [(TrainDetectorController *)self visualizationView];
  [visualizationView updateWithMagnitudes:valuesCopy];
}

- (void)_setupVerticalStackView
{
  v3 = objc_alloc_init(UIStackView);
  [(TrainDetectorController *)self setVerticalStackView:v3];

  verticalStackView = [(TrainDetectorController *)self verticalStackView];
  [verticalStackView setDistribution:4];

  verticalStackView2 = [(TrainDetectorController *)self verticalStackView];
  [verticalStackView2 setAxis:1];

  verticalStackView3 = [(TrainDetectorController *)self verticalStackView];
  [verticalStackView3 setSpacing:10.0];

  verticalStackView4 = [(TrainDetectorController *)self verticalStackView];
  [verticalStackView4 setAlignment:3];

  contentView = [(TrainDetectorController *)self contentView];
  verticalStackView5 = [(TrainDetectorController *)self verticalStackView];
  [contentView addSubview:verticalStackView5];
}

- (void)_constrainVerticalStackView
{
  verticalStackView = [(TrainDetectorController *)self verticalStackView];
  [verticalStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  verticalStackView2 = [(TrainDetectorController *)self verticalStackView];
  leftAnchor = [verticalStackView2 leftAnchor];
  contentView = [(TrainDetectorController *)self contentView];
  leftAnchor2 = [contentView leftAnchor];
  v8 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:10.0];
  [v8 setActive:1];

  verticalStackView3 = [(TrainDetectorController *)self verticalStackView];
  rightAnchor = [verticalStackView3 rightAnchor];
  contentView2 = [(TrainDetectorController *)self contentView];
  rightAnchor2 = [contentView2 rightAnchor];
  v13 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-10.0];
  [v13 setActive:1];

  verticalStackView4 = [(TrainDetectorController *)self verticalStackView];
  topAnchor = [verticalStackView4 topAnchor];
  checkmarkStackView = [(TrainDetectorController *)self checkmarkStackView];
  bottomAnchor = [checkmarkStackView bottomAnchor];
  v18 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:70.0];
  [v18 setActive:1];

  verticalStackView5 = [(TrainDetectorController *)self verticalStackView];
  bottomAnchor2 = [verticalStackView5 bottomAnchor];
  contentView3 = [(TrainDetectorController *)self contentView];
  bottomAnchor3 = [contentView3 bottomAnchor];
  v22 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-70.0];
  [v22 setActive:1];
}

- (void)_setupVisualizationView
{
  v3 = objc_alloc_init(SoundDetectionAudioVisualizationView);
  [(TrainDetectorController *)self setVisualizationView:v3];

  verticalStackView = [(TrainDetectorController *)self verticalStackView];
  visualizationView = [(TrainDetectorController *)self visualizationView];
  [verticalStackView addArrangedSubview:visualizationView];

  visualizationView2 = [(TrainDetectorController *)self visualizationView];
  [visualizationView2 setHidden:1];
}

- (void)_setupCheckmarkViews
{
  checkmarkViews = [(TrainDetectorController *)self checkmarkViews];

  if (!checkmarkViews)
  {
    v4 = +[NSMutableArray array];
    [(TrainDetectorController *)self setCheckmarkViews:v4];
  }

  v5 = 5;
  do
  {
    v6 = objc_alloc_init(CheckmarkTrainingView);
    checkmarkViews2 = [(TrainDetectorController *)self checkmarkViews];
    [checkmarkViews2 addObject:v6];

    --v5;
  }

  while (v5);
  v8 = [UIStackView alloc];
  checkmarkViews3 = [(TrainDetectorController *)self checkmarkViews];
  v10 = [v8 initWithArrangedSubviews:checkmarkViews3];
  [(TrainDetectorController *)self setCheckmarkStackView:v10];

  checkmarkStackView = [(TrainDetectorController *)self checkmarkStackView];
  [checkmarkStackView setDistribution:4];

  checkmarkStackView2 = [(TrainDetectorController *)self checkmarkStackView];
  [checkmarkStackView2 setAxis:0];

  checkmarkStackView3 = [(TrainDetectorController *)self checkmarkStackView];
  [checkmarkStackView3 setSpacing:10.0];

  checkmarkStackView4 = [(TrainDetectorController *)self checkmarkStackView];
  [checkmarkStackView4 setAlignment:3];

  contentView = [(TrainDetectorController *)self contentView];
  checkmarkStackView5 = [(TrainDetectorController *)self checkmarkStackView];
  [contentView addSubview:checkmarkStackView5];
}

- (void)_constrainCheckmarkStackView
{
  checkmarkStackView = [(TrainDetectorController *)self checkmarkStackView];
  [checkmarkStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  checkmarkStackView2 = [(TrainDetectorController *)self checkmarkStackView];
  leftAnchor = [checkmarkStackView2 leftAnchor];
  contentView = [(TrainDetectorController *)self contentView];
  leftAnchor2 = [contentView leftAnchor];
  v8 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:10.0];
  [v8 setActive:1];

  checkmarkStackView3 = [(TrainDetectorController *)self checkmarkStackView];
  rightAnchor = [checkmarkStackView3 rightAnchor];
  contentView2 = [(TrainDetectorController *)self contentView];
  rightAnchor2 = [contentView2 rightAnchor];
  v13 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-10.0];
  [v13 setActive:1];

  checkmarkStackView4 = [(TrainDetectorController *)self checkmarkStackView];
  topAnchor = [checkmarkStackView4 topAnchor];
  contentView3 = [(TrainDetectorController *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:70.0];
  [v17 setActive:1];
}

- (void)_setupLabel
{
  v3 = objc_alloc_init(UILabel);
  label = self->_label;
  self->_label = v3;

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  label = [(TrainDetectorController *)self label];
  [label setFont:v5];

  label2 = [(TrainDetectorController *)self label];
  [label2 setTextAlignment:1];

  label3 = [(TrainDetectorController *)self label];
  [label3 setNumberOfLines:0];

  label4 = [(TrainDetectorController *)self label];
  [label4 setLineBreakMode:0];

  label5 = [(TrainDetectorController *)self label];
  [label5 setAdjustsFontForContentSizeCategory:1];

  verticalStackView = [(TrainDetectorController *)self verticalStackView];
  label6 = [(TrainDetectorController *)self label];
  [verticalStackView addArrangedSubview:label6];
}

- (void)_setupSavedSoundLabel
{
  v3 = objc_alloc_init(UILabel);
  savedSoundLabel = self->_savedSoundLabel;
  self->_savedSoundLabel = v3;

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  savedSoundLabel = [(TrainDetectorController *)self savedSoundLabel];
  [savedSoundLabel setFont:v5];

  savedSoundLabel2 = [(TrainDetectorController *)self savedSoundLabel];
  [savedSoundLabel2 setTextAlignment:1];

  v8 = +[UIColor secondaryLabelColor];
  savedSoundLabel3 = [(TrainDetectorController *)self savedSoundLabel];
  [savedSoundLabel3 setTextColor:v8];

  savedSoundLabel4 = [(TrainDetectorController *)self savedSoundLabel];
  [savedSoundLabel4 setNumberOfLines:0];

  savedSoundLabel5 = [(TrainDetectorController *)self savedSoundLabel];
  [savedSoundLabel5 setLineBreakMode:0];

  savedSoundLabel6 = [(TrainDetectorController *)self savedSoundLabel];
  [savedSoundLabel6 setAdjustsFontForContentSizeCategory:1];

  contentView = [(TrainDetectorController *)self contentView];
  savedSoundLabel7 = [(TrainDetectorController *)self savedSoundLabel];
  [contentView addSubview:savedSoundLabel7];

  savedSoundLabel8 = [(TrainDetectorController *)self savedSoundLabel];
  [savedSoundLabel8 setHidden:1];
}

- (void)_constrainSavedSoundLabel
{
  savedSoundLabel = [(TrainDetectorController *)self savedSoundLabel];
  [savedSoundLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  savedSoundLabel2 = [(TrainDetectorController *)self savedSoundLabel];
  leftAnchor = [savedSoundLabel2 leftAnchor];
  contentView = [(TrainDetectorController *)self contentView];
  leftAnchor2 = [contentView leftAnchor];
  v8 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:10.0];
  [v8 setActive:1];

  savedSoundLabel3 = [(TrainDetectorController *)self savedSoundLabel];
  rightAnchor = [savedSoundLabel3 rightAnchor];
  contentView2 = [(TrainDetectorController *)self contentView];
  rightAnchor2 = [contentView2 rightAnchor];
  v13 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-10.0];
  [v13 setActive:1];

  savedSoundLabel4 = [(TrainDetectorController *)self savedSoundLabel];
  topAnchor = [savedSoundLabel4 topAnchor];
  checkmarkStackView = [(TrainDetectorController *)self checkmarkStackView];
  bottomAnchor = [checkmarkStackView bottomAnchor];
  v17 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:10.0];
  [v17 setActive:1];
}

- (void)_setupLearnMoreLinkButton
{
  v3 = [UIButton buttonWithType:1];
  learnMoreLinkButton = self->_learnMoreLinkButton;
  self->_learnMoreLinkButton = v3;

  learnMoreLinkButton = [(TrainDetectorController *)self learnMoreLinkButton];
  [learnMoreLinkButton addTarget:self action:"presentLearnMorePane" forControlEvents:64];

  learnMoreLinkButton2 = [(TrainDetectorController *)self learnMoreLinkButton];
  [learnMoreLinkButton2 setFrame:{0.0, 0.0, 150.0, 50.0}];

  learnMoreLinkButton3 = [(TrainDetectorController *)self learnMoreLinkButton];
  v8 = +[UIColor systemBlueColor];
  [learnMoreLinkButton3 setTitleColor:v8 forState:0];

  learnMoreLinkButton4 = [(TrainDetectorController *)self learnMoreLinkButton];
  v10 = settingsLocString(@"LEARN_MORE_BUTTON", @"SoundDetection");
  [learnMoreLinkButton4 setTitle:v10 forState:0];

  learnMoreLinkButton5 = [(TrainDetectorController *)self learnMoreLinkButton];
  titleLabel = [learnMoreLinkButton5 titleLabel];
  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [titleLabel setFont:v13];

  learnMoreLinkButton6 = [(TrainDetectorController *)self learnMoreLinkButton];
  titleLabel2 = [learnMoreLinkButton6 titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  learnMoreLinkButton7 = [(TrainDetectorController *)self learnMoreLinkButton];
  titleLabel3 = [learnMoreLinkButton7 titleLabel];
  [titleLabel3 setNumberOfLines:0];

  learnMoreLinkButton8 = [(TrainDetectorController *)self learnMoreLinkButton];
  titleLabel4 = [learnMoreLinkButton8 titleLabel];
  [titleLabel4 setLineBreakMode:0];

  learnMoreLinkButton9 = [(TrainDetectorController *)self learnMoreLinkButton];
  titleLabel5 = [learnMoreLinkButton9 titleLabel];
  [titleLabel5 setTextAlignment:1];

  verticalStackView = [(TrainDetectorController *)self verticalStackView];
  learnMoreLinkButton10 = [(TrainDetectorController *)self learnMoreLinkButton];
  [verticalStackView addArrangedSubview:learnMoreLinkButton10];
}

- (void)_constrainVisualizationView
{
  visualizationView = [(TrainDetectorController *)self visualizationView];
  [visualizationView setTranslatesAutoresizingMaskIntoConstraints:0];

  visualizationView2 = [(TrainDetectorController *)self visualizationView];
  leftAnchor = [visualizationView2 leftAnchor];
  verticalStackView = [(TrainDetectorController *)self verticalStackView];
  leftAnchor2 = [verticalStackView leftAnchor];
  v8 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:10.0];
  [v8 setActive:1];

  visualizationView3 = [(TrainDetectorController *)self visualizationView];
  rightAnchor = [visualizationView3 rightAnchor];
  verticalStackView2 = [(TrainDetectorController *)self verticalStackView];
  rightAnchor2 = [verticalStackView2 rightAnchor];
  v13 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-10.0];
  [v13 setActive:1];

  visualizationView4 = [(TrainDetectorController *)self visualizationView];
  heightAnchor = [visualizationView4 heightAnchor];
  v15 = [heightAnchor constraintEqualToConstant:90.0];
  [v15 setActive:1];
}

- (void)updateProgressToState:(int64_t)state
{
  self->_state = state;
  v3 = state - 1;
  if ((state - 1) <= 4)
  {
    v6 = 0;
    do
    {
      checkmarkViews = [(TrainDetectorController *)self checkmarkViews];
      v8 = [checkmarkViews objectAtIndexedSubscript:v6];
      [v8 setCheckmarkState:2];

      ++v6;
    }

    while (state != v6);
    if (v3 < 4)
    {
      v9 = off_258DE8[v3];
      savedSoundLabel = [(TrainDetectorController *)self savedSoundLabel];
      v11 = settingsLocString(v9, @"SoundDetection");
      [savedSoundLabel setText:v11];
    }

    savedSoundLabel2 = [(TrainDetectorController *)self savedSoundLabel];
    [savedSoundLabel2 setHidden:0];

    savedSoundLabel3 = [(TrainDetectorController *)self savedSoundLabel];
    [savedSoundLabel3 sizeToFit];
  }
}

- (id)locStringForKShotCategory:(id)category key:(id)key
{
  categoryCopy = category;
  keyCopy = key;
  if ([categoryCopy isEqualToString:AXSDDetectorCategoryAlarm])
  {
    v7 = @"_ALARM";
  }

  else if ([categoryCopy isEqualToString:AXSDDetectorCategoryHousehold])
  {
    v7 = @"_APPLIANCE";
  }

  else
  {
    v7 = &stru_25D420;
  }

  v8 = [keyCopy stringByAppendingString:v7];

  v9 = settingsLocString(v8, @"SoundDetection");

  return v9;
}

- (AXSDLearnMoreDelegate)learnMoreDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_learnMoreDelegate);

  return WeakRetained;
}

@end