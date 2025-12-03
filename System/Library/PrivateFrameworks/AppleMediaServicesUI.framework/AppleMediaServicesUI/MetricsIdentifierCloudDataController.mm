@interface MetricsIdentifierCloudDataController
- (id)createRecordForKey:(id)key recordType:(id)type;
- (id)identifierRecordType;
- (id)identifierStoreRecordType;
- (id)keyForRecordIdentifier:(id)identifier;
- (id)recordIdentifierForKey:(id)key;
@end

@implementation MetricsIdentifierCloudDataController

- (id)identifierStoreRecordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)identifierRecordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)createRecordForKey:(id)key recordType:(id)type
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100178750();
  v5 = v4;

  return v5;
}

- (id)keyForRecordIdentifier:(id)identifier
{
  swift_unknownObjectRetain();

  sub_100178D80(identifier);
  v5 = v4;
  swift_unknownObjectRelease();

  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)recordIdentifierForKey:(id)key
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3.super.isa = sub_100178E68().super.isa;

  return v3.super.isa;
}

@end