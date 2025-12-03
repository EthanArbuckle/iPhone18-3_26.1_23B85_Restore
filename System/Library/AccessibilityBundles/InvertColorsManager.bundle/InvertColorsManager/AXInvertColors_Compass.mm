@interface AXInvertColors_Compass
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_Compass

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CompassAppDelegate" hasInstanceMethod:@"window" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CompassAppDelegate"];
}

@end