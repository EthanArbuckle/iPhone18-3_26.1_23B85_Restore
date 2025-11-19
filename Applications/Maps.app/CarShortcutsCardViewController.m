@interface CarShortcutsCardViewController
- (BOOL)_scrollsIfUsingCompactLayout:(BOOL)a3;
- (BOOL)_useCompactLayout;
- (CGSize)_cellSizeUsingCompactLayout:(BOOL)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CarShortcutsCardViewController)init;
- (CarShortcutsCardViewControllerDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)_preferredHeightUsingCompactLayout:(BOOL)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (int64_t)_numberOfItems;
- (int64_t)_numberOfRows;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_captureTapActionWithFavoriteItem:(id)a3;
- (void)_captureTapActionWithShortcut:(id)a3;
- (void)_updateHeightConstraint;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)homeDataProvidingObjectDidUpdate:(id)a3;
- (void)setCanBeExpanded:(BOOL)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setShouldBeVisible:(BOOL)a3;
- (void)shortcutsProviderUpdated:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CarShortcutsCardViewController

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = CarShortcutsCardViewController;
  [(CarShortcutsCardViewController *)&v7 viewDidLayoutSubviews];
  [(CarShortcutsCardViewController *)self _cellSizeUsingCompactLayout:[(CarShortcutsCardViewController *)self _useCompactLayout]];
  if (v3 != self->_cellSize.width || v4 != self->_cellSize.height)
  {
    self->_cellSize.width = v3;
    self->_cellSize.height = v4;
    [(CarCollectionView *)self->_collectionView reloadData];
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000904CC;
  v6[3] = &unk_101661B18;
  v6[4] = self;
  [UIView performWithoutAnimation:v6];
}

- (BOOL)_useCompactLayout
{
  if ([(CarShortcutsCardViewController *)self expanded])
  {
    return 0;
  }

  return [(CarShortcutsCardViewController *)self _scrollsIfUsingCompactLayout:0];
}

- (int64_t)_numberOfRows
{
  v2 = [(CarShortcutsCardViewController *)self _numberOfItems];
  if ((v2 & 0x8000000000000001) == 1)
  {
    return v2 / 2 + 1;
  }

  else
  {
    return v2 / 2;
  }
}

- (int64_t)_numberOfItems
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v3 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v4 = [v3 shortcutsForCarplay];
    v5 = [v4 count];
  }

  else
  {
    v3 = [(CarShortcutsProvider *)self->_shortcutsProvider shortcuts];
    v5 = [v3 count];
  }

  v6 = 2;
  if (v5 < 2)
  {
    v6 = v5;
  }

  if (self->_expanded)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

- (CarShortcutsCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_applicationDidEnterBackground:(id)a3
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v5 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    [v5 unregisterObserver:self];
  }

  else
  {
    shortcutsProvider = self->_shortcutsProvider;

    [(CarShortcutsProvider *)shortcutsProvider stop];
  }
}

- (void)_applicationWillEnterForeground:(id)a3
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v5 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    [v5 registerObserver:self];
  }

  else
  {
    shortcutsProvider = self->_shortcutsProvider;

    [(CarShortcutsProvider *)shortcutsProvider start];
  }
}

- (void)_captureTapActionWithFavoriteItem:(id)a3
{
  v7 = a3;
  v3 = [v7 type];
  if (v3 == 1)
  {
    v5 = [v7 geoMapItem];
    v6 = [v5 _mapsCategoryId];
    [GEOAPPortal captureUserAction:2049 target:1005 value:v6];
  }

  else
  {
    if (v3 == 3)
    {
      v4 = 2047;
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_8;
      }

      v4 = 2046;
    }

    [GEOAPPortal captureUserAction:v4 target:1005 value:0];
  }

LABEL_8:
}

