@interface __NSConcreteUUID
- (Class)classForCoder;
- (NSString)UUIDString;
- (NSString)debugDescription;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation __NSConcreteUUID

- (NSString)description
{
  selfCopy = self;
  uUIDString = [(__NSConcreteUUID *)selfCopy UUIDString];
  static String._unconditionallyBridgeFromObjectiveC(_:)(uUIDString);

  v4 = String._bridgeToObjectiveCImpl()();

  return v4;
}

- (NSString)UUIDString
{
  UUID.uuidString.getter();
  v2 = String._bridgeToObjectiveCImpl()();

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(&self->super.super.super.isa + OBJC_IVAR_____NSConcreteUUID__storage);
  v5 = String._bridgeToObjectiveCImpl()();
  coderCopy = coder;
  selfCopy = self;
  [coderCopy encodeBytes:&v8 length:16 forKey:v5];

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
  selfCopy = self;
  closure #1 in __NSConcreteUUID.debugDescription.getter(selfCopy, v6);

  v4 = String._bridgeToObjectiveCImpl()();

  return v4;
}

@end