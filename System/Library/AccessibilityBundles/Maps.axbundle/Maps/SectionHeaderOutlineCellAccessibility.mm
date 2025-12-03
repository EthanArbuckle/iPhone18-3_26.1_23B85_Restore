@interface SectionHeaderOutlineCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SectionHeaderOutlineCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SectionHeaderOutlineCell" hasInstanceVariable:@"_cellModel" withType:"<SectionHeaderOutlineCellModel>"];
  [validationsCopy validateProtocol:@"SectionHeaderOutlineCellModel" hasRequiredInstanceMethod:@"title"];
}

- (id)accessibilityLabel
{
  v2 = [(SectionHeaderOutlineCellAccessibility *)self safeValueForKey:@"_cellModel"];
  v3 = [v2 safeStringForKey:@"title"];

  return v3;
}

@end