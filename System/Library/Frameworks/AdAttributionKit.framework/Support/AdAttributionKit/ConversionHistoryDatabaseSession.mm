@interface ConversionHistoryDatabaseSession
- (_TtC20AttributionKitDaemon32ConversionHistoryDatabaseSession)init;
- (_TtC20AttributionKitDaemon32ConversionHistoryDatabaseSession)initWithConnection:(id)a3;
@end

@implementation ConversionHistoryDatabaseSession

- (_TtC20AttributionKitDaemon32ConversionHistoryDatabaseSession)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConversionHistoryDatabaseSession();
  return [(ConversionHistoryDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon32ConversionHistoryDatabaseSession)initWithConnection:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ConversionHistoryDatabaseSession();
  return [(SQLiteDatabaseSession *)&v5 initWithConnection:a3];
}

@end