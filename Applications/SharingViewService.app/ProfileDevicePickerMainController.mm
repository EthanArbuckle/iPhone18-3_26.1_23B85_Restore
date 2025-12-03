@interface ProfileDevicePickerMainController
- (void)_discoveryFoundDevice:(id)device;
- (void)_discoveryStart;
- (void)_discoveryStop;
- (void)_discoveryTimeout;
- (void)_pickerAlertCanceled;
- (void)_pickerAlertHandlePickedDevice:(id)device;
- (void)_pickerAlertShow;
- (void)_pickerAlertShowError:(id)error;
- (void)_pickerAlertShowNoDevices;
- (void)_pickerAlertShowSuccess;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismiss:(int)dismiss;
- (void)handleButtonActions:(id)actions;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation ProfileDevicePickerMainController

- (void)_pickerAlertCanceled
{
  alertController = self->_alertController;
  self->_alertController = 0;

  if (dword_1001BEBC0 <= 30 && (dword_1001BEBC0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(ProfileDevicePickerMainController *)self dismiss:8];
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 postNotificationName:@"com.apple.sharing.DeviceProfile" object:@"com.apple.sharingd" userInfo:&off_10019AFF0 deliverImmediately:1];
}

- (void)_pickerAlertShowSuccess
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"CHOOSE_SUCCESS_TITLE" value:&stru_100195CA8 table:@"Localizable"];

  v5 = [UIAlertController alertControllerWithTitle:v4 message:0 preferredStyle:1];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OK_BUTTON_TITLE" value:&stru_100195CA8 table:@"Localizable"];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10010C72C;
  v10[3] = &unk_1001950D8;
  v10[4] = self;
  v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:v10];
  [v5 addAction:v8];
  [(ProfileDevicePickerMainController *)self presentViewController:v5 animated:1 completion:0];
  v9 = +[NSDistributedNotificationCenter defaultCenter];
  [v9 postNotificationName:@"com.apple.sharing.DeviceProfile" object:@"com.apple.sharingd" userInfo:&off_10019AFC8 deliverImmediately:1];
}

- (void)_pickerAlertShowError:(id)error
{
  errorCopy = error;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CHOOSE_INSTALL_FAILED_TITLE" value:&stru_100195CA8 table:@"Localizable"];

  code = [errorCopy code];
  v15 = sub_100127B60(@"CHOOSE_INSTALL_FAILED_INFO_FORMAT", v8, v9, v10, v11, v12, v13, v14, code);
  v16 = [UIAlertController alertControllerWithTitle:v6 message:v15 preferredStyle:1];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"OK_BUTTON_TITLE" value:&stru_100195CA8 table:@"Localizable"];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10010C998;
  v24[3] = &unk_1001950D8;
  v24[4] = self;
  v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:v24];
  [v16 addAction:v19];
  [(ProfileDevicePickerMainController *)self presentViewController:v16 animated:1 completion:0];
  v25 = @"errorCode";
  code2 = [errorCopy code];

  v21 = [NSNumber numberWithInteger:code2];
  v26 = v21;
  v22 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];

  v23 = +[NSDistributedNotificationCenter defaultCenter];
  [v23 postNotificationName:@"com.apple.sharing.DeviceProfile" object:@"com.apple.sharingd" userInfo:v22 deliverImmediately:1];
}

- (void)_pickerAlertShowNoDevices
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"CHOOSE_NO_DEVICES_TITLE" value:&stru_100195CA8 table:@"Localizable"];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CHOOSE_NO_DEVICES_INFO" value:&stru_100195CA8 table:@"Localizable"];

  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK_BUTTON_TITLE" value:&stru_100195CA8 table:@"Localizable"];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10010CB7C;
  v12[3] = &unk_1001950D8;
  v12[4] = self;
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:v12];
  [v7 addAction:v10];
  [(ProfileDevicePickerMainController *)self presentViewController:v7 animated:1 completion:0];
  v11 = +[NSDistributedNotificationCenter defaultCenter];
  [v11 postNotificationName:@"com.apple.sharing.DeviceProfile" object:@"com.apple.sharingd" userInfo:&off_10019AFA0 deliverImmediately:1];
}

