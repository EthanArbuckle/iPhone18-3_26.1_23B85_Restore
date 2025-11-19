@interface SQLiteSequentialValueTransform
+ (id)composingTransforms:(id)a3;
- (id)transformSQLWithRoot:(id)a3;
- (void)applyTransformBinding:(id)a3 atIndex:(int *)a4;
@end

@implementation SQLiteSequentialValueTransform

+ (id)composingTransforms:(id)a3
{
  sub_100080FB4(&unk_1003D1470);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = sub_1001BE200(v3);

  return v4;
}

- (id)transformSQLWithRoot:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_1001BE34C(v4);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (void)applyTransformBinding:(id)a3 atIndex:(int *)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_1001BE514(a3, a4);
  swift_unknownObjectRelease();
}

@end