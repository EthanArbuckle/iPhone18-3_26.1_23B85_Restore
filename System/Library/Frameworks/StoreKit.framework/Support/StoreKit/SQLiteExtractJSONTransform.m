@interface SQLiteExtractJSONTransform
+ (id)extractJSONAtKey:(id)a3;
- (id)appending:(id)a3;
- (id)appendingWithIndex:(int64_t)a3;
- (id)appendingWithKey:(id)a3;
- (id)transformSQLWithRoot:(id)a3;
- (void)applyTransformBinding:(id)a3 atIndex:(int *)a4;
@end

@implementation SQLiteExtractJSONTransform

+ (id)extractJSONAtKey:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v3 = sub_1001D4624();

  return v3;
}

- (id)appendingWithKey:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  v5 = sub_1001D46DC();

  return v5;
}

- (id)appendingWithIndex:(int64_t)a3
{
  v3 = self;
  v4 = sub_1001D47E8();

  return v4;
}

- (id)appending:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1001D48AC();

  return v6;
}

- (id)transformSQLWithRoot:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_1001D49F8();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (void)applyTransformBinding:(id)a3 atIndex:(int *)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1001D4C4C();
  swift_unknownObjectRelease();
}

@end