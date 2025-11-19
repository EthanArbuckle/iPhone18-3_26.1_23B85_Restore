@interface CARCarManager
- (CARCarManager)init;
- (NSString)accountName;
- (id)avatarImageAsNotificationIcon;
- (void)_observeASCs;
- (void)_postInRangeNotificationIfNeeded;
- (void)_postNotification:(id)a3 isFallback:(BOOL)a4;
- (void)_stopObservingASCs;
- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)addObserver:(id)a3;
- (void)carDidUpdateAccessories:(id)a3;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)dealloc;
- (void)openSettingsURL:(id)a3;
- (void)pairedDevicesInformationService:(id)a3 didUpdatePairedDeviceList:(id)a4;
- (void)removeObserver:(id)a3;
@end

@implementation CARCarManager

- (CARCarManager)init
{
  v10.receiver = self;
  v10.super_class = CARCarManager;
  v2 = [(CARCarManager *)&v10 init];
  if (v2)
  {
    v3 = sub_10001C784();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager init", v9, 2u);
    }

    v4 = [[CARObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___CARCarManagerObserver];
    observers = v2->_observers;
    v2->_observers = v4;

    v6 = objc_alloc_init(CAFCarManager);
    carManager = v2->_carManager;
    v2->_carManager = v6;

    [(CAFCarManager *)v2->_carManager registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(CARCarManager *)self _stopObservingASCs];
  v3.receiver = self;
  v3.super_class = CARCarManager;
  [(CARCarManager *)&v3 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(CARCarManager *)self observers];
  [v5 addObserver:v4];

  v6 = [(CARCarManager *)self observers];
  v7 = [(CARCarManager *)self currentCar];
  [v6 carManager:self didUpdateCurrentCar:v7];

  v10 = [(CARCarManager *)self observers];
  v8 = [(CARCarManager *)self currentCar];
  v9 = [v8 pairedDevices];
  [v10 carManager:self didUpdatePairedDevices:v9];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(CARCarManager *)self observers];
  [v5 removeObserver:v4];
}

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v5 = a4;
  v6 = sub_10001C784();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager current car updated", v14, 2u);
  }

  [(CARCarManager *)self setStopTrackingInRangeNotification:0];
  v7 = +[NSDate date];
  [(CARCarManager *)self setCheckInRangeDevicesStartDate:v7];

  [(CARCarManager *)self _stopObservingASCs];
  [(CARCarManager *)self setCurrentCar:v5];
  v8 = [(CARCarManager *)self currentCar];
  v9 = [v8 pairedDevices];
  v10 = [v9 receivedAllValues];

  if (v10)
  {
    v11 = +[CARSettingsAppDelegate sharedDelegate];
    v12 = [v11 signpostManager];
    [v12 emitInstantOnIfNeeded];
  }

  [(CARCarManager *)self _observeASCs];
  v13 = [(CARCarManager *)self observers];
  [v13 carManager:self didUpdateCurrentCar:v5];
}

- (void)carDidUpdateAccessories:(id)a3
{
  v4 = a3;
  [(CARCarManager *)self _observeASCs];
  v5 = [v4 pairedDevices];

  LODWORD(v4) = [v5 receivedAllValues];
  if (v4)
  {
    v7 = +[CARSettingsAppDelegate sharedDelegate];
    v6 = [v7 signpostManager];
    [v6 emitInstantOnIfNeeded];
  }
}

- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v5 = sub_10001C784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager accessory updated", v16, 2u);
  }

  [(CARCarManager *)self _observeASCs];
  v6 = [(CARCarManager *)self currentCar];
  v7 = [v6 pairedDevices];

  if (v7)
  {
    v8 = [(CARCarManager *)self observers];
    v9 = [(CARCarManager *)self currentCar];
    v10 = [v9 pairedDevices];
    [v8 carManager:self didUpdatePairedDevices:v10];
  }

  v11 = [(CARCarManager *)self currentCar];
  v12 = [v11 pairedDevices];
  v13 = [v12 receivedAllValues];

  if (v13)
  {
    v14 = +[CARSettingsAppDelegate sharedDelegate];
    v15 = [v14 signpostManager];
    [v15 emitInstantOnIfNeeded];
  }
}

- (void)pairedDevicesInformationService:(id)a3 didUpdatePairedDeviceList:(id)a4
{
  v5 = a3;
  v6 = sub_10001C784();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager paired device list updated", v10, 2u);
  }

  v7 = [(CARCarManager *)self observers];
  v8 = [v5 car];

  v9 = [v8 pairedDevices];
  [v7 carManager:self didUpdatePairedDevices:v9];

  [(CARCarManager *)self _postInRangeNotificationIfNeeded];
}

- (void)openSettingsURL:(id)a3
{
  if ([a3 isDevicePickerURL])
  {
    v4 = [(CARCarManager *)self observers];
    [v4 carManagerRequestedDevicePicker:self];
  }
}

- (void)_observeASCs
{
  v3 = [(CARCarManager *)self currentCar];
  [v3 registerObserver:self];

  v4 = [(CARCarManager *)self currentCar];
  v5 = [v4 pairedDevices];
  [v5 registerObserver:self];

  v8 = [(CARCarManager *)self currentCar];
  v6 = [v8 pairedDevices];
  v7 = [v6 pairedDevicesInformation];
  [v7 registerObserver:self];
}

- (void)_stopObservingASCs
{
  v3 = [(CARCarManager *)self currentCar];
  v4 = [v3 pairedDevices];
  v5 = [v4 pairedDevicesInformation];
  [v5 unregisterObserver:self];

  v6 = [(CARCarManager *)self currentCar];
  v7 = [v6 pairedDevices];
  [v7 unregisterObserver:self];

  v8 = [(CARCarManager *)self currentCar];
  [v8 unregisterObserver:self];
}

