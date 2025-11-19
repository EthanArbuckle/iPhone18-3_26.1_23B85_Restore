@interface MFNanoCloudNotificationAccountDataSource
- (MFNanoCloudNotificationAccountDataSource)initWithAccountDataSource:(id)a3;
- (id)accounts;
- (void)accountsSettingsDataSourceDidUpdate:(id)a3;
- (void)saveAccount:(id)a3 completion:(id)a4;
@end

@implementation MFNanoCloudNotificationAccountDataSource

- (MFNanoCloudNotificationAccountDataSource)initWithAccountDataSource:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MFNanoCloudNotificationAccountDataSource;
  v5 = [(MFNanoCloudNotificationAccountDataSource *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(MFNanoCloudNotificationAccountDataSource *)v5 setAccountDataSource:v4];
    v7 = [[NSHashTable alloc] initWithOptions:5 capacity:3];
    [(MFNanoCloudNotificationAccountDataSource *)v6 setObservers:v7];

    v8 = [(MFNanoCloudNotificationAccountDataSource *)v6 accountDataSource];
    [v8 addObserver:v6];
  }

  return v6;
}

- (id)accounts
{
  v2 = [(MFNanoAccountsSettingsDataSource *)self->_accountDataSource accounts];
  v3 = [v2 ef_map:&stru_34C10];

  return v3;
}

- (void)saveAccount:(id)a3 completion:(id)a4
{
  v6 = a4;
  v5 = [a3 nnmkAccount];
  [NNMKStandaloneAccountHelper saveLocalAccountProperties:v5 withCompletion:v6];
}

- (void)accountsSettingsDataSourceDidUpdate:(id)a3
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