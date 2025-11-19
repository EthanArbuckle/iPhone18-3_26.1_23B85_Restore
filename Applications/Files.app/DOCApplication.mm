@interface DOCApplication
- (BOOL)runTest:(id)a3 options:(id)a4;
- (_TtC5Files14DOCApplication)init;
- (id)_extendLaunchTest;
- (void)tabbedBrowserViewController:(id)a3 didFinishInitialLoad:(BOOL)a4 ofTab:(unint64_t)a5;
@end

@implementation DOCApplication

- (_TtC5Files14DOCApplication)init
{
  v2 = (&self->super.super.super.isa + OBJC_IVAR____TtC5Files14DOCApplication_currentTestName);
  *v2 = 0;
  v2[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Files14DOCApplication_finishedLaunchTest) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Files14DOCApplication_localDomainRootNodeForQLTests) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Files14DOCApplication_loadedTabs) = &_swiftEmptyArrayStorage;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCApplication();
  return [(DOCApplication *)&v4 init];
}

- (id)_extendLaunchTest
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)tabbedBrowserViewController:(id)a3 didFinishInitialLoad:(BOOL)a4 ofTab:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = self;
  sub_10000A2AC(v6, a5);
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v4 = a4;
  if (!a3)
  {
    v6 = 0;
    v8 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v4)
  {
LABEL_3:
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v9 = self;
  v10 = sub_1000216B4(v6, v8, v4);

  return v10 & 1;
}

@end