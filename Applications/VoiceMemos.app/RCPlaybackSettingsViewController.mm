@interface RCPlaybackSettingsViewController
- (CGSize)currentContentSize;
- (RCPlaybackSettingsDelegate)delegate;
- (void)_checkForContentSizeChanges;
- (void)_handleDone;
- (void)_handleReset;
- (void)_updateCollectionViewWithPlaybackSettings:(id)settings;
- (void)_updateResetButtonState;
- (void)setNeedsDoneButton:(BOOL)button;
- (void)setPlaybackSettings:(id)settings;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation RCPlaybackSettingsViewController

- (void)viewDidLoad
{
  v58.receiver = self;
  v58.super_class = RCPlaybackSettingsViewController;
  [(RCPlaybackSettingsViewController *)&v58 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"PLAYBACK_SETTINGS_VIEW_TITLE" value:&stru_100295BB8 table:0];
  navigationItem = [(RCPlaybackSettingsViewController *)self navigationItem];
  [navigationItem setTitle:v4];

  v6 = +[NSBundle mainBundle];
  v57 = [v6 localizedStringForKey:@"RESET_PLAYBACK_SETTINGS" value:&stru_100295BB8 table:0];

  v7 = [[UIBarButtonItem alloc] initWithTitle:v57 style:0 target:self action:"_handleReset"];
  [(RCPlaybackSettingsViewController *)self setResetChangesBarButtonItem:v7];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"AX_RESET_PLAYBACK_SETTINGS_BUTTON" value:&stru_100295BB8 table:0];
  [v7 setAccessibilityLabel:v9];

  [v7 setAccessibilityIdentifier:@"PlaybackOptions/ResetButton"];
  navigationItem2 = [(RCPlaybackSettingsViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v7];

  v11 = objc_alloc_init(RCPlaybackSettingsCollectionViewController);
  [(RCPlaybackSettingsCollectionViewController *)v11 setDelegate:self];
  delegate = [(RCPlaybackSettingsViewController *)self delegate];
  [(RCPlaybackSettingsCollectionViewController *)v11 setSettingsDelegate:delegate];

  playbackSettings = [(RCPlaybackSettingsViewController *)self playbackSettings];
  [(RCPlaybackSettingsCollectionViewController *)v11 setPlaybackSettings:playbackSettings];

  [(RCPlaybackSettingsViewController *)self setPlaybackSettingsCollectionViewController:v11];
  [(RCPlaybackSettingsViewController *)self addChildViewController:v11];
  [(RCPlaybackSettingsCollectionViewController *)v11 didMoveToParentViewController:self];
  v14 = [UIBlurEffect effectWithStyle:9];
  v15 = [[UIVisualEffectView alloc] initWithEffect:v14];
  view = [(RCPlaybackSettingsViewController *)self view];
  [view addSubview:v15];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  trailingAnchor = [v15 trailingAnchor];
  view2 = [(RCPlaybackSettingsViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v20 setActive:1];

  leadingAnchor = [v15 leadingAnchor];
  view3 = [(RCPlaybackSettingsViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v24 setActive:1];

  topAnchor = [v15 topAnchor];
  view4 = [(RCPlaybackSettingsViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v28 setActive:1];

  bottomAnchor = [v15 bottomAnchor];
  view5 = [(RCPlaybackSettingsViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v32 setActive:1];

  contentView = [v15 contentView];
  view6 = [(RCPlaybackSettingsCollectionViewController *)v11 view];
  [contentView addSubview:view6];

  view7 = [(RCPlaybackSettingsCollectionViewController *)v11 view];
  [view7 setTranslatesAutoresizingMaskIntoConstraints:0];

  view8 = [(RCPlaybackSettingsCollectionViewController *)v11 view];
  trailingAnchor3 = [view8 trailingAnchor];
  contentView2 = [v15 contentView];
  trailingAnchor4 = [contentView2 trailingAnchor];
  v40 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v40 setActive:1];

  view9 = [(RCPlaybackSettingsCollectionViewController *)v11 view];
  leadingAnchor3 = [view9 leadingAnchor];
  contentView3 = [v15 contentView];
  leadingAnchor4 = [contentView3 leadingAnchor];
  v45 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v45 setActive:1];

  view10 = [(RCPlaybackSettingsCollectionViewController *)v11 view];
  topAnchor3 = [view10 topAnchor];
  contentView4 = [v15 contentView];
  topAnchor4 = [contentView4 topAnchor];
  v50 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v50 setActive:1];

  view11 = [(RCPlaybackSettingsCollectionViewController *)v11 view];
  bottomAnchor3 = [view11 bottomAnchor];
  contentView5 = [v15 contentView];
  bottomAnchor4 = [contentView5 bottomAnchor];
  v55 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v55 setActive:1];

  collectionView = [(RCPlaybackSettingsCollectionViewController *)v11 collectionView];
  [(RCPlaybackSettingsViewController *)self setContentScrollView:collectionView forEdge:15];

  [(RCPlaybackSettingsViewController *)self _updateResetButtonState];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = RCPlaybackSettingsViewController;
  [(RCPlaybackSettingsViewController *)&v5 viewDidDisappear:disappear];
  delegate = [(RCPlaybackSettingsViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didHidePlaybackSettingsViewController];
  }
}

