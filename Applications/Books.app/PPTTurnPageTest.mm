@interface PPTTurnPageTest
- (PPTTurnPageTest)initWithName:(id)a3 options:(id)a4 testDefinition:(id)a5 isMainTest:(BOOL)a6;
- (void)_handlePageTurnAnimationEnd:(id)a3;
- (void)_handlePageTurnAnimationStart:(id)a3;
- (void)_handleSetupEnd:(id)a3;
- (void)_handleSetupStart:(id)a3;
- (void)startTest;
- (void)subscribe;
@end

@implementation PPTTurnPageTest

- (PPTTurnPageTest)initWithName:(id)a3 options:(id)a4 testDefinition:(id)a5 isMainTest:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PPTTurnPageTest;
  v11 = [(PPTBasicTest *)&v14 initWithName:a3 options:a4 testDefinition:v10 isMainTest:v6];
  if (v11)
  {
    v12 = [v10 objectForKeyedSubscript:@"glitch-free"];
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

- (void)_handleSetupStart:(id)a3
{
  if ([(PPTBasicTest *)self running]&& [(PPTBasicTest *)self mainTest])
  {
    v5 = +[UIApplication sharedApplication];
    v4 = [(PPTBasicTest *)self name];
    [v5 startedSubTest:@"setup" forTest:v4 withMetrics:&off_100A43E28];
  }
}

- (void)_handleSetupEnd:(id)a3
{
  if ([(PPTBasicTest *)self running]&& [(PPTBasicTest *)self mainTest])
  {
    v5 = +[UIApplication sharedApplication];
    v4 = [(PPTBasicTest *)self name];
    [v5 finishedSubTest:@"setup" forTest:v4];
  }
}

- (void)_handlePageTurnAnimationStart:(id)a3
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
      v7 = self;
      v4 = v6;
      [v4 installCACommitCompletionBlock:v5];
    }
  }
}

- (void)_handlePageTurnAnimationEnd:(id)a3
{
  if ([(PPTBasicTest *)self running]&& [(PPTBasicTest *)self mainTest])
  {
    v5 = +[UIApplication sharedApplication];
    v4 = [(PPTBasicTest *)self name];
    [v5 finishedSubTest:@"page-turn" forTest:v4];
  }
}

@end