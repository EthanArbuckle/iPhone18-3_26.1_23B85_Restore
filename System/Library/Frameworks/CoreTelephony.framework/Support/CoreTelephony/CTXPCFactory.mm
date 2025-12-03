@interface CTXPCFactory
- (id)createCTXPCClientBehaviorTracker:(const queue *)tracker;
- (id)createEntitlementProvider;
- (id)createListener:(const queue *)listener name:(const char *)name logContext:(OsLogContext)context;
- (id)createSensitiveObjectClassifier;
- (shared_ptr<CCXpcServerEntitlementChecker>)createEntitlementChecker:(shared_ptr<const Registry>)checker forConnection:(const connection *)connection;
@end

@implementation CTXPCFactory

- (id)createSensitiveObjectClassifier
{
  v2 = objc_opt_new();

  return v2;
}

- (id)createListener:(const queue *)listener name:(const char *)name logContext:(OsLogContext)context
{
  var0 = context.var0;
  v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.commcenter.coretelephony.xpc"];
  v9 = [CTXPCListener alloc];
  fObj = listener->fObj.fObj;
  object = fObj;
  if (fObj)
  {
    dispatch_retain(fObj);
  }

  ctu::OsLogContext::OsLogContext(v13, var0);
  v11 = [(CTXPCListener *)v9 initWithListener:v8 queue:&object name:name logContext:v13];
  ctu::OsLogContext::~OsLogContext(v13);
  if (object)
  {
    dispatch_release(object);
  }

  return v11;
}

- (id)createEntitlementProvider
{
  v2 = objc_opt_new();

  return v2;
}

- (shared_ptr<CCXpcServerEntitlementChecker>)createEntitlementChecker:(shared_ptr<const Registry>)checker forConnection:(const connection *)connection
{
  v4 = *(checker.__ptr_ + 1);
  v5[0] = *checker.__ptr_;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000155C8(v5);
}

- (id)createCTXPCClientBehaviorTracker:(const queue *)tracker
{
  v3 = [[CTXPCClientBehaviorTracker alloc] initWithQueue:tracker];

  return v3;
}

@end