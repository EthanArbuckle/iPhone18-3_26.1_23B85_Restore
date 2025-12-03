@interface MTAWorldClockCollectionViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (MTAWorldClockCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (MTAWorldClockCollectionViewDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)cellHeight;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)deleteCell:(id)cell;
- (void)handleContentSizeChange;
- (void)handleScrollEnd;
- (void)removeCityAtIndexPath:(id)path;
- (void)saveLastIndexPath;
- (void)scrollToPageContainingIndexPath:(id)path animated:(BOOL)animated;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)setEditing:(BOOL)editing;
- (void)updateCollectionViewLayout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation MTAWorldClockCollectionViewController

- (MTAWorldClockCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  v8.receiver = self;
  v8.super_class = MTAWorldClockCollectionViewController;
  v3 = [(MTAWorldClockCollectionViewController *)&v8 initWithCollectionViewLayout:layout];
  v4 = v3;
  if (v3)
  {
    v3->_cellHeight = -1.0;
    traitCollection = [(MTAWorldClockCollectionViewController *)v3 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    v4->_cellPadding = v6;
  }

  return v4;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = MTAWorldClockCollectionViewController;
  [(MTAWorldClockCollectionViewController *)&v8 viewDidLoad];
  collectionView = [(MTAWorldClockCollectionViewController *)self collectionView];
  [collectionView setPagingEnabled:0];

  collectionView2 = [(MTAWorldClockCollectionViewController *)self collectionView];
  [collectionView2 setShowsVerticalScrollIndicator:0];

  collectionView3 = [(MTAWorldClockCollectionViewController *)self collectionView];
  [collectionView3 setShowsHorizontalScrollIndicator:0];

  collectionView4 = [(MTAWorldClockCollectionViewController *)self collectionView];
  [collectionView4 setIndicatorStyle:2];

  collectionView5 = [(MTAWorldClockCollectionViewController *)self collectionView];
  [collectionView5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"WorldClockCollectionCellTileReuseIdentifier"];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MTAWorldClockCollectionViewController;
  [(MTAWorldClockCollectionViewController *)&v4 viewDidAppear:appear];
  [(MTAWorldClockCollectionViewController *)self setInstallsStandardGestureForInteractiveMovement:1];
}

- (void)handleContentSizeChange
{
  self->_cellHeight = -1.0;
  [(MTAWorldClockCollectionViewController *)self updateCollectionViewLayout];
  collectionViewLayout = [(MTAWorldClockCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)updateCollectionViewLayout
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 orientation] - 3;

  v5 = +[UIApplication sharedApplication];
  category = [v5 preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(category);
  v7 = UIContentSizeCategoryCompareToCategory(category, UIContentSizeCategoryAccessibilityLarge);
  v8 = 2;
  if (!IsAccessibilityCategory)
  {
    v8 = 3;
  }

  if (v7 == NSOrderedDescending)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (IsAccessibilityCategory)
  {
    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v10 _scaledValueForValue:150.0];
    v12 = v11;
  }

  else
  {
    v12 = 225.0;
  }

  if (v4 >= 2)
  {
    v16 = v9;
  }

  else
  {
    view = [(MTAWorldClockCollectionViewController *)self view];
    [view bounds];
    v15 = v14 / v12;
    v16 = floorf(v15);
  }

  collectionViewLayout = [(MTAWorldClockCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout setColumnsPerPage:v16];
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  v15.receiver = self;
  v15.super_class = MTAWorldClockCollectionViewController;
  [(MTAWorldClockCollectionViewController *)&v15 setEditing:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  collectionView = [(MTAWorldClockCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v7 = [visibleCells countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v11 + 1) + 8 * v10) setEditing:editingCopy animated:1];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [visibleCells countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)scrollToPageContainingIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  collectionView = [(MTAWorldClockCollectionViewController *)self collectionView];
  [collectionView scrollToItemAtIndexPath:pathCopy atScrollPosition:0 animated:animatedCopy];
}

- (double)cellHeight
{
  result = self->_cellHeight;
  if (result < 0.0)
  {
    +[MTAWorldClockCollectionCell preferredHeight];
    self->_cellHeight = result;
  }

  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [WorldClockManager sharedManager:view];
  cities = [v4 cities];
  v6 = [cities count];

  return v6;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view dequeueReusableCellWithReuseIdentifier:@"WorldClockCollectionCellTileReuseIdentifier" forIndexPath:pathCopy];
  v7 = +[WorldClockManager sharedManager];
  cities = [v7 cities];
  v9 = [pathCopy row];

  v10 = [cities objectAtIndex:v9];
  [v6 setCity:v10];

  city = [v6 city];
  name = [city name];
  [v6 setAccessibilityIdentifier:name];

  [v6 start];

  return v6;
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  v8 = [path row];
  v9 = [indexPathCopy row];
  v10 = +[WorldClockManager sharedManager];
  [v10 moveCityFromIndex:v8 toIndex:v9];
  [(MTAWorldClockCollectionViewController *)self scrollToPageContainingIndexPath:indexPathCopy animated:1];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy start];
  [cellCopy setDelegate:self];
  [cellCopy setEditing:{-[MTAWorldClockCollectionViewController isEditing](self, "isEditing")}];
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy stop];
  [cellCopy setDelegate:0];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  view = [(MTAWorldClockCollectionViewController *)self view];
  [view frame];
  v9 = v8;
  v11 = v10;

  width = CGSizeZero.width;
  height = CGSizeZero.height;
  v14 = v9 == CGSizeZero.width && v11 == height;
  if (v14 || ![layoutCopy columnsPerPage])
  {
    v22 = MTLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543618;
      selfCopy = self;
      v28 = 2048;
      columnsPerPage = [layoutCopy columnsPerPage];
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Either collectionViewSize or columnsPerPage: %lu is 0", &v26, 0x16u);
    }
  }

  else
  {
    [(MTAWorldClockCollectionViewController *)self cellPadding];
    v16 = v15;
    v17 = ([layoutCopy columnsPerPage] - 1);
    [(MTAWorldClockCollectionViewController *)self cellPadding];
    v19 = v18 * v17 + v16 * 2.0;
    if ([layoutCopy scrollDirection] == 1)
    {
      [layoutCopy columnsPerPage];
      [layoutCopy columnsPerPage];
      [(MTAWorldClockCollectionViewController *)self cellPadding];
      collectionView = [(MTAWorldClockCollectionViewController *)self collectionView];
      UIFloorToViewScale();
      width = v21;
    }

    else
    {
      width = (v9 - v19) / [layoutCopy columnsPerPage];
    }

    [(MTAWorldClockCollectionViewController *)self cellHeight];
    height = v23;
  }

  v24 = width;
  v25 = height;
  result.height = v25;
  result.width = v24;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  [(MTAWorldClockCollectionViewController *)self cellPadding:view];
  v7 = v6;
  [(MTAWorldClockCollectionViewController *)self cellPadding];
  v9 = v8;
  v10 = 0.0;
  v11 = 0.0;
  v12 = v7;
  result.right = v9;
  result.bottom = v11;
  result.left = v12;
  result.top = v10;
  return result;
}

