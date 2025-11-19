@interface BCActionsListViewController
- (BCActionsListViewController)initWithActionItems:(id)a3 brandedHeaderDelegate:(id)a4;
- (BCActionsListViewController)initWithCoder:(id)a3;
- (BCActionsListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BCActionsListViewController)initWithStyle:(int64_t)a3;
- (BCBrandedHeaderViewControllerDelegate)brandedHeaderDelegate;
- (CGSize)contentSize;
- (double)cellSeparatorHeight;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_computeMaxHeights;
- (void)_handleSizeClassDidChange;
- (void)_replaceActionItem:(id)a3 atIndex:(unint64_t)a4 reloadRowImmediately:(BOOL)a5;
- (void)_sizeAndLoadTable;
- (void)addActionItems:(id)a3;
- (void)dealloc;
- (void)reloadHeader;
- (void)reloadHeaderIcon;
- (void)setBusinessItem:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateActionListViewWithAnimation;
- (void)updateContentIfNecessary;
- (void)updateLastActionItemWithAnimationIfNecessary;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BCActionsListViewController

- (BCActionsListViewController)initWithActionItems:(id)a3 brandedHeaderDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BCActionsListViewController;
  v9 = [(BCActionsListViewController *)&v12 initWithStyle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionItems, a3);
    objc_storeWeak(&v10->_brandedHeaderDelegate, v8);
  }

  return v10;
}

- (BCActionsListViewController)initWithStyle:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = BCActionsListViewController;
  return [(BCActionsListViewController *)&v4 initWithStyle:a3];
}

- (BCActionsListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = BCActionsListViewController;
  return [(BCActionsListViewController *)&v5 initWithNibName:a3 bundle:a4];
}

- (BCActionsListViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = BCActionsListViewController;
  return [(BCActionsListViewController *)&v4 initWithCoder:a3];
}

