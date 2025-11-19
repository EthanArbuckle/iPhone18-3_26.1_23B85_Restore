@interface CHEffortSampleCollection
- (CHEffortSampleCollection)init;
- (CHEffortSampleCollection)initWithEffortSample:(id)a3 estimatedEffortSample:(id)a4;
- (CHEffortSampleCollection)initWithQuantitySamples:(id)a3;
- (CHEffortSampleCollection)initWithSamples:(id)a3;
- (HKQuantity)preferredQuantity;
- (HKQuantitySample)preferredSample;
@end

@implementation CHEffortSampleCollection

- (CHEffortSampleCollection)initWithEffortSample:(id)a3 estimatedEffortSample:(id)a4
{
  objc_allocWithZone(type metadata accessor for EffortSampleCollection());
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = v8;
  *(&self->super.isa + OBJC_IVAR___CHEffortSampleCollection_collection) = EffortSampleCollection.init(effortSample:estimatedEffortSample:)();
  v13.receiver = self;
  v13.super_class = type metadata accessor for CHEffortSampleCollection();
  v11 = [(CHEffortSampleCollection *)&v13 init];

  return v11;
}

- (CHEffortSampleCollection)initWithQuantitySamples:(id)a3
{
  sub_1000059F8(0, &qword_1008EE6F0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for EffortUtilities();
  v4 = static EffortUtilities.effortSampleCollection(for:)();

  *(&self->super.isa + OBJC_IVAR___CHEffortSampleCollection_collection) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CHEffortSampleCollection();
  return [(CHEffortSampleCollection *)&v6 init];
}

- (CHEffortSampleCollection)initWithSamples:(id)a3
{
  sub_1000059F8(0, &qword_1008E04D0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1001FE1D4(v3);
}

- (HKQuantitySample)preferredSample
{
  v2 = self;
  v3 = dispatch thunk of EffortSampleCollection.preferredSample.getter();

  return v3;
}

- (HKQuantity)preferredQuantity
{
  v2 = self;
  v3 = dispatch thunk of EffortSampleCollection.preferredQuantity.getter();

  return v3;
}

- (CHEffortSampleCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end