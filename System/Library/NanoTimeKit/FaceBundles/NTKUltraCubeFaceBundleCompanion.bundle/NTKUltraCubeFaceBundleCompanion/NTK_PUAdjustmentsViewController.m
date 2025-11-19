@interface NTK_PUAdjustmentsViewController
- (BOOL)canToggleCell:(id)a3;
- (CGSize)controlSize;
- (NTK_PUAdjustmentViewControllerDelegate)delegate;
- (NTK_PUAdjustmentsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NTK_PUAdjustmentsViewDataSource)dataSource;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)_backgroundImageForItemAtIndexPath:(id)a3;
- (id)_circularImageWithSize:(CGSize)a3 color:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_performFeedbackIfNeeded;
- (void)_resetControlsAtIndexPath:(id)a3;
- (void)_scrollToSelectedIndexPath;
- (void)_setupCellBackgroundImagesIfNeeded;
- (void)_sliderDidEndScrolling;
- (void)_updateBadgeLayout;
- (void)_updateCell:(id)a3 withInfo:(id)a4;
- (void)_updateCollectionViewLayoutDirection:(int64_t)a3;
- (void)_updateSelectedInfo;
- (void)_updateViewLayout;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)didToggleCell:(id)a3;
- (void)ntk_setSelectedIndexPath:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setLayoutDirection:(int64_t)a3;
- (void)setSelectedIndexPath:(id)a3;
- (void)sliderValueChanged:(id)a3;
- (void)sliderWillBeginScrolling:(id)a3;
- (void)sliderWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)updateControls;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation NTK_PUAdjustmentsViewController

- (NTK_PUAdjustmentsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = NTK_PUAdjustmentsViewController;
  result = [(NTK_PUAdjustmentsViewController *)&v5 initWithNibName:a3 bundle:a4];
  if (result)
  {
    result->_shouldDisplayControlValues = 1;
    result->_shouldDisplayMappedValues = 1;
  }

  return result;
}

