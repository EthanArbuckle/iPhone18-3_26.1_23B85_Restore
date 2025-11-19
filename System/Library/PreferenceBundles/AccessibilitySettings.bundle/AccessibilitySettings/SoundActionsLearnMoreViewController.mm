@interface SoundActionsLearnMoreViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (double)_minCardHeight;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_didActivatePageControl:(id)a3;
- (void)_playCurrentSound;
- (void)_setupCardsView;
- (void)_setupPagingControl;
- (void)_setupPlayButton;
- (void)_setupVisualizer;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)scrollToCardIndex:(int)a3 animated:(BOOL)a4;
- (void)setSounds:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SoundActionsLearnMoreViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SoundActionsLearnMoreViewController;
  [(SoundActionsLearnMoreViewController *)&v4 viewDidLoad];
  v3 = [(SoundActionsLearnMoreViewController *)self scrollView];
  [v3 _addScrollViewScrollObserver:self];

  [(SoundActionsLearnMoreViewController *)self _setupVisualizer];
  [(SoundActionsLearnMoreViewController *)self _setupPlayButton];
  [(SoundActionsLearnMoreViewController *)self _setupCardsView];
  [(SoundActionsLearnMoreViewController *)self _setupPagingControl];
}

- (void)viewDidAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = SoundActionsLearnMoreViewController;
  [(SoundActionsLearnMoreViewController *)&v11 viewDidAppear:a3];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SoundActionsLearnMoreViewController;
  [(SoundActionsLearnMoreViewController *)&v6 viewWillDisappear:a3];
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
        v10 = [(SoundActionsLearnMoreViewController *)self view];
        [v10 bounds];
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
  v16 = [(UICollectionView *)self->_cardsView collectionViewLayout];
  [v16 invalidateLayout];
}

- (void)setSounds:(id)a3
{
  objc_storeStrong(&self->_sounds, a3);
  v5 = a3;
  [(UIPageControl *)self->_pageControl setNumberOfPages:[(NSArray *)self->_sounds count]];
  [(UICollectionView *)self->_cardsView reloadData];
}

- (void)scrollToCardIndex:(int)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(NSArray *)self->_sounds count]> a3)
  {
    cardsView = self->_cardsView;
    v8 = [NSIndexPath indexPathForItem:a3 inSection:0];
    [(UICollectionView *)cardsView scrollToItemAtIndexPath:v8 atScrollPosition:0 animated:v4];
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
    v5 = [(SoundActionsLearnMoreViewController *)self contentView];
    [v5 addSubview:self->_visualizerView];

    v6 = self->_visualizerView;
    v18 = [(SoundActionsLearnMoreViewController *)self contentView];
    v7 = [NSLayoutConstraint constraintWithItem:v6 attribute:3 relatedBy:0 toItem:v18 attribute:3 multiplier:1.0 constant:20.0];
    v19[0] = v7;
    v8 = self->_visualizerView;
    v9 = [(SoundActionsLearnMoreViewController *)self contentView];
    v10 = [NSLayoutConstraint constraintWithItem:v8 attribute:5 relatedBy:0 toItem:v9 attribute:5 multiplier:1.0 constant:20.0];
    v19[1] = v10;
    v11 = self->_visualizerView;
    v12 = [(SoundActionsLearnMoreViewController *)self contentView];
    v13 = [NSLayoutConstraint constraintWithItem:v11 attribute:6 relatedBy:0 toItem:v12 attribute:6 multiplier:1.0 constant:-20.0];
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
  v3 = [(SoundActionsLearnMoreViewController *)self buttonTray];
  [v3 removeAllButtons];

  v6 = +[OBBoldTrayButton boldButton];
  v4 = settingsLocString(@"SOUND_ACTION_LEARN_PAGE_PLAY", @"Accessibility");
  [v6 setTitle:v4 forState:0];

  [v6 addTarget:self action:"_playCurrentSound" forControlEvents:64];
  v5 = [(SoundActionsLearnMoreViewController *)self buttonTray];
  [v5 addButton:v6];
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

    v7 = [(SoundActionsLearnMoreViewController *)self contentView];
    [v7 addSubview:self->_cardsView];

    v8 = [NSLayoutConstraint constraintWithItem:self->_cardsView attribute:3 relatedBy:0 toItem:self->_visualizerView attribute:4 multiplier:1.0 constant:36.0];
    v19[0] = v8;
    v9 = self->_cardsView;
    v10 = [(SoundActionsLearnMoreViewController *)self view];
    v11 = [NSLayoutConstraint constraintWithItem:v9 attribute:5 relatedBy:0 toItem:v10 attribute:5 multiplier:1.0 constant:0.0];
    v19[1] = v11;
    v12 = self->_cardsView;
    v13 = [(SoundActionsLearnMoreViewController *)self view];
    v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:6 relatedBy:0 toItem:v13 attribute:6 multiplier:1.0 constant:0.0];
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
    v7 = [(SoundActionsLearnMoreViewController *)self contentView];
    [v7 addSubview:self->_pageControl];

    v8 = self->_pageControl;
    v9 = [(SoundActionsLearnMoreViewController *)self contentView];
    v10 = [NSLayoutConstraint constraintWithItem:v8 attribute:9 relatedBy:0 toItem:v9 attribute:9 multiplier:1.0 constant:0.0];
    v11 = [NSLayoutConstraint constraintWithItem:self->_pageControl attribute:3 relatedBy:0 toItem:self->_cardsView attribute:4 multiplier:1.0 constant:0.0, v10];
    v16[1] = v11;
    v12 = self->_pageControl;
    v13 = [(SoundActionsLearnMoreViewController *)self contentView];
    v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:4 relatedBy:0 toItem:v13 attribute:4 multiplier:1.0 constant:0.0];
    v16[2] = v14;
    v15 = [NSArray arrayWithObjects:v16 count:3];
    [NSLayoutConstraint activateConstraints:v15];
  }
}

- (void)_didActivatePageControl:(id)a3
{
  v4 = [a3 currentPage];
  cardsView = self->_cardsView;
  v6 = [NSIndexPath indexPathForItem:v4 inSection:0];
  [(UICollectionView *)cardsView scrollToItemAtIndexPath:v6 atScrollPosition:0 animated:1];
}

- (void)_playCurrentSound
{
  v3 = [(UIPageControl *)self->_pageControl currentPage];
  v4 = [(SoundActionsLearnMoreViewController *)self sounds];
  v5 = [v4 count];

  if (v3 < v5)
  {
    v6 = [(SoundActionsLearnMoreViewController *)self sounds];
    v9 = [v6 objectAtIndexedSubscript:{-[UIPageControl currentPage](self->_pageControl, "currentPage")}];

    v7 = +[SoundActionsPracticeAudioManager sharedInstance];
    v8 = [v9 soundURL];
    [v7 playURL:v8];
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"SAP_CARD_CELL_REUSE_ID" forIndexPath:v6];
  sounds = self->_sounds;
  v9 = [v6 item];

  v10 = [(NSArray *)sounds objectAtIndexedSubscript:v9];
  [v7 setSoundActionData:v10];

  return v7;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [a3 bounds];
  v7 = v6;
  [(NSLayoutConstraint *)self->_cardHeightConstraint constant];
  v9 = v8;
  v10 = v7;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = [a5 row];
  pageControl = self->_pageControl;

  [(UIPageControl *)pageControl setCurrentPage:v6];
}

@end