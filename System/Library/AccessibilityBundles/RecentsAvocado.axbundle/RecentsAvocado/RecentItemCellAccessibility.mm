@interface RecentItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation RecentItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RecentsAvocado.RecentItemCell" hasInstanceMethod:@"accessibilityItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RecentsAvocado.RecentItemCell" hasInstanceMethod:@"accessibilityTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RecentsAvocado.RecentItemCell" hasInstanceMethod:@"accessibilitySubtitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(RecentItemCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityTitle, accessibilitySubtitle"];
  v4 = [(RecentItemCellAccessibility *)self safeValueForKey:@"accessibilityItem"];
  v5 = __UIAccessibilitySafeClass();

  if (v5)
  {
    v6 = AXDoesRequestingClientDeserveAutomation();
    filename = [v5 filename];
    pathExtension = [filename pathExtension];
    if (!v6)
    {
      v9 = UIAXFileTypeDescriptionForFileExtension();

      pathExtension = v9;
    }
  }

  else
  {
    pathExtension = 0;
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