- (void)viewDidLoad
{
  v48.receiver = self;
  v48.super_class = NTK_PUAdjustmentsViewController;
  [(NTK_PUAdjustmentsViewController *)&v48 viewDidLoad];
  [(NTK_PUAdjustmentsViewController *)self setLayoutDirection:0];
  v3 = +[UIColor clearColor];
  v4 = [(NTK_PUAdjustmentsViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(NTK_PUAdjustmentsViewController *)self setControlSize:51.0, 51.0];
  v5 = objc_alloc_init(NTK_PUAdjustmentsViewFlowLayout);
  collectionViewLayout = self->_collectionViewLayout;
  self->_collectionViewLayout = v5;

  [(NTK_PUAdjustmentsViewController *)self controlSize];
  [(NTK_PUAdjustmentsViewFlowLayout *)self->_collectionViewLayout setItemSize:?];
  [(NTK_PUAdjustmentsViewFlowLayout *)self->_collectionViewLayout setMinimumInteritemSpacing:20.0];
  [(NTK_PUAdjustmentsViewFlowLayout *)self->_collectionViewLayout setMinimumLineSpacing:20.0];
  [(NTK_PUAdjustmentsViewFlowLayout *)self->_collectionViewLayout setScrollDirection:1];
  v7 = [UICollectionView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v11 = [v7 initWithFrame:self->_collectionViewLayout collectionViewLayout:{CGRectZero.origin.x, y, width, height}];
  [(NTK_PUAdjustmentsViewController *)self setCollectionView:v11];

  v12 = [(NTK_PUAdjustmentsViewController *)self view];
  v13 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [v12 addSubview:v13];

  v14 = +[UIColor clearColor];
  v15 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [v15 setBackgroundColor:v14];

  v16 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [v16 setShowsHorizontalScrollIndicator:0];

  v17 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [v17 setShowsVerticalScrollIndicator:0];

  v18 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [v18 setSemanticContentAttribute:3];

  v19 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [v19 setContentInsetAdjustmentBehavior:2];

  v20 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [v20 setSelectionFollowsFocus:1];

  v21 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [v21 setDelegate:self];

  v22 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [v22 setDataSource:self];

  v23 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [v23 setClipsToBounds:0];

  v24 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [v24 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"NTK_PUEditAdjustmentsCellReuseIdentifier"];

  v25 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [v25 setDecelerationRate:UIScrollViewDecelerationRateFast];

  if (NTK_PUHapticsAllowed())
  {
    v26 = objc_alloc_init(NTK_PUSelectionFeedbackGenerator);
    selectionFeedbackGenerator = self->_selectionFeedbackGenerator;
    self->_selectionFeedbackGenerator = v26;
  }

  [(NTK_PUAdjustmentsViewController *)self setDidPerformHapticFeedback:1];
  v28 = [[CEKBadgeTextView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(NTK_PUAdjustmentsViewController *)self setBadgeView:v28];

  v29 = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [v29 setUserInteractionEnabled:0];

  v30 = +[PUPhotoEditProtoSettings sharedInstance];
  [v30 adjustmentLabelPlatterAlpha];
  v32 = [UIColor colorWithWhite:0.0 alpha:v31];
  v33 = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [v33 _setFillColor:v32];

  v34 = [UIColor colorWithWhite:1.0 alpha:1.0];
  v35 = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [v35 _setContentColor:v34];

  v36 = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [v36 _setFillCornerRadius:4.0];

  +[CEKBadgeTextView _defaultTextInsets];
  v38 = v37 + 3.0;
  v40 = v39 + 3.0;
  v42 = v41 + 1.0;
  v44 = v43 + 1.0;
  v45 = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [v45 _setTextInsets:{v44, v38, v42, v40}];

  v46 = [(NTK_PUAdjustmentsViewController *)self view];
  v47 = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [v46 addSubview:v47];
}

- (void)_updateViewLayout
{
  v3 = [(NTK_PUAdjustmentsViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(NTK_PUAdjustmentsViewController *)self ntk_controlHeight];
  v13 = v12;
  v14 = [(NTK_PUAdjustmentsViewController *)self layoutDirection];
  v15 = v5;
  v16 = v7;
  v17 = v9;
  v18 = v11;
  if (v14)
  {
    v19 = CGRectGetMaxX(*&v15) - v13;
    v20 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    [v20 setFrame:{v19, 0.0, v13, v11}];

    v21 = v11 * 0.5;
    [(NTK_PUAdjustmentsViewController *)self controlSize];
    v23 = v11 * 0.5 - v22 * 0.5;
    [(NTK_PUAdjustmentsViewController *)self controlSize];
    v25 = v21 - v24 * 0.5;
    v26 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v27 = v26;
    v28 = 0.0;
    v29 = 0.0;
    v30 = v23;
    v31 = v25;
  }

  else
  {
    v32 = CGRectGetMaxY(*&v15) - v13;
    v33 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    [v33 setFrame:{0.0, v32, v9, v13}];

    v34 = v9 * 0.5;
    [(NTK_PUAdjustmentsViewController *)self controlSize];
    v36 = v34 - v35 * 0.5;
    [(NTK_PUAdjustmentsViewController *)self controlSize];
    v38 = v34 - v37 * 0.5;
    v26 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v27 = v26;
    v30 = 0.0;
    v31 = 0.0;
    v28 = v36;
    v29 = v38;
  }

  [v26 setContentInset:{v30, v28, v31, v29}];

  [(NTK_PUAdjustmentsViewController *)self _updateBadgeLayout];
}

- (void)_updateBadgeLayout
{
  v3 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  MinY = CGRectGetMinY(v19);
  v13 = [(NTK_PUAdjustmentsViewController *)self view];
  [v13 bounds];
  v14 = CGRectGetWidth(v20) * 0.5;

  v17 = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [v17 bounds];
  v15 = MinY + -12.0 - CGRectGetHeight(v21) * 0.5;
  v16 = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [v16 setCenter:{v14, v15}];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTK_PUAdjustmentsViewController;
  [(NTK_PUAdjustmentsViewController *)&v3 viewDidLayoutSubviews];
  [(NTK_PUAdjustmentsViewController *)self _updateViewLayout];
  [(NTK_PUAdjustmentsViewController *)self _scrollToSelectedIndexPath];
}

- (void)_scrollToSelectedIndexPath
{
  v3 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];

  if (v3)
  {
    if ([(NTK_PUAdjustmentsViewController *)self layoutDirection])
    {
      v4 = 2;
    }

    else
    {
      v4 = 16;
    }

    v5 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v6 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];
    [v5 selectItemAtIndexPath:v6 animated:0 scrollPosition:0];

    v8 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v7 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];
    [v8 scrollToItemAtIndexPath:v7 atScrollPosition:v4 animated:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = NTK_PUAdjustmentsViewController;
  [(NTK_PUAdjustmentsViewController *)&v8 viewDidAppear:a3];
  v4 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];

  if (!v4)
  {
    v5 = [(NTK_PUAdjustmentsViewController *)self collectionViewLayout];
    v6 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    [v6 bounds];
    UIRectGetCenter();
    v7 = [v5 nearestIndexPathForVisibleItemAtPoint:?];
    [(NTK_PUAdjustmentsViewController *)self setSelectedIndexPath:v7];

    [(NTK_PUAdjustmentsViewController *)self _scrollToSelectedIndexPath];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v11.receiver = self;
  v11.super_class = NTK_PUAdjustmentsViewController;
  v7 = a4;
  [(NTK_PUAdjustmentsViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  v9 = [v8 collectionViewLayout];
  [v9 invalidateLayout];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_109EC;
  v10[3] = &unk_49008;
  v10[4] = self;
  [v7 animateAlongsideTransition:v10 completion:0];
}

- (void)_updateCollectionViewLayoutDirection:(int64_t)a3
{
  v4 = a3 == 0;
  v5 = [(NTK_PUAdjustmentsViewController *)self collectionViewLayout];
  [v5 setScrollDirection:v4];

  v6 = [(NTK_PUAdjustmentsViewController *)self collectionViewLayout];
  [v6 invalidateLayout];
}

- (void)setLayoutDirection:(int64_t)a3
{
  if (self->_layoutDirection != a3)
  {
    self->_layoutDirection = a3;
    [(NTK_PUAdjustmentsViewController *)self _updateCollectionViewLayoutDirection:?];
  }
}

- (void)_updateSelectedInfo
{
  v3 = [(NTK_PUAdjustmentsViewController *)self dataSource];
  v4 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];
  obj = [v3 infoForItemAtIndexPath:v4];

  if (obj)
  {
    objc_storeStrong(&self->_selectedAdjustmentInfo, obj);
    v5 = [(NTK_PUAdjustmentInfo *)self->_selectedAdjustmentInfo localizedName];
    v6 = [v5 localizedUppercaseString];
    v7 = [(NTK_PUAdjustmentsViewController *)self badgeView];
    [v7 _setText:v6];

    v8 = [(NTK_PUAdjustmentsViewController *)self badgeView];
    [v8 sizeToFit];

    [(NTK_PUAdjustmentsViewController *)self _updateBadgeLayout];
    v9 = [(NTK_PUAdjustmentsViewController *)self delegate];

    if (v9)
    {
      v10 = [(NTK_PUAdjustmentsViewController *)self delegate];
      [v10 adjustmentsViewControllerDidUpdateSelectedControl:self];
    }
  }

  _objc_release_x1();
}

- (void)ntk_setSelectedIndexPath:(id)a3
{
  v4 = a3;
  if ([(NTK_PUAdjustmentsViewController *)self layoutDirection])
  {
    v5 = 2;
  }

  else
  {
    v5 = 16;
  }

  [(NTK_PUAdjustmentsViewController *)self setSelectedIndexPath:v4];
  v6 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [v6 scrollToItemAtIndexPath:v4 atScrollPosition:v5 animated:0];
}

- (void)setSelectedIndexPath:(id)a3
{
  v5 = a3;
  if (self->_selectedIndexPath != v5)
  {
    v10 = v5;
    v6 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v7 = [v6 cellForItemAtIndexPath:self->_selectedIndexPath];

    [v7 setIsUserModifying:0];
    [v7 setSelected:0];
    v8 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v9 = [v8 cellForItemAtIndexPath:v10];

    [v9 setSelected:1];
    objc_storeStrong(&self->_selectedIndexPath, a3);
    [(NTK_PUAdjustmentsViewController *)self _updateSelectedInfo];

    v5 = v10;
  }
}

- (void)_resetControlsAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];

  [v6 resetToDefault];
}

- (BOOL)canToggleCell:(id)a3
{
  v4 = a3;
  v5 = [(NTK_PUAdjustmentsViewController *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(NTK_PUAdjustmentsViewController *)self dataSource];
    v8 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v9 = [v8 indexPathForCell:v4];
    v10 = [v7 canModifyAdjustmentAtIndexPath:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)didToggleCell:(id)a3
{
  v4 = a3;
  v5 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  v7 = [(NTK_PUAdjustmentsViewController *)self dataSource];
  v8 = [v4 isEnabled];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_11024;
  v11[3] = &unk_49030;
  v11[4] = self;
  v12 = v6;
  v13 = v4;
  v9 = v4;
  v10 = v6;
  [v7 setAdjustmentEnabled:v8 atIndexPath:v10 completionHandler:v11];
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    if (a5 < 1)
    {
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
    }

    else
    {
      v10 = [(NTK_PUAdjustmentsViewController *)self layoutDirection];
      if (v10)
      {
        right = 0.0;
      }

      else
      {
        right = 10.0;
      }

      if (v10)
      {
        bottom = 10.0;
      }

      else
      {
        bottom = 0.0;
      }

      if (v10)
      {
        left = 0.0;
      }

      else
      {
        left = 10.0;
      }

      if (v10)
      {
        top = 10.0;
      }

      else
      {
        top = 0.0;
      }
    }
  }

  else
  {
    v15 = [(NTK_PUAdjustmentsViewController *)self layoutDirection];
    left = 0.0;
    if (v15)
    {
      right = 0.0;
    }

    else
    {
      right = 10.0;
    }

    if (v15)
    {
      bottom = 10.0;
    }

    else
    {
      bottom = 0.0;
    }

    top = 0.0;
  }

  v16 = top;
  v17 = left;
  v18 = bottom;
  v19 = right;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];

  if (v6 != v5)
  {
    [(NTK_PUAdjustmentsViewController *)self setSelectedIndexPath:v5];
    [(NTK_PUAdjustmentsViewController *)self setIsAnimatingScroll:1];
    if ([(NTK_PUAdjustmentsViewController *)self layoutDirection])
    {
      v7 = 2;
    }

    else
    {
      v7 = 16;
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_112C4;
    v9[3] = &unk_49058;
    v9[4] = self;
    v10 = v5;
    v11 = v7;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1131C;
    v8[3] = &unk_49080;
    v8[4] = self;
    [UIView animateWithDuration:v9 animations:v8 completion:0.25];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = [(NTK_PUAdjustmentsViewController *)self dataSource];

  if (!v6)
  {
    return 0;
  }

  v7 = [(NTK_PUAdjustmentsViewController *)self dataSource];
  v8 = [v7 numberOfItemsInSection:a4];

  return v8;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = [(NTK_PUAdjustmentsViewController *)self dataSource];

  if (!v4)
  {
    return 0;
  }

  v5 = [(NTK_PUAdjustmentsViewController *)self dataSource];
  v6 = [v5 numberOfSections];

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NTK_PUAdjustmentsViewController *)self dataSource];
  v9 = [v8 infoForItemAtIndexPath:v6];

  v10 = [v7 dequeueReusableCellWithReuseIdentifier:@"NTK_PUEditAdjustmentsCellReuseIdentifier" forIndexPath:v6];

  [v10 setDelegate:self];
  [v10 setShouldDisplayValueLabel:{-[NTK_PUAdjustmentsViewController shouldDisplayControlValues](self, "shouldDisplayControlValues")}];
  [v10 setDisplayMappedValue:{-[NTK_PUAdjustmentsViewController shouldDisplayMappedValues](self, "shouldDisplayMappedValues")}];
  [(NTK_PUAdjustmentsViewController *)self _updateCell:v10 withInfo:v9];

  return v10;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(NTK_PUAdjustmentsViewController *)self dataSource];
  v9 = [v8 infoForItemAtIndexPath:v7];

  [(NTK_PUAdjustmentsViewController *)self _updateCell:v10 withInfo:v9];
}

- (id)_circularImageWithSize:(CGSize)a3 color:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_11660;
  v11[3] = &unk_490A8;
  v12 = v6;
  v13 = width;
  v14 = height;
  v8 = v6;
  v9 = [v7 imageWithActions:v11];

  return v9;
}

