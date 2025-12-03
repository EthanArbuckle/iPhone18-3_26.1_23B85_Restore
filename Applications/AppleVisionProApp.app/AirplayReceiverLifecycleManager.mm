@interface AirplayReceiverLifecycleManager
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)assertionWillInvalidate:(id)invalidate;
- (void)didStartStreamingWithRenderer:(id)renderer;
- (void)didStopStreamingWithRenderer:(id)renderer;
- (void)shouldAskPermissionWithRequestID:(id)d forClientWithName:(id)name withCompletionBlock:(id)block;
- (void)shouldCancelPermissionRequestWithRequestID:(id)d;
- (void)shouldHideGlobalPasscode;
- (void)shouldShowGlobalPasscodeWithString:(id)string withClientName:(id)name;
- (void)videoStreamIsCleared:(BOOL)cleared forRenderer:(id)renderer;
@end

@implementation AirplayReceiverLifecycleManager

- (void)assertionWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1000AD484();
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  assertionCopy = assertion;
  selfCopy = self;
  errorCopy = error;
  sub_1000AD748(assertionCopy, error);
}

- (void)didStartStreamingWithRenderer:(id)renderer
{
  rendererCopy = renderer;
  selfCopy = self;
  sub_1000A49A4(rendererCopy);
}

- (void)didStopStreamingWithRenderer:(id)renderer
{
  rendererCopy = renderer;
  selfCopy = self;
  sub_1000AD8F4();
}

- (void)shouldShowGlobalPasscodeWithString:(id)string withClientName:(id)name
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  sub_1000A56DC(v5, v7, v8, v10);
}

- (void)shouldHideGlobalPasscode
{
  selfCopy = self;
  sub_1000A648C();
}

- (void)shouldAskPermissionWithRequestID:(id)d forClientWithName:(id)name withCompletionBlock:(id)block
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(block);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  selfCopy = self;
  sub_1000A6A44(v11, v13, v15, sub_1000ACDC4, v16);

  (*(v8 + 8))(v11, v7);
}

- (void)shouldCancelPermissionRequestWithRequestID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000A8218(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)videoStreamIsCleared:(BOOL)cleared forRenderer:(id)renderer
{
  rendererCopy = renderer;
  selfCopy = self;
  sub_1000A900C(cleared, rendererCopy);
}

@end