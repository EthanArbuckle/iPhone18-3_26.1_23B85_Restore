@interface ACUIRemoteAccountSyncController
- (ACUIRemoteAccountSyncController)initWithRemoteDevice:(id)a3;
- (BOOL)_isAccount:(id)a3 equalTo:(id)a4;
- (BOOL)_isExisitingAccount:(id)a3;
- (id)_defaultAccountTypes;
- (id)_removeAccount:(id)a3 fromArray:(id)a4;
- (id)topLevelAccounts;
- (void)_notifyAccountsChanged;
- (void)_notifyAccountsInvalidated;
- (void)_notifyStateChanged;
- (void)addObserver:(id)a3;
- (void)fetchRemoteAccounts:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removeRemoteAccount:(id)a3 completion:(id)a4;
- (void)saveRemoteAccount:(id)a3 completion:(id)a4;
- (void)updateRemoteAccount:(id)a3 completion:(id)a4;
@end

@implementation ACUIRemoteAccountSyncController

- (ACUIRemoteAccountSyncController)initWithRemoteDevice:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v16;
  v16 = 0;
  v14.receiver = v3;
  v14.super_class = ACUIRemoteAccountSyncController;
  v16 = [(ACUIRemoteAccountSyncController *)&v14 init];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    v4 = +[ACAccountStore defaultStore];
    accountStore = v16->_accountStore;
    v16->_accountStore = v4;

    objc_storeStrong(&v16->_device, location[0]);
    v6 = objc_alloc_init(NSArray);
    accounts = v16->_accounts;
    v16->_accounts = v6;

    v8 = objc_alloc_init(NSMutableSet);
    observers = v16->_observers;
    v16->_observers = v8;

    v10 = dispatch_queue_create("com.apple.accountsui.syncObservers", 0);
    observerQueue = v16->_observerQueue;
    v16->_observerQueue = v10;
  }

  v13 = v16;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v13;
}

