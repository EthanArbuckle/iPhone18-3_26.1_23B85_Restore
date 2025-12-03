@interface AMSDPushParsableDSATCache
+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag;
@end

@implementation AMSDPushParsableDSATCache

+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag
{
  swift_getObjCClassMetadata();
  payloadCopy = payload;
  configCopy = config;
  swift_unknownObjectRetain();
  sub_1001A7354(payloadCopy, v10, bag);

  swift_unknownObjectRelease();
}

@end