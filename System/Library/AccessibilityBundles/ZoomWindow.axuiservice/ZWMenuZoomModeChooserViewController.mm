@interface ZWMenuZoomModeChooserViewController
- (ZWMenuZoomModeChooserViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ZWMenuZoomModeChooserViewController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = ZWMenuZoomModeChooserViewController;
  [(ZWMenuChooserTableViewController *)&v5 loadView];
  v3 = AXZoomUserSelectableLensModes();
  array = [v3 array];
  [(ZWMenuZoomModeChooserViewController *)self setZoomModeIdentifiers:array];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = ZWMenuZoomModeChooserViewController;
  pathCopy = path;
  [(ZWMenuChooserTableViewController *)&v11 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(ZWMenuZoomModeChooserViewController *)self delegate:v11.receiver];
  zoomModeIdentifiers = [(ZWMenuZoomModeChooserViewController *)self zoomModeIdentifiers];
  v9 = [pathCopy row];

  v10 = [zoomModeIdentifiers objectAtIndex:v9];
  [v7 menuZoomModeChooserViewController:self didChooseZoomMode:v10];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(ZWMenuZoomModeChooserViewController *)self zoomModeIdentifiers:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v19.receiver = self;
  v19.super_class = ZWMenuZoomModeChooserViewController;
  pathCopy = path;
  v7 = [(ZWMenuChooserTableViewController *)&v19 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(ZWMenuZoomModeChooserViewController *)self zoomModeIdentifiers:v19.receiver];
  v9 = [pathCopy row];

  v10 = [v8 objectAtIndex:v9];

  if (_UISolariumEnabled() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    textLabel2 = AXUILocalizedTitleForZoomLensMode();
    cellLabel = [v7 cellLabel];
    [cellLabel setText:textLabel2];
  }

  else
  {
    v13 = AXUILocalizedTitleForZoomLensMode();
    textLabel = [v7 textLabel];
    [textLabel setText:v13];

    textLabel2 = [v7 textLabel];
    [textLabel2 setTextAlignment:4];
  }

  v15 = +[AXSettings sharedInstance];
  zoomPreferredCurrentLensMode = [v15 zoomPreferredCurrentLensMode];

  if (_UISolariumEnabled() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 setAccessoryType:0];
    [v7 setIsChecked:{objc_msgSend(zoomPreferredCurrentLensMode, "isEqualToString:", v10)}];
  }

  else
  {
    if ([zoomPreferredCurrentLensMode isEqualToString:v10])
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