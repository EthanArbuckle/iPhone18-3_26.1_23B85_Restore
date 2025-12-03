@interface GhostbackDatabaseSession
- (_TtC20AttributionKitDaemon24GhostbackDatabaseSession)init;
- (_TtC20AttributionKitDaemon24GhostbackDatabaseSession)initWithConnection:(id)connection;
@end

@implementation GhostbackDatabaseSession

- (_TtC20AttributionKitDaemon24GhostbackDatabaseSession)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GhostbackDatabaseSession();
  return [(GhostbackDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon24GhostbackDatabaseSession)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for GhostbackDatabaseSession();
  return [(SQLiteDatabaseSession *)&v5 initWithConnection:connection];
}

@end