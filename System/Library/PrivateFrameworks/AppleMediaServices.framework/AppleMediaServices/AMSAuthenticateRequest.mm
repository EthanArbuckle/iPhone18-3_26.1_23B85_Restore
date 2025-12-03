@interface AMSAuthenticateRequest
- (AMSAuthenticateRequest)initWithAccount:(id)account options:(id)options;
- (AMSAuthenticateRequest)initWithCoder:(id)coder;
- (AMSAuthenticateRequest)initWithDSID:(id)d altDSID:(id)iD username:(id)username options:(id)options;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSAuthenticateRequest

- (AMSAuthenticateRequest)initWithAccount:(id)account options:(id)options
{
  accountCopy = account;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = AMSAuthenticateRequest;
  v9 = [(AMSAuthenticateRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_options, options);
  }

  return v10;
}

- (AMSAuthenticateRequest)initWithDSID:(id)d altDSID:(id)iD username:(id)username options:(id)options
{
  dCopy = d;
  iDCopy = iD;
  usernameCopy = username;
  optionsCopy = options;
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v15 = [ams_sharedAccountStore ams_iTunesAccountWithAltDSID:iDCopy DSID:dCopy username:usernameCopy];

  if (!v15)
  {
    ams_sharedAccountStore2 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v17 = [ams_sharedAccountStore2 _ams_accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959930] error:0];

    v15 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v17];
    [v15 setUsername:usernameCopy];
    [v15 ams_setDSID:dCopy];
    [v15 ams_setAltDSID:iDCopy];
  }

  v18 = [(AMSAuthenticateRequest *)self initWithAccount:v15 options:optionsCopy];

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  account = [(AMSAuthenticateRequest *)self account];

  if (account)
  {
    account2 = [(AMSAuthenticateRequest *)self account];
    [coderCopy encodeObject:account2 forKey:@"kCodingKeyAccount"];
  }

  if ([(AMSAuthenticateRequest *)self isServerRequested])
  {
    [coderCopy encodeBool:-[AMSAuthenticateRequest isServerRequested](self forKey:{"isServerRequested"), @"kCodingKeyIsServerRequested"}];
  }

  logKey = [(AMSAuthenticateRequest *)self logKey];

  if (logKey)
  {
    logKey2 = [(AMSAuthenticateRequest *)self logKey];
    [coderCopy encodeObject:logKey2 forKey:@"kCodingKeyLogKey"];
  }

  options = [(AMSAuthenticateRequest *)self options];

  if (options)
  {
    options2 = [(AMSAuthenticateRequest *)self options];
    [coderCopy encodeObject:options2 forKey:@"kCodingKeyOptions"];
  }

  userInfo = [(AMSAuthenticateRequest *)self userInfo];

  v11 = coderCopy;
  if (userInfo)
  {
    userInfo2 = [(AMSAuthenticateRequest *)self userInfo];
    [coderCopy encodeObject:userInfo2 forKey:@"kCodingKeyUserInfo"];

    v11 = coderCopy;
  }
}

- (AMSAuthenticateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = AMSAuthenticateRequest;
  v5 = [(AMSAuthenticateRequest *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAccount"];
    account = v5->_account;
    v5->_account = v6;

    v5->_isServerRequested = [coderCopy decodeBoolForKey:@"kCodingKeyIsServerRequested"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyLogKey"];
    logKey = v5->_logKey;
    v5->_logKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyOptions"];
    options = v5->_options;
    v5->_options = v10;

    ams_PLISTClasses = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
    v13 = [coderCopy decodeObjectOfClasses:ams_PLISTClasses forKey:@"kCodingKeyUserInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v13;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  account = [(AMSAuthenticateRequest *)self account];
  [v3 ams_setNullableObject:account forKey:@"account"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSAuthenticateRequest isServerRequested](self, "isServerRequested")}];
  [v3 ams_setNullableObject:v5 forKey:@"server requested"];

  logKey = [(AMSAuthenticateRequest *)self logKey];
  [v3 ams_setNullableObject:logKey forKey:@"logKey"];

  options = [(AMSAuthenticateRequest *)self options];
  [v3 ams_setNullableObject:options forKey:@"options"];

  userInfo = [(AMSAuthenticateRequest *)self userInfo];
  [v3 ams_setNullableObject:userInfo forKey:@"userInfo"];

  v9 = [self ams_generateDescriptionWithSubObjects:v3];

  return v9;
}

@end