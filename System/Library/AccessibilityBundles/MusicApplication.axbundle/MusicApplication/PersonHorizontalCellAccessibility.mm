@interface PersonHorizontalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PersonHorizontalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.PersonHorizontalCell" hasInstanceMethod:@"accessibilityPersonName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.PersonHorizontalCell" hasInstanceMethod:@"accessibilityPersonSubtitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PersonHorizontalCellAccessibility *)self safeStringForKey:@"accessibilityPersonName"];
  v6 = [(PersonHorizontalCellAccessibility *)self safeStringForKey:@"accessibilityPersonSubtitle"];
  v4 = __AXStringForVariables();

  return v4;
}

@end