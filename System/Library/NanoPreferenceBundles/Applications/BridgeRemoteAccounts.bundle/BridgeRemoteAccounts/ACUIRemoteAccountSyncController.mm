@interface ACUIRemoteAccountSyncController
- (ACUIRemoteAccountSyncController)initWithRemoteDevice:(id)device;
- (BOOL)_isAccount:(id)account equalTo:(id)to;
- (BOOL)_isExisitingAccount:(id)account;
- (id)_defaultAccountTypes;
- (id)_removeAccount:(id)account fromArray:(id)array;
- (id)topLevelAccounts;
- (void)_notifyAccountsChanged;
- (void)_notifyAccountsInvalidated;
- (void)_notifyStateChanged;
- (void)addObserver:(id)observer;
- (void)fetchRemoteAccounts:(id)accounts;
- (void)removeObserver:(id)observer;
- (void)removeRemoteAccount:(id)account completion:(id)completion;
- (void)saveRemoteAccount:(id)account completion:(id)completion;
- (void)updateRemoteAccount:(id)account completion:(id)completion;
@end

@implementation ACUIRemoteAccountSyncController

- (ACUIRemoteAccountSyncController)initWithRemoteDevice:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  v3 = selfCopy;
  selfCopy = 0;
  v14.receiver = v3;
  v14.super_class = ACUIRemoteAccountSyncController;
  selfCopy = [(ACUIRemoteAccountSyncController *)&v14 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = +[ACAccountStore defaultStore];
    accountStore = selfCopy->_accountStore;
    selfCopy->_accountStore = v4;

    objc_storeStrong(&selfCopy->_device, location[0]);
    v6 = objc_alloc_init(NSArray);
    accounts = selfCopy->_accounts;
    selfCopy->_accounts = v6;

    v8 = objc_alloc_init(NSMutableSet);
    observers = selfCopy->_observers;
    selfCopy->_observers = v8;

    v10 = dispatch_queue_create("com.apple.accountsui.syncObservers", 0);
    observerQueue = selfCopy->_observerQueue;
    selfCopy->_observerQueue = v10;
  }

  v13 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (id)topLevelAccounts
{
  selfCopy = self;
  v13[1] = a2;
  v13[0] = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_accounts;
  v10 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v7);
      parentAccount = [v12 parentAccount];

      if (!parentAccount)
      {
        [v13[0] addObject:v12];
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  v3 = [v13[0] copy];
  objc_storeStrong(v13, 0);

  return v3;
}

