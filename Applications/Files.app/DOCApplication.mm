@interface DOCApplication
- (BOOL)runTest:(id)test options:(id)options;
- (_TtC5Files14DOCApplication)init;
- (id)_extendLaunchTest;
- (void)tabbedBrowserViewController:(id)controller didFinishInitialLoad:(BOOL)load ofTab:(unint64_t)tab;
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

- (void)tabbedBrowserViewController:(id)controller didFinishInitialLoad:(BOOL)load ofTab:(unint64_t)tab
{
  loadCopy = load;
  controllerCopy = controller;
  selfCopy = self;
  sub_10000A2AC(loadCopy, tab);
}

- (BOOL)runTest:(id)test options:(id)options
{
  optionsCopy = options;
  if (!test)
  {
    v6 = 0;
    v8 = 0;
    if (!options)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (optionsCopy)
  {
LABEL_3:
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  selfCopy = self;
  v10 = sub_1000216B4(v6, v8, optionsCopy);

  return v10 & 1;
}

@end