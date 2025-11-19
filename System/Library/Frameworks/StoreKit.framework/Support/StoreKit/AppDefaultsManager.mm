@interface AppDefaultsManager
+ (const)kSKUserDefaultsIdentifier;
+ (id)databaseEncryptionKeyForIdentifier:(id)a3;
+ (void)deleteDatabaseEncryptionKeyForIdentifier:(id)a3;
+ (void)setDatabaseEncryptionKey:(id)a3 forIdentifier:(id)a4;
@end

@implementation AppDefaultsManager

+ (const)kSKUserDefaultsIdentifier
{
  v2 = sub_1001575B4();

  return v2;
}

+ (id)databaseEncryptionKeyForIdentifier:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = sub_1001576D8(v3);
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000BC8B4(v4, v6);
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
  sub_100157848();

  sub_10008E168(v7, v9);
}

+ (void)deleteDatabaseEncryptionKeyForIdentifier:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001579C4();
}

@end