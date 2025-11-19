@interface IndexingSpeedViewFactory
+ (id)createWithData:(id)a3 type:(int64_t)a4;
@end

@implementation IndexingSpeedViewFactory

+ (id)createWithData:(id)a3 type:(int64_t)a4
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  sub_1002EF6C4();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v8 = sub_1002EF53C(v6, a4);

  _objc_release(a3);

  return v8;
}

@end