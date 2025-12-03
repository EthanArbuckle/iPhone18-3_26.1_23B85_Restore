@interface ENUIExposureCheckCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation ENUIExposureCheckCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ENUIExposureCheckCell" hasInstanceMethod:@"sectionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ENUIExposureCheckCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ENUIExposureCheckCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

@end