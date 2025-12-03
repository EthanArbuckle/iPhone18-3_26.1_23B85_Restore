@interface BYSecurityInterface
+ (id)sharedInterface;
- (BOOL)getKeychainSyncCircleExists:(BOOL *)exists inCircle:(BOOL *)circle error:(id *)error;
- (BOOL)isHSA2EnabledForPrimaryAccount;
- (BOOL)isICDPEnabledForDSID:(id)d;
- (BOOL)isICDPEnabledForPrimaryAccount;
- (BOOL)isManateeAvailable;
- (id)primaryAccountDSID;
- (int)keychainSyncStatus;
@end

@implementation BYSecurityInterface

+ (id)sharedInterface
{
  v5 = &unk_1003A7510;
  location = 0;
  objc_storeStrong(&location, &stru_10032F6F8);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003A7508;

  return v2;
}

- (int)keychainSyncStatus
{
  selfCopy = self;
  location[1] = a2;
  if ([(BYSecurityInterface *)self simulating])
  {
    if ([(BYSecurityInterface *)selfCopy simulateInCircle])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    location[0] = 0;
    oslog[1] = 0;
    Status = PSKeychainSyncGetStatus();
    objc_storeStrong(location, 0);
    v10 = Status;
    if (location[0])
    {
      oslog[0] = _BYLoggingFacility();
      if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 0;
        v5 = 0;
        if (_BYIsInternalInstall())
        {
          v3 = location[0];
        }

        else if (location[0])
        {
          domain = [location[0] domain];
          v7 = 1;
          v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [location[0] code]);
          v6 = v3;
          v5 = 1;
        }

        else
        {
          v3 = 0;
        }

        sub_100071CBC(buf, v3);
        _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "PSKeychainSyncGetStatus error %{public}@", buf, 0xCu);
        if (v5)
        {
        }

        if (v7)
        {
        }
      }

      objc_storeStrong(oslog, 0);
    }

    v13 = v10;
    objc_storeStrong(location, 0);
  }

  return v13;
}

- (BOOL)getKeychainSyncCircleExists:(BOOL *)exists inCircle:(BOOL *)circle error:(id *)error
{
  if (![(BYSecurityInterface *)self simulating])
  {
    return PSKeychainSyncGetCircleMembershipStatus() & 1;
  }

  if (exists)
  {
    *exists = [(BYSecurityInterface *)self simulateCircleExists];
  }

  if (circle)
  {
    *circle = [(BYSecurityInterface *)self simulateInCircle];
  }

  return 1;
}

- (id)primaryAccountDSID
{
  location[2] = self;
  location[1] = a2;
  v2 = +[ACAccountStore defaultStore];
  location[0] = [v2 aa_primaryAppleAccount];

  aa_personID = [location[0] aa_personID];
  v3 = aa_personID;
  objc_storeStrong(&aa_personID, 0);
  objc_storeStrong(location, 0);
  return v3;
}

- (BOOL)isHSA2EnabledForPrimaryAccount
{
  sharedInstance = [sub_100241D60() sharedInstance];
  v3 = [sharedInstance primaryAccountSecurityLevel] == 4;

  return v3;
}

- (BOOL)isICDPEnabledForPrimaryAccount
{
  selfCopy = self;
  v6[1] = a2;
  v2 = +[ACAccountStore defaultStore];
  v6[0] = [v2 aa_primaryAppleAccount];

  accountProperties = [v6[0] accountProperties];
  location = [accountProperties objectForKeyedSubscript:@"personID"];

  if (location)
  {
    v8 = [(BYSecurityInterface *)selfCopy isICDPEnabledForDSID:location];
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v6, 0);
  return v8 & 1;
}

- (BOOL)isICDPEnabledForDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  if ([(BYSecurityInterface *)selfCopy simulating])
  {
    v6 = 0;
  }

  else
  {
    v6 = [sub_100241D60() isICDPEnabledForDSID:location[0]] & 1;
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)isManateeAvailable
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  v2 = objc_alloc_init(sub_1002421E0());
  obj = 0;
  v3 = [v2 isManateeAvailable:&obj];
  objc_storeStrong(location, obj);

  v13 = v3 & 1;
  if (location[0])
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v7 = 0;
      if (_BYIsInternalInstall())
      {
        v4 = location[0];
      }

      else if (location[0])
      {
        domain = [location[0] domain];
        v9 = 1;
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [location[0] code]);
        v8 = v4;
        v7 = 1;
      }

      else
      {
        v4 = 0;
      }

      sub_10006AE18(buf, v4);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch manatee availability %@", buf, 0xCu);
      if (v7)
      {
      }

      if (v9)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
  }

  v5 = v13;
  objc_storeStrong(location, 0);
  return v5 & 1;
}

@end