- (void)_setupCellBackgroundImagesIfNeeded
{
  if (!self->_itemBackgroundImage)
  {
    v3 = +[UIColor systemBackgroundColor];
    v4 = [v3 colorWithAlphaComponent:0.3];

    v5 = [(NTK_PUAdjustmentsViewController *)self _circularImageWithSize:v4 color:51.0, 51.0];
    itemBackgroundImage = self->_itemBackgroundImage;
    self->_itemBackgroundImage = v5;
  }

  if (!self->_selectedItemBackgroundImage)
  {
    v7 = +[UIColor systemBackgroundColor];
    v10 = [v7 colorWithAlphaComponent:0.9];

    v8 = [(NTK_PUAdjustmentsViewController *)self _circularImageWithSize:v10 color:53.0, 53.0];
    selectedItemBackgroundImage = self->_selectedItemBackgroundImage;
    self->_selectedItemBackgroundImage = v8;
  }
}

- (id)_backgroundImageForItemAtIndexPath:(id)a3
{
  v4 = a3;
  [(NTK_PUAdjustmentsViewController *)self _setupCellBackgroundImagesIfNeeded];
  v5 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];

  v6 = &OBJC_IVAR___NTK_PUAdjustmentsViewController__itemBackgroundImage;
  if (v5 == v4)
  {
    v6 = &OBJC_IVAR___NTK_PUAdjustmentsViewController__selectedItemBackgroundImage;
  }

  v7 = *(&self->super.super.super.isa + *v6);

  return v7;
}

