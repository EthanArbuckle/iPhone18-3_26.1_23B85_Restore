@interface AppDefaultsManager
+ (const)kSKUserDefaultsIdentifier;
+ (id)databaseEncryptionKeyForIdentifier:(id)identifier;
+ (void)deleteDatabaseEncryptionKeyForIdentifier:(id)identifier;
+ (void)setDatabaseEncryptionKey:(id)key forIdentifier:(id)identifier;
@end

@implementation AppDefaultsManager

+ (const)kSKUserDefaultsIdentifier
{
  v2 = sub_1001575B4();

  return v2;
}

+ (id)databaseEncryptionKeyForIdentifier:(id)identifier
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

+ (void)setDatabaseEncryptionKey:(id)key forIdentifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100157848();

  sub_10008E168(v7, v9);
}

+ (void)deleteDatabaseEncryptionKeyForIdentifier:(id)identifier
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001579C4();
}

@end