@interface BFFAppleAccountInfo
+ (id)_accountInfos;
+ (id)infoForAccountIdentifier:(id)a3;
+ (id)primaryAccountInfo;
- (void)updateWithAuthenticationResults:(id)a3;
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
  v7 = a1;
  location[1] = a2;
  v2 = +[ACAccountStore defaultStore];
  v3 = [v2 aa_primaryAppleAccount];
  location[0] = [v3 identifier];

  v4 = [v7 infoForAccountIdentifier:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)infoForAccountIdentifier:(id)a3
{
  v12 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  v3 = +[ACAccountStore defaultStore];
  v9 = [v3 accountWithIdentifier:location[0]];

  if (v9)
  {
    v8 = [v12 _accountInfos];
    v4 = [v8 objectForKeyedSubscript:location[0]];
    v5 = v10;
    v10 = v4;

    if (!v10)
    {
      v10 = objc_alloc_init(BFFAppleAccountInfo);

      [v8 setObject:v10 forKeyedSubscript:location[0]];
    }

    objc_storeStrong(&v8, 0);
  }

  v6 = v10;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)updateWithAuthenticationResults:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] objectForKeyedSubscript:AKAuthenticationUsernameKey];
  [(BFFAppleAccountInfo *)v10 setUsername:v3];

  v4 = [location[0] objectForKeyedSubscript:AKAuthenticationPasswordKey];
  [(BFFAppleAccountInfo *)v10 setPassword:v4];

  v5 = [location[0] objectForKeyedSubscript:AKAuthenticationRawPasswordKey];
  [(BFFAppleAccountInfo *)v10 setRawPassword:v5];

  v6 = [location[0] objectForKeyedSubscript:AKAuthenticationDSIDKey];
  v7 = [v6 stringValue];
  [(BFFAppleAccountInfo *)v10 setDsid:v7];

  v8 = [location[0] objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
  [(BFFAppleAccountInfo *)v10 setAltDSID:v8];

  objc_storeStrong(location, 0);
}

@end