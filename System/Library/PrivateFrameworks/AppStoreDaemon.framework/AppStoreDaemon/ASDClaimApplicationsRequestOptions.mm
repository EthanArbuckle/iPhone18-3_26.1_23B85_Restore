@interface ASDClaimApplicationsRequestOptions
- (ASDClaimApplicationsRequestOptions)initWithBundleIdentifiers:(id)a3;
- (ASDClaimApplicationsRequestOptions)initWithClaimStyle:(int64_t)a3;
- (ASDClaimApplicationsRequestOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDClaimApplicationsRequestOptions

- (ASDClaimApplicationsRequestOptions)initWithClaimStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ASDClaimApplicationsRequestOptions;
  result = [(ASDClaimApplicationsRequestOptions *)&v5 init];
  if (result)
  {
    result->_claimStyle = a3;
  }

  return result;
}

- (ASDClaimApplicationsRequestOptions)initWithBundleIdentifiers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASDClaimApplicationsRequestOptions;
  v6 = [(ASDClaimApplicationsRequestOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifiers, a3);
    v7->_claimStyle = 2;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDClaimApplicationsRequestOptions allocWithZone:](ASDClaimApplicationsRequestOptions init];
  v6 = [(NSNumber *)self->_accountID copyWithZone:a3];
  accountID = v5->_accountID;
  v5->_accountID = v6;

  v8 = [(NSArray *)self->_bundleIdentifiers copyWithZone:a3];
  bundleIdentifiers = v5->_bundleIdentifiers;
  v5->_bundleIdentifiers = v8;

  v5->_claimStyle = self->_claimStyle;
  v10 = [(NSData *)self->_clientAuditTokenData copyWithZone:a3];
  clientAuditTokenData = v5->_clientAuditTokenData;
  v5->_clientAuditTokenData = v10;

  v5->_establishesActiveAccount = self->_establishesActiveAccount;
  v12 = [(NSDictionary *)self->_httpHeaders copyWithZone:a3];
  httpHeaders = v5->_httpHeaders;
  v5->_httpHeaders = v12;

  v5->_ignoresPreviousClaimAttempts = self->_ignoresPreviousClaimAttempts;
  v14 = [(NSNumber *)self->_purchaseID copyWithZone:a3];
  purchaseID = v5->_purchaseID;
  v5->_purchaseID = v14;

  v5->_suppressErrorDialogs = self->_suppressErrorDialogs;
  return v5;
}

- (ASDClaimApplicationsRequestOptions)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ASDClaimApplicationsRequestOptions;
  v5 = [(ASDRequestOptions *)&v23 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIDKey"];
    accountID = v5->_accountID;
    v5->_accountID = v6;

    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"bundleIdentifiersKey"];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"claimStyleKey"];
    v5->_claimStyle = [v12 integerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientAuditTokenDataKey"];
    clientAuditTokenData = v5->_clientAuditTokenData;
    v5->_clientAuditTokenData = v13;

    v5->_establishesActiveAccount = [v4 decodeBoolForKey:@"establishesActiveAccountKey"];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v16 = [MEMORY[0x1E695DFD8] setWithArray:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"httpHeadersKey"];
    httpHeaders = v5->_httpHeaders;
    v5->_httpHeaders = v17;

    v5->_ignoresPreviousClaimAttempts = [v4 decodeBoolForKey:@"ignoresPreviousClaimAttempsKey"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchaseIDKey"];
    purchaseID = v5->_purchaseID;
    v5->_purchaseID = v19;

    v5->_suppressErrorDialogs = [v4 decodeBoolForKey:@"supressErrorDialogsKey"];
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(ASDClaimApplicationsRequestOptions *)self accountID];
  [v10 encodeObject:v4 forKey:@"accountIDKey"];

  v5 = [(ASDClaimApplicationsRequestOptions *)self bundleIdentifiers];
  [v10 encodeObject:v5 forKey:@"bundleIdentifiersKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_claimStyle];
  [v10 encodeObject:v6 forKey:@"claimStyleKey"];

  v7 = [(ASDClaimApplicationsRequestOptions *)self clientAuditTokenData];
  [v10 encodeObject:v7 forKey:@"clientAuditTokenDataKey"];

  [v10 encodeBool:-[ASDClaimApplicationsRequestOptions establishesActiveAccount](self forKey:{"establishesActiveAccount"), @"establishesActiveAccountKey"}];
  v8 = [(ASDClaimApplicationsRequestOptions *)self httpHeaders];
  [v10 encodeObject:v8 forKey:@"httpHeadersKey"];

  [v10 encodeBool:-[ASDClaimApplicationsRequestOptions ignoresPreviousClaimAttempts](self forKey:{"ignoresPreviousClaimAttempts"), @"ignoresPreviousClaimAttempsKey"}];
  v9 = [(ASDClaimApplicationsRequestOptions *)self purchaseID];
  [v10 encodeObject:v9 forKey:@"purchaseIDKey"];

  [v10 encodeBool:-[ASDClaimApplicationsRequestOptions suppressErrorDialogs](self forKey:{"suppressErrorDialogs"), @"supressErrorDialogsKey"}];
}

@end