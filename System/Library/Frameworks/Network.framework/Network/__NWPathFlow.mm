@interface __NWPathFlow
- (NSString)description;
- (_TtC7Network12__NWPathFlow)init;
- (void)dealloc;
@end

@implementation __NWPathFlow

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7Network12__NWPathFlow_keyStorage);
  selfCopy = self;
  if (v4)
  {
    MEMORY[0x1865DF520](v4, -1, -1);
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(__NWPathFlow *)&v6 dealloc];
}

- (NSString)description
{
  swift_beginAccess();
  PathFlow.debugDescription.getter();
  v2 = sub_182AD2F58();

  return v2;
}

- (_TtC7Network12__NWPathFlow)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end