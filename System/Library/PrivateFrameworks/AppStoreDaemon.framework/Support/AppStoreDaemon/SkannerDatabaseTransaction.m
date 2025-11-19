@interface SkannerDatabaseTransaction
- (_TtC9appstored26SkannerDatabaseTransaction)initWithConnection:(id)a3;
@end

@implementation SkannerDatabaseTransaction

- (_TtC9appstored26SkannerDatabaseTransaction)initWithConnection:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SkannerDatabaseSession();
  v4 = a3;
  return [(SkannerDatabaseSession *)&v6 init];
}

@end