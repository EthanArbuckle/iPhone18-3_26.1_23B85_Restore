@interface ImpressionDatabaseTransaction
- (_TtC20AttributionKitDaemon29ImpressionDatabaseTransaction)init;
- (_TtC20AttributionKitDaemon29ImpressionDatabaseTransaction)initWithConnection:(id)connection;
@end

@implementation ImpressionDatabaseTransaction

- (_TtC20AttributionKitDaemon29ImpressionDatabaseTransaction)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ImpressionDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon29ImpressionDatabaseTransaction)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(ImpressionDatabaseSession *)&v5 initWithConnection:connection];
}

@end