- (void)_pickerAlertHandlePickedDevice:(id)device
{
  deviceCopy = device;
  CFDataGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  if (v5)
  {
    v6 = objc_alloc_init(SFSystemSession);
    systemSession = self->_systemSession;
    self->_systemSession = v6;

    [(SFSystemSession *)self->_systemSession setPeerDevice:deviceCopy];
    [(SFSystemSession *)self->_systemSession activate];
    v8 = self->_systemSession;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10010CE20;
    v18[3] = &unk_100195100;
    v18[4] = self;
    [(SFSystemSession *)v8 installProfileWithData:v5 completion:v18];
    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    installTimeoutTimer = self->_installTimeoutTimer;
    self->_installTimeoutTimer = v9;

    v11 = self->_installTimeoutTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10010CEEC;
    handler[3] = &unk_100195AC0;
    handler[4] = self;
    dispatch_source_set_event_handler(v11, handler);
    SFDispatchTimerSet();
    dispatch_resume(self->_installTimeoutTimer);
  }

  else
  {
    v19 = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v13 = v12;
    v14 = @"?";
    if (v12)
    {
      v14 = v12;
    }

    v20 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v16 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6745 userInfo:v15];
    [(ProfileDevicePickerMainController *)self _pickerAlertShowError:v16];
  }
}

- (void)_pickerAlertShow
{
  if ([(NSMutableDictionary *)self->_devices count])
  {
    pickerFlags = self->_pickerFlags;
    if ((pickerFlags & 3) == 3)
    {
      v4 = @"CHOOSE_DEVICE_INFO";
      v5 = @"CHOOSE_DEVICE_TITLE";
    }

    else
    {
      if (pickerFlags)
      {
        v5 = @"CHOOSE_APPLETV_TITLE";
      }

      else
      {
        v5 = @"CHOOSE_TITLE_HOMEPOD";
      }

      if (pickerFlags)
      {
        v4 = @"CHOOSE_APPLETV_INFO";
      }

      else
      {
        v4 = @"CHOOSE_INFO_HOMEPOD";
      }

      if ((pickerFlags & 3) == 0)
      {
        v9 = 0;
        goto LABEL_28;
      }
    }

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_100195CA8 table:@"Localizable"];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:v4 value:&stru_100195CA8 table:@"Localizable"];

    if (v7)
    {
      if (v9)
      {
LABEL_16:
        v10 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];
        alertController = self->_alertController;
        self->_alertController = v10;

        v12 = objc_alloc_init(NSMutableArray);
        devices = self->_devices;
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10010D40C;
        v35[3] = &unk_100195088;
        v14 = v12;
        v36 = v14;
        [(NSMutableDictionary *)devices enumerateKeysAndObjectsUsingBlock:v35];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        obj = v14;
        v15 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v32;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v32 != v17)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v31 + 1) + 8 * i);
              name = [v19 name];
              if (name)
              {
                v21 = name;
              }

              else
              {
                v21 = @"?";
              }

              v30[0] = _NSConcreteStackBlock;
              v30[1] = 3221225472;
              v30[2] = sub_10010D48C;
              v30[3] = &unk_1001950B0;
              v30[4] = self;
              v30[5] = v19;
              v22 = [UIAlertAction actionWithTitle:v21 style:0 handler:v30];
              [(UIAlertController *)self->_alertController addAction:v22];
            }

            v16 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
          }

          while (v16);
        }

        v23 = +[NSBundle mainBundle];
        v24 = [v23 localizedStringForKey:@"CANCEL" value:&stru_100195CA8 table:@"Localizable"];

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10010D4D8;
        v29[3] = &unk_1001950D8;
        v29[4] = self;
        v25 = [UIAlertAction actionWithTitle:v24 style:1 handler:v29];
        [(UIAlertController *)self->_alertController addAction:v25];
        [(ProfileDevicePickerMainController *)self presentViewController:self->_alertController animated:1 completion:0];

        return;
      }

LABEL_29:
      v27 = +[NSBundle mainBundle];
      v9 = [v27 localizedStringForKey:@"CHOOSE_DEVICE_INFO" value:&stru_100195CA8 table:@"Localizable"];

      goto LABEL_16;
    }

LABEL_28:
    v26 = +[NSBundle mainBundle];
    v7 = [v26 localizedStringForKey:@"CHOOSE_DEVICE_TITLE" value:&stru_100195CA8 table:@"Localizable"];

    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  [(ProfileDevicePickerMainController *)self _pickerAlertShowNoDevices];
}

- (void)_discoveryTimeout
{
  if (dword_1001BEBC0 <= 30 && (dword_1001BEBC0 != -1 || _LogCategory_Initialize()))
  {
    v3 = [(NSMutableDictionary *)self->_devices count];
    LogPrintF();
  }

  [(ProfileDevicePickerMainController *)self _discoveryStop];

  [(ProfileDevicePickerMainController *)self _pickerAlertShow];
}

