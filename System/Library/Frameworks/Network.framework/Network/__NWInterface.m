@interface __NWInterface
- (NSString)description;
- (_TtC7Network13__NWInterface)init;
- (void)dealloc;
@end

@implementation __NWInterface

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7Network13__NWInterface_nameStorage);
  v5 = self;
  if (v4)
  {
    MEMORY[0x1865DF520](v4, -1, -1);
  }

  MEMORY[0x1865DF520](*(&self->super.isa + OBJC_IVAR____TtC7Network13__NWInterface_lock), -1, -1);
  v6.receiver = self;
  v6.super_class = ObjectType;
  [(__NWInterface *)&v6 dealloc];
}

- (NSString)description
{

  v2 = sub_182AD2F58();

  return v2;
}

- (_TtC7Network13__NWInterface)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end