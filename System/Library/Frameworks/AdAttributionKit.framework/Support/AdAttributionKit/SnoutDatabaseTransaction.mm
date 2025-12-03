@interface SnoutDatabaseTransaction
- (_TtC20AttributionKitDaemon24SnoutDatabaseTransaction)init;
- (_TtC20AttributionKitDaemon24SnoutDatabaseTransaction)initWithConnection:(id)connection;
@end

@implementation SnoutDatabaseTransaction

- (_TtC20AttributionKitDaemon24SnoutDatabaseTransaction)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SnoutDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon24SnoutDatabaseTransaction)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(SnoutDatabaseSession *)&v5 initWithConnection:connection];
}

@end