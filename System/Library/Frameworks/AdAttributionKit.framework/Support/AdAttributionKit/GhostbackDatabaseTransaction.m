@interface GhostbackDatabaseTransaction
- (_TtC20AttributionKitDaemon28GhostbackDatabaseTransaction)init;
- (_TtC20AttributionKitDaemon28GhostbackDatabaseTransaction)initWithConnection:(id)a3;
@end

@implementation GhostbackDatabaseTransaction

- (_TtC20AttributionKitDaemon28GhostbackDatabaseTransaction)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(GhostbackDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon28GhostbackDatabaseTransaction)initWithConnection:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(GhostbackDatabaseSession *)&v5 initWithConnection:a3];
}

@end