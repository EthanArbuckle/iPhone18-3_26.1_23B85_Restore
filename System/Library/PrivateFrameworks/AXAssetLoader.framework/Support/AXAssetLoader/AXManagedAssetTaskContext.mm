@interface AXManagedAssetTaskContext
+ (AXManagedAssetTaskContext)contextWithActivity:(id)activity;
+ (AXManagedAssetTaskContext)contextWithXPCClient;
- (BOOL)shouldDefer;
- (id)_init;
- (void)finishWithResult:(unint64_t)result;
@end

@implementation AXManagedAssetTaskContext

- (id)_init
{
  v3.receiver = self;
  v3.super_class = AXManagedAssetTaskContext;
  return [(AXManagedAssetTaskContext *)&v3 init];
}

+ (AXManagedAssetTaskContext)contextWithActivity:(id)activity
{
  activityCopy = activity;
  _init = [[AXManagedAssetTaskContext alloc] _init];
  [_init setEnvironment:1];
  [_init setActivity:activityCopy];

  return _init;
}

+ (AXManagedAssetTaskContext)contextWithXPCClient
{
  _init = [[AXManagedAssetTaskContext alloc] _init];
  [_init setEnvironment:0];

  return _init;
}

- (BOOL)shouldDefer
{
  if ([(AXManagedAssetTaskContext *)self environment]!= 1)
  {
    return 0;
  }

  activity = [(AXManagedAssetTaskContext *)self activity];
  shouldDefer = [activity shouldDefer];

  return shouldDefer;
}

- (void)finishWithResult:(unint64_t)result
{
  if ([(AXManagedAssetTaskContext *)self environment]== 1 && result <= 2)
  {
    v5 = qword_1000107F0[result];
    activity = [(AXManagedAssetTaskContext *)self activity];
    [activity updateState:v5];
  }
}

@end