@interface GroupedTextListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation GroupedTextListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.GroupedTextListView" hasInstanceMethod:@"accessibilityListGroupStrings" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.GroupedTextListView" hasInstanceMethod:@"accessibilityStackViews" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = GroupedTextListViewAccessibility;
  [(GroupedTextListViewAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(GroupedTextListViewAccessibility *)self safeArrayForKey:@"accessibilityListGroupStrings"];
  v4 = __UIAccessibilityCastAsClass();

  v10 = 0;
  objc_opt_class();
  v5 = [(GroupedTextListViewAccessibility *)self safeArrayForKey:@"accessibilityStackViews"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v4 count];
  if (v7 == [v6 count])
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __78__GroupedTextListViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v8[3] = &unk_29F2DD970;
    v9 = v4;
    [v6 enumerateObjectsUsingBlock:v8];
  }
}

void __78__GroupedTextListViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 setIsAccessibilityElement:1];
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v5 setAccessibilityLabel:v6];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = GroupedTextListViewAccessibility;
  [(GroupedTextListViewAccessibility *)&v3 layoutSubviews];
  [(GroupedTextListViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end