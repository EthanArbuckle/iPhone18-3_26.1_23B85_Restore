@interface AggregatedReportingDatabaseSession
- (_TtC20AttributionKitDaemon34AggregatedReportingDatabaseSession)init;
- (_TtC20AttributionKitDaemon34AggregatedReportingDatabaseSession)initWithConnection:(id)connection;
@end

@implementation AggregatedReportingDatabaseSession

- (_TtC20AttributionKitDaemon34AggregatedReportingDatabaseSession)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AggregatedReportingDatabaseSession();
  return [(AggregatedReportingDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon34AggregatedReportingDatabaseSession)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AggregatedReportingDatabaseSession();
  return [(SQLiteDatabaseSession *)&v5 initWithConnection:connection];
}

@end