@interface HSSetupContentProvider
+ (NSDictionary)stringToStepMap;
+ (id)contentForStep:(int64_t)a3 coordinator:(id)a4 config:(id)a5;
+ (id)stringForHSProxCardSetupUIStep:(int64_t)a3;
+ (int64_t)hsProxCardSetupUIStepForString:(id)a3;
@end

@implementation HSSetupContentProvider

+ (NSDictionary)stringToStepMap
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000565A4;
  block[3] = &unk_1000C6ED0;
  block[4] = a1;
  if (qword_1000E6760 != -1)
  {
    dispatch_once(&qword_1000E6760, block);
  }

  v2 = qword_1000E6758;

  return v2;
}

+ (id)stringForHSProxCardSetupUIStep:(int64_t)a3
{
  v4 = [a1 stepToStringMap];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

+ (int64_t)hsProxCardSetupUIStepForString:(id)a3
{
  v4 = a3;
  v5 = [a1 stringToStepMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (id)contentForStep:(int64_t)a3 coordinator:(id)a4 config:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100056898();
  v10 = [NSNumber numberWithInteger:a3];
  v11 = [v9 objectForKeyedSubscript:v10];
  if (!v11)
  {
    v11 = objc_opt_class();
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 viewControllerForCoordinator:v7 config:v8];
  }

  else
  {
    v12 = [[v11 alloc] initWithCoordinator:v7 config:v8];
  }

  v13 = v12;

  return v13;
}

@end