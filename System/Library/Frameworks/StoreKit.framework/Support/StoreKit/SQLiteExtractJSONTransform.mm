@interface SQLiteExtractJSONTransform
+ (id)extractJSONAtKey:(id)key;
- (id)appending:(id)appending;
- (id)appendingWithIndex:(int64_t)index;
- (id)appendingWithKey:(id)key;
- (id)transformSQLWithRoot:(id)root;
- (void)applyTransformBinding:(id)binding atIndex:(int *)index;
@end

@implementation SQLiteExtractJSONTransform

+ (id)extractJSONAtKey:(id)key
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v3 = sub_1001D4624();

  return v3;
}

- (id)appendingWithKey:(id)key
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v5 = sub_1001D46DC();

  return v5;
}

- (id)appendingWithIndex:(int64_t)index
{
  selfCopy = self;
  v4 = sub_1001D47E8();

  return v4;
}

- (id)appending:(id)appending
{
  appendingCopy = appending;
  selfCopy = self;
  v6 = sub_1001D48AC();

  return v6;
}

- (id)transformSQLWithRoot:(id)root
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1001D49F8();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (void)applyTransformBinding:(id)binding atIndex:(int *)index
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001D4C4C();
  swift_unknownObjectRelease();
}

@end