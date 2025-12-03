@interface VKMapCameraControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)zoomToLevel:(double)level withPoint:()Matrix<double;
@end

@implementation VKMapCameraControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VKMapCameraController" hasInstanceMethod:@"zoomToLevel: withPoint:" withFullSignature:{"v", "d", "{Matrix<double, 3, 1>=[3d]}", 0}];
  [validationsCopy validateClass:@"VKMapCameraController" hasInstanceMethod:@"tapZoom: levels: completionHandler:" withFullSignature:{"v", "{CGPoint=dd}", "d", "@?", 0}];
}

- (void)zoomToLevel:(double)level withPoint:()Matrix<double
{
  v4.receiver = self;
  v4.super_class = VKMapCameraControllerAccessibility;
  [(VKMapCameraControllerAccessibility *)&v4 zoomToLevel:level withPoint:a4.var0[0], a4.var0[1], a4.var0[2]];
  if (AXRequiresMapAccessibility())
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

@end