@interface SectionHeaderOutlineCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SectionHeaderOutlineCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SectionHeaderOutlineCell" hasInstanceVariable:@"_cellModel" withType:"<SectionHeaderOutlineCellModel>"];
  [v3 validateProtocol:@"SectionHeaderOutlineCellModel" hasRequiredInstanceMethod:@"title"];
}

- (id)accessibilityLabel
{
  v2 = [(SectionHeaderOutlineCellAccessibility *)self safeValueForKey:@"_cellModel"];
  v3 = [v2 safeStringForKey:@"title"];

  return v3;
}

@end