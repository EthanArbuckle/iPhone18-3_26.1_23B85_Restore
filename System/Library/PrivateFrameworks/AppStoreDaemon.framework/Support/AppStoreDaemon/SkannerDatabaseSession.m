@interface SkannerDatabaseSession
- (_TtC9appstored22SkannerDatabaseSession)init;
- (_TtC9appstored22SkannerDatabaseSession)initWithConnection:(id)a3;
- (void)setConnection:(id)a3;
@end

@implementation SkannerDatabaseSession

- (void)setConnection:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection);
  *(&self->super.isa + OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection) = a3;
  v3 = a3;
}

- (_TtC9appstored22SkannerDatabaseSession)initWithConnection:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SkannerDatabaseSession();
  v4 = a3;
  return [(SkannerDatabaseSession *)&v6 init];
}

- (_TtC9appstored22SkannerDatabaseSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end