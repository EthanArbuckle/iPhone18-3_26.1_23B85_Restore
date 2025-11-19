@interface PointerIdentifier
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier)init;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
@end

@implementation PointerIdentifier

- (id)copyWithZone:(void *)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base);
  v4 = type metadata accessor for PointerIdentifier();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base] = v3;
  v7.receiver = v5;
  v7.super_class = v4;

  return [(PointerIdentifier *)&v7 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = PointerIdentifier.isEqual(_:)(v8);

  outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for Any?);
  return v6;
}

- (int64_t)hash
{
  Hasher.init()();
  MEMORY[0x18D00F6F0](*(&self->super.isa + OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base));
  return Hasher.finalize()();
}

- (NSString)description
{
  v2 = self;
  v3 = PointerIdentifier.description.getter();
  v5 = v4;

  v6 = MEMORY[0x18D00C850](v3, v5);

  return v6;
}

- (_TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end