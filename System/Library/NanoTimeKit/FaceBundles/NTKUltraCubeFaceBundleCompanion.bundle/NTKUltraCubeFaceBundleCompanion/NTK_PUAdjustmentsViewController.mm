@interface NTK_PUAdjustmentsViewController
- (BOOL)canToggleCell:(id)cell;
- (CGSize)controlSize;
- (NTK_PUAdjustmentViewControllerDelegate)delegate;
- (NTK_PUAdjustmentsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NTK_PUAdjustmentsViewDataSource)dataSource;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)_backgroundImageForItemAtIndexPath:(id)path;
- (id)_circularImageWithSize:(CGSize)size color:(id)color;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_performFeedbackIfNeeded;
- (void)_resetControlsAtIndexPath:(id)path;
- (void)_scrollToSelectedIndexPath;
- (void)_setupCellBackgroundImagesIfNeeded;
- (void)_sliderDidEndScrolling;
- (void)_updateBadgeLayout;
- (void)_updateCell:(id)cell withInfo:(id)info;
- (void)_updateCollectionViewLayoutDirection:(int64_t)direction;
- (void)_updateSelectedInfo;
- (void)_updateViewLayout;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)didToggleCell:(id)cell;
- (void)ntk_setSelectedIndexPath:(id)path;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setLayoutDirection:(int64_t)direction;
- (void)setSelectedIndexPath:(id)path;
- (void)sliderValueChanged:(id)changed;
- (void)sliderWillBeginScrolling:(id)scrolling;
- (void)sliderWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)updateControls;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation NTK_PUAdjustmentsViewController

