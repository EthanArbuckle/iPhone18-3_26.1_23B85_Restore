@interface IndexingSpeedViewFactory
+ (id)createWithData:(id)data type:(int64_t)type;
@end

@implementation IndexingSpeedViewFactory

+ (id)createWithData:(id)data type:(int64_t)type
{
  swift_getObjCClassMetadata();
  _objc_retain(data);
  sub_1002EF6C4();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v8 = sub_1002EF53C(v6, type);

  _objc_release(data);

  return v8;
}

@end