@interface _UIScreenRouteSelectionTableViewController
- (_UIRouteSelectionTableViewControllerDelegate)delegate;
- (_UIScreenRouteSelectionTableViewController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_adjustBackgroundColorForPopoverPresentationIfNeeded:(id)needed;
- (void)arrayController:(id)controller modelChanged:(id)changed differences:(id)differences;
- (void)didMoveToParentViewController:(id)controller;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updatePreferredContentSize;
- (void)updateSearchResults:(id)results changes:(id)changes;
@end

@implementation _UIScreenRouteSelectionTableViewController

- (_UIScreenRouteSelectionTableViewController)init
{
  v12.receiver = self;
  v12.super_class = _UIScreenRouteSelectionTableViewController;
  v2 = [(_UIScreenRouteSelectionTableViewController *)&v12 initWithStyle:0];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"AirPlay[nav bar title]" value:@"AirPlay" table:@"Localizable"];
    [(_UIScreenRouteSelectionTableViewController *)v2 setTitle:v4];

    v5 = [[_UIScreenRouteArrayController alloc] initWithDelegate:v2];
    arrayController = v2->_arrayController;
    v2->_arrayController = v5;

    tableView = [(_UIScreenRouteSelectionTableViewController *)v2 tableView];
    [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"regular"];

    tableView2 = [(_UIScreenRouteSelectionTableViewController *)v2 tableView];
    layer = [tableView2 layer];
    [layer setHitTestsAsOpaque:1];

    tableView3 = [(_UIScreenRouteSelectionTableViewController *)v2 tableView];
    [(_UIScreenRouteSelectionTableViewController *)v2 _adjustBackgroundColorForPopoverPresentationIfNeeded:tableView3];

    [(_UIScreenRouteSelectionTableViewController *)v2 updatePreferredContentSize];
  }

  return v2;
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = _UIScreenRouteSelectionTableViewController;
  [(_UIScreenRouteSelectionTableViewController *)&v5 didMoveToParentViewController:controller];
  tableView = [(_UIScreenRouteSelectionTableViewController *)self tableView];
  [(_UIScreenRouteSelectionTableViewController *)self _adjustBackgroundColorForPopoverPresentationIfNeeded:tableView];
}

- (void)arrayController:(id)controller modelChanged:(id)changed differences:(id)differences
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026C8;
  block[3] = &unk_1000083D8;
  block[4] = self;
  changedCopy = changed;
  differencesCopy = differences;
  v6 = differencesCopy;
  v7 = changedCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateSearchResults:(id)results changes:(id)changes
{
  resultsCopy = results;
  changesCopy = changes;
  if ([changesCopy count])
  {
    tableView = [(_UIScreenRouteSelectionTableViewController *)self tableView];
    [tableView beginUpdates];

    array = [resultsCopy array];
    availableRoutes = self->_availableRoutes;
    self->_availableRoutes = array;

    v11 = [changesCopy objectForKey:_UIArrayControllerInsertedIndexPaths];
    if (v11)
    {
      tableView2 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
      [tableView2 insertRowsAtIndexPaths:v11 withRowAnimation:100];
    }

    v13 = [changesCopy objectForKey:_UIArrayControllerDeletedIndexPaths];

    if (v13)
    {
      tableView3 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
      [tableView3 deleteRowsAtIndexPaths:v13 withRowAnimation:100];
    }

    tableView7 = [changesCopy objectForKey:_UIArrayControllerModifiedAttributesIndexPathsKey];

    if (tableView7)
    {
      tableView4 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
      [tableView4 insertRowsAtIndexPaths:tableView7 withRowAnimation:100];

      tableView5 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
      [tableView5 deleteRowsAtIndexPaths:tableView7 withRowAnimation:100];
    }

    v18 = [changesCopy objectForKey:_UIArrayControllerMovedIndexPaths];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100002920;
    v22[3] = &unk_100008400;
    v22[4] = self;
    [v18 enumerateKeysAndObjectsUsingBlock:v22];

    tableView6 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
    [tableView6 endUpdates];
  }

  else
  {
    array2 = [resultsCopy array];
    v21 = self->_availableRoutes;
    self->_availableRoutes = array2;

    tableView7 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
    [tableView7 reloadData];
  }

  [(_UIScreenRouteSelectionTableViewController *)self updatePreferredContentSize];
}

- (void)updatePreferredContentSize
{
  tableView = [(_UIScreenRouteSelectionTableViewController *)self tableView];
  [tableView layoutIfNeeded];

  v4 = [(NSArray *)self->_availableRoutes count];
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v5 >= 8)
  {
    v5 = 8;
  }

  v12 = [NSIndexPath indexPathForItem:v5 - 1 inSection:0];
  tableView2 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
  [tableView2 rowHeight];
  v8 = v7;

  tableView3 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
  [tableView3 rectForRowAtIndexPath:v12];
  MaxY = CGRectGetMaxY(v14);

  if (v8 >= MaxY)
  {
    v11 = v8;
  }

  else
  {
    v11 = MaxY;
  }

  [(_UIScreenRouteSelectionTableViewController *)self setPreferredContentSize:0.0, v11];
}

- (void)_adjustBackgroundColorForPopoverPresentationIfNeeded:(id)needed
{
  neededCopy = needed;
  if (_UISolariumEnabled())
  {
    popoverPresentationController = [(_UIScreenRouteSelectionTableViewController *)self popoverPresentationController];
    backgroundColor = [popoverPresentationController backgroundColor];
    if (backgroundColor)
    {
      [neededCopy setBackgroundColor:backgroundColor];
    }

    else
    {
      v6 = +[UIColor clearColor];
      [neededCopy setBackgroundColor:v6];
    }
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"regular" forIndexPath:pathCopy];
  availableRoutes = self->_availableRoutes;
  v9 = [pathCopy row];

  v10 = [(NSArray *)availableRoutes objectAtIndex:v9];
  traitCollection = [(_UIScreenRouteSelectionTableViewController *)self traitCollection];
  v12 = [v10 displayTitleForTraits:traitCollection];
  textLabel = [v7 textLabel];
  [textLabel setText:v12];

  traitCollection2 = [(_UIScreenRouteSelectionTableViewController *)self traitCollection];
  v15 = [v10 imageForTraits:traitCollection2];
  v16 = [v15 imageWithRenderingMode:2];
  imageView = [v7 imageView];
  [imageView setImage:v16];

  v18 = +[UIColor labelColor];
  imageView2 = [v7 imageView];
  [imageView2 setTintColor:v18];

  imageView3 = [v7 imageView];
  [imageView3 setContentMode:4];

  if ([v10 isSelected])
  {
    v21 = 3;
  }

  else
  {
    v21 = 0;
  }

  [v7 setAccessoryType:v21];
  [(_UIScreenRouteSelectionTableViewController *)self _adjustBackgroundColorForPopoverPresentationIfNeeded:v7];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = -[NSArray objectAtIndex:](self->_availableRoutes, "objectAtIndex:", [path row]);
  [(_UIScreenRouteArrayController *)self->_arrayController selectRoute:v6];
  delegate = [(_UIScreenRouteSelectionTableViewController *)self delegate];
  [delegate routeSelectionTableViewControllerSelectedRoute:self];
}

- (_UIRouteSelectionTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end