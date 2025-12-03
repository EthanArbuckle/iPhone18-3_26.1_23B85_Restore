@interface ASTConnectedDevicesController
- (ASTConnectedDevicesController)init;
- (id)_nameForCustomizableMouse:(id)mouse;
- (id)specifiers;
- (void)centralManagerDidUpdateState:(id)state;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ASTConnectedDevicesController

- (ASTConnectedDevicesController)init
{
  v16.receiver = self;
  v16.super_class = ASTConnectedDevicesController;
  v2 = [(ASTConnectedDevicesController *)&v16 init];
  if (v2)
  {
    v3 = +[AXMouseEventListener sharedInstance];
    mouseEventListener = v2->_mouseEventListener;
    v2->_mouseEventListener = v3;

    [(AXMouseEventListener *)v2->_mouseEventListener addObserver:v2];
    v5 = objc_alloc_init(AXSSMotionTrackingInputConfiguration);
    if (AXIsInternalInstall())
    {
      v6 = +[AXSettings sharedInstance];
      assistiveTouchInternalOnlyPearlTrackingEnabled = [v6 assistiveTouchInternalOnlyPearlTrackingEnabled];
    }

    else
    {
      assistiveTouchInternalOnlyPearlTrackingEnabled = 0;
    }

    v8 = [NSMutableSet setWithObject:&off_279F90];
    v9 = v8;
    if (assistiveTouchInternalOnlyPearlTrackingEnabled)
    {
      [v8 addObject:&off_279FA8];
    }

    [v5 setAllowedTrackingTypes:v9];
    v10 = [[AXSSMotionTrackingInputManager alloc] initWithConfiguration:v5];
    motionTrackingInputManager = v2->_motionTrackingInputManager;
    v2->_motionTrackingInputManager = v10;

    v12 = [[CBCentralManager alloc] initWithDelegate:v2 queue:&_dispatch_main_q];
    centralManager = v2->_centralManager;
    v2->_centralManager = v12;

    v14 = +[BluetoothManager sharedInstance];
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = ASTConnectedDevicesController;
  [(ASTConnectedDevicesController *)&v6 viewWillAppear:appear];
  motionTrackingInputManager = [(ASTConnectedDevicesController *)self motionTrackingInputManager];
  [motionTrackingInputManager setDelegate:self];

  motionTrackingInputManager2 = [(ASTConnectedDevicesController *)self motionTrackingInputManager];
  [motionTrackingInputManager2 startMonitoring];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ASTConnectedDevicesController;
  [(ASTConnectedDevicesController *)&v5 viewWillDisappear:disappear];
  motionTrackingInputManager = [(ASTConnectedDevicesController *)self motionTrackingInputManager];
  [motionTrackingInputManager stopMonitoring];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_48;
  }

  v67 = OBJC_IVAR___PSListController__specifiers;
  v72 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  mouseEventListener = [(ASTConnectedDevicesController *)self mouseEventListener];
  discoveredMouseDevices = [mouseEventListener discoveredMouseDevices];
  v7 = [NSMutableArray arrayWithArray:discoveredMouseDevices];

  [v4 axSafelyAddObjectsFromArray:v7];
  centralManager = [(ASTConnectedDevicesController *)self centralManager];
  v9 = [CBUUID UUIDWithString:CBUUIDHumanInterfaceDeviceServiceString];
  v103 = v9;
  v10 = [NSArray arrayWithObjects:&v103 count:1];
  v11 = [centralManager retrieveConnectedPeripheralsWithServices:v10];
  connectedPeripherals = self->_connectedPeripherals;
  self->_connectedPeripherals = v11;

  v13 = +[BluetoothManager sharedInstance];
  connectedDevices = [v13 connectedDevices];
  connectedBluetoothDevices = self->_connectedBluetoothDevices;
  self->_connectedBluetoothDevices = connectedDevices;

  motionTrackingInputManager = [(ASTConnectedDevicesController *)self motionTrackingInputManager];
  [motionTrackingInputManager compatibleInputs];
  v18 = v17 = self;
  v19 = [NSMutableArray arrayWithArray:v18];

  v76 = v19;
  [v4 axSafelyAddObjectsFromArray:v19];
  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = __43__ASTConnectedDevicesController_specifiers__block_invoke;
  v93[3] = &unk_256FA0;
  v68 = v17;
  v93[4] = v17;
  v20 = [v4 sortedArrayUsingComparator:v93];
  v69 = [v20 mutableCopy];

  v71 = +[NSMutableArray array];
  v70 = +[NSMutableDictionary dictionary];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v7;
  v75 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
  if (v75)
  {
    v73 = *v90;
    do
    {
      for (i = 0; i != v75; i = i + 1)
      {
        if (*v90 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v79 = *(*(&v89 + 1) + 8 * i);
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v22 = v76;
        v23 = [v22 countByEnumeratingWithState:&v85 objects:v101 count:16];
        if (!v23)
        {
          v28 = v22;
          goto LABEL_24;
        }

        v24 = v23;
        v77 = i;
        v25 = *v86;
LABEL_9:
        v26 = 0;
        while (1)
        {
          if (*v86 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v85 + 1) + 8 * v26);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v27 isHIDDevice] || objc_msgSend(v27, "trackingType") != &dword_0 + 2)
          {
            goto LABEL_18;
          }

          v28 = v27;
          vendorId = [v79 vendorId];
          vendorID = [v28 vendorID];
          unsignedIntegerValue = [vendorID unsignedIntegerValue];

          productId = [v79 productId];
          productID = [v28 productID];
          unsignedIntegerValue2 = [productID unsignedIntegerValue];

          if (vendorId == unsignedIntegerValue && productId == unsignedIntegerValue2)
          {
            break;
          }

LABEL_18:
          if (v24 == ++v26)
          {
            v24 = [v22 countByEnumeratingWithState:&v85 objects:v101 count:16];
            if (v24)
            {
              goto LABEL_9;
            }

            v28 = v22;
            i = v77;
            goto LABEL_24;
          }
        }

        i = v77;
        if (!v28)
        {
          continue;
        }

        v35 = [v22 indexOfObject:v28];
        v36 = [obj indexOfObject:v79];
        v37 = [NSNumber numberWithUnsignedInteger:v35];
        v38 = [NSNumber numberWithUnsignedInteger:v36];
        [v70 setObject:v37 forKey:v38];

        [v71 addObject:v79];
        [v69 removeObject:v28];
LABEL_24:
      }

      v75 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
    }

    while (v75);
  }

  v39 = v68;
  if (![v69 count])
  {
    goto LABEL_45;
  }

  v80 = settingsLocString(@"ASTConnectedDevices", @"HandSettings");
  v78 = [PSSpecifier groupSpecifierWithName:?];
  [v72 addObject:?];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v40 = v69;
  v41 = [v40 countByEnumeratingWithState:&v81 objects:v100 count:16];
  if (!v41)
  {
    goto LABEL_44;
  }

  v42 = v41;
  v43 = *v82;
  do
  {
    for (j = 0; j != v42; j = j + 1)
    {
      if (*v82 != v43)
      {
        objc_enumerationMutation(v40);
      }

      v45 = *(*(&v81 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = [(ASTConnectedDevicesController *)v39 _nameForCustomizableMouse:v45];
        v47 = [PSSpecifier preferenceSpecifierNamed:v46 target:v39 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

        if ([v71 containsObject:v45])
        {
          v48 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [obj indexOfObject:v45]);
          v49 = [v70 objectForKeyedSubscript:v48];
          unsignedIntegerValue3 = [v49 unsignedIntegerValue];

          if (unsignedIntegerValue3 < [v76 count])
          {
            v51 = [v76 objectAtIndexedSubscript:unsignedIntegerValue3];
            v98[0] = @"AX_CUSTOMIZABLE_MOUSE_KEY";
            v98[1] = @"AX_CUSTOMIZABLE_MOUSE_IS_CONNECTED_KEY";
            v99[0] = v45;
            v99[1] = &__kCFBooleanTrue;
            v99[2] = &__kCFBooleanTrue;
            v98[2] = @"AX_CUSTOMIZABLE_MOUSE_BEHAVES_LIKE_EYETRACKER";
            v98[3] = @"AX_CUSTOMIZABLE_MOUSE_ASSOCIATED_EYETRACKER";
            v99[3] = v51;
            v52 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:4];
            [v47 setUserInfo:v52];

            goto LABEL_38;
          }
        }

        else
        {
          v96[0] = @"AX_CUSTOMIZABLE_MOUSE_KEY";
          v96[1] = @"AX_CUSTOMIZABLE_MOUSE_IS_CONNECTED_KEY";
          v97[0] = v45;
          v97[1] = &__kCFBooleanTrue;
          v51 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:2];
          [v47 setUserInfo:v51];
LABEL_38:
        }

        [v72 addObject:v47];

        v39 = v68;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v53 = v45;
        name = [v53 name];
        v55 = [PSSpecifier preferenceSpecifierNamed:name target:v39 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

        v94 = @"AX_EYE_TRACKER_KEY";
        v95 = v53;
        v56 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        [v55 setUserInfo:v56];

        [v72 addObject:v55];
      }
    }

    v42 = [v40 countByEnumeratingWithState:&v81 objects:v100 count:16];
  }

  while (v42);