- (void)dealloc
{
  v3 = [(BCActionsListViewController *)self traitChangeRegistration];

  if (v3)
  {
    v4 = [(BCActionsListViewController *)self traitChangeRegistration];
    [(BCActionsListViewController *)self unregisterForTraitChanges:v4];
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
  v3 = [(BCActionsListViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[BCAlertHeaderTableViewCell reuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [(BCActionsListViewController *)self tableView];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"CellWithTitleAndIcon"];

  v7 = [(BCActionsListViewController *)self tableView];
  [v7 registerClass:objc_opt_class() forCellReuseIdentifier:@"CellWithTitleSubTitleAndIcon"];

  v8 = [(BCActionsListViewController *)self tableView];
  [v8 setScrollEnabled:1];

  v9 = [(BCActionsListViewController *)self tableView];
  [v9 setShowsVerticalScrollIndicator:1];

  v10 = [(BCActionsListViewController *)self tableView];
  [v10 setUserInteractionEnabled:1];

  v11 = [(BCActionsListViewController *)self tableView];
  [v11 setBounces:0];

  v12 = +[UIColor clearColor];
  v13 = [(BCActionsListViewController *)self tableView];
  [v13 setBackgroundColor:v12];

  v14 = [(BCActionsListViewController *)self tableView];
  [v14 setRowHeight:UITableViewAutomaticDimension];

  v15 = [(BCActionsListViewController *)self tableView];
  [v15 setEstimatedRowHeight:UITableViewAutomaticDimension];

  v16 = [(BCActionsListViewController *)self tableView];
  [v16 setSeparatorStyle:0];

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
  v3 = [(BCActionsListViewController *)self tableView];
  [v3 reloadData];
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
  v3 = [(BCActionsListViewController *)self tableView];
  [v3 frame];
  v5 = v4;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(BCActionsListViewController *)self actionItems];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      if ([v13 actionType] == 1)
      {
        v14 = [(BCActionsListViewController *)self businessItem];
        [BCAlertHeaderTableViewCell heightForBusinessItem:v14 forWidth:v5];
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

        v18 = [v13 title];
        [BCAlertHeaderTableViewCell heightForTitleText:v18 forWidth:v5];
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
    v20 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v8 = v20;
  }

  while (v20);
LABEL_22:

  self->_maxHeaderCellHeight = v11;
  self->_maxActionCellHeight = v10;
}

- (CGSize)contentSize
{
  v3 = [(BCActionsListViewController *)self tableView];
  [v3 frame];
  v5 = v4;

  [(BCActionsListViewController *)self _computeMaxHeights];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(BCActionsListViewController *)self actionItems];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
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

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = BCActionsListViewController;
  v7 = a4;
  [(BCActionsListViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
  [v7 animateAlongsideTransition:v9 completion:v8];
}

- (double)cellSeparatorHeight
{
  v2 = [(BCActionsListViewController *)self tableView];
  v3 = [v2 window];
  v4 = [v3 screen];
  [v4 scale];
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
  v4 = [(BCActionsListViewController *)self actionItems];
  v5 = [v4 objectAtIndex:{objc_msgSend(v3, "row")}];

  if ([v5 actionType] == 1 || objc_msgSend(v5, "actionType") == 2)
  {
    v6 = [(BCActionsListViewController *)self tableView];
    v8 = v3;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    [v6 reloadRowsAtIndexPaths:v7 withRowAnimation:5];
  }
}

- (void)reloadHeaderIcon
{
  v3 = [(BCActionsListViewController *)self actionItems];
  v9 = [v3 firstObject];

  v4 = v9;
  if (v9)
  {
    v5 = [(BCActionsListViewController *)self actionItems];
    v6 = [v5 count];

    v4 = v9;
    if (v6 >= 2)
    {
      v7 = [v9 icon];
      v8 = [(BCActionsListViewController *)self headerImageView];
      [v8 setImage:v7];

      v4 = v9;
    }
  }
}

- (void)_replaceActionItem:(id)a3 atIndex:(unint64_t)a4 reloadRowImmediately:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(BCActionsListViewController *)self actionItems];
  v10 = [v9 mutableCopy];

  if ([v10 count] > a4)
  {
    [v10 replaceObjectAtIndex:a4 withObject:v8];
  }

  v11 = [v10 copy];
  [(BCActionsListViewController *)self setActionItems:v11];

  [(BCActionsListViewController *)self contentSize];
  [(BCActionsListViewController *)self setPreferredContentSize:?];
  if (v5)
  {
    v12 = [NSIndexPath indexPathForRow:a4 inSection:0];
    v13 = [(BCActionsListViewController *)self tableView];
    v15 = v12;
    v14 = [NSArray arrayWithObjects:&v15 count:1];
    [v13 reloadRowsAtIndexPaths:v14 withRowAnimation:0];
  }
}

- (void)updateContentIfNecessary
{
  [(BCActionsListViewController *)self contentSize];

  [(BCActionsListViewController *)self setPreferredContentSize:?];
}

- (void)addActionItems:(id)a3
{
  v4 = a3;
  v5 = [(BCActionsListViewController *)self actionItems];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  [(BCActionsListViewController *)self setActionItems:v6];

  [(BCActionsListViewController *)self setItemsToAdd:v4];

  [(BCActionsListViewController *)self updateContentIfNecessary];
}

- (void)setBusinessItem:(id)a3
{
  v5 = a3;
  if (v5 && !self->_businessItem)
  {
    v6 = v5;
    objc_storeStrong(&self->_businessItem, a3);
    [(BCActionsListViewController *)self updateContentIfNecessary];
    v5 = v6;
  }
}

- (void)updateLastActionItemWithAnimationIfNecessary
{
  if ([(BCActionsListViewController *)self lastActionItemPendingUpdate])
  {
    [(BCActionsListViewController *)self setLastActionItemPendingUpdate:0];
    v3 = [(BCActionsListViewController *)self actionItems];
    v4 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v3 count] - 1, 0);

    v5 = [(BCActionsListViewController *)self tableView];
    v7 = v4;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v5 reloadRowsAtIndexPaths:v6 withRowAnimation:0];
  }
}

