@interface AppLaunchDatabaseTransaction
- (_TtC20AttributionKitDaemon28AppLaunchDatabaseTransaction)init;
- (_TtC20AttributionKitDaemon28AppLaunchDatabaseTransaction)initWithConnection:(id)a3;
@end

@implementation AppLaunchDatabaseTransaction

- (_TtC20AttributionKitDaemon28AppLaunchDatabaseTransaction)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AppLaunchDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon28AppLaunchDatabaseTransaction)initWithConnection:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(AppLaunchDatabaseSession *)&v5 initWithConnection:a3];
}

@end