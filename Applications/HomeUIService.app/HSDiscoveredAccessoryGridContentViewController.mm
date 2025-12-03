@interface HSDiscoveredAccessoryGridContentViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (HFAccessoryBrowsingManager)accessoryBrowsingManager;
- (HSDiscoveredAccessoryGridContentViewController)initWithAccessoryBrowsingManager:(id)manager discoveredAccessoryFilter:(id)filter;
- (HSDiscoveredAccessoryGridContentViewController)initWithItemManager:(id)manager;
- (HSDiscoveredAccessoryGridContentViewControllerDelegate)delegate;
- (id)_defaultLayoutOptionsForViewSize:(CGSize)size;
- (id)layoutOptionsForSection:(int64_t)section;
- (void)_identifyAccessory:(id)accessory;
- (void)_updateScrollingAttributes;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)itemManagerDidUpdate:(id)update;
- (void)setScrollDirection:(int64_t)direction;
- (void)viewDidLoad;
@end

@implementation HSDiscoveredAccessoryGridContentViewController

- (HSDiscoveredAccessoryGridContentViewController)initWithItemManager:(id)manager
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("initWithAccessoryBrowsingManager:discoveredAccessoryFilter:");
  [v5 handleFailureInMethod:a2 object:self file:@"HSDiscoveredAccessoryGridContentViewController.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HSDiscoveredAccessoryGridContentViewController initWithItemManager:]", v6}];

  return 0;
}

- (HSDiscoveredAccessoryGridContentViewController)initWithAccessoryBrowsingManager:(id)manager discoveredAccessoryFilter:(id)filter
{
  filterCopy = filter;
  managerCopy = manager;
  v8 = [[HSDiscoveredAccessoryGridContentItemManager alloc] initWithAccessoryBrowsingManager:managerCopy delegate:self discoveredAccessoryFilter:filterCopy];

  v11.receiver = self;
  v11.super_class = HSDiscoveredAccessoryGridContentViewController;
  v9 = [(HSDiscoveredAccessoryGridContentViewController *)&v11 initWithItemManager:v8];

  return v9;
}

- (id)_defaultLayoutOptionsForViewSize:(CGSize)size
{
  v35.receiver = self;
  v35.super_class = HSDiscoveredAccessoryGridContentViewController;
  v4 = [(HSDiscoveredAccessoryGridContentViewController *)&v35 _defaultLayoutOptionsForViewSize:size.width, size.height];
  objc_opt_class();
  collectionView = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  firstObject = [visibleCells firstObject];
  if (objc_opt_isKindOfClass())
  {
    v8 = firstObject;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    iconView = [v9 iconView];
    [iconView frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    serviceTextView = [v9 serviceTextView];
    [serviceTextView frame];
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
      serviceCellOptions = [v4 serviceCellOptions];
      [serviceCellOptions setIconSize:v31];

      serviceCellOptions2 = [v4 serviceCellOptions];
      [serviceCellOptions2 setIconContentMode:1];
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
  itemManager = [(HSDiscoveredAccessoryGridContentViewController *)self itemManager];
  accessoryBrowsingManager = [itemManager accessoryBrowsingManager];

  return accessoryBrowsingManager;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = HSDiscoveredAccessoryGridContentViewController;
  [(HSDiscoveredAccessoryGridContentViewController *)&v16 viewDidLoad];
  v3 = +[UIColor clearColor];
  collectionView = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
  [collectionView setBackgroundColor:v3];

  v5 = +[UIColor clearColor];
  view = [(HSDiscoveredAccessoryGridContentViewController *)self view];
  [view setBackgroundColor:v5];

  collectionView2 = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
  [collectionView2 setShowsVerticalScrollIndicator:0];

  collectionView3 = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
  [collectionView3 setAlwaysBounceVertical:0];

  v9 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_identifyAccessory:"];
  [v9 setDelaysTouchesBegan:1];
  collectionView4 = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
  [collectionView4 addGestureRecognizer:v9];

  [(HSDiscoveredAccessoryGridContentViewController *)self _updateScrollingAttributes];
  itemManager = [(HSDiscoveredAccessoryGridContentViewController *)self itemManager];
  home = [itemManager home];
  if (home)
  {
  }

  else
  {
    itemManager2 = [(HSDiscoveredAccessoryGridContentViewController *)self itemManager];
    itemProviders = [itemManager2 itemProviders];
    v15 = [itemProviders count];

    if (v15)
    {
      goto LABEL_5;
    }

    itemManager = [(HSDiscoveredAccessoryGridContentViewController *)self itemManager];
    [itemManager resetItemProvidersAndModules];
  }

LABEL_5:
}

- (void)setScrollDirection:(int64_t)direction
{
  v4.receiver = self;
  v4.super_class = HSDiscoveredAccessoryGridContentViewController;
  [(HSDiscoveredAccessoryGridContentViewController *)&v4 setScrollDirection:direction];
  [(HSDiscoveredAccessoryGridContentViewController *)self _updateScrollingAttributes];
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  itemManager = [(HSDiscoveredAccessoryGridContentViewController *)self itemManager];
  v7 = [itemManager displayedItemAtIndexPath:pathCopy];

  objc_opt_class();
  LOBYTE(itemManager) = objc_opt_isKindOfClass();

  return itemManager & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v15.receiver = self;
  v15.super_class = HSDiscoveredAccessoryGridContentViewController;
  pathCopy = path;
  [(HSDiscoveredAccessoryGridContentViewController *)&v15 collectionView:view didSelectItemAtIndexPath:pathCopy];
  v7 = [(HSDiscoveredAccessoryGridContentViewController *)self itemManager:v15.receiver];
  v8 = [v7 displayedItemAtIndexPath:pathCopy];

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

    delegate = [(HSDiscoveredAccessoryGridContentViewController *)self delegate];
    discoveredAccessory = [v12 discoveredAccessory];
    [delegate discoveredAccessoryGrid:self didSelectDiscoveredAccessory:discoveredAccessory];
  }
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v14.receiver = self;
  v14.super_class = HSDiscoveredAccessoryGridContentViewController;
  [(HSDiscoveredAccessoryGridContentViewController *)&v14 configureCell:cellCopy forItem:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v7 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    cellContentViewBackgroundColor = [(HSDiscoveredAccessoryGridContentViewController *)self cellContentViewBackgroundColor];

    if (cellContentViewBackgroundColor)
    {
      v11 = +[UIColor labelColor];
      [v9 setDefaultNameTextColor:v11];

      cellContentViewBackgroundColor2 = [(HSDiscoveredAccessoryGridContentViewController *)self cellContentViewBackgroundColor];
      gridBackgroundView = [v9 gridBackgroundView];
      [gridBackgroundView setBackgroundTintColor:cellContentViewBackgroundColor2];
    }
  }
}

- (id)layoutOptionsForSection:(int64_t)section
{
  v6.receiver = self;
  v6.super_class = HSDiscoveredAccessoryGridContentViewController;
  v3 = [(HSDiscoveredAccessoryGridContentViewController *)&v6 layoutOptionsForSection:section];
  serviceCellOptions = [v3 serviceCellOptions];
  [serviceCellOptions setShowDescription:0];

  return v3;
}

- (void)itemManagerDidUpdate:(id)update
{
  v7.receiver = self;
  v7.super_class = HSDiscoveredAccessoryGridContentViewController;
  updateCopy = update;
  [(HSDiscoveredAccessoryGridContentViewController *)&v7 itemManagerDidUpdate:updateCopy];
  v5 = [(HSDiscoveredAccessoryGridContentViewController *)self delegate:v7.receiver];
  allItems = [updateCopy allItems];

  [v5 discoveredAccessoryGrid:self didUpdateNumberOfDiscoveredAccessories:{objc_msgSend(allItems, "count")}];
}

- (void)_identifyAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if ([accessoryCopy state] == 3)
  {
    collectionView = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
    collectionView2 = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
    [accessoryCopy locationInView:collectionView2];
    v6 = [collectionView indexPathForItemAtPoint:?];

    if (v6)
    {
      objc_opt_class();
      itemManager = [(HSDiscoveredAccessoryGridContentViewController *)self itemManager];
      v8 = [itemManager displayedItemAtIndexPath:v6];
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      discoveredAccessory = [v10 discoveredAccessory];

      if (discoveredAccessory)
      {
        discoveredAccessory2 = [v10 discoveredAccessory];
        identify = [discoveredAccessory2 identify];
      }
    }
  }
}

- (void)_updateScrollingAttributes
{
  v3 = [(HSDiscoveredAccessoryGridContentViewController *)self scrollDirection]== 1;
  collectionView = [(HSDiscoveredAccessoryGridContentViewController *)self collectionView];
  [collectionView setScrollEnabled:v3];
}

- (HSDiscoveredAccessoryGridContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end