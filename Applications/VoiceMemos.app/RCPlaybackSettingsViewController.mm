@interface RCPlaybackSettingsViewController
- (CGSize)currentContentSize;
- (RCPlaybackSettingsDelegate)delegate;
- (void)_checkForContentSizeChanges;
- (void)_handleDone;
- (void)_handleReset;
- (void)_updateCollectionViewWithPlaybackSettings:(id)a3;
- (void)_updateResetButtonState;
- (void)setNeedsDoneButton:(BOOL)a3;
- (void)setPlaybackSettings:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
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
  v5 = [(RCPlaybackSettingsViewController *)self navigationItem];
  [v5 setTitle:v4];

  v6 = +[NSBundle mainBundle];
  v57 = [v6 localizedStringForKey:@"RESET_PLAYBACK_SETTINGS" value:&stru_100295BB8 table:0];

  v7 = [[UIBarButtonItem alloc] initWithTitle:v57 style:0 target:self action:"_handleReset"];
  [(RCPlaybackSettingsViewController *)self setResetChangesBarButtonItem:v7];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"AX_RESET_PLAYBACK_SETTINGS_BUTTON" value:&stru_100295BB8 table:0];
  [v7 setAccessibilityLabel:v9];

  [v7 setAccessibilityIdentifier:@"PlaybackOptions/ResetButton"];
  v10 = [(RCPlaybackSettingsViewController *)self navigationItem];
  [v10 setLeftBarButtonItem:v7];

  v11 = objc_alloc_init(RCPlaybackSettingsCollectionViewController);
  [(RCPlaybackSettingsCollectionViewController *)v11 setDelegate:self];
  v12 = [(RCPlaybackSettingsViewController *)self delegate];
  [(RCPlaybackSettingsCollectionViewController *)v11 setSettingsDelegate:v12];

  v13 = [(RCPlaybackSettingsViewController *)self playbackSettings];
  [(RCPlaybackSettingsCollectionViewController *)v11 setPlaybackSettings:v13];

  [(RCPlaybackSettingsViewController *)self setPlaybackSettingsCollectionViewController:v11];
  [(RCPlaybackSettingsViewController *)self addChildViewController:v11];
  [(RCPlaybackSettingsCollectionViewController *)v11 didMoveToParentViewController:self];
  v14 = [UIBlurEffect effectWithStyle:9];
  v15 = [[UIVisualEffectView alloc] initWithEffect:v14];
  v16 = [(RCPlaybackSettingsViewController *)self view];
  [v16 addSubview:v15];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [v15 trailingAnchor];
  v18 = [(RCPlaybackSettingsViewController *)self view];
  v19 = [v18 trailingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [v15 leadingAnchor];
  v22 = [(RCPlaybackSettingsViewController *)self view];
  v23 = [v22 leadingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  v25 = [v15 topAnchor];
  v26 = [(RCPlaybackSettingsViewController *)self view];
  v27 = [v26 topAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = [v15 bottomAnchor];
  v30 = [(RCPlaybackSettingsViewController *)self view];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  [v32 setActive:1];

  v33 = [v15 contentView];
  v34 = [(RCPlaybackSettingsCollectionViewController *)v11 view];
  [v33 addSubview:v34];

  v35 = [(RCPlaybackSettingsCollectionViewController *)v11 view];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

  v36 = [(RCPlaybackSettingsCollectionViewController *)v11 view];
  v37 = [v36 trailingAnchor];
  v38 = [v15 contentView];
  v39 = [v38 trailingAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  [v40 setActive:1];

  v41 = [(RCPlaybackSettingsCollectionViewController *)v11 view];
  v42 = [v41 leadingAnchor];
  v43 = [v15 contentView];
  v44 = [v43 leadingAnchor];
  v45 = [v42 constraintEqualToAnchor:v44];
  [v45 setActive:1];

  v46 = [(RCPlaybackSettingsCollectionViewController *)v11 view];
  v47 = [v46 topAnchor];
  v48 = [v15 contentView];
  v49 = [v48 topAnchor];
  v50 = [v47 constraintEqualToAnchor:v49];
  [v50 setActive:1];

  v51 = [(RCPlaybackSettingsCollectionViewController *)v11 view];
  v52 = [v51 bottomAnchor];
  v53 = [v15 contentView];
  v54 = [v53 bottomAnchor];
  v55 = [v52 constraintEqualToAnchor:v54];
  [v55 setActive:1];

  v56 = [(RCPlaybackSettingsCollectionViewController *)v11 collectionView];
  [(RCPlaybackSettingsViewController *)self setContentScrollView:v56 forEdge:15];

  [(RCPlaybackSettingsViewController *)self _updateResetButtonState];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RCPlaybackSettingsViewController;
  [(RCPlaybackSettingsViewController *)&v5 viewDidDisappear:a3];
  v4 = [(RCPlaybackSettingsViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 didHidePlaybackSettingsViewController];
  }
}

- (void)setPlaybackSettings:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_playbackSettings, a3);
  if ([(RCPlaybackSettingsViewController *)self isViewLoaded])
  {
    [(RCPlaybackSettingsViewController *)self _updateCollectionViewWithPlaybackSettings:v5];
  }
}

- (void)setNeedsDoneButton:(BOOL)a3
{
  self->_needsDoneButton = a3;
  if (a3)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_handleDone"];
    v5 = [(RCPlaybackSettingsViewController *)self navigationItem];
    [v5 setRightBarButtonItem:v4];

    v7 = [(RCPlaybackSettingsViewController *)self navigationItem];
    v6 = [v7 rightBarButtonItem];
    [v6 setAccessibilityIdentifier:@"PlaybackOptions/DoneButton"];
  }

  else
  {
    v7 = [(RCPlaybackSettingsViewController *)self navigationItem];
    [v7 setRightBarButtonItem:0];
  }
}

