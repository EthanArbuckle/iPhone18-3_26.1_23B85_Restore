@interface CTXPCFactory
- (id)createCTXPCClientBehaviorTracker:(const queue *)a3;
- (id)createEntitlementProvider;
- (id)createListener:(const queue *)a3 name:(const char *)a4 logContext:(OsLogContext)a5;
- (id)createSensitiveObjectClassifier;
- (shared_ptr<CCXpcServerEntitlementChecker>)createEntitlementChecker:(shared_ptr<const Registry>)a3 forConnection:(const connection *)a4;
@end

@implementation CTXPCFactory

- (id)createSensitiveObjectClassifier
{
  v2 = objc_opt_new();

  return v2;
}

- (id)createListener:(const queue *)a3 name:(const char *)a4 logContext:(OsLogContext)a5
{
  var0 = a5.var0;
  v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.commcenter.coretelephony.xpc"];
  v9 = [CTXPCListener alloc];
  fObj = a3->fObj.fObj;
  object = fObj;
  if (fObj)
  {
    dispatch_retain(fObj);
  }

  ctu::OsLogContext::OsLogContext(v13, var0);
  v11 = [(CTXPCListener *)v9 initWithListener:v8 queue:&object name:a4 logContext:v13];
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

- (shared_ptr<CCXpcServerEntitlementChecker>)createEntitlementChecker:(shared_ptr<const Registry>)a3 forConnection:(const connection *)a4
{
  v4 = *(a3.__ptr_ + 1);
  v5[0] = *a3.__ptr_;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000155C8(v5);
}

- (id)createCTXPCClientBehaviorTracker:(const queue *)a3
{
  v3 = [[CTXPCClientBehaviorTracker alloc] initWithQueue:a3];

  return v3;
}

@end