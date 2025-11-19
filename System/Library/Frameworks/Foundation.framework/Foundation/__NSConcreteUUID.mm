@interface __NSConcreteUUID
- (Class)classForCoder;
- (NSString)UUIDString;
- (NSString)debugDescription;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation __NSConcreteUUID

- (NSString)description
{
  v2 = self;
  v3 = [(__NSConcreteUUID *)v2 UUIDString];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v3);

  v4 = String._bridgeToObjectiveCImpl()();

  return v4;
}

- (NSString)UUIDString
{
  UUID.uuidString.getter();
  v2 = String._bridgeToObjectiveCImpl()();

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(&self->super.super.super.isa + OBJC_IVAR_____NSConcreteUUID__storage);
  v5 = String._bridgeToObjectiveCImpl()();
  v6 = a3;
  v7 = self;
  [v6 encodeBytes:&v8 length:16 forKey:v5];

  swift_unknownObjectRelease();
}

- (Class)classForCoder
{
  type metadata accessor for NSUUID();

  return swift_getObjCClassFromMetadata();
}

- (NSString)debugDescription
{
  v6[2] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v3 = self;
  closure #1 in __NSConcreteUUID.debugDescription.getter(v3, v6);

  v4 = String._bridgeToObjectiveCImpl()();

  return v4;
}

@end