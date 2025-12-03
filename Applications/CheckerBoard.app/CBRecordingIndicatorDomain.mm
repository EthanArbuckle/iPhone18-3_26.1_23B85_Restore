@interface CBRecordingIndicatorDomain
+ (id)rootSettings;
@end

@implementation CBRecordingIndicatorDomain

+ (id)rootSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CBRecordingIndicatorDomain;
  v2 = objc_msgSendSuper2(&v4, "rootSettings");

  return v2;
}

@end