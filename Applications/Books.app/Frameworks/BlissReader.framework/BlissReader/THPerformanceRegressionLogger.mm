@interface THPerformanceRegressionLogger
+ (id)_singletonAlloc;
+ (id)sharedLogger;
+ (void)logEventWithBlock:(id)block;
- (THPerformanceRegressionLogger)init;
- (id)bookDescriptionForContext:(id)context;
- (id)orientation;
- (id)testName;
- (void)dealloc;
- (void)log:(id)log;
- (void)logEvent:(id)event forAsset:(id)asset;
- (void)logEvent:(id)event forAssetName:(id)name;
- (void)logEvent:(id)event forBookDescription:(id)description;
- (void)logEvent:(id)event forContentNode:(id)node;
- (void)logEvent:(id)event forObjectContext:(id)context;
@end

@implementation THPerformanceRegressionLogger

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___THPerformanceRegressionLogger;
  return objc_msgSendSuper2(&v3, "allocWithZone:", 0);
}

+ (id)sharedLogger
{
  result = qword_5678A0;
  if (!qword_5678A0)
  {
    objc_sync_enter(self);
    if (!qword_5678A0)
    {
      v4 = [objc_msgSend(self "_singletonAlloc")];
      __dmb(0xBu);
      qword_5678A0 = v4;
      if (!v4)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }

    objc_sync_exit(self);
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

- (void)log:(id)log
{
  if (self->mShouldLog)
  {
    NSLog(@"%@", a2, log);
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

- (id)bookDescriptionForContext:(id)context
{
  objc_opt_class();
  [context documentObject];
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

- (void)logEvent:(id)event forAssetName:(id)name
{
  if (self->mShouldLog)
  {
    v6 = [NSString stringWithFormat:@"perfEvent={test:%@, event:%@, time:%qu, asset:%@, orientation:%@, machine:%@}", [(THPerformanceRegressionLogger *)self testName], event, [(THPerformanceRegressionLogger *)self microseconds], name, [(THPerformanceRegressionLogger *)self orientation], self->mMachine];

    [(THPerformanceRegressionLogger *)self log:v6];
  }
}

- (void)logEvent:(id)event forBookDescription:(id)description
{
  if (self->mShouldLog)
  {
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"perfEvent={test:%@,event:%@,time:%qu,asset:%@,orientation:%@,machine:%@,title:%@}", -[THPerformanceRegressionLogger testName](self, "testName"), event, -[THPerformanceRegressionLogger microseconds](self, "microseconds"), [objc_msgSend(objc_msgSend(description "asset")], -[THPerformanceRegressionLogger orientation](self, "orientation"), self->mMachine, objc_msgSend(description, "bookTitle"));

    [(THPerformanceRegressionLogger *)self log:v6];
  }
}

- (void)logEvent:(id)event forAsset:(id)asset
{
  if (self->mShouldLog)
  {
    lastPathComponent = [asset lastPathComponent];

    [(THPerformanceRegressionLogger *)self logEvent:event forAssetName:lastPathComponent];
  }
}

- (void)logEvent:(id)event forObjectContext:(id)context
{
  if (self->mShouldLog)
  {
    v7 = [(THPerformanceRegressionLogger *)self bookDescriptionForContext:context];

    [(THPerformanceRegressionLogger *)self logEvent:event forBookDescription:v7];
  }
}

- (void)logEvent:(id)event forContentNode:(id)node
{
  if (self->mShouldLog)
  {
    v8 = -[THPerformanceRegressionLogger bookDescriptionForContext:](self, "bookDescriptionForContext:", [node context]);
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"perfEvent={test:%@,event:%@,time:%qu,node:%@,asset:%@,orientation:%@,machine:%@,title:%@}", -[THPerformanceRegressionLogger testName](self, "testName"), event, -[THPerformanceRegressionLogger microseconds](self, "microseconds"), [node applePubRelativePath], objc_msgSend(objc_msgSend(objc_msgSend(v8, "asset"), "url"), "lastPathComponent"), -[THPerformanceRegressionLogger orientation](self, "orientation"), self->mMachine, objc_msgSend(v8, "bookTitle"));

    [(THPerformanceRegressionLogger *)self log:v9];
  }
}

+ (void)logEventWithBlock:(id)block
{
  sharedLogger = [self sharedLogger];
  if (sharedLogger && sharedLogger[8] == 1)
  {
    v5 = *(block + 2);

    v5(block, sharedLogger);
  }
}

@end