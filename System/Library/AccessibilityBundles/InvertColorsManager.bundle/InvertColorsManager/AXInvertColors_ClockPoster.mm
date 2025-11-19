@interface AXInvertColors_ClockPoster
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_ClockPoster

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ClockPoster.AnalogClockFaceViewController"];
  [v3 validateClass:@"ClockPoster.PlayClockFaceView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"AnalogClockFaceViewControllerColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PlayClockFaceViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end