@interface BSUIScreenshotViewController
+ (void)createAsync:(id)a3 :(int64_t)a4 :(id)a5;
- (BOOL)_isRegularPad;
- (BSUIScreenshotViewController)initWithScreenshots:(id)a3 andSelectedIndex:(int64_t)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5;
- (id)cellBorderColor;
- (id)cellPlaceholderColor;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_setupSubviews;
- (void)_swipeGestureRecognizer:(id)a3;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateColors;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)screenshotLoader:(id)a3 failedToLoadImageforScreenshotAtIndex:(unint64_t)a4 withError:(id)a5;
- (void)screenshotLoader:(id)a3 loadedImage:(id)a4 forScreenshotAtIndex:(unint64_t)a5;
- (void)screenshotLoader:(id)a3 willLoadImageAtIndex:(unint64_t)a4 fromURL:(id)a5;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)setNeedsColorUpdate;
- (void)setSelectedIndex:(int64_t)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BSUIScreenshotViewController

- (BSUIScreenshotViewController)initWithScreenshots:(id)a3 andSelectedIndex:(int64_t)a4
{
  v6 = a3;
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
    v9 = v6;
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
    v7->_selectedIndex = a4;
    v7->_initialSelectedIndex = a4;
    v17 = [[BSUIScreenshotLoader alloc] initWithScreenshots:v8];
    screenshotLoader = v7->_screenshotLoader;
    v7->_screenshotLoader = v17;

    [(BSUIScreenshotLoader *)v7->_screenshotLoader setDelegate:v7];
    v19 = [(BSUIScreenshotViewController *)v7 navigationItem];
    [v19 setLargeTitleDisplayMode:2];

    v20 = +[UITraitCollection bc_allAPITraits];
    v21 = [(BSUIScreenshotViewController *)v7 registerForTraitChanges:v20 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v7;
}

+ (void)createAsync:(id)a3 :(int64_t)a4 :(id)a5
{
  v8 = a3;
  v9 = a5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_430C;
  v15[3] = &unk_386C30;
  v18 = a1;
  v10 = v8;
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
  v4 = [(BSUIScreenshotViewController *)self view];
  [v4 addGestureRecognizer:v3];

  [(BSUIScreenshotLoader *)self->_screenshotLoader startLoading];
  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_dismiss:"];
  v6 = [(BSUIScreenshotViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [(BSUIScreenshotViewController *)self backgroundColor];
  v8 = [(BSUIScreenshotViewController *)self collectionView];
  [v8 setBackgroundColor:v7];

  v9 = [(BSUIScreenshotViewController *)self collectionView];
  [v9 setAlwaysBounceHorizontal:1];

  v10 = [(BSUIScreenshotViewController *)self collectionView];
  [v10 setShowsHorizontalScrollIndicator:0];

  v11 = [(BSUIScreenshotViewController *)self collectionView];
  [v11 setDecelerationRate:UIScrollViewDecelerationRateFast];

  v12 = [(BSUIScreenshotViewController *)self collectionView];
  [v12 setRemembersLastFocusedIndexPath:1];

  v13 = [(BSUIScreenshotViewController *)self collectionView];
  [v13 setContentInsetAdjustmentBehavior:2];

  v14 = [(BSUIScreenshotViewController *)self collectionView];
  v15 = [v14 topEdgeEffect];
  [v15 setHidden:1];

  v16 = [(BSUIScreenshotViewController *)self collectionView];
  [v16 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CellIdentifier"];

  [(BSUIScreenshotViewController *)self _updateColors];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = BSUIScreenshotViewController;
  [(BSUIScreenshotViewController *)&v3 viewWillAppear:a3];
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
      v3 = [(BSUIScreenshotViewController *)self initialSelectedIndex];
      v4 = [(BSUIScreenshotViewController *)self screenshots];
      v5 = [v4 count];

      if (v3 < v5)
      {
        objc_opt_class();
        v6 = [(BSUIScreenshotViewController *)self collectionView];
        v7 = [v6 superview];
        v8 = BUDynamicCast();

        [v8 layoutIfNeeded];
        v9 = [(BSUIScreenshotViewController *)self collectionView];
        v10 = [NSIndexPath indexPathForRow:[(BSUIScreenshotViewController *)self initialSelectedIndex] inSection:0];
        [v9 scrollToItemAtIndexPath:v10 atScrollPosition:16 animated:0];
      }
    }

    [(BSUIScreenshotViewController *)self setInitialSelectedIndex:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [a4 bc_userInterfaceStyleDark];
  v6 = [(BSUIScreenshotViewController *)self traitCollection];
  v7 = [v6 bc_userInterfaceStyleDark];

  if (v5 != v7)
  {
    [(BSUIScreenshotViewController *)self _updateColors];
  }

  v8 = [(BSUIScreenshotViewController *)self collectionView];
  v9 = [v8 collectionViewLayout];
  [v9 invalidateLayout];

  v10 = [(BSUIScreenshotViewController *)self collectionView];
  [v10 setNeedsLayout];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = BSUIScreenshotViewController;
  v7 = a4;
  [(BSUIScreenshotViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(BSUIScreenshotViewController *)self collectionView];
  v9 = [v8 collectionViewLayout];
  [v9 invalidateLayout];

  v10 = [(BSUIScreenshotViewController *)self collectionView];
  [v10 setNeedsLayout];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_496C;
  v11[3] = &unk_386C80;
  v11[4] = self;
  [v7 animateAlongsideTransition:v11 completion:0];
}

- (void)setNeedsColorUpdate
{
  v3 = [(BSUIScreenshotViewController *)self backgroundColor];
  v4 = [(BSUIScreenshotViewController *)self collectionView];
  [v4 setBackgroundColor:v3];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(BSUIScreenshotViewController *)self collectionView];
  v6 = [v5 visibleCells];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [(BSUIScreenshotViewController *)self cellPlaceholderColor];
        v13 = [v11 imageView];
        [v13 setBackgroundColor:v12];

        v14 = [(BSUIScreenshotViewController *)self cellBorderColor];
        v15 = [v14 CGColor];
        v16 = [v11 imageView];
        v17 = [v16 layer];
        [v17 setBorderColor:v15];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)setSelectedIndex:(int64_t)a3
{
  if (self->_selectedIndex != a3)
  {
    self->_selectedIndex = a3;
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(BSUIScreenshotViewController *)self screenshots:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = [v7 dequeueReusableCellWithReuseIdentifier:@"CellIdentifier" forIndexPath:v6];

  v9 = BUDynamicCast();

  v10 = [(BSUIScreenshotViewController *)self screenshots];
  v11 = [v6 row];

  v12 = [v10 objectAtIndexedSubscript:v11];

  v13 = [(BSUIScreenshotViewController *)self screenshotLoader];
  v14 = [v13 imageForScreenshot:v12];

  [v9 configureWithScreenshot:v12 image:v14];
  v15 = [(BSUIScreenshotViewController *)self cellPlaceholderColor];
  v16 = [v9 imageView];
  [v16 setBackgroundColor:v15];

  v17 = [(BSUIScreenshotViewController *)self cellBorderColor];
  v18 = [v17 CGColor];
  v19 = [v9 imageView];
  v20 = [v19 layer];
  [v20 setBorderColor:v18];

  return v9;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5
{
  [BSUIScreenshotCell minimumLineSpacingWithRegularPad:[(BSUIScreenshotViewController *)self _isRegularPad:a3]];
  v7 = v6;
  objc_opt_class();
  v8 = [(BSUIScreenshotViewController *)self collectionView];
  v9 = [v8 collectionViewLayout];
  v10 = BUDynamicCast();

  [v10 setMinimumLineSpacing:v7];
  return v7;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5
{
  [BSUIScreenshotCell minimumLineSpacingWithRegularPad:[(BSUIScreenshotViewController *)self _isRegularPad:a3]];
  v7 = v6;
  objc_opt_class();
  v8 = [(BSUIScreenshotViewController *)self collectionView];
  v9 = [v8 collectionViewLayout];
  v10 = BUDynamicCast();

  [v10 setMinimumInteritemSpacing:v7];
  return v7;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v6 = a3;
  v7 = [(BSUIScreenshotViewController *)self _isRegularPad];
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v12 = [(BSUIScreenshotViewController *)self screenshots];
  v13 = [v12 firstObject];
  [v13 size];
  [BSUIScreenshotCell sectionInsetForRegularPad:v7 maxSize:v9 artworkSize:v11, v14, v15];
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(BSUIScreenshotViewController *)self _isRegularPad];
  [v6 bounds];
  v24 = v23;
  v26 = v25;

  v27 = [(BSUIScreenshotViewController *)self screenshots];
  v28 = [v27 lastObject];
  [v28 size];
  [BSUIScreenshotCell sectionInsetForRegularPad:v22 maxSize:v24 artworkSize:v26, v29, v30];
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
  v37 = [(BSUIScreenshotViewController *)self collectionView];
  v38 = [v37 collectionViewLayout];
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a3;
  v7 = [(BSUIScreenshotViewController *)self _isRegularPad];
  [v6 bounds];
  v9 = v8;
  v11 = v10;

  [BSUIScreenshotCell itemSizeForRegularPad:v7 maxSize:v9, v11];
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v7 = a4;
  v5 = [v7 item];
  if (v5 != [(BSUIScreenshotViewController *)self selectedIndex])
  {
    v6 = [(BSUIScreenshotViewController *)self collectionView];
    [v6 scrollToItemAtIndexPath:v7 atScrollPosition:16 animated:1];

    -[BSUIScreenshotViewController setSelectedIndex:](self, "setSelectedIndex:", [v7 item]);
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  [v4 bounds];
  v7 = v6 + CGRectGetWidth(v21) * 0.5;
  [v4 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  v16 = CGRectGetHeight(v22) * 0.5;
  v17 = [(BSUIScreenshotViewController *)self collectionView];
  v19 = [v17 indexPathForItemAtPoint:{v7, v16}];

  v18 = v19;
  if (v19)
  {
    -[BSUIScreenshotViewController setSelectedIndex:](self, "setSelectedIndex:", [v19 item]);
    v18 = v19;
  }
}

- (void)screenshotLoader:(id)a3 willLoadImageAtIndex:(unint64_t)a4 fromURL:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = JSALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [NSNumber numberWithUnsignedInteger:a4];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = v8;
    _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%{public}@ about to load screenshot at index %{public}@ from url %{public}@", &v11, 0x20u);
  }
}

- (void)screenshotLoader:(id)a3 loadedImage:(id)a4 forScreenshotAtIndex:(unint64_t)a5
{
  v7 = a4;
  objc_opt_class();
  v8 = [(BSUIScreenshotViewController *)self collectionView];
  v9 = [NSIndexPath indexPathForRow:a5 inSection:0];
  v10 = [v8 cellForItemAtIndexPath:v9];
  v12 = BUDynamicCast();

  v11 = [v12 imageView];
  [v11 setImage:v7];
}

- (void)screenshotLoader:(id)a3 failedToLoadImageforScreenshotAtIndex:(unint64_t)a4 withError:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = JSALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [NSNumber numberWithUnsignedInteger:a4];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}@ failed to load screenshot at index %{public}@ with error %{public}@", &v11, 0x20u);
  }
}

- (BOOL)_isRegularPad
{
  v3 = [(BSUIScreenshotViewController *)self traitCollection];
  if ([v3 userInterfaceIdiom] == &dword_0 + 1)
  {
    v4 = [(BSUIScreenshotViewController *)self traitCollection];
    v5 = [v4 horizontalSizeClass] == &dword_0 + 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_swipeGestureRecognizer:(id)a3
{
  if ([a3 state] == &dword_0 + 3)
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

  v6 = [(BSUIScreenshotViewController *)self view];
  v7 = [v6 backgroundColor];
  v8 = [(BSUIScreenshotViewController *)self collectionView];
  [v8 setBackgroundColor:v7];

  v9 = [(BSUIScreenshotViewController *)self collectionView];
  [v9 setDelegate:self];

  v10 = [(BSUIScreenshotViewController *)self collectionView];
  [v10 setDataSource:self];

  v11 = [(BSUIScreenshotViewController *)self collectionView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(BSUIScreenshotViewController *)self collectionView];
  v13 = [v12 widthAnchor];
  v14 = [(BSUIScreenshotViewController *)self view];
  [v14 bounds];
  v16 = [v13 constraintEqualToConstant:v15];
  [v16 setActive:1];

  v17 = [(BSUIScreenshotViewController *)self collectionView];
  v42 = v17;
  v40 = [NSArray arrayWithObjects:&v42 count:1];

  v18 = [[UIStackView alloc] initWithArrangedSubviews:v40];
  v19 = [(BSUIScreenshotViewController *)self backgroundColor];
  v20 = [v19 CGColor];
  v21 = [v18 layer];
  [v21 setBackgroundColor:v20];

  [v18 setAxis:0];
  [v18 setDistribution:3];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [(BSUIScreenshotViewController *)self view];
  [v22 addSubview:v18];

  v38 = [v18 leadingAnchor];
  v39 = [(BSUIScreenshotViewController *)self view];
  v37 = [v39 leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v41[0] = v36;
  v34 = [v18 trailingAnchor];
  v35 = [(BSUIScreenshotViewController *)self view];
  v33 = [v35 trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v41[1] = v32;
  v23 = [v18 topAnchor];
  v24 = [(BSUIScreenshotViewController *)self view];
  v25 = [v24 topAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v41[2] = v26;
  v27 = [v18 bottomAnchor];
  v28 = [(BSUIScreenshotViewController *)self view];
  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
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