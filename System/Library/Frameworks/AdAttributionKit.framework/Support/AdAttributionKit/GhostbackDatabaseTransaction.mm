@interface GhostbackDatabaseTransaction
- (_TtC20AttributionKitDaemon28GhostbackDatabaseTransaction)init;
- (_TtC20AttributionKitDaemon28GhostbackDatabaseTransaction)initWithConnection:(id)connection;
@end

@implementation GhostbackDatabaseTransaction

- (_TtC20AttributionKitDaemon28GhostbackDatabaseTransaction)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(GhostbackDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon28GhostbackDatabaseTransaction)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(GhostbackDatabaseSession *)&v5 initWithConnection:connection];
}

@end