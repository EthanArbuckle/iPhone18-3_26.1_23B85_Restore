@interface UIApplication(PhotoBoothCategory)
- (uint64_t)accessibilityStartStopToggle;
@end

@implementation UIApplication(PhotoBoothCategory)

- (uint64_t)accessibilityStartStopToggle
{
  v1 = [self safeValueForKey:@"_photoBoothController"];
  v2 = [v1 safeValueForKey:@"_effectsController"];

  if (objc_opt_respondsToSelector())
  {
    [v2 takePicture:0];
  }

  return 1;
}

@end