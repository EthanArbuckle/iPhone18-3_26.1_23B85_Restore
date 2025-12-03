@interface _NTKEFaceChoiceAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation _NTKEFaceChoiceAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_NTKEFaceChoice" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_NTKEFaceChoice" hasInstanceMethod:@"_selected" withFullSignature:{"v", 0}];
}

@end