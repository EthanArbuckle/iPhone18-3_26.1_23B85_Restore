@interface SoundActionsPracticeViewController
- (BOOL)_cellsWillTruncateAtWidth:(double)a3;
- (BOOL)accessibilityPerformMagicTap;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)_itemHeight;
- (double)_itemWidth;
- (double)_itemWidthForColumnCount:(unsigned int)a3;
- (id)_indexPathForUsage:(int64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int)_setupLocalHeader;
- (void)_didFinishAnnouncement:(id)a3;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)_pauseVisualizer:(BOOL)a3;
- (void)_setupCollectionView;
- (void)_setupLearnMoreButton;
- (void)_setupSounds;
- (void)_startListening;
- (void)_stopListening;
- (void)_traitCollectionDidChange:(id)a3;
- (void)_updateCollectionViewHeightConstraint;
- (void)_voiceOverStatusDidChange:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
  v3 = [(SoundActionsPracticeViewController *)self scrollView];
  [v3 _addScrollViewScrollObserver:self];

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

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SoundActionsPracticeViewController;
  [(SoundActionsPracticeViewController *)&v3 viewWillAppear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SoundActionsPracticeViewController;
  [(SoundActionsPracticeViewController *)&v4 viewDidAppear:a3];
  [(SoundActionsPracticeViewController *)self _startListening];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(SoundActionsPracticeViewController *)self _stopListening];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SoundActionsPracticeViewController;
  [(SoundActionsPracticeViewController *)&v4 viewWillDisappear:a3];
  [(SoundActionsPracticeViewController *)self _stopListening];
}

- (void)_stopListening
{
  v3 = +[SoundActionsPracticeAudioManager sharedInstance];
  [v3 deregisterListener:self];

  v4 = +[SoundActionsPracticeAudioManager sharedInstance];
  [v4 stop];

  v5 = [(SoundActionsHeader *)self->_scrollingHeader visualizerView];
  [v5 setStyleDisabled:1];

  v6 = [(SoundActionsHeader *)self->_staticHeader visualizerView];
  [v6 setStyleDisabled:1];
}

