@interface ConversionHistoryDatabaseTransaction
- (_TtC20AttributionKitDaemon36ConversionHistoryDatabaseTransaction)init;
- (_TtC20AttributionKitDaemon36ConversionHistoryDatabaseTransaction)initWithConnection:(id)connection;
@end

@implementation ConversionHistoryDatabaseTransaction

- (_TtC20AttributionKitDaemon36ConversionHistoryDatabaseTransaction)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ConversionHistoryDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon36ConversionHistoryDatabaseTransaction)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(ConversionHistoryDatabaseSession *)&v5 initWithConnection:connection];
}

@end