@interface KeychainDataclassOwner
+ (id)dataclasses;
- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6 withError:(id *)a7;
- (id)actionsForDeletingAccount:(id)a3 forDataclass:(id)a4;
- (id)actionsForEnablingDataclassOnAccount:(id)a3 forDataclass:(id)a4;
@end

@implementation KeychainDataclassOwner

+ (id)dataclasses
{
  v4 = kAccountDataclassKeychainSync;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6 withError:(id *)a7
{
  v7 = a3;
  if ([v7 type] == &dword_0 + 3 || objc_msgSend(v7, "type") == &dword_4 + 2)
  {
    if (SecDeleteItemsOnSignOut())
    {
      v8 = secLogObjForScope();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Deleted items on sign out", buf, 2u);
      }
    }

    else
    {
      v8 = 0;
      v9 = secLogObjForScope();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "ItemDelete: Failed to delete items on sign out: %@", buf, 0xCu);
      }
    }
  }

  if ([v7 type] == &dword_4 + 1)
  {
    v10 = secLogObjForScope();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Already supported", buf, 2u);
    }
  }

  return 1;
}

- (id)actionsForEnablingDataclassOnAccount:(id)a3 forDataclass:(id)a4
{
  v4 = a4;
  if (_os_feature_enabled_impl() && [v4 isEqual:kAccountDataclassKeychainSync])
  {
    v5 = [ACDataclassAction actionWithType:5];
    v6 = [ACDataclassAction actionWithType:6];
    v9[0] = v5;
    v9[1] = v6;
    v7 = [NSArray arrayWithObjects:v9 count:2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)actionsForDeletingAccount:(id)a3 forDataclass:(id)a4
{
  if ([a4 isEqual:kAccountDataclassKeychainSync])
  {
    v4 = [ACDataclassAction actionWithType:0];
    v5 = [ACDataclassAction actionWithType:3];
    v6 = [ACDataclassAction actionWithType:2];
    v9[0] = v4;
    v9[1] = v5;
    v9[2] = v6;
    v7 = [NSArray arrayWithObjects:v9 count:3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end