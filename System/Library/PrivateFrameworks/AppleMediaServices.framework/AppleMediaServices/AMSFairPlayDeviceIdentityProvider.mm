@interface AMSFairPlayDeviceIdentityProvider
+ (void)initializeSessionWithBag:(id)bag url:(id)url buyParams:(id)params completionHandler:(id)handler;
+ (void)resetSessionWithBag:(id)bag url:(id)url buyParams:(id)params completionHandler:(id)handler;
@end

@implementation AMSFairPlayDeviceIdentityProvider

+ (void)initializeSessionWithBag:(id)bag url:(id)url buyParams:(id)params completionHandler:(id)handler
{
  handlerCopy = handler;
  paramsCopy = params;
  urlCopy = url;
  bagCopy = bag;
  v13 = [[AMSSendableBag alloc] initWithWrappedBag:bagCopy];

  v14 = +[AMSFairPlayDeviceIdentity shared];
  dictionaryForFPDI = [paramsCopy dictionaryForFPDI];

  v16 = [AMSFairPlayDeviceIdentityNetworkProvider alloc];
  v17 = +[AMSURLSession minimalSession];
  v18 = [(AMSFairPlayDeviceIdentityNetworkProvider *)v16 initWithSession:v17];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__AMSFairPlayDeviceIdentityProvider_initializeSessionWithBag_url_buyParams_completionHandler___block_invoke;
  v20[3] = &unk_1E73B7788;
  v21 = handlerCopy;
  v19 = handlerCopy;
  [v14 initializeSessionFor:urlCopy buyParams:dictionaryForFPDI networkProvider:v18 bag:v13 completionHandler:v20];
}

+ (void)resetSessionWithBag:(id)bag url:(id)url buyParams:(id)params completionHandler:(id)handler
{
  handlerCopy = handler;
  paramsCopy = params;
  urlCopy = url;
  bagCopy = bag;
  v13 = [[AMSSendableBag alloc] initWithWrappedBag:bagCopy];

  v14 = +[AMSFairPlayDeviceIdentity shared];
  dictionaryForFPDI = [paramsCopy dictionaryForFPDI];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__AMSFairPlayDeviceIdentityProvider_resetSessionWithBag_url_buyParams_completionHandler___block_invoke;
  v17[3] = &unk_1E73B4F78;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [v14 resetSessionFor:urlCopy buyParams:dictionaryForFPDI bag:v13 completionHandler:v17];
}

@end