LABEL_44:

LABEL_45:
  v57 = [PSSpecifier groupSpecifierWithName:0];
  v58 = settingsLocString(@"BluetoothDevicesFooterText", @"HandSettings");
  v59 = +[AXSettings sharedInstance];
  laserEnabled = [v59 laserEnabled];

  if (laserEnabled)
  {
    v61 = settingsLocString(@"BluetoothDevicesFooterText", @"Accessibility-hello");

    v58 = v61;
  }

  [v57 setProperty:v58 forKey:PSFooterTextGroupKey];
  [v72 addObject:v57];
  v62 = settingsLocString(@"BluetoothDevicesScanning", @"HandSettings");
  [(ASTConnectedDevicesController *)v39 inSetup];
  v63 = [PSSpecifier preferenceSpecifierNamed:v62 target:v39 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  [v63 setProperty:@"BluetoothDevicesScanning" forKey:PSIDKey];
  [v72 addObject:v63];
  v64 = *&v39->AXUISettingsBaseListController_opaque[v67];
  *&v39->AXUISettingsBaseListController_opaque[v67] = v72;
  v65 = v72;

  v3 = *&v39->AXUISettingsBaseListController_opaque[v67];
LABEL_48:

  return v3;
}

id __43__ASTConnectedDevicesController_specifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [*(a1 + 32) _nameForCustomizableMouse:v5];
  }

  else
  {
    v7 = &stru_25D420;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [*(a1 + 32) _nameForCustomizableMouse:v6];
  }

  else
  {
    v8 = &stru_25D420;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v5 name];

    v7 = v9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v6 name];

    v8 = v10;
  }

  v11 = [(__CFString *)v7 localizedCaseInsensitiveCompare:v8];

  return v11;
}

