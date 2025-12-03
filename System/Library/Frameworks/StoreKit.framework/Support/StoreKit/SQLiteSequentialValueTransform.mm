@interface SQLiteSequentialValueTransform
+ (id)composingTransforms:(id)transforms;
- (id)transformSQLWithRoot:(id)root;
- (void)applyTransformBinding:(id)binding atIndex:(int *)index;
@end

@implementation SQLiteSequentialValueTransform

+ (id)composingTransforms:(id)transforms
{
  sub_100080FB4(&unk_1003D1470);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = sub_1001BE200(v3);

  return v4;
}

- (id)transformSQLWithRoot:(id)root
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1001BE34C(v4);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (void)applyTransformBinding:(id)binding atIndex:(int *)index
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001BE514(binding, index);
  swift_unknownObjectRelease();
}

@end