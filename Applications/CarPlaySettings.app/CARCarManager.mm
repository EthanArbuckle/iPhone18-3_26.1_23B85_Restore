@interface CARCarManager
- (CARCarManager)init;
- (NSString)accountName;
- (id)avatarImageAsNotificationIcon;
- (void)_observeASCs;
- (void)_postInRangeNotificationIfNeeded;
- (void)_postNotification:(id)notification isFallback:(BOOL)fallback;
- (void)_stopObservingASCs;
- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)addObserver:(id)observer;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)dealloc;
- (void)openSettingsURL:(id)l;
- (void)pairedDevicesInformationService:(id)service didUpdatePairedDeviceList:(id)list;
- (void)removeObserver:(id)observer;
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CARCarManager *)self observers];
  [observers addObserver:observerCopy];

  observers2 = [(CARCarManager *)self observers];
  currentCar = [(CARCarManager *)self currentCar];
  [observers2 carManager:self didUpdateCurrentCar:currentCar];

  observers3 = [(CARCarManager *)self observers];
  currentCar2 = [(CARCarManager *)self currentCar];
  pairedDevices = [currentCar2 pairedDevices];
  [observers3 carManager:self didUpdatePairedDevices:pairedDevices];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CARCarManager *)self observers];
  [observers removeObserver:observerCopy];
}

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  carCopy = car;
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
  [(CARCarManager *)self setCurrentCar:carCopy];
  currentCar = [(CARCarManager *)self currentCar];
  pairedDevices = [currentCar pairedDevices];
  receivedAllValues = [pairedDevices receivedAllValues];

  if (receivedAllValues)
  {
    v11 = +[CARSettingsAppDelegate sharedDelegate];
    signpostManager = [v11 signpostManager];
    [signpostManager emitInstantOnIfNeeded];
  }

  [(CARCarManager *)self _observeASCs];
  observers = [(CARCarManager *)self observers];
  [observers carManager:self didUpdateCurrentCar:carCopy];
}

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  [(CARCarManager *)self _observeASCs];
  pairedDevices = [accessoriesCopy pairedDevices];

  LODWORD(accessoriesCopy) = [pairedDevices receivedAllValues];
  if (accessoriesCopy)
  {
    v7 = +[CARSettingsAppDelegate sharedDelegate];
    signpostManager = [v7 signpostManager];
    [signpostManager emitInstantOnIfNeeded];
  }
}

- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  v5 = sub_10001C784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager accessory updated", v16, 2u);
  }

  [(CARCarManager *)self _observeASCs];
  currentCar = [(CARCarManager *)self currentCar];
  pairedDevices = [currentCar pairedDevices];

  if (pairedDevices)
  {
    observers = [(CARCarManager *)self observers];
    currentCar2 = [(CARCarManager *)self currentCar];
    pairedDevices2 = [currentCar2 pairedDevices];
    [observers carManager:self didUpdatePairedDevices:pairedDevices2];
  }

  currentCar3 = [(CARCarManager *)self currentCar];
  pairedDevices3 = [currentCar3 pairedDevices];
  receivedAllValues = [pairedDevices3 receivedAllValues];

  if (receivedAllValues)
  {
    v14 = +[CARSettingsAppDelegate sharedDelegate];
    signpostManager = [v14 signpostManager];
    [signpostManager emitInstantOnIfNeeded];
  }
}

- (void)pairedDevicesInformationService:(id)service didUpdatePairedDeviceList:(id)list
{
  serviceCopy = service;
  v6 = sub_10001C784();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager paired device list updated", v10, 2u);
  }

  observers = [(CARCarManager *)self observers];
  v8 = [serviceCopy car];

  pairedDevices = [v8 pairedDevices];
  [observers carManager:self didUpdatePairedDevices:pairedDevices];

  [(CARCarManager *)self _postInRangeNotificationIfNeeded];
}

- (void)openSettingsURL:(id)l
{
  if ([l isDevicePickerURL])
  {
    observers = [(CARCarManager *)self observers];
    [observers carManagerRequestedDevicePicker:self];
  }
}

- (void)_observeASCs
{
  currentCar = [(CARCarManager *)self currentCar];
  [currentCar registerObserver:self];

  currentCar2 = [(CARCarManager *)self currentCar];
  pairedDevices = [currentCar2 pairedDevices];
  [pairedDevices registerObserver:self];

  currentCar3 = [(CARCarManager *)self currentCar];
  pairedDevices2 = [currentCar3 pairedDevices];
  pairedDevicesInformation = [pairedDevices2 pairedDevicesInformation];
  [pairedDevicesInformation registerObserver:self];
}

- (void)_stopObservingASCs
{
  currentCar = [(CARCarManager *)self currentCar];
  pairedDevices = [currentCar pairedDevices];
  pairedDevicesInformation = [pairedDevices pairedDevicesInformation];
  [pairedDevicesInformation unregisterObserver:self];

  currentCar2 = [(CARCarManager *)self currentCar];
  pairedDevices2 = [currentCar2 pairedDevices];
  [pairedDevices2 unregisterObserver:self];

  currentCar3 = [(CARCarManager *)self currentCar];
  [currentCar3 unregisterObserver:self];
}

