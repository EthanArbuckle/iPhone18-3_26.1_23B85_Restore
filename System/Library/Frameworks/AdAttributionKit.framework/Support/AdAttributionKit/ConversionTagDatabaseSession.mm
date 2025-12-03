@interface ConversionTagDatabaseSession
- (_TtC20AttributionKitDaemon28ConversionTagDatabaseSession)init;
- (_TtC20AttributionKitDaemon28ConversionTagDatabaseSession)initWithConnection:(id)connection;
@end

@implementation ConversionTagDatabaseSession

- (_TtC20AttributionKitDaemon28ConversionTagDatabaseSession)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConversionTagDatabaseSession();
  return [(ConversionTagDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon28ConversionTagDatabaseSession)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ConversionTagDatabaseSession();
  return [(SQLiteDatabaseSession *)&v5 initWithConnection:connection];
}

@end