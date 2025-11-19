@interface JSOnDeviceStorageDatabase
- (id)insert:(id)a3 :(id)a4;
- (id)select:(id)a3 :(id)a4;
@end

@implementation JSOnDeviceStorageDatabase

- (id)insert:(id)a3 :(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = sub_1001317FC(v5, v7, v8);

  return v10;
}

- (id)select:(id)a3 :(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = self;
  v10 = sub_1001331C4(v6, v8, a4);

  return v10;
}

@end