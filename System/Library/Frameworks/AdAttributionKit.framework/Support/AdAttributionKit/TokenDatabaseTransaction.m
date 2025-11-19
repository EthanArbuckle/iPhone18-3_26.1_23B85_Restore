@interface TokenDatabaseTransaction
- (_TtC20AttributionKitDaemon24TokenDatabaseTransaction)init;
- (_TtC20AttributionKitDaemon24TokenDatabaseTransaction)initWithConnection:(id)a3;
@end

@implementation TokenDatabaseTransaction

- (_TtC20AttributionKitDaemon24TokenDatabaseTransaction)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TokenDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon24TokenDatabaseTransaction)initWithConnection:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(TokenDatabaseSession *)&v5 initWithConnection:a3];
}

@end