@interface PostbackDatabaseSession
- (_TtC20AttributionKitDaemon23PostbackDatabaseSession)init;
- (_TtC20AttributionKitDaemon23PostbackDatabaseSession)initWithConnection:(id)a3;
@end

@implementation PostbackDatabaseSession

- (_TtC20AttributionKitDaemon23PostbackDatabaseSession)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PostbackDatabaseSession();
  return [(PostbackDatabaseSession *)&v3 init];
}

- (_TtC20AttributionKitDaemon23PostbackDatabaseSession)initWithConnection:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PostbackDatabaseSession();
  return [(SQLiteDatabaseSession *)&v5 initWithConnection:a3];
}

@end