- (id)_nameForCustomizableMouse:(id)mouse
{
  mouseCopy = mouse;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  selfCopy = self;
  connectedPeripherals = [(ASTConnectedDevicesController *)self connectedPeripherals];
  v6 = [connectedPeripherals countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(connectedPeripherals);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        identifier = [v10 identifier];
        uUIDString = [identifier UUIDString];
        identifier2 = [mouseCopy identifier];
        v14 = [uUIDString isEqualToString:identifier2];

        if (v14)
        {
          name = [v10 name];
          v16 = [name length];

          if (v16)
          {
            v27 = ASTLogMouse();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v42 = v10;
              v43 = 2112;
              v44 = mouseCopy;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Using peripheral name (%@) for customizableMouse (%@)", buf, 0x16u);
            }

            v28 = v10;
LABEL_27:
            name2 = [v28 name];

            goto LABEL_28;
          }
        }
      }

      v7 = [connectedPeripherals countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  connectedPeripherals = [(ASTConnectedDevicesController *)selfCopy connectedBluetoothDevices];
  v17 = [connectedPeripherals countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    while (2)
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(connectedPeripherals);
        }

        v21 = *(*(&v32 + 1) + 8 * j);
        vendorId = [v21 vendorId];
        if ([mouseCopy vendorId] == vendorId)
        {
          productId = [v21 productId];
          if ([mouseCopy productId] == productId)
          {
            name3 = [v21 name];
            v25 = [name3 length];

            if (v25)
            {
              v29 = ASTLogMouse();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v42 = v21;
                v43 = 2112;
                v44 = mouseCopy;
                _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "Using device name (%@) for customizableMouse (%@)", buf, 0x16u);
              }

              v28 = v21;
              goto LABEL_27;
            }
          }
        }
      }

      v18 = [connectedPeripherals countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  name2 = [mouseCopy name];
LABEL_28:

  return name2;
}

- (void)centralManagerDidUpdateState:(id)state
{
  if ([state state] == &dword_4 + 1)
  {

    [(ASTConnectedDevicesController *)self reloadSpecifiers];
  }
}

@end