@interface MTAWorldClockCollectionViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (MTAWorldClockCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (MTAWorldClockCollectionViewDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)cellHeight;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)deleteCell:(id)a3;
- (void)handleContentSizeChange;
- (void)handleScrollEnd;
- (void)removeCityAtIndexPath:(id)a3;
- (void)saveLastIndexPath;
- (void)scrollToPageContainingIndexPath:(id)a3 animated:(BOOL)a4;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)updateCollectionViewLayout;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MTAWorldClockCollectionViewController

- (MTAWorldClockCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  v8.receiver = self;
  v8.super_class = MTAWorldClockCollectionViewController;
  v3 = [(MTAWorldClockCollectionViewController *)&v8 initWithCollectionViewLayout:a3];
  v4 = v3;
  if (v3)
  {
    v3->_cellHeight = -1.0;
    v5 = [(MTAWorldClockCollectionViewController *)v3 traitCollection];
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
  v3 = [(MTAWorldClockCollectionViewController *)self collectionView];
  [v3 setPagingEnabled:0];

  v4 = [(MTAWorldClockCollectionViewController *)self collectionView];
  [v4 setShowsVerticalScrollIndicator:0];

  v5 = [(MTAWorldClockCollectionViewController *)self collectionView];
  [v5 setShowsHorizontalScrollIndicator:0];

  v6 = [(MTAWorldClockCollectionViewController *)self collectionView];
  [v6 setIndicatorStyle:2];

  v7 = [(MTAWorldClockCollectionViewController *)self collectionView];
  [v7 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"WorldClockCollectionCellTileReuseIdentifier"];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MTAWorldClockCollectionViewController;
  [(MTAWorldClockCollectionViewController *)&v4 viewDidAppear:a3];
  [(MTAWorldClockCollectionViewController *)self setInstallsStandardGestureForInteractiveMovement:1];
}

- (void)handleContentSizeChange
{
  self->_cellHeight = -1.0;
  [(MTAWorldClockCollectionViewController *)self updateCollectionViewLayout];
  v3 = [(MTAWorldClockCollectionViewController *)self collectionViewLayout];
  [v3 invalidateLayout];
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
    v13 = [(MTAWorldClockCollectionViewController *)self view];
    [v13 bounds];
    v15 = v14 / v12;
    v16 = floorf(v15);
  }

  v17 = [(MTAWorldClockCollectionViewController *)self collectionViewLayout];
  [v17 setColumnsPerPage:v16];
}

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  v15.receiver = self;
  v15.super_class = MTAWorldClockCollectionViewController;
  [(MTAWorldClockCollectionViewController *)&v15 setEditing:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(MTAWorldClockCollectionViewController *)self collectionView];
  v6 = [v5 visibleCells];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) setEditing:v3 animated:1];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)scrollToPageContainingIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MTAWorldClockCollectionViewController *)self collectionView];
  [v7 scrollToItemAtIndexPath:v6 atScrollPosition:0 animated:v4];
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

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [WorldClockManager sharedManager:a3];
  v5 = [v4 cities];
  v6 = [v5 count];

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 dequeueReusableCellWithReuseIdentifier:@"WorldClockCollectionCellTileReuseIdentifier" forIndexPath:v5];
  v7 = +[WorldClockManager sharedManager];
  v8 = [v7 cities];
  v9 = [v5 row];

  v10 = [v8 objectAtIndex:v9];
  [v6 setCity:v10];

  v11 = [v6 city];
  v12 = [v11 name];
  [v6 setAccessibilityIdentifier:v12];

  [v6 start];

  return v6;
}

- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = a5;
  v8 = [a4 row];
  v9 = [v7 row];
  v10 = +[WorldClockManager sharedManager];
  [v10 moveCityFromIndex:v8 toIndex:v9];
  [(MTAWorldClockCollectionViewController *)self scrollToPageContainingIndexPath:v7 animated:1];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = a4;
  [v6 start];
  [v6 setDelegate:self];
  [v6 setEditing:{-[MTAWorldClockCollectionViewController isEditing](self, "isEditing")}];
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v5 = a4;
  [v5 stop];
  [v5 setDelegate:0];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a4;
  v7 = [(MTAWorldClockCollectionViewController *)self view];
  [v7 frame];
  v9 = v8;
  v11 = v10;

  width = CGSizeZero.width;
  height = CGSizeZero.height;
  v14 = v9 == CGSizeZero.width && v11 == height;
  if (v14 || ![v6 columnsPerPage])
  {
    v22 = MTLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543618;
      v27 = self;
      v28 = 2048;
      v29 = [v6 columnsPerPage];
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Either collectionViewSize or columnsPerPage: %lu is 0", &v26, 0x16u);
    }
  }

  else
  {
    [(MTAWorldClockCollectionViewController *)self cellPadding];
    v16 = v15;
    v17 = ([v6 columnsPerPage] - 1);
    [(MTAWorldClockCollectionViewController *)self cellPadding];
    v19 = v18 * v17 + v16 * 2.0;
    if ([v6 scrollDirection] == 1)
    {
      [v6 columnsPerPage];
      [v6 columnsPerPage];
      [(MTAWorldClockCollectionViewController *)self cellPadding];
      v20 = [(MTAWorldClockCollectionViewController *)self collectionView];
      UIFloorToViewScale();
      width = v21;
    }

    else
    {
      width = (v9 - v19) / [v6 columnsPerPage];
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

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  [(MTAWorldClockCollectionViewController *)self cellPadding:a3];
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

- (void)deleteCell:(id)a3
{
  v4 = a3;
  v5 = [(MTAWorldClockCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  [(MTAWorldClockCollectionViewController *)self removeCityAtIndexPath:v6];
}

- (void)removeCityAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = +[WorldClockManager sharedManager];
  v6 = [v5 cities];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

  [v5 removeCityAtIndex:{objc_msgSend(v4, "row")}];
  [v5 saveCities];
  v8 = [(MTAWorldClockCollectionViewController *)self collectionView];
  v12 = v4;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  [v8 deleteItemsAtIndexPaths:v9];

  v10 = [(MTAWorldClockCollectionViewController *)self delegate];
  v11 = [(MTAWorldClockCollectionViewController *)self collectionView];
  [v10 collectionView:v11 didRemoveCity:v7];

  [MTAnalytics incrementEventCount:kMTCAWorldClockRemoves];
}

- (void)handleScrollEnd
{
  [(MTAWorldClockCollectionViewController *)self saveLastIndexPath];
  v3 = [(MTAWorldClockCollectionViewController *)self collectionViewLayout];
  v4 = [v3 scrollDirection];

  if (v4)
  {
    v9 = [(MTAWorldClockCollectionViewController *)self collectionView];
    [v9 contentOffset];
    [v9 frame];
    v5 = [(MTAWorldClockCollectionViewController *)self view];
    v6 = [v5 mtui_isRTL];

    if (v6)
    {
      v7 = +[WorldClockManager sharedManager];
      v8 = [v7 cities];
      [v8 count];
    }
  }
}

- (void)saveLastIndexPath
{
  v3 = [(MTAWorldClockCollectionViewController *)self collectionView];
  v4 = [v3 visibleCells];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002C7FC;
  v13[3] = &unk_1000AE260;
  v13[4] = self;
  v5 = [v4 na_map:v13];

  v6 = [NSSortDescriptor sortDescriptorWithKey:@"row" ascending:1];
  v14 = v6;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];
  v9 = [v8 lastObject];

  v10 = +[MTAStateStore shared];
  v11 = [MTAStateStoreEvent eventWithType:4 indexPath:v9];
  [v10 pushEvent:v11];

  v12 = +[MTAStateStore shared];
  [v12 synchronize];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(MTAWorldClockCollectionViewController *)self handleScrollEnd];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
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