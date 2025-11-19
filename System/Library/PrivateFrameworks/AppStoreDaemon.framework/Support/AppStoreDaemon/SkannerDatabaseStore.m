@interface SkannerDatabaseStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
- (_TtC9appstored20SkannerDatabaseStore)init;
- (_TtC9appstored20SkannerDatabaseStore)initWithDatabase:(id)a3;
@end

@implementation SkannerDatabaseStore

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  type metadata accessor for SkannerDatabaseSession();
  type metadata accessor for SkannerDatabaseTransaction();
  v2 = objc_allocWithZone(SQLiteDatabaseStoreDescriptor);
  v3 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = swift_getObjCClassFromMetadata();
  v7 = sub_100399680(v2, v3, isa, ObjCClassFromMetadata, v6);

  return v7;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = swift_allocObject();
  *(v5 + 16) = ObjCClassMetadata;
  v10[4] = sub_1000C1484;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000C127C;
  v10[3] = &unk_10050B9F8;
  v6 = _Block_copy(v10);
  v7 = a3;

  v8 = sub_100252C74(v7, 16400, v6);
  _Block_release(v6);

  return v8;
}

- (_TtC9appstored20SkannerDatabaseStore)initWithDatabase:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(SQLiteDatabaseStore *)&v5 initWithDatabase:a3];
}

- (_TtC9appstored20SkannerDatabaseStore)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SkannerDatabaseStore *)&v3 init];
}

@end