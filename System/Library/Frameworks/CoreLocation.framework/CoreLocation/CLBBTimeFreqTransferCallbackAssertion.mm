@interface CLBBTimeFreqTransferCallbackAssertion
+ (id)newAssertionForBundle:(id)a3 withReason:(id)a4 withCallbackQueue:(id)a5 andBlock:(id)a6;
+ (id)newAssertionForBundleIdentifier:(id)a3 withReason:(id)a4 withCallbackQueue:(id)a5 andBlock:(id)a6;
- (CLBBTimeFreqTransferCallbackAssertion)initWithRegistrationMessageName:(const char *)a3 messageDictionary:(id)a4 dispatchQueue:(id)a5 codeBlock:(id)a6;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CLBBTimeFreqTransferCallbackAssertion

- (CLBBTimeFreqTransferCallbackAssertion)initWithRegistrationMessageName:(const char *)a3 messageDictionary:(id)a4 dispatchQueue:(id)a5 codeBlock:(id)a6
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

+ (id)newAssertionForBundleIdentifier:(id)a3 withReason:(id)a4 withCallbackQueue:(id)a5 andBlock:(id)a6
{
  v9 = [a3 copy];
  v10 = [a4 copy];

  return sub_19B96068C(v9, &stru_1F0E6F140, v10, a5, a6);
}

+ (id)newAssertionForBundle:(id)a3 withReason:(id)a4 withCallbackQueue:(id)a5 andBlock:(id)a6
{
  v9 = [objc_msgSend(a3 "bundlePath")];
  v10 = [a4 copy];

  return sub_19B96068C(&stru_1F0E6F140, v9, v10, a5, a6);
}

@end