- (void)fetchRemoteAccounts:(id)accounts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accounts);
  if (selfCopy->_reloading)
  {
    v26 = _ACUILogSystem();
    v25 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_26EC(v33, "[ACUIRemoteAccountSyncController fetchRemoteAccounts:]", 54);
      _os_log_debug_impl(&dword_0, v26, v25, "%s (%d) Currently refreshing remote accounts, ignoring new request", v33, 0x12u);
    }

    objc_storeStrong(&v26, 0);
    v24 = 1;
  }

  else
  {
    _defaultAccountTypes = [(ACUIRemoteAccountSyncController *)selfCopy _defaultAccountTypes];
    v31[0] = ACRemoteDeviceOptionTargetDeviceBTUUID;
    device = [(ACUIRemoteAccountSyncController *)selfCopy device];
    bluetoothIdentifier = [(NRDevice *)device bluetoothIdentifier];
    uUIDString = [(NSUUID *)bluetoothIdentifier UUIDString];
    v32[0] = uUIDString;
    v31[1] = ACRemoteDeviceOptionAccountQueryIgnoreCache;
    v32[1] = &__kCFBooleanTrue;
    v31[2] = ACRemoteDeviceOptionPreloadedPropertiesArray;
    v30[0] = ACPropertyKeyEnabledDataclasses;
    v30[1] = ACPropertyKeyProvisionedDataclasses;
    v8 = [NSArray arrayWithObjects:v30 count:2];
    v32[2] = v8;
    v22 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];

    [(ACUIRemoteAccountSyncController *)selfCopy setReloading:1];
    v21 = _ACUILogSystem();
    v20 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v7 = [v22 objectForKeyedSubscript:ACRemoteDeviceOptionTargetDeviceBTUUID];
      v6 = [v22 objectForKeyedSubscript:ACRemoteDeviceOptionAccountQueryIgnoreCache];
      sub_332C(v29, "[ACUIRemoteAccountSyncController fetchRemoteAccounts:]", 67, v7, v6);
      _os_log_debug_impl(&dword_0, v21, v20, "%s (%d) Fetching accounts(deviceID = %{public}@; ignoreCache = %@)", v29, 0x26u);
    }

    objc_storeStrong(&v21, 0);
    objc_initWeak(&from, selfCopy);
    accountStore = [(ACUIRemoteAccountSyncController *)selfCopy accountStore];
    v4 = _defaultAccountTypes;
    v5 = v22;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_33B0;
    v16 = &unk_1C398;
    objc_copyWeak(v18, &from);
    v17 = location[0];
    [(ACAccountStore *)accountStore accountsOnPairedDeviceWithAccountTypes:v4 withOptions:v5 completion:&v12];

    objc_storeStrong(&v17, 0);
    objc_destroyWeak(v18);
    objc_destroyWeak(&from);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&_defaultAccountTypes, 0);
    v24 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)saveRemoteAccount:(id)account completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v28 = 0;
  objc_storeStrong(&v28, completion);
  v32 = ACRemoteDeviceOptionTargetDeviceBTUUID;
  device = [(ACUIRemoteAccountSyncController *)selfCopy device];
  bluetoothIdentifier = [(NRDevice *)device bluetoothIdentifier];
  uUIDString = [(NSUUID *)bluetoothIdentifier UUIDString];
  v33 = uUIDString;
  v27 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v26 = _ACUILogSystem();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v9 = [location[0] description];
    v24 = v9;
    device2 = [(ACUIRemoteAccountSyncController *)selfCopy device];
    bluetoothIdentifier2 = [(NRDevice *)device2 bluetoothIdentifier];
    v23 = bluetoothIdentifier2;
    sub_3A00(v31, "[ACUIRemoteAccountSyncController saveRemoteAccount:completion:]", 87, v24, v23);
    _os_log_debug_impl(&dword_0, v26, v25, "%s (%d) Saving account(account = %@; deviceID = %{public}@)", v31, 0x26u);

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_initWeak(&from, selfCopy);
  accountStore = [(ACUIRemoteAccountSyncController *)selfCopy accountStore];
  v5 = location[0];
  v6 = v27;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_3A84;
  v18 = &unk_1C3C0;
  objc_copyWeak(v21, &from);
  v19 = location[0];
  v20 = v28;
  [(ACAccountStore *)accountStore saveAccount:v5 toPairedDeviceWithOptions:v6 completion:&v14];

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_destroyWeak(v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)updateRemoteAccount:(id)account completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v28 = 0;
  objc_storeStrong(&v28, completion);
  v32 = ACRemoteDeviceOptionTargetDeviceBTUUID;
  device = [(ACUIRemoteAccountSyncController *)selfCopy device];
  bluetoothIdentifier = [(NRDevice *)device bluetoothIdentifier];
  uUIDString = [(NSUUID *)bluetoothIdentifier UUIDString];
  v33 = uUIDString;
  v27 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v26 = _ACUILogSystem();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v9 = [location[0] description];
    v24 = v9;
    device2 = [(ACUIRemoteAccountSyncController *)selfCopy device];
    bluetoothIdentifier2 = [(NRDevice *)device2 bluetoothIdentifier];
    v23 = bluetoothIdentifier2;
    sub_3A00(v31, "[ACUIRemoteAccountSyncController updateRemoteAccount:completion:]", 115, v24, v23);
    _os_log_debug_impl(&dword_0, v26, v25, "%s (%d) Updating account(account = %@; deviceID = %{public}@)", v31, 0x26u);

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_initWeak(&from, selfCopy);
  accountStore = [(ACUIRemoteAccountSyncController *)selfCopy accountStore];
  v5 = location[0];
  v6 = v27;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_41C8;
  v18 = &unk_1C3C0;
  objc_copyWeak(v21, &from);
  v19 = location[0];
  v20 = v28;
  [(ACAccountStore *)accountStore notifyRemoteDevicesOfModifiedAccount:v5 withOptions:v6 completion:&v14];

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_destroyWeak(v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)removeRemoteAccount:(id)account completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v28 = 0;
  objc_storeStrong(&v28, completion);
  v32 = ACRemoteDeviceOptionTargetDeviceBTUUID;
  device = [(ACUIRemoteAccountSyncController *)selfCopy device];
  bluetoothIdentifier = [(NRDevice *)device bluetoothIdentifier];
  uUIDString = [(NSUUID *)bluetoothIdentifier UUIDString];
  v33 = uUIDString;
  v27 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v26 = _ACUILogSystem();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v9 = [location[0] description];
    v24 = v9;
    device2 = [(ACUIRemoteAccountSyncController *)selfCopy device];
    bluetoothIdentifier2 = [(NRDevice *)device2 bluetoothIdentifier];
    v23 = bluetoothIdentifier2;
    sub_3A00(v31, "[ACUIRemoteAccountSyncController removeRemoteAccount:completion:]", 132, v24, v23);
    _os_log_debug_impl(&dword_0, v26, v25, "%s (%d) Removing account(account = %@; deviceID = %{public}@)", v31, 0x26u);

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_initWeak(&from, selfCopy);
  accountStore = [(ACUIRemoteAccountSyncController *)selfCopy accountStore];
  v5 = location[0];
  v6 = v27;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_47B0;
  v18 = &unk_1C3C0;
  objc_copyWeak(v21, &from);
  v19 = location[0];
  v20 = v28;
  [(ACAccountStore *)accountStore removeAccountFromPairedDevice:v5 withOptions:v6 completion:&v14];

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_destroyWeak(v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)addObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  queue = selfCopy->_observerQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_4A78;
  v8 = &unk_1C3E8;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  queue = selfCopy->_observerQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_4BF0;
  v8 = &unk_1C3E8;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_notifyAccountsChanged
{
  v8[2] = self;
  v8[1] = a2;
  queue = self->_observerQueue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_4D10;
  v7 = &unk_1C410;
  v8[0] = self;
  dispatch_async(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (void)_notifyAccountsInvalidated
{
  v8[2] = self;
  v8[1] = a2;
  queue = self->_observerQueue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_4F60;
  v7 = &unk_1C410;
  v8[0] = self;
  dispatch_async(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (void)_notifyStateChanged
{
  v8[2] = self;
  v8[1] = a2;
  queue = self->_observerQueue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_51B0;
  v7 = &unk_1C410;
  v8[0] = self;
  dispatch_async(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (id)_removeAccount:(id)account fromArray:(id)array
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v16 = 0;
  objc_storeStrong(&v16, array);
  v15 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  v11 = v16;
  v12 = [v11 countByEnumeratingWithState:__b objects:v19 count:16];
  if (v12)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v12;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(v11);
      }

      v14 = *(__b[1] + 8 * v8);
      if (![(ACUIRemoteAccountSyncController *)selfCopy _isAccount:v14 equalTo:location[0]])
      {
        [v15 addObject:v14];
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [v11 countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  v5 = [v15 copy];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)_isExisitingAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_accounts;
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v6);
      if ([(ACUIRemoteAccountSyncController *)selfCopy _isAccount:location[0] equalTo:v12])
      {
        break;
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    v15 = 1;
    v10 = 1;
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  if (!v10)
  {
    v15 = 0;
  }

  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (BOOL)_isAccount:(id)account equalTo:(id)to
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v13 = 0;
  objc_storeStrong(&v13, to);
  identifier = [location[0] identifier];
  identifier2 = [v13 identifier];
  v11 = 0;
  v9 = 0;
  v8 = 1;
  if (([identifier isEqualToString:?] & 1) == 0)
  {
    parentAccountIdentifier = [location[0] parentAccountIdentifier];
    v11 = 1;
    identifier3 = [v13 identifier];
    v9 = 1;
    v8 = [parentAccountIdentifier isEqualToString:?];
  }

  v15 = v8 & 1;
  if (v9)
  {
  }

  if (v11)
  {
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (id)_defaultAccountTypes
{
  selfCopy = self;
  v3 = a2;
  return [NSSet setWithObjects:ACAccountTypeIdentifierSubscribedCalendar, ACAccountTypeIdentifierCalDAV, ACAccountTypeIdentifierCardDAV, ACAccountTypeIdentifierBookmarkDAV, ACAccountTypeIdentifierIMAP, ACAccountTypeIdentifierPOP, ACAccountTypeIdentifierSMTP, ACAccountTypeIdentifierExchange, ACAccountTypeIdentifierHotmail, ACAccountTypeIdentifierLDAP, ACAccountTypeIdentifierGmail, ACAccountTypeIdentifierYahoo, ACAccountTypeIdentifierAol, ACAccountTypeIdentifierOnMyDevice, ACAccountTypeIdentifierIMAPNotes, ACAccountTypeIdentifierIMAPMail, ACAccountTypeIdentifierAppleAccount, 0];
}

@end