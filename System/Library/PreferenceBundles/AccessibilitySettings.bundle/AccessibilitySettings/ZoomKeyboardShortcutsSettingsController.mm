@interface ZoomKeyboardShortcutsSettingsController
- (ZoomKeyboardShortcutsSettingsController)init;
- (id)adjustZoomLevelShortcutEnabled;
- (id)panZoomShortcutEnabled;
- (id)resizeZoomWindowShortcutEnabled;
- (id)scrollWheelShortcutEnabled;
- (id)specifiers;
- (id)switchZoomModeShortcutEnabled;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tempToggleZoomShortcutEnabled;
- (id)toggleZoomShortcutEnabled;
- (id)zoomKeyboardShortcutsEnabled;
- (void)dealloc;
- (void)deviceMonitorDidDetectDeviceEvent:(id)a3;
- (void)insertOrRemoveKbShortcutsSpecs;
- (void)insertOrRemoveWindowModeSpecs;
- (void)setAdjustZoomLevelShortcutEnabled:(id)a3 specifier:(id)a4;
- (void)setPanZoomShortcutEnabled:(id)a3 specifier:(id)a4;
- (void)setResizeZoomWindowShortcutEnabled:(id)a3 specifier:(id)a4;
- (void)setScrollWheelShortcutEnabled:(id)a3 specifier:(id)a4;
- (void)setSwitchZoomModeShortcutEnabled:(id)a3 specifier:(id)a4;
- (void)setTempToggleZoomShortcutEnabled:(id)a3 specifier:(id)a4;
- (void)setToggleZoomShortcutEnabled:(id)a3 specifier:(id)a4;
- (void)setZoomKeyboardShortcutsEnabled:(id)a3 specifier:(id)a4;
@end

@implementation ZoomKeyboardShortcutsSettingsController

- (ZoomKeyboardShortcutsSettingsController)init
{
  v12.receiver = self;
  v12.super_class = ZoomKeyboardShortcutsSettingsController;
  v2 = [(ZoomKeyboardShortcutsSettingsController *)&v12 init];
  if (v2)
  {
    v3 = [AXDeviceMonitor alloc];
    v4 = +[NSRunLoop mainRunLoop];
    v5 = [v3 initWithMatchingDictionary:&off_27D260 callbackRunLoop:v4];
    deviceMonitor = v2->_deviceMonitor;
    v2->_deviceMonitor = v5;

    [(AXDeviceMonitor *)v2->_deviceMonitor setDelegate:v2];
    [(AXDeviceMonitor *)v2->_deviceMonitor begin];
    objc_initWeak(&location, v2);
    v7 = +[AXSettings sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __47__ZoomKeyboardShortcutsSettingsController_init__block_invoke;
    v9[3] = &unk_255388;
    objc_copyWeak(&v10, &location);
    [v7 registerUpdateBlock:v9 forRetrieveSelector:"zoomPreferredCurrentLensMode" withListener:v2];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __47__ZoomKeyboardShortcutsSettingsController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained insertOrRemoveWindowModeSpecs];
}

- (void)dealloc
{
  [(AXDeviceMonitor *)self->_deviceMonitor invalidate];
  v3.receiver = self;
  v3.super_class = ZoomKeyboardShortcutsSettingsController;
  [(ZoomKeyboardShortcutsSettingsController *)&v3 dealloc];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_45;
  }

  v55 = OBJC_IVAR___PSListController__specifiers;
  v56 = self;
  v4 = [(ZoomKeyboardShortcutsSettingsController *)self loadSpecifiersFromPlistName:@"ZoomKeyboardShortcutsSettings" target:?];
  v5 = [v4 mutableCopy];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (!v6)
  {
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    v8 = 0;
    v63 = 0;
    goto LABEL_28;
  }

  v7 = v6;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v8 = 0;
  v63 = 0;
  v9 = *v65;
  v10 = PSIDKey;
  do
  {
    v11 = 0;
    do
    {
      if (*v65 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v64 + 1) + 8 * v11);
      v13 = [v12 propertyForKey:v10];
      v14 = [v13 isEqualToString:@"ZoomKeyboardShortcutScrollWheel"];

      if (v14)
      {
        v15 = v63;
        v16 = v8;
        v63 = v12;
LABEL_20:
        v27 = v12;

        v8 = v16;
        goto LABEL_21;
      }

      v17 = [v12 propertyForKey:v10];
      v18 = [v17 isEqualToString:@"ZoomKeyboardShortcutScrollWheelGroup"];

      if (v18)
      {
        v15 = v61;
        v61 = v12;
LABEL_19:
        v16 = v8;
        goto LABEL_20;
      }

      v19 = [v12 propertyForKey:v10];
      v20 = [v19 isEqualToString:@"ZoomEnableKeyboardShortcuts"];

      if (v20)
      {
        v15 = v60;
        v60 = v12;
        goto LABEL_19;
      }

      v21 = [v12 propertyForKey:v10];
      v22 = [v21 isEqualToString:@"ZoomKeyboardShortcutResizeZoomWindow"];

      if (v22)
      {
        v15 = v59;
        v59 = v12;
        goto LABEL_19;
      }

      v23 = [v12 propertyForKey:v10];
      v24 = [v23 isEqualToString:@"ZoomKeyboardShortcutResizeZoomWindowGroup"];

      if (v24)
      {
        v15 = v58;
        v58 = v12;
        goto LABEL_19;
      }

      v25 = [v12 propertyForKey:v10];
      v26 = [v25 isEqualToString:@"ZoomKeyboardShortcutPanZoom"];

      if (v26)
      {
        v15 = v57;
        v57 = v12;
        goto LABEL_19;
      }

      v28 = [v12 propertyForKey:v10];
      v29 = [v28 isEqualToString:@"ZoomKeyboardShortcutPanZoomGroup"];

      v15 = v8;
      v16 = v12;
      if (v29)
      {
        goto LABEL_20;
      }

LABEL_21:
      v11 = v11 + 1;
    }

    while (v7 != v11);
    v30 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    v7 = v30;
  }

  while (v30);
