@interface AXSetBackgroundSoundTimerDurationResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
@end

@implementation AXSetBackgroundSoundTimerDurationResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AXSetBackgroundSoundTimerDurationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "unsupportedWithReason:", reason);

  return v3;
}

@end