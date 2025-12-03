@interface ASTBluetoothDevicesController
- (ASTBluetoothDevicesController)init;
- (AXMouseEventListener)mouseEventListener;
- (BOOL)shouldAddClassicDevice:(id)device;
- (id)_customizableMouseForDevice:(id)device;
- (id)allowedServices;
- (id)detailSpecifiersForDevice:(id)device withTarget:(id)target;
- (void)powerAlertCancelled;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ASTBluetoothDevicesController

- (ASTBluetoothDevicesController)init
{
  v5.receiver = self;
  v5.super_class = ASTBluetoothDevicesController;
  v2 = [(AXBluetoothDevicesController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXBluetoothDevicesController *)v2 setAuthorizedServices:32];
    [(ASTBluetoothDevicesController *)v3 mouseEventListener];
  }

  return v3;
}

- (AXMouseEventListener)mouseEventListener
{
  mouseEventListener = self->_mouseEventListener;
  if (!mouseEventListener)
  {
    v4 = +[AXMouseEventListener sharedInstance];
    v5 = self->_mouseEventListener;
    self->_mouseEventListener = v4;

    mouseEventListener = self->_mouseEventListener;
  }

  return mouseEventListener;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ASTBluetoothDevicesController;
  [(AXBluetoothDevicesController *)&v4 viewDidAppear:appear];
  [(AXBluetoothDevicesController *)self setScanningEnabled:1];
  [(AXBluetoothDevicesController *)self showBluetoothPowerAlert:1];
}

- (void)powerAlertCancelled
{
  rootController = [(ASTBluetoothDevicesController *)self rootController];
  v2 = [rootController popViewControllerAnimated:1];
}

- (id)allowedServices
{
  v2 = [CBUUID UUIDWithString:CBUUIDHumanInterfaceDeviceServiceString];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)detailSpecifiersForDevice:(id)device withTarget:(id)target
{
  deviceCopy = device;
  targetCopy = target;
  v8 = [(ASTBluetoothDevicesController *)self _customizableMouseForDevice:deviceCopy];
  if (v8)
  {
    v9 = [(ASTBluetoothDevicesController *)self loadSpecifiersFromPlistName:@"ASTMouseDeviceConfig" target:targetCopy];
    v10 = [NSArray arrayWithArray:v9];

    v11 = [v10 objectAtIndex:1];
    v15[0] = @"AX_CUSTOMIZABLE_MOUSE_KEY";
    v15[1] = @"AX_CUSTOMIZABLE_MOUSE_IS_CONNECTED_KEY";
    v16[0] = v8;
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deviceCopy connected]);
    v16[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    [v11 setUserInfo:v13];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)_customizableMouseForDevice:(id)device
{
  deviceCopy = device;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  v34 = 0;
  mouseEventListener = [(ASTBluetoothDevicesController *)self mouseEventListener];
  discoveredMouseDevices = [mouseEventListener discoveredMouseDevices];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __61__ASTBluetoothDevicesController__customizableMouseForDevice___block_invoke;
  v26[3] = &unk_256820;
  v7 = deviceCopy;
  v27 = v7;
  v28 = &v29;
  [discoveredMouseDevices enumerateObjectsUsingBlock:v26];

  if (!v30[5] && [v7 isClassicDevice])
  {
    mouseEventListener2 = [(ASTBluetoothDevicesController *)self mouseEventListener];
    discoveredMouseDevices2 = [mouseEventListener2 discoveredMouseDevices];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __61__ASTBluetoothDevicesController__customizableMouseForDevice___block_invoke_2;
    v23[3] = &unk_256820;
    v24 = v7;
    v25 = &v29;
    [discoveredMouseDevices2 enumerateObjectsUsingBlock:v23];
  }

  if (!v30[5])
  {
    v10 = +[AXSettings sharedInstance];
    assistiveTouchMouseCustomizedClickActions = [v10 assistiveTouchMouseCustomizedClickActions];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __61__ASTBluetoothDevicesController__customizableMouseForDevice___block_invoke_3;
    v20[3] = &unk_256820;
    v12 = v7;
    v21 = v12;
    v22 = &v29;
    [assistiveTouchMouseCustomizedClickActions enumerateObjectsUsingBlock:v20];

    if (!v30[5])
    {
      if ([v12 isClassicDevice])
      {
        v13 = +[AXSettings sharedInstance];
        assistiveTouchMouseCustomizedClickActions2 = [v13 assistiveTouchMouseCustomizedClickActions];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = __61__ASTBluetoothDevicesController__customizableMouseForDevice___block_invoke_4;
        v17[3] = &unk_256820;
        v18 = v12;
        v19 = &v29;
        [assistiveTouchMouseCustomizedClickActions2 enumerateObjectsUsingBlock:v17];
      }
    }
  }

  v15 = v30[5];

  _Block_object_dispose(&v29, 8);

  return v15;
}

void __61__ASTBluetoothDevicesController__customizableMouseForDevice___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 identifier];
  v8 = [*(a1 + 32) identifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __61__ASTBluetoothDevicesController__customizableMouseForDevice___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [*(a1 + 32) vendorId];
  if ([v9 vendorId] == v7)
  {
    v8 = [*(a1 + 32) productId];
    if ([v9 productId] == v8)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void __61__ASTBluetoothDevicesController__customizableMouseForDevice___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 identifier];
  v8 = [*(a1 + 32) identifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __61__ASTBluetoothDevicesController__customizableMouseForDevice___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [*(a1 + 32) vendorId];
  if ([v9 vendorId] == v7)
  {
    v8 = [*(a1 + 32) productId];
    if ([v9 productId] == v8)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

- (BOOL)shouldAddClassicDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isAppleHIDDevice])
  {
    v4 = +[AXSettings sharedInstance];
    assistiveTouchMouseAllowAppleBluetoothDevicesPairing = [v4 assistiveTouchMouseAllowAppleBluetoothDevicesPairing];

    if ((assistiveTouchMouseAllowAppleBluetoothDevicesPairing & 1) == 0)
    {
      v6 = ASTLogMouse();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = deviceCopy;
LABEL_14:
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Not allowing device: %@", &v11, 0xCu);
      }

LABEL_15:
      v7 = 0;
      goto LABEL_16;
    }
  }

  if ([deviceCopy type] != 25 && objc_msgSend(deviceCopy, "type") != 24)
  {
    if ([deviceCopy type] != 29 || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "assistiveTouchMouseAllowAppleBluetoothDevicesPairing"), v8, !v9))
    {
      v6 = ASTLogMouse();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = deviceCopy;
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  v6 = ASTLogMouse();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = deviceCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Allowing device: %@", &v11, 0xCu);
  }

  v7 = 1;
LABEL_16:

  return v7;
}

@end