- (void)deleteCell:(id)cell
{
  cellCopy = cell;
  collectionView = [(MTAWorldClockCollectionViewController *)self collectionView];
  v6 = [collectionView indexPathForCell:cellCopy];

  [(MTAWorldClockCollectionViewController *)self removeCityAtIndexPath:v6];
}

- (void)removeCityAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = +[WorldClockManager sharedManager];
  cities = [v5 cities];
  v7 = [cities objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  [v5 removeCityAtIndex:{objc_msgSend(pathCopy, "row")}];
  [v5 saveCities];
  collectionView = [(MTAWorldClockCollectionViewController *)self collectionView];
  v12 = pathCopy;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  [collectionView deleteItemsAtIndexPaths:v9];

  delegate = [(MTAWorldClockCollectionViewController *)self delegate];
  collectionView2 = [(MTAWorldClockCollectionViewController *)self collectionView];
  [delegate collectionView:collectionView2 didRemoveCity:v7];

  [MTAnalytics incrementEventCount:kMTCAWorldClockRemoves];
}

- (void)handleScrollEnd
{
  [(MTAWorldClockCollectionViewController *)self saveLastIndexPath];
  collectionViewLayout = [(MTAWorldClockCollectionViewController *)self collectionViewLayout];
  scrollDirection = [collectionViewLayout scrollDirection];

  if (scrollDirection)
  {
    collectionView = [(MTAWorldClockCollectionViewController *)self collectionView];
    [collectionView contentOffset];
    [collectionView frame];
    view = [(MTAWorldClockCollectionViewController *)self view];
    mtui_isRTL = [view mtui_isRTL];

    if (mtui_isRTL)
    {
      v7 = +[WorldClockManager sharedManager];
      cities = [v7 cities];
      [cities count];
    }
  }
}

- (void)saveLastIndexPath
{
  collectionView = [(MTAWorldClockCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002C7FC;
  v13[3] = &unk_1000AE260;
  v13[4] = self;
  v5 = [visibleCells na_map:v13];

  v6 = [NSSortDescriptor sortDescriptorWithKey:@"row" ascending:1];
  v14 = v6;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];
  lastObject = [v8 lastObject];

  v10 = +[MTAStateStore shared];
  v11 = [MTAStateStoreEvent eventWithType:4 indexPath:lastObject];
  [v10 pushEvent:v11];

  v12 = +[MTAStateStore shared];
  [v12 synchronize];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(MTAWorldClockCollectionViewController *)self handleScrollEnd];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"DidPageWorldClock_PPT" object:0];
}

- (MTAWorldClockCollectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end