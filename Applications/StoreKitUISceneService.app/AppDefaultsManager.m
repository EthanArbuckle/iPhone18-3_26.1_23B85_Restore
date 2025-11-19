@interface AppDefaultsManager
+ (const)kSKUserDefaultsIdentifier;
+ (id)databaseEncryptionKeyForIdentifier:(id)a3;
+ (void)deleteDatabaseEncryptionKeyForIdentifier:(id)a3;
+ (void)setDatabaseEncryptionKey:(id)a3 forIdentifier:(id)a4;
@end

@implementation AppDefaultsManager

+ (const)kSKUserDefaultsIdentifier
{
  v2 = sub_100020D00();

  return v2;
}

+ (id)databaseEncryptionKeyForIdentifier:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = sub_100020DEC(v3);
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100019064(v4, v6);
  }

  return isa;
}

+ (void)setDatabaseEncryptionKey:(id)a3 forIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100020F5C();

  sub_100018DF0(v7, v9);
}

+ (void)deleteDatabaseEncryptionKeyForIdentifier:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000210D8();
}

@end