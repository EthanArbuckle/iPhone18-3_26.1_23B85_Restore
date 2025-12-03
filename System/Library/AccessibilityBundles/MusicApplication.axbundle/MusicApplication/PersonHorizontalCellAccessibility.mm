@interface PersonHorizontalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PersonHorizontalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.PersonHorizontalCell" hasInstanceMethod:@"accessibilityPersonName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.PersonHorizontalCell" hasInstanceMethod:@"accessibilityPersonSubtitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PersonHorizontalCellAccessibility *)self safeStringForKey:@"accessibilityPersonName"];
  v6 = [(PersonHorizontalCellAccessibility *)self safeStringForKey:@"accessibilityPersonSubtitle"];
  v4 = __AXStringForVariables();

  return v4;
}

@end