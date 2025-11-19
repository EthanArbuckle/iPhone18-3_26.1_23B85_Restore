@interface THPerformanceRegressionLogger
+ (id)_singletonAlloc;
+ (id)sharedLogger;
+ (void)logEventWithBlock:(id)a3;
- (THPerformanceRegressionLogger)init;
- (id)bookDescriptionForContext:(id)a3;
- (id)orientation;
- (id)testName;
- (void)dealloc;
- (void)log:(id)a3;
- (void)logEvent:(id)a3 forAsset:(id)a4;
- (void)logEvent:(id)a3 forAssetName:(id)a4;
- (void)logEvent:(id)a3 forBookDescription:(id)a4;
- (void)logEvent:(id)a3 forContentNode:(id)a4;
- (void)logEvent:(id)a3 forObjectContext:(id)a4;
@end

@implementation THPerformanceRegressionLogger

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___THPerformanceRegressionLogger;
  return objc_msgSendSuper2(&v3, "allocWithZone:", 0);
}

+ (id)sharedLogger
{
  result = qword_5678A0;
  if (!qword_5678A0)
  {
    objc_sync_enter(a1);
    if (!qword_5678A0)
    {
      v4 = [objc_msgSend(a1 "_singletonAlloc")];
      __dmb(0xBu);
      qword_5678A0 = v4;
      if (!v4)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }

    objc_sync_exit(a1);
    return qword_5678A0;
  }

  return result;
}

- (THPerformanceRegressionLogger)init
{
  v7.receiver = self;
  v7.super_class = THPerformanceRegressionLogger;
  v2 = [(THPerformanceRegressionLogger *)&v7 init];
  if (v2)
  {
    v2->mShouldLog = [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"THPerformanceRegressionLogging"];
    info = 0;
    mach_timebase_info(&info);
    LODWORD(v3) = info.denom;
    LODWORD(v4) = info.numer;
    v2->mDivisor = v3 / v4 * 1000.0;
    if (v2->mShouldLog)
    {
      memset(&v8, 0, 512);
      uname(&v8);
      v2->mMachine = [[NSString alloc] initWithCString:v8.machine encoding:1];
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THPerformanceRegressionLogger;
  [(THPerformanceRegressionLogger *)&v3 dealloc];
}

- (void)log:(id)a3
{
  if (self->mShouldLog)
  {
    NSLog(@"%@", a2, a3);
  }
}

- (id)orientation
{
  if (-[UIWindowScene interfaceOrientation]([(UIWindow *)[+[UIApplication sharedApplication](UIApplication keyWindow] windowScene]- 1 >= &dword_0 + 2)
  {
    return @"landscape";
  }

  else
  {
    return @"portrait";
  }
}

- (id)bookDescriptionForContext:(id)a3
{
  objc_opt_class();
  [a3 documentObject];
  result = TSUDynamicCast();
  if (result)
  {

    return [result bookDescription];
  }

  return result;
}

- (id)testName
{
  result = [+[NSUserDefaults standardUserDefaults](NSUserDefaults stringForKey:"stringForKey:", @"THPerformanceRegressionTestName"];
  if (!result)
  {
    return @"setup";
  }

  return result;
}

- (void)logEvent:(id)a3 forAssetName:(id)a4
{
  if (self->mShouldLog)
  {
    v6 = [NSString stringWithFormat:@"perfEvent={test:%@, event:%@, time:%qu, asset:%@, orientation:%@, machine:%@}", [(THPerformanceRegressionLogger *)self testName], a3, [(THPerformanceRegressionLogger *)self microseconds], a4, [(THPerformanceRegressionLogger *)self orientation], self->mMachine];

    [(THPerformanceRegressionLogger *)self log:v6];
  }
}

- (void)logEvent:(id)a3 forBookDescription:(id)a4
{
  if (self->mShouldLog)
  {
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"perfEvent={test:%@,event:%@,time:%qu,asset:%@,orientation:%@,machine:%@,title:%@}", -[THPerformanceRegressionLogger testName](self, "testName"), a3, -[THPerformanceRegressionLogger microseconds](self, "microseconds"), [objc_msgSend(objc_msgSend(a4 "asset")], -[THPerformanceRegressionLogger orientation](self, "orientation"), self->mMachine, objc_msgSend(a4, "bookTitle"));

    [(THPerformanceRegressionLogger *)self log:v6];
  }
}

- (void)logEvent:(id)a3 forAsset:(id)a4
{
  if (self->mShouldLog)
  {
    v7 = [a4 lastPathComponent];

    [(THPerformanceRegressionLogger *)self logEvent:a3 forAssetName:v7];
  }
}

- (void)logEvent:(id)a3 forObjectContext:(id)a4
{
  if (self->mShouldLog)
  {
    v7 = [(THPerformanceRegressionLogger *)self bookDescriptionForContext:a4];

    [(THPerformanceRegressionLogger *)self logEvent:a3 forBookDescription:v7];
  }
}

- (void)logEvent:(id)a3 forContentNode:(id)a4
{
  if (self->mShouldLog)
  {
    v8 = -[THPerformanceRegressionLogger bookDescriptionForContext:](self, "bookDescriptionForContext:", [a4 context]);
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"perfEvent={test:%@,event:%@,time:%qu,node:%@,asset:%@,orientation:%@,machine:%@,title:%@}", -[THPerformanceRegressionLogger testName](self, "testName"), a3, -[THPerformanceRegressionLogger microseconds](self, "microseconds"), [a4 applePubRelativePath], objc_msgSend(objc_msgSend(objc_msgSend(v8, "asset"), "url"), "lastPathComponent"), -[THPerformanceRegressionLogger orientation](self, "orientation"), self->mMachine, objc_msgSend(v8, "bookTitle"));

    [(THPerformanceRegressionLogger *)self log:v9];
  }
}

+ (void)logEventWithBlock:(id)a3
{
  v4 = [a1 sharedLogger];
  if (v4 && v4[8] == 1)
  {
    v5 = *(a3 + 2);

    v5(a3, v4);
  }
}

@end