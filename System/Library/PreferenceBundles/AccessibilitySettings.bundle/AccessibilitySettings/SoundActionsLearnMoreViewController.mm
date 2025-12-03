@interface SoundActionsLearnMoreViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (double)_minCardHeight;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_didActivatePageControl:(id)control;
- (void)_playCurrentSound;
- (void)_setupCardsView;
- (void)_setupPagingControl;
- (void)_setupPlayButton;
- (void)_setupVisualizer;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)scrollToCardIndex:(int)index animated:(BOOL)animated;
- (void)setSounds:(id)sounds;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SoundActionsLearnMoreViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SoundActionsLearnMoreViewController;
  [(SoundActionsLearnMoreViewController *)&v4 viewDidLoad];
  scrollView = [(SoundActionsLearnMoreViewController *)self scrollView];
  [scrollView _addScrollViewScrollObserver:self];

  [(SoundActionsLearnMoreViewController *)self _setupVisualizer];
  [(SoundActionsLearnMoreViewController *)self _setupPlayButton];
  [(SoundActionsLearnMoreViewController *)self _setupCardsView];
  [(SoundActionsLearnMoreViewController *)self _setupPagingControl];
}

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = SoundActionsLearnMoreViewController;
  [(SoundActionsLearnMoreViewController *)&v11 viewDidAppear:appear];
  objc_initWeak(&location, self);
  v4 = +[SoundActionsPracticeAudioManager sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __53__SoundActionsLearnMoreViewController_viewDidAppear___block_invoke;
  v8[3] = &unk_256718;
  objc_copyWeak(&v9, &location);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __53__SoundActionsLearnMoreViewController_viewDidAppear___block_invoke_2;
  v6[3] = &unk_258240;
  objc_copyWeak(&v7, &location);
  [v4 registerListener:self forAudioLevelUpdates:v8 forDetection:v6 withBucketCount:{-[SoundActionsPracticeVisualizerView pipCount](self->_visualizerView, "pipCount", _NSConcreteStackBlock, 3221225472, __53__SoundActionsLearnMoreViewController_viewDidAppear___block_invoke_2, &unk_258240, self)}];

  v5 = +[SoundActionsPracticeAudioManager sharedInstance];
  [v5 start];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__SoundActionsLearnMoreViewController_viewDidAppear___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] updateWithMagnitudes:v5];
  }
}

void __53__SoundActionsLearnMoreViewController_viewDidAppear___block_invoke_2(uint64_t a1, id a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained[3] currentPage];
  if (v4 < [WeakRetained[5] count])
  {
    v5 = [*(*(a1 + 32) + 40) objectAtIndexedSubscript:{objc_msgSend(*(*(a1 + 32) + 24), "currentPage")}];
    v6 = [v5 usage];

    if (v6 == a2)
    {
      v7 = WeakRetained[1];
      v8 = settingsLocString(@"SOUND_ACTION_LEARN_PAGE_GREAT", @"Accessibility");
      [v7 showCorrectWithString:v8];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = SoundActionsLearnMoreViewController;
  [(SoundActionsLearnMoreViewController *)&v6 viewWillDisappear:disappear];
  v4 = +[SoundActionsPracticeAudioManager sharedInstance];
  [v4 deregisterListener:self];

  v5 = +[SoundActionsPracticeAudioManager sharedInstance];
  [v5 stop];
}

- (void)viewDidLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = SoundActionsLearnMoreViewController;
  [(SoundActionsLearnMoreViewController *)&v21 viewDidLayoutSubviews];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_sounds;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        view = [(SoundActionsLearnMoreViewController *)self view];
        [view bounds];
        [SoundActionsPracticeCardCollectionViewCell desiredHeightForData:v9 givenWidth:v11];
        v13 = v12;

        if (v13 > v7)
        {
          v7 = v13;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  [(SoundActionsLearnMoreViewController *)self _minCardHeight];
  if (v7 < v14)
  {
    [(SoundActionsLearnMoreViewController *)self _minCardHeight];
    v7 = v15;
  }

  [(NSLayoutConstraint *)self->_cardHeightConstraint setConstant:v7, v17];
  collectionViewLayout = [(UICollectionView *)self->_cardsView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)setSounds:(id)sounds
{
  objc_storeStrong(&self->_sounds, sounds);
  soundsCopy = sounds;
  [(UIPageControl *)self->_pageControl setNumberOfPages:[(NSArray *)self->_sounds count]];
  [(UICollectionView *)self->_cardsView reloadData];
}

- (void)scrollToCardIndex:(int)index animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(NSArray *)self->_sounds count]> index)
  {
    cardsView = self->_cardsView;
    v8 = [NSIndexPath indexPathForItem:index inSection:0];
    [(UICollectionView *)cardsView scrollToItemAtIndexPath:v8 atScrollPosition:0 animated:animatedCopy];
  }
}

