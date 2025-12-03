@interface OffloadOutgoingPushSent
- (NSDictionary)dictionaryRepresentation;
- (NSString)name;
- (void)setName:(id)name;
@end

@implementation OffloadOutgoingPushSent

- (NSString)name
{
  swift_beginAccess();
  v4 = *(self + 10);
  v3 = *(self + 11);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (void)setName:(id)name
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  swift_beginAccess();
  v7 = *(self + 11);
  *(self + 10) = v4;
  *(self + 11) = v6;
}

- (NSDictionary)dictionaryRepresentation
{

  sub_1000E11FC();

  sub_1000C8C30(&unk_1001BD630, &unk_10015DAA0);
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

@end