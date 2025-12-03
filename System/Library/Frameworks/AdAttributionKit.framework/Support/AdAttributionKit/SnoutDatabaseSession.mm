@interface SnoutDatabaseSession
- (_TtC20AttributionKitDaemon20SnoutDatabaseSession)init;
- (_TtC20AttributionKitDaemon20SnoutDatabaseSession)initWithConnection:(id)connection;
@end

@implementation SnoutDatabaseSession

- (_TtC20AttributionKitDaemon20SnoutDatabaseSession)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SnoutDatabaseSession();
  return [(SnoutDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon20SnoutDatabaseSession)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SnoutDatabaseSession();
  return [(SQLiteDatabaseSession *)&v5 initWithConnection:connection];
}

@end