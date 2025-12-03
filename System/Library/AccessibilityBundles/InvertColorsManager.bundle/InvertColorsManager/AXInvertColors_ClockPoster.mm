@interface AXInvertColors_ClockPoster
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_ClockPoster

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ClockPoster.AnalogClockFaceViewController"];
  [validationsCopy validateClass:@"ClockPoster.PlayClockFaceView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"AnalogClockFaceViewControllerColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PlayClockFaceViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end