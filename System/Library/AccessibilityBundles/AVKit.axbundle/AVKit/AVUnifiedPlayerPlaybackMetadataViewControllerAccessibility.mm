@interface AVUnifiedPlayerPlaybackMetadataViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHeaderElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AVUnifiedPlayerPlaybackMetadataViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVUnifiedPlayerPlaybackMetadataViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVUnifiedPlayerPlaybackMetadataViewController" hasInstanceMethod:@"auxiliaryMetadataView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v16 = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = AVUnifiedPlayerPlaybackMetadataViewControllerAccessibility;
  [(AVUnifiedPlayerPlaybackMetadataViewControllerAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(AVUnifiedPlayerPlaybackMetadataViewControllerAccessibility *)self accessibilityHeaderElements];
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
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(AVUnifiedPlayerPlaybackMetadataViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  v5 = [v3 axArrayByIgnoringNilElementsWithCount:{1, v4}];
  v6 = [(AVUnifiedPlayerPlaybackMetadataViewControllerAccessibility *)self safeUIViewForKey:@"auxiliaryMetadataView"];
  v7 = [v6 accessibilityElements];
  v8 = [v3 axArrayWithPossiblyNilArrays:{2, v5, v7}];

  return v8;
}

@end