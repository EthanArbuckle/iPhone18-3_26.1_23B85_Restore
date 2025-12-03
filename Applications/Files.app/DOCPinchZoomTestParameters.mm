@interface DOCPinchZoomTestParameters
- (NSString)testName;
- (_TtC5Files26DOCPinchZoomTestParameters)init;
- (id)completionHandler;
- (id)composerBlock;
- (void)setCompletionHandler:(id)handler;
- (void)setTestName:(id)name;
@end

@implementation DOCPinchZoomTestParameters

- (NSString)testName
{
  if (*(self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_testName + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_testName);
    v3 = *(self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_testName + 8);

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTestName:(id)name
{
  if (name)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_testName);
  v7 = *(self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_testName + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (id)completionHandler
{
  if (*(self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_completionHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_completionHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_completionHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100002DB0;
    v5[3] = &unk_10008F818;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1000693D4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_completionHandler);
  v8 = *(self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_completionHandler);
  v9 = *(self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_completionHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_10003461C(v8);
}

- (id)composerBlock
{
  v2 = *(self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_bounds);
  v3 = *(self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_bounds + 8);
  v4 = *(self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_bounds + 16);
  v5 = *(self + OBJC_IVAR____TtC5Files26DOCPinchZoomTestParameters_bounds + 24);
  selfCopy = self;
  v15.origin.x = v2;
  v15.origin.y = v3;
  v15.size.width = v4;
  v15.size.height = v5;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v2;
  v16.origin.y = v3;
  v16.size.width = v4;
  v16.size.height = v5;
  MidY = CGRectGetMidY(v16);
  v17.origin.x = v2;
  v17.origin.y = v3;
  v17.size.width = v4;
  v17.size.height = v5;
  Width = CGRectGetWidth(v17);

  v10 = swift_allocObject();
  *(v10 + 16) = MidX;
  *(v10 + 24) = MidY;
  *(v10 + 32) = MidX + Width / 10.0;
  *(v10 + 40) = MidY;
  v13[4] = sub_100069338;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000691FC;
  v13[3] = &unk_10008F7C8;
  v11 = _Block_copy(v13);

  return v11;
}

- (_TtC5Files26DOCPinchZoomTestParameters)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end