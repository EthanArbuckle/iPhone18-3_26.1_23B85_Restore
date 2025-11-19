@interface JSDatabaseStore
- (id)create:(id)a3;
- (id)onDeviceStorageDatabase:(id)a3 :(id)a4 :(id)a5;
- (id)onDeviceStorageDatabaseWithUserId:(id)a3 :(id)a4 :(id)a5;
@end

@implementation JSDatabaseStore

- (id)create:(id)a3
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_100039B44(v4);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)onDeviceStorageDatabase:(id)a3 :(id)a4 :(id)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10010D854();

  v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (id)onDeviceStorageDatabaseWithUserId:(id)a3 :(id)a4 :(id)a5
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = self;
  sub_10010DD84(v6, v8, v9, v11, v12, v14);

  v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v16.super.isa;
}

@end