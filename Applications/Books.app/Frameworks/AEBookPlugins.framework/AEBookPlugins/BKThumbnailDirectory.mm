@interface BKThumbnailDirectory
+ (CGSize)defaultCellSize;
- (BKThumbnailDirectory)initWithNibName:(id)a3 bundle:(id)a4;
- (BOOL)cell:(id)a3 matchesPageNumber:(int64_t)a4;
- (CGRect)frameForThumbnailAtLocation:(id)a3;
- (CGSize)cellSize;
- (CGSize)imageSize;
- (Class)cellClass;
- (double)pNumColumnsForSize:(CGSize)a3;
- (id)gridView:(id)a3 cellForIndex:(int64_t)a4;
- (id)thumbnailForPageNumber:(int64_t)a3 size:(CGSize)a4;
- (void)_updateColors;
- (void)adjustGridMetrics;
- (void)adjustToNewSize:(CGSize)a3;
- (void)configureCell:(id)a3 atIndex:(unint64_t)a4;
- (void)dealloc;
- (void)didRotate;
- (void)gridView:(id)a3 didSelectItemAtIndex:(int64_t)a4;
- (void)loadView;
- (void)releaseViews;
- (void)reloadCellAtIndex:(unint64_t)a3;
- (void)scrollToLocation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setLayoutDirection:(int64_t)a3;
- (void)setTheme:(id)a3;
- (void)setThumbnail:(id)a3 forPage:(int64_t)a4;
- (void)updateVisibleArtwork;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKThumbnailDirectory

- (BKThumbnailDirectory)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = BKThumbnailDirectory;
  v4 = [(BKViewController *)&v8 initWithNibName:a3 bundle:a4];
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
  v3 = [(BKThumbnailDirectory *)self view];
  v4 = [IMGridView alloc];
  [v3 bounds];
  v5 = [v4 initWithFrame:?];
  gridView = self->_gridView;
  self->_gridView = v5;

  [(IMGridView *)self->_gridView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(IMGridView *)self->_gridView setDelegate:self];
  [(IMGridView *)self->_gridView setDataSource:self];
  [(IMGridView *)self->_gridView setLayoutDirection:[(BKViewController *)self layoutDirection]];
  [v3 addSubview:self->_gridView];
  v7 = [v3 safeAreaLayoutGuide];
  [(IMGridView *)self->_gridView leadingAnchor];
  v21 = v20 = v7;
  v19 = [v7 leadingAnchor];
  v18 = [v21 constraintEqualToAnchor:v19];
  v23[0] = v18;
  v17 = [(IMGridView *)self->_gridView trailingAnchor];
  v16 = [v7 trailingAnchor];
  v8 = [v17 constraintEqualToAnchor:v16];
  v23[1] = v8;
  v9 = [(IMGridView *)self->_gridView topAnchor];
  v10 = [v3 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v23[2] = v11;
  v12 = [(IMGridView *)self->_gridView bottomAnchor];
  v13 = [v3 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v23[3] = v14;
  v15 = [NSArray arrayWithObjects:v23 count:4];
  [NSLayoutConstraint activateConstraints:v15];

  [(BKThumbnailDirectory *)self _updateColors];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKThumbnailDirectory;
  [(BKThumbnailDirectory *)&v4 viewWillAppear:a3];
  [(BKThumbnailDirectory *)self reloadData];
  [(IMGridView *)self->_gridView flashScrollIndicators];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKThumbnailDirectory;
  [(BKContentViewController *)&v4 viewDidAppear:a3];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [v7 transitionDuration];
  v9 = v8;
  if (v8 > 0.0)
  {
    [(IMGridView *)self->_gridView prepareToRotateWithDestinationSize:width, height];
  }

  v12.receiver = self;
  v12.super_class = BKThumbnailDirectory;
  [(BKThumbnailDirectory *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
  [v7 animateAlongsideTransition:v11 completion:v10];
}

- (void)setLayoutDirection:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = BKThumbnailDirectory;
  [(BKViewController *)&v5 setLayoutDirection:?];
  [(IMGridView *)self->_gridView setLayoutDirection:a3];
}

- (double)pNumColumnsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  [a1 defaultCellAspectRatio];
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
  v3 = [(BKThumbnailDirectory *)self showSpreads];
  v4 = isPad();
  v5 = &BKThumbnailDirectoryCellSpreadWidth_iPad;
  if (!v3)
  {
    v5 = &BKThumbnailDirectoryCellWidth_iPad;
  }

  v6 = &BKThumbnailDirectoryCellSpreadWidth_iPhone;
  if (!v3)
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

  v11 = [(BKThumbnailDirectory *)self showSpreads];
  v12 = v8 * 0.5;
  v13 = v7 * 0.5;
  if (!v11)
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

- (CGRect)frameForThumbnailAtLocation:(id)a3
{
  v4 = [(BKThumbnailDirectory *)self indexForLocation:a3];
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
    v17 = [(BKThumbnailDirectory *)self view];
    [v17 convertRect:self->_gridView fromView:{v10, v12, v14, v16}];
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

- (void)scrollToLocation:(id)a3
{
  v4 = [(BKThumbnailDirectory *)self indexForLocation:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = [(BKThumbnailDirectory *)self gridView];
    [v6 scrollToCellAtIndex:v5 animated:0];
  }
}

- (BOOL)cell:(id)a3 matchesPageNumber:(int64_t)a4
{
  v6 = a3;
  if ([(BKThumbnailDirectory *)self showSpreads])
  {
    v7 = v6;
    v8 = [v7 spreadView];
    v9 = [v8 leftPageView];
    if ([v9 pageNumber] == a4)
    {
      v10 = 1;
    }

    else
    {
      v11 = [v7 spreadView];
      v12 = [v11 rightPageView];
      v10 = [v12 pageNumber] == a4;
    }
  }

  else
  {
    v7 = [v6 pageView];
    v10 = [v7 pageNumber] == a4;
  }

  return v10;
}

- (void)reloadCellAtIndex:(unint64_t)a3
{
  v5 = [(IMGridView *)self->_gridView cellForIndex:?];
  [(BKThumbnailDirectory *)self configureCell:v5 atIndex:a3];
}

- (void)adjustToNewSize:(CGSize)a3
{
  [(IMGridView *)self->_gridView prepareToRotateWithDestinationSize:a3.width, a3.height];
  [(BKThumbnailDirectory *)self animateRotationWithDuration:0.0];

  [(BKThumbnailDirectory *)self didRotate];
}

- (void)setThumbnail:(id)a3 forPage:(int64_t)a4
{
  if (a3)
  {
    v6 = [NSIndexSet alloc];
    v7 = [(IMGridView *)self->_gridView rangeOfVisibleCells];
    v12 = [v6 initWithIndexesInRange:{v7, v8}];
    v9 = [v12 firstIndex];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v9;
      while (1)
      {
        v11 = [(IMGridView *)self->_gridView cellForIndex:v10];
        if ([(BKThumbnailDirectory *)self cell:v11 matchesPageNumber:a4])
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

- (id)thumbnailForPageNumber:(int64_t)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = [(BKDirectoryContent *)self directoryDelegate];
  v9 = [v8 thumbnailDirectory:self thumbnailForPage:a3 size:self context:{width, height}];

  return v9;
}

- (void)updateVisibleArtwork
{
  v3 = [(BKDirectoryContent *)self directoryDelegate];
  [v3 thumbnailDirectory:self cancelPreviousRenderRequestsWithContext:self];

  v4 = [(IMGridView *)self->_gridView rangeOfVisibleCells];
  if (v4 < &v4[v5])
  {
    v6 = v4;
    v7 = v5;
    do
    {
      [(BKThumbnailDirectory *)self reloadCellAtIndex:v6++];
      --v7;
    }

    while (v7);
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  if (([v4 isDragging] & 1) == 0 && (objc_msgSend(v4, "isDecelerating") & 1) == 0)
  {
    [(BKThumbnailDirectory *)self updateVisibleArtwork];
  }
}

- (void)configureCell:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v43 = v6;
    [(BKThumbnailDirectory *)self imageSize];
    v8 = v7;
    v10 = v9;
    if ([(BKThumbnailDirectory *)self showSpreads])
    {
      v11 = v43;
      v12 = [(BKThumbnailDirectory *)self hidesSpine];
      v13 = [v11 spreadView];
      [v13 setHidesSpine:v12];

      v14 = [(BKThumbnailDirectory *)self leftPageNumberAtIndex:a4];
      v15 = [(BKThumbnailDirectory *)self rightPageNumberAtIndex:a4];
      v16 = [v11 spreadView];
      v17 = [v16 leftPageView];
      [v17 setPageNumber:v14];

      v18 = [v11 spreadView];
      v19 = [v18 rightPageView];
      [v19 setPageNumber:v15];

      v20 = [(BKDirectoryContent *)self pageTitleForPageNumber:v14];
      v21 = [v11 spreadView];
      v22 = [v21 leftPageView];
      [v22 setPageTitle:v20];

      v23 = [(BKDirectoryContent *)self pageTitleForPageNumber:v15];
      v24 = [v11 spreadView];
      v25 = [v24 rightPageView];
      [v25 setPageTitle:v23];

      v26 = [(BKThumbnailDirectory *)self thumbnailForPageNumber:v14 size:v8, v10];
      v27 = [v11 spreadView];
      v28 = [v27 leftPageView];
      [v28 setImage:v26];

      v29 = [(BKThumbnailDirectory *)self thumbnailForPageNumber:v15 size:v8, v10];
      v30 = [v11 spreadView];
      v31 = [v30 rightPageView];
      [v31 setImage:v29];

      v32 = [v11 spreadView];
      v33 = [v32 leftPageView];
      [v33 setShowsPageNumber:1];

      v34 = [v11 spreadView];
      v35 = [v34 rightPageView];
      [v35 setShowsPageNumber:1];

      v36 = [v11 spreadView];

      [v36 setNeedsLayout];
    }

    else
    {
      v37 = [(BKThumbnailDirectory *)self pageNumberForCellIndex:a4];
      v38 = [(BKThumbnailDirectory *)self thumbnailForPageNumber:v37 size:v8, v10];
      v39 = [v43 pageView];
      [v39 setImage:v38];

      v40 = [v43 pageView];
      [v40 setPageNumber:v37];

      v41 = [(BKDirectoryContent *)self pageTitleForPageNumber:v37];
      v42 = [v43 pageView];
      [v42 setPageTitle:v41];

      v36 = [v43 pageView];
      [v36 setShowsPageNumber:1];
    }

    v6 = v43;
  }
}

- (id)gridView:(id)a3 cellForIndex:(int64_t)a4
{
  v6 = [a3 dequeueReusableCell];
  if (!v6)
  {
    [(BKThumbnailDirectory *)self cellSize];
    v6 = [objc_alloc(-[BKThumbnailDirectory cellClass](self "cellClass"))];
  }

  [(BKThumbnailDirectory *)self configureCell:v6 atIndex:a4];

  return v6;
}

- (void)gridView:(id)a3 didSelectItemAtIndex:(int64_t)a4
{
  v5 = [(BKThumbnailDirectory *)self locationAtIndex:a4];
  [(BKDirectoryContent *)self didSelectLocation:v5];
}

- (void)_updateColors
{
  v3 = [(BKThumbnailDirectory *)self theme];
  v6 = [v3 backgroundColorForTraitEnvironment:self];

  v4 = v6;
  if (!v6)
  {
    v4 = +[UIColor bc_booksBackground];
  }

  v7 = v4;
  [(IMGridView *)self->_gridView setBackgroundColor:v4];
  v5 = [(BKThumbnailDirectory *)self viewIfLoaded];
  [v5 setBackgroundColor:v7];
}

- (void)setTheme:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKThumbnailDirectory;
  [(BKContentViewController *)&v4 setTheme:a3];
  [(BKThumbnailDirectory *)self _updateColors];
}

@end