LABEL_28:

  v31 = +[NSMutableArray array];
  [(ZoomKeyboardShortcutsSettingsController *)v56 setKbScrollWheelSpecs:v31];

  if (v63 && v61)
  {
    v32 = [(ZoomKeyboardShortcutsSettingsController *)v56 kbScrollWheelSpecs];
    v70[0] = v61;
    v70[1] = v63;
    v33 = [NSArray arrayWithObjects:v70 count:2];
    [v32 addObjectsFromArray:v33];
  }

  v34 = [(AXDeviceMonitor *)v56->_deviceMonitor copyDevices];
  v35 = [v34 count];

  if (!v35)
  {
    v36 = [(ZoomKeyboardShortcutsSettingsController *)v56 kbScrollWheelSpecs];
    [obj removeObjectsInArray:v36];
  }

  v37 = +[NSMutableArray array];
  [(ZoomKeyboardShortcutsSettingsController *)v56 setResizeSpecs:v37];

  if (v59 && v58)
  {
    v38 = [(ZoomKeyboardShortcutsSettingsController *)v56 resizeSpecs];
    v69[0] = v58;
    v69[1] = v59;
    v39 = [NSArray arrayWithObjects:v69 count:2];
    [v38 addObjectsFromArray:v39];
  }

  v40 = +[NSMutableArray array];
  [(ZoomKeyboardShortcutsSettingsController *)v56 setPanSpecs:v40];

  if (v57 && v8)
  {
    v41 = [(ZoomKeyboardShortcutsSettingsController *)v56 panSpecs];
    v68[0] = v8;
    v68[1] = v57;
    v42 = [NSArray arrayWithObjects:v68 count:2];
    [v41 addObjectsFromArray:v42];
  }

  v43 = +[AXSettings sharedInstance];
  v44 = [v43 zoomPreferredCurrentLensMode];
  v45 = [v44 isEqualToString:AXZoomLensModeFullscreen];

  if (v45)
  {
    v46 = [(ZoomKeyboardShortcutsSettingsController *)v56 resizeSpecs];
    [obj removeObjectsInArray:v46];
  }

  v47 = [obj mutableCopy];
  [(ZoomKeyboardShortcutsSettingsController *)v56 setKbShortcutSpecs:v47];

  if (v60)
  {
    v48 = [(ZoomKeyboardShortcutsSettingsController *)v56 kbShortcutSpecs];
    [v48 removeObject:v60];

    v49 = +[AXSettings sharedInstance];
    v50 = [v49 zoomKeyboardShortcutsEnabled];

    if ((v50 & 1) == 0)
    {
      v51 = [(ZoomKeyboardShortcutsSettingsController *)v56 kbShortcutSpecs];
      [obj removeObjectsInArray:v51];
    }
  }

  v52 = *&v56->AXUISettingsBaseListController_opaque[v55];
  *&v56->AXUISettingsBaseListController_opaque[v55] = obj;
  v53 = obj;

  v3 = *&v56->AXUISettingsBaseListController_opaque[v55];