- (void)_postInRangeNotificationIfNeeded
{
  if ([(CARCarManager *)self stopTrackingInRangeNotification])
  {
    pairedDevices = sub_10001C784();
    if (os_log_type_enabled(pairedDevices, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "[Settings] InRange notification is not tracked anymore";
      v5 = pairedDevices;
      v6 = 2;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v4, buf, v6);
    }
  }

  else
  {
    v7 = +[NSDate date];
    checkInRangeDevicesStartDate = [(CARCarManager *)self checkInRangeDevicesStartDate];
    [v7 timeIntervalSinceDate:checkInRangeDevicesStartDate];
    v10 = v9;

    if (v10 <= 60.0)
    {
      v11 = +[CARSettingsAppDelegate sharedDelegate];
      carManager = [v11 carManager];
      currentCar = [carManager currentCar];
      pairedDevices = [currentCar pairedDevices];

      if (pairedDevices)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v33 = pairedDevices;
        pairedDevicesInformation = [pairedDevices pairedDevicesInformation];
        pairedDeviceList = [pairedDevicesInformation pairedDeviceList];

        v16 = [pairedDeviceList countByEnumeratingWithState:&v38 objects:v47 count:16];
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
                objc_enumerationMutation(pairedDeviceList);
              }

              v20 = *(*(&v38 + 1) + 8 * i);
              v21 = sub_10001C784();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                name = [v20 name];
                [v20 state];
                v23 = NSStringFromPairedDeviceState();
                *buf = 138412546;
                v44 = *&name;
                v45 = 2114;
                v46 = v23;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[Settings] Device: %@=%{public}@", buf, 0x16u);
              }

              if ([v20 state] == 1)
              {

                accountName = [(CARCarManager *)self accountName];
                if (accountName)
                {
                  name2 = accountName;
                  [(CARCarManager *)self _postNotification:accountName isFallback:0];
                  pairedDevices = v33;
                }

                else
                {
                  v26 = sub_10001C784();
                  pairedDevices = v33;
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager Unable to retrieve account name, will use device name.", buf, 2u);
                  }

                  v36 = 0u;
                  v37 = 0u;
                  v34 = 0u;
                  v35 = 0u;
                  pairedDevicesInformation2 = [v33 pairedDevicesInformation];
                  pairedDeviceList2 = [pairedDevicesInformation2 pairedDeviceList];

                  name2 = [pairedDeviceList2 countByEnumeratingWithState:&v34 objects:v42 count:16];
                  if (name2)
                  {
                    v29 = *v35;
                    while (2)
                    {
                      for (j = 0; j != name2; j = (j + 1))
                      {
                        if (*v35 != v29)
                        {
                          objc_enumerationMutation(pairedDeviceList2);
                        }

                        v31 = *(*(&v34 + 1) + 8 * j);
                        if ([v31 state] == 2)
                        {
                          name2 = [v31 name];
                          goto LABEL_38;
                        }
                      }

                      name2 = [pairedDeviceList2 countByEnumeratingWithState:&v34 objects:v42 count:16];
                      if (name2)
                      {
                        continue;
                      }

                      break;
                    }

LABEL_38:
                    pairedDevices = v33;
                  }

                  if ([name2 length])
                  {
                    [(CARCarManager *)self _postNotification:name2 isFallback:1];
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

            v17 = [pairedDeviceList countByEnumeratingWithState:&v38 objects:v47 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        name2 = sub_10001C784();
        if (os_log_type_enabled(name2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, name2, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager no InRange devices available", buf, 2u);
        }

        pairedDevices = v33;
      }

      else
      {
        name2 = sub_10001C784();
        if (os_log_type_enabled(name2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, name2, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager can't process InRange notification, pairedDevices is nil", buf, 2u);
        }
      }

LABEL_45:
    }

    else
    {
      [(CARCarManager *)self setStopTrackingInRangeNotification:1];
      pairedDevices = sub_10001C784();
      if (os_log_type_enabled(pairedDevices, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        v44 = v10;
        v4 = "[Settings] Stop tracking InRange notification (%{public}f)";
        v5 = pairedDevices;
        v6 = 12;
        goto LABEL_7;
      }
    }
  }
}

- (void)_postNotification:(id)notification isFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  notificationCopy = notification;
  v7 = sub_10001C784();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Settings] Posting notification", buf, 2u);
  }

  v8 = objc_alloc_init(UNMutableNotificationContent);
  [v8 setCategoryIdentifier:@"CarPlaySettings"];
  if (fallbackCopy)
  {
    avatarImageAsNotificationIcon = sub_10001C80C(@"INRANGE_NOTIFICATION_TITLE_FALLBACK_%@");
    notificationCopy = [NSString localizedStringWithFormat:avatarImageAsNotificationIcon, notificationCopy];
    [v8 setTitle:notificationCopy];
  }

  else
  {
    v11 = sub_10001C80C(@"INRANGE_NOTIFICATION_TITLE_%@");
    notificationCopy2 = [NSString localizedStringWithFormat:v11, notificationCopy];
    [v8 setTitle:notificationCopy2];

    avatarImageAsNotificationIcon = [(CARCarManager *)self avatarImageAsNotificationIcon];
    if (avatarImageAsNotificationIcon)
    {
      [v8 setIcon:avatarImageAsNotificationIcon];
    }
  }

  v13 = sub_10001C80C(@"INRANGE_NOTIFICATION_SUBTITLE");
  [v8 setSubtitle:v13];

  v14 = +[UNNotificationSound defaultSound];
  [v8 setSound:v14];

  v15 = +[NSBundle mainBundle];
  bundleIdentifier = [v15 bundleIdentifier];
  [v8 setDefaultActionBundleIdentifier:bundleIdentifier];

  v17 = [[NSURL alloc] initWithString:@"carplaysettings://?devicePicker"];
  [v8 setDefaultActionURL:v17];

  v18 = +[NSUUID UUID];
  uUIDString = [v18 UUIDString];
  v20 = [UNNotificationRequest requestWithIdentifier:uUIDString content:v8 trigger:0 destinations:8];

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