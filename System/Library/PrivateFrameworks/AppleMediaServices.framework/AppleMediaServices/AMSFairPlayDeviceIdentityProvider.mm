@interface AMSFairPlayDeviceIdentityProvider
+ (void)initializeSessionWithBag:(id)a3 url:(id)a4 buyParams:(id)a5 completionHandler:(id)a6;
+ (void)resetSessionWithBag:(id)a3 url:(id)a4 buyParams:(id)a5 completionHandler:(id)a6;
@end

@implementation AMSFairPlayDeviceIdentityProvider

+ (void)initializeSessionWithBag:(id)a3 url:(id)a4 buyParams:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[AMSSendableBag alloc] initWithWrappedBag:v12];

  v14 = +[AMSFairPlayDeviceIdentity shared];
  v15 = [v10 dictionaryForFPDI];

  v16 = [AMSFairPlayDeviceIdentityNetworkProvider alloc];
  v17 = +[AMSURLSession minimalSession];
  v18 = [(AMSFairPlayDeviceIdentityNetworkProvider *)v16 initWithSession:v17];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__AMSFairPlayDeviceIdentityProvider_initializeSessionWithBag_url_buyParams_completionHandler___block_invoke;
  v20[3] = &unk_1E73B7788;
  v21 = v9;
  v19 = v9;
  [v14 initializeSessionFor:v11 buyParams:v15 networkProvider:v18 bag:v13 completionHandler:v20];
}

+ (void)resetSessionWithBag:(id)a3 url:(id)a4 buyParams:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[AMSSendableBag alloc] initWithWrappedBag:v12];

  v14 = +[AMSFairPlayDeviceIdentity shared];
  v15 = [v10 dictionaryForFPDI];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__AMSFairPlayDeviceIdentityProvider_resetSessionWithBag_url_buyParams_completionHandler___block_invoke;
  v17[3] = &unk_1E73B4F78;
  v18 = v9;
  v16 = v9;
  [v14 resetSessionFor:v11 buyParams:v15 bag:v13 completionHandler:v17];
}

@end