- (void)_updateCell:(id)a3 withInfo:(id)a4
{
  if (a3 && a4)
  {
    v5 = a4;
    v10 = a3;
    v6 = [v5 iconName];
    [v10 setImageName:v6];

    v7 = [v5 ntk_icon];
    [v10 ntk_setImage:v7];

    [v10 setEnabled:{objc_msgSend(v5, "enabled")}];
    [v5 minimumLevel];
    [v10 setMinValue:?];
    [v5 maximumLevel];
    [v10 setMaxValue:?];
    [v5 defaultLevel];
    [v10 setDefaultValue:?];
    [v5 identityLevel];
    [v10 setIdentityValue:?];
    [v5 currentLevel];
    v9 = v8;

    [v10 setValue:v9];
  }
}

- (void)updateControls
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];

        if (v9 != v10)
        {
          v11 = [(NTK_PUAdjustmentsViewController *)self dataSource];
          v12 = [v11 infoForItemAtIndexPath:v9];

          v13 = [(NTK_PUAdjustmentsViewController *)self collectionView];
          v14 = [v13 cellForItemAtIndexPath:v9];

          [(NTK_PUAdjustmentsViewController *)self _updateCell:v14 withInfo:v12];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)sliderValueChanged:(id)a3
{
  if (![(NTK_PUAdjustmentsViewController *)self isAnimatingScroll])
  {
    v4 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v5 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];
    v6 = [v4 cellForItemAtIndexPath:v5];

    if (([v6 isEnabled] & 1) == 0)
    {
      [v6 setEnabled:1];
    }

    [v6 setIsUserModifying:1];
  }
}

