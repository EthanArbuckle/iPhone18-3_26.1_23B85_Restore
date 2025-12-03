@interface SkannerDatabaseTransaction
- (_TtC9appstored26SkannerDatabaseTransaction)initWithConnection:(id)connection;
@end

@implementation SkannerDatabaseTransaction

- (_TtC9appstored26SkannerDatabaseTransaction)initWithConnection:(id)connection
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection) = connection;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SkannerDatabaseSession();
  connectionCopy = connection;
  return [(SkannerDatabaseSession *)&v6 init];
}

@end