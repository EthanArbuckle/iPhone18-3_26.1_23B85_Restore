@interface ACUICloudNotificationAccountDataSource
- (ACUICloudNotificationAccountDataSource)initWithAccountDataSource:(id)a3;
- (id)accounts;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)saveAccount:(id)a3 completion:(id)a4;
- (void)syncControllerAccountsChanged:(id)a3;
- (void)syncControllerAccountsInvalidated:(id)a3;
- (void)syncControllerStateChanged:(id)a3;
@end

@implementation ACUICloudNotificationAccountDataSource

- (ACUICloudNotificationAccountDataSource)initWithAccountDataSource:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = ACUICloudNotificationAccountDataSource;
  v9 = [(ACUICloudNotificationAccountDataSource *)&v7 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    [(ACUICloudNotificationAccountDataSource *)v9 setAccountDataSource:location[0]];
    v6 = [[NSHashTable alloc] initWithOptions:5 capacity:3];
    [(ACUICloudNotificationAccountDataSource *)v9 setObservers:?];

    [location[0] addObserver:v9];
  }

  v5 = v9;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)saveAccount:(id)a3 completion:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  accountDataSource = v9->_accountDataSource;
  v6 = [location[0] acAccount];
  [ACUIRemoteAccountSyncController updateRemoteAccount:"updateRemoteAccount:completion:" completion:?];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (id)accounts
{
  v3 = [(ACUIRemoteAccountSyncController *)self->_accountDataSource accounts];
  v4 = [(NSArray *)v3 ac_map:&stru_1C6B0];

  return v4;
}

- (void)addObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_observers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_observers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)syncControllerAccountsChanged:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = v13->_observers;
  v9 = [(NSHashTable *)obj countByEnumeratingWithState:__b objects:v14 count:16];
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

      v11 = *(__b[1] + 8 * v6);
      [v11 accountDataSourceAccountsChanged:{v13, v7}];
      ++v6;
      v7 = v3;
      if (v4 + 1 >= v3)
      {
        v6 = 0;
        v7 = [(NSHashTable *)obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)syncControllerAccountsInvalidated:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)syncControllerStateChanged:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

@end