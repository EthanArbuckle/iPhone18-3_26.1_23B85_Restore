@interface AKAccountStore
- (BOOL)isAccountDaemonConnectionError:(id)a3;
- (BOOL)saveVerifiedAccount:(id)a3 error:(id *)a4;
- (id)accountTypeWithAccountTypeIdentifier:(id)a3 error:(id *)a4;
- (id)accountsWithAccountType:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)credentialForAccount:(id)a3 error:(id *)a4;
- (id)credentialForAccount:(id)a3 serviceID:(id)a4 error:(id *)a5;
@end

@implementation AKAccountStore

- (id)accountsWithAccountType:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  v10 = a5;
  v9.receiver = v13;
  v9.super_class = AKAccountStore;
  v8 = [(AKAccountStore *)&v9 accountsWithAccountType:location[0] options:a4 error:a5];
  objc_storeStrong(location, 0);

  return v8;
}

- (id)credentialForAccount:(id)a3 serviceID:(id)a4 error:(id *)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = a5;
  v15.receiver = v20;
  v15.super_class = AKAccountStore;
  v16 = [(AKAccountStore *)&v15 credentialForAccount:location[0] serviceID:v18 error:a5];
  if (v17 && [(AKAccountStore *)v20 isAccountDaemonConnectionError:*v17])
  {
    v14 = _AKLogSystem();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      log = v14;
      type = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_impl(&dword_193225000, log, type, "Retrying credential fetch with service id...", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    v11.receiver = v20;
    v11.super_class = AKAccountStore;
    v21 = [(AKAccountStore *)&v11 credentialForAccount:location[0] serviceID:v18 error:0];
  }

  else
  {
    v21 = MEMORY[0x1E69E5928](v16);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  v5 = v21;

  return v5;
}

- (id)credentialForAccount:(id)a3 error:(id *)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v13.receiver = v17;
  v13.super_class = AKAccountStore;
  v14 = [(AKAccountStore *)&v13 credentialForAccount:location[0] error:a4];
  if (v15 && [(AKAccountStore *)v17 isAccountDaemonConnectionError:*v15])
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      log = v12;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_193225000, log, type, "Retrying credential fetch operation...", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    v9.receiver = v17;
    v9.super_class = AKAccountStore;
    v18 = [(AKAccountStore *)&v9 credentialForAccount:location[0] error:0];
  }

  else
  {
    v18 = MEMORY[0x1E69E5928](v14);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  v4 = v18;

  return v4;
}

- (id)accountTypeWithAccountTypeIdentifier:(id)a3 error:(id *)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v13.receiver = v17;
  v13.super_class = AKAccountStore;
  v14 = [(AKAccountStore *)&v13 accountTypeWithAccountTypeIdentifier:location[0] error:a4];
  if (v15 && [(AKAccountStore *)v17 isAccountDaemonConnectionError:*v15])
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      log = v12;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_193225000, log, type, "Retrying fetching account type operation...", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    v9.receiver = v17;
    v9.super_class = AKAccountStore;
    v18 = [(AKAccountStore *)&v9 accountTypeWithAccountTypeIdentifier:location[0] error:0];
  }

  else
  {
    v18 = MEMORY[0x1E69E5928](v14);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  v4 = v18;

  return v4;
}

- (BOOL)saveVerifiedAccount:(id)a3 error:(id *)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v7.receiver = v10;
  v7.super_class = AKAccountStore;
  v6 = [(AKAccountStore *)&v7 saveVerifiedAccount:location[0] error:a4];
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)isAccountDaemonConnectionError:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  v4 = 0;
  if ([location[0] code] == 10002)
  {
    v6 = [location[0] domain];
    v5 = 1;
    v4 = [v6 isEqualToString:*MEMORY[0x1E6959970]];
  }

  if (v5)
  {
    MEMORY[0x1E69E5920](v6);
  }

  v8 = (v4 & 1) != 0;
  objc_storeStrong(location, 0);
  return v8;
}

@end