@interface ZoomLensModeDetailController
- (ZoomLensModeDetailController)init;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSpecifiersForZoomModeSettingsChange;
@end

@implementation ZoomLensModeDetailController

- (ZoomLensModeDetailController)init
{
  v12.receiver = self;
  v12.super_class = ZoomLensModeDetailController;
  v2 = [(ZoomLensModeDetailController *)&v12 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSettings sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __36__ZoomLensModeDetailController_init__block_invoke;
    v9[3] = &unk_255388;
    objc_copyWeak(&v10, &location);
    [v3 registerUpdateBlock:v9 forRetrieveSelector:"zoomPreferredCurrentLensMode" withListener:v2];

    objc_destroyWeak(&v10);
    v4 = +[AXSettings sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __36__ZoomLensModeDetailController_init__block_invoke_2;
    v7[3] = &unk_255388;
    objc_copyWeak(&v8, &location);
    [v4 registerUpdateBlock:v7 forRetrieveSelector:"zoomPreferredCurrentDockPosition" withListener:v2];

    objc_destroyWeak(&v8);
    v5 = v2;
    objc_destroyWeak(&location);
  }

  return v2;
}

void __36__ZoomLensModeDetailController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSpecifiersForZoomModeSettingsChange];

  v5 = objc_loadWeakRetained((a1 + 32));
  v3 = [v5 table];
  v4 = [NSIndexSet indexSetWithIndex:0];
  [v3 reloadSections:v4 withRowAnimation:0];
}

void __36__ZoomLensModeDetailController_init__block_invoke_2(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained dockPositionSpecs];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = objc_loadWeakRetained((a1 + 32));
        [v9 reloadSpecifier:v8 animated:1];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v38 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v37 = [PSSpecifier groupSpecifierWithID:@"ZoomLensMode" name:0];
    [v4 addObject:?];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = AXZoomUserSelectableLensModes();
    v5 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v49;
      v8 = PSIDKey;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v49 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v48 + 1) + 8 * i);
          v11 = AXLocalizedTitleForZoomLensMode(v10);
          v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v12 setProperty:v10 forKey:@"ZoomLensMode"];
          [v12 setProperty:v10 forKey:v8];
          [v4 addObject:v12];
        }

        v6 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v6);
    }

    v13 = settingsLocString(@"ZOOM_DOCK_POSITION", @"ZoomSettings");
    v14 = [PSSpecifier groupSpecifierWithID:@"ZoomDockPosition" name:v13];
    [(ZoomLensModeDetailController *)self setDockPositionsGroupSpecifier:v14];

    dockPositionsGroupSpecifier = [(ZoomLensModeDetailController *)self dockPositionsGroupSpecifier];
    [v4 addObject:dockPositionsGroupSpecifier];

    v16 = +[NSMutableArray array];
    [(ZoomLensModeDetailController *)self setDockPositionSpecs:v16];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = AXZoomDockPositions();
    v18 = [v17 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v45;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v44 + 1) + 8 * j);
          v23 = AXLocalizedTitleForDockPosition(v22);
          v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v24 setProperty:v22 forKey:@"ZoomDockPosition"];
          [v4 addObject:v24];
          dockPositionSpecs = [(ZoomLensModeDetailController *)self dockPositionSpecs];
          [dockPositionSpecs addObject:v24];
        }

        v19 = [v17 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v19);
    }

    v26 = +[AXSettings sharedInstance];
    zoomPreferredCurrentLensMode = [v26 zoomPreferredCurrentLensMode];
    v28 = [zoomPreferredCurrentLensMode isEqualToString:AXZoomLensModeWindowAnchored];

    if ((v28 & 1) == 0)
    {
      dockPositionsGroupSpecifier2 = [(ZoomLensModeDetailController *)self dockPositionsGroupSpecifier];
      [v4 removeObject:dockPositionsGroupSpecifier2];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      dockPositionSpecs2 = [(ZoomLensModeDetailController *)self dockPositionSpecs];
      v31 = [dockPositionSpecs2 countByEnumeratingWithState:&v40 objects:v52 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v41;
        do
        {
          for (k = 0; k != v32; k = k + 1)
          {
            if (*v41 != v33)
            {
              objc_enumerationMutation(dockPositionSpecs2);
            }

            [v4 removeObject:*(*(&v40 + 1) + 8 * k)];
          }

          v32 = [dockPositionSpecs2 countByEnumeratingWithState:&v40 objects:v52 count:16];
        }

        while (v32);
      }
    }

    v35 = *&self->AXUISettingsBaseListController_opaque[v38];
    *&self->AXUISettingsBaseListController_opaque[v38] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v38];
  }

  return v3;
}

