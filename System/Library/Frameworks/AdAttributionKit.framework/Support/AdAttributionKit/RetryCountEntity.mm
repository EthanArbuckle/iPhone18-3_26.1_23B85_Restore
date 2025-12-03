@interface RetryCountEntity
+ (id)databaseTable;
- (_TtC20AttributionKitDaemon16RetryCountEntity)init;
- (_TtC20AttributionKitDaemon16RetryCountEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection;
- (_TtC20AttributionKitDaemon16RetryCountEntity)initWithPropertyValues:(id)values onConnection:(id)connection;
@end

@implementation RetryCountEntity

+ (id)databaseTable
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC20AttributionKitDaemon16RetryCountEntity)initWithPropertyValues:(id)values onConnection:(id)connection
{
  ObjectType = swift_getObjectType();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  connectionCopy = connection;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(SQLiteEntity *)&v11 initWithPropertyValues:isa onConnection:connectionCopy];

  return v9;
}

- (_TtC20AttributionKitDaemon16RetryCountEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(SQLiteEntity *)&v7 initWithPersistentID:d onConnection:connection];
}

- (_TtC20AttributionKitDaemon16RetryCountEntity)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(RetryCountEntity *)&v3 init];
}

@end