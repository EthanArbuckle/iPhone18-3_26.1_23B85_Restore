@interface AAIDSessionKind
- (AAIDSessionKind)init;
- (AAIDSessionKind)initWithKind:(int64_t)kind name:(id)name;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
@end

@implementation AAIDSessionKind

- (AAIDSessionKind)initWithKind:(int64_t)kind name:(id)name
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    v8 = sub_1B6AB92E0();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  *(&self->super.isa + OBJC_IVAR___AAIDSessionKind_kind) = kind;
  v10 = (self + OBJC_IVAR___AAIDSessionKind_name);
  *v10 = v8;
  v10[1] = v9;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(AAIDSessionKind *)&v12 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = BridgedIDSessionKind.isEqual(_:)(v8);

  sub_1B6981634(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  sub_1B6ABA240();
  MEMORY[0x1B8C98A40](*(&self->super.isa + OBJC_IVAR___AAIDSessionKind_kind));
  if (*&self->kind[OBJC_IVAR___AAIDSessionKind_name])
  {
    v3 = *(&self->super.isa + OBJC_IVAR___AAIDSessionKind_name);
    sub_1B6ABA210();
    selfCopy = self;
    sub_1B6AB9380();
  }

  else
  {
    sub_1B6ABA210();
    selfCopy2 = self;
  }

  v6 = sub_1B6ABA220();

  return v6;
}

- (AAIDSessionKind)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithZone:(void *)zone
{
  ObjectType = swift_getObjectType();
  v5 = *(&self->super.isa + OBJC_IVAR___AAIDSessionKind_kind);
  v7 = *(&self->super.isa + OBJC_IVAR___AAIDSessionKind_name);
  v6 = *&self->kind[OBJC_IVAR___AAIDSessionKind_name];
  v8 = objc_allocWithZone(ObjectType);
  *&v8[OBJC_IVAR___AAIDSessionKind_kind] = v5;
  v9 = &v8[OBJC_IVAR___AAIDSessionKind_name];
  *v9 = v7;
  *(v9 + 1) = v6;
  v11.receiver = v8;
  v11.super_class = ObjectType;

  return [(AAIDSessionKind *)&v11 init];
}

@end