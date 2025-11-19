@interface RecentItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation RecentItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"RecentsAvocado.RecentItemCell" hasInstanceMethod:@"accessibilityItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RecentsAvocado.RecentItemCell" hasInstanceMethod:@"accessibilityTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RecentsAvocado.RecentItemCell" hasInstanceMethod:@"accessibilitySubtitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(RecentItemCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityTitle, accessibilitySubtitle"];
  v4 = [(RecentItemCellAccessibility *)self safeValueForKey:@"accessibilityItem"];
  v5 = __UIAccessibilitySafeClass();

  if (v5)
  {
    v6 = AXDoesRequestingClientDeserveAutomation();
    v7 = [v5 filename];
    v8 = [v7 pathExtension];
    if (!v6)
    {
      v9 = UIAXFileTypeDescriptionForFileExtension();

      v8 = v9;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = __UIAXStringForVariables();

  return v10;
}

- (id)accessibilityUserInputLabels
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(RecentItemCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityTitle"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end