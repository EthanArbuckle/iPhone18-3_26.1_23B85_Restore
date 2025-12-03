@interface RetryCountDatabaseTransaction
- (_TtC20AttributionKitDaemon29RetryCountDatabaseTransaction)init;
- (_TtC20AttributionKitDaemon29RetryCountDatabaseTransaction)initWithConnection:(id)connection;
@end

@implementation RetryCountDatabaseTransaction

- (_TtC20AttributionKitDaemon29RetryCountDatabaseTransaction)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(RetryCountDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon29RetryCountDatabaseTransaction)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(RetryCountDatabaseSession *)&v5 initWithConnection:connection];
}

@end