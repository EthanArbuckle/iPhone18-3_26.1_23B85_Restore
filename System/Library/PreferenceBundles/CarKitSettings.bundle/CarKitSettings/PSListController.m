@interface PSListController
+ (BOOL)shouldShowWidgetSettingsSpecifierFor:(id)a3;
- (void)_car_emitNavigationEvent:(id)a3 navigationComponents:(id)a4;
- (void)_car_popIfVisible;
- (void)presentHomeScreenLayoutViewWithTraitCollection:(id)a3 specifier:(id)a4;
- (void)presentWidgetSettingsViewWithTraitCollection:(id)a3 specifier:(id)a4;
@end

@implementation PSListController

- (void)_car_popIfVisible
{
  v3 = [(PSListController *)self navigationController];
  v4 = [v3 topViewController];

  if (v4 == self)
  {
    v11 = [(PSListController *)self navigationController];
    v10 = [v11 popViewControllerAnimated:1];
    goto LABEL_6;
  }

  v5 = [(PSListController *)self parentViewController];
  if (v5)
  {
    v11 = v5;
    v6 = [v5 navigationController];
    v7 = [v6 topViewController];

    v5 = v11;
    if (v7 == v11)
    {
      v8 = [v11 navigationController];
      v9 = [v8 popViewControllerAnimated:1];

LABEL_6:
      v5 = v11;
    }
  }
}

- (void)_car_emitNavigationEvent:(id)a3 navigationComponents:(id)a4
{
  v5 = a3;
  v6 = a4;
  v24 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.General/CARPLAY"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 bundleURL];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v26 = v5;
  v22 = [v9 initWithKey:v5 table:0 locale:v10 bundleURL:v8];

  v11 = +[NSMutableArray array];
  v25 = v6;
  if ([v6 count])
  {
    v12 = [&off_70D80 arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    v12 = &off_70D80;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * v17);
        v19 = [_NSLocalizedStringResource alloc];
        v20 = +[NSLocale currentLocale];
        v21 = [v19 initWithKey:v18 table:0 locale:v20 bundleURL:v8];

        [v11 addObject:v21];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  [(PSListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.carplay" title:v22 localizedNavigationComponents:v11 deepLink:v24];
}

- (void)presentHomeScreenLayoutViewWithTraitCollection:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _sSo16PSListControllerC14CarKitSettingsE27presentHomeScreenLayoutView_9specifierySo17UITraitCollectionC_So11PSSpecifierCtF_0(v6, v7);
}

- (void)presentWidgetSettingsViewWithTraitCollection:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _sSo16PSListControllerC14CarKitSettingsE013presentWidgetE23ViewWithTraitCollection_9specifierySo07UITraitK0C_So11PSSpecifierCtF_0(v6, v7);
}

+ (BOOL)shouldShowWidgetSettingsSpecifierFor:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v4 capabilitiesIdentifier];
  if (!v6)
  {
    sub_4B5FC();
    v6 = sub_4B5EC();
  }

  v7 = [v4 fetchCarCapabilitiesWithIdentifier:v6];

  v8 = [v7 lodWidgetsMode];
  return v8 != &dword_0 + 1;
}

@end