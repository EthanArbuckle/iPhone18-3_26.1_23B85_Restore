@interface TokenDatabaseSession
- (_TtC20AttributionKitDaemon20TokenDatabaseSession)init;
- (_TtC20AttributionKitDaemon20TokenDatabaseSession)initWithConnection:(id)a3;
@end

@implementation TokenDatabaseSession

- (_TtC20AttributionKitDaemon20TokenDatabaseSession)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TokenDatabaseSession();
  return [(TokenDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon20TokenDatabaseSession)initWithConnection:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TokenDatabaseSession();
  return [(SQLiteDatabaseSession *)&v5 initWithConnection:a3];
}

@end