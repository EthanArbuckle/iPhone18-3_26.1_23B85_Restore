@interface AppMetadataDatabaseTransaction
- (_TtC20AttributionKitDaemon30AppMetadataDatabaseTransaction)init;
- (_TtC20AttributionKitDaemon30AppMetadataDatabaseTransaction)initWithConnection:(id)connection;
@end

@implementation AppMetadataDatabaseTransaction

- (_TtC20AttributionKitDaemon30AppMetadataDatabaseTransaction)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AppMetadataDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon30AppMetadataDatabaseTransaction)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(AppMetadataDatabaseSession *)&v5 initWithConnection:connection];
}

@end