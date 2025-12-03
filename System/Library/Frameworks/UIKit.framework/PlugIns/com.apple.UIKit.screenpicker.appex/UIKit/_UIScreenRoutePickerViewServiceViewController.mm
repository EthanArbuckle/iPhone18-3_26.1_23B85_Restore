@interface _UIScreenRoutePickerViewServiceViewController
- (_UIScreenRoutePickerViewServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_disconnectRouteWithCompletion:(id)completion;
- (void)_prepareForDisplayWithCompletion:(id)completion;
- (void)_setCurrentOutputDeviceEnabled:(BOOL)enabled completion:(id)completion;
- (void)dismiss;
@end

@implementation _UIScreenRoutePickerViewServiceViewController

- (_UIScreenRoutePickerViewServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = _UIScreenRoutePickerViewServiceViewController;
  v4 = [(_UIScreenRoutePickerViewServiceViewController *)&v9 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(_UIScreenRoutePickerViewServiceViewController *)v4 setNavigationBarHidden:1];
    v6 = objc_alloc_init(_UIScreenRouteSelectionTableViewController);
    routeSelectionTableViewController = v5->_routeSelectionTableViewController;
    v5->_routeSelectionTableViewController = v6;

    [(_UIScreenRouteSelectionTableViewController *)v5->_routeSelectionTableViewController setDelegate:v5];
    [(_UIScreenRoutePickerViewServiceViewController *)v5 pushViewController:v5->_routeSelectionTableViewController animated:0];
  }

  return v5;
}

- (void)dismiss
{
  hostingViewController = [(_UIScreenRoutePickerViewServiceViewController *)self hostingViewController];
  [hostingViewController _dismissViewController];
}

- (void)_prepareForDisplayWithCompletion:(id)completion
{
  completionCopy = completion;
  [(_UIScreenRouteSelectionTableViewController *)self->_routeSelectionTableViewController setPid:[(_UIScreenRoutePickerViewServiceViewController *)self _hostProcessIdentifier]];
  [(_UIScreenRoutePickerViewServiceViewController *)self preferredContentSize];
  completionCopy[2]();
}

- (void)_disconnectRouteWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000222C;
  block[3] = &unk_100008388;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(v4, block);
}

- (void)_setCurrentOutputDeviceEnabled:(BOOL)enabled completion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002358;
  block[3] = &unk_1000083B0;
  enabledCopy = enabled;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, block);
}

@end