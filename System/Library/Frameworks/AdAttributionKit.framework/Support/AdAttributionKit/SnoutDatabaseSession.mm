@interface SnoutDatabaseSession
- (_TtC20AttributionKitDaemon20SnoutDatabaseSession)init;
- (_TtC20AttributionKitDaemon20SnoutDatabaseSession)initWithConnection:(id)a3;
@end

@implementation SnoutDatabaseSession

- (_TtC20AttributionKitDaemon20SnoutDatabaseSession)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SnoutDatabaseSession();
  return [(SnoutDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon20SnoutDatabaseSession)initWithConnection:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SnoutDatabaseSession();
  return [(SQLiteDatabaseSession *)&v5 initWithConnection:a3];
}

@end