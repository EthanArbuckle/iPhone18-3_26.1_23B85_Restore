@interface CLGnssExtensionsClient
+ (id)newAssertionForBundle:(id)a3 withReason:(id)a4 withCallbackQueue:(id)a5 andBlock:(id)a6;
- (CLGnssExtensionsClient)initWithRegistrationMessageName:(const char *)a3 messageDictionary:(id)a4 dispatchQueue:(id)a5 codeBlock:(id)a6;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CLGnssExtensionsClient

- (CLGnssExtensionsClient)initWithRegistrationMessageName:(const char *)a3 messageDictionary:(id)a4 dispatchQueue:(id)a5 codeBlock:(id)a6
{
  v7.receiver = self;
  v7.super_class = CLGnssExtensionsClient;
  if ([(CLGnssExtensionsClient *)&v7 init])
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
  v4.super_class = CLGnssExtensionsClient;
  [(CLGnssExtensionsClient *)&v4 dealloc];
}

+ (id)newAssertionForBundle:(id)a3 withReason:(id)a4 withCallbackQueue:(id)a5 andBlock:(id)a6
{
  v9 = [a3 bundlePath];

  return sub_19B96A90C(&stru_1F0E6F140, v9, a4, a5, a6);
}

@end