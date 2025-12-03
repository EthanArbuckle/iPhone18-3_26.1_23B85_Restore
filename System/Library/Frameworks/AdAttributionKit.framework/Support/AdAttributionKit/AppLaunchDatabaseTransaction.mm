@interface AppLaunchDatabaseTransaction
- (_TtC20AttributionKitDaemon28AppLaunchDatabaseTransaction)init;
- (_TtC20AttributionKitDaemon28AppLaunchDatabaseTransaction)initWithConnection:(id)connection;
@end

@implementation AppLaunchDatabaseTransaction

- (_TtC20AttributionKitDaemon28AppLaunchDatabaseTransaction)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AppLaunchDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon28AppLaunchDatabaseTransaction)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(AppLaunchDatabaseSession *)&v5 initWithConnection:connection];
}

@end