@interface HSDiscoveredAccessoryGridContentViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (HFAccessoryBrowsingManager)accessoryBrowsingManager;
- (HSDiscoveredAccessoryGridContentViewController)initWithAccessoryBrowsingManager:(id)a3 discoveredAccessoryFilter:(id)a4;
- (HSDiscoveredAccessoryGridContentViewController)initWithItemManager:(id)a3;
- (HSDiscoveredAccessoryGridContentViewControllerDelegate)delegate;
- (id)_defaultLayoutOptionsForViewSize:(CGSize)a3;
- (id)layoutOptionsForSection:(int64_t)a3;
- (void)_identifyAccessory:(id)a3;
- (void)_updateScrollingAttributes;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)itemManagerDidUpdate:(id)a3;
- (void)setScrollDirection:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation HSDiscoveredAccessoryGridContentViewController

- (HSDiscoveredAccessoryGridContentViewController)initWithItemManager:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("initWithAccessoryBrowsingManager:discoveredAccessoryFilter:");
  [v5 handleFailureInMethod:a2 object:self file:@"HSDiscoveredAccessoryGridContentViewController.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HSDiscoveredAccessoryGridContentViewController initWithItemManager:]", v6}];

  return 0;
}

- (HSDiscoveredAccessoryGridContentViewController)initWithAccessoryBrowsingManager:(id)a3 discoveredAccessoryFilter:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HSDiscoveredAccessoryGridContentItemManager alloc] initWithAccessoryBrowsingManager:v7 delegate:self discoveredAccessoryFilter:v6];

  v11.receiver = self;
  v11.super_class = HSDiscoveredAccessoryGridContentViewController;
  v9 = [(HSDiscoveredAccessoryGridContentViewController *)&v11 initWithItemManager:v8];

  return v9;
}

- (id)_defaultLayoutOptionsForViewSize:(CGSize)a3
{
  v35.receiver = self;
  v35.super_class = HSDiscoveredAccessoryGridContentViewController;
  v4 = [(HSDiscoveredAccessoryGridContentViewController *)&v35 _defaultLayoutOptionsForViewSize:a3.width, a3.height];
  objc_opt_class();
  v5 = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
  v6 = [v5 visibleCells];
  v7 = [v6 firstObject];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [v9 iconView];
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [v9 serviceTextView];
    [v19 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v37.origin.x = v12;
    v37.origin.y = v14;
    v37.size.width = v16;
    v37.size.height = v18;
    v39.origin.x = v21;
    v39.origin.y = v23;
    v39.size.width = v25;
    v39.size.height = v27;
    v38 = CGRectIntersection(v37, v39);
    width = v38.size.width;
    height = v38.size.height;
    if (![v4 cellSizeSubclass] && width * height / (v16 * v18) > 0.1)
    {
      HUDefaultSizeForIconSize();
      v31 = v30;
      v32 = [v4 serviceCellOptions];
      [v32 setIconSize:v31];

      v33 = [v4 serviceCellOptions];
      [v33 setIconContentMode:1];
    }
  }

  else
  {
    [v4 cellSizeSubclass];
  }

  return v4;
}

