@interface WBPPTActivationContext
- (WBPPTActivationContext)initWithTestName:(id)name testOptions:(id)options applicationInfo:(id)info;
- (void)markUserActivationInitiationTime;
- (void)prepareExecutionContext:(id)context;
- (void)prepareTransitionContext:(id)context;
@end

@implementation WBPPTActivationContext

- (WBPPTActivationContext)initWithTestName:(id)name testOptions:(id)options applicationInfo:(id)info
{
  nameCopy = name;
  optionsCopy = options;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = WBPPTActivationContext;
  v11 = [(WBPPTActivationContext *)&v17 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    testName = v11->_testName;
    v11->_testName = v12;

    v14 = [optionsCopy copy];
    testOptions = v11->_testOptions;
    v11->_testOptions = v14;

    objc_storeStrong(&v11->_applicationInfo, info);
  }

  return v11;
}

- (void)markUserActivationInitiationTime
{
  +[NSDate timeIntervalSinceReferenceDate];
  [(WBPPTActivationContext *)self setUserLaunchEventTime:?];
  testName = [(WBPPTActivationContext *)self testName];
  strncpy(__dst, [testName UTF8String], 0x10uLL);
  [testName hash];
  [testName length];
  kdebug_trace();
}

- (void)prepareTransitionContext:(id)context
{
  contextCopy = context;
  [contextCopy setForTesting:1];
  [(WBPPTActivationContext *)self userLaunchEventTime];
  [contextCopy setUserLaunchEventTime:?];
}

- (void)prepareExecutionContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc_init(NSMutableArray);
  testOptions = [(WBPPTActivationContext *)self testOptions];
  v6 = [testOptions objectForKey:@"launchArguments"];
  v7 = +[NSCharacterSet whitespaceCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  if ([v8 length])
  {
    v9 = [v8 componentsSeparatedByString:@":"];
    [v4 addObjectsFromArray:v9];
  }

  testOptions2 = [(WBPPTActivationContext *)self testOptions];
  v11 = [testOptions2 objectForKey:@"arguments"];
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

  arguments = [contextCopy arguments];

  if (arguments)
  {
    arguments2 = [contextCopy arguments];
    [v4 addObjectsFromArray:arguments2];
  }

  [contextCopy setArguments:v4];
}

@end