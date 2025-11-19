@interface tvOS_AVInfoPanelMetadataViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHeaderElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation tvOS_AVInfoPanelMetadataViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVInfoPanelMetadataViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"AVInfoPanelMetadataViewController" hasInstanceMethod:@"descriptionViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVInfoPanelDescriptionViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"AVInfoPanelDescriptionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVInfoPanelDescriptionView" hasInstanceMethod:@"summaryView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v16 = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = tvOS_AVInfoPanelMetadataViewControllerAccessibility;
  [(tvOS_AVInfoPanelMetadataViewControllerAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(tvOS_AVInfoPanelMetadataViewControllerAccessibility *)self accessibilityHeaderElements];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = *MEMORY[0x29EDC7F80];
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v8++) setAccessibilityTraits:v7];
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x29EDCA608];
}

- (id)accessibilityHeaderElements
{
  v2 = [(tvOS_AVInfoPanelMetadataViewControllerAccessibility *)self safeValueForKeyPath:@"descriptionViewController.view"];
  v3 = MEMORY[0x29EDB8D80];
  v4 = [v2 safeValueForKey:@"titleLabel"];
  v5 = [v2 safeValueForKey:@"summaryView"];
  v6 = [v3 axArrayByIgnoringNilElementsWithCount:{2, v4, v5}];

  return v6;
}

@end