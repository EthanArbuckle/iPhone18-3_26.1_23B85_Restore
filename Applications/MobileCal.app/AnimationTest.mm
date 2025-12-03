@interface AnimationTest
- (id)notificationName;
- (void)_animationCompleted;
- (void)dealloc;
- (void)kickOffAnimation;
- (void)runTest;
- (void)setUp;
@end

@implementation AnimationTest

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AnimationTest;
  [(AnimationTest *)&v4 dealloc];
}

- (void)runTest
{
  [(AnimationTest *)self setUp];
  v3 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100048A9C;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)_animationCompleted
{
  application = [(ApplicationTest *)self application];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100048D04;
  v4[3] = &unk_10020EB00;
  v4[4] = self;
  [application installCACommitCompletionBlock:v4];
}

- (id)notificationName
{
  objc_opt_class();
  sub_1000475B0();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)setUp
{
  objc_opt_class();
  sub_1000475B0();

  NSRequestConcreteImplementation();
}

- (void)kickOffAnimation
{
  objc_opt_class();
  sub_1000475B0();

  NSRequestConcreteImplementation();
}

@end