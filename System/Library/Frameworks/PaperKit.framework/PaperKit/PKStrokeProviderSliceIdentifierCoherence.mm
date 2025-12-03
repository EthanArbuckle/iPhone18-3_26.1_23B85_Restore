@interface PKStrokeProviderSliceIdentifierCoherence
- (NSString)description;
- (PKStrokeProviderSliceIdentifierCoherence)init;
- (PKStrokeProviderSliceIdentifierCoherence)initWithUUID:(id)d tStart:(double)start tEnd:(double)end;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKStrokeProviderSliceIdentifierCoherence

- (int64_t)hash
{
  selfCopy = self;
  v3 = PKStrokeProviderSliceIdentifierCoherence.hash.getter();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  v3 = PKStrokeProviderSliceIdentifierCoherence.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1DA6CCED0](v3, v5);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PKStrokeProviderSliceIdentifierCoherence.encode(with:)(coderCopy);
}

- (PKStrokeProviderSliceIdentifierCoherence)initWithUUID:(id)d tStart:(double)start tEnd:(double)end
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