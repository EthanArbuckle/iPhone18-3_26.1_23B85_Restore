@interface AMSPurchaseSIWA
- (AMSPurchaseSIWA)initWithCoder:(id)a3;
- (AMSPurchaseSIWA)initWithPurchaseType:(int64_t)a3 buyParams:(id)a4;
- (id)appProvidedData;
- (id)authenticationContextForRequest:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSPurchaseSIWA

- (AMSPurchaseSIWA)initWithPurchaseType:(int64_t)a3 buyParams:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = AMSPurchaseSIWA;
  v4 = [(AMSPurchase *)&v7 initWithPurchaseType:a3 buyParams:a4];
  if (v4)
  {
    v8 = @"shouldReturnIsAtbWithPaymentAuth";
    v9[0] = @"true";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [(AMSPurchase *)v4 setAdditionalHeaders:v5];
  }

  return v4;
}

- (id)authenticationContextForRequest:(id)a3
{
  v4 = a3;
  v5 = [(AMSPurchaseSIWA *)self authenticationContext];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = AMSPurchaseSIWA;
    v7 = [(AMSPurchase *)&v16 authenticationContextForRequest:v4];
  }

  v8 = v7;

  v9 = [(AMSPurchaseSIWA *)self appProvidedData];
  v10 = [v8 appProvidedData];
  v11 = [v10 mutableCopy];
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

  [v14 addEntriesFromDictionary:v9];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = AMSPurchaseSIWA;
  v4 = [(AMSPurchase *)&v15 copyWithZone:a3];
  v5 = [(AMSPurchaseSIWA *)self bundleID];
  v6 = [v5 copy];
  v7 = v4[23];
  v4[23] = v6;

  v8 = [(AMSPurchaseSIWA *)self serviceID];
  v9 = [v8 copy];
  v10 = v4[24];
  v4[24] = v9;

  v11 = [(AMSPurchaseSIWA *)self teamID];
  v12 = [v11 copy];
  v13 = v4[25];
  v4[25] = v12;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = AMSPurchaseSIWA;
  v4 = a3;
  [(AMSPurchase *)&v9 encodeWithCoder:v4];
  v5 = [(AMSPurchaseSIWA *)self authenticationContext:v9.receiver];
  [v4 encodeObject:v5 forKey:@"authenticationContext"];

  v6 = [(AMSPurchaseSIWA *)self bundleID];
  [v4 encodeObject:v6 forKey:@"bundleID"];

  v7 = [(AMSPurchaseSIWA *)self serviceID];
  [v4 encodeObject:v7 forKey:@"serviceID"];

  v8 = [(AMSPurchaseSIWA *)self teamID];
  [v4 encodeObject:v8 forKey:@"teamID"];
}

- (AMSPurchaseSIWA)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AMSPurchaseSIWA;
  v5 = [(AMSPurchase *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticationContext"];
    authenticationContext = v5->_authenticationContext;
    v5->_authenticationContext = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceID"];
    serviceID = v5->_serviceID;
    v5->_serviceID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"teamID"];
    teamID = v5->_teamID;
    v5->_teamID = v12;
  }

  return v5;
}

@end