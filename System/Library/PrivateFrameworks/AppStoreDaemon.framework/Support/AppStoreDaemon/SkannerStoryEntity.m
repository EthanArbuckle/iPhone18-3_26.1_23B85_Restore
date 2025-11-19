@interface SkannerStoryEntity
+ (Class)memoryEntityClass;
+ (id)databaseTable;
- (_TtC9appstored18SkannerStoryEntity)init;
- (_TtC9appstored18SkannerStoryEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4;
- (_TtC9appstored18SkannerStoryEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4;
@end

@implementation SkannerStoryEntity

+ (id)databaseTable
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (Class)memoryEntityClass
{
  type metadata accessor for SkannerStory();

  return swift_getObjCClassFromMetadata();
}

- (_TtC9appstored18SkannerStoryEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4
{
  ObjectType = swift_getObjectType();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(SQLiteEntity *)&v11 initWithPropertyValues:isa onConnection:v7];

  return v9;
}

- (_TtC9appstored18SkannerStoryEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(SQLiteEntity *)&v7 initWithPersistentID:a3 onConnection:a4];
}

- (_TtC9appstored18SkannerStoryEntity)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SkannerStoryEntity *)&v3 init];
}

@end