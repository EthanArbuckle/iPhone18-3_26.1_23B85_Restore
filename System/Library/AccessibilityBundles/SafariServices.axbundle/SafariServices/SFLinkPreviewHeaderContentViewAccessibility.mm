@interface SFLinkPreviewHeaderContentViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SFLinkPreviewHeaderContentViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SFLinkPreviewHeaderContentViewAccessibility;
  [(SFLinkPreviewHeaderContentViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7F80];
  v4 = [(SFLinkPreviewHeaderContentViewAccessibility *)self safeUIViewForKey:@"_domainLabel"];
  [v4 setAccessibilityTraits:v3];
}

@end