- (void)sliderWillBeginScrolling:(id)a3
{
  self->_sliderIsScrubbing = 1;
  v4 = [(NTK_PUAdjustmentsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NTK_PUAdjustmentsViewController *)self delegate];
    [v6 adjustmentsViewControllerSliderWillBeginScrubbing:self];
  }

  snappingController = self->_snappingController;

  [(PXUISnappingController *)snappingController interactionBegan];
}

- (void)_sliderDidEndScrolling
{
  self->_sliderIsScrubbing = 0;
  v3 = [(NTK_PUAdjustmentsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(NTK_PUAdjustmentsViewController *)self delegate];
    [v5 adjustmentsViewControllerSliderDidEndScrubbing:self];
  }

  snappingController = self->_snappingController;

  [(PXUISnappingController *)snappingController interactionEnded];
}

- (void)sliderWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  if (a4.x == 0.0)
  {
    [(NTK_PUAdjustmentsViewController *)self _sliderDidEndScrolling:a3];
  }
}

- (void)_performFeedbackIfNeeded
{
  if (![(NTK_PUAdjustmentsViewController *)self didPerformHapticFeedback])
  {
    v3 = [(NTK_PUAdjustmentsViewController *)self selectionFeedbackGenerator];
    [v3 performFeedback];

    [(NTK_PUAdjustmentsViewController *)self setDidPerformHapticFeedback:1];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v27 = a3;
  if (!-[NTK_PUAdjustmentsViewController isAnimatingScroll](self, "isAnimatingScroll") && (([v27 isTracking] & 1) != 0 || objc_msgSend(v27, "isDecelerating")))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = Current - self->_previousTimeStamp;
    [v27 contentOffset];
    v7 = fabs((v6 - self->_lastOffset.x) / v5) / 100.0;
    [v27 contentOffset];
    self->_lastOffset.x = v8;
    self->_lastOffset.y = v9;
    self->_previousTimeStamp = Current;
    v10 = [(NTK_PUAdjustmentsViewController *)self collectionViewLayout];
    [v27 bounds];
    PXRectGetCenter();
    v11 = [v10 nearestIndexPathForVisibleItemAtPoint:?];

    v12 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];

    if (v11 != v12)
    {
      [(NTK_PUAdjustmentsViewController *)self setSelectedIndexPath:v11];
      [(NTK_PUAdjustmentsViewController *)self setDidPerformHapticFeedback:0];
      if (v7 > 15.0)
      {
        [(NTK_PUAdjustmentsViewController *)self _performFeedbackIfNeeded];
      }
    }

    [v27 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v22 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];
    v23 = [v21 layoutAttributesForItemAtIndexPath:v22];

    [v23 frame];
    MidX = CGRectGetMidX(v29);
    v30.origin.x = v14;
    v30.origin.y = v16;
    v30.size.width = v18;
    v30.size.height = v20;
    v25 = vabdd_f64(MidX, CGRectGetMidX(v30));
    if (v7 < 15.0 && v25 < 6.0)
    {
      [(NTK_PUAdjustmentsViewController *)self _performFeedbackIfNeeded];
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(NTK_PUAdjustmentsViewController *)self selectionFeedbackGenerator];
  [v4 prepareFeedback];

  v5 = [(NTK_PUAdjustmentsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(NTK_PUAdjustmentsViewController *)self delegate];
    [v7 adjustmentsViewControllerToolWillBeginScrubbing:self];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v5 = [(NTK_PUAdjustmentsViewController *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(NTK_PUAdjustmentsViewController *)self delegate];
    [v7 adjustmentsViewControllerToolDidEndScrubbing:self];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  if (([a3 isDragging] & 1) == 0)
  {
    v5 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v4 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];
    [v5 selectItemAtIndexPath:v4 animated:0 scrollPosition:0];
  }
}

- (NTK_PUAdjustmentsViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (NTK_PUAdjustmentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)controlSize
{
  width = self->_controlSize.width;
  height = self->_controlSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end