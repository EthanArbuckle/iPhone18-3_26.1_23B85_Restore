@interface NTKEnumeratedEditOptionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation NTKEnumeratedEditOptionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKEnumeratedEditOption" isKindOfClass:@"NTKEditOption"];
  [validationsCopy validateClass:@"NTKEditOption" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
}

@end