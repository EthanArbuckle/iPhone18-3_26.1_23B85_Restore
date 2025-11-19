@interface CKDeviceCapability
+ (id)fromSqliteRepresentation:(id)a3;
+ (id)fromSqliteRepresentations:(id)a3;
+ (id)pruneAndSort:(id)a3;
+ (id)sqliteRepresentations:(id)a3;
- (CKDeviceCapability)initWithLevel:(int)a3 name:(id)a4 value:(id)a5;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKDeviceCapability

+ (id)fromSqliteRepresentations:(id)a3
{
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  static CKDeviceCapability.fromSqliteRepresentations(_:)(v3);

  type metadata accessor for CKDeviceCapability(v4);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

+ (id)fromSqliteRepresentation:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static CKDeviceCapability.fromSqliteRepresentation(_:)();
  v4 = v3;

  return v4;
}

- (CKDeviceCapability)initWithLevel:(int)a3 name:(id)a4 value:(id)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return CKDeviceCapability.init(level:name:value:)();
}

+ (id)sqliteRepresentations:(id)a3
{
  type metadata accessor for CKDeviceCapability(a1);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static CKDeviceCapability.sqliteRepresentations(_:)(v3);

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

+ (id)pruneAndSort:(id)a3
{
  type metadata accessor for CKDeviceCapability(a1);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static CKDeviceCapability.pruneAndSort(_:)(v3);

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CKDeviceCapability.encode(with:)(v4);
}

- (int64_t)hash
{
  v2 = self;
  v3 = CKDeviceCapability.hash.getter();

  return v3;
}

@end