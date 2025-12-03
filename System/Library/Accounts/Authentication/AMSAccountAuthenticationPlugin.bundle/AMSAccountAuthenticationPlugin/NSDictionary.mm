@interface NSDictionary
- (BOOL)ams_isManagedAppleID;
- (NSDictionary)ams_accountFlags;
- (NSDictionary)ams_privacyAcknowledgement;
- (NSNumber)ams_DSID;
- (NSString)ams_altDSID;
- (NSString)ams_creditsString;
- (NSString)ams_firstName;
- (NSString)ams_lastName;
- (NSString)ams_secureToken;
- (NSString)ams_username;
- (int64_t)ams_errorCode;
@end

@implementation NSDictionary

- (NSDictionary)ams_accountFlags
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"accountFlags"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)ams_username
{
  v3 = [(NSDictionary *)self valueForKeyPath:@"accountInfo.appleId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = [(NSDictionary *)self valueForKeyPath:@"accountInfo.accountName"];
    objc_opt_class();
    v4 = (objc_opt_isKindOfClass() & 1) != 0 ? v5 : 0;

    if (!v4)
    {
      v6 = [(NSDictionary *)self valueForKeyPath:@"personInfo.acAccountName"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v6;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (NSString)ams_altDSID
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"altDsPersonId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)ams_creditsString
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"creditDisplay"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSNumber)ams_DSID
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"dsPersonId"];
  if (objc_opt_respondsToSelector())
  {
    v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v2 longLongValue]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)ams_errorCode
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"failureType"];
  if (objc_opt_respondsToSelector())
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (NSString)ams_firstName
{
  v2 = [(NSDictionary *)self valueForKeyPath:@"accountInfo.address.firstName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)ams_isManagedAppleID
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"isManagedStudent"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSString)ams_lastName
{
  v2 = [(NSDictionary *)self valueForKeyPath:@"accountInfo.address.lastName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDictionary)ams_privacyAcknowledgement
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"privacyAcknowledgement"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)ams_secureToken
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"passwordToken"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end