- (NTK_PUAdjustmentsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = NTK_PUAdjustmentsViewController;
  result = [(NTK_PUAdjustmentsViewController *)&v5 initWithNibName:name bundle:bundle];
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
  view = [(NTK_PUAdjustmentsViewController *)self view];
  [view setBackgroundColor:v3];

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

  view2 = [(NTK_PUAdjustmentsViewController *)self view];
  collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [view2 addSubview:collectionView];

  v14 = +[UIColor clearColor];
  collectionView2 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [collectionView2 setBackgroundColor:v14];

  collectionView3 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [collectionView3 setShowsHorizontalScrollIndicator:0];

  collectionView4 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [collectionView4 setShowsVerticalScrollIndicator:0];

  collectionView5 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [collectionView5 setSemanticContentAttribute:3];

  collectionView6 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [collectionView6 setContentInsetAdjustmentBehavior:2];

  collectionView7 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [collectionView7 setSelectionFollowsFocus:1];

  collectionView8 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [collectionView8 setDelegate:self];

  collectionView9 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [collectionView9 setDataSource:self];

  collectionView10 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [collectionView10 setClipsToBounds:0];

  collectionView11 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [collectionView11 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"NTK_PUEditAdjustmentsCellReuseIdentifier"];

  collectionView12 = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [collectionView12 setDecelerationRate:UIScrollViewDecelerationRateFast];

  if (NTK_PUHapticsAllowed())
  {
    v26 = objc_alloc_init(NTK_PUSelectionFeedbackGenerator);
    selectionFeedbackGenerator = self->_selectionFeedbackGenerator;
    self->_selectionFeedbackGenerator = v26;
  }

  [(NTK_PUAdjustmentsViewController *)self setDidPerformHapticFeedback:1];
  v28 = [[CEKBadgeTextView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(NTK_PUAdjustmentsViewController *)self setBadgeView:v28];

  badgeView = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [badgeView setUserInteractionEnabled:0];

  v30 = +[PUPhotoEditProtoSettings sharedInstance];
  [v30 adjustmentLabelPlatterAlpha];
  v32 = [UIColor colorWithWhite:0.0 alpha:v31];
  badgeView2 = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [badgeView2 _setFillColor:v32];

  v34 = [UIColor colorWithWhite:1.0 alpha:1.0];
  badgeView3 = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [badgeView3 _setContentColor:v34];

  badgeView4 = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [badgeView4 _setFillCornerRadius:4.0];

  +[CEKBadgeTextView _defaultTextInsets];
  v38 = v37 + 3.0;
  v40 = v39 + 3.0;
  v42 = v41 + 1.0;
  v44 = v43 + 1.0;
  badgeView5 = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [badgeView5 _setTextInsets:{v44, v38, v42, v40}];

  view3 = [(NTK_PUAdjustmentsViewController *)self view];
  badgeView6 = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [view3 addSubview:badgeView6];
}

- (void)_updateViewLayout
{
  view = [(NTK_PUAdjustmentsViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(NTK_PUAdjustmentsViewController *)self ntk_controlHeight];
  v13 = v12;
  layoutDirection = [(NTK_PUAdjustmentsViewController *)self layoutDirection];
  v15 = v5;
  v16 = v7;
  v17 = v9;
  v18 = v11;
  if (layoutDirection)
  {
    v19 = CGRectGetMaxX(*&v15) - v13;
    collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
    [collectionView setFrame:{v19, 0.0, v13, v11}];

    v21 = v11 * 0.5;
    [(NTK_PUAdjustmentsViewController *)self controlSize];
    v23 = v11 * 0.5 - v22 * 0.5;
    [(NTK_PUAdjustmentsViewController *)self controlSize];
    v25 = v21 - v24 * 0.5;
    collectionView2 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v27 = collectionView2;
    v28 = 0.0;
    v29 = 0.0;
    v30 = v23;
    v31 = v25;
  }

  else
  {
    v32 = CGRectGetMaxY(*&v15) - v13;
    collectionView3 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    [collectionView3 setFrame:{0.0, v32, v9, v13}];

    v34 = v9 * 0.5;
    [(NTK_PUAdjustmentsViewController *)self controlSize];
    v36 = v34 - v35 * 0.5;
    [(NTK_PUAdjustmentsViewController *)self controlSize];
    v38 = v34 - v37 * 0.5;
    collectionView2 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v27 = collectionView2;
    v30 = 0.0;
    v31 = 0.0;
    v28 = v36;
    v29 = v38;
  }

  [collectionView2 setContentInset:{v30, v28, v31, v29}];

  [(NTK_PUAdjustmentsViewController *)self _updateBadgeLayout];
}

- (void)_updateBadgeLayout
{
  collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [collectionView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  MinY = CGRectGetMinY(v19);
  view = [(NTK_PUAdjustmentsViewController *)self view];
  [view bounds];
  v14 = CGRectGetWidth(v20) * 0.5;

  badgeView = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [badgeView bounds];
  v15 = MinY + -12.0 - CGRectGetHeight(v21) * 0.5;
  badgeView2 = [(NTK_PUAdjustmentsViewController *)self badgeView];
  [badgeView2 setCenter:{v14, v15}];
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
  selectedIndexPath = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];

  if (selectedIndexPath)
  {
    if ([(NTK_PUAdjustmentsViewController *)self layoutDirection])
    {
      v4 = 2;
    }

    else
    {
      v4 = 16;
    }

    collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
    selectedIndexPath2 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];
    [collectionView selectItemAtIndexPath:selectedIndexPath2 animated:0 scrollPosition:0];

    collectionView2 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    selectedIndexPath3 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];
    [collectionView2 scrollToItemAtIndexPath:selectedIndexPath3 atScrollPosition:v4 animated:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = NTK_PUAdjustmentsViewController;
  [(NTK_PUAdjustmentsViewController *)&v8 viewDidAppear:appear];
  selectedIndexPath = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];

  if (!selectedIndexPath)
  {
    collectionViewLayout = [(NTK_PUAdjustmentsViewController *)self collectionViewLayout];
    collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
    [collectionView bounds];
    UIRectGetCenter();
    v7 = [collectionViewLayout nearestIndexPathForVisibleItemAtPoint:?];
    [(NTK_PUAdjustmentsViewController *)self setSelectedIndexPath:v7];

    [(NTK_PUAdjustmentsViewController *)self _scrollToSelectedIndexPath];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = NTK_PUAdjustmentsViewController;
  coordinatorCopy = coordinator;
  [(NTK_PUAdjustmentsViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_109EC;
  v10[3] = &unk_49008;
  v10[4] = self;
  [coordinatorCopy animateAlongsideTransition:v10 completion:0];
}

- (void)_updateCollectionViewLayoutDirection:(int64_t)direction
{
  v4 = direction == 0;
  collectionViewLayout = [(NTK_PUAdjustmentsViewController *)self collectionViewLayout];
  [collectionViewLayout setScrollDirection:v4];

  collectionViewLayout2 = [(NTK_PUAdjustmentsViewController *)self collectionViewLayout];
  [collectionViewLayout2 invalidateLayout];
}

- (void)setLayoutDirection:(int64_t)direction
{
  if (self->_layoutDirection != direction)
  {
    self->_layoutDirection = direction;
    [(NTK_PUAdjustmentsViewController *)self _updateCollectionViewLayoutDirection:?];
  }
}

- (void)_updateSelectedInfo
{
  dataSource = [(NTK_PUAdjustmentsViewController *)self dataSource];
  selectedIndexPath = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];
  obj = [dataSource infoForItemAtIndexPath:selectedIndexPath];

  if (obj)
  {
    objc_storeStrong(&self->_selectedAdjustmentInfo, obj);
    localizedName = [(NTK_PUAdjustmentInfo *)self->_selectedAdjustmentInfo localizedName];
    localizedUppercaseString = [localizedName localizedUppercaseString];
    badgeView = [(NTK_PUAdjustmentsViewController *)self badgeView];
    [badgeView _setText:localizedUppercaseString];

    badgeView2 = [(NTK_PUAdjustmentsViewController *)self badgeView];
    [badgeView2 sizeToFit];

    [(NTK_PUAdjustmentsViewController *)self _updateBadgeLayout];
    delegate = [(NTK_PUAdjustmentsViewController *)self delegate];

    if (delegate)
    {
      delegate2 = [(NTK_PUAdjustmentsViewController *)self delegate];
      [delegate2 adjustmentsViewControllerDidUpdateSelectedControl:self];
    }
  }

  _objc_release_x1();
}

- (void)ntk_setSelectedIndexPath:(id)path
{
  pathCopy = path;
  if ([(NTK_PUAdjustmentsViewController *)self layoutDirection])
  {
    v5 = 2;
  }

  else
  {
    v5 = 16;
  }

  [(NTK_PUAdjustmentsViewController *)self setSelectedIndexPath:pathCopy];
  collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
  [collectionView scrollToItemAtIndexPath:pathCopy atScrollPosition:v5 animated:0];
}

- (void)setSelectedIndexPath:(id)path
{
  pathCopy = path;
  if (self->_selectedIndexPath != pathCopy)
  {
    v10 = pathCopy;
    collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v7 = [collectionView cellForItemAtIndexPath:self->_selectedIndexPath];

    [v7 setIsUserModifying:0];
    [v7 setSelected:0];
    collectionView2 = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v9 = [collectionView2 cellForItemAtIndexPath:v10];

    [v9 setSelected:1];
    objc_storeStrong(&self->_selectedIndexPath, path);
    [(NTK_PUAdjustmentsViewController *)self _updateSelectedInfo];

    pathCopy = v10;
  }
}

- (void)_resetControlsAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:pathCopy];

  [v6 resetToDefault];
}

- (BOOL)canToggleCell:(id)cell
{
  cellCopy = cell;
  dataSource = [(NTK_PUAdjustmentsViewController *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    dataSource2 = [(NTK_PUAdjustmentsViewController *)self dataSource];
    collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
    v9 = [collectionView indexPathForCell:cellCopy];
    v10 = [dataSource2 canModifyAdjustmentAtIndexPath:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)didToggleCell:(id)cell
{
  cellCopy = cell;
  collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
  v6 = [collectionView indexPathForCell:cellCopy];

  dataSource = [(NTK_PUAdjustmentsViewController *)self dataSource];
  isEnabled = [cellCopy isEnabled];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_11024;
  v11[3] = &unk_49030;
  v11[4] = self;
  v12 = v6;
  v13 = cellCopy;
  v9 = cellCopy;
  v10 = v6;
  [dataSource setAdjustmentEnabled:isEnabled atIndexPath:v10 completionHandler:v11];
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  if (index)
  {
    if (index < 1)
    {
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
    }

    else
    {
      layoutDirection = [(NTK_PUAdjustmentsViewController *)self layoutDirection];
      if (layoutDirection)
      {
        right = 0.0;
      }

      else
      {
        right = 10.0;
      }

      if (layoutDirection)
      {
        bottom = 10.0;
      }

      else
      {
        bottom = 0.0;
      }

      if (layoutDirection)
      {
        left = 0.0;
      }

      else
      {
        left = 10.0;
      }

      if (layoutDirection)
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
    layoutDirection2 = [(NTK_PUAdjustmentsViewController *)self layoutDirection];
    left = 0.0;
    if (layoutDirection2)
    {
      right = 0.0;
    }

    else
    {
      right = 10.0;
    }

    if (layoutDirection2)
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  selectedIndexPath = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];

  if (selectedIndexPath != pathCopy)
  {
    [(NTK_PUAdjustmentsViewController *)self setSelectedIndexPath:pathCopy];
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
    v10 = pathCopy;
    v11 = v7;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1131C;
    v8[3] = &unk_49080;
    v8[4] = self;
    [UIView animateWithDuration:v9 animations:v8 completion:0.25];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  dataSource = [(NTK_PUAdjustmentsViewController *)self dataSource];

  if (!dataSource)
  {
    return 0;
  }

  dataSource2 = [(NTK_PUAdjustmentsViewController *)self dataSource];
  v8 = [dataSource2 numberOfItemsInSection:section];

  return v8;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  dataSource = [(NTK_PUAdjustmentsViewController *)self dataSource];

  if (!dataSource)
  {
    return 0;
  }

  dataSource2 = [(NTK_PUAdjustmentsViewController *)self dataSource];
  numberOfSections = [dataSource2 numberOfSections];

  return numberOfSections;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(NTK_PUAdjustmentsViewController *)self dataSource];
  v9 = [dataSource infoForItemAtIndexPath:pathCopy];

  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"NTK_PUEditAdjustmentsCellReuseIdentifier" forIndexPath:pathCopy];

  [v10 setDelegate:self];
  [v10 setShouldDisplayValueLabel:{-[NTK_PUAdjustmentsViewController shouldDisplayControlValues](self, "shouldDisplayControlValues")}];
  [v10 setDisplayMappedValue:{-[NTK_PUAdjustmentsViewController shouldDisplayMappedValues](self, "shouldDisplayMappedValues")}];
  [(NTK_PUAdjustmentsViewController *)self _updateCell:v10 withInfo:v9];

  return v10;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  dataSource = [(NTK_PUAdjustmentsViewController *)self dataSource];
  v9 = [dataSource infoForItemAtIndexPath:pathCopy];

  [(NTK_PUAdjustmentsViewController *)self _updateCell:cellCopy withInfo:v9];
}

- (id)_circularImageWithSize:(CGSize)size color:(id)color
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  v7 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_11660;
  v11[3] = &unk_490A8;
  v12 = colorCopy;
  v13 = width;
  v14 = height;
  v8 = colorCopy;
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

- (id)_backgroundImageForItemAtIndexPath:(id)path
{
  pathCopy = path;
  [(NTK_PUAdjustmentsViewController *)self _setupCellBackgroundImagesIfNeeded];
  selectedIndexPath = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];

  v6 = &OBJC_IVAR___NTK_PUAdjustmentsViewController__itemBackgroundImage;
  if (selectedIndexPath == pathCopy)
  {
    v6 = &OBJC_IVAR___NTK_PUAdjustmentsViewController__selectedItemBackgroundImage;
  }

  v7 = *(&self->super.super.super.isa + *v6);

  return v7;
}

- (void)_updateCell:(id)cell withInfo:(id)info
{
  if (cell && info)
  {
    infoCopy = info;
    cellCopy = cell;
    iconName = [infoCopy iconName];
    [cellCopy setImageName:iconName];

    ntk_icon = [infoCopy ntk_icon];
    [cellCopy ntk_setImage:ntk_icon];

    [cellCopy setEnabled:{objc_msgSend(infoCopy, "enabled")}];
    [infoCopy minimumLevel];
    [cellCopy setMinValue:?];
    [infoCopy maximumLevel];
    [cellCopy setMaxValue:?];
    [infoCopy defaultLevel];
    [cellCopy setDefaultValue:?];
    [infoCopy identityLevel];
    [cellCopy setIdentityValue:?];
    [infoCopy currentLevel];
    v9 = v8;

    [cellCopy setValue:v9];
  }
}

- (void)updateControls
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        selectedIndexPath = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];

        if (v9 != selectedIndexPath)
        {
          dataSource = [(NTK_PUAdjustmentsViewController *)self dataSource];
          v12 = [dataSource infoForItemAtIndexPath:v9];

          collectionView2 = [(NTK_PUAdjustmentsViewController *)self collectionView];
          v14 = [collectionView2 cellForItemAtIndexPath:v9];

          [(NTK_PUAdjustmentsViewController *)self _updateCell:v14 withInfo:v12];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)sliderValueChanged:(id)changed
{
  if (![(NTK_PUAdjustmentsViewController *)self isAnimatingScroll])
  {
    collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
    selectedIndexPath = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];
    v6 = [collectionView cellForItemAtIndexPath:selectedIndexPath];

    if (([v6 isEnabled] & 1) == 0)
    {
      [v6 setEnabled:1];
    }

    [v6 setIsUserModifying:1];
  }
}

- (void)sliderWillBeginScrolling:(id)scrolling
{
  self->_sliderIsScrubbing = 1;
  delegate = [(NTK_PUAdjustmentsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(NTK_PUAdjustmentsViewController *)self delegate];
    [delegate2 adjustmentsViewControllerSliderWillBeginScrubbing:self];
  }

  snappingController = self->_snappingController;

  [(PXUISnappingController *)snappingController interactionBegan];
}

- (void)_sliderDidEndScrolling
{
  self->_sliderIsScrubbing = 0;
  delegate = [(NTK_PUAdjustmentsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(NTK_PUAdjustmentsViewController *)self delegate];
    [delegate2 adjustmentsViewControllerSliderDidEndScrubbing:self];
  }

  snappingController = self->_snappingController;

  [(PXUISnappingController *)snappingController interactionEnded];
}

- (void)sliderWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  if (velocity.x == 0.0)
  {
    [(NTK_PUAdjustmentsViewController *)self _sliderDidEndScrolling:scrolling];
  }
}

