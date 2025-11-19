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
  v1 = [a1 objectForKeyedSubscript:@"accountFlags"];
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
  v2 = [a1 valueForKeyPath:@"accountInfo.appleId"];
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

  v4 = [a1 valueForKeyPath:@"accountInfo.accountName"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_9:
    v5 = [a1 valueForKeyPath:@"personInfo.acAccountName"];
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
  v1 = [a1 objectForKeyedSubscript:@"altDsPersonId"];
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
  v1 = [a1 objectForKeyedSubscript:@"creditDisplay"];
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
  v1 = [a1 objectForKeyedSubscript:@"dsPersonId"];
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
  v1 = [a1 objectForKeyedSubscript:@"failureType"];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 integerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)ams_firstName
{
  v1 = [a1 valueForKeyPath:@"accountInfo.address.firstName"];
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
  v1 = [a1 objectForKeyedSubscript:@"isManagedStudent"];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)ams_lastName
{
  v1 = [a1 valueForKeyPath:@"accountInfo.address.lastName"];
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
  v1 = [a1 objectForKeyedSubscript:@"privacyAcknowledgement"];
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
  v1 = [a1 objectForKeyedSubscript:@"passwordToken"];
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