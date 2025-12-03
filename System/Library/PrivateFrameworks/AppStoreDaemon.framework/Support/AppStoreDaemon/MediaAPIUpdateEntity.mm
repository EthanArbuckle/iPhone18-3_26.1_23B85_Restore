@interface MediaAPIUpdateEntity
+ (Class)memoryEntityClass;
+ (NSString)BOOLeanPropertyMaskKey;
+ (NSString)bundleIDPropertyKey;
+ (NSString)installDatePropertyKey;
+ (NSString)installerPackagingTypePropertyKey;
+ (NSString)itemIDPropertyKey;
+ (NSString)metadataPropertyKey;
+ (NSString)timestampPropertyKey;
+ (NSString)updateStatePropertyKey;
+ (id)databaseTable;
- (_TtC9appstored20MediaAPIUpdateEntity)init;
- (_TtC9appstored20MediaAPIUpdateEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection;
- (_TtC9appstored20MediaAPIUpdateEntity)initWithPropertyValues:(id)values onConnection:(id)connection;
@end

@implementation MediaAPIUpdateEntity

+ (NSString)BOOLeanPropertyMaskKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)bundleIDPropertyKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)installDatePropertyKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)itemIDPropertyKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)installerPackagingTypePropertyKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)metadataPropertyKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)timestampPropertyKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)updateStatePropertyKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (id)databaseTable
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (Class)memoryEntityClass
{
  type metadata accessor for MediaAPIUpdate();

  return swift_getObjCClassFromMetadata();
}

- (_TtC9appstored20MediaAPIUpdateEntity)initWithPropertyValues:(id)values onConnection:(id)connection
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  connectionCopy = connection;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for MediaAPIUpdateEntity();
  v8 = [(SQLiteEntity *)&v10 initWithPropertyValues:isa onConnection:connectionCopy];

  return v8;
}

- (_TtC9appstored20MediaAPIUpdateEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MediaAPIUpdateEntity();
  return [(SQLiteEntity *)&v7 initWithPersistentID:d onConnection:connection];
}

- (_TtC9appstored20MediaAPIUpdateEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MediaAPIUpdateEntity();
  return [(MediaAPIUpdateEntity *)&v3 init];
}

@end