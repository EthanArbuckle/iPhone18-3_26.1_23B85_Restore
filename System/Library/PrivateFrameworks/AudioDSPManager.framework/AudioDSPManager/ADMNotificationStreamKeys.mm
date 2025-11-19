@interface ADMNotificationStreamKeys
+ (NSString)inference;
+ (NSString)inferenceSlowFalse;
- (ADMNotificationStreamKeys)init;
@end

@implementation ADMNotificationStreamKeys

+ (NSString)inference
{
  v2 = sub_223BF453C();

  return v2;
}

+ (NSString)inferenceSlowFalse
{
  v2 = sub_223BF453C();

  return v2;
}

- (ADMNotificationStreamKeys)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InteropNotificationStreamKeys();
  return [(ADMNotificationStreamKeys *)&v3 init];
}

@end