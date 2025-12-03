@interface BSUIScreenshotViewController
+ (void)createAsync:(id)async :(int64_t)a4 :(id)a5;
- (BOOL)_isRegularPad;
- (BSUIScreenshotViewController)initWithScreenshots:(id)screenshots andSelectedIndex:(int64_t)index;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index;
- (id)cellBorderColor;
- (id)cellPlaceholderColor;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_setupSubviews;
- (void)_swipeGestureRecognizer:(id)recognizer;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateColors;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)screenshotLoader:(id)loader failedToLoadImageforScreenshotAtIndex:(unint64_t)index withError:(id)error;
- (void)screenshotLoader:(id)loader loadedImage:(id)image forScreenshotAtIndex:(unint64_t)index;
- (void)screenshotLoader:(id)loader willLoadImageAtIndex:(unint64_t)index fromURL:(id)l;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)setNeedsColorUpdate;
- (void)setSelectedIndex:(int64_t)index;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BSUIScreenshotViewController

- (BSUIScreenshotViewController)initWithScreenshots:(id)screenshots andSelectedIndex:(int64_t)index
{
  screenshotsCopy = screenshots;
  v27.receiver = self;
  v27.super_class = BSUIScreenshotViewController;
  v7 = [(BSUIScreenshotViewController *)&v27 init];
  if (v7)
  {
    v8 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = screenshotsCopy;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          v15 = [BSUIScreenshot alloc];
          v16 = [(BSUIScreenshot *)v15 initWithDictionary:v14, v23];
          [v8 addObject:v16];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v11);
    }

    objc_storeStrong(&v7->_screenshots, v8);
    v7->_selectedIndex = index;
    v7->_initialSelectedIndex = index;
    v17 = [[BSUIScreenshotLoader alloc] initWithScreenshots:v8];
    screenshotLoader = v7->_screenshotLoader;
    v7->_screenshotLoader = v17;

    [(BSUIScreenshotLoader *)v7->_screenshotLoader setDelegate:v7];
    navigationItem = [(BSUIScreenshotViewController *)v7 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    v20 = +[UITraitCollection bc_allAPITraits];
    v21 = [(BSUIScreenshotViewController *)v7 registerForTraitChanges:v20 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v7;
}

+ (void)createAsync:(id)async :(int64_t)a4 :(id)a5
{
  asyncCopy = async;
  v9 = a5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_430C;
  v15[3] = &unk_386C30;
  selfCopy = self;
  v10 = asyncCopy;
  v16 = v10;
  v19 = a4;
  v11 = v9;
  v17 = v11;
  v12 = objc_retainBlock(v15);
  if (v12)
  {
    if (+[NSThread isMainThread])
    {
      (v12[2])(v12);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_43E0;
      block[3] = &unk_386C58;
      v14 = v12;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = BSUIScreenshotViewController;
  [(BSUIScreenshotViewController *)&v17 viewDidLoad];
  [(BSUIScreenshotViewController *)self _setupSubviews];
  v3 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"_swipeGestureRecognizer:"];
  [v3 setDirection:8];
  view = [(BSUIScreenshotViewController *)self view];
  [view addGestureRecognizer:v3];

  [(BSUIScreenshotLoader *)self->_screenshotLoader startLoading];
  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_dismiss:"];
  navigationItem = [(BSUIScreenshotViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  backgroundColor = [(BSUIScreenshotViewController *)self backgroundColor];
  collectionView = [(BSUIScreenshotViewController *)self collectionView];
  [collectionView setBackgroundColor:backgroundColor];

  collectionView2 = [(BSUIScreenshotViewController *)self collectionView];
  [collectionView2 setAlwaysBounceHorizontal:1];

  collectionView3 = [(BSUIScreenshotViewController *)self collectionView];
  [collectionView3 setShowsHorizontalScrollIndicator:0];

  collectionView4 = [(BSUIScreenshotViewController *)self collectionView];
  [collectionView4 setDecelerationRate:UIScrollViewDecelerationRateFast];

  collectionView5 = [(BSUIScreenshotViewController *)self collectionView];
  [collectionView5 setRemembersLastFocusedIndexPath:1];

  collectionView6 = [(BSUIScreenshotViewController *)self collectionView];
  [collectionView6 setContentInsetAdjustmentBehavior:2];

  collectionView7 = [(BSUIScreenshotViewController *)self collectionView];
  topEdgeEffect = [collectionView7 topEdgeEffect];
  [topEdgeEffect setHidden:1];

  collectionView8 = [(BSUIScreenshotViewController *)self collectionView];
  [collectionView8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CellIdentifier"];

  [(BSUIScreenshotViewController *)self _updateColors];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = BSUIScreenshotViewController;
  [(BSUIScreenshotViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = BSUIScreenshotViewController;
  [(BSUIScreenshotViewController *)&v11 viewDidLayoutSubviews];
  if ([(BSUIScreenshotViewController *)self initialSelectedIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(BSUIScreenshotViewController *)self initialSelectedIndex]>= 1)
    {
      initialSelectedIndex = [(BSUIScreenshotViewController *)self initialSelectedIndex];
      screenshots = [(BSUIScreenshotViewController *)self screenshots];
      v5 = [screenshots count];

      if (initialSelectedIndex < v5)
      {
        objc_opt_class();
        collectionView = [(BSUIScreenshotViewController *)self collectionView];
        superview = [collectionView superview];
        v8 = BUDynamicCast();

        [v8 layoutIfNeeded];
        collectionView2 = [(BSUIScreenshotViewController *)self collectionView];
        v10 = [NSIndexPath indexPathForRow:[(BSUIScreenshotViewController *)self initialSelectedIndex] inSection:0];
        [collectionView2 scrollToItemAtIndexPath:v10 atScrollPosition:16 animated:0];
      }
    }

    [(BSUIScreenshotViewController *)self setInitialSelectedIndex:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  bc_userInterfaceStyleDark = [collection bc_userInterfaceStyleDark];
  traitCollection = [(BSUIScreenshotViewController *)self traitCollection];
  bc_userInterfaceStyleDark2 = [traitCollection bc_userInterfaceStyleDark];

  if (bc_userInterfaceStyleDark != bc_userInterfaceStyleDark2)
  {
    [(BSUIScreenshotViewController *)self _updateColors];
  }

  collectionView = [(BSUIScreenshotViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  collectionView2 = [(BSUIScreenshotViewController *)self collectionView];
  [collectionView2 setNeedsLayout];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = BSUIScreenshotViewController;
  coordinatorCopy = coordinator;
  [(BSUIScreenshotViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  collectionView = [(BSUIScreenshotViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  collectionView2 = [(BSUIScreenshotViewController *)self collectionView];
  [collectionView2 setNeedsLayout];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_496C;
  v11[3] = &unk_386C80;
  v11[4] = self;
  [coordinatorCopy animateAlongsideTransition:v11 completion:0];
}

- (void)setNeedsColorUpdate
{
  backgroundColor = [(BSUIScreenshotViewController *)self backgroundColor];
  collectionView = [(BSUIScreenshotViewController *)self collectionView];
  [collectionView setBackgroundColor:backgroundColor];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  collectionView2 = [(BSUIScreenshotViewController *)self collectionView];
  visibleCells = [collectionView2 visibleCells];

  v7 = [visibleCells countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(visibleCells);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        cellPlaceholderColor = [(BSUIScreenshotViewController *)self cellPlaceholderColor];
        imageView = [v11 imageView];
        [imageView setBackgroundColor:cellPlaceholderColor];

        cellBorderColor = [(BSUIScreenshotViewController *)self cellBorderColor];
        cGColor = [cellBorderColor CGColor];
        imageView2 = [v11 imageView];
        layer = [imageView2 layer];
        [layer setBorderColor:cGColor];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [visibleCells countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (id)cellPlaceholderColor
{
  v2 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0980392157 alpha:0.22];
  v3 = [UIColor colorWithRed:0.976470588 green:0.976470588 blue:0.988235294 alpha:0.16];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

- (id)cellBorderColor
{
  v2 = [UIColor colorWithWhite:0.0 alpha:0.08];
  v3 = [UIColor colorWithWhite:0.0 alpha:0.92];
  v4 = [UIColor bc_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

- (void)setSelectedIndex:(int64_t)index
{
  if (self->_selectedIndex != index)
  {
    self->_selectedIndex = index;
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(BSUIScreenshotViewController *)self screenshots:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  objc_opt_class();
  v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"CellIdentifier" forIndexPath:pathCopy];

  v9 = BUDynamicCast();

  screenshots = [(BSUIScreenshotViewController *)self screenshots];
  v11 = [pathCopy row];

  v12 = [screenshots objectAtIndexedSubscript:v11];

  screenshotLoader = [(BSUIScreenshotViewController *)self screenshotLoader];
  v14 = [screenshotLoader imageForScreenshot:v12];

  [v9 configureWithScreenshot:v12 image:v14];
  cellPlaceholderColor = [(BSUIScreenshotViewController *)self cellPlaceholderColor];
  imageView = [v9 imageView];
  [imageView setBackgroundColor:cellPlaceholderColor];

  cellBorderColor = [(BSUIScreenshotViewController *)self cellBorderColor];
  cGColor = [cellBorderColor CGColor];
  imageView2 = [v9 imageView];
  layer = [imageView2 layer];
  [layer setBorderColor:cGColor];

  return v9;
}

- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index
{
  [BSUIScreenshotCell minimumLineSpacingWithRegularPad:[(BSUIScreenshotViewController *)self _isRegularPad:view]];
  v7 = v6;
  objc_opt_class();
  collectionView = [(BSUIScreenshotViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  v10 = BUDynamicCast();

  [v10 setMinimumLineSpacing:v7];
  return v7;
}

- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index
{
  [BSUIScreenshotCell minimumLineSpacingWithRegularPad:[(BSUIScreenshotViewController *)self _isRegularPad:view]];
  v7 = v6;
  objc_opt_class();
  collectionView = [(BSUIScreenshotViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  v10 = BUDynamicCast();

  [v10 setMinimumInteritemSpacing:v7];
  return v7;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  _isRegularPad = [(BSUIScreenshotViewController *)self _isRegularPad];
  [viewCopy bounds];
  v9 = v8;
  v11 = v10;
  screenshots = [(BSUIScreenshotViewController *)self screenshots];
  firstObject = [screenshots firstObject];
  [firstObject size];
  [BSUIScreenshotCell sectionInsetForRegularPad:_isRegularPad maxSize:v9 artworkSize:v11, v14, v15];
  v17 = v16;
  v19 = v18;
  v21 = v20;

  _isRegularPad2 = [(BSUIScreenshotViewController *)self _isRegularPad];
  [viewCopy bounds];
  v24 = v23;
  v26 = v25;

  screenshots2 = [(BSUIScreenshotViewController *)self screenshots];
  lastObject = [screenshots2 lastObject];
  [lastObject size];
  [BSUIScreenshotCell sectionInsetForRegularPad:_isRegularPad2 maxSize:v24 artworkSize:v26, v29, v30];
  v32 = v31;
  v34 = v33;
  v36 = v35;

  if (v17 >= v32)
  {
    v17 = v32;
  }

  if (v21 >= v34)
  {
    v21 = v34;
  }

  objc_opt_class();
  collectionView = [(BSUIScreenshotViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  v39 = BUDynamicCast();

  [v39 setSectionInset:{v17, v19, v21, v36}];
  v40 = v17;
  v41 = v19;
  v42 = v21;
  v43 = v36;
  result.right = v43;
  result.bottom = v42;
  result.left = v41;
  result.top = v40;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  _isRegularPad = [(BSUIScreenshotViewController *)self _isRegularPad];
  [viewCopy bounds];
  v9 = v8;
  v11 = v10;

  [BSUIScreenshotCell itemSizeForRegularPad:_isRegularPad maxSize:v9, v11];
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  if (item != [(BSUIScreenshotViewController *)self selectedIndex])
  {
    collectionView = [(BSUIScreenshotViewController *)self collectionView];
    [collectionView scrollToItemAtIndexPath:pathCopy atScrollPosition:16 animated:1];

    -[BSUIScreenshotViewController setSelectedIndex:](self, "setSelectedIndex:", [pathCopy item]);
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  [deceleratingCopy contentOffset];
  v6 = v5;
  [deceleratingCopy bounds];
  v7 = v6 + CGRectGetWidth(v21) * 0.5;
  [deceleratingCopy bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  v16 = CGRectGetHeight(v22) * 0.5;
  collectionView = [(BSUIScreenshotViewController *)self collectionView];
  v19 = [collectionView indexPathForItemAtPoint:{v7, v16}];

  v18 = v19;
  if (v19)
  {
    -[BSUIScreenshotViewController setSelectedIndex:](self, "setSelectedIndex:", [v19 item]);
    v18 = v19;
  }
}

- (void)screenshotLoader:(id)loader willLoadImageAtIndex:(unint64_t)index fromURL:(id)l
{
  loaderCopy = loader;
  lCopy = l;
  v9 = JSALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [NSNumber numberWithUnsignedInteger:index];
    v11 = 138543874;
    v12 = loaderCopy;
    v13 = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = lCopy;
    _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%{public}@ about to load screenshot at index %{public}@ from url %{public}@", &v11, 0x20u);
  }
}

- (void)screenshotLoader:(id)loader loadedImage:(id)image forScreenshotAtIndex:(unint64_t)index
{
  imageCopy = image;
  objc_opt_class();
  collectionView = [(BSUIScreenshotViewController *)self collectionView];
  v9 = [NSIndexPath indexPathForRow:index inSection:0];
  v10 = [collectionView cellForItemAtIndexPath:v9];
  v12 = BUDynamicCast();

  imageView = [v12 imageView];
  [imageView setImage:imageCopy];
}

- (void)screenshotLoader:(id)loader failedToLoadImageforScreenshotAtIndex:(unint64_t)index withError:(id)error
{
  loaderCopy = loader;
  errorCopy = error;
  v9 = JSALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [NSNumber numberWithUnsignedInteger:index];
    v11 = 138543874;
    v12 = loaderCopy;
    v13 = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = errorCopy;
    _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}@ failed to load screenshot at index %{public}@ with error %{public}@", &v11, 0x20u);
  }
}

- (BOOL)_isRegularPad
{
  traitCollection = [(BSUIScreenshotViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == &dword_0 + 1)
  {
    traitCollection2 = [(BSUIScreenshotViewController *)self traitCollection];
    v5 = [traitCollection2 horizontalSizeClass] == &dword_0 + 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_swipeGestureRecognizer:(id)recognizer
{
  if ([recognizer state] == &dword_0 + 3)
  {

    [(BSUIScreenshotViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_setupSubviews
{
  v3 = [UICollectionView alloc];
  v4 = objc_opt_new();
  v5 = [v3 initWithFrame:v4 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BSUIScreenshotViewController *)self setCollectionView:v5];

  view = [(BSUIScreenshotViewController *)self view];
  backgroundColor = [view backgroundColor];
  collectionView = [(BSUIScreenshotViewController *)self collectionView];
  [collectionView setBackgroundColor:backgroundColor];

  collectionView2 = [(BSUIScreenshotViewController *)self collectionView];
  [collectionView2 setDelegate:self];

  collectionView3 = [(BSUIScreenshotViewController *)self collectionView];
  [collectionView3 setDataSource:self];

  collectionView4 = [(BSUIScreenshotViewController *)self collectionView];
  [collectionView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView5 = [(BSUIScreenshotViewController *)self collectionView];
  widthAnchor = [collectionView5 widthAnchor];
  view2 = [(BSUIScreenshotViewController *)self view];
  [view2 bounds];
  v16 = [widthAnchor constraintEqualToConstant:v15];
  [v16 setActive:1];

  collectionView6 = [(BSUIScreenshotViewController *)self collectionView];
  v42 = collectionView6;
  v40 = [NSArray arrayWithObjects:&v42 count:1];

  v18 = [[UIStackView alloc] initWithArrangedSubviews:v40];
  backgroundColor2 = [(BSUIScreenshotViewController *)self backgroundColor];
  cGColor = [backgroundColor2 CGColor];
  layer = [v18 layer];
  [layer setBackgroundColor:cGColor];

  [v18 setAxis:0];
  [v18 setDistribution:3];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(BSUIScreenshotViewController *)self view];
  [view3 addSubview:v18];

  leadingAnchor = [v18 leadingAnchor];
  view4 = [(BSUIScreenshotViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[0] = v36;
  trailingAnchor = [v18 trailingAnchor];
  view5 = [(BSUIScreenshotViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[1] = v32;
  topAnchor = [v18 topAnchor];
  view6 = [(BSUIScreenshotViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v41[2] = v26;
  bottomAnchor = [v18 bottomAnchor];
  view7 = [(BSUIScreenshotViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v41[3] = v30;
  v31 = [NSArray arrayWithObjects:v41 count:4];
  [NSLayoutConstraint activateConstraints:v31];
}

- (void)_updateColors
{
  [(BSUIScreenshotViewController *)self setNeedsStatusBarAppearanceUpdate];

  [(BSUIScreenshotViewController *)self setNeedsColorUpdate];
}

@end