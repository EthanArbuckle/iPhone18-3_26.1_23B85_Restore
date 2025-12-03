@interface _EXQueryResult
- (NSSet)identities;
- (_EXQueryResult)init;
- (_EXQueryResult)initWithAvailablility:(id)availablility;
- (_EXQueryResult)initWithCoder:(id)coder;
- (_EXQueryResult)initWithIdentities:(id)identities;
- (void)encodeWithCoder:(id)coder;
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

- (_EXQueryResult)initWithIdentities:(id)identities
{
  type metadata accessor for _EXExtensionIdentity();
  _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);
  *(self + OBJC_IVAR____EXQueryResult_identities) = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____EXQueryResult_availablility) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for _EXQueryResult();
  return [(_EXQueryResult *)&v5 init];
}

- (_EXQueryResult)initWithAvailablility:(id)availablility
{
  *(self + OBJC_IVAR____EXQueryResult_identities) = 0;
  *(self + OBJC_IVAR____EXQueryResult_availablility) = availablility;
  v6.receiver = self;
  v6.super_class = type metadata accessor for _EXQueryResult();
  availablilityCopy = availablility;
  return [(_EXQueryResult *)&v6 init];
}

- (_EXQueryResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized _EXQueryResult.init(coder:)();

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _EXQueryResult.encode(with:)(coderCopy);
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