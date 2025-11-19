@interface BKAppLifecycleObserver
- (BKAppLifecycleObserver)init;
- (BKAppLifecycleObserver)initWithCoordinator:(id)a3 uiApplication:(id)a4 appKitBundle:(Class)a5;
- (void)dealloc;
- (void)setOnDidBecomeActive:(id)a3;
- (void)setOnDidBecomeFrontmost:(id)a3;
- (void)setOnDidEnterBackground:(id)a3;
- (void)setOnWillEnterForeground:(id)a3;
- (void)setOnWillResignActive:(id)a3;
- (void)setOnWillResignFrontmost:(id)a3;
@end

@implementation BKAppLifecycleObserver

- (void)setOnWillEnterForeground:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_100676910;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___BKAppLifecycleObserver_onWillEnterForeground);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_100007020(v7);
}

- (void)setOnDidEnterBackground:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_100676910;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___BKAppLifecycleObserver_onDidEnterBackground);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_100007020(v7);
}

- (void)setOnWillResignActive:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_100676910;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___BKAppLifecycleObserver_onWillResignActive);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_100007020(v7);
}

- (void)setOnDidBecomeActive:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_100676910;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___BKAppLifecycleObserver_onDidBecomeActive);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_100007020(v7);
}

- (void)setOnWillResignFrontmost:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1006768E8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___BKAppLifecycleObserver_onWillResignFrontmost);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_100007020(v7);
}

- (void)setOnDidBecomeFrontmost:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_100676910;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___BKAppLifecycleObserver_onDidBecomeFrontmost);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_100007020(v7);
}

- (BKAppLifecycleObserver)initWithCoordinator:(id)a3 uiApplication:(id)a4 appKitBundle:(Class)a5
{
  if (a5)
  {
    swift_getObjCClassMetadata();
  }

  swift_unknownObjectRetain();
  return sub_100006D70(a3, a4);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for AppLifecycleObserver();
  [(BKAppLifecycleObserver *)&v6 dealloc];
}

- (BKAppLifecycleObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end