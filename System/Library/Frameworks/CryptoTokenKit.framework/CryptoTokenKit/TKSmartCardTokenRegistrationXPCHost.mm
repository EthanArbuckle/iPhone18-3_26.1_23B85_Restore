@interface TKSmartCardTokenRegistrationXPCHost
- (TKSmartCardTokenRegistrationXPCHost)initWithSmartCardTokenRegistrationRegistry:(id)registry;
- (void)registerSmartCardWithTokenID:(id)d promptMessage:(id)message callerBundleID:(id)iD completion:(id)completion;
- (void)registeredSmartCardsWithCompletion:(id)completion;
- (void)unregisterSmartCardWithTokenID:(id)d callerBundleID:(id)iD completion:(id)completion;
@end

@implementation TKSmartCardTokenRegistrationXPCHost

- (TKSmartCardTokenRegistrationXPCHost)initWithSmartCardTokenRegistrationRegistry:(id)registry
{
  registryCopy = registry;
  v8.receiver = self;
  v8.super_class = TKSmartCardTokenRegistrationXPCHost;
  v5 = [(TKSmartCardTokenRegistrationXPCHost *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_smartCardTokenRegistrationRegistry, registryCopy);
  }

  return v6;
}

- (void)registerSmartCardWithTokenID:(id)d promptMessage:(id)message callerBundleID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  messageCopy = message;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_smartCardTokenRegistrationRegistry);
  v17 = 0;
  v15 = [WeakRetained registerSmartCardWithTokenID:dCopy promptMessage:messageCopy callerBundleID:iDCopy error:&v17];

  v16 = v17;
  completionCopy[2](completionCopy, v15, v16);
}

- (void)unregisterSmartCardWithTokenID:(id)d callerBundleID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_smartCardTokenRegistrationRegistry);
  v14 = 0;
  v12 = [WeakRetained unregisterSmartCardWithTokenID:dCopy callerBundleID:iDCopy error:&v14];

  v13 = v14;
  completionCopy[2](completionCopy, v12, v13);
}

- (void)registeredSmartCardsWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_smartCardTokenRegistrationRegistry);
  registeredSmartCardTokens = [WeakRetained registeredSmartCardTokens];

  completionCopy[2](completionCopy, registeredSmartCardTokens);
}

@end