- (HFAccessoryBrowsingManager)accessoryBrowsingManager
{
  v2 = [(HSDiscoveredAccessoryGridContentViewController *)self itemManager];
  v3 = [v2 accessoryBrowsingManager];

  return v3;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = HSDiscoveredAccessoryGridContentViewController;
  [(HSDiscoveredAccessoryGridContentViewController *)&v16 viewDidLoad];
  v3 = +[UIColor clearColor];
  v4 = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
  [v4 setBackgroundColor:v3];

  v5 = +[UIColor clearColor];
  v6 = [(HSDiscoveredAccessoryGridContentViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
  [v7 setShowsVerticalScrollIndicator:0];

  v8 = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
  [v8 setAlwaysBounceVertical:0];

  v9 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_identifyAccessory:"];
  [v9 setDelaysTouchesBegan:1];
  v10 = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
  [v10 addGestureRecognizer:v9];

  [(HSDiscoveredAccessoryGridContentViewController *)self _updateScrollingAttributes];
  v11 = [(HSDiscoveredAccessoryGridContentViewController *)self itemManager];
  v12 = [v11 home];
  if (v12)
  {
  }

  else
  {
    v13 = [(HSDiscoveredAccessoryGridContentViewController *)self itemManager];
    v14 = [v13 itemProviders];
    v15 = [v14 count];

    if (v15)
    {
      goto LABEL_5;
    }

    v11 = [(HSDiscoveredAccessoryGridContentViewController *)self itemManager];
    [v11 resetItemProvidersAndModules];
  }

LABEL_5:
}

- (void)setScrollDirection:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = HSDiscoveredAccessoryGridContentViewController;
  [(HSDiscoveredAccessoryGridContentViewController *)&v4 setScrollDirection:a3];
  [(HSDiscoveredAccessoryGridContentViewController *)self _updateScrollingAttributes];
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HSDiscoveredAccessoryGridContentViewController *)self itemManager];
  v7 = [v6 displayedItemAtIndexPath:v5];

  objc_opt_class();
  LOBYTE(v6) = objc_opt_isKindOfClass();

  return v6 & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v15.receiver = self;
  v15.super_class = HSDiscoveredAccessoryGridContentViewController;
  v6 = a4;
  [(HSDiscoveredAccessoryGridContentViewController *)&v15 collectionView:a3 didSelectItemAtIndexPath:v6];
  v7 = [(HSDiscoveredAccessoryGridContentViewController *)self itemManager:v15.receiver];
  v8 = [v7 displayedItemAtIndexPath:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = v8;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      if (!v12)
      {
        sub_100077FC8(v10, v9);
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = [(HSDiscoveredAccessoryGridContentViewController *)self delegate];
    v14 = [v12 discoveredAccessory];
    [v13 discoveredAccessoryGrid:self didSelectDiscoveredAccessory:v14];
  }
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = HSDiscoveredAccessoryGridContentViewController;
  [(HSDiscoveredAccessoryGridContentViewController *)&v14 configureCell:v6 forItem:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [(HSDiscoveredAccessoryGridContentViewController *)self cellContentViewBackgroundColor];

    if (v10)
    {
      v11 = +[UIColor labelColor];
      [v9 setDefaultNameTextColor:v11];

      v12 = [(HSDiscoveredAccessoryGridContentViewController *)self cellContentViewBackgroundColor];
      v13 = [v9 gridBackgroundView];
      [v13 setBackgroundTintColor:v12];
    }
  }
}

- (id)layoutOptionsForSection:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = HSDiscoveredAccessoryGridContentViewController;
  v3 = [(HSDiscoveredAccessoryGridContentViewController *)&v6 layoutOptionsForSection:a3];
  v4 = [v3 serviceCellOptions];
  [v4 setShowDescription:0];

  return v3;
}

- (void)itemManagerDidUpdate:(id)a3
{
  v7.receiver = self;
  v7.super_class = HSDiscoveredAccessoryGridContentViewController;
  v4 = a3;
  [(HSDiscoveredAccessoryGridContentViewController *)&v7 itemManagerDidUpdate:v4];
  v5 = [(HSDiscoveredAccessoryGridContentViewController *)self delegate:v7.receiver];
  v6 = [v4 allItems];

  [v5 discoveredAccessoryGrid:self didUpdateNumberOfDiscoveredAccessories:{objc_msgSend(v6, "count")}];
}

- (void)_identifyAccessory:(id)a3
{
  v14 = a3;
  if ([v14 state] == 3)
  {
    v4 = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
    v5 = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
    [v14 locationInView:v5];
    v6 = [v4 indexPathForItemAtPoint:?];

    if (v6)
    {
      objc_opt_class();
      v7 = [(HSDiscoveredAccessoryGridContentViewController *)self itemManager];
      v8 = [v7 displayedItemAtIndexPath:v6];
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      v11 = [v10 discoveredAccessory];

      if (v11)
      {
        v12 = [v10 discoveredAccessory];
        v13 = [v12 identify];
      }
    }
  }
}

- (void)_updateScrollingAttributes
{
  v3 = [(HSDiscoveredAccessoryGridContentViewController *)self scrollDirection]== 1;
  v4 = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
  [v4 setScrollEnabled:v3];
}

- (HSDiscoveredAccessoryGridContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end