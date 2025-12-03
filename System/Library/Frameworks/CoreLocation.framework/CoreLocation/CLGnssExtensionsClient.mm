@interface CLGnssExtensionsClient
+ (id)newAssertionForBundle:(id)bundle withReason:(id)reason withCallbackQueue:(id)queue andBlock:(id)block;
- (CLGnssExtensionsClient)initWithRegistrationMessageName:(const char *)name messageDictionary:(id)dictionary dispatchQueue:(id)queue codeBlock:(id)block;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CLGnssExtensionsClient

- (CLGnssExtensionsClient)initWithRegistrationMessageName:(const char *)name messageDictionary:(id)dictionary dispatchQueue:(id)queue codeBlock:(id)block
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

+ (id)newAssertionForBundle:(id)bundle withReason:(id)reason withCallbackQueue:(id)queue andBlock:(id)block
{
  bundlePath = [bundle bundlePath];

  return sub_19B96A90C(&stru_1F0E6F140, bundlePath, reason, queue, block);
}

@end