- (void)_postInRangeNotificationIfNeeded
{
  if ([(CARCarManager *)self stopTrackingInRangeNotification])
  {
    v3 = sub_10001C784();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "[Settings] InRange notification is not tracked anymore";
      v5 = v3;
      v6 = 2;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v4, buf, v6);
    }
  }

  else
  {
    v7 = +[NSDate date];
    v8 = [(CARCarManager *)self checkInRangeDevicesStartDate];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    if (v10 <= 60.0)
    {
      v11 = +[CARSettingsAppDelegate sharedDelegate];
      v12 = [v11 carManager];
      v13 = [v12 currentCar];
      v3 = [v13 pairedDevices];

      if (v3)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v33 = v3;
        v14 = [v3 pairedDevicesInformation];
        v15 = [v14 pairedDeviceList];

        v16 = [v15 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v39;
          while (2)
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v39 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v38 + 1) + 8 * i);
              v21 = sub_10001C784();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = [v20 name];
                [v20 state];
                v23 = NSStringFromPairedDeviceState();
                *buf = 138412546;
                v44 = *&v22;
                v45 = 2114;
                v46 = v23;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[Settings] Device: %@=%{public}@", buf, 0x16u);
              }

              if ([v20 state] == 1)
              {

                v25 = [(CARCarManager *)self accountName];
                if (v25)
                {
                  v24 = v25;
                  [(CARCarManager *)self _postNotification:v25 isFallback:0];
                  v3 = v33;
                }

                else
                {
                  v26 = sub_10001C784();
                  v3 = v33;
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager Unable to retrieve account name, will use device name.", buf, 2u);
                  }

                  v36 = 0u;
                  v37 = 0u;
                  v34 = 0u;
                  v35 = 0u;
                  v27 = [v33 pairedDevicesInformation];
                  v28 = [v27 pairedDeviceList];

                  v24 = [v28 countByEnumeratingWithState:&v34 objects:v42 count:16];
                  if (v24)
                  {
                    v29 = *v35;
                    while (2)
                    {
                      for (j = 0; j != v24; j = (j + 1))
                      {
                        if (*v35 != v29)
                        {
                          objc_enumerationMutation(v28);
                        }

                        v31 = *(*(&v34 + 1) + 8 * j);
                        if ([v31 state] == 2)
                        {
                          v24 = [v31 name];
                          goto LABEL_38;
                        }
                      }

                      v24 = [v28 countByEnumeratingWithState:&v34 objects:v42 count:16];
                      if (v24)
                      {
                        continue;
                      }

                      break;
                    }

LABEL_38:
                    v3 = v33;
                  }

                  if ([v24 length])
                  {
                    [(CARCarManager *)self _postNotification:v24 isFallback:1];
                  }

                  else
                  {
                    v32 = sub_10001C784();
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager empty device name not able to present notification.", buf, 2u);
                    }
                  }
                }

                [(CARCarManager *)self setStopTrackingInRangeNotification:1];
                goto LABEL_45;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v38 objects:v47 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        v24 = sub_10001C784();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager no InRange devices available", buf, 2u);
        }

        v3 = v33;
      }

      else
      {
        v24 = sub_10001C784();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager can't process InRange notification, pairedDevices is nil", buf, 2u);
        }
      }

LABEL_45:
    }

    else
    {
      [(CARCarManager *)self setStopTrackingInRangeNotification:1];
      v3 = sub_10001C784();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        v44 = v10;
        v4 = "[Settings] Stop tracking InRange notification (%{public}f)";
        v5 = v3;
        v6 = 12;
        goto LABEL_7;
      }
    }
  }
}

- (void)_postNotification:(id)a3 isFallback:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_10001C784();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Settings] Posting notification", buf, 2u);
  }

  v8 = objc_alloc_init(UNMutableNotificationContent);
  [v8 setCategoryIdentifier:@"CarPlaySettings"];
  if (v4)
  {
    v9 = sub_10001C80C(@"INRANGE_NOTIFICATION_TITLE_FALLBACK_%@");
    v10 = [NSString localizedStringWithFormat:v9, v6];
    [v8 setTitle:v10];
  }

  else
  {
    v11 = sub_10001C80C(@"INRANGE_NOTIFICATION_TITLE_%@");
    v12 = [NSString localizedStringWithFormat:v11, v6];
    [v8 setTitle:v12];

    v9 = [(CARCarManager *)self avatarImageAsNotificationIcon];
    if (v9)
    {
      [v8 setIcon:v9];
    }
  }

  v13 = sub_10001C80C(@"INRANGE_NOTIFICATION_SUBTITLE");
  [v8 setSubtitle:v13];

  v14 = +[UNNotificationSound defaultSound];
  [v8 setSound:v14];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 bundleIdentifier];
  [v8 setDefaultActionBundleIdentifier:v16];

  v17 = [[NSURL alloc] initWithString:@"carplaysettings://?devicePicker"];
  [v8 setDefaultActionURL:v17];

  v18 = +[NSUUID UUID];
  v19 = [v18 UUIDString];
  v20 = [UNNotificationRequest requestWithIdentifier:v19 content:v8 trigger:0 destinations:8];

  v21 = +[UNUserNotificationCenter currentNotificationCenter];
  [v21 addNotificationRequest:v20 withCompletionHandler:0];
}

- (NSString)accountName
{
  v2 = [objc_allocWithZone(type metadata accessor for CAFUIAccountManager()) init];
  dispatch thunk of CAFUIAccountManager.firstName.getter();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)avatarImageAsNotificationIcon
{
  v2 = _sSo13CARCarManagerC15CarPlaySettingsE29avatarImageAsNotificationIconSo014UNNotificationJ0CSgyF_0();

  return v2;
}

@end