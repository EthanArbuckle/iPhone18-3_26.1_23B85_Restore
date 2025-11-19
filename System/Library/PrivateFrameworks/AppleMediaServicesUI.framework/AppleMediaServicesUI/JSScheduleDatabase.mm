@interface JSScheduleDatabase
- (id)fetch:(id)a3;
- (id)fetchIdentifiersMatching:(id)a3;
- (id)fetchSchedules:(id)a3;
- (void)removeIdentifiers:(id)a3;
@end

@implementation JSScheduleDatabase

- (id)fetch:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_1001378C8(v4, v6);

  if (v8)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)fetchSchedules:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_100137C30(v4);

  sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)fetchIdentifiersMatching:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_1001380FC(v4, v6);

  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)removeIdentifiers:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_10013837C(v4);
}

@end