@interface AMSAuthenticateRequest
- (AMSAuthenticateRequest)initWithAccount:(id)a3 options:(id)a4;
- (AMSAuthenticateRequest)initWithCoder:(id)a3;
- (AMSAuthenticateRequest)initWithDSID:(id)a3 altDSID:(id)a4 username:(id)a5 options:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSAuthenticateRequest

- (AMSAuthenticateRequest)initWithAccount:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSAuthenticateRequest;
  v9 = [(AMSAuthenticateRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_options, a4);
  }

  return v10;
}

- (AMSAuthenticateRequest)initWithDSID:(id)a3 altDSID:(id)a4 username:(id)a5 options:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v15 = [v14 ams_iTunesAccountWithAltDSID:v11 DSID:v10 username:v12];

  if (!v15)
  {
    v16 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v17 = [v16 _ams_accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959930] error:0];

    v15 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v17];
    [v15 setUsername:v12];
    [v15 ams_setDSID:v10];
    [v15 ams_setAltDSID:v11];
  }

  v18 = [(AMSAuthenticateRequest *)self initWithAccount:v15 options:v13];

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(AMSAuthenticateRequest *)self account];

  if (v4)
  {
    v5 = [(AMSAuthenticateRequest *)self account];
    [v13 encodeObject:v5 forKey:@"kCodingKeyAccount"];
  }

  if ([(AMSAuthenticateRequest *)self isServerRequested])
  {
    [v13 encodeBool:-[AMSAuthenticateRequest isServerRequested](self forKey:{"isServerRequested"), @"kCodingKeyIsServerRequested"}];
  }

  v6 = [(AMSAuthenticateRequest *)self logKey];

  if (v6)
  {
    v7 = [(AMSAuthenticateRequest *)self logKey];
    [v13 encodeObject:v7 forKey:@"kCodingKeyLogKey"];
  }

  v8 = [(AMSAuthenticateRequest *)self options];

  if (v8)
  {
    v9 = [(AMSAuthenticateRequest *)self options];
    [v13 encodeObject:v9 forKey:@"kCodingKeyOptions"];
  }

  v10 = [(AMSAuthenticateRequest *)self userInfo];

  v11 = v13;
  if (v10)
  {
    v12 = [(AMSAuthenticateRequest *)self userInfo];
    [v13 encodeObject:v12 forKey:@"kCodingKeyUserInfo"];

    v11 = v13;
  }
}

- (AMSAuthenticateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = AMSAuthenticateRequest;
  v5 = [(AMSAuthenticateRequest *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAccount"];
    account = v5->_account;
    v5->_account = v6;

    v5->_isServerRequested = [v4 decodeBoolForKey:@"kCodingKeyIsServerRequested"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyLogKey"];
    logKey = v5->_logKey;
    v5->_logKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyOptions"];
    options = v5->_options;
    v5->_options = v10;

    v12 = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"kCodingKeyUserInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v13;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSAuthenticateRequest *)self account];
  [v3 ams_setNullableObject:v4 forKey:@"account"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSAuthenticateRequest isServerRequested](self, "isServerRequested")}];
  [v3 ams_setNullableObject:v5 forKey:@"server requested"];

  v6 = [(AMSAuthenticateRequest *)self logKey];
  [v3 ams_setNullableObject:v6 forKey:@"logKey"];

  v7 = [(AMSAuthenticateRequest *)self options];
  [v3 ams_setNullableObject:v7 forKey:@"options"];

  v8 = [(AMSAuthenticateRequest *)self userInfo];
  [v3 ams_setNullableObject:v8 forKey:@"userInfo"];

  v9 = [self ams_generateDescriptionWithSubObjects:v3];

  return v9;
}

@end