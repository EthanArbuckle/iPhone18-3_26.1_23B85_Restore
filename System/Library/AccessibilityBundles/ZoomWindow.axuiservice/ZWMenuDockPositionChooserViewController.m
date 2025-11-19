@interface ZWMenuDockPositionChooserViewController
- (ZWMenuDockPositionChooserViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation ZWMenuDockPositionChooserViewController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = ZWMenuDockPositionChooserViewController;
  [(ZWMenuChooserTableViewController *)&v5 loadView];
  v3 = AXZoomDockPositions();
  v4 = [v3 array];
  [(ZWMenuDockPositionChooserViewController *)self setDockPositionIdentifiers:v4];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = ZWMenuDockPositionChooserViewController;
  v6 = a4;
  [(ZWMenuChooserTableViewController *)&v11 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(ZWMenuDockPositionChooserViewController *)self delegate:v11.receiver];
  v8 = [(ZWMenuDockPositionChooserViewController *)self dockPositionIdentifiers];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];
  [v7 menuDockPositionChooserViewController:self didChooseDockPosition:v10];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(ZWMenuDockPositionChooserViewController *)self dockPositionIdentifiers:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v18.receiver = self;
  v18.super_class = ZWMenuDockPositionChooserViewController;
  v6 = a4;
  v7 = [(ZWMenuChooserTableViewController *)&v18 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(ZWMenuDockPositionChooserViewController *)self dockPositionIdentifiers:v18.receiver];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];

  v11 = AXUILocalizedTitleForDockPosition();
  v12 = [v7 textLabel];
  [v12 setText:v11];

  v13 = [v7 textLabel];
  [v13 setTextAlignment:4];

  v14 = +[AXSettings sharedInstance];
  v15 = [v14 zoomPreferredCurrentDockPosition];

  if ([v15 isEqualToString:v10])
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  [v7 setAccessoryType:v16];

  return v7;
}

- (ZWMenuDockPositionChooserViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end