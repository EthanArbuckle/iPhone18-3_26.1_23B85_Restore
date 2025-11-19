@interface AMSDPushParsableDSATCache
+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5;
@end

@implementation AMSDPushParsableDSATCache

+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  sub_1001A7354(v8, v10, a5);

  swift_unknownObjectRelease();
}

@end