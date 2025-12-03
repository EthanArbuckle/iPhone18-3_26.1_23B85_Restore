@interface Intents
- (_TtC9appstored7Intents)init;
- (id)intentUsageWithDateInterval:(id)interval logKey:(id)key;
@end

@implementation Intents

- (id)intentUsageWithDateInterval:(id)interval logKey:(id)key
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  keyCopy = key;
  selfCopy = self;
  sub_10018A99C(v9, keyCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  if (v13)
  {
    sub_10018C1C8();
    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  return v14.super.isa;
}

- (_TtC9appstored7Intents)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Intents();
  return [(Intents *)&v3 init];
}

@end