- (void)setPlaybackSettings:(id)settings
{
  settingsCopy = settings;
  objc_storeStrong(&self->_playbackSettings, settings);
  if ([(RCPlaybackSettingsViewController *)self isViewLoaded])
  {
    [(RCPlaybackSettingsViewController *)self _updateCollectionViewWithPlaybackSettings:settingsCopy];
  }
}

- (void)setNeedsDoneButton:(BOOL)button
{
  self->_needsDoneButton = button;
  if (button)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_handleDone"];
    navigationItem = [(RCPlaybackSettingsViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v4];

    navigationItem2 = [(RCPlaybackSettingsViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem2 rightBarButtonItem];
    [rightBarButtonItem setAccessibilityIdentifier:@"PlaybackOptions/DoneButton"];
  }

  else
  {
    navigationItem2 = [(RCPlaybackSettingsViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0];
  }
}

- (void)_updateCollectionViewWithPlaybackSettings:(id)settings
{
  settingsCopy = settings;
  playbackSettingsCollectionViewController = [(RCPlaybackSettingsViewController *)self playbackSettingsCollectionViewController];
  [playbackSettingsCollectionViewController setPlaybackSettings:settingsCopy];

  [(RCPlaybackSettingsViewController *)self _updateResetButtonState];

  [(RCPlaybackSettingsViewController *)self _checkForContentSizeChanges];
}

- (void)_updateResetButtonState
{
  hasCustomizedPlaybackSettings = [(RCPlaybackSettings *)self->_playbackSettings hasCustomizedPlaybackSettings];
  resetChangesBarButtonItem = [(RCPlaybackSettingsViewController *)self resetChangesBarButtonItem];
  [resetChangesBarButtonItem setEnabled:hasCustomizedPlaybackSettings];
}

- (void)_handleReset
{
  playbackSettings = [(RCPlaybackSettingsViewController *)self playbackSettings];
  uuid = [playbackSettings uuid];

  delegate = [(RCPlaybackSettingsViewController *)self delegate];
  [delegate setEnhanced:0 forUUID:uuid];

  delegate2 = [(RCPlaybackSettingsViewController *)self delegate];
  [delegate2 setRemoveSilence:0 forUUID:uuid];

  delegate3 = [(RCPlaybackSettingsViewController *)self delegate];
  [delegate3 setPlaybackSpeed:uuid forUUID:1.0];

  delegate4 = [(RCPlaybackSettingsViewController *)self delegate];
  [delegate4 setLayerMix:uuid forUUID:0.0];

  delegate5 = [(RCPlaybackSettingsViewController *)self delegate];
  [delegate5 setSpeechIsolatorEnabled:0 forUUID:uuid];

  delegate6 = [(RCPlaybackSettingsViewController *)self delegate];
  LODWORD(v10) = kDefaultSpeechIsolatorValue;
  [delegate6 setSpeechIsolatorValue:uuid forUUID:v10];
}

- (void)_handleDone
{
  delegate = [(RCPlaybackSettingsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(RCPlaybackSettingsViewController *)self delegate];
    [delegate2 hidePlaybackSettingsViewController];
  }
}

- (void)_checkForContentSizeChanges
{
  playbackSettingsCollectionViewController = [(RCPlaybackSettingsViewController *)self playbackSettingsCollectionViewController];
  collectionView = [playbackSettingsCollectionViewController collectionView];
  [collectionView contentSize];
  v6 = v5;
  v8 = v7;

  [(RCPlaybackSettingsViewController *)self currentContentSize];
  if (v10 != v6 || v9 != v8)
  {
    [(RCPlaybackSettingsViewController *)self setCurrentContentSize:v6, v8];
    delegate = [(RCPlaybackSettingsViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(RCPlaybackSettingsViewController *)self delegate];
      [delegate2 playbackSettingsViewController:self contentSizeChanged:{v6, v8}];
    }
  }
}

- (RCPlaybackSettingsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)currentContentSize
{
  width = self->_currentContentSize.width;
  height = self->_currentContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end