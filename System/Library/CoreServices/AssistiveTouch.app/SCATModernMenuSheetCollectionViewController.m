@interface SCATModernMenuSheetCollectionViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (NSString)description;
- (SCATModernMenuSheet)menuSheet;
- (SCATModernMenuSheetCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 menuItemForItemAtIndex:(unint64_t)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)adjustVisibleItemOffsetForPageBoundary;
- (void)reloadCollectionView;
- (void)showMoreItemsButtonWasActivated;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SCATModernMenuSheetCollectionViewController

- (SCATModernMenuSheetCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCATModernMenuSheetCollectionViewController;
  v3 = [(SCATModernMenuSheetCollectionViewController *)&v5 initWithCollectionViewLayout:a3];
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
  v5 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  v6 = [NSString stringWithFormat:@"%@<%p>. sheet:%@", v4, self, v5];

  return v6;
}

- (void)showMoreItemsButtonWasActivated
{
  v3 = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  v14 = [v3 collectionViewLayout];

  v4 = [v14 maxVisibleItems];
  v5 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  v6 = [v5 menuItems];
  v7 = [v6 count];

  v8 = [(SCATModernMenuSheetCollectionViewController *)self visibleItemOffset];
  v9 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  v10 = [v9 numberOfItemsInFirstPage];

  if (v10)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = &v4[v8];
  if (v11)
  {
    v12 = v10;
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
  v3 = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  v17 = [v3 collectionViewLayout];

  v4 = [v17 maxVisibleItems];
  v5 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  v6 = [v5 menuItems];
  v7 = [v6 count];

  v8 = [(SCATModernMenuSheetCollectionViewController *)self visibleItemOffset];
  v9 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  v10 = [v9 numberOfItemsInFirstPage];

  v11 = 0;
  while (v11 < v7)
  {
    v12 = v11;
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    v11 = &v4[v11];
    if (v13)
    {
      v11 = v10;
    }

    v14 = v8 - v12;
    if (v8 - v12 < 0)
    {
      v14 = v12 - v8;
    }

    v15 = v8 - v11;
    if (v8 - v11 < 0)
    {
      v15 = v11 - v8;
    }

    if (v14 < v15 || v11 >= v7)
    {
      goto LABEL_20;
    }
  }

  v12 = v8;
LABEL_20:
  [(SCATModernMenuSheetCollectionViewController *)self setVisibleItemOffset:v12];
}

- (void)reloadCollectionView
{
  v2 = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  [v2 reloadData];
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = SCATModernMenuSheetCollectionViewController;
  [(SCATModernMenuSheetCollectionViewController *)&v18 viewDidLoad];
  v3 = +[UIColor clearColor];
  v4 = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  [v4 setBackgroundColor:v3];

  v5 = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  [v5 setClipsToBounds:0];

  v6 = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  [v6 registerClass:-[SCATModernMenuSheetCollectionViewController collectionViewCellClass](self forCellWithReuseIdentifier:{"collectionViewCellClass"), @"SCATMenuItemCellID"}];

  v7 = [UIImage imageNamed:@"SCATIcon_border_selected"];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v11 = [v7 resizableImageWithCapInsets:1 resizingMode:{UIEdgeInsetsZero.top, left, bottom, right}];
  [(SCATModernMenuSheetCollectionViewController *)self setPressedBackgroundImage:v11];

  v12 = [UIImage imageNamed:@"SCATIcon_border"];
  v13 = [v12 resizableImageWithCapInsets:1 resizingMode:{UIEdgeInsetsZero.top, left, bottom, right}];
  [(SCATModernMenuSheetCollectionViewController *)self setDefaultBackgroundImage:v13];

  v14 = [(SCATModernMenuSheetCollectionViewController *)self defaultBackgroundImage];
  v15 = +[SCATStyleProvider sharedStyleProvider];
  v16 = [v15 menuKnockoutColor];
  v17 = [v14 imageWithTintColor:v16 renderingMode:1];
  [(SCATModernMenuSheetCollectionViewController *)self setDimmedBackgroundImage:v17];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v20.receiver = self;
  v20.super_class = SCATModernMenuSheetCollectionViewController;
  [(SCATModernMenuSheetCollectionViewController *)&v20 viewWillAppear:?];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  v6 = [v5 visibleCells];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = [v12 menuItem];
          [v13 resetActivation];

          v14 = [v12 menuItem];
          [v14 updateItem];

          [v12 update];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  [v15 sheetWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SCATModernMenuSheetCollectionViewController;
  [(SCATModernMenuSheetCollectionViewController *)&v6 viewWillDisappear:?];
  v5 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  [v5 sheetWillDisappear:v3];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = SCATModernMenuSheetCollectionViewController;
  [(SCATModernMenuSheetCollectionViewController *)&v7 viewDidLayoutSubviews];
  v3 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  v4 = [v3 menu];
  [v4 reloadFromCurrentSheet];

  y = CGPointZero.y;
  v6 = [(SCATModernMenuSheetCollectionViewController *)self collectionView];
  [v6 setContentOffset:{CGPointZero.x, y}];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(SCATModernMenuSheetCollectionViewController *)self collectionView:a3];
  v6 = [v5 collectionViewLayout];
  v7 = [v6 maxVisibleItems];

  v8 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  v9 = [v8 menuItems];
  v10 = [v9 count];

  v11 = [(SCATModernMenuSheetCollectionViewController *)self visibleItemOffset];
  v12 = v11;
  if (&v10[-v11] < v7)
  {
    v7 = &v10[-v11];
  }

  v13 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  v14 = [v13 numberOfItemsInFirstPage];

  if (v14)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    return v14;
  }

  else
  {
    return v7;
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dequeueReusableCellWithReuseIdentifier:@"SCATMenuItemCellID" forIndexPath:v6];
  v9 = [v6 item];

  v10 = [(SCATModernMenuSheetCollectionViewController *)self collectionView:v7 menuItemForItemAtIndex:v9];

  [v10 resetActivation];
  [v8 setMenuItem:v10];
  v11 = [(SCATModernMenuSheetCollectionViewController *)self pressedBackgroundImage];
  [v8 setPressedBackgroundImage:v11];

  v12 = [(SCATModernMenuSheetCollectionViewController *)self defaultBackgroundImage];
  [v8 setDefaultBackgroundImage:v12];

  v13 = [(SCATModernMenuSheetCollectionViewController *)self dimmedBackgroundImage];
  [v8 setDimmedBackgroundImage:v13];

  v14 = [v10 title];
  v15 = [v8 titleLabel];
  [v15 setText:v14];

  v16 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  [v8 setShouldIncludeTextLabels:{objc_msgSend(v16, "shouldIncludeTextLabels")}];

  [v8 setShouldUseActivityIndicator:{objc_msgSend(v10, "shouldUseActivityIndicator")}];
  v17 = [v10 image];

  if (v17)
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = -[SCATModernMenuSheetCollectionViewController collectionView:menuItemForItemAtIndex:](self, "collectionView:menuItemForItemAtIndex:", v7, [a5 item]);

  v9 = [v8 title];
  [SCATMenuItemCell cellSizeForTitle:v9];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (id)collectionView:(id)a3 menuItemForItemAtIndex:(unint64_t)a4
{
  v6 = [(SCATModernMenuSheetCollectionViewController *)self visibleItemOffset];
  v7 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  v8 = [(SCATModernMenuSheetCollectionViewController *)self collectionViewLayout];
  [v7 sortMenuItemsForNumberOfItemsPerRow:{objc_msgSend(v8, "maxItemsPerRow")}];

  v9 = [(SCATModernMenuSheetCollectionViewController *)self menuSheet];
  v10 = [v9 menuItems];
  v11 = [v10 objectAtIndex:v6 + a4];

  return v11;
}

- (SCATModernMenuSheet)menuSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_menuSheet);

  return WeakRetained;
}

@end