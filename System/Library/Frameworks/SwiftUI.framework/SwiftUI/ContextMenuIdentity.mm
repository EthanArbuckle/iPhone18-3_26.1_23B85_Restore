@interface ContextMenuIdentity
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC7SwiftUI19ContextMenuIdentity)init;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
@end

@implementation ContextMenuIdentity

- (id)copyWithZone:(void *)zone
{
  ObjectType = swift_getObjectType();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_base);
  v6 = objc_allocWithZone(ObjectType);
  v7 = OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_sourceIndexPath;
  v8 = type metadata accessor for IndexPath();
  (*(*(v8 - 8) + 56))(&v6[v7], 1, 1, v8);
  *&v6[OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_base] = v5;
  v10.receiver = v6;
  v10.super_class = ObjectType;

  return [(ContextMenuIdentity *)&v10 init];
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

  v6 = ContextMenuIdentity.isEqual(_:)(v8);

  outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for Any?);
  return v6;
}

- (int64_t)hash
{
  Hasher.init()();
  MEMORY[0x18D00F6F0](*(&self->super.isa + OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_base));
  return Hasher.finalize()();
}

- (NSString)description
{
  selfCopy = self;
  v3 = ContextMenuIdentity.description.getter();
  v5 = v4;

  v6 = MEMORY[0x18D00C850](v3, v5);

  return v6;
}

- (_TtC7SwiftUI19ContextMenuIdentity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end