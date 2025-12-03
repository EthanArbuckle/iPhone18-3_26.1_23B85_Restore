@interface SoundActionsPracticeViewController
- (BOOL)_cellsWillTruncateAtWidth:(double)width;
- (BOOL)accessibilityPerformMagicTap;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)_itemHeight;
- (double)_itemWidth;
- (double)_itemWidthForColumnCount:(unsigned int)count;
- (id)_indexPathForUsage:(int64_t)usage;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int)_setupLocalHeader;
- (void)_didFinishAnnouncement:(id)announcement;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)_pauseVisualizer:(BOOL)visualizer;
- (void)_setupCollectionView;
- (void)_setupLearnMoreButton;
- (void)_setupSounds;
- (void)_startListening;
- (void)_stopListening;
- (void)_traitCollectionDidChange:(id)change;
- (void)_updateCollectionViewHeightConstraint;
- (void)_voiceOverStatusDidChange:(id)change;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SoundActionsPracticeViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = SoundActionsPracticeViewController;
  [(SoundActionsPracticeViewController *)&v11 viewDidLoad];
  self->_itemHeight = 0.0;
  self->_lastRecognizedOrTappedSound = 0;
  self->_cachedColumnCount = 0;
  scrollView = [(SoundActionsPracticeViewController *)self scrollView];
  [scrollView _addScrollViewScrollObserver:self];

  [(SoundActionsPracticeViewController *)self _setupSounds];
  [(SoundActionsPracticeViewController *)self _setupLearnMoreButton];
  [(SoundActionsPracticeViewController *)self _setupCollectionView];
  [(SoundActionsPracticeViewController *)self _setupLocalHeader];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_voiceOverStatusDidChange:" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_didFinishAnnouncement:" name:UIAccessibilityAnnouncementDidFinishNotification object:0];

  objc_initWeak(&location, self);
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [NSArray arrayWithObjects:v12 count:2];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __49__SoundActionsPracticeViewController_viewDidLoad__block_invoke;
  v8[3] = &unk_255658;
  objc_copyWeak(&v9, &location);
  v7 = [(SoundActionsPracticeViewController *)self registerForTraitChanges:v6 withHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__SoundActionsPracticeViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _traitCollectionDidChange:v4];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SoundActionsPracticeViewController;
  [(SoundActionsPracticeViewController *)&v3 viewDidLayoutSubviews];
  [(SoundActionsPracticeViewController *)self _updateCollectionViewHeightConstraint];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = SoundActionsPracticeViewController;
  [(SoundActionsPracticeViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SoundActionsPracticeViewController;
  [(SoundActionsPracticeViewController *)&v4 viewDidAppear:appear];
  [(SoundActionsPracticeViewController *)self _startListening];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(SoundActionsPracticeViewController *)self _stopListening];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SoundActionsPracticeViewController;
  [(SoundActionsPracticeViewController *)&v4 viewWillDisappear:disappear];
  [(SoundActionsPracticeViewController *)self _stopListening];
}

- (void)_stopListening
{
  v3 = +[SoundActionsPracticeAudioManager sharedInstance];
  [v3 deregisterListener:self];

  v4 = +[SoundActionsPracticeAudioManager sharedInstance];
  [v4 stop];

  visualizerView = [(SoundActionsHeader *)self->_scrollingHeader visualizerView];
  [visualizerView setStyleDisabled:1];

  visualizerView2 = [(SoundActionsHeader *)self->_staticHeader visualizerView];
  [visualizerView2 setStyleDisabled:1];
}

