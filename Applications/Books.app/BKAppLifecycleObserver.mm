@interface BKAppLifecycleObserver
- (BKAppLifecycleObserver)init;
- (BKAppLifecycleObserver)initWithCoordinator:(id)coordinator uiApplication:(id)application appKitBundle:(Class)bundle;
- (void)dealloc;
- (void)setOnDidBecomeActive:(id)active;
- (void)setOnDidBecomeFrontmost:(id)frontmost;
- (void)setOnDidEnterBackground:(id)background;
- (void)setOnWillEnterForeground:(id)foreground;
- (void)setOnWillResignActive:(id)active;
- (void)setOnWillResignFrontmost:(id)frontmost;
@end

@implementation BKAppLifecycleObserver

- (void)setOnWillEnterForeground:(id)foreground
{
  v4 = _Block_copy(foreground);
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
  selfCopy = self;
  sub_100007020(v7);
}

- (void)setOnDidEnterBackground:(id)background
{
  v4 = _Block_copy(background);
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
  selfCopy = self;
  sub_100007020(v7);
}

- (void)setOnWillResignActive:(id)active
{
  v4 = _Block_copy(active);
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
  selfCopy = self;
  sub_100007020(v7);
}

- (void)setOnDidBecomeActive:(id)active
{
  v4 = _Block_copy(active);
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
  selfCopy = self;
  sub_100007020(v7);
}

- (void)setOnWillResignFrontmost:(id)frontmost
{
  v4 = _Block_copy(frontmost);
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
  selfCopy = self;
  sub_100007020(v7);
}

- (void)setOnDidBecomeFrontmost:(id)frontmost
{
  v4 = _Block_copy(frontmost);
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
  selfCopy = self;
  sub_100007020(v7);
}

- (BKAppLifecycleObserver)initWithCoordinator:(id)coordinator uiApplication:(id)application appKitBundle:(Class)bundle
{
  if (bundle)
  {
    swift_getObjCClassMetadata();
  }

  swift_unknownObjectRetain();
  return sub_100006D70(coordinator, application);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
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