@interface ZWMenuDockPositionChooserViewController
- (ZWMenuDockPositionChooserViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ZWMenuDockPositionChooserViewController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = ZWMenuDockPositionChooserViewController;
  [(ZWMenuChooserTableViewController *)&v5 loadView];
  v3 = AXZoomDockPositions();
  array = [v3 array];
  [(ZWMenuDockPositionChooserViewController *)self setDockPositionIdentifiers:array];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = ZWMenuDockPositionChooserViewController;
  pathCopy = path;
  [(ZWMenuChooserTableViewController *)&v11 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(ZWMenuDockPositionChooserViewController *)self delegate:v11.receiver];
  dockPositionIdentifiers = [(ZWMenuDockPositionChooserViewController *)self dockPositionIdentifiers];
  v9 = [pathCopy row];

  v10 = [dockPositionIdentifiers objectAtIndex:v9];
  [v7 menuDockPositionChooserViewController:self didChooseDockPosition:v10];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(ZWMenuDockPositionChooserViewController *)self dockPositionIdentifiers:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v18.receiver = self;
  v18.super_class = ZWMenuDockPositionChooserViewController;
  pathCopy = path;
  v7 = [(ZWMenuChooserTableViewController *)&v18 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(ZWMenuDockPositionChooserViewController *)self dockPositionIdentifiers:v18.receiver];
  v9 = [pathCopy row];

  v10 = [v8 objectAtIndex:v9];

  v11 = AXUILocalizedTitleForDockPosition();
  textLabel = [v7 textLabel];
  [textLabel setText:v11];

  textLabel2 = [v7 textLabel];
  [textLabel2 setTextAlignment:4];

  v14 = +[AXSettings sharedInstance];
  zoomPreferredCurrentDockPosition = [v14 zoomPreferredCurrentDockPosition];

  if ([zoomPreferredCurrentDockPosition isEqualToString:v10])
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