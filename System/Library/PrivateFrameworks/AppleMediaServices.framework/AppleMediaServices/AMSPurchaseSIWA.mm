@interface AMSPurchaseSIWA
- (AMSPurchaseSIWA)initWithCoder:(id)coder;
- (AMSPurchaseSIWA)initWithPurchaseType:(int64_t)type buyParams:(id)params;
- (id)appProvidedData;
- (id)authenticationContextForRequest:(id)request;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSPurchaseSIWA

- (AMSPurchaseSIWA)initWithPurchaseType:(int64_t)type buyParams:(id)params
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = AMSPurchaseSIWA;
  v4 = [(AMSPurchase *)&v7 initWithPurchaseType:type buyParams:params];
  if (v4)
  {
    v8 = @"shouldReturnIsAtbWithPaymentAuth";
    v9[0] = @"true";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [(AMSPurchase *)v4 setAdditionalHeaders:v5];
  }

  return v4;
}

- (id)authenticationContextForRequest:(id)request
{
  requestCopy = request;
  authenticationContext = [(AMSPurchaseSIWA *)self authenticationContext];
  v6 = authenticationContext;
  if (authenticationContext)
  {
    v7 = authenticationContext;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = AMSPurchaseSIWA;
    v7 = [(AMSPurchase *)&v16 authenticationContextForRequest:requestCopy];
  }

  v8 = v7;

  appProvidedData = [(AMSPurchaseSIWA *)self appProvidedData];
  appProvidedData2 = [v8 appProvidedData];
  v11 = [appProvidedData2 mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;

  [v14 addEntriesFromDictionary:appProvidedData];
  [v8 setAppProvidedData:v14];

  return v8;
}

- (id)appProvidedData
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"subscriptionTokenGen";
  v5[0] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v15.receiver = self;
  v15.super_class = AMSPurchaseSIWA;
  v4 = [(AMSPurchase *)&v15 copyWithZone:zone];
  bundleID = [(AMSPurchaseSIWA *)self bundleID];
  v6 = [bundleID copy];
  v7 = v4[23];
  v4[23] = v6;

  serviceID = [(AMSPurchaseSIWA *)self serviceID];
  v9 = [serviceID copy];
  v10 = v4[24];
  v4[24] = v9;

  teamID = [(AMSPurchaseSIWA *)self teamID];
  v12 = [teamID copy];
  v13 = v4[25];
  v4[25] = v12;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = AMSPurchaseSIWA;
  coderCopy = coder;
  [(AMSPurchase *)&v9 encodeWithCoder:coderCopy];
  v5 = [(AMSPurchaseSIWA *)self authenticationContext:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"authenticationContext"];

  bundleID = [(AMSPurchaseSIWA *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  serviceID = [(AMSPurchaseSIWA *)self serviceID];
  [coderCopy encodeObject:serviceID forKey:@"serviceID"];

  teamID = [(AMSPurchaseSIWA *)self teamID];
  [coderCopy encodeObject:teamID forKey:@"teamID"];
}

- (AMSPurchaseSIWA)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = AMSPurchaseSIWA;
  v5 = [(AMSPurchase *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticationContext"];
    authenticationContext = v5->_authenticationContext;
    v5->_authenticationContext = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceID"];
    serviceID = v5->_serviceID;
    v5->_serviceID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"teamID"];
    teamID = v5->_teamID;
    v5->_teamID = v12;
  }

  return v5;
}

@end