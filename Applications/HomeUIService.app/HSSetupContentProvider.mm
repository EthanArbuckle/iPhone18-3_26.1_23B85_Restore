@interface HSSetupContentProvider
+ (NSDictionary)stringToStepMap;
+ (id)contentForStep:(int64_t)step coordinator:(id)coordinator config:(id)config;
+ (id)stringForHSProxCardSetupUIStep:(int64_t)step;
+ (int64_t)hsProxCardSetupUIStepForString:(id)string;
@end

@implementation HSSetupContentProvider

+ (NSDictionary)stringToStepMap
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000565A4;
  block[3] = &unk_1000C6ED0;
  block[4] = self;
  if (qword_1000E6760 != -1)
  {
    dispatch_once(&qword_1000E6760, block);
  }

  v2 = qword_1000E6758;

  return v2;
}

+ (id)stringForHSProxCardSetupUIStep:(int64_t)step
{
  stepToStringMap = [self stepToStringMap];
  v5 = [NSNumber numberWithInteger:step];
  v6 = [stepToStringMap objectForKeyedSubscript:v5];

  return v6;
}

+ (int64_t)hsProxCardSetupUIStepForString:(id)string
{
  stringCopy = string;
  stringToStepMap = [self stringToStepMap];
  v6 = [stringToStepMap objectForKeyedSubscript:stringCopy];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

+ (id)contentForStep:(int64_t)step coordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v9 = sub_100056898();
  v10 = [NSNumber numberWithInteger:step];
  v11 = [v9 objectForKeyedSubscript:v10];
  if (!v11)
  {
    v11 = objc_opt_class();
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 viewControllerForCoordinator:coordinatorCopy config:configCopy];
  }

  else
  {
    v12 = [[v11 alloc] initWithCoordinator:coordinatorCopy config:configCopy];
  }

  v13 = v12;

  return v13;
}

@end