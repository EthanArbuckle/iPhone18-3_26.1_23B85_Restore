@interface RetryCountDatabaseSession
- (_TtC20AttributionKitDaemon25RetryCountDatabaseSession)init;
- (_TtC20AttributionKitDaemon25RetryCountDatabaseSession)initWithConnection:(id)connection;
@end

@implementation RetryCountDatabaseSession

- (_TtC20AttributionKitDaemon25RetryCountDatabaseSession)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RetryCountDatabaseSession();
  return [(RetryCountDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon25RetryCountDatabaseSession)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for RetryCountDatabaseSession();
  return [(SQLiteDatabaseSession *)&v5 initWithConnection:connection];
}

@end