@interface MFNanoCloudNotificationAccountDataSource
- (MFNanoCloudNotificationAccountDataSource)initWithAccountDataSource:(id)source;
- (id)accounts;
- (void)accountsSettingsDataSourceDidUpdate:(id)update;
- (void)saveAccount:(id)account completion:(id)completion;
@end

@implementation MFNanoCloudNotificationAccountDataSource

- (MFNanoCloudNotificationAccountDataSource)initWithAccountDataSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = MFNanoCloudNotificationAccountDataSource;
  v5 = [(MFNanoCloudNotificationAccountDataSource *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(MFNanoCloudNotificationAccountDataSource *)v5 setAccountDataSource:sourceCopy];
    v7 = [[NSHashTable alloc] initWithOptions:5 capacity:3];
    [(MFNanoCloudNotificationAccountDataSource *)v6 setObservers:v7];

    accountDataSource = [(MFNanoCloudNotificationAccountDataSource *)v6 accountDataSource];
    [accountDataSource addObserver:v6];
  }

  return v6;
}

- (id)accounts
{
  accounts = [(MFNanoAccountsSettingsDataSource *)self->_accountDataSource accounts];
  v3 = [accounts ef_map:&stru_34C10];

  return v3;
}

- (void)saveAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  nnmkAccount = [account nnmkAccount];
  [NNMKStandaloneAccountHelper saveLocalAccountProperties:nnmkAccount withCompletion:completionCopy];
}

- (void)accountsSettingsDataSourceDidUpdate:(id)update
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7) accountDataSourceAccountsChanged:{self, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end