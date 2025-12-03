@interface BFFAppleAccountInfo
+ (id)_accountInfos;
+ (id)infoForAccountIdentifier:(id)identifier;
+ (id)primaryAccountInfo;
- (void)updateWithAuthenticationResults:(id)results;
@end

@implementation BFFAppleAccountInfo

+ (id)_accountInfos
{
  v5 = &unk_1003A7450;
  location = 0;
  objc_storeStrong(&location, &stru_10032F490);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003A7448;

  return v2;
}

+ (id)primaryAccountInfo
{
  selfCopy = self;
  location[1] = a2;
  v2 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  location[0] = [aa_primaryAppleAccount identifier];

  v4 = [selfCopy infoForAccountIdentifier:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)infoForAccountIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v10 = 0;
  v3 = +[ACAccountStore defaultStore];
  v9 = [v3 accountWithIdentifier:location[0]];

  if (v9)
  {
    _accountInfos = [selfCopy _accountInfos];
    v4 = [_accountInfos objectForKeyedSubscript:location[0]];
    v5 = v10;
    v10 = v4;

    if (!v10)
    {
      v10 = objc_alloc_init(BFFAppleAccountInfo);

      [_accountInfos setObject:v10 forKeyedSubscript:location[0]];
    }

    objc_storeStrong(&_accountInfos, 0);
  }

  v6 = v10;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)updateWithAuthenticationResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v3 = [location[0] objectForKeyedSubscript:AKAuthenticationUsernameKey];
  [(BFFAppleAccountInfo *)selfCopy setUsername:v3];

  v4 = [location[0] objectForKeyedSubscript:AKAuthenticationPasswordKey];
  [(BFFAppleAccountInfo *)selfCopy setPassword:v4];

  v5 = [location[0] objectForKeyedSubscript:AKAuthenticationRawPasswordKey];
  [(BFFAppleAccountInfo *)selfCopy setRawPassword:v5];

  v6 = [location[0] objectForKeyedSubscript:AKAuthenticationDSIDKey];
  stringValue = [v6 stringValue];
  [(BFFAppleAccountInfo *)selfCopy setDsid:stringValue];

  v8 = [location[0] objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
  [(BFFAppleAccountInfo *)selfCopy setAltDSID:v8];

  objc_storeStrong(location, 0);
}

@end