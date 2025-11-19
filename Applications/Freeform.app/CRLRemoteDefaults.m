@interface CRLRemoteDefaults
+ (id)sharedDefaults;
- (CRLRemoteDefaults)initWithRemoteURL:(id)a3 localURL:(id)a4;
- (id)initInternal;
- (id)objectForKey:(id)a3;
- (void)processPropertyList:(id)a3;
- (void)registerDefaults;
@end

@implementation CRLRemoteDefaults

+ (id)sharedDefaults
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000137FC;
  block[3] = &unk_10183B690;
  block[4] = a1;
  if (qword_101A35518 != -1)
  {
    dispatch_once(&qword_101A35518, block);
  }

  v2 = qword_101A35510;

  return v2;
}

- (id)initInternal
{
  v3 = [NSURL URLWithString:@"https://configuration.apple.com/configurations/internetservices/cloudkit/freeform-1.0.plist"];
  v6.receiver = self;
  v6.super_class = CRLRemoteDefaults;
  v4 = [(CRLRemotePropertyList *)&v6 initWithRemoteURL:v3 localURL:0];

  if (v4)
  {
    [(CRLRemoteDefaults *)v4 registerDefaults];
  }

  return v4;
}

- (void)registerDefaults
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 URLForResource:@"freeform-1.0" withExtension:@"plist"];

  if (v3)
  {
    v4 = [NSDictionary dictionaryWithContentsOfURL:v3];
    if (v4)
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      v9 = @"CRLRemoteDefaults";
      v10 = v4;
      v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      [v5 registerDefaults:v6];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013963BC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013963D0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101396458();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v8);
      }

      v5 = [NSString stringWithUTF8String:"[CRLRemoteDefaults registerDefaults]"];
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRemoteDefaults.m"];
      [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:347 isFatal:0 description:"Can't parse local defaults plist"];
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101396480();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101396494();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139651C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v4 = [NSString stringWithUTF8String:"[CRLRemoteDefaults registerDefaults]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRemoteDefaults.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:356 isFatal:0 description:"Don't have local defaults plist"];
  }
}

- (CRLRemoteDefaults)initWithRemoteURL:(id)a3 localURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018703A0);
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v18 = v7;
    v19 = 2082;
    v20 = "[CRLRemoteDefaults initWithRemoteURL:localURL:]";
    v21 = 2082;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRemoteDefaults.m";
    v23 = 1024;
    v24 = 315;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018703C0);
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    v11 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v18 = v7;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v12 = [NSString stringWithUTF8String:"[CRLRemoteDefaults initWithRemoteURL:localURL:]"];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRemoteDefaults.m"];
  [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:315 isFatal:0 description:"Do not call method"];

  v14 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLRemoteDefaults initWithRemoteURL:localURL:]"];
  v15 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 dictionaryForKey:@"CRLRemoteDefaults"];
  v7 = [v6 objectForKey:v4];

  if (!v7)
  {
    v9.receiver = self;
    v9.super_class = CRLRemoteDefaults;
    v7 = [(CRLRemotePropertyList *)&v9 objectForKey:v4];
  }

  return v7;
}

- (void)processPropertyList:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setObject:v4 forKey:@"CRLRemoteDefaults"];

  v6.receiver = self;
  v6.super_class = CRLRemoteDefaults;
  [(CRLRemotePropertyList *)&v6 processPropertyList:v4];
}

@end