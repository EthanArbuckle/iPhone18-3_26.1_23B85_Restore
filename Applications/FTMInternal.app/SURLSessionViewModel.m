@interface SURLSessionViewModel
- (_TtC11FTMInternal20SURLSessionViewModel)init;
- (void)slicingDescriptorsDidUpdate:(id)a3 withDescriptors:(id)a4 appInfo:(id)a5 andStatus:(BOOL)a6;
- (void)slicingRunningAppStateChanged:(id)a3;
@end

@implementation SURLSessionViewModel

- (_TtC11FTMInternal20SURLSessionViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)slicingDescriptorsDidUpdate:(id)a3 withDescriptors:(id)a4 appInfo:(id)a5 andStatus:(BOOL)a6
{
  sub_1001E1BB4(0, &qword_10037A438, &off_100315900);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a3;
  v14 = self;
  sub_100284E20(v9, v10, v12, a6);
}

- (void)slicingRunningAppStateChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100285000(v4);
}

@end