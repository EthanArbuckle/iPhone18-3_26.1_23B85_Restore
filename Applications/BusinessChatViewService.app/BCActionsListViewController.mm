@interface BCActionsListViewController
- (BCActionsListViewController)initWithActionItems:(id)items brandedHeaderDelegate:(id)delegate;
- (BCActionsListViewController)initWithCoder:(id)coder;
- (BCActionsListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BCActionsListViewController)initWithStyle:(int64_t)style;
- (BCBrandedHeaderViewControllerDelegate)brandedHeaderDelegate;
- (CGSize)contentSize;
- (double)cellSeparatorHeight;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_computeMaxHeights;
- (void)_handleSizeClassDidChange;
- (void)_replaceActionItem:(id)item atIndex:(unint64_t)index reloadRowImmediately:(BOOL)immediately;
- (void)_sizeAndLoadTable;
- (void)addActionItems:(id)items;
- (void)dealloc;
- (void)reloadHeader;
- (void)reloadHeaderIcon;
- (void)setBusinessItem:(id)item;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateActionListViewWithAnimation;
- (void)updateContentIfNecessary;
- (void)updateLastActionItemWithAnimationIfNecessary;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BCActionsListViewController

- (BCActionsListViewController)initWithActionItems:(id)items brandedHeaderDelegate:(id)delegate
{
  itemsCopy = items;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = BCActionsListViewController;
  v9 = [(BCActionsListViewController *)&v12 initWithStyle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionItems, items);
    objc_storeWeak(&v10->_brandedHeaderDelegate, delegateCopy);
  }

  return v10;
}

- (BCActionsListViewController)initWithStyle:(int64_t)style
{
  v4.receiver = self;
  v4.super_class = BCActionsListViewController;
  return [(BCActionsListViewController *)&v4 initWithStyle:style];
}

- (BCActionsListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = BCActionsListViewController;
  return [(BCActionsListViewController *)&v5 initWithNibName:name bundle:bundle];
}

- (BCActionsListViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = BCActionsListViewController;
  return [(BCActionsListViewController *)&v4 initWithCoder:coder];
}

- (void)dealloc
{
  traitChangeRegistration = [(BCActionsListViewController *)self traitChangeRegistration];

  if (traitChangeRegistration)
  {
    traitChangeRegistration2 = [(BCActionsListViewController *)self traitChangeRegistration];
    [(BCActionsListViewController *)self unregisterForTraitChanges:traitChangeRegistration2];
  }

  v5.receiver = self;
  v5.super_class = BCActionsListViewController;
  [(BCActionsListViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = BCActionsListViewController;
  [(BCActionsListViewController *)&v21 viewDidLoad];
  tableView = [(BCActionsListViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[BCAlertHeaderTableViewCell reuseIdentifier];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

  tableView2 = [(BCActionsListViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"CellWithTitleAndIcon"];

  tableView3 = [(BCActionsListViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"CellWithTitleSubTitleAndIcon"];

  tableView4 = [(BCActionsListViewController *)self tableView];
  [tableView4 setScrollEnabled:1];

  tableView5 = [(BCActionsListViewController *)self tableView];
  [tableView5 setShowsVerticalScrollIndicator:1];

  tableView6 = [(BCActionsListViewController *)self tableView];
  [tableView6 setUserInteractionEnabled:1];

  tableView7 = [(BCActionsListViewController *)self tableView];
  [tableView7 setBounces:0];

  v12 = +[UIColor clearColor];
  tableView8 = [(BCActionsListViewController *)self tableView];
  [tableView8 setBackgroundColor:v12];

  tableView9 = [(BCActionsListViewController *)self tableView];
  [tableView9 setRowHeight:UITableViewAutomaticDimension];

  tableView10 = [(BCActionsListViewController *)self tableView];
  [tableView10 setEstimatedRowHeight:UITableViewAutomaticDimension];

  tableView11 = [(BCActionsListViewController *)self tableView];
  [tableView11 setSeparatorStyle:0];

  v17 = objc_opt_self();
  v22[0] = v17;
  v18 = objc_opt_self();
  v22[1] = v18;
  v19 = [NSArray arrayWithObjects:v22 count:2];
  v20 = [(BCActionsListViewController *)self registerForTraitChanges:v19 withAction:"_handleSizeClassDidChange"];
  [(BCActionsListViewController *)self setTraitChangeRegistration:v20];

  [(BCActionsListViewController *)self _handleSizeClassDidChange];
}

- (void)_sizeAndLoadTable
{
  [(BCActionsListViewController *)self contentSize];
  [(BCActionsListViewController *)self setPreferredContentSize:?];
  tableView = [(BCActionsListViewController *)self tableView];
  [tableView reloadData];
}

- (void)_handleSizeClassDidChange
{
  if ([(BCActionsListViewController *)self initialTableLoadCompleted])
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_sizeAndLoadTable" object:0];

    [(BCActionsListViewController *)self performSelector:"_sizeAndLoadTable" withObject:0 afterDelay:0.1];
  }

  else
  {
    [(BCActionsListViewController *)self setInitialTableLoadCompleted:1];

    [(BCActionsListViewController *)self _sizeAndLoadTable];
  }
}

- (void)_computeMaxHeights
{
  tableView = [(BCActionsListViewController *)self tableView];
  [tableView frame];
  v5 = v4;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  actionItems = [(BCActionsListViewController *)self actionItems];
  v7 = [actionItems countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v7)
  {
    v10 = 0.0;
    v11 = 0.0;
    goto LABEL_22;
  }

  v8 = v7;
  v9 = *v22;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v12 = 0;
    do
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(actionItems);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      if ([v13 actionType] == 1)
      {
        businessItem = [(BCActionsListViewController *)self businessItem];
        [BCAlertHeaderTableViewCell heightForBusinessItem:businessItem forWidth:v5];
        v16 = v15;

LABEL_8:
        if (v16 > v11)
        {
          v11 = v16;
        }

        goto LABEL_15;
      }

      if ([v13 actionType] != 6 && objc_msgSend(v13, "actionType") != 3 && objc_msgSend(v13, "actionType") != 4)
      {
        if ([v13 actionType] != 2)
        {
          goto LABEL_15;
        }

        title = [v13 title];
        [BCAlertHeaderTableViewCell heightForTitleText:title forWidth:v5];
        v16 = v19;

        goto LABEL_8;
      }

      [BCAlertActionTableViewCell heightForActionItem:v13 forWidth:v5];
      if (v17 > v10)
      {
        v10 = v17;
      }

LABEL_15:
      v12 = v12 + 1;
    }

    while (v8 != v12);
    v20 = [actionItems countByEnumeratingWithState:&v21 objects:v25 count:16];
    v8 = v20;
  }

  while (v20);
LABEL_22:

  self->_maxHeaderCellHeight = v11;
  self->_maxActionCellHeight = v10;
}

- (CGSize)contentSize
{
  tableView = [(BCActionsListViewController *)self tableView];
  [tableView frame];
  v5 = v4;

  [(BCActionsListViewController *)self _computeMaxHeights];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  actionItems = [(BCActionsListViewController *)self actionItems];
  v7 = [actionItems countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = 0.0;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(actionItems);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 actionType] == 1 || objc_msgSend(v12, "actionType") == 2)
        {
          v13 = &OBJC_IVAR___BCActionsListViewController__maxHeaderCellHeight;
LABEL_13:
          v15 = *(&self->super.super.super.super.isa + *v13);
          goto LABEL_14;
        }

        if ([v12 actionType] == 6 || objc_msgSend(v12, "actionType") == 3 || (v14 = objc_msgSend(v12, "actionType"), v15 = 0.0, v14 == 4))
        {
          v13 = &OBJC_IVAR___BCActionsListViewController__maxActionCellHeight;
          goto LABEL_13;
        }

LABEL_14:
        v10 = v10 + v15;
      }

      v8 = [actionItems countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (!v8)
      {
        goto LABEL_18;
      }
    }
  }

  v10 = 0.0;
LABEL_18:

  v16 = v5;
  v17 = v10;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = BCActionsListViewController;
  coordinatorCopy = coordinator;
  [(BCActionsListViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005370;
  v9[3] = &unk_1000185D8;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005378;
  v8[3] = &unk_1000185D8;
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
}

- (double)cellSeparatorHeight
{
  tableView = [(BCActionsListViewController *)self tableView];
  window = [tableView window];
  screen = [window screen];
  [screen scale];
  v6 = v5;

  if (v6 > 0.0)
  {
    return 1.0 / v6;
  }

  v7 = +[UIScreen mainScreen];
  [v7 scale];
  v9 = v8;

  return v9;
}

- (void)reloadHeader
{
  v3 = [NSIndexPath indexPathForRow:0 inSection:0];
  actionItems = [(BCActionsListViewController *)self actionItems];
  v5 = [actionItems objectAtIndex:{objc_msgSend(v3, "row")}];

  if ([v5 actionType] == 1 || objc_msgSend(v5, "actionType") == 2)
  {
    tableView = [(BCActionsListViewController *)self tableView];
    v8 = v3;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    [tableView reloadRowsAtIndexPaths:v7 withRowAnimation:5];
  }
}

- (void)reloadHeaderIcon
{
  actionItems = [(BCActionsListViewController *)self actionItems];
  firstObject = [actionItems firstObject];

  v4 = firstObject;
  if (firstObject)
  {
    actionItems2 = [(BCActionsListViewController *)self actionItems];
    v6 = [actionItems2 count];

    v4 = firstObject;
    if (v6 >= 2)
    {
      icon = [firstObject icon];
      headerImageView = [(BCActionsListViewController *)self headerImageView];
      [headerImageView setImage:icon];

      v4 = firstObject;
    }
  }
}

- (void)_replaceActionItem:(id)item atIndex:(unint64_t)index reloadRowImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  itemCopy = item;
  actionItems = [(BCActionsListViewController *)self actionItems];
  v10 = [actionItems mutableCopy];

  if ([v10 count] > index)
  {
    [v10 replaceObjectAtIndex:index withObject:itemCopy];
  }

  v11 = [v10 copy];
  [(BCActionsListViewController *)self setActionItems:v11];

  [(BCActionsListViewController *)self contentSize];
  [(BCActionsListViewController *)self setPreferredContentSize:?];
  if (immediatelyCopy)
  {
    v12 = [NSIndexPath indexPathForRow:index inSection:0];
    tableView = [(BCActionsListViewController *)self tableView];
    v15 = v12;
    v14 = [NSArray arrayWithObjects:&v15 count:1];
    [tableView reloadRowsAtIndexPaths:v14 withRowAnimation:0];
  }
}

- (void)updateContentIfNecessary
{
  [(BCActionsListViewController *)self contentSize];

  [(BCActionsListViewController *)self setPreferredContentSize:?];
}

- (void)addActionItems:(id)items
{
  itemsCopy = items;
  actionItems = [(BCActionsListViewController *)self actionItems];
  v6 = [itemsCopy arrayByAddingObjectsFromArray:actionItems];
  [(BCActionsListViewController *)self setActionItems:v6];

  [(BCActionsListViewController *)self setItemsToAdd:itemsCopy];

  [(BCActionsListViewController *)self updateContentIfNecessary];
}

- (void)setBusinessItem:(id)item
{
  itemCopy = item;
  if (itemCopy && !self->_businessItem)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_businessItem, item);
    [(BCActionsListViewController *)self updateContentIfNecessary];
    itemCopy = v6;
  }
}

- (void)updateLastActionItemWithAnimationIfNecessary
{
  if ([(BCActionsListViewController *)self lastActionItemPendingUpdate])
  {
    [(BCActionsListViewController *)self setLastActionItemPendingUpdate:0];
    actionItems = [(BCActionsListViewController *)self actionItems];
    v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [actionItems count] - 1, 0);

    tableView = [(BCActionsListViewController *)self tableView];
    v7 = v4;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [tableView reloadRowsAtIndexPaths:v6 withRowAnimation:0];
  }
}

- (void)updateActionListViewWithAnimation
{
  itemsToAdd = [(BCActionsListViewController *)self itemsToAdd];
  v4 = [itemsToAdd count];

  if (v4)
  {
    itemsToAdd2 = [(BCActionsListViewController *)self itemsToAdd];
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsToAdd2 count]);

    itemsToAdd3 = [(BCActionsListViewController *)self itemsToAdd];
    v7 = [itemsToAdd3 count];

    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = [NSIndexPath indexPathForRow:v8 inSection:0];
        [v13 addObject:v9];

        ++v8;
        itemsToAdd4 = [(BCActionsListViewController *)self itemsToAdd];
        v11 = [itemsToAdd4 count];
      }

      while (v8 < v11);
    }

    tableView = [(BCActionsListViewController *)self tableView];
    [tableView insertRowsAtIndexPaths:v13 withRowAnimation:0];

    [(BCActionsListViewController *)self setItemsToAdd:0];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(BCActionsListViewController *)self actionItems:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  actionItems = [(BCActionsListViewController *)self actionItems];
  v9 = [actionItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  if ([v9 actionType] != 6 && objc_msgSend(v9, "actionType") != 3 && objc_msgSend(v9, "actionType") != 4)
  {
    if ([v9 actionType] == 1)
    {
      v25 = +[BCAlertHeaderTableViewCell reuseIdentifier];
      v11 = [viewCopy dequeueReusableCellWithIdentifier:v25 forIndexPath:pathCopy];

      businessItem = [(BCActionsListViewController *)self businessItem];
      brandedHeaderDelegate = [(BCActionsListViewController *)self brandedHeaderDelegate];
      [v11 updateContentViewUsingBusinessItem:businessItem brandedHeaderDelegate:brandedHeaderDelegate];

      mainImageView = [v11 mainImageView];
      [(BCActionsListViewController *)self setHeaderImageView:mainImageView];
    }

    else
    {
      if ([v9 actionType] != 2)
      {
        v11 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"defaultCellIdentifier"];
        goto LABEL_15;
      }

      v29 = +[BCAlertHeaderTableViewCell reuseIdentifier];
      v11 = [viewCopy dequeueReusableCellWithIdentifier:v29 forIndexPath:pathCopy];

      title = [v9 title];
      [v11 updateContentViewUsingTitleText:title];

      mainImageView2 = [v11 mainImageView];
      [(BCActionsListViewController *)self setHeaderImageView:mainImageView2];

      mainImageView = [v9 title];
      [(BCActionsListViewController *)self setHeaderTitleText:mainImageView];
    }

    goto LABEL_15;
  }

  v10 = [BCAlertActionTableViewCell reuseIdentifierForItem:v9];
  v11 = [viewCopy dequeueReusableCellWithIdentifier:v10 forIndexPath:pathCopy];

  if ([v9 actionType] == 4)
  {
    v12 = +[UIColor _systemBlueColor2];
    titleContainerView = [v11 titleContainerView];
    [titleContainerView setBackgroundColor:v12];

    [UIColor colorNamed:@"CellBackgroundColor"];
  }

  else
  {
    v14 = +[UIColor secondarySystemBackgroundColor];
    titleContainerView2 = [v11 titleContainerView];
    [titleContainerView2 setBackgroundColor:v14];

    +[UIColor _systemBlueColor2];
  }
  v16 = ;
  titleLabel = [v11 titleLabel];
  [titleLabel setTextColor:v16];

  title2 = [v9 title];
  titleLabel2 = [v11 titleLabel];
  [titleLabel2 setText:title2];

  subTitle = [v9 subTitle];
  subTitleLabel = [v11 subTitleLabel];
  [subTitleLabel setText:subTitle];

  icon = [v9 icon];
  mainImageView3 = [v11 mainImageView];
  [mainImageView3 setImage:icon];

  icon2 = [v9 icon];

  if (!icon2)
  {
    [v11 activateCenterAlignConstraints];
  }

LABEL_15:

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  actionItems = [(BCActionsListViewController *)self actionItems];
  v7 = [pathCopy row];

  v10 = [actionItems objectAtIndex:v7];

  handler = [v10 handler];

  if (handler)
  {
    handler2 = [v10 handler];
    (handler2)[2](handler2, v10);
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(BCActionsListViewController *)self tableView];
  [tableView frame];
  v8 = v7;

  [(BCActionsListViewController *)self maxHeaderCellHeight];
  if (v9 == 0.0)
  {
    v11 = 0;
  }

  else
  {
    [(BCActionsListViewController *)self maxActionCellHeight];
    v11 = v10 != 0.0;
  }

  actionItems = [(BCActionsListViewController *)self actionItems];
  v13 = [pathCopy row];

  v14 = [actionItems objectAtIndex:v13];

  if ([v14 actionType] == 1)
  {
    if (v11)
    {
      goto LABEL_6;
    }

    businessItem = [(BCActionsListViewController *)self businessItem];
    [BCAlertHeaderTableViewCell heightForBusinessItem:businessItem forWidth:v8];
LABEL_14:
    v16 = v18;

    goto LABEL_16;
  }

  if ([v14 actionType] == 6 || objc_msgSend(v14, "actionType") == 3 || objc_msgSend(v14, "actionType") == 4)
  {
    if (!v11)
    {
      [BCAlertActionTableViewCell heightForActionItem:v14 forWidth:v8];
      v16 = v19;
      goto LABEL_16;
    }

    v15 = 72;
    goto LABEL_12;
  }

  v16 = 0.0;
  if ([v14 actionType] != 2)
  {
    goto LABEL_16;
  }

  if (!v11)
  {
    businessItem = [(BCActionsListViewController *)self headerTitleText];
    [BCAlertHeaderTableViewCell heightForTitleText:businessItem forWidth:v8];
    goto LABEL_14;
  }

LABEL_6:
  v15 = 64;
LABEL_12:
  v16 = *(&self->super.super.super.super.isa + v15);
LABEL_16:

  return v16;
}

- (BCBrandedHeaderViewControllerDelegate)brandedHeaderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_brandedHeaderDelegate);

  return WeakRetained;
}

@end