- (void)_startListening
{
  v3 = [(SoundActionsHeader *)self->_scrollingHeader visualizerView];
  [v3 setStyleDisabled:0];

  v4 = [(SoundActionsHeader *)self->_staticHeader visualizerView];
  [v4 setStyleDisabled:0];

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
  v6 = [(SoundActionsHeader *)self->_staticHeader visualizerView];
  [v5 registerListener:self forAudioLevelUpdates:v10 forDetection:v8 withBucketCount:{objc_msgSend(v6, "pipCount")}];

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

- (void)_pauseVisualizer:(BOOL)a3
{
  v3 = a3;
  v5 = [(SoundActionsHeader *)self->_staticHeader visualizerView];
  [v5 setStyleDisabled:v3];

  v6 = [(SoundActionsHeader *)self->_scrollingHeader visualizerView];
  [v6 setStyleDisabled:v3];
}

- (id)_indexPathForUsage:(int64_t)a3
{
  if ([(NSArray *)self->_sounds count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSArray *)self->_sounds objectAtIndexedSubscript:v5];
      if ([v6 usage] == a3)
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
  v3 = [(SoundActionsPracticeViewController *)self assetURL];

  sounds = self->_sounds;
  if (v3)
  {
    if (!sounds)
    {
      v5 = +[SoundActionsPracticeUtilities sharedInstance];
      v6 = [(SoundActionsPracticeViewController *)self assetURL];
      v7 = [v5 allSoundsForAssetURL:v6];
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
  v3 = [(SoundActionsPracticeViewController *)self learnMoreButton];

  if (v3)
  {
    v4 = [(SoundActionsPracticeViewController *)self learnMoreButton];
    [v4 removeFromSuperview];
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

  v8 = [(SoundActionsPracticeViewController *)self learnMoreButton];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(SoundActionsPracticeViewController *)self contentView];
  v10 = [(SoundActionsPracticeViewController *)self learnMoreButton];
  [v9 addSubview:v10];

  v20 = [(SoundActionsPracticeViewController *)self learnMoreButton];
  v11 = [(SoundActionsPracticeViewController *)self contentView];
  v12 = [NSLayoutConstraint constraintWithItem:v20 attribute:3 relatedBy:0 toItem:v11 attribute:3 multiplier:1.0 constant:0.0];
  v25[0] = v12;
  v13 = [(SoundActionsPracticeViewController *)self learnMoreButton];
  v14 = [(SoundActionsPracticeViewController *)self contentView];
  v15 = [NSLayoutConstraint constraintWithItem:v13 attribute:5 relatedBy:0 toItem:v14 attribute:5 multiplier:1.0 constant:20.0];
  v25[1] = v15;
  v16 = [(SoundActionsPracticeViewController *)self learnMoreButton];
  v17 = [(SoundActionsPracticeViewController *)self contentView];
  v18 = [NSLayoutConstraint constraintWithItem:v16 attribute:6 relatedBy:0 toItem:v17 attribute:6 multiplier:1.0 constant:-20.0];
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

  v4 = [(SoundActionsPracticeViewController *)self collectionView];
  [v4 setDataSource:self];

  v5 = [(SoundActionsPracticeViewController *)self collectionView];
  [v5 setDelegate:self];

  v6 = [(SoundActionsPracticeViewController *)self collectionView];
  [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SoundActionsCellReuseID"];

  v7 = [(SoundActionsPracticeViewController *)self collectionView];
  [v7 registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"SoundActionsHEADERReuseID"];

  v8 = [(SoundActionsPracticeViewController *)self collectionView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(SoundActionsPracticeViewController *)self collectionView];
  v10 = +[UIColor clearColor];
  [v9 setBackgroundColor:v10];

  v11 = [(SoundActionsPracticeViewController *)self collectionView];
  [v11 setScrollEnabled:0];

  v12 = [(SoundActionsPracticeViewController *)self contentView];
  v13 = [(SoundActionsPracticeViewController *)self collectionView];
  [v12 addSubview:v13];

  v26 = [(SoundActionsPracticeViewController *)self collectionView];
  v25 = [(SoundActionsPracticeViewController *)self learnMoreButton];
  v24 = [NSLayoutConstraint constraintWithItem:v26 attribute:3 relatedBy:0 toItem:v25 attribute:4 multiplier:1.0 constant:0.0];
  v28[0] = v24;
  v23 = [(SoundActionsPracticeViewController *)self collectionView];
  v14 = [(SoundActionsPracticeViewController *)self contentView];
  v15 = [NSLayoutConstraint constraintWithItem:v23 attribute:4 relatedBy:0 toItem:v14 attribute:4 multiplier:1.0 constant:0.0];
  v28[1] = v15;
  v16 = [(SoundActionsPracticeViewController *)self collectionView];
  v17 = [(SoundActionsPracticeViewController *)self contentView];
  v18 = [NSLayoutConstraint constraintWithItem:v16 attribute:5 relatedBy:0 toItem:v17 attribute:5 multiplier:1.0 constant:0.0];
  v28[2] = v18;
  v19 = [(SoundActionsPracticeViewController *)self collectionView];
  v20 = [(SoundActionsPracticeViewController *)self contentView];
  v21 = [NSLayoutConstraint constraintWithItem:v19 attribute:6 relatedBy:0 toItem:v20 attribute:6 multiplier:1.0 constant:0.0];
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
  v6 = [(SoundActionsPracticeViewController *)self view];
  [v6 addSubview:self->_staticHeader];

  v7 = self->_staticHeader;
  v21 = [(SoundActionsPracticeViewController *)self scrollView];
  v8 = [NSLayoutConstraint constraintWithItem:v7 attribute:3 relatedBy:0 toItem:v21 attribute:3 multiplier:1.0 constant:0.0];
  v22[0] = v8;
  v9 = self->_staticHeader;
  v10 = [(SoundActionsPracticeViewController *)self contentView];
  v11 = [NSLayoutConstraint constraintWithItem:v9 attribute:5 relatedBy:0 toItem:v10 attribute:5 multiplier:1.0 constant:0.0];
  v22[1] = v11;
  v12 = self->_staticHeader;
  v13 = [(SoundActionsPracticeViewController *)self contentView];
  v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:6 relatedBy:0 toItem:v13 attribute:6 multiplier:1.0 constant:0.0];
  v22[2] = v14;
  v15 = self->_staticHeader;
  +[SoundActionsPracticeVisualizerView desiredHeight];
  v17 = [NSLayoutConstraint constraintWithItem:v15 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v16 + 40.0];
  v22[3] = v17;
  v18 = [NSArray arrayWithObjects:v22 count:4];
  [NSLayoutConstraint activateConstraints:v18];

  v19 = [(SoundActionsHeader *)self->_staticHeader visualizerView];
  LODWORD(self) = [v19 pipCount];

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

  v4 = [(SoundActionsPracticeViewController *)self collectionView];
  v5 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [v5 collectionViewContentSize];
  v6 = [NSLayoutConstraint constraintWithItem:v4 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:?];
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

- (double)_itemWidthForColumnCount:(unsigned int)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  v4 = [(SoundActionsPracticeViewController *)self contentView];
  [v4 bounds];
  v6 = (v5 + -80.0 + (v3 - 1) * -10.0) / v3;
  v7 = floorf(v6);

  return v7;
}

- (double)_itemHeight
{
  result = self->_itemHeight;
  if (result == 0.0)
  {
    v16 = 16;
    v17 = self;
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

          v12 = [v9 name];
          [v12 sizeWithAttributes:v11];
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
    *&v17->OBWelcomeController_opaque[v16] = result;
  }

  return result;
}

- (BOOL)_cellsWillTruncateAtWidth:(double)a3
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

        v8 = [*(*(&v11 + 1) + 8 * i) name];
        v9 = [SoundActionsPracticeCollectionViewCell willTruncateForCellWidth:v8 withText:a3];

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

- (void)_traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SoundActionsPracticeViewController *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];
  v8 = v7;
  if (v6 != v7)
  {

LABEL_4:
    AXPerformBlockOnMainThread();
    goto LABEL_5;
  }

  v9 = [(SoundActionsPracticeViewController *)self traitCollection];
  v10 = [v9 legibilityWeight];
  v11 = [v4 legibilityWeight];

  if (v10 != v11)
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

- (void)_voiceOverStatusDidChange:(id)a3
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

- (void)_didFinishAnnouncement:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKey:UIAccessibilityAnnouncementKeyStringValue];

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
    v5 = [v4 isListening];

    if (v5)
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"SoundActionsCellReuseID" forIndexPath:v6];
  [v7 setCornerRadius:8.0];
  sounds = self->_sounds;
  v9 = [v6 row];

  v10 = [(NSArray *)sounds objectAtIndexedSubscript:v9];
  v11 = [v10 name];
  [v7 setText:v11];

  [v7 setAccessibilityTraits:{UIAccessibilityTraitPlaysSound | UIAccessibilityTraitButton | UIAccessibilityTraitStartsMediaSession | objc_msgSend(v7, "accessibilityTraits")}];
  v12 = settingsLocString(@"SOUND_ACTION_PRACTICE_PAGE_HINT", @"Accessibility");
  [v7 setAccessibilityHint:v12];

  return v7;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  sounds = self->_sounds;
  v7 = a4;
  v8 = a3;
  v9 = -[NSArray objectAtIndexedSubscript:](sounds, "objectAtIndexedSubscript:", [v7 row]);
  v12 = [v9 soundURL];

  v10 = +[SoundActionsPracticeAudioManager sharedInstance];
  [v10 playURL:v12];

  [v8 deselectItemAtIndexPath:v7 animated:1];
  v11 = [v7 item];

  self->_lastRecognizedOrTappedSound = v11;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v6 = [a3 dequeueReusableSupplementaryViewOfKind:a4 withReuseIdentifier:@"SoundActionsHEADERReuseID" forIndexPath:a5];
  objc_storeStrong(&self->_scrollingHeader, v6);

  return v6;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [(SoundActionsPracticeViewController *)self _itemWidth:a3];
  v7 = v6;
  [(SoundActionsPracticeViewController *)self _itemHeight];
  v9 = v8;
  v10 = v7;
  result.height = v9;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v5 = [(SoundActionsPracticeViewController *)self contentView:a3];
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

- (void)_observeScrollViewDidScroll:(id)a3
{
  v14 = a3;
  scrollingHeader = self->_scrollingHeader;
  [(SoundActionsHeader *)scrollingHeader bounds];
  v6 = v5;
  v8 = v7;
  v9 = [(SoundActionsPracticeViewController *)self scrollView];
  [(SoundActionsHeader *)scrollingHeader convertPoint:v9 toView:v6, v8];
  v11 = v10;

  [v14 contentOffset];
  if (v12 > 0.0)
  {
    [v14 contentOffset];
    [(SoundActionsHeader *)self->_staticHeader setHidden:v13 <= v11];
  }
}

@end