- (void)_captureTapActionWithShortcut:(id)a3
{
  v7 = a3;
  v3 = [v7 type];
  if (v3 == 18)
  {
    v5 = [v7 geoMapItem];
    v6 = [v5 _mapsCategoryId];

    [GEOAPPortal captureUserAction:2049 target:1005 value:v6];
  }

  else
  {
    if (v3 == 2)
    {
      v4 = 2047;
    }

    else
    {
      if (v3 != 1)
      {
        goto LABEL_8;
      }

      v4 = 2046;
    }

    [GEOAPPortal captureUserAction:v4 target:1005 value:0];
  }

LABEL_8:
}

- (NSArray)focusOrderSubItems
{
  if ([(CarShortcutsCardViewController *)self shouldBeVisible])
  {
    v3 = [(CarCollectionView *)self->_collectionView visibleCells];
    v4 = [(CarShortcutsCardViewController *)self _sortCells:v3];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  if ([(CarShortcutsCardViewController *)self shouldBeVisible])
  {
    v3 = [NSIndexPath indexPathForRow:0 inSection:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v6 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v7 = [v6 shortcutsForCarplay];
    v8 = [v5 row];

    v13 = [v7 objectAtIndexedSubscript:v8];

    v9 = +[CarChromeModeCoordinator sharedInstance];
    [v9 displayRoutePlanningForDestination:v13];

    [(CarShortcutsCardViewController *)self _captureTapActionWithFavoriteItem:v13];
  }

  else
  {
    v10 = [(CarShortcutsProvider *)self->_shortcutsProvider shortcuts];
    v11 = [v5 row];

    v13 = [v10 objectAtIndexedSubscript:v11];

    v12 = +[CarChromeModeCoordinator sharedInstance];
    [v12 displayRoutePlanningForDestination:v13];

    [(CarShortcutsCardViewController *)self _captureTapActionWithShortcut:v13];
  }
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  [CarShortcutCollectionViewCell focusRingTopOverhang:a3];
  v6 = 10.0;
  v7 = 0.0;
  v8 = 10.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = [(CarShortcutsCardViewController *)self _useCompactLayout:a3];

  [(CarShortcutsCardViewController *)self _cellSizeUsingCompactLayout:v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CarShortcutsCardViewController *)self _useCompactLayout];
  v9 = off_1015F6160;
  if (!v8)
  {
    v9 = off_1015F6158;
  }

  v10 = [(__objc2_class *)*v9 cellReuseIdentifier];
  v11 = [v7 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v6];

  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v12 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v13 = [v12 shortcutsForCarplay];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    v15 = [[SuggestionShortcutsRowCellModel alloc] initWithMapsFavoriteItem:v14];
  }

  else
  {
    v16 = [(CarShortcutsProvider *)self->_shortcutsProvider shortcuts];
    v14 = [v16 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    v15 = [[SuggestionShortcutsRowCellModel alloc] initWithMapsSuggestionsEntry:v14];
  }

  v17 = v15;

  [v11 setModel:v17];

  return v11;
}

- (void)homeDataProvidingObjectDidUpdate:(id)a3
{
  v4 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
  v5 = [v4 shortcutsForCarplay];
  -[CarShortcutsCardViewController setShouldBeVisible:](self, "setShouldBeVisible:", [v5 count] != 0);

  v6 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
  v7 = [v6 shortcutsForCarplay];
  -[CarShortcutsCardViewController setCanBeExpanded:](self, "setCanBeExpanded:", [v7 count] > 2);

  [(CarShortcutsCardViewController *)self _updateHeightConstraint];
  collectionView = self->_collectionView;

  [(CarCollectionView *)collectionView reloadData];
}

- (void)shortcutsProviderUpdated:(id)a3
{
  v4 = a3;
  v5 = [v4 shortcuts];
  -[CarShortcutsCardViewController setShouldBeVisible:](self, "setShouldBeVisible:", [v5 count] != 0);

  v6 = [v4 shortcuts];

  -[CarShortcutsCardViewController setCanBeExpanded:](self, "setCanBeExpanded:", [v6 count] > 2);
  [(CarShortcutsCardViewController *)self _updateHeightConstraint];
  collectionView = self->_collectionView;

  [(CarCollectionView *)collectionView reloadData];
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = CarShortcutsCardViewController;
  v4 = a3;
  [(CarShortcutsCardViewController *)&v11 traitCollectionDidChange:v4];
  v5 = [(CarShortcutsCardViewController *)self traitCollection:v11.receiver];
  [v5 displayScale];
  v7 = v6;
  [v4 displayScale];
  v9 = v8;

  if (v7 != v9)
  {
    [(CarShortcutsCardViewController *)self _updateHeightConstraint];
    v10 = [(CarCollectionView *)self->_collectionView collectionViewLayout];
    [v10 invalidateLayout];
  }
}

- (BOOL)_scrollsIfUsingCompactLayout:(BOOL)a3
{
  v3 = a3;
  +[CarShortcutCollectionViewCell focusRingTopOverhang];
  v6 = v5;
  [(CarShortcutsCardViewController *)self _preferredHeightUsingCompactLayout:v3];
  v8 = v7;
  [(CarCollectionView *)self->_collectionView bounds];
  return v8 > CGRectGetHeight(v10) - v6;
}

- (CGSize)_cellSizeUsingCompactLayout:(BOOL)a3
{
  v4 = off_1015F6160;
  if (!a3)
  {
    v4 = off_1015F6158;
  }

  v5 = *v4;
  v6 = [(CarShortcutsCardViewController *)self traitCollection];
  [(__objc2_class *)v5 cellSizeWithTraitCollection:v6];
  v8 = v7;

  [(CarCollectionView *)self->_collectionView bounds];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectGetWidth(v16) + -32.0 >= 0.0)
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    CGRectGetWidth(v17);
  }

  UIFloorToViewScale();
  v14 = v8;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)setCanBeExpanded:(BOOL)a3
{
  if (self->_canBeExpanded != a3)
  {
    self->_canBeExpanded = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained carShortcutsCardViewController:self canBeExpandedUpdated:self->_canBeExpanded];
  }
}

