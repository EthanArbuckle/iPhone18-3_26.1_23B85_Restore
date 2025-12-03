@interface SkannerDatabaseSession
- (_TtC9appstored22SkannerDatabaseSession)init;
- (_TtC9appstored22SkannerDatabaseSession)initWithConnection:(id)connection;
- (void)setConnection:(id)connection;
@end

@implementation SkannerDatabaseSession

- (void)setConnection:(id)connection
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection);
  *(&self->super.isa + OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection) = connection;
  connectionCopy = connection;
}

- (_TtC9appstored22SkannerDatabaseSession)initWithConnection:(id)connection
{
  *(&self->super.isa + OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection) = connection;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SkannerDatabaseSession();
  connectionCopy = connection;
  return [(SkannerDatabaseSession *)&v6 init];
}

- (_TtC9appstored22SkannerDatabaseSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end