- (id)topLevelAccounts
{
  v14 = self;
  v13[1] = a2;
  v13[0] = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  obj = v14->_accounts;
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
      v4 = [v12 parentAccount];

      if (!v4)
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

- (void)fetchRemoteAccounts:(id)a3
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v28->_reloading)
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
    v23 = [(ACUIRemoteAccountSyncController *)v28 _defaultAccountTypes];
    v31[0] = ACRemoteDeviceOptionTargetDeviceBTUUID;
    v11 = [(ACUIRemoteAccountSyncController *)v28 device];
    v10 = [(NRDevice *)v11 bluetoothIdentifier];
    v9 = [(NSUUID *)v10 UUIDString];
    v32[0] = v9;
    v31[1] = ACRemoteDeviceOptionAccountQueryIgnoreCache;
    v32[1] = &__kCFBooleanTrue;
    v31[2] = ACRemoteDeviceOptionPreloadedPropertiesArray;
    v30[0] = ACPropertyKeyEnabledDataclasses;
    v30[1] = ACPropertyKeyProvisionedDataclasses;
    v8 = [NSArray arrayWithObjects:v30 count:2];
    v32[2] = v8;
    v22 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];

    [(ACUIRemoteAccountSyncController *)v28 setReloading:1];
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
    objc_initWeak(&from, v28);
    v3 = [(ACUIRemoteAccountSyncController *)v28 accountStore];
    v4 = v23;
    v5 = v22;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_33B0;
    v16 = &unk_1C398;
    objc_copyWeak(v18, &from);
    v17 = location[0];
    [(ACAccountStore *)v3 accountsOnPairedDeviceWithAccountTypes:v4 withOptions:v5 completion:&v12];

    objc_storeStrong(&v17, 0);
    objc_destroyWeak(v18);
    objc_destroyWeak(&from);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
    v24 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)saveRemoteAccount:(id)a3 completion:(id)a4
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v32 = ACRemoteDeviceOptionTargetDeviceBTUUID;
  v12 = [(ACUIRemoteAccountSyncController *)v30 device];
  v11 = [(NRDevice *)v12 bluetoothIdentifier];
  v10 = [(NSUUID *)v11 UUIDString];
  v33 = v10;
  v27 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v26 = _ACUILogSystem();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v9 = [location[0] description];
    v24 = v9;
    v8 = [(ACUIRemoteAccountSyncController *)v30 device];
    v7 = [(NRDevice *)v8 bluetoothIdentifier];
    v23 = v7;
    sub_3A00(v31, "[ACUIRemoteAccountSyncController saveRemoteAccount:completion:]", 87, v24, v23);
    _os_log_debug_impl(&dword_0, v26, v25, "%s (%d) Saving account(account = %@; deviceID = %{public}@)", v31, 0x26u);

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_initWeak(&from, v30);
  v4 = [(ACUIRemoteAccountSyncController *)v30 accountStore];
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
  [(ACAccountStore *)v4 saveAccount:v5 toPairedDeviceWithOptions:v6 completion:&v14];

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_destroyWeak(v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)updateRemoteAccount:(id)a3 completion:(id)a4
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v32 = ACRemoteDeviceOptionTargetDeviceBTUUID;
  v12 = [(ACUIRemoteAccountSyncController *)v30 device];
  v11 = [(NRDevice *)v12 bluetoothIdentifier];
  v10 = [(NSUUID *)v11 UUIDString];
  v33 = v10;
  v27 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v26 = _ACUILogSystem();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v9 = [location[0] description];
    v24 = v9;
    v8 = [(ACUIRemoteAccountSyncController *)v30 device];
    v7 = [(NRDevice *)v8 bluetoothIdentifier];
    v23 = v7;
    sub_3A00(v31, "[ACUIRemoteAccountSyncController updateRemoteAccount:completion:]", 115, v24, v23);
    _os_log_debug_impl(&dword_0, v26, v25, "%s (%d) Updating account(account = %@; deviceID = %{public}@)", v31, 0x26u);

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_initWeak(&from, v30);
  v4 = [(ACUIRemoteAccountSyncController *)v30 accountStore];
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
  [(ACAccountStore *)v4 notifyRemoteDevicesOfModifiedAccount:v5 withOptions:v6 completion:&v14];

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_destroyWeak(v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)removeRemoteAccount:(id)a3 completion:(id)a4
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v32 = ACRemoteDeviceOptionTargetDeviceBTUUID;
  v12 = [(ACUIRemoteAccountSyncController *)v30 device];
  v11 = [(NRDevice *)v12 bluetoothIdentifier];
  v10 = [(NSUUID *)v11 UUIDString];
  v33 = v10;
  v27 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v26 = _ACUILogSystem();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v9 = [location[0] description];
    v24 = v9;
    v8 = [(ACUIRemoteAccountSyncController *)v30 device];
    v7 = [(NRDevice *)v8 bluetoothIdentifier];
    v23 = v7;
    sub_3A00(v31, "[ACUIRemoteAccountSyncController removeRemoteAccount:completion:]", 132, v24, v23);
    _os_log_debug_impl(&dword_0, v26, v25, "%s (%d) Removing account(account = %@; deviceID = %{public}@)", v31, 0x26u);

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_initWeak(&from, v30);
  v4 = [(ACUIRemoteAccountSyncController *)v30 accountStore];
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
  [(ACAccountStore *)v4 removeAccountFromPairedDevice:v5 withOptions:v6 completion:&v14];

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_destroyWeak(v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)addObserver:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_observerQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_4A78;
  v8 = &unk_1C3E8;
  v9 = v12;
  v10 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_observerQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_4BF0;
  v8 = &unk_1C3E8;
  v9 = v12;
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

- (id)_removeAccount:(id)a3 fromArray:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
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
      if (![(ACUIRemoteAccountSyncController *)v18 _isAccount:v14 equalTo:location[0]])
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

- (BOOL)_isExisitingAccount:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = v14->_accounts;
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
      if ([(ACUIRemoteAccountSyncController *)v14 _isAccount:location[0] equalTo:v12])
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

- (BOOL)_isAccount:(id)a3 equalTo:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v6 = [location[0] identifier];
  v7 = [v13 identifier];
  v11 = 0;
  v9 = 0;
  v8 = 1;
  if (([v6 isEqualToString:?] & 1) == 0)
  {
    v12 = [location[0] parentAccountIdentifier];
    v11 = 1;
    v10 = [v13 identifier];
    v9 = 1;
    v8 = [v12 isEqualToString:?];
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
  v4 = self;
  v3 = a2;
  return [NSSet setWithObjects:ACAccountTypeIdentifierSubscribedCalendar, ACAccountTypeIdentifierCalDAV, ACAccountTypeIdentifierCardDAV, ACAccountTypeIdentifierBookmarkDAV, ACAccountTypeIdentifierIMAP, ACAccountTypeIdentifierPOP, ACAccountTypeIdentifierSMTP, ACAccountTypeIdentifierExchange, ACAccountTypeIdentifierHotmail, ACAccountTypeIdentifierLDAP, ACAccountTypeIdentifierGmail, ACAccountTypeIdentifierYahoo, ACAccountTypeIdentifierAol, ACAccountTypeIdentifierOnMyDevice, ACAccountTypeIdentifierIMAPNotes, ACAccountTypeIdentifierIMAPMail, ACAccountTypeIdentifierAppleAccount, 0];
}

@end