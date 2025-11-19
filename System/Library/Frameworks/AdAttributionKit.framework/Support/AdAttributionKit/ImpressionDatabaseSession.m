@interface ImpressionDatabaseSession
- (_TtC20AttributionKitDaemon25ImpressionDatabaseSession)init;
- (_TtC20AttributionKitDaemon25ImpressionDatabaseSession)initWithConnection:(id)a3;
@end

@implementation ImpressionDatabaseSession

- (_TtC20AttributionKitDaemon25ImpressionDatabaseSession)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ImpressionDatabaseSession();
  return [(ImpressionDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon25ImpressionDatabaseSession)initWithConnection:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ImpressionDatabaseSession();
  return [(SQLiteDatabaseSession *)&v5 initWithConnection:a3];
}

@end