- (void)setShouldBeVisible:(BOOL)a3
{
  if (self->_shouldBeVisible != a3)
  {
    self->_shouldBeVisible = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained carShortcutsCardViewController:self visibilityUpdated:self->_shouldBeVisible];
  }
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    self->_expanded = a3;
    [(CarCollectionView *)self->_collectionView setScrollEnabled:?];
    [(CarShortcutsCardViewController *)self _updateHeightConstraint];
    collectionView = self->_collectionView;

    [(CarCollectionView *)collectionView reloadData];
  }
}

- (void)_updateHeightConstraint
{
  [(CarShortcutsCardViewController *)self _preferredHeightUsingCompactLayout:0];
  collectionHeight = self->_collectionHeight;

  [(NSLayoutConstraint *)collectionHeight setConstant:?];
}

- (double)_preferredHeightUsingCompactLayout:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarShortcutsCardViewController *)self _numberOfRows];
  if (v5 < 1)
  {
    return 0.0;
  }

  v6 = v5;
  [(CarShortcutsCardViewController *)self _cellSizeUsingCompactLayout:v3];
  return (v7 + 12.0) * v6 + -12.0;
}

- (void)dealloc
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v3 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    [v3 unregisterObserver:self];
  }

  else
  {
    [(CarShortcutsProvider *)self->_shortcutsProvider stop];
  }

  v4.receiver = self;
  v4.super_class = CarShortcutsCardViewController;
  [(CarShortcutsCardViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = CarShortcutsCardViewController;
  [(CarShortcutsCardViewController *)&v38 viewDidLoad];
  v3 = [(CarShortcutsCardViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CarShortcutsCard"];

  v4 = objc_alloc_init(UICollectionViewFlowLayout);
  [v4 setMinimumLineSpacing:12.0];
  [v4 setMinimumInteritemSpacing:10.0];
  v37 = v4;
  [v4 setScrollDirection:0];
  v5 = [[CarCollectionView alloc] initWithFrame:v4 collectionViewLayout:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CarCollectionView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[UIColor clearColor];
  [(CarCollectionView *)v5 setBackgroundColor:v6];

  v7 = objc_opt_class();
  v8 = +[(ShortcutsRowCollectionViewCell *)CarShortcutCollectionViewCell];
  [(CarCollectionView *)v5 registerClass:v7 forCellWithReuseIdentifier:v8];

  v9 = objc_opt_class();
  v10 = +[(ShortcutsRowCollectionViewCell *)CarShortcutCompactCollectionViewCell];
  [(CarCollectionView *)v5 registerClass:v9 forCellWithReuseIdentifier:v10];

  [(CarCollectionView *)v5 setScrollEnabled:self->_expanded];
  v11 = [(CarShortcutsCardViewController *)self view];
  [v11 addSubview:v5];

  collectionView = self->_collectionView;
  self->_collectionView = v5;
  v13 = v5;

  v14 = [(CarShortcutsCardViewController *)self view];
  v15 = [v14 heightAnchor];
  v16 = [v15 constraintEqualToConstant:0.0];
  collectionHeight = self->_collectionHeight;
  self->_collectionHeight = v16;

  LODWORD(v18) = 1144750080;
  [(NSLayoutConstraint *)self->_collectionHeight setPriority:v18];
  [(CarShortcutsCardViewController *)self _updateHeightConstraint];
  v39[0] = self->_collectionHeight;
  v35 = [(CarCollectionView *)v13 topAnchor];
  v36 = [(CarShortcutsCardViewController *)self view];
  v34 = [v36 topAnchor];
  +[CarShortcutCollectionViewCell focusRingTopOverhang];
  v33 = [v35 constraintEqualToAnchor:v34 constant:-v19];
  v39[1] = v33;
  v31 = [(CarCollectionView *)v13 leadingAnchor];
  v32 = [(CarShortcutsCardViewController *)self view];
  v30 = [v32 leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v39[2] = v29;
  v28 = [(CarShortcutsCardViewController *)self view];
  v20 = [v28 trailingAnchor];
  v21 = [(CarCollectionView *)v13 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v39[3] = v22;
  v23 = [(CarShortcutsCardViewController *)self view];
  v24 = [v23 bottomAnchor];
  v25 = [(CarCollectionView *)v13 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v39[4] = v26;
  v27 = [NSArray arrayWithObjects:v39 count:5];
  [NSLayoutConstraint activateConstraints:v27];

  [(CarCollectionView *)v13 setDataSource:self];
  [(CarCollectionView *)v13 setDelegate:self];
}

- (CarShortcutsCardViewController)init
{
  v14.receiver = self;
  v14.super_class = CarShortcutsCardViewController;
  v2 = [(CarShortcutsCardViewController *)&v14 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    [(CarShortcutsCardViewController *)v2 setShouldBeVisible:0];
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v4 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
      [v4 registerObserver:v3];

      v5 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
      v6 = [v5 shortcutsForCarplay];
      -[CarShortcutsCardViewController setShouldBeVisible:](v3, "setShouldBeVisible:", [v6 count] != 0);

      v7 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
      v8 = [v7 shortcutsForCarplay];
      -[CarShortcutsCardViewController setCanBeExpanded:](v3, "setCanBeExpanded:", [v8 count] > 2);
    }

    else
    {
      v9 = objc_alloc_init(CarShortcutsProvider);
      shortcutsProvider = v3->_shortcutsProvider;
      v3->_shortcutsProvider = v9;

      [(CarShortcutsProvider *)v3->_shortcutsProvider setDelegate:v3];
      [(CarShortcutsProvider *)v3->_shortcutsProvider start];
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v3 selector:"_applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v3 selector:"_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];
  }

  return v3;
}

@end