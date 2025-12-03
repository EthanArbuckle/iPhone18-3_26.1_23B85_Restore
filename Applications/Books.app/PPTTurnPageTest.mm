@interface PPTTurnPageTest
- (PPTTurnPageTest)initWithName:(id)name options:(id)options testDefinition:(id)definition isMainTest:(BOOL)test;
- (void)_handlePageTurnAnimationEnd:(id)end;
- (void)_handlePageTurnAnimationStart:(id)start;
- (void)_handleSetupEnd:(id)end;
- (void)_handleSetupStart:(id)start;
- (void)startTest;
- (void)subscribe;
@end

@implementation PPTTurnPageTest

- (PPTTurnPageTest)initWithName:(id)name options:(id)options testDefinition:(id)definition isMainTest:(BOOL)test
{
  testCopy = test;
  definitionCopy = definition;
  v14.receiver = self;
  v14.super_class = PPTTurnPageTest;
  v11 = [(PPTBasicTest *)&v14 initWithName:name options:options testDefinition:definitionCopy isMainTest:testCopy];
  if (v11)
  {
    v12 = [definitionCopy objectForKeyedSubscript:@"glitch-free"];
    v11->_glitchFree = [v12 BOOLValue];
  }

  return v11;
}

- (void)startTest
{
  [(PPTBasicTest *)self setRunning:1];
  [(PPTTurnPageTest *)self subscribe];

  [(PPTTurnPageTest *)self turnPage];
}

- (void)subscribe
{
  [(PPTBasicTest *)self subscribeToStartNotification:kBETestDriverPageTurnStart endNotification:kBETestDriverPageTurnEnd];
  if ([(PPTBasicTest *)self running]&& [(PPTBasicTest *)self mainTest])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"_handleSetupStart:" name:kBETestDriverPageTurnSetupStart object:0];
    [v3 addObserver:self selector:"_handleSetupEnd:" name:kBETestDriverPageTurnSetupEnd object:0];
    [v3 addObserver:self selector:"_handlePageTurnAnimationStart:" name:kBETestDriverPageTurnAnimationStart object:0];
    [v3 addObserver:self selector:"_handlePageTurnAnimationEnd:" name:kBETestDriverPageTurnAnimationEnd object:0];
  }
}

- (void)_handleSetupStart:(id)start
{
  if ([(PPTBasicTest *)self running]&& [(PPTBasicTest *)self mainTest])
  {
    v5 = +[UIApplication sharedApplication];
    name = [(PPTBasicTest *)self name];
    [v5 startedSubTest:@"setup" forTest:name withMetrics:&off_100A43E28];
  }
}

- (void)_handleSetupEnd:(id)end
{
  if ([(PPTBasicTest *)self running]&& [(PPTBasicTest *)self mainTest])
  {
    v5 = +[UIApplication sharedApplication];
    name = [(PPTBasicTest *)self name];
    [v5 finishedSubTest:@"setup" forTest:name];
  }
}

- (void)_handlePageTurnAnimationStart:(id)start
{
  if ([(PPTBasicTest *)self running])
  {
    if ([(PPTBasicTest *)self mainTest])
    {
      +[UIApplication sharedApplication];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10014E93C;
      v6 = v5[3] = &unk_100A03440;
      selfCopy = self;
      v4 = v6;
      [v4 installCACommitCompletionBlock:v5];
    }
  }
}

- (void)_handlePageTurnAnimationEnd:(id)end
{
  if ([(PPTBasicTest *)self running]&& [(PPTBasicTest *)self mainTest])
  {
    v5 = +[UIApplication sharedApplication];
    name = [(PPTBasicTest *)self name];
    [v5 finishedSubTest:@"page-turn" forTest:name];
  }
}

@end