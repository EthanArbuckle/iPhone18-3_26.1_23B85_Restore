@interface AKAccountStore
- (BOOL)isAccountDaemonConnectionError:(id)error;
- (BOOL)saveVerifiedAccount:(id)account error:(id *)error;
- (id)accountTypeWithAccountTypeIdentifier:(id)identifier error:(id *)error;
- (id)accountsWithAccountType:(id)type options:(unint64_t)options error:(id *)error;
- (id)credentialForAccount:(id)account error:(id *)error;
- (id)credentialForAccount:(id)account serviceID:(id)d error:(id *)error;
@end

@implementation AKAccountStore

- (id)accountsWithAccountType:(id)type options:(unint64_t)options error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  optionsCopy = options;
  errorCopy = error;
  v9.receiver = selfCopy;
  v9.super_class = AKAccountStore;
  v8 = [(AKAccountStore *)&v9 accountsWithAccountType:location[0] options:options error:error];
  objc_storeStrong(location, 0);

  return v8;
}

- (id)credentialForAccount:(id)account serviceID:(id)d error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v18 = 0;
  objc_storeStrong(&v18, d);
  errorCopy = error;
  v15.receiver = selfCopy;
  v15.super_class = AKAccountStore;
  v16 = [(AKAccountStore *)&v15 credentialForAccount:location[0] serviceID:v18 error:error];
  if (errorCopy && [(AKAccountStore *)selfCopy isAccountDaemonConnectionError:*errorCopy])
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
    v11.receiver = selfCopy;
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

- (id)credentialForAccount:(id)account error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  errorCopy = error;
  v13.receiver = selfCopy;
  v13.super_class = AKAccountStore;
  v14 = [(AKAccountStore *)&v13 credentialForAccount:location[0] error:error];
  if (errorCopy && [(AKAccountStore *)selfCopy isAccountDaemonConnectionError:*errorCopy])
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
    v9.receiver = selfCopy;
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

- (id)accountTypeWithAccountTypeIdentifier:(id)identifier error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  errorCopy = error;
  v13.receiver = selfCopy;
  v13.super_class = AKAccountStore;
  v14 = [(AKAccountStore *)&v13 accountTypeWithAccountTypeIdentifier:location[0] error:error];
  if (errorCopy && [(AKAccountStore *)selfCopy isAccountDaemonConnectionError:*errorCopy])
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
    v9.receiver = selfCopy;
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

- (BOOL)saveVerifiedAccount:(id)account error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  errorCopy = error;
  v7.receiver = selfCopy;
  v7.super_class = AKAccountStore;
  v6 = [(AKAccountStore *)&v7 saveVerifiedAccount:location[0] error:error];
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)isAccountDaemonConnectionError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v5 = 0;
  v4 = 0;
  if ([location[0] code] == 10002)
  {
    domain = [location[0] domain];
    v5 = 1;
    v4 = [domain isEqualToString:*MEMORY[0x1E6959970]];
  }

  if (v5)
  {
    MEMORY[0x1E69E5920](domain);
  }

  v8 = (v4 & 1) != 0;
  objc_storeStrong(location, 0);
  return v8;
}

@end