- (void)_startListening
{
  visualizerView = [(SoundActionsHeader *)self->_scrollingHeader visualizerView];
  [visualizerView setStyleDisabled:0];

  visualizerView2 = [(SoundActionsHeader *)self->_staticHeader visualizerView];
  [visualizerView2 setStyleDisabled:0];

  objc_initWeak(&location, self);
  v5 = +[SoundActionsPracticeAudioManager sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __53__SoundActionsPracticeViewController__startListening__block_invoke;
  v10[3] = &unk_256718;
  objc_copyWeak(&v11, &location);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __53__SoundActionsPracticeViewController__startListening__block_invoke_2;
  v8[3] = &unk_255E88;
  objc_copyWeak(&v9, &location);
  visualizerView3 = [(SoundActionsHeader *)self->_staticHeader visualizerView];
  [v5 registerListener:self forAudioLevelUpdates:v10 forDetection:v8 withBucketCount:{objc_msgSend(visualizerView3, "pipCount")}];

  v7 = +[SoundActionsPracticeAudioManager sharedInstance];
  [v7 start];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __53__SoundActionsPracticeViewController__startListening__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[6] visualizerView];
    [v5 updateWithMagnitudes:v7];

    if (([v4[7] isHidden] & 1) == 0)
    {
      v6 = [v4[7] visualizerView];
      [v6 updateWithMagnitudes:v7];
    }
  }
}

void __53__SoundActionsPracticeViewController__startListening__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSoundEvent:a2];
}

void __56__SoundActionsPracticeViewController__handleSoundEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == -1)
  {
    v3 = *(a1 + 32);
    v4 = 1;
    goto LABEL_5;
  }

  if (v2 == -2)
  {
    v3 = *(a1 + 32);
    v4 = 0;
LABEL_5:

    [v3 _pauseVisualizer:v4];
    return;
  }

  v5 = settingsLocString(@"SOUND_ACTION_LEARN_PAGE_GREAT", @"Accessibility");
  v6 = [*(*(a1 + 32) + 56) visualizerView];
  [v6 showCorrectWithString:v5];

  v7 = [*(*(a1 + 32) + 48) visualizerView];
  [v7 showCorrectWithString:v5];

  UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v5);
  v8 = [*(a1 + 32) _indexPathForUsage:*(a1 + 40)];
  if (v8)
  {
    v9 = [*(*(a1 + 32) + 72) cellForItemAtIndexPath:v8];
    [v9 setDetected:1];
    v11 = v9;
    v10 = v9;
    AXPerformBlockOnMainThreadAfterDelay();
    *(*(a1 + 32) + 32) = [v8 item];
  }
}

- (void)_pauseVisualizer:(BOOL)visualizer
{
  visualizerCopy = visualizer;
  visualizerView = [(SoundActionsHeader *)self->_staticHeader visualizerView];
  [visualizerView setStyleDisabled:visualizerCopy];

  visualizerView2 = [(SoundActionsHeader *)self->_scrollingHeader visualizerView];
  [visualizerView2 setStyleDisabled:visualizerCopy];
}

- (id)_indexPathForUsage:(int64_t)usage
{
  if ([(NSArray *)self->_sounds count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSArray *)self->_sounds objectAtIndexedSubscript:v5];
      if ([v6 usage] == usage)
      {
        break;
      }

      if ([(NSArray *)self->_sounds count]<= ++v5)
      {
        goto LABEL_5;
      }
    }

    v7 = [NSIndexPath indexPathForItem:v5 inSection:0];
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (void)_setupSounds
{
  assetURL = [(SoundActionsPracticeViewController *)self assetURL];

  sounds = self->_sounds;
  if (assetURL)
  {
    if (!sounds)
    {
      v5 = +[SoundActionsPracticeUtilities sharedInstance];
      assetURL2 = [(SoundActionsPracticeViewController *)self assetURL];
      v7 = [v5 allSoundsForAssetURL:assetURL2];
      v8 = self->_sounds;
      self->_sounds = v7;
    }

    AXPerformBlockOnMainThread();
  }

  else
  {
    self->_sounds = 0;
  }
}

void __50__SoundActionsPracticeViewController__setupSounds__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionView];
  [v1 reloadData];
}

