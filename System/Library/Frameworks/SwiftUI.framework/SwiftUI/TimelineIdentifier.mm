@interface TimelineIdentifier
- (BOOL)isEqual:(id)equal;
- (_TtC7SwiftUI18TimelineIdentifier)init;
- (int64_t)hash;
@end

@implementation TimelineIdentifier

- (_TtC7SwiftUI18TimelineIdentifier)init
{
  ObjectType = swift_getObjectType();
  UniqueID.init()();
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI18TimelineIdentifier_identifier) = v6;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(TimelineIdentifier *)&v5 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = TimelineIdentifier.isEqual(_:)(v8);

  _sypSgWOhTm_6(v8, type metadata accessor for Any?);
  return v6;
}

- (int64_t)hash
{
  Hasher.init()();
  MEMORY[0x18D00F6F0](*(&self->super.isa + OBJC_IVAR____TtC7SwiftUI18TimelineIdentifier_identifier));
  return Hasher.finalize()();
}

@end