@interface ZoomFilterController
- (ZoomFilterController)init;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ZoomFilterController

- (ZoomFilterController)init
{
  v9.receiver = self;
  v9.super_class = ZoomFilterController;
  v2 = [(ZoomFilterController *)&v9 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSettings sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __28__ZoomFilterController_init__block_invoke;
    v6[3] = &unk_255388;
    objc_copyWeak(&v7, &location);
    [v3 registerUpdateBlock:v6 forRetrieveSelector:"zoomCurrentLensEffect" withListener:v2];

    objc_destroyWeak(&v7);
    v4 = v2;
    objc_destroyWeak(&location);
  }

  return v2;
}

void __28__ZoomFilterController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v16 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v15 = [PSSpecifier groupSpecifierWithID:0 name:0];
    [v4 addObject:?];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = AXZoomAllLensEffects();
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * v9);
          v11 = AXUILocalizedTitleForZoomLensEffect();
          v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v12 setProperty:v10 forKey:@"ZoomFilter"];
          [v4 addObject:v12];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v13 = *&self->AXUISettingsBaseListController_opaque[v16];
    *&self->AXUISettingsBaseListController_opaque[v16] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v16];
  }

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = ZoomFilterController;
  v4 = [(ZoomFilterController *)&v10 tableView:view cellForRowAtIndexPath:path];
  v5 = +[AXSettings sharedInstance];
  zoomCurrentLensEffect = [v5 zoomCurrentLensEffect];

  specifier = [v4 specifier];
  v8 = [specifier propertyForKey:@"ZoomFilter"];

  if (v8)
  {
    [v4 setChecked:{objc_msgSend(zoomCurrentLensEffect, "isEqualToString:", v8)}];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = ZoomFilterController;
  pathCopy = path;
  v8 = [(ZoomFilterController *)&v12 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:@"ZoomFilter"];

  if (v10)
  {
    v11 = +[AXSettings sharedInstance];
    [v11 setZoomCurrentLensEffect:v10];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  [(ZoomFilterController *)self updateTableCheckedSelection:pathCopy];
}

@end