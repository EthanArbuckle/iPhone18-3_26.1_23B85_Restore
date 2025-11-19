@interface OffloadKeepAliveSent
- (NSDictionary)dictionaryRepresentation;
- (NSString)name;
- (void)setName:(id)a3;
@end

@implementation OffloadKeepAliveSent

- (NSString)name
{
  swift_beginAccess();
  v4 = *(self + 5);
  v3 = *(self + 6);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (void)setName:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  swift_beginAccess();
  v7 = *(self + 6);
  *(self + 5) = v4;
  *(self + 6) = v6;
}

- (NSDictionary)dictionaryRepresentation
{

  sub_1000E050C();

  sub_1000C8C30(&unk_1001BD630, &unk_10015DAA0);
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

@end