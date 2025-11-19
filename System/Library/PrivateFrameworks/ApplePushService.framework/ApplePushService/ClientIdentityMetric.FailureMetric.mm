@interface ClientIdentityMetric.FailureMetric
- (NSDictionary)dictionaryRepresentation;
- (NSString)name;
- (void)setName:(id)a3;
@end

@implementation ClientIdentityMetric.FailureMetric

- (NSString)name
{
  swift_beginAccess();
  v4 = *(self + 2);
  v3 = *(self + 3);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (void)setName:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  swift_beginAccess();
  v7 = *(self + 3);
  *(self + 2) = v4;
  *(self + 3) = v6;
}

- (NSDictionary)dictionaryRepresentation
{

  ClientIdentityMetric.FailureMetric.dictionaryRepresentation.getter();

  sub_1000C8C30(&unk_1001BD630, &unk_10015DAA0);
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

@end