- (void)_setupLearnMoreButton
{
  learnMoreButton = [(SoundActionsPracticeViewController *)self learnMoreButton];

  if (learnMoreButton)
  {
    learnMoreButton2 = [(SoundActionsPracticeViewController *)self learnMoreButton];
    [learnMoreButton2 removeFromSuperview];
  }

  objc_initWeak(&location, self);
  v5 = settingsLocString(@"SOUND_ACTION_PRACTICE_PAGE_LEARN", @"Accessibility");
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __59__SoundActionsPracticeViewController__setupLearnMoreButton__block_invoke;
  v22[3] = &unk_2578D0;
  v22[4] = self;
  objc_copyWeak(&v23, &location);
  v21 = [UIAction actionWithTitle:v5 image:0 identifier:0 handler:v22];

  v6 = +[UIButtonConfiguration plainButtonConfiguration];
  v7 = [UIButton buttonWithConfiguration:v6 primaryAction:v21];
  [(SoundActionsPracticeViewController *)self setLearnMoreButton:v7];

  learnMoreButton3 = [(SoundActionsPracticeViewController *)self learnMoreButton];
  [learnMoreButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(SoundActionsPracticeViewController *)self contentView];
  learnMoreButton4 = [(SoundActionsPracticeViewController *)self learnMoreButton];
  [contentView addSubview:learnMoreButton4];

  learnMoreButton5 = [(SoundActionsPracticeViewController *)self learnMoreButton];
  contentView2 = [(SoundActionsPracticeViewController *)self contentView];
  v12 = [NSLayoutConstraint constraintWithItem:learnMoreButton5 attribute:3 relatedBy:0 toItem:contentView2 attribute:3 multiplier:1.0 constant:0.0];
  v25[0] = v12;
  learnMoreButton6 = [(SoundActionsPracticeViewController *)self learnMoreButton];
  contentView3 = [(SoundActionsPracticeViewController *)self contentView];
  v15 = [NSLayoutConstraint constraintWithItem:learnMoreButton6 attribute:5 relatedBy:0 toItem:contentView3 attribute:5 multiplier:1.0 constant:20.0];
  v25[1] = v15;
  learnMoreButton7 = [(SoundActionsPracticeViewController *)self learnMoreButton];
  contentView4 = [(SoundActionsPracticeViewController *)self contentView];
  v18 = [NSLayoutConstraint constraintWithItem:learnMoreButton7 attribute:6 relatedBy:0 toItem:contentView4 attribute:6 multiplier:1.0 constant:-20.0];
  v25[2] = v18;
  v19 = [NSArray arrayWithObjects:v25 count:3];
  [NSLayoutConstraint activateConstraints:v19];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __59__SoundActionsPracticeViewController__setupLearnMoreButton__block_invoke(uint64_t a1)
{
  v2 = [SoundActionsLearnMoreViewController alloc];
  v3 = settingsLocString(@"SOUND_ACTION_LEARN_PAGE_TITLE", @"Accessibility");
  v4 = settingsLocString(@"SOUND_ACTION_LEARN_PAGE_DETAIL", @"Accessibility");
  v10 = [(SoundActionsLearnMoreViewController *)v2 initWithTitle:v3 detailText:v4 icon:0];

  v5 = +[SoundActionsPracticeUtilities sharedInstance];
  v6 = [*(a1 + 32) assetURL];
  v7 = [v5 allSoundsForAssetURL:v6];
  [(SoundActionsLearnMoreViewController *)v10 setSounds:v7];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained navigationController];
  [v9 pushViewController:v10 animated:1];

  [(SoundActionsLearnMoreViewController *)v10 scrollToCardIndex:*(*(a1 + 32) + 32) animated:0];
}

