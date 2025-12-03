@interface AppLaunchDatabaseSession
- (_TtC20AttributionKitDaemon24AppLaunchDatabaseSession)init;
- (_TtC20AttributionKitDaemon24AppLaunchDatabaseSession)initWithConnection:(id)connection;
@end

@implementation AppLaunchDatabaseSession

- (_TtC20AttributionKitDaemon24AppLaunchDatabaseSession)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppLaunchDatabaseSession();
  return [(AppLaunchDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon24AppLaunchDatabaseSession)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppLaunchDatabaseSession();
  return [(SQLiteDatabaseSession *)&v5 initWithConnection:connection];
}

@end