@interface SkannerStory
+ (Class)databaseEntityClass;
+ (id)defaultProperties;
- (_TtC9appstored12SkannerStory)initWithDatabaseID:(int64_t)a3 propertyValues:(id)a4 externalPropertyValues:(id)a5;
@end

@implementation SkannerStory

+ (Class)databaseEntityClass
{
  type metadata accessor for SkannerStoryEntity();

  return swift_getObjCClassFromMetadata();
}

+ (id)defaultProperties
{
  sub_1000FE4D8();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (_TtC9appstored12SkannerStory)initWithDatabaseID:(int64_t)a3 propertyValues:(id)a4 externalPropertyValues:(id)a5
{
  ObjectType = swift_getObjectType();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = Dictionary._bridgeToObjectiveC()().super.isa;

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(SQLiteMemoryEntity *)&v12 initWithDatabaseID:a3 propertyValues:isa externalPropertyValues:v9];

  return v10;
}

@end