@interface ACUICloudNotificationAccountDataSource
- (ACUICloudNotificationAccountDataSource)initWithAccountDataSource:(id)source;
- (id)accounts;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)saveAccount:(id)account completion:(id)completion;
- (void)syncControllerAccountsChanged:(id)changed;
- (void)syncControllerAccountsInvalidated:(id)invalidated;
- (void)syncControllerStateChanged:(id)changed;
@end

@implementation ACUICloudNotificationAccountDataSource

- (ACUICloudNotificationAccountDataSource)initWithAccountDataSource:(id)source
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = ACUICloudNotificationAccountDataSource;
  selfCopy = [(ACUICloudNotificationAccountDataSource *)&v7 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(ACUICloudNotificationAccountDataSource *)selfCopy setAccountDataSource:location[0]];
    v6 = [[NSHashTable alloc] initWithOptions:5 capacity:3];
    [(ACUICloudNotificationAccountDataSource *)selfCopy setObservers:?];

    [location[0] addObserver:selfCopy];
  }

  v5 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)saveAccount:(id)account completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  accountDataSource = selfCopy->_accountDataSource;
  acAccount = [location[0] acAccount];
  [ACUIRemoteAccountSyncController updateRemoteAccount:"updateRemoteAccount:completion:" completion:?];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (id)accounts
{
  accounts = [(ACUIRemoteAccountSyncController *)self->_accountDataSource accounts];
  v4 = [(NSArray *)accounts ac_map:&stru_1C6B0];

  return v4;
}

- (void)addObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_observers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_observers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)syncControllerAccountsChanged:(id)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_observers;
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
      [v11 accountDataSourceAccountsChanged:{selfCopy, v7}];
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

- (void)syncControllerAccountsInvalidated:(id)invalidated
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, invalidated);
  objc_storeStrong(location, 0);
}

- (void)syncControllerStateChanged:(id)changed
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  objc_storeStrong(location, 0);
}

@end