- (void)updateSpecifiersForZoomModeSettingsChange
{
  specifiers = [(ZoomLensModeDetailController *)self specifiers];
  dockPositionsGroupSpecifier = [(ZoomLensModeDetailController *)self dockPositionsGroupSpecifier];
  if ([specifiers containsObject:dockPositionsGroupSpecifier])
  {
  }

  else
  {
    v5 = +[AXSettings sharedInstance];
    zoomPreferredCurrentLensMode = [v5 zoomPreferredCurrentLensMode];
    v7 = [zoomPreferredCurrentLensMode isEqualToString:AXZoomLensModeWindowAnchored];

    if (v7)
    {
      dockPositionsGroupSpecifier2 = [(ZoomLensModeDetailController *)self dockPositionsGroupSpecifier];
      specifiers2 = [(ZoomLensModeDetailController *)self specifiers];
      lastObject = [specifiers2 lastObject];
      [(ZoomLensModeDetailController *)self insertSpecifier:dockPositionsGroupSpecifier2 afterSpecifier:lastObject animated:1];

      dockPositionSpecs = [(ZoomLensModeDetailController *)self dockPositionSpecs];
      dockPositionsGroupSpecifier3 = [(ZoomLensModeDetailController *)self dockPositionsGroupSpecifier];
      [(ZoomLensModeDetailController *)self insertContiguousSpecifiers:dockPositionSpecs afterSpecifier:dockPositionsGroupSpecifier3 animated:1];
LABEL_8:

      goto LABEL_10;
    }
  }

  dockPositionSpecs = [(ZoomLensModeDetailController *)self specifiers];
  dockPositionsGroupSpecifier3 = [(ZoomLensModeDetailController *)self dockPositionsGroupSpecifier];
  if (([dockPositionSpecs containsObject:dockPositionsGroupSpecifier3] & 1) == 0)
  {
    goto LABEL_8;
  }

  v12 = +[AXSettings sharedInstance];
  zoomPreferredCurrentLensMode2 = [v12 zoomPreferredCurrentLensMode];
  v14 = [zoomPreferredCurrentLensMode2 isEqualToString:AXZoomLensModeWindowAnchored];

  if (v14)
  {
    return;
  }

  dockPositionsGroupSpecifier4 = [(ZoomLensModeDetailController *)self dockPositionsGroupSpecifier];
  [(ZoomLensModeDetailController *)self removeSpecifier:dockPositionsGroupSpecifier4 animated:1];

  dockPositionSpecs = [(ZoomLensModeDetailController *)self dockPositionSpecs];
  [ZoomLensModeDetailController removeContiguousSpecifiers:"removeContiguousSpecifiers:animated:" animated:?];
LABEL_10:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = ZoomLensModeDetailController;
  v4 = [(ZoomLensModeDetailController *)&v14 tableView:view cellForRowAtIndexPath:path];
  v5 = +[AXSettings sharedInstance];
  zoomPreferredCurrentLensMode = [v5 zoomPreferredCurrentLensMode];

  v7 = +[AXSettings sharedInstance];
  zoomPreferredCurrentDockPosition = [v7 zoomPreferredCurrentDockPosition];

  specifier = [v4 specifier];
  v10 = [specifier propertyForKey:@"ZoomLensMode"];

  if (v10)
  {
    [v4 setChecked:{objc_msgSend(zoomPreferredCurrentLensMode, "isEqualToString:", v10)}];
  }

  specifier2 = [v4 specifier];
  v12 = [specifier2 propertyForKey:@"ZoomDockPosition"];

  if (v12)
  {
    [v4 setChecked:{objc_msgSend(zoomPreferredCurrentDockPosition, "isEqualToString:", v12)}];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  v17.receiver = self;
  v17.super_class = ZoomLensModeDetailController;
  pathCopy = path;
  v8 = [(ZoomLensModeDetailController *)&v17 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:@"ZoomLensMode"];

  if (v10)
  {
    v11 = +[AXSettings sharedInstance];
    [v11 setZoomPreferredCurrentLensMode:v10];

    v12 = +[ZoomServices sharedInstance];
    [v12 notifyZoomLensModeWasChangedInSettingsTo:v10];
  }

  specifier2 = [v8 specifier];
  v14 = [specifier2 propertyForKey:@"ZoomDockPosition"];

  if (v14)
  {
    v15 = +[AXSettings sharedInstance];
    [v15 setZoomPreferredCurrentDockPosition:v14];

    v16 = +[ZoomServices sharedInstance];
    [v16 notifyZoomDockPositionWasChangedInSettingsTo:v14];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  [(ZoomLensModeDetailController *)self updateTableCheckedSelection:pathCopy];
}

@end