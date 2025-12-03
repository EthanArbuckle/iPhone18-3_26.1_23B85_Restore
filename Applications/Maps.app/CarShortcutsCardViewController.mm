@interface CarShortcutsCardViewController
- (BOOL)_scrollsIfUsingCompactLayout:(BOOL)layout;
- (BOOL)_useCompactLayout;
- (CGSize)_cellSizeUsingCompactLayout:(BOOL)layout;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CarShortcutsCardViewController)init;
- (CarShortcutsCardViewControllerDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)_preferredHeightUsingCompactLayout:(BOOL)layout;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (int64_t)_numberOfItems;
- (int64_t)_numberOfRows;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_captureTapActionWithFavoriteItem:(id)item;
- (void)_captureTapActionWithShortcut:(id)shortcut;
- (void)_updateHeightConstraint;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)homeDataProvidingObjectDidUpdate:(id)update;
- (void)setCanBeExpanded:(BOOL)expanded;
- (void)setExpanded:(BOOL)expanded;
- (void)setShouldBeVisible:(BOOL)visible;
- (void)shortcutsProviderUpdated:(id)updated;
- (void)traitCollectionDidChange:(id)change;
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
  _numberOfItems = [(CarShortcutsCardViewController *)self _numberOfItems];
  if ((_numberOfItems & 0x8000000000000001) == 1)
  {
    return _numberOfItems / 2 + 1;
  }

  else
  {
    return _numberOfItems / 2;
  }
}

- (int64_t)_numberOfItems
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    shortcuts = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    shortcutsForCarplay = [shortcuts shortcutsForCarplay];
    v5 = [shortcutsForCarplay count];
  }

  else
  {
    shortcuts = [(CarShortcutsProvider *)self->_shortcutsProvider shortcuts];
    v5 = [shortcuts count];
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

- (void)_applicationDidEnterBackground:(id)background
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

- (void)_applicationWillEnterForeground:(id)foreground
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

- (void)_captureTapActionWithFavoriteItem:(id)item
{
  itemCopy = item;
  type = [itemCopy type];
  if (type == 1)
  {
    geoMapItem = [itemCopy geoMapItem];
    _mapsCategoryId = [geoMapItem _mapsCategoryId];
    [GEOAPPortal captureUserAction:2049 target:1005 value:_mapsCategoryId];
  }

  else
  {
    if (type == 3)
    {
      v4 = 2047;
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_8;
      }

      v4 = 2046;
    }

    [GEOAPPortal captureUserAction:v4 target:1005 value:0];
  }

LABEL_8:
}

- (void)_captureTapActionWithShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  type = [shortcutCopy type];
  if (type == 18)
  {
    geoMapItem = [shortcutCopy geoMapItem];
    _mapsCategoryId = [geoMapItem _mapsCategoryId];

    [GEOAPPortal captureUserAction:2049 target:1005 value:_mapsCategoryId];
  }

  else
  {
    if (type == 2)
    {
      v4 = 2047;
    }

    else
    {
      if (type != 1)
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
    visibleCells = [(CarCollectionView *)self->_collectionView visibleCells];
    v4 = [(CarShortcutsCardViewController *)self _sortCells:visibleCells];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v6 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    shortcutsForCarplay = [v6 shortcutsForCarplay];
    v8 = [pathCopy row];

    v13 = [shortcutsForCarplay objectAtIndexedSubscript:v8];

    v9 = +[CarChromeModeCoordinator sharedInstance];
    [v9 displayRoutePlanningForDestination:v13];

    [(CarShortcutsCardViewController *)self _captureTapActionWithFavoriteItem:v13];
  }

  else
  {
    shortcuts = [(CarShortcutsProvider *)self->_shortcutsProvider shortcuts];
    v11 = [pathCopy row];

    v13 = [shortcuts objectAtIndexedSubscript:v11];

    v12 = +[CarChromeModeCoordinator sharedInstance];
    [v12 displayRoutePlanningForDestination:v13];

    [(CarShortcutsCardViewController *)self _captureTapActionWithShortcut:v13];
  }
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  [CarShortcutCollectionViewCell focusRingTopOverhang:view];
  v6 = 10.0;
  v7 = 0.0;
  v8 = 10.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = [(CarShortcutsCardViewController *)self _useCompactLayout:view];

  [(CarShortcutsCardViewController *)self _cellSizeUsingCompactLayout:v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  _useCompactLayout = [(CarShortcutsCardViewController *)self _useCompactLayout];
  v9 = off_1015F6160;
  if (!_useCompactLayout)
  {
    v9 = off_1015F6158;
  }

  cellReuseIdentifier = [(__objc2_class *)*v9 cellReuseIdentifier];
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:cellReuseIdentifier forIndexPath:pathCopy];

  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v12 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    shortcutsForCarplay = [v12 shortcutsForCarplay];
    v14 = [shortcutsForCarplay objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v15 = [[SuggestionShortcutsRowCellModel alloc] initWithMapsFavoriteItem:v14];
  }

  else
  {
    shortcuts = [(CarShortcutsProvider *)self->_shortcutsProvider shortcuts];
    v14 = [shortcuts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v15 = [[SuggestionShortcutsRowCellModel alloc] initWithMapsSuggestionsEntry:v14];
  }

  v17 = v15;

  [v11 setModel:v17];

  return v11;
}

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  v4 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
  shortcutsForCarplay = [v4 shortcutsForCarplay];
  -[CarShortcutsCardViewController setShouldBeVisible:](self, "setShouldBeVisible:", [shortcutsForCarplay count] != 0);

  v6 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
  shortcutsForCarplay2 = [v6 shortcutsForCarplay];
  -[CarShortcutsCardViewController setCanBeExpanded:](self, "setCanBeExpanded:", [shortcutsForCarplay2 count] > 2);

  [(CarShortcutsCardViewController *)self _updateHeightConstraint];
  collectionView = self->_collectionView;

  [(CarCollectionView *)collectionView reloadData];
}