- (void)_updateCollectionViewWithPlaybackSettings:(id)a3
{
  v4 = a3;
  v5 = [(RCPlaybackSettingsViewController *)self playbackSettingsCollectionViewController];
  [v5 setPlaybackSettings:v4];

  [(RCPlaybackSettingsViewController *)self _updateResetButtonState];

  [(RCPlaybackSettingsViewController *)self _checkForContentSizeChanges];
}

- (void)_updateResetButtonState
{
  v3 = [(RCPlaybackSettings *)self->_playbackSettings hasCustomizedPlaybackSettings];
  v4 = [(RCPlaybackSettingsViewController *)self resetChangesBarButtonItem];
  [v4 setEnabled:v3];
}

- (void)_handleReset
{
  v3 = [(RCPlaybackSettingsViewController *)self playbackSettings];
  v11 = [v3 uuid];

  v4 = [(RCPlaybackSettingsViewController *)self delegate];
  [v4 setEnhanced:0 forUUID:v11];

  v5 = [(RCPlaybackSettingsViewController *)self delegate];
  [v5 setRemoveSilence:0 forUUID:v11];

  v6 = [(RCPlaybackSettingsViewController *)self delegate];
  [v6 setPlaybackSpeed:v11 forUUID:1.0];

  v7 = [(RCPlaybackSettingsViewController *)self delegate];
  [v7 setLayerMix:v11 forUUID:0.0];

  v8 = [(RCPlaybackSettingsViewController *)self delegate];
  [v8 setSpeechIsolatorEnabled:0 forUUID:v11];

  v9 = [(RCPlaybackSettingsViewController *)self delegate];
  LODWORD(v10) = kDefaultSpeechIsolatorValue;
  [v9 setSpeechIsolatorValue:v11 forUUID:v10];
}

- (void)_handleDone
{
  v3 = [(RCPlaybackSettingsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(RCPlaybackSettingsViewController *)self delegate];
    [v5 hidePlaybackSettingsViewController];
  }
}

- (void)_checkForContentSizeChanges
{
  v3 = [(RCPlaybackSettingsViewController *)self playbackSettingsCollectionViewController];
  v4 = [v3 collectionView];
  [v4 contentSize];
  v6 = v5;
  v8 = v7;

  [(RCPlaybackSettingsViewController *)self currentContentSize];
  if (v10 != v6 || v9 != v8)
  {
    [(RCPlaybackSettingsViewController *)self setCurrentContentSize:v6, v8];
    v12 = [(RCPlaybackSettingsViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(RCPlaybackSettingsViewController *)self delegate];
      [v14 playbackSettingsViewController:self contentSizeChanged:{v6, v8}];
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