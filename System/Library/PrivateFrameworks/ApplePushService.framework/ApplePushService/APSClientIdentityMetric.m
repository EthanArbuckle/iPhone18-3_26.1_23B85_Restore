@interface APSClientIdentityMetric
- (APSClientIdentityMetric)init;
- (APSMetricEvent)failureMetric;
- (NSArray)errors;
- (NSDictionary)dictionaryRepresentation;
- (NSString)name;
- (NSUUID)correlationID;
- (void)setCorrelationID:(id)a3;
- (void)setName:(id)a3;
@end

@implementation APSClientIdentityMetric

- (NSUUID)correlationID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___APSClientIdentityMetric_correlationID;
  swift_beginAccess();
  (*(v4 + 16))(v8, self + v9, v3);
  v10.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v8, v3);

  return v10.super.isa;
}

- (void)setCorrelationID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = OBJC_IVAR___APSClientIdentityMetric_correlationID;
  swift_beginAccess();
  v11 = *(v5 + 40);
  v12 = self;
  v11(self + v10, v9, v4);
  swift_endAccess();
}

- (NSArray)errors
{
  v2 = *((swift_isaMask & *self) + 0x148);
  v3 = self;
  v2();

  sub_1000C8C30(&unk_1001BD030, &qword_10015D290);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (APSMetricEvent)failureMetric
{
  type metadata accessor for ClientIdentityMetric.FailureMetric();
  v3 = swift_allocObject();
  v3[2] = 0xD000000000000018;
  v3[3] = 0x8000000100156EB0;
  v3[4] = self;
  v4 = self;

  return v3;
}

- (NSString)name
{
  v2 = (self + OBJC_IVAR___APSClientIdentityMetric_name);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (void)setName:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR___APSClientIdentityMetric_name);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = self;
  ClientIdentityMetric.dictionaryRepresentation.getter();

  sub_1000C8C30(&unk_1001BD630, &unk_10015DAA0);
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (APSClientIdentityMetric)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end