LABEL_45:

  return v3;
}

- (void)insertOrRemoveKbShortcutsSpecs
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 zoomKeyboardShortcutsEnabled];

  v5 = [(ZoomKeyboardShortcutsSettingsController *)self kbShortcutSpecs];
  if (v4)
  {
    [(ZoomKeyboardShortcutsSettingsController *)self insertContiguousSpecifiers:v5 afterSpecifierID:@"ZoomEnableKeyboardShortcuts" animated:1];
  }

  else
  {
    [(ZoomKeyboardShortcutsSettingsController *)self removeContiguousSpecifiers:v5 animated:1];
  }

  [(ZoomKeyboardShortcutsSettingsController *)self prepareSpecifiersMetadata];
}

- (void)deviceMonitorDidDetectDeviceEvent:(id)a3
{
  v4 = [(ZoomKeyboardShortcutsSettingsController *)self kbScrollWheelSpecs];

  if (!v4)
  {
    return;
  }

  v5 = [(AXDeviceMonitor *)self->_deviceMonitor copyDevices];
  v6 = [v5 count];

  v7 = [(ZoomKeyboardShortcutsSettingsController *)self kbShortcutSpecs];
  v8 = [(ZoomKeyboardShortcutsSettingsController *)self kbScrollWheelSpecs];
  v9 = v8;
  if (!v6)
  {
    [v7 removeObjectsInArray:v8];

    v18 = [(ZoomKeyboardShortcutsSettingsController *)self kbScrollWheelSpecs];
    [(ZoomKeyboardShortcutsSettingsController *)self removeContiguousSpecifiers:v18 animated:1];
    goto LABEL_11;
  }

  v10 = [v8 objectAtIndex:0];
  v11 = [v7 containsObject:v10];

  if ((v11 & 1) == 0)
  {
    v12 = [(ZoomKeyboardShortcutsSettingsController *)self kbShortcutSpecs];
    v13 = [(ZoomKeyboardShortcutsSettingsController *)self kbScrollWheelSpecs];
    [v12 addObjectsFromArray:v13];
  }

  v18 = [(ZoomKeyboardShortcutsSettingsController *)self specifierForID:@"ZoomKeyboardShortcutTempToggleZoom"];
  v14 = +[AXSettings sharedInstance];
  if (![v14 zoomKeyboardShortcutsEnabled])
  {
    goto LABEL_8;
  }

  v15 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v16 = [(ZoomKeyboardShortcutsSettingsController *)self kbScrollWheelSpecs];
  v17 = [v16 objectAtIndex:0];
  LOBYTE(v15) = [v15 containsObject:v17];

  if ((v15 & 1) == 0)
  {
    v14 = [(ZoomKeyboardShortcutsSettingsController *)self kbScrollWheelSpecs];
    [(ZoomKeyboardShortcutsSettingsController *)self insertContiguousSpecifiers:v14 afterSpecifier:v18 animated:1];
LABEL_8:
  }

LABEL_11:
}

