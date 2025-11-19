@interface TKSmartCardTokenRegistrationXPCHost
- (TKSmartCardTokenRegistrationXPCHost)initWithSmartCardTokenRegistrationRegistry:(id)a3;
- (void)registerSmartCardWithTokenID:(id)a3 promptMessage:(id)a4 callerBundleID:(id)a5 completion:(id)a6;
- (void)registeredSmartCardsWithCompletion:(id)a3;
- (void)unregisterSmartCardWithTokenID:(id)a3 callerBundleID:(id)a4 completion:(id)a5;
@end

@implementation TKSmartCardTokenRegistrationXPCHost

- (TKSmartCardTokenRegistrationXPCHost)initWithSmartCardTokenRegistrationRegistry:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TKSmartCardTokenRegistrationXPCHost;
  v5 = [(TKSmartCardTokenRegistrationXPCHost *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_smartCardTokenRegistrationRegistry, v4);
  }

  return v6;
}

- (void)registerSmartCardWithTokenID:(id)a3 promptMessage:(id)a4 callerBundleID:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_smartCardTokenRegistrationRegistry);
  v17 = 0;
  v15 = [WeakRetained registerSmartCardWithTokenID:v13 promptMessage:v12 callerBundleID:v11 error:&v17];

  v16 = v17;
  v10[2](v10, v15, v16);
}

- (void)unregisterSmartCardWithTokenID:(id)a3 callerBundleID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_smartCardTokenRegistrationRegistry);
  v14 = 0;
  v12 = [WeakRetained unregisterSmartCardWithTokenID:v10 callerBundleID:v9 error:&v14];

  v13 = v14;
  v8[2](v8, v12, v13);
}

- (void)registeredSmartCardsWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_smartCardTokenRegistrationRegistry);
  v6 = [WeakRetained registeredSmartCardTokens];

  v4[2](v4, v6);
}

@end