- (void)_setupCollectionView
{
  v27 = objc_opt_new();
  [v27 setSectionHeadersPinToVisibleBounds:1];
  v3 = [[UICollectionView alloc] initWithFrame:v27 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(SoundActionsPracticeViewController *)self setCollectionView:v3];

  collectionView = [(SoundActionsPracticeViewController *)self collectionView];
  [collectionView setDataSource:self];

  collectionView2 = [(SoundActionsPracticeViewController *)self collectionView];
  [collectionView2 setDelegate:self];

  collectionView3 = [(SoundActionsPracticeViewController *)self collectionView];
  [collectionView3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SoundActionsCellReuseID"];

  collectionView4 = [(SoundActionsPracticeViewController *)self collectionView];
  [collectionView4 registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"SoundActionsHEADERReuseID"];

  collectionView5 = [(SoundActionsPracticeViewController *)self collectionView];
  [collectionView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView6 = [(SoundActionsPracticeViewController *)self collectionView];
  v10 = +[UIColor clearColor];
  [collectionView6 setBackgroundColor:v10];

  collectionView7 = [(SoundActionsPracticeViewController *)self collectionView];
  [collectionView7 setScrollEnabled:0];

  contentView = [(SoundActionsPracticeViewController *)self contentView];
  collectionView8 = [(SoundActionsPracticeViewController *)self collectionView];
  [contentView addSubview:collectionView8];

  collectionView9 = [(SoundActionsPracticeViewController *)self collectionView];
  learnMoreButton = [(SoundActionsPracticeViewController *)self learnMoreButton];
  v24 = [NSLayoutConstraint constraintWithItem:collectionView9 attribute:3 relatedBy:0 toItem:learnMoreButton attribute:4 multiplier:1.0 constant:0.0];
  v28[0] = v24;
  collectionView10 = [(SoundActionsPracticeViewController *)self collectionView];
  contentView2 = [(SoundActionsPracticeViewController *)self contentView];
  v15 = [NSLayoutConstraint constraintWithItem:collectionView10 attribute:4 relatedBy:0 toItem:contentView2 attribute:4 multiplier:1.0 constant:0.0];
  v28[1] = v15;
  collectionView11 = [(SoundActionsPracticeViewController *)self collectionView];
  contentView3 = [(SoundActionsPracticeViewController *)self contentView];
  v18 = [NSLayoutConstraint constraintWithItem:collectionView11 attribute:5 relatedBy:0 toItem:contentView3 attribute:5 multiplier:1.0 constant:0.0];
  v28[2] = v18;
  collectionView12 = [(SoundActionsPracticeViewController *)self collectionView];
  contentView4 = [(SoundActionsPracticeViewController *)self contentView];
  v21 = [NSLayoutConstraint constraintWithItem:collectionView12 attribute:6 relatedBy:0 toItem:contentView4 attribute:6 multiplier:1.0 constant:0.0];
  v28[3] = v21;
  v22 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v22];
}

- (int)_setupLocalHeader
{
  v3 = [[SoundActionsHeader alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  staticHeader = self->_staticHeader;
  self->_staticHeader = v3;

  [(SoundActionsHeader *)self->_staticHeader setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor systemBackgroundColor];
  [(SoundActionsHeader *)self->_staticHeader setBackgroundColor:v5];

  [(SoundActionsHeader *)self->_staticHeader setHidden:1];
  view = [(SoundActionsPracticeViewController *)self view];
  [view addSubview:self->_staticHeader];

  v7 = self->_staticHeader;
  scrollView = [(SoundActionsPracticeViewController *)self scrollView];
  v8 = [NSLayoutConstraint constraintWithItem:v7 attribute:3 relatedBy:0 toItem:scrollView attribute:3 multiplier:1.0 constant:0.0];
  v22[0] = v8;
  v9 = self->_staticHeader;
  contentView = [(SoundActionsPracticeViewController *)self contentView];
  v11 = [NSLayoutConstraint constraintWithItem:v9 attribute:5 relatedBy:0 toItem:contentView attribute:5 multiplier:1.0 constant:0.0];
  v22[1] = v11;
  v12 = self->_staticHeader;
  contentView2 = [(SoundActionsPracticeViewController *)self contentView];
  v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:6 relatedBy:0 toItem:contentView2 attribute:6 multiplier:1.0 constant:0.0];
  v22[2] = v14;
  v15 = self->_staticHeader;
  +[SoundActionsPracticeVisualizerView desiredHeight];
  v17 = [NSLayoutConstraint constraintWithItem:v15 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v16 + 40.0];
  v22[3] = v17;
  v18 = [NSArray arrayWithObjects:v22 count:4];
  [NSLayoutConstraint activateConstraints:v18];

  visualizerView = [(SoundActionsHeader *)self->_staticHeader visualizerView];
  LODWORD(self) = [visualizerView pipCount];

  return self;
}

- (void)_updateCollectionViewHeightConstraint
{
  if (self->_collectionViewHeightConstraint)
  {
    collectionViewHeightConstraint = self->_collectionViewHeightConstraint;
    v3 = [NSArray arrayWithObjects:&collectionViewHeightConstraint count:1];
    [NSLayoutConstraint deactivateConstraints:v3];
  }

  collectionView = [(SoundActionsPracticeViewController *)self collectionView];
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v6 = [NSLayoutConstraint constraintWithItem:collectionView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:?];
  v7 = self->_collectionViewHeightConstraint;
  self->_collectionViewHeightConstraint = v6;

  v9 = self->_collectionViewHeightConstraint;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [NSLayoutConstraint activateConstraints:v8];
}

- (double)_itemWidth
{
  if (self->_cachedColumnCount)
  {

    [(SoundActionsPracticeViewController *)self _itemWidthForColumnCount:?];
  }

  else
  {
    [(SoundActionsPracticeViewController *)self _itemWidthForColumnCount:3];
    v5 = v4;
    v6 = 2;
    while ([(SoundActionsPracticeViewController *)self _cellsWillTruncateAtWidth:v5])
    {
      [(SoundActionsPracticeViewController *)self _itemWidthForColumnCount:v6];
      v5 = v7;
      v6 = (v6 - 1);
      if (!v6)
      {
        v8 = 1;
        goto LABEL_10;
      }
    }

    v8 = v6 + 1;
LABEL_10:
    self->_cachedColumnCount = v8;
    return v5;
  }

  return result;
}

- (double)_itemWidthForColumnCount:(unsigned int)count
{
  if (count <= 1)
  {
    countCopy = 1;
  }

  else
  {
    countCopy = count;
  }

  contentView = [(SoundActionsPracticeViewController *)self contentView];
  [contentView bounds];
  v6 = (v5 + -80.0 + (countCopy - 1) * -10.0) / countCopy;
  v7 = floorf(v6);

  return v7;
}

- (double)_itemHeight
{
  result = self->_itemHeight;
  if (result == 0.0)
  {
    v16 = 16;
    selfCopy = self;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = self->_sounds;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      v7 = 0.0;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v22 = NSFontAttributeName;
          v10 = [SoundActionsPracticeCollectionViewCell font:v16];
          v23 = v10;
          v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

          name = [v9 name];
          [name sizeWithAttributes:v11];
          v14 = v13;

          if (v14 > v7)
          {
            v7 = v14;
          }
        }

        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 0.0;
    }

    +[SoundActionsPracticeCollectionViewCell verticalPadding];
    result = v7 + v15 * 2.0;
    *&selfCopy->OBWelcomeController_opaque[v16] = result;
  }

  return result;
}