- (void)shortcutsProviderUpdated:(id)updated
{
  updatedCopy = updated;
  shortcuts = [updatedCopy shortcuts];
  -[CarShortcutsCardViewController setShouldBeVisible:](self, "setShouldBeVisible:", [shortcuts count] != 0);

  shortcuts2 = [updatedCopy shortcuts];

  -[CarShortcutsCardViewController setCanBeExpanded:](self, "setCanBeExpanded:", [shortcuts2 count] > 2);
  [(CarShortcutsCardViewController *)self _updateHeightConstraint];
  collectionView = self->_collectionView;

  [(CarCollectionView *)collectionView reloadData];
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = CarShortcutsCardViewController;
  changeCopy = change;
  [(CarShortcutsCardViewController *)&v11 traitCollectionDidChange:changeCopy];
  v5 = [(CarShortcutsCardViewController *)self traitCollection:v11.receiver];
  [v5 displayScale];
  v7 = v6;
  [changeCopy displayScale];
  v9 = v8;

  if (v7 != v9)
  {
    [(CarShortcutsCardViewController *)self _updateHeightConstraint];
    collectionViewLayout = [(CarCollectionView *)self->_collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }
}

- (BOOL)_scrollsIfUsingCompactLayout:(BOOL)layout
{
  layoutCopy = layout;
  +[CarShortcutCollectionViewCell focusRingTopOverhang];
  v6 = v5;
  [(CarShortcutsCardViewController *)self _preferredHeightUsingCompactLayout:layoutCopy];
  v8 = v7;
  [(CarCollectionView *)self->_collectionView bounds];
  return v8 > CGRectGetHeight(v10) - v6;
}

- (CGSize)_cellSizeUsingCompactLayout:(BOOL)layout
{
  v4 = off_1015F6160;
  if (!layout)
  {
    v4 = off_1015F6158;
  }

  v5 = *v4;
  traitCollection = [(CarShortcutsCardViewController *)self traitCollection];
  [(__objc2_class *)v5 cellSizeWithTraitCollection:traitCollection];
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

- (void)setCanBeExpanded:(BOOL)expanded
{
  if (self->_canBeExpanded != expanded)
  {
    self->_canBeExpanded = expanded;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained carShortcutsCardViewController:self canBeExpandedUpdated:self->_canBeExpanded];
  }
}

- (void)setShouldBeVisible:(BOOL)visible
{
  if (self->_shouldBeVisible != visible)
  {
    self->_shouldBeVisible = visible;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained carShortcutsCardViewController:self visibilityUpdated:self->_shouldBeVisible];
  }
}

- (void)setExpanded:(BOOL)expanded
{
  if (self->_expanded != expanded)
  {
    self->_expanded = expanded;
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

- (double)_preferredHeightUsingCompactLayout:(BOOL)layout
{
  layoutCopy = layout;
  _numberOfRows = [(CarShortcutsCardViewController *)self _numberOfRows];
  if (_numberOfRows < 1)
  {
    return 0.0;
  }

  v6 = _numberOfRows;
  [(CarShortcutsCardViewController *)self _cellSizeUsingCompactLayout:layoutCopy];
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
  view = [(CarShortcutsCardViewController *)self view];
  [view setAccessibilityIdentifier:@"CarShortcutsCard"];

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
  view2 = [(CarShortcutsCardViewController *)self view];
  [view2 addSubview:v5];

  collectionView = self->_collectionView;
  self->_collectionView = v5;
  v13 = v5;

  view3 = [(CarShortcutsCardViewController *)self view];
  heightAnchor = [view3 heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:0.0];
  collectionHeight = self->_collectionHeight;
  self->_collectionHeight = v16;

  LODWORD(v18) = 1144750080;
  [(NSLayoutConstraint *)self->_collectionHeight setPriority:v18];
  [(CarShortcutsCardViewController *)self _updateHeightConstraint];
  v39[0] = self->_collectionHeight;
  topAnchor = [(CarCollectionView *)v13 topAnchor];
  view4 = [(CarShortcutsCardViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  +[CarShortcutCollectionViewCell focusRingTopOverhang];
  v33 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v19];
  v39[1] = v33;
  leadingAnchor = [(CarCollectionView *)v13 leadingAnchor];
  view5 = [(CarShortcutsCardViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v39[2] = v29;
  view6 = [(CarShortcutsCardViewController *)self view];
  trailingAnchor = [view6 trailingAnchor];
  trailingAnchor2 = [(CarCollectionView *)v13 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v39[3] = v22;
  view7 = [(CarShortcutsCardViewController *)self view];
  bottomAnchor = [view7 bottomAnchor];
  bottomAnchor2 = [(CarCollectionView *)v13 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
      shortcutsForCarplay = [v5 shortcutsForCarplay];
      -[CarShortcutsCardViewController setShouldBeVisible:](v3, "setShouldBeVisible:", [shortcutsForCarplay count] != 0);

      v7 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
      shortcutsForCarplay2 = [v7 shortcutsForCarplay];
      -[CarShortcutsCardViewController setCanBeExpanded:](v3, "setCanBeExpanded:", [shortcutsForCarplay2 count] > 2);
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