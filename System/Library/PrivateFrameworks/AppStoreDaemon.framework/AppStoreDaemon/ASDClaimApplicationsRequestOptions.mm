@interface ASDClaimApplicationsRequestOptions
- (ASDClaimApplicationsRequestOptions)initWithBundleIdentifiers:(id)identifiers;
- (ASDClaimApplicationsRequestOptions)initWithClaimStyle:(int64_t)style;
- (ASDClaimApplicationsRequestOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDClaimApplicationsRequestOptions

- (ASDClaimApplicationsRequestOptions)initWithClaimStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = ASDClaimApplicationsRequestOptions;
  result = [(ASDClaimApplicationsRequestOptions *)&v5 init];
  if (result)
  {
    result->_claimStyle = style;
  }

  return result;
}

- (ASDClaimApplicationsRequestOptions)initWithBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = ASDClaimApplicationsRequestOptions;
  v6 = [(ASDClaimApplicationsRequestOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifiers, identifiers);
    v7->_claimStyle = 2;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDClaimApplicationsRequestOptions allocWithZone:](ASDClaimApplicationsRequestOptions init];
  v6 = [(NSNumber *)self->_accountID copyWithZone:zone];
  accountID = v5->_accountID;
  v5->_accountID = v6;

  v8 = [(NSArray *)self->_bundleIdentifiers copyWithZone:zone];
  bundleIdentifiers = v5->_bundleIdentifiers;
  v5->_bundleIdentifiers = v8;

  v5->_claimStyle = self->_claimStyle;
  v10 = [(NSData *)self->_clientAuditTokenData copyWithZone:zone];
  clientAuditTokenData = v5->_clientAuditTokenData;
  v5->_clientAuditTokenData = v10;

  v5->_establishesActiveAccount = self->_establishesActiveAccount;
  v12 = [(NSDictionary *)self->_httpHeaders copyWithZone:zone];
  httpHeaders = v5->_httpHeaders;
  v5->_httpHeaders = v12;

  v5->_ignoresPreviousClaimAttempts = self->_ignoresPreviousClaimAttempts;
  v14 = [(NSNumber *)self->_purchaseID copyWithZone:zone];
  purchaseID = v5->_purchaseID;
  v5->_purchaseID = v14;

  v5->_suppressErrorDialogs = self->_suppressErrorDialogs;
  return v5;
}

- (ASDClaimApplicationsRequestOptions)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = ASDClaimApplicationsRequestOptions;
  v5 = [(ASDRequestOptions *)&v23 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIDKey"];
    accountID = v5->_accountID;
    v5->_accountID = v6;

    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"bundleIdentifiersKey"];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"claimStyleKey"];
    v5->_claimStyle = [v12 integerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientAuditTokenDataKey"];
    clientAuditTokenData = v5->_clientAuditTokenData;
    v5->_clientAuditTokenData = v13;

    v5->_establishesActiveAccount = [coderCopy decodeBoolForKey:@"establishesActiveAccountKey"];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v16 = [MEMORY[0x1E695DFD8] setWithArray:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"httpHeadersKey"];
    httpHeaders = v5->_httpHeaders;
    v5->_httpHeaders = v17;

    v5->_ignoresPreviousClaimAttempts = [coderCopy decodeBoolForKey:@"ignoresPreviousClaimAttempsKey"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchaseIDKey"];
    purchaseID = v5->_purchaseID;
    v5->_purchaseID = v19;

    v5->_suppressErrorDialogs = [coderCopy decodeBoolForKey:@"supressErrorDialogsKey"];
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountID = [(ASDClaimApplicationsRequestOptions *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountIDKey"];

  bundleIdentifiers = [(ASDClaimApplicationsRequestOptions *)self bundleIdentifiers];
  [coderCopy encodeObject:bundleIdentifiers forKey:@"bundleIdentifiersKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_claimStyle];
  [coderCopy encodeObject:v6 forKey:@"claimStyleKey"];

  clientAuditTokenData = [(ASDClaimApplicationsRequestOptions *)self clientAuditTokenData];
  [coderCopy encodeObject:clientAuditTokenData forKey:@"clientAuditTokenDataKey"];

  [coderCopy encodeBool:-[ASDClaimApplicationsRequestOptions establishesActiveAccount](self forKey:{"establishesActiveAccount"), @"establishesActiveAccountKey"}];
  httpHeaders = [(ASDClaimApplicationsRequestOptions *)self httpHeaders];
  [coderCopy encodeObject:httpHeaders forKey:@"httpHeadersKey"];

  [coderCopy encodeBool:-[ASDClaimApplicationsRequestOptions ignoresPreviousClaimAttempts](self forKey:{"ignoresPreviousClaimAttempts"), @"ignoresPreviousClaimAttempsKey"}];
  purchaseID = [(ASDClaimApplicationsRequestOptions *)self purchaseID];
  [coderCopy encodeObject:purchaseID forKey:@"purchaseIDKey"];

  [coderCopy encodeBool:-[ASDClaimApplicationsRequestOptions suppressErrorDialogs](self forKey:{"suppressErrorDialogs"), @"supressErrorDialogsKey"}];
}

@end