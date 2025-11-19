@interface ConversionHistoryDatabaseTransaction
- (_TtC20AttributionKitDaemon36ConversionHistoryDatabaseTransaction)init;
- (_TtC20AttributionKitDaemon36ConversionHistoryDatabaseTransaction)initWithConnection:(id)a3;
@end

@implementation ConversionHistoryDatabaseTransaction

- (_TtC20AttributionKitDaemon36ConversionHistoryDatabaseTransaction)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ConversionHistoryDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon36ConversionHistoryDatabaseTransaction)initWithConnection:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(ConversionHistoryDatabaseSession *)&v5 initWithConnection:a3];
}

@end