- (BOOL)_cellsWillTruncateAtWidth:(double)width
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_sounds;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        name = [*(*(&v11 + 1) + 8 * i) name];
        v9 = [SoundActionsPracticeCollectionViewCell willTruncateForCellWidth:name withText:width];

        if (v9)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)_traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(SoundActionsPracticeViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v8 = preferredContentSizeCategory2;
  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {

LABEL_4:
    AXPerformBlockOnMainThread();
    goto LABEL_5;
  }

  traitCollection2 = [(SoundActionsPracticeViewController *)self traitCollection];
  legibilityWeight = [traitCollection2 legibilityWeight];
  legibilityWeight2 = [changeCopy legibilityWeight];

  if (legibilityWeight != legibilityWeight2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

id __64__SoundActionsPracticeViewController__traitCollectionDidChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 16) = 0;
  *(*(a1 + 32) + 40) = 0;
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadData];

  v3 = *(a1 + 32);

  return [v3 _updateCollectionViewHeightConstraint];
}

- (void)_voiceOverStatusDidChange:(id)change
{
  if (UIAccessibilityIsVoiceOverRunning())
  {

    [(SoundActionsPracticeViewController *)self _stopListening];
  }

  else
  {

    [(SoundActionsPracticeViewController *)self _startListening];
  }
}