- (void)_discoveryFoundDevice:(id)device
{
  deviceCopy = device;
  model = [deviceCopy model];
  v5 = model;
  pickerFlags = self->_pickerFlags;
  if (pickerFlags)
  {
    if ([model hasPrefix:@"AppleTV"])
    {
LABEL_10:
      identifier = [deviceCopy identifier];
      if (identifier)
      {
        if (dword_1001BEBC0 <= 30 && (dword_1001BEBC0 != -1 || _LogCategory_Initialize()))
        {
          v11 = deviceCopy;
          LogPrintF();
        }

        devices = self->_devices;
        if (!devices)
        {
          v9 = objc_alloc_init(NSMutableDictionary);
          v10 = self->_devices;
          self->_devices = v9;

          devices = self->_devices;
        }

        [(NSMutableDictionary *)devices setObject:deviceCopy forKeyedSubscript:identifier, v11];
      }

      else if (dword_1001BEBC0 <= 60 && (dword_1001BEBC0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_24;
    }

    pickerFlags = self->_pickerFlags;
  }

  if (pickerFlags & 2) != 0 && (([v5 hasPrefix:@"AudioAccessory"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"HomePod1,")))
  {
    goto LABEL_10;
  }

  if (dword_1001BEBC0 <= 9 && (dword_1001BEBC0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_24:
}

- (void)_discoveryStop
{
  [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
  deviceDiscovery = self->_deviceDiscovery;
  self->_deviceDiscovery = 0;
}

- (void)_discoveryStart
{
  v3 = objc_alloc_init(SFDeviceDiscovery);
  deviceDiscovery = self->_deviceDiscovery;
  self->_deviceDiscovery = v3;

  [(SFDeviceDiscovery *)self->_deviceDiscovery setDiscoveryFlags:1];
  [(SFDeviceDiscovery *)self->_deviceDiscovery setPurpose:@"ProfileDevicePicker"];
  [(SFDeviceDiscovery *)self->_deviceDiscovery setScanRate:50];
  [(SFDeviceDiscovery *)self->_deviceDiscovery setTimeout:2.0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10010D9AC;
  v6[3] = &unk_100195190;
  v6[4] = self;
  [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceFoundHandler:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010D9B8;
  v5[3] = &unk_100195AC0;
  v5[4] = self;
  [(SFDeviceDiscovery *)self->_deviceDiscovery setTimeoutHandler:v5];
  [(SFDeviceDiscovery *)self->_deviceDiscovery activateWithCompletion:&stru_100195020];
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v9 + 1) + 8 * i) events] & 0x10) != 0)
        {
          if (dword_1001BEBC0 <= 30 && (dword_1001BEBC0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          [(ProfileDevicePickerMainController *)self dismiss:4];
        }
      }

      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)dismiss:(int)dismiss
{
  if (!self->_dismissed)
  {
    self->_dismissed = 1;
    _remoteViewControllerProxy = [(ProfileDevicePickerMainController *)self _remoteViewControllerProxy];
    v5 = _remoteViewControllerProxy;
    alertController = self->_alertController;
    if (alertController)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10010DCE0;
      v7[3] = &unk_100195AC0;
      v8 = _remoteViewControllerProxy;
      [(UIAlertController *)alertController dismissViewControllerAnimated:1 completion:v7];
    }

    else
    {
      [_remoteViewControllerProxy dismiss];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BEBC0 <= 30 && (dword_1001BEBC0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(ProfileDevicePickerMainController *)self _discoveryStop];
  if (!self->_dismissed)
  {
    if (dword_1001BEBC0 <= 30 && (dword_1001BEBC0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(ProfileDevicePickerMainController *)self dismiss:21];
  }

  v5.receiver = self;
  v5.super_class = ProfileDevicePickerMainController;
  [(SVSBaseMainController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEBC0 <= 30 && (dword_1001BEBC0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = ProfileDevicePickerMainController;
  [(ProfileDevicePickerMainController *)&v5 viewDidAppear:appearCopy];
  [(ProfileDevicePickerMainController *)self _discoveryStart];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  userInfo = [context userInfo];
  userInfo = self->super._userInfo;
  self->super._userInfo = userInfo;

  if (dword_1001BEBC0 <= 30 && (dword_1001BEBC0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  self->_pickerFlags = CFDictionaryGetInt64Ranged();
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

@end