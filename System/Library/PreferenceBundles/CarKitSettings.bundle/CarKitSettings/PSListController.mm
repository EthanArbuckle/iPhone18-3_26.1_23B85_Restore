@interface PSListController
+ (BOOL)shouldShowWidgetSettingsSpecifierFor:(id)for;
- (void)_car_emitNavigationEvent:(id)event navigationComponents:(id)components;
- (void)_car_popIfVisible;
- (void)presentHomeScreenLayoutViewWithTraitCollection:(id)collection specifier:(id)specifier;
- (void)presentWidgetSettingsViewWithTraitCollection:(id)collection specifier:(id)specifier;
@end

@implementation PSListController

- (void)_car_popIfVisible
{
  navigationController = [(PSListController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    navigationController2 = [(PSListController *)self navigationController];
    v10 = [navigationController2 popViewControllerAnimated:1];
    goto LABEL_6;
  }

  parentViewController = [(PSListController *)self parentViewController];
  if (parentViewController)
  {
    navigationController2 = parentViewController;
    navigationController3 = [parentViewController navigationController];
    topViewController2 = [navigationController3 topViewController];

    parentViewController = navigationController2;
    if (topViewController2 == navigationController2)
    {
      v11NavigationController = [navigationController2 navigationController];
      v9 = [v11NavigationController popViewControllerAnimated:1];

LABEL_6:
      parentViewController = navigationController2;
    }
  }
}

- (void)_car_emitNavigationEvent:(id)event navigationComponents:(id)components
{
  eventCopy = event;
  componentsCopy = components;
  v24 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.General/CARPLAY"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v7 bundleURL];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v26 = eventCopy;
  v22 = [v9 initWithKey:eventCopy table:0 locale:v10 bundleURL:bundleURL];

  v11 = +[NSMutableArray array];
  v25 = componentsCopy;
  if ([componentsCopy count])
  {
    v12 = [&off_70D80 arrayByAddingObjectsFromArray:componentsCopy];
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
        v21 = [v19 initWithKey:v18 table:0 locale:v20 bundleURL:bundleURL];

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

- (void)presentHomeScreenLayoutViewWithTraitCollection:(id)collection specifier:(id)specifier
{
  collectionCopy = collection;
  specifierCopy = specifier;
  selfCopy = self;
  _sSo16PSListControllerC14CarKitSettingsE27presentHomeScreenLayoutView_9specifierySo17UITraitCollectionC_So11PSSpecifierCtF_0(collectionCopy, specifierCopy);
}

- (void)presentWidgetSettingsViewWithTraitCollection:(id)collection specifier:(id)specifier
{
  collectionCopy = collection;
  specifierCopy = specifier;
  selfCopy = self;
  _sSo16PSListControllerC14CarKitSettingsE013presentWidgetE23ViewWithTraitCollection_9specifierySo07UITraitK0C_So11PSSpecifierCtF_0(collectionCopy, specifierCopy);
}

+ (BOOL)shouldShowWidgetSettingsSpecifierFor:(id)for
{
  v4 = objc_opt_self();
  forCopy = for;
  capabilitiesIdentifier = [v4 capabilitiesIdentifier];
  if (!capabilitiesIdentifier)
  {
    sub_4B5FC();
    capabilitiesIdentifier = sub_4B5EC();
  }

  v7 = [v4 fetchCarCapabilitiesWithIdentifier:capabilitiesIdentifier];

  lodWidgetsMode = [v7 lodWidgetsMode];
  return lodWidgetsMode != &dword_0 + 1;
}

@end