@interface PKStrokeProviderSliceIdentifierCoherence
- (NSString)description;
- (PKStrokeProviderSliceIdentifierCoherence)init;
- (PKStrokeProviderSliceIdentifierCoherence)initWithUUID:(id)a3 tStart:(double)a4 tEnd:(double)a5;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKStrokeProviderSliceIdentifierCoherence

- (int64_t)hash
{
  v2 = self;
  v3 = PKStrokeProviderSliceIdentifierCoherence.hash.getter();

  return v3;
}

- (NSString)description
{
  v2 = self;
  v3 = PKStrokeProviderSliceIdentifierCoherence.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1DA6CCED0](v3, v5);

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  PKStrokeProviderSliceIdentifierCoherence.encode(with:)(v4);
}

- (PKStrokeProviderSliceIdentifierCoherence)initWithUUID:(id)a3 tStart:(double)a4 tEnd:(double)a5
{
  v5 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v5 - 8);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (PKStrokeProviderSliceIdentifierCoherence)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end