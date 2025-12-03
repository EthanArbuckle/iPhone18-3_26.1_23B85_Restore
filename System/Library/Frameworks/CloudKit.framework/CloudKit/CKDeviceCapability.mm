@interface CKDeviceCapability
+ (id)fromSqliteRepresentation:(id)representation;
+ (id)fromSqliteRepresentations:(id)representations;
+ (id)pruneAndSort:(id)sort;
+ (id)sqliteRepresentations:(id)representations;
- (CKDeviceCapability)initWithLevel:(int)level name:(id)name value:(id)value;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKDeviceCapability

+ (id)fromSqliteRepresentations:(id)representations
{
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  static CKDeviceCapability.fromSqliteRepresentations(_:)(v3);

  type metadata accessor for CKDeviceCapability(v4);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

+ (id)fromSqliteRepresentation:(id)representation
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static CKDeviceCapability.fromSqliteRepresentation(_:)();
  v4 = v3;

  return v4;
}

- (CKDeviceCapability)initWithLevel:(int)level name:(id)name value:(id)value
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return CKDeviceCapability.init(level:name:value:)();
}

+ (id)sqliteRepresentations:(id)representations
{
  type metadata accessor for CKDeviceCapability(self);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static CKDeviceCapability.sqliteRepresentations(_:)(v3);

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

+ (id)pruneAndSort:(id)sort
{
  type metadata accessor for CKDeviceCapability(self);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static CKDeviceCapability.pruneAndSort(_:)(v3);

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CKDeviceCapability.encode(with:)(coderCopy);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CKDeviceCapability.hash.getter();

  return v3;
}

@end