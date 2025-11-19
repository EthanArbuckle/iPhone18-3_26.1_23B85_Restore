@interface ZWMenuZoomModeChooserViewController
- (ZWMenuZoomModeChooserViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation ZWMenuZoomModeChooserViewController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = ZWMenuZoomModeChooserViewController;
  [(ZWMenuChooserTableViewController *)&v5 loadView];
  v3 = AXZoomUserSelectableLensModes();
  v4 = [v3 array];
  [(ZWMenuZoomModeChooserViewController *)self setZoomModeIdentifiers:v4];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = ZWMenuZoomModeChooserViewController;
  v6 = a4;
  [(ZWMenuChooserTableViewController *)&v11 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(ZWMenuZoomModeChooserViewController *)self delegate:v11.receiver];
  v8 = [(ZWMenuZoomModeChooserViewController *)self zoomModeIdentifiers];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];
  [v7 menuZoomModeChooserViewController:self didChooseZoomMode:v10];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(ZWMenuZoomModeChooserViewController *)self zoomModeIdentifiers:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v19.receiver = self;
  v19.super_class = ZWMenuZoomModeChooserViewController;
  v6 = a4;
  v7 = [(ZWMenuChooserTableViewController *)&v19 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(ZWMenuZoomModeChooserViewController *)self zoomModeIdentifiers:v19.receiver];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];

  if (_UISolariumEnabled() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = AXUILocalizedTitleForZoomLensMode();
    v12 = [v7 cellLabel];
    [v12 setText:v11];
  }

  else
  {
    v13 = AXUILocalizedTitleForZoomLensMode();
    v14 = [v7 textLabel];
    [v14 setText:v13];

    v11 = [v7 textLabel];
    [v11 setTextAlignment:4];
  }

  v15 = +[AXSettings sharedInstance];
  v16 = [v15 zoomPreferredCurrentLensMode];

  if (_UISolariumEnabled() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 setAccessoryType:0];
    [v7 setIsChecked:{objc_msgSend(v16, "isEqualToString:", v10)}];
  }

  else
  {
    if ([v16 isEqualToString:v10])
    {
      v17 = 3;
    }

    else
    {
      v17 = 0;
    }

    [v7 setAccessoryType:v17];
  }

  return v7;
}

- (ZWMenuZoomModeChooserViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end