@interface AirplayReceiverLifecycleManager
- (void)assertion:(id)a3 didInvalidateWithError:(id)a4;
- (void)assertionWillInvalidate:(id)a3;
- (void)didStartStreamingWithRenderer:(id)a3;
- (void)didStopStreamingWithRenderer:(id)a3;
- (void)shouldAskPermissionWithRequestID:(id)a3 forClientWithName:(id)a4 withCompletionBlock:(id)a5;
- (void)shouldCancelPermissionRequestWithRequestID:(id)a3;
- (void)shouldHideGlobalPasscode;
- (void)shouldShowGlobalPasscodeWithString:(id)a3 withClientName:(id)a4;
- (void)videoStreamIsCleared:(BOOL)a3 forRenderer:(id)a4;
@end

@implementation AirplayReceiverLifecycleManager

- (void)assertionWillInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000AD484();
}

- (void)assertion:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1000AD748(v6, a4);
}

- (void)didStartStreamingWithRenderer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A49A4(v4);
}

- (void)didStopStreamingWithRenderer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000AD8F4();
}

- (void)shouldShowGlobalPasscodeWithString:(id)a3 withClientName:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = self;
  sub_1000A56DC(v5, v7, v8, v10);
}

- (void)shouldHideGlobalPasscode
{
  v2 = self;
  sub_1000A648C();
}

- (void)shouldAskPermissionWithRequestID:(id)a3 forClientWithName:(id)a4 withCompletionBlock:(id)a5
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = self;
  sub_1000A6A44(v11, v13, v15, sub_1000ACDC4, v16);

  (*(v8 + 8))(v11, v7);
}

- (void)shouldCancelPermissionRequestWithRequestID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_1000A8218(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)videoStreamIsCleared:(BOOL)a3 forRenderer:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_1000A900C(a3, v6);
}

@end