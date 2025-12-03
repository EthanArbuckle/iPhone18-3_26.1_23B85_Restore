@interface GAXBKOrientationManagerAccessibility
- (void)_queue_postUpdatedRawAccelerometerDeviceOrientation:(int64_t)orientation;
@end

@implementation GAXBKOrientationManagerAccessibility

- (void)_queue_postUpdatedRawAccelerometerDeviceOrientation:(int64_t)orientation
{
  v5 = +[GAXBackboard sharedInstance];
  if (![v5 isActive] || objc_msgSend(v5, "allowsMotion"))
  {
    v6.receiver = self;
    v6.super_class = GAXBKOrientationManagerAccessibility;
    [(GAXBKOrientationManagerAccessibility *)&v6 _queue_postUpdatedRawAccelerometerDeviceOrientation:orientation];
  }
}

@end