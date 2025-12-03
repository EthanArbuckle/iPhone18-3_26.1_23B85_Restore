@interface BKThumbnailDirectory
+ (CGSize)defaultCellSize;
- (BKThumbnailDirectory)initWithNibName:(id)name bundle:(id)bundle;
- (BOOL)cell:(id)cell matchesPageNumber:(int64_t)number;
- (CGRect)frameForThumbnailAtLocation:(id)location;
- (CGSize)cellSize;
- (CGSize)imageSize;
- (Class)cellClass;
- (double)pNumColumnsForSize:(CGSize)size;
- (id)gridView:(id)view cellForIndex:(int64_t)index;
- (id)thumbnailForPageNumber:(int64_t)number size:(CGSize)size;
- (void)_updateColors;
- (void)adjustGridMetrics;
- (void)adjustToNewSize:(CGSize)size;
- (void)configureCell:(id)cell atIndex:(unint64_t)index;
- (void)dealloc;
- (void)didRotate;
- (void)gridView:(id)view didSelectItemAtIndex:(int64_t)index;
- (void)loadView;
- (void)releaseViews;
- (void)reloadCellAtIndex:(unint64_t)index;
- (void)scrollToLocation:(id)location;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setLayoutDirection:(int64_t)direction;
- (void)setTheme:(id)theme;
- (void)setThumbnail:(id)thumbnail forPage:(int64_t)page;
- (void)updateVisibleArtwork;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKThumbnailDirectory

- (BKThumbnailDirectory)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = BKThumbnailDirectory;
  v4 = [(BKViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    [objc_opt_class() defaultCellAspectRatio];
    [(BKThumbnailDirectory *)v4 setCellAspectRatio:?];
    v5 = +[UITraitCollection bc_allAPITraits];
    v6 = [(BKThumbnailDirectory *)v4 registerForTraitChanges:v5 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)dealloc
{
  [(BKThumbnailDirectory *)self releaseViews];
  v3.receiver = self;
  v3.super_class = BKThumbnailDirectory;
  [(BKContentViewController *)&v3 dealloc];
}

- (void)releaseViews
{
  v4.receiver = self;
  v4.super_class = BKThumbnailDirectory;
  [(BKContentViewController *)&v4 releaseViews];
  [(IMGridView *)self->_gridView setDelegate:0];
  [(IMGridView *)self->_gridView setDataSource:0];
  gridView = self->_gridView;
  self->_gridView = 0;
}

- (void)loadView
{
  v22.receiver = self;
  v22.super_class = BKThumbnailDirectory;
  [(BKThumbnailDirectory *)&v22 loadView];
  view = [(BKThumbnailDirectory *)self view];
  v4 = [IMGridView alloc];
  [view bounds];
  v5 = [v4 initWithFrame:?];
  gridView = self->_gridView;
  self->_gridView = v5;

  [(IMGridView *)self->_gridView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(IMGridView *)self->_gridView setDelegate:self];
  [(IMGridView *)self->_gridView setDataSource:self];
  [(IMGridView *)self->_gridView setLayoutDirection:[(BKViewController *)self layoutDirection]];
  [view addSubview:self->_gridView];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [(IMGridView *)self->_gridView leadingAnchor];
  v21 = v20 = safeAreaLayoutGuide;
  leadingAnchor = [safeAreaLayoutGuide leadingAnchor];
  v18 = [v21 constraintEqualToAnchor:leadingAnchor];
  v23[0] = v18;
  trailingAnchor = [(IMGridView *)self->_gridView trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[1] = v8;
  topAnchor = [(IMGridView *)self->_gridView topAnchor];
  topAnchor2 = [view topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[2] = v11;
  bottomAnchor = [(IMGridView *)self->_gridView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[3] = v14;
  v15 = [NSArray arrayWithObjects:v23 count:4];
  [NSLayoutConstraint activateConstraints:v15];

  [(BKThumbnailDirectory *)self _updateColors];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BKThumbnailDirectory;
  [(BKThumbnailDirectory *)&v4 viewWillAppear:appear];
  [(BKThumbnailDirectory *)self reloadData];
  [(IMGridView *)self->_gridView flashScrollIndicators];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BKThumbnailDirectory;
  [(BKContentViewController *)&v4 viewDidAppear:appear];
  [(IMGridView *)self->_gridView flashScrollIndicators];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BKThumbnailDirectory;
  [(BKThumbnailDirectory *)&v3 viewDidLayoutSubviews];
  [(BKThumbnailDirectory *)self adjustGridMetrics];
}

- (void)didRotate
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_75CA4;
  v2[3] = &unk_1E2BD0;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [coordinatorCopy transitionDuration];
  v9 = v8;
  if (v8 > 0.0)
  {
    [(IMGridView *)self->_gridView prepareToRotateWithDestinationSize:width, height];
  }

  v12.receiver = self;
  v12.super_class = BKThumbnailDirectory;
  [(BKThumbnailDirectory *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_75E28;
  v11[3] = &unk_1E48B0;
  v11[4] = self;
  *&v11[5] = v9;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_75E38;
  v10[3] = &unk_1E2A60;
  v10[4] = self;
  [coordinatorCopy animateAlongsideTransition:v11 completion:v10];
}

- (void)setLayoutDirection:(int64_t)direction
{
  v5.receiver = self;
  v5.super_class = BKThumbnailDirectory;
  [(BKViewController *)&v5 setLayoutDirection:?];
  [(IMGridView *)self->_gridView setLayoutDirection:direction];
}

- (double)pNumColumnsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(IMGridView *)self->_gridView bounds];
  x = v16.origin.x;
  y = v16.origin.y;
  v8 = v16.size.width;
  v9 = v16.size.height;
  v10 = CGRectGetWidth(v16);
  v11 = 2;
  if (![(BKThumbnailDirectory *)self showSpreads])
  {
    [(BKThumbnailDirectory *)self cellAspectRatio];
    if (v12 <= 1.0)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }
  }

  if (!isMegaPad())
  {
    goto LABEL_10;
  }

  if (v10 > 1024.0)
  {
    v13 = 1;
    goto LABEL_11;
  }

  if (v10 == 1024.0)
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = v8;
    v17.size.height = v9;
    v13 = CGRectGetHeight(v17) > 1024.0;
  }

  else
  {
LABEL_10:
    v13 = 0;
  }

LABEL_11:
  if (width / height < 1.0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return (v14 + v13);
}

- (void)adjustGridMetrics
{
  if ([(BKThumbnailDirectory *)self im_isCompactWidth])
  {
    v3 = 16.0;
  }

  else
  {
    v3 = 32.0;
  }

  [(IMGridView *)self->_gridView setGridInset:v3, v3, v3, v3];
  [(IMGridView *)self->_gridView setMinimumGridSpacing:v3, v3];
  [(IMGridView *)self->_gridView bounds];
  width = v14.size.width;
  height = v14.size.height;
  v6 = CGRectGetWidth(v14);
  [(IMGridView *)self->_gridView gridInset];
  v8 = v6 - v7;
  [(IMGridView *)self->_gridView gridInset];
  v10 = v8 - v9;
  [(BKThumbnailDirectory *)self pNumColumnsForSize:width, height];
  if (v10 > 0.0)
  {
    [(BKThumbnailDirectory *)self setCellWidth:floor((v10 - (v11 + -1.0) * v3) / v11)];
    [(BKThumbnailDirectory *)self cellSize];
    gridView = self->_gridView;

    [(IMGridView *)gridView setCellSize:?];
  }
}

+ (CGSize)defaultCellSize
{
  v3 = isPad();
  v4 = &BKThumbnailDirectoryCellWidth_iPad;
  if (!v3)
  {
    v4 = &BKThumbnailDirectoryCellWidth_iPhone;
  }

  v5 = *v4;
  [self defaultCellAspectRatio];
  *&v6 = v5 / v6;
  v7 = roundf(*&v6);
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (CGSize)cellSize
{
  [(BKThumbnailDirectory *)self cellWidth];
  v4 = v3;
  [(BKThumbnailDirectory *)self cellAspectRatio];
  v5 = v4;
  if (v6 > 0.0)
  {
    [(BKThumbnailDirectory *)self cellAspectRatio];
    v5 = v4 / v7;
  }

  if ([(BKThumbnailDirectory *)self showSpreads])
  {
    v8 = v5 * 0.5;
  }

  else
  {
    v8 = v5;
  }

  v9 = ceil(v4);
  v10 = ceil(v8);
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)imageSize
{
  showSpreads = [(BKThumbnailDirectory *)self showSpreads];
  v4 = isPad();
  v5 = &BKThumbnailDirectoryCellSpreadWidth_iPad;
  if (!showSpreads)
  {
    v5 = &BKThumbnailDirectoryCellWidth_iPad;
  }

  v6 = &BKThumbnailDirectoryCellSpreadWidth_iPhone;
  if (!showSpreads)
  {
    v6 = &BKThumbnailDirectoryCellWidth_iPhone;
  }

  if (!v4)
  {
    v5 = v6;
  }

  v7 = *v5;
  [(BKThumbnailDirectory *)self cellAspectRatio];
  v8 = v7;
  if (v9 > 0.0)
  {
    [(BKThumbnailDirectory *)self cellAspectRatio];
    v8 = v7 / v10;
  }

  showSpreads2 = [(BKThumbnailDirectory *)self showSpreads];
  v12 = v8 * 0.5;
  v13 = v7 * 0.5;
  if (!showSpreads2)
  {
    v13 = v7;
    v12 = v8;
  }

  v14 = ceil(v13);
  v15 = ceil(v12);
  result.height = v15;
  result.width = v14;
  return result;
}

- (Class)cellClass
{
  [(BKThumbnailDirectory *)self showSpreads];
  v2 = objc_opt_class();

  return v2;
}

- (CGRect)frameForThumbnailAtLocation:(id)location
{
  v4 = [(BKThumbnailDirectory *)self indexForLocation:location];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  else
  {
    [(IMGridView *)self->_gridView rectForCellAtIndex:v4];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    view = [(BKThumbnailDirectory *)self view];
    [view convertRect:self->_gridView fromView:{v10, v12, v14, v16}];
    x = v18;
    y = v19;
    width = v20;
    height = v21;
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)scrollToLocation:(id)location
{
  v4 = [(BKThumbnailDirectory *)self indexForLocation:location];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    gridView = [(BKThumbnailDirectory *)self gridView];
    [gridView scrollToCellAtIndex:v5 animated:0];
  }
}

- (BOOL)cell:(id)cell matchesPageNumber:(int64_t)number
{
  cellCopy = cell;
  if ([(BKThumbnailDirectory *)self showSpreads])
  {
    pageView = cellCopy;
    spreadView = [pageView spreadView];
    leftPageView = [spreadView leftPageView];
    if ([leftPageView pageNumber] == number)
    {
      v10 = 1;
    }

    else
    {
      spreadView2 = [pageView spreadView];
      rightPageView = [spreadView2 rightPageView];
      v10 = [rightPageView pageNumber] == number;
    }
  }

  else
  {
    pageView = [cellCopy pageView];
    v10 = [pageView pageNumber] == number;
  }

  return v10;
}

- (void)reloadCellAtIndex:(unint64_t)index
{
  v5 = [(IMGridView *)self->_gridView cellForIndex:?];
  [(BKThumbnailDirectory *)self configureCell:v5 atIndex:index];
}

- (void)adjustToNewSize:(CGSize)size
{
  [(IMGridView *)self->_gridView prepareToRotateWithDestinationSize:size.width, size.height];
  [(BKThumbnailDirectory *)self animateRotationWithDuration:0.0];

  [(BKThumbnailDirectory *)self didRotate];
}

- (void)setThumbnail:(id)thumbnail forPage:(int64_t)page
{
  if (thumbnail)
  {
    v6 = [NSIndexSet alloc];
    rangeOfVisibleCells = [(IMGridView *)self->_gridView rangeOfVisibleCells];
    v12 = [v6 initWithIndexesInRange:{rangeOfVisibleCells, v8}];
    firstIndex = [v12 firstIndex];
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = firstIndex;
      while (1)
      {
        v11 = [(IMGridView *)self->_gridView cellForIndex:v10];
        if ([(BKThumbnailDirectory *)self cell:v11 matchesPageNumber:page])
        {
          break;
        }

        v10 = [v12 indexGreaterThanIndex:v10];

        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_9;
        }
      }

      [(IMGridView *)self->_gridView reloadCellAtIndex:v10];
    }

LABEL_9:
  }
}

- (id)thumbnailForPageNumber:(int64_t)number size:(CGSize)size
{
  height = size.height;
  width = size.width;
  directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
  v9 = [directoryDelegate thumbnailDirectory:self thumbnailForPage:number size:self context:{width, height}];

  return v9;
}

- (void)updateVisibleArtwork
{
  directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
  [directoryDelegate thumbnailDirectory:self cancelPreviousRenderRequestsWithContext:self];

  rangeOfVisibleCells = [(IMGridView *)self->_gridView rangeOfVisibleCells];
  if (rangeOfVisibleCells < &rangeOfVisibleCells[v5])
  {
    v6 = rangeOfVisibleCells;
    v7 = v5;
    do
    {
      [(BKThumbnailDirectory *)self reloadCellAtIndex:v6++];
      --v7;
    }

    while (v7);
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (([scrollCopy isDragging] & 1) == 0 && (objc_msgSend(scrollCopy, "isDecelerating") & 1) == 0)
  {
    [(BKThumbnailDirectory *)self updateVisibleArtwork];
  }
}

- (void)configureCell:(id)cell atIndex:(unint64_t)index
{
  cellCopy = cell;
  if (cellCopy)
  {
    v43 = cellCopy;
    [(BKThumbnailDirectory *)self imageSize];
    v8 = v7;
    v10 = v9;
    if ([(BKThumbnailDirectory *)self showSpreads])
    {
      v11 = v43;
      hidesSpine = [(BKThumbnailDirectory *)self hidesSpine];
      spreadView = [v11 spreadView];
      [spreadView setHidesSpine:hidesSpine];

      v14 = [(BKThumbnailDirectory *)self leftPageNumberAtIndex:index];
      v15 = [(BKThumbnailDirectory *)self rightPageNumberAtIndex:index];
      spreadView2 = [v11 spreadView];
      leftPageView = [spreadView2 leftPageView];
      [leftPageView setPageNumber:v14];

      spreadView3 = [v11 spreadView];
      rightPageView = [spreadView3 rightPageView];
      [rightPageView setPageNumber:v15];

      v20 = [(BKDirectoryContent *)self pageTitleForPageNumber:v14];
      spreadView4 = [v11 spreadView];
      leftPageView2 = [spreadView4 leftPageView];
      [leftPageView2 setPageTitle:v20];

      v23 = [(BKDirectoryContent *)self pageTitleForPageNumber:v15];
      spreadView5 = [v11 spreadView];
      rightPageView2 = [spreadView5 rightPageView];
      [rightPageView2 setPageTitle:v23];

      v26 = [(BKThumbnailDirectory *)self thumbnailForPageNumber:v14 size:v8, v10];
      spreadView6 = [v11 spreadView];
      leftPageView3 = [spreadView6 leftPageView];
      [leftPageView3 setImage:v26];

      v29 = [(BKThumbnailDirectory *)self thumbnailForPageNumber:v15 size:v8, v10];
      spreadView7 = [v11 spreadView];
      rightPageView3 = [spreadView7 rightPageView];
      [rightPageView3 setImage:v29];

      spreadView8 = [v11 spreadView];
      leftPageView4 = [spreadView8 leftPageView];
      [leftPageView4 setShowsPageNumber:1];

      spreadView9 = [v11 spreadView];
      rightPageView4 = [spreadView9 rightPageView];
      [rightPageView4 setShowsPageNumber:1];

      spreadView10 = [v11 spreadView];

      [spreadView10 setNeedsLayout];
    }

    else
    {
      v37 = [(BKThumbnailDirectory *)self pageNumberForCellIndex:index];
      v38 = [(BKThumbnailDirectory *)self thumbnailForPageNumber:v37 size:v8, v10];
      pageView = [v43 pageView];
      [pageView setImage:v38];

      pageView2 = [v43 pageView];
      [pageView2 setPageNumber:v37];

      v41 = [(BKDirectoryContent *)self pageTitleForPageNumber:v37];
      pageView3 = [v43 pageView];
      [pageView3 setPageTitle:v41];

      spreadView10 = [v43 pageView];
      [spreadView10 setShowsPageNumber:1];
    }

    cellCopy = v43;
  }
}

- (id)gridView:(id)view cellForIndex:(int64_t)index
{
  dequeueReusableCell = [view dequeueReusableCell];
  if (!dequeueReusableCell)
  {
    [(BKThumbnailDirectory *)self cellSize];
    dequeueReusableCell = [objc_alloc(-[BKThumbnailDirectory cellClass](self "cellClass"))];
  }

  [(BKThumbnailDirectory *)self configureCell:dequeueReusableCell atIndex:index];

  return dequeueReusableCell;
}

- (void)gridView:(id)view didSelectItemAtIndex:(int64_t)index
{
  v5 = [(BKThumbnailDirectory *)self locationAtIndex:index];
  [(BKDirectoryContent *)self didSelectLocation:v5];
}

- (void)_updateColors
{
  theme = [(BKThumbnailDirectory *)self theme];
  v6 = [theme backgroundColorForTraitEnvironment:self];

  v4 = v6;
  if (!v6)
  {
    v4 = +[UIColor bc_booksBackground];
  }

  v7 = v4;
  [(IMGridView *)self->_gridView setBackgroundColor:v4];
  viewIfLoaded = [(BKThumbnailDirectory *)self viewIfLoaded];
  [viewIfLoaded setBackgroundColor:v7];
}

- (void)setTheme:(id)theme
{
  v4.receiver = self;
  v4.super_class = BKThumbnailDirectory;
  [(BKContentViewController *)&v4 setTheme:theme];
  [(BKThumbnailDirectory *)self _updateColors];
}

@end