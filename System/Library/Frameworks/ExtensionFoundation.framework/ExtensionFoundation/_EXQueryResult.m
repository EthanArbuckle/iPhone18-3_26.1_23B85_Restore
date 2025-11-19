@interface _EXQueryResult
- (NSSet)identities;
- (_EXQueryResult)init;
- (_EXQueryResult)initWithAvailablility:(id)a3;
- (_EXQueryResult)initWithCoder:(id)a3;
- (_EXQueryResult)initWithIdentities:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _EXQueryResult

- (_EXQueryResult)init
{
  *(self + OBJC_IVAR____EXQueryResult_identities) = MEMORY[0x1E69E7CD0];
  *(self + OBJC_IVAR____EXQueryResult_availablility) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for _EXQueryResult();
  return [(_EXQueryResult *)&v3 init];
}

- (_EXQueryResult)initWithIdentities:(id)a3
{
  type metadata accessor for _EXExtensionIdentity();
  _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);
  *(self + OBJC_IVAR____EXQueryResult_identities) = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____EXQueryResult_availablility) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for _EXQueryResult();
  return [(_EXQueryResult *)&v5 init];
}

- (_EXQueryResult)initWithAvailablility:(id)a3
{
  *(self + OBJC_IVAR____EXQueryResult_identities) = 0;
  *(self + OBJC_IVAR____EXQueryResult_availablility) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for _EXQueryResult();
  v4 = a3;
  return [(_EXQueryResult *)&v6 init];
}

- (_EXQueryResult)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized _EXQueryResult.init(coder:)();

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _EXQueryResult.encode(with:)(v4);
}

- (NSSet)identities
{
  if (*(self + OBJC_IVAR____EXQueryResult_identities))
  {
    type metadata accessor for _EXExtensionIdentity();
    _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);

    v2.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

@end