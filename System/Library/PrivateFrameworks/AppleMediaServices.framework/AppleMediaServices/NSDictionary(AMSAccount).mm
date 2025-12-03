@interface NSDictionary(AMSAccount)
- (id)ams_DSID;
- (id)ams_accountFlags;
- (id)ams_altDSID;
- (id)ams_creditsString;
- (id)ams_firstName;
- (id)ams_lastName;
- (id)ams_privacyAcknowledgement;
- (id)ams_secureToken;
- (id)ams_username;
- (uint64_t)ams_errorCode;
- (uint64_t)ams_isManagedAppleID;
@end

@implementation NSDictionary(AMSAccount)

- (id)ams_accountFlags
{
  v1 = [self objectForKeyedSubscript:@"accountFlags"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)ams_username
{
  v2 = [self valueForKeyPath:@"accountInfo.appleId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;

    if (v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v4 = [self valueForKeyPath:@"accountInfo.accountName"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_9:
    v5 = [self valueForKeyPath:@"personInfo.acAccountName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_13;
  }

  v3 = v4;

  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_13:

  return v3;
}

- (id)ams_altDSID
{
  v1 = [self objectForKeyedSubscript:@"altDsPersonId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)ams_creditsString
{
  v1 = [self objectForKeyedSubscript:@"creditDisplay"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)ams_DSID
{
  v1 = [self objectForKeyedSubscript:@"dsPersonId"];
  if (objc_opt_respondsToSelector())
  {
    v2 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v1, "longLongValue")}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)ams_errorCode
{
  v1 = [self objectForKeyedSubscript:@"failureType"];
  if (objc_opt_respondsToSelector())
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)ams_firstName
{
  v1 = [self valueForKeyPath:@"accountInfo.address.firstName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)ams_isManagedAppleID
{
  v1 = [self objectForKeyedSubscript:@"isManagedStudent"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)ams_lastName
{
  v1 = [self valueForKeyPath:@"accountInfo.address.lastName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)ams_privacyAcknowledgement
{
  v1 = [self objectForKeyedSubscript:@"privacyAcknowledgement"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)ams_secureToken
{
  v1 = [self objectForKeyedSubscript:@"passwordToken"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end