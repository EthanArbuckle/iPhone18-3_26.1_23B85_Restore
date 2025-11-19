@interface SFScribbleSelectionOverlayAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SFScribbleSelectionOverlayAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SFScribbleSelectionOverlayAccessibility;
  [(SFScribbleSelectionOverlayAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SFScribbleSelectionOverlayAccessibility *)self safeValueForKey:@"regularHideButton"];
  [v3 setAccessibilityElementsHiddenBlock:&__block_literal_global_5];
}

@end