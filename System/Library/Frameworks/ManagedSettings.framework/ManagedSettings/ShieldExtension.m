@interface ShieldExtension
- (void)appResponsibleForShieldingCategoryIdentifier:(id)a3 replyHandler:(id)a4;
- (void)fetchConfigurationForCategoryIdentifier:(id)a3 categoryName:(id)a4 replyHandler:(id)a5;
- (void)handleAction:(int64_t)a3 categoryIdentifier:(id)a4 replyHandler:(id)a5;
@end

@implementation ShieldExtension

- (void)handleAction:(int64_t)a3 categoryIdentifier:(id)a4 replyHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);

  sub_100059A2C(a3, v8, v10, self, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)fetchConfigurationForCategoryIdentifier:(id)a3 categoryName:(id)a4 replyHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v6);

  sub_10005ADA0(v7, v9, v10, v12, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)appResponsibleForShieldingCategoryIdentifier:(id)a3 replyHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100056024(v5, &v7);

  v6 = String._bridgeToObjectiveC()();
  v4[2](v4, v6, 0);

  _Block_release(v4);
  swift_bridgeObjectRelease_n();
  v9 = v8;
  sub_100020EA0(&v9);
}

@end