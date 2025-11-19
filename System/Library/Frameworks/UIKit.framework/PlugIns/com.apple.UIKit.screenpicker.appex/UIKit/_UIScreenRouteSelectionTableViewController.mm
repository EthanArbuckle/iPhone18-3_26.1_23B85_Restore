@interface _UIScreenRouteSelectionTableViewController
- (_UIRouteSelectionTableViewControllerDelegate)delegate;
- (_UIScreenRouteSelectionTableViewController)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_adjustBackgroundColorForPopoverPresentationIfNeeded:(id)a3;
- (void)arrayController:(id)a3 modelChanged:(id)a4 differences:(id)a5;
- (void)didMoveToParentViewController:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updatePreferredContentSize;
- (void)updateSearchResults:(id)a3 changes:(id)a4;
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

    v7 = [(_UIScreenRouteSelectionTableViewController *)v2 tableView];
    [v7 registerClass:objc_opt_class() forCellReuseIdentifier:@"regular"];

    v8 = [(_UIScreenRouteSelectionTableViewController *)v2 tableView];
    v9 = [v8 layer];
    [v9 setHitTestsAsOpaque:1];

    v10 = [(_UIScreenRouteSelectionTableViewController *)v2 tableView];
    [(_UIScreenRouteSelectionTableViewController *)v2 _adjustBackgroundColorForPopoverPresentationIfNeeded:v10];

    [(_UIScreenRouteSelectionTableViewController *)v2 updatePreferredContentSize];
  }

  return v2;
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIScreenRouteSelectionTableViewController;
  [(_UIScreenRouteSelectionTableViewController *)&v5 didMoveToParentViewController:a3];
  v4 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
  [(_UIScreenRouteSelectionTableViewController *)self _adjustBackgroundColorForPopoverPresentationIfNeeded:v4];
}

- (void)arrayController:(id)a3 modelChanged:(id)a4 differences:(id)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026C8;
  block[3] = &unk_1000083D8;
  block[4] = self;
  v9 = a4;
  v10 = a5;
  v6 = v10;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateSearchResults:(id)a3 changes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
    [v8 beginUpdates];

    v9 = [v6 array];
    availableRoutes = self->_availableRoutes;
    self->_availableRoutes = v9;

    v11 = [v7 objectForKey:_UIArrayControllerInsertedIndexPaths];
    if (v11)
    {
      v12 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
      [v12 insertRowsAtIndexPaths:v11 withRowAnimation:100];
    }

    v13 = [v7 objectForKey:_UIArrayControllerDeletedIndexPaths];

    if (v13)
    {
      v14 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
      [v14 deleteRowsAtIndexPaths:v13 withRowAnimation:100];
    }

    v15 = [v7 objectForKey:_UIArrayControllerModifiedAttributesIndexPathsKey];

    if (v15)
    {
      v16 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
      [v16 insertRowsAtIndexPaths:v15 withRowAnimation:100];

      v17 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
      [v17 deleteRowsAtIndexPaths:v15 withRowAnimation:100];
    }

    v18 = [v7 objectForKey:_UIArrayControllerMovedIndexPaths];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100002920;
    v22[3] = &unk_100008400;
    v22[4] = self;
    [v18 enumerateKeysAndObjectsUsingBlock:v22];

    v19 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
    [v19 endUpdates];
  }

  else
  {
    v20 = [v6 array];
    v21 = self->_availableRoutes;
    self->_availableRoutes = v20;

    v15 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
    [v15 reloadData];
  }

  [(_UIScreenRouteSelectionTableViewController *)self updatePreferredContentSize];
}

- (void)updatePreferredContentSize
{
  v3 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
  [v3 layoutIfNeeded];

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
  v6 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
  [v6 rowHeight];
  v8 = v7;

  v9 = [(_UIScreenRouteSelectionTableViewController *)self tableView];
  [v9 rectForRowAtIndexPath:v12];
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

- (void)_adjustBackgroundColorForPopoverPresentationIfNeeded:(id)a3
{
  v7 = a3;
  if (_UISolariumEnabled())
  {
    v4 = [(_UIScreenRouteSelectionTableViewController *)self popoverPresentationController];
    v5 = [v4 backgroundColor];
    if (v5)
    {
      [v7 setBackgroundColor:v5];
    }

    else
    {
      v6 = +[UIColor clearColor];
      [v7 setBackgroundColor:v6];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"regular" forIndexPath:v6];
  availableRoutes = self->_availableRoutes;
  v9 = [v6 row];

  v10 = [(NSArray *)availableRoutes objectAtIndex:v9];
  v11 = [(_UIScreenRouteSelectionTableViewController *)self traitCollection];
  v12 = [v10 displayTitleForTraits:v11];
  v13 = [v7 textLabel];
  [v13 setText:v12];

  v14 = [(_UIScreenRouteSelectionTableViewController *)self traitCollection];
  v15 = [v10 imageForTraits:v14];
  v16 = [v15 imageWithRenderingMode:2];
  v17 = [v7 imageView];
  [v17 setImage:v16];

  v18 = +[UIColor labelColor];
  v19 = [v7 imageView];
  [v19 setTintColor:v18];

  v20 = [v7 imageView];
  [v20 setContentMode:4];

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = -[NSArray objectAtIndex:](self->_availableRoutes, "objectAtIndex:", [a4 row]);
  [(_UIScreenRouteArrayController *)self->_arrayController selectRoute:v6];
  v5 = [(_UIScreenRouteSelectionTableViewController *)self delegate];
  [v5 routeSelectionTableViewControllerSelectedRoute:self];
}

- (_UIRouteSelectionTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end