- (void)_performFeedbackIfNeeded
{
  if (![(NTK_PUAdjustmentsViewController *)self didPerformHapticFeedback])
  {
    selectionFeedbackGenerator = [(NTK_PUAdjustmentsViewController *)self selectionFeedbackGenerator];
    [selectionFeedbackGenerator performFeedback];

    [(NTK_PUAdjustmentsViewController *)self setDidPerformHapticFeedback:1];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (!-[NTK_PUAdjustmentsViewController isAnimatingScroll](self, "isAnimatingScroll") && (([scrollCopy isTracking] & 1) != 0 || objc_msgSend(scrollCopy, "isDecelerating")))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = Current - self->_previousTimeStamp;
    [scrollCopy contentOffset];
    v7 = fabs((v6 - self->_lastOffset.x) / v5) / 100.0;
    [scrollCopy contentOffset];
    self->_lastOffset.x = v8;
    self->_lastOffset.y = v9;
    self->_previousTimeStamp = Current;
    collectionViewLayout = [(NTK_PUAdjustmentsViewController *)self collectionViewLayout];
    [scrollCopy bounds];
    PXRectGetCenter();
    v11 = [collectionViewLayout nearestIndexPathForVisibleItemAtPoint:?];

    selectedIndexPath = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];

    if (v11 != selectedIndexPath)
    {
      [(NTK_PUAdjustmentsViewController *)self setSelectedIndexPath:v11];
      [(NTK_PUAdjustmentsViewController *)self setDidPerformHapticFeedback:0];
      if (v7 > 15.0)
      {
        [(NTK_PUAdjustmentsViewController *)self _performFeedbackIfNeeded];
      }
    }

    [scrollCopy bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
    selectedIndexPath2 = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];
    v23 = [collectionView layoutAttributesForItemAtIndexPath:selectedIndexPath2];

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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  selectionFeedbackGenerator = [(NTK_PUAdjustmentsViewController *)self selectionFeedbackGenerator];
  [selectionFeedbackGenerator prepareFeedback];

  delegate = [(NTK_PUAdjustmentsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(NTK_PUAdjustmentsViewController *)self delegate];
    [delegate2 adjustmentsViewControllerToolWillBeginScrubbing:self];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  v5 = [(NTK_PUAdjustmentsViewController *)self delegate:dragging];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(NTK_PUAdjustmentsViewController *)self delegate];
    [delegate adjustmentsViewControllerToolDidEndScrubbing:self];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (([decelerating isDragging] & 1) == 0)
  {
    collectionView = [(NTK_PUAdjustmentsViewController *)self collectionView];
    selectedIndexPath = [(NTK_PUAdjustmentsViewController *)self selectedIndexPath];
    [collectionView selectItemAtIndexPath:selectedIndexPath animated:0 scrollPosition:0];
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