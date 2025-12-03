@interface AppMetadataDatabaseSession
- (_TtC20AttributionKitDaemon26AppMetadataDatabaseSession)init;
- (_TtC20AttributionKitDaemon26AppMetadataDatabaseSession)initWithConnection:(id)connection;
@end

@implementation AppMetadataDatabaseSession

- (_TtC20AttributionKitDaemon26AppMetadataDatabaseSession)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppMetadataDatabaseSession();
  return [(AppMetadataDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon26AppMetadataDatabaseSession)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppMetadataDatabaseSession();
  return [(SQLiteDatabaseSession *)&v5 initWithConnection:connection];
}

@end