- (void)_didFinishAnnouncement:(id)announcement
{
  userInfo = [announcement userInfo];
  v7 = [userInfo objectForKey:UIAccessibilityAnnouncementKeyStringValue];

  v5 = settingsLocString(@"SOUND_ACTION_PRACTICE_PAGE_ANNOUNCEMENT_ON", @"Accessibility");
  v6 = [v7 isEqualToString:v5];

  if (v6)
  {
    [(SoundActionsPracticeViewController *)self _startListening];
  }
}

- (BOOL)accessibilityPerformMagicTap
{
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  if (IsVoiceOverRunning)
  {
    v4 = +[SoundActionsPracticeAudioManager sharedInstance];
    isListening = [v4 isListening];

    if (isListening)
    {
      [(SoundActionsPracticeViewController *)self _stopListening];
      v6 = @"SOUND_ACTION_PRACTICE_PAGE_ANNOUNCEMENT_OFF";
    }

    else
    {
      v6 = @"SOUND_ACTION_PRACTICE_PAGE_ANNOUNCEMENT_ON";
    }

    v7 = UIAccessibilityAnnouncementNotification;
    v8 = settingsLocString(v6, @"Accessibility");
    UIAccessibilityPostNotification(v7, v8);
  }

  return IsVoiceOverRunning;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"SoundActionsCellReuseID" forIndexPath:pathCopy];
  [v7 setCornerRadius:8.0];
  sounds = self->_sounds;
  v9 = [pathCopy row];

  v10 = [(NSArray *)sounds objectAtIndexedSubscript:v9];
  name = [v10 name];
  [v7 setText:name];

  [v7 setAccessibilityTraits:{UIAccessibilityTraitPlaysSound | UIAccessibilityTraitButton | UIAccessibilityTraitStartsMediaSession | objc_msgSend(v7, "accessibilityTraits")}];
  v12 = settingsLocString(@"SOUND_ACTION_PRACTICE_PAGE_HINT", @"Accessibility");
  [v7 setAccessibilityHint:v12];

  return v7;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  sounds = self->_sounds;
  pathCopy = path;
  viewCopy = view;
  v9 = -[NSArray objectAtIndexedSubscript:](sounds, "objectAtIndexedSubscript:", [pathCopy row]);
  soundURL = [v9 soundURL];

  v10 = +[SoundActionsPracticeAudioManager sharedInstance];
  [v10 playURL:soundURL];

  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
  item = [pathCopy item];

  self->_lastRecognizedOrTappedSound = item;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v6 = [view dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"SoundActionsHEADERReuseID" forIndexPath:path];
  objc_storeStrong(&self->_scrollingHeader, v6);

  return v6;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [(SoundActionsPracticeViewController *)self _itemWidth:view];
  v7 = v6;
  [(SoundActionsPracticeViewController *)self _itemHeight];
  v9 = v8;
  v10 = v7;
  result.height = v9;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v5 = 0.0;
  v6 = 20.0;
  v7 = 0.0;
  v8 = 20.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  v5 = [(SoundActionsPracticeViewController *)self contentView:view];
  [v5 bounds];
  v7 = v6 + -40.0;
  +[SoundActionsPracticeVisualizerView desiredHeight];
  v9 = v8 + 40.0;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  scrollingHeader = self->_scrollingHeader;
  [(SoundActionsHeader *)scrollingHeader bounds];
  v6 = v5;
  v8 = v7;
  scrollView = [(SoundActionsPracticeViewController *)self scrollView];
  [(SoundActionsHeader *)scrollingHeader convertPoint:scrollView toView:v6, v8];
  v11 = v10;

  [scrollCopy contentOffset];
  if (v12 > 0.0)
  {
    [scrollCopy contentOffset];
    [(SoundActionsHeader *)self->_staticHeader setHidden:v13 <= v11];
  }
}

@end