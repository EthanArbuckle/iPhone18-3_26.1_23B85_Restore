@interface APDaemonPersistentContainer
- (_TtC13AppProtection27APDaemonPersistentContainer)init;
- (_TtC13AppProtection27APDaemonPersistentContainer)initWithName:(id)name managedObjectModel:(id)model;
@end

@implementation APDaemonPersistentContainer

- (_TtC13AppProtection27APDaemonPersistentContainer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) = 1;
  v3 = sub_185B67E1C();
  sub_185B28A90();
  v5 = v4;
  v8.receiver = self;
  v8.super_class = type metadata accessor for APDaemonPersistentContainer();
  v6 = [(NSPersistentContainer *)&v8 initWithName:v3 managedObjectModel:v5];

  return v6;
}

- (_TtC13AppProtection27APDaemonPersistentContainer)initWithName:(id)name managedObjectModel:(id)model
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end