@interface SCATModernMenuSheetCollectionViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (NSString)description;
- (SCATModernMenuSheet)menuSheet;
- (SCATModernMenuSheetCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view menuItemForItemAtIndex:(unint64_t)index;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)adjustVisibleItemOffsetForPageBoundary;
- (void)reloadCollectionView;
- (void)showMoreItemsButtonWasActivated;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SCATModernMenuSheetCollectionViewController

- (SCATModernMenuSheetCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  v5.receiver = self;
  v5.super_class = SCATModernMenuSheetCollectionViewController;
  v3 = [(SCATModernMenuSheetCollectionViewController *)&v5 initWithCollectionViewLayout:layout];
  if (v3)
  {
    v3->_collectionViewCellClass = objc_opt_class();
  }

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  menuSheet = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  v6 = [NSString stringWithFormat:@"%@<%p>. sheet:%@", v4, self, menuSheet];

  return v6;
}

- (void)showMoreItemsButtonWasActivated
{
  collectionView = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  maxVisibleItems = [collectionViewLayout maxVisibleItems];
  menuSheet = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  menuItems = [menuSheet menuItems];
  v7 = [menuItems count];

  visibleItemOffset = [(SCATModernMenuSheetCollectionViewController *)self visibleItemOffset];
  menuSheet2 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  numberOfItemsInFirstPage = [menuSheet2 numberOfItemsInFirstPage];

  if (numberOfItemsInFirstPage)
  {
    v11 = visibleItemOffset == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = &maxVisibleItems[visibleItemOffset];
  if (v11)
  {
    v12 = numberOfItemsInFirstPage;
  }

  if (v12 >= v7)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  [(SCATModernMenuSheetCollectionViewController *)self setVisibleItemOffset:v13];
  [(SCATModernMenuSheetCollectionViewController *)self reloadCollectionView];
}

- (void)adjustVisibleItemOffsetForPageBoundary
{
  collectionView = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  maxVisibleItems = [collectionViewLayout maxVisibleItems];
  menuSheet = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  menuItems = [menuSheet menuItems];
  v7 = [menuItems count];

  visibleItemOffset = [(SCATModernMenuSheetCollectionViewController *)self visibleItemOffset];
  menuSheet2 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  numberOfItemsInFirstPage = [menuSheet2 numberOfItemsInFirstPage];

  v11 = 0;
  while (v11 < v7)
  {
    v12 = v11;
    if (numberOfItemsInFirstPage)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    v11 = &maxVisibleItems[v11];
    if (v13)
    {
      v11 = numberOfItemsInFirstPage;
    }

    v14 = visibleItemOffset - v12;
    if (visibleItemOffset - v12 < 0)
    {
      v14 = v12 - visibleItemOffset;
    }

    v15 = visibleItemOffset - v11;
    if (visibleItemOffset - v11 < 0)
    {
      v15 = v11 - visibleItemOffset;
    }

    if (v14 < v15 || v11 >= v7)
    {
      goto LABEL_20;
    }
  }

  v12 = visibleItemOffset;
LABEL_20:
  [(SCATModernMenuSheetCollectionViewController *)self setVisibleItemOffset:v12];
}

- (void)reloadCollectionView
{
  collectionView = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = SCATModernMenuSheetCollectionViewController;
  [(SCATModernMenuSheetCollectionViewController *)&v18 viewDidLoad];
  v3 = +[UIColor clearColor];
  collectionView = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  [collectionView setBackgroundColor:v3];

  collectionView2 = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  [collectionView2 setClipsToBounds:0];

  collectionView3 = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  [collectionView3 registerClass:-[SCATModernMenuSheetCollectionViewController collectionViewCellClass](self forCellWithReuseIdentifier:{"collectionViewCellClass"), @"SCATMenuItemCellID"}];

  v7 = [UIImage imageNamed:@"SCATIcon_border_selected"];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v11 = [v7 resizableImageWithCapInsets:1 resizingMode:{UIEdgeInsetsZero.top, left, bottom, right}];
  [(SCATModernMenuSheetCollectionViewController *)self setPressedBackgroundImage:v11];

  v12 = [UIImage imageNamed:@"SCATIcon_border"];
  v13 = [v12 resizableImageWithCapInsets:1 resizingMode:{UIEdgeInsetsZero.top, left, bottom, right}];
  [(SCATModernMenuSheetCollectionViewController *)self setDefaultBackgroundImage:v13];

  defaultBackgroundImage = [(SCATModernMenuSheetCollectionViewController *)self defaultBackgroundImage];
  v15 = +[SCATStyleProvider sharedStyleProvider];
  menuKnockoutColor = [v15 menuKnockoutColor];
  v17 = [defaultBackgroundImage imageWithTintColor:menuKnockoutColor renderingMode:1];
  [(SCATModernMenuSheetCollectionViewController *)self setDimmedBackgroundImage:v17];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v20.receiver = self;
  v20.super_class = SCATModernMenuSheetCollectionViewController;
  [(SCATModernMenuSheetCollectionViewController *)&v20 viewWillAppear:?];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  collectionView = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v7 = [visibleCells countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(visibleCells);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          menuItem = [v12 menuItem];
          [menuItem resetActivation];

          menuItem2 = [v12 menuItem];
          [menuItem2 updateItem];

          [v12 update];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [visibleCells countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  menuSheet = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  [menuSheet sheetWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = SCATModernMenuSheetCollectionViewController;
  [(SCATModernMenuSheetCollectionViewController *)&v6 viewWillDisappear:?];
  menuSheet = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  [menuSheet sheetWillDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = SCATModernMenuSheetCollectionViewController;
  [(SCATModernMenuSheetCollectionViewController *)&v7 viewDidLayoutSubviews];
  menuSheet = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  menu = [menuSheet menu];
  [menu reloadFromCurrentSheet];

  y = CGPointZero.y;
  collectionView = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  [collectionView setContentOffset:{CGPointZero.x, y}];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = [(SCATModernMenuSheetCollectionViewController *)self collectionView:view];
  collectionViewLayout = [v5 collectionViewLayout];
  maxVisibleItems = [collectionViewLayout maxVisibleItems];

  menuSheet = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  menuItems = [menuSheet menuItems];
  v10 = [menuItems count];

  visibleItemOffset = [(SCATModernMenuSheetCollectionViewController *)self visibleItemOffset];
  v12 = visibleItemOffset;
  if (&v10[-visibleItemOffset] < maxVisibleItems)
  {
    maxVisibleItems = &v10[-visibleItemOffset];
  }

  menuSheet2 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  numberOfItemsInFirstPage = [menuSheet2 numberOfItemsInFirstPage];

  if (numberOfItemsInFirstPage)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    return numberOfItemsInFirstPage;
  }

  else
  {
    return maxVisibleItems;
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"SCATMenuItemCellID" forIndexPath:pathCopy];
  item = [pathCopy item];

  v10 = [(SCATModernMenuSheetCollectionViewController *)self collectionView:viewCopy menuItemForItemAtIndex:item];

  [v10 resetActivation];
  [v8 setMenuItem:v10];
  pressedBackgroundImage = [(SCATModernMenuSheetCollectionViewController *)self pressedBackgroundImage];
  [v8 setPressedBackgroundImage:pressedBackgroundImage];

  defaultBackgroundImage = [(SCATModernMenuSheetCollectionViewController *)self defaultBackgroundImage];
  [v8 setDefaultBackgroundImage:defaultBackgroundImage];

  dimmedBackgroundImage = [(SCATModernMenuSheetCollectionViewController *)self dimmedBackgroundImage];
  [v8 setDimmedBackgroundImage:dimmedBackgroundImage];

  title = [v10 title];
  titleLabel = [v8 titleLabel];
  [titleLabel setText:title];

  menuSheet = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  [v8 setShouldIncludeTextLabels:{objc_msgSend(menuSheet, "shouldIncludeTextLabels")}];

  [v8 setShouldUseActivityIndicator:{objc_msgSend(v10, "shouldUseActivityIndicator")}];
  image = [v10 image];

  if (image)
  {
    [v10 image];
  }

  else
  {
    sub_1000D23DC(v10);
  }
  v18 = ;
  [v8 setIconImage:v18];

  [v10 updateItem];
  [v8 update];

  return v8;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  v8 = -[SCATModernMenuSheetCollectionViewController collectionView:menuItemForItemAtIndex:](self, "collectionView:menuItemForItemAtIndex:", viewCopy, [path item]);

  title = [v8 title];
  [SCATMenuItemCell cellSizeForTitle:title];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (id)collectionView:(id)view menuItemForItemAtIndex:(unint64_t)index
{
  visibleItemOffset = [(SCATModernMenuSheetCollectionViewController *)self visibleItemOffset];
  menuSheet = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  collectionViewLayout = [(SCATModernMenuSheetCollectionViewController *)self collectionViewLayout];
  [menuSheet sortMenuItemsForNumberOfItemsPerRow:{objc_msgSend(collectionViewLayout, "maxItemsPerRow")}];

  menuSheet2 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  menuItems = [menuSheet2 menuItems];
  index = [menuItems objectAtIndex:visibleItemOffset + index];

  return index;
}

- (SCATModernMenuSheet)menuSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_menuSheet);

  return WeakRetained;
}

@end