@interface WBPPTActivationContext
- (WBPPTActivationContext)initWithTestName:(id)a3 testOptions:(id)a4 applicationInfo:(id)a5;
- (void)markUserActivationInitiationTime;
- (void)prepareExecutionContext:(id)a3;
- (void)prepareTransitionContext:(id)a3;
@end

@implementation WBPPTActivationContext

- (WBPPTActivationContext)initWithTestName:(id)a3 testOptions:(id)a4 applicationInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = WBPPTActivationContext;
  v11 = [(WBPPTActivationContext *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    testName = v11->_testName;
    v11->_testName = v12;

    v14 = [v9 copy];
    testOptions = v11->_testOptions;
    v11->_testOptions = v14;

    objc_storeStrong(&v11->_applicationInfo, a5);
  }

  return v11;
}

- (void)markUserActivationInitiationTime
{
  +[NSDate timeIntervalSinceReferenceDate];
  [(WBPPTActivationContext *)self setUserLaunchEventTime:?];
  v3 = [(WBPPTActivationContext *)self testName];
  strncpy(__dst, [v3 UTF8String], 0x10uLL);
  [v3 hash];
  [v3 length];
  kdebug_trace();
}

- (void)prepareTransitionContext:(id)a3
{
  v4 = a3;
  [v4 setForTesting:1];
  [(WBPPTActivationContext *)self userLaunchEventTime];
  [v4 setUserLaunchEventTime:?];
}

- (void)prepareExecutionContext:(id)a3
{
  v17 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [(WBPPTActivationContext *)self testOptions];
  v6 = [v5 objectForKey:@"launchArguments"];
  v7 = +[NSCharacterSet whitespaceCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  if ([v8 length])
  {
    v9 = [v8 componentsSeparatedByString:@":"];
    [v4 addObjectsFromArray:v9];
  }

  v10 = [(WBPPTActivationContext *)self testOptions];
  v11 = [v10 objectForKey:@"arguments"];
  v12 = +[NSCharacterSet whitespaceCharacterSet];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];

  if ([v13 length])
  {
    v14 = [v13 componentsSeparatedByString:@":"];
    [v4 addObjectsFromArray:v14];
  }

  if ([v4 containsObject:@"--suspended"])
  {
    [v4 removeObject:@"--suspended"];
  }

  v15 = [v17 arguments];

  if (v15)
  {
    v16 = [v17 arguments];
    [v4 addObjectsFromArray:v16];
  }

  [v17 setArguments:v4];
}

@end