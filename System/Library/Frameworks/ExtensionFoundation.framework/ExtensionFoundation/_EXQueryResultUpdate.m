@interface _EXQueryResultUpdate
- (NSSet)addedExtensions;
- (NSSet)removedUUIDs;
- (NSString)description;
- (_EXQueryResultUpdate)init;
- (_EXQueryResultUpdate)initWithAddedExtensions:(id)a3 removedUUIDs:(id)a4;
- (_EXQueryResultUpdate)initWithAvailablility:(id)a3;
- (_EXQueryResultUpdate)initWithCurrentExtensions:(id)a3 updatedExtensions:(id)a4;
- (_EXQueryResultUpdate)initWithIdentities:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _EXQueryResultUpdate

- (_EXQueryResultUpdate)initWithAddedExtensions:(id)a3 removedUUIDs:(id)a4
{
  type metadata accessor for _EXExtensionIdentity();
  _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for UUID();
  _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  *(self + OBJC_IVAR____EXQueryResultUpdate_removedUUIDs) = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____EXQueryResult_identities) = v5;
  *(self + OBJC_IVAR____EXQueryResult_availablility) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for _EXQueryResult();
  return [(_EXQueryResult *)&v7 init];
}

- (NSSet)removedUUIDs
{
  v2 = *(self + OBJC_IVAR____EXQueryResultUpdate_removedUUIDs);
  type metadata accessor for UUID();
  _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);

  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_EXQueryResultUpdate)initWithAvailablility:(id)a3
{
  *(self + OBJC_IVAR____EXQueryResultUpdate_removedUUIDs) = MEMORY[0x1E69E7CD0];
  *(self + OBJC_IVAR____EXQueryResult_identities) = 0;
  *(self + OBJC_IVAR____EXQueryResult_availablility) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for _EXQueryResult();
  v4 = a3;
  return [(_EXQueryResult *)&v6 init];
}

- (_EXQueryResultUpdate)initWithIdentities:(id)a3
{
  type metadata accessor for _EXExtensionIdentity();
  _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____EXQueryResultUpdate_removedUUIDs) = MEMORY[0x1E69E7CD0];
  *(self + OBJC_IVAR____EXQueryResult_identities) = v4;
  *(self + OBJC_IVAR____EXQueryResult_availablility) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for _EXQueryResult();
  return [(_EXQueryResult *)&v6 init];
}

- (_EXQueryResultUpdate)initWithCurrentExtensions:(id)a3 updatedExtensions:(id)a4
{
  type metadata accessor for _EXExtensionIdentity();
  _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _EXQueryResultUpdate.init(currentExtensions:updatedExtensions:)(v4, v5);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(self + OBJC_IVAR____EXQueryResultUpdate_removedUUIDs);
  v5 = a3;
  v9 = self;

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_ShyAFGTt0g5(v6);
  type metadata accessor for UUID();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = MEMORY[0x1865F36D0](0x556465766F6D6572, 0xEC00000073444955);
  [v5 encodeObject:isa forKey:v8];

  _EXQueryResult.encode(with:)(v5);
}

- (NSSet)addedExtensions
{
  if (*(self + OBJC_IVAR____EXQueryResult_identities))
  {
    v2 = *(self + OBJC_IVAR____EXQueryResult_identities);
  }

  type metadata accessor for _EXExtensionIdentity();
  _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);

  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSString)description
{
  v2 = self;
  v3 = _EXQueryResultUpdate.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1865F36D0](v3, v5);

  return v6;
}

- (_EXQueryResultUpdate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end