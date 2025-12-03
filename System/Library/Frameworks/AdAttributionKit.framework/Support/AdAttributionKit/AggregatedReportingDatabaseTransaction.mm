@interface AggregatedReportingDatabaseTransaction
- (_TtC20AttributionKitDaemon38AggregatedReportingDatabaseTransaction)init;
- (_TtC20AttributionKitDaemon38AggregatedReportingDatabaseTransaction)initWithConnection:(id)connection;
@end

@implementation AggregatedReportingDatabaseTransaction

- (_TtC20AttributionKitDaemon38AggregatedReportingDatabaseTransaction)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AggregatedReportingDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon38AggregatedReportingDatabaseTransaction)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(AggregatedReportingDatabaseSession *)&v5 initWithConnection:connection];
}

@end