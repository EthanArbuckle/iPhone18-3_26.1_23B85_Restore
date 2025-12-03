@interface VideosUI_CanonicalInfoCardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation VideosUI_CanonicalInfoCardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.CanonicalInfoCardView" hasSwiftField:@"titleLabel" withSwiftType:"Optional<VUILabel>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalInfoCardView" hasSwiftField:@"subtitleLabel" withSwiftType:"Optional<VUILabel>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalInfoCardView" hasSwiftField:@"imageView" withSwiftType:"Optional<VUIImageView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalInfoCardView" hasSwiftField:@"tableView" withSwiftType:"Optional<TomatometerTableView>"];
  [validationsCopy validateClass:@"VideosUI.TomatometerTableView" hasSwiftField:@"itemViews" withSwiftType:"Optional<Array<ItemViewModel>>"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v22 = *MEMORY[0x29EDCA608];
  v20.receiver = self;
  v20.super_class = VideosUI_CanonicalInfoCardViewAccessibility;
  [(VideosUI_CanonicalInfoCardViewAccessibility *)&v20 _accessibilityLoadAccessibilityInformation];
  v3 = [(VideosUI_CanonicalInfoCardViewAccessibility *)self safeSwiftValueForKey:@"tableView"];
  string = [MEMORY[0x29EDBA050] string];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v14 = v3;
  obj = [v3 safeSwiftArrayForKey:@"itemViews"];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 safeSwiftValueForKey:@"headerLabel"];
        v11 = [v9 safeSwiftValueForKey:@"textLabel"];
        v12 = __UIAXStringForVariables();
        [string appendFormat:@"%@\n", v12, @"__AXStringForVariablesSentinel"];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v6);
  }

  [v14 setAccessibilityLabel:string];
  v13 = *MEMORY[0x29EDCA608];
}

- (id)accessibilityLabel
{
  v16 = [(VideosUI_CanonicalInfoCardViewAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v15 = [(VideosUI_CanonicalInfoCardViewAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  v3 = [(VideosUI_CanonicalInfoCardViewAccessibility *)self safeSwiftValueForKey:@"imageView"];
  v4 = [(VideosUI_CanonicalInfoCardViewAccessibility *)self safeSwiftValueForKey:@"tableView"];
  v5 = [(VideosUI_CanonicalInfoCardViewAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29ED3FF70](@"VUITextView")];
  v6 = MEMORY[0x29EDB8D80];
  accessibilityLabel = [v16 accessibilityLabel];
  accessibilityLabel2 = [v15 accessibilityLabel];
  accessibilityLabel3 = [v3 accessibilityLabel];
  accessibilityLabel4 = [v4 accessibilityLabel];
  v11 = [v5 safeValueForKey:@"_accessibilityGetValue"];
  v12 = [v6 axArrayByIgnoringNilElementsWithCount:{5, accessibilityLabel, accessibilityLabel2, accessibilityLabel3, accessibilityLabel4, v11}];
  v13 = AXLabelForElements();

  return v13;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VideosUI_CanonicalInfoCardViewAccessibility;
  [(VideosUI_CanonicalInfoCardViewAccessibility *)&v3 layoutSubviews];
  [(VideosUI_CanonicalInfoCardViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end