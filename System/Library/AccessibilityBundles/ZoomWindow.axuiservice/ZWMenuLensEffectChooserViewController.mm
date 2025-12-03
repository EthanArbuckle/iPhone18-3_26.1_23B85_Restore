@interface ZWMenuLensEffectChooserViewController
- (ZWMenuLensEffectChooserViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ZWMenuLensEffectChooserViewController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = ZWMenuLensEffectChooserViewController;
  [(ZWMenuChooserTableViewController *)&v5 loadView];
  v3 = AXZoomAllLensEffects();
  array = [v3 array];
  [(ZWMenuLensEffectChooserViewController *)self setLensEffectIdentifiers:array];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = ZWMenuLensEffectChooserViewController;
  pathCopy = path;
  [(ZWMenuChooserTableViewController *)&v11 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(ZWMenuLensEffectChooserViewController *)self delegate:v11.receiver];
  lensEffectIdentifiers = [(ZWMenuLensEffectChooserViewController *)self lensEffectIdentifiers];
  v9 = [pathCopy row];

  v10 = [lensEffectIdentifiers objectAtIndex:v9];
  [v7 menuLensEffectChooserViewController:self didChooseLensEffect:v10];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(ZWMenuLensEffectChooserViewController *)self lensEffectIdentifiers:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v19.receiver = self;
  v19.super_class = ZWMenuLensEffectChooserViewController;
  pathCopy = path;
  v7 = [(ZWMenuChooserTableViewController *)&v19 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(ZWMenuLensEffectChooserViewController *)self lensEffectIdentifiers:v19.receiver];
  v9 = [pathCopy row];

  v10 = [v8 objectAtIndex:v9];

  if (_UISolariumEnabled() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    textLabel2 = AXUILocalizedTitleForZoomLensEffect();
    cellLabel = [v7 cellLabel];
    [cellLabel setText:textLabel2];
  }

  else
  {
    v13 = AXUILocalizedTitleForZoomLensEffect();
    textLabel = [v7 textLabel];
    [textLabel setText:v13];

    textLabel2 = [v7 textLabel];
    [textLabel2 setTextAlignment:4];
  }

  v15 = +[AXSettings sharedInstance];
  zoomCurrentLensEffect = [v15 zoomCurrentLensEffect];

  if (_UISolariumEnabled() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 setAccessoryType:0];
    [v7 setIsChecked:{objc_msgSend(zoomCurrentLensEffect, "isEqualToString:", v10)}];
  }

  else
  {
    if ([zoomCurrentLensEffect isEqualToString:v10])
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

- (ZWMenuLensEffectChooserViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end