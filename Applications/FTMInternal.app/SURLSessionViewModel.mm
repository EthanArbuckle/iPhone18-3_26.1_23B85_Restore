@interface SURLSessionViewModel
- (_TtC11FTMInternal20SURLSessionViewModel)init;
- (void)slicingDescriptorsDidUpdate:(id)update withDescriptors:(id)descriptors appInfo:(id)info andStatus:(BOOL)status;
- (void)slicingRunningAppStateChanged:(id)changed;
@end

@implementation SURLSessionViewModel

- (_TtC11FTMInternal20SURLSessionViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)slicingDescriptorsDidUpdate:(id)update withDescriptors:(id)descriptors appInfo:(id)info andStatus:(BOOL)status
{
  sub_1001E1BB4(0, &qword_10037A438, &off_100315900);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  updateCopy = update;
  selfCopy = self;
  sub_100284E20(v9, v10, v12, status);
}

- (void)slicingRunningAppStateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_100285000(changedCopy);
}

@end