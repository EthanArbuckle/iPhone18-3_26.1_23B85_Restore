@interface AXManagedAssetTaskContext
+ (AXManagedAssetTaskContext)contextWithActivity:(id)a3;
+ (AXManagedAssetTaskContext)contextWithXPCClient;
- (BOOL)shouldDefer;
- (id)_init;
- (void)finishWithResult:(unint64_t)a3;
@end

@implementation AXManagedAssetTaskContext

- (id)_init
{
  v3.receiver = self;
  v3.super_class = AXManagedAssetTaskContext;
  return [(AXManagedAssetTaskContext *)&v3 init];
}

+ (AXManagedAssetTaskContext)contextWithActivity:(id)a3
{
  v3 = a3;
  v4 = [[AXManagedAssetTaskContext alloc] _init];
  [v4 setEnvironment:1];
  [v4 setActivity:v3];

  return v4;
}

+ (AXManagedAssetTaskContext)contextWithXPCClient
{
  v2 = [[AXManagedAssetTaskContext alloc] _init];
  [v2 setEnvironment:0];

  return v2;
}

- (BOOL)shouldDefer
{
  if ([(AXManagedAssetTaskContext *)self environment]!= 1)
  {
    return 0;
  }

  v3 = [(AXManagedAssetTaskContext *)self activity];
  v4 = [v3 shouldDefer];

  return v4;
}

- (void)finishWithResult:(unint64_t)a3
{
  if ([(AXManagedAssetTaskContext *)self environment]== 1 && a3 <= 2)
  {
    v5 = qword_1000107F0[a3];
    v6 = [(AXManagedAssetTaskContext *)self activity];
    [v6 updateState:v5];
  }
}

@end