@interface CLBBTimeFreqTransferCallbackAssertion
+ (id)newAssertionForBundle:(id)bundle withReason:(id)reason withCallbackQueue:(id)queue andBlock:(id)block;
+ (id)newAssertionForBundleIdentifier:(id)identifier withReason:(id)reason withCallbackQueue:(id)queue andBlock:(id)block;
- (CLBBTimeFreqTransferCallbackAssertion)initWithRegistrationMessageName:(const char *)name messageDictionary:(id)dictionary dispatchQueue:(id)queue codeBlock:(id)block;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CLBBTimeFreqTransferCallbackAssertion

- (CLBBTimeFreqTransferCallbackAssertion)initWithRegistrationMessageName:(const char *)name messageDictionary:(id)dictionary dispatchQueue:(id)queue codeBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = CLBBTimeFreqTransferCallbackAssertion;
  if ([(CLBBTimeFreqTransferCallbackAssertion *)&v7 init])
  {
    operator new();
  }

  return 0;
}

- (void)invalidate
{
  fInternal = self->fInternal;
  if (fInternal)
  {
    sub_19B8B543C(fInternal);
  }
}

- (void)dealloc
{
  fInternal = self->fInternal;
  if (fInternal)
  {
    sub_19B8B543C(self->fInternal);
    MEMORY[0x19EAE98C0](fInternal, 0xA0C40114AFA65);
  }

  self->fInternal = 0;
  v4.receiver = self;
  v4.super_class = CLBBTimeFreqTransferCallbackAssertion;
  [(CLBBTimeFreqTransferCallbackAssertion *)&v4 dealloc];
}

+ (id)newAssertionForBundleIdentifier:(id)identifier withReason:(id)reason withCallbackQueue:(id)queue andBlock:(id)block
{
  v9 = [identifier copy];
  v10 = [reason copy];

  return sub_19B96068C(v9, &stru_1F0E6F140, v10, queue, block);
}

+ (id)newAssertionForBundle:(id)bundle withReason:(id)reason withCallbackQueue:(id)queue andBlock:(id)block
{
  v9 = [objc_msgSend(bundle "bundlePath")];
  v10 = [reason copy];

  return sub_19B96068C(&stru_1F0E6F140, v9, v10, queue, block);
}

@end