- (void)insertOrRemoveWindowModeSpecs
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 zoomPreferredCurrentLensMode];
  if ([v4 isEqualToString:AXZoomLensModeFullscreen])
  {
  }

  else
  {
    v5 = [(ZoomKeyboardShortcutsSettingsController *)self specifiers];
    v6 = [(ZoomKeyboardShortcutsSettingsController *)self specifierForID:@"ZoomKeyboardShortcutResizeZoomWindow"];
    v7 = [v5 containsObject:v6];

    if ((v7 & 1) == 0)
    {
      v12 = [(ZoomKeyboardShortcutsSettingsController *)self resizeSpecs];
      v8 = [(ZoomKeyboardShortcutsSettingsController *)self specifierForID:@"ZoomKeyboardShortcutPanZoom"];
      [(ZoomKeyboardShortcutsSettingsController *)self insertContiguousSpecifiers:v12 afterSpecifier:v8 animated:1];
      goto LABEL_8;
    }
  }

  v12 = +[AXSettings sharedInstance];
  v8 = [v12 zoomPreferredCurrentLensMode];
  if (([v8 isEqualToString:AXZoomLensModeFullscreen] & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  v9 = [(ZoomKeyboardShortcutsSettingsController *)self specifiers];
  v10 = [(ZoomKeyboardShortcutsSettingsController *)self specifierForID:@"ZoomKeyboardShortcutResizeZoomWindow"];
  v11 = [v9 containsObject:v10];

  if (!v11)
  {
    return;
  }

  v12 = [(ZoomKeyboardShortcutsSettingsController *)self resizeSpecs];
  [ZoomKeyboardShortcutsSettingsController removeContiguousSpecifiers:"removeContiguousSpecifiers:animated:" animated:?];
LABEL_9:
}

- (void)setZoomKeyboardShortcutsEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = +[AXSettings sharedInstance];
  [v6 setZoomKeyboardShortcutsEnabled:v5];

  [(ZoomKeyboardShortcutsSettingsController *)self insertOrRemoveKbShortcutsSpecs];
}

- (id)zoomKeyboardShortcutsEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 zoomKeyboardShortcutsEnabled]);

  return v3;
}

- (void)setAdjustZoomLevelShortcutEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setZoomAdjustZoomLevelKbShortcutEnabled:v4];
}

- (id)adjustZoomLevelShortcutEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 zoomAdjustZoomLevelKbShortcutEnabled]);

  return v3;
}

- (void)setToggleZoomShortcutEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setZoomToggleZoomKbShortcutEnabled:v4];
}

- (id)toggleZoomShortcutEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 zoomToggleZoomKbShortcutEnabled]);

  return v3;
}

- (void)setPanZoomShortcutEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setZoomPanZoomKbShortcutEnabled:v4];
}

- (id)panZoomShortcutEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 zoomPanZoomKbShortcutEnabled]);

  return v3;
}

- (void)setResizeZoomWindowShortcutEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setZoomResizeZoomWindowKbShortcutEnabled:v4];
}

- (id)resizeZoomWindowShortcutEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 zoomResizeZoomWindowKbShortcutEnabled]);

  return v3;
}

- (void)setSwitchZoomModeShortcutEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setZoomSwitchZoomModeKbShortcutEnabled:v4];
}

- (id)switchZoomModeShortcutEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 zoomSwitchZoomModeKbShortcutEnabled]);

  return v3;
}

- (void)setTempToggleZoomShortcutEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setZoomTempToggleZoomKbShortcutEnabled:v4];
}

- (id)tempToggleZoomShortcutEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 zoomTempToggleZoomKbShortcutEnabled]);

  return v3;
}

- (void)setScrollWheelShortcutEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setZoomScrollWheelKbShortcutEnabled:v4];
}

- (id)scrollWheelShortcutEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 zoomScrollWheelKbShortcutEnabled]);

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = ZoomKeyboardShortcutsSettingsController;
  v4 = [(ZoomKeyboardShortcutsSettingsController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 textLabel];
  [v5 setNumberOfLines:0];

  return v4;
}

@end