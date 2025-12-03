@interface TokenDatabaseTransaction
- (_TtC20AttributionKitDaemon24TokenDatabaseTransaction)init;
- (_TtC20AttributionKitDaemon24TokenDatabaseTransaction)initWithConnection:(id)connection;
@end

@implementation TokenDatabaseTransaction

- (_TtC20AttributionKitDaemon24TokenDatabaseTransaction)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TokenDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon24TokenDatabaseTransaction)initWithConnection:(id)connection
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(TokenDatabaseSession *)&v5 initWithConnection:connection];
}

@end