- (void)_setupVisualizer
{
  if (!self->_visualizerView)
  {
    v3 = objc_alloc_init(SoundActionsPracticeVisualizerView);
    visualizerView = self->_visualizerView;
    self->_visualizerView = v3;

    [(SoundActionsPracticeVisualizerView *)self->_visualizerView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(SoundActionsLearnMoreViewController *)self contentView];
    [contentView addSubview:self->_visualizerView];

    v6 = self->_visualizerView;
    contentView2 = [(SoundActionsLearnMoreViewController *)self contentView];
    v7 = [NSLayoutConstraint constraintWithItem:v6 attribute:3 relatedBy:0 toItem:contentView2 attribute:3 multiplier:1.0 constant:20.0];
    v19[0] = v7;
    v8 = self->_visualizerView;
    contentView3 = [(SoundActionsLearnMoreViewController *)self contentView];
    v10 = [NSLayoutConstraint constraintWithItem:v8 attribute:5 relatedBy:0 toItem:contentView3 attribute:5 multiplier:1.0 constant:20.0];
    v19[1] = v10;
    v11 = self->_visualizerView;
    contentView4 = [(SoundActionsLearnMoreViewController *)self contentView];
    v13 = [NSLayoutConstraint constraintWithItem:v11 attribute:6 relatedBy:0 toItem:contentView4 attribute:6 multiplier:1.0 constant:-20.0];
    v19[2] = v13;
    v14 = self->_visualizerView;
    +[SoundActionsPracticeVisualizerView desiredHeight];
    v16 = [NSLayoutConstraint constraintWithItem:v14 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v15];
    v19[3] = v16;
    v17 = [NSArray arrayWithObjects:v19 count:4];
    [NSLayoutConstraint activateConstraints:v17];
  }
}

- (void)_setupPlayButton
{
  buttonTray = [(SoundActionsLearnMoreViewController *)self buttonTray];
  [buttonTray removeAllButtons];

  v6 = +[OBBoldTrayButton boldButton];
  v4 = settingsLocString(@"SOUND_ACTION_LEARN_PAGE_PLAY", @"Accessibility");
  [v6 setTitle:v4 forState:0];

  [v6 addTarget:self action:"_playCurrentSound" forControlEvents:64];
  buttonTray2 = [(SoundActionsLearnMoreViewController *)self buttonTray];
  [buttonTray2 addButton:v6];
}

- (void)_setupCardsView
{
  if (!self->_cardsView)
  {
    v18 = objc_opt_new();
    [v18 setScrollDirection:1];
    v3 = [[UICollectionView alloc] initWithFrame:v18 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    cardsView = self->_cardsView;
    self->_cardsView = v3;

    [(UICollectionView *)self->_cardsView setDataSource:self];
    [(UICollectionView *)self->_cardsView setDelegate:self];
    [(UICollectionView *)self->_cardsView setPagingEnabled:1];
    [(UICollectionView *)self->_cardsView setScrollEnabled:1];
    [(UICollectionView *)self->_cardsView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)self->_cardsView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SAP_CARD_CELL_REUSE_ID"];
    [(UICollectionView *)self->_cardsView setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = self->_cardsView;
    v6 = +[UIColor clearColor];
    [(UICollectionView *)v5 setBackgroundColor:v6];

    contentView = [(SoundActionsLearnMoreViewController *)self contentView];
    [contentView addSubview:self->_cardsView];

    v8 = [NSLayoutConstraint constraintWithItem:self->_cardsView attribute:3 relatedBy:0 toItem:self->_visualizerView attribute:4 multiplier:1.0 constant:36.0];
    v19[0] = v8;
    v9 = self->_cardsView;
    view = [(SoundActionsLearnMoreViewController *)self view];
    v11 = [NSLayoutConstraint constraintWithItem:v9 attribute:5 relatedBy:0 toItem:view attribute:5 multiplier:1.0 constant:0.0];
    v19[1] = v11;
    v12 = self->_cardsView;
    view2 = [(SoundActionsLearnMoreViewController *)self view];
    v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:6 relatedBy:0 toItem:view2 attribute:6 multiplier:1.0 constant:0.0];
    v19[2] = v14;
    v15 = [NSArray arrayWithObjects:v19 count:3];
    [NSLayoutConstraint activateConstraints:v15];

    v16 = [NSLayoutConstraint constraintWithItem:self->_cardsView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:200.0];
    cardHeightConstraint = self->_cardHeightConstraint;
    self->_cardHeightConstraint = v16;

    [(NSLayoutConstraint *)self->_cardHeightConstraint setActive:1];
  }
}

- (void)_setupPagingControl
{
  if (!self->_pageControl)
  {
    v3 = objc_alloc_init(UIPageControl);
    pageControl = self->_pageControl;
    self->_pageControl = v3;

    [(UIPageControl *)self->_pageControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIPageControl *)self->_pageControl setNumberOfPages:[(NSArray *)self->_sounds count]];
    v5 = +[UIColor secondarySystemFillColor];
    [(UIPageControl *)self->_pageControl setPageIndicatorTintColor:v5];

    v6 = +[UIColor systemFillColor];
    [(UIPageControl *)self->_pageControl setCurrentPageIndicatorTintColor:v6];

    [(UIPageControl *)self->_pageControl setHidesForSinglePage:1];
    [(UIPageControl *)self->_pageControl addTarget:self action:"_didActivatePageControl:" forControlEvents:4096];
    contentView = [(SoundActionsLearnMoreViewController *)self contentView];
    [contentView addSubview:self->_pageControl];

    v8 = self->_pageControl;
    contentView2 = [(SoundActionsLearnMoreViewController *)self contentView];
    v10 = [NSLayoutConstraint constraintWithItem:v8 attribute:9 relatedBy:0 toItem:contentView2 attribute:9 multiplier:1.0 constant:0.0];
    v11 = [NSLayoutConstraint constraintWithItem:self->_pageControl attribute:3 relatedBy:0 toItem:self->_cardsView attribute:4 multiplier:1.0 constant:0.0, v10];
    v16[1] = v11;
    v12 = self->_pageControl;
    contentView3 = [(SoundActionsLearnMoreViewController *)self contentView];
    v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:4 relatedBy:0 toItem:contentView3 attribute:4 multiplier:1.0 constant:0.0];
    v16[2] = v14;
    v15 = [NSArray arrayWithObjects:v16 count:3];
    [NSLayoutConstraint activateConstraints:v15];
  }
}

- (void)_didActivatePageControl:(id)control
{
  currentPage = [control currentPage];
  cardsView = self->_cardsView;
  v6 = [NSIndexPath indexPathForItem:currentPage inSection:0];
  [(UICollectionView *)cardsView scrollToItemAtIndexPath:v6 atScrollPosition:0 animated:1];
}

- (void)_playCurrentSound
{
  currentPage = [(UIPageControl *)self->_pageControl currentPage];
  sounds = [(SoundActionsLearnMoreViewController *)self sounds];
  v5 = [sounds count];

  if (currentPage < v5)
  {
    sounds2 = [(SoundActionsLearnMoreViewController *)self sounds];
    v9 = [sounds2 objectAtIndexedSubscript:{-[UIPageControl currentPage](self->_pageControl, "currentPage")}];

    v7 = +[SoundActionsPracticeAudioManager sharedInstance];
    soundURL = [v9 soundURL];
    [v7 playURL:soundURL];
  }
}

- (double)_minCardHeight
{
  [(SoundActionsLearnMoreViewController *)self availableContentViewHeight];
  v4 = v3;
  [(SoundActionsPracticeVisualizerView *)self->_visualizerView bounds];
  v6 = v4 - v5 + -72.0 + -20.0;
  [(UIPageControl *)self->_pageControl bounds];
  v8 = (v6 - v7) * 0.9;
  return floorf(v8);
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"SAP_CARD_CELL_REUSE_ID" forIndexPath:pathCopy];
  sounds = self->_sounds;
  item = [pathCopy item];

  v10 = [(NSArray *)sounds objectAtIndexedSubscript:item];
  [v7 setSoundActionData:v10];

  return v7;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [view bounds];
  v7 = v6;
  [(NSLayoutConstraint *)self->_cardHeightConstraint constant];
  v9 = v8;
  v10 = v7;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v6 = [path row];
  pageControl = self->_pageControl;

  [(UIPageControl *)pageControl setCurrentPage:v6];
}

@end