- (void)updateActionListViewWithAnimation
{
  v3 = [(BCActionsListViewController *)self itemsToAdd];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(BCActionsListViewController *)self itemsToAdd];
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);

    v6 = [(BCActionsListViewController *)self itemsToAdd];
    v7 = [v6 count];

    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = [NSIndexPath indexPathForRow:v8 inSection:0];
        [v13 addObject:v9];

        ++v8;
        v10 = [(BCActionsListViewController *)self itemsToAdd];
        v11 = [v10 count];
      }

      while (v8 < v11);
    }

    v12 = [(BCActionsListViewController *)self tableView];
    [v12 insertRowsAtIndexPaths:v13 withRowAnimation:0];

    [(BCActionsListViewController *)self setItemsToAdd:0];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(BCActionsListViewController *)self actionItems:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCActionsListViewController *)self actionItems];
  v9 = [v8 objectAtIndex:{objc_msgSend(v7, "row")}];

  if ([v9 actionType] != 6 && objc_msgSend(v9, "actionType") != 3 && objc_msgSend(v9, "actionType") != 4)
  {
    if ([v9 actionType] == 1)
    {
      v25 = +[BCAlertHeaderTableViewCell reuseIdentifier];
      v11 = [v6 dequeueReusableCellWithIdentifier:v25 forIndexPath:v7];

      v26 = [(BCActionsListViewController *)self businessItem];
      v27 = [(BCActionsListViewController *)self brandedHeaderDelegate];
      [v11 updateContentViewUsingBusinessItem:v26 brandedHeaderDelegate:v27];

      v28 = [v11 mainImageView];
      [(BCActionsListViewController *)self setHeaderImageView:v28];
    }

    else
    {
      if ([v9 actionType] != 2)
      {
        v11 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"defaultCellIdentifier"];
        goto LABEL_15;
      }

      v29 = +[BCAlertHeaderTableViewCell reuseIdentifier];
      v11 = [v6 dequeueReusableCellWithIdentifier:v29 forIndexPath:v7];

      v30 = [v9 title];
      [v11 updateContentViewUsingTitleText:v30];

      v31 = [v11 mainImageView];
      [(BCActionsListViewController *)self setHeaderImageView:v31];

      v28 = [v9 title];
      [(BCActionsListViewController *)self setHeaderTitleText:v28];
    }

    goto LABEL_15;
  }

  v10 = [BCAlertActionTableViewCell reuseIdentifierForItem:v9];
  v11 = [v6 dequeueReusableCellWithIdentifier:v10 forIndexPath:v7];

  if ([v9 actionType] == 4)
  {
    v12 = +[UIColor _systemBlueColor2];
    v13 = [v11 titleContainerView];
    [v13 setBackgroundColor:v12];

    [UIColor colorNamed:@"CellBackgroundColor"];
  }

  else
  {
    v14 = +[UIColor secondarySystemBackgroundColor];
    v15 = [v11 titleContainerView];
    [v15 setBackgroundColor:v14];

    +[UIColor _systemBlueColor2];
  }
  v16 = ;
  v17 = [v11 titleLabel];
  [v17 setTextColor:v16];

  v18 = [v9 title];
  v19 = [v11 titleLabel];
  [v19 setText:v18];

  v20 = [v9 subTitle];
  v21 = [v11 subTitleLabel];
  [v21 setText:v20];

  v22 = [v9 icon];
  v23 = [v11 mainImageView];
  [v23 setImage:v22];

  v24 = [v9 icon];

  if (!v24)
  {
    [v11 activateCenterAlignConstraints];
  }

LABEL_15:

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(BCActionsListViewController *)self actionItems];
  v7 = [v5 row];

  v10 = [v6 objectAtIndex:v7];

  v8 = [v10 handler];

  if (v8)
  {
    v9 = [v10 handler];
    (v9)[2](v9, v10);
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(BCActionsListViewController *)self tableView];
  [v6 frame];
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

  v12 = [(BCActionsListViewController *)self actionItems];
  v13 = [v5 row];

  v14 = [v12 objectAtIndex:v13];

  if ([v14 actionType] == 1)
  {
    if (v11)
    {
      goto LABEL_6;
    }

    v17 = [(BCActionsListViewController *)self businessItem];
    [BCAlertHeaderTableViewCell heightForBusinessItem:v17 forWidth:v8];
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
    v17 = [(BCActionsListViewController *)self headerTitleText];
    [BCAlertHeaderTableViewCell heightForTitleText:v17 forWidth:v8];
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