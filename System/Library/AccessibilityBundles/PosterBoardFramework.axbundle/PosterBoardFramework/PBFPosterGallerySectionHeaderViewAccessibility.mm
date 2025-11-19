@interface PBFPosterGallerySectionHeaderViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PBFPosterGallerySectionHeaderViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PBFPosterGallerySectionHeaderViewAccessibility;
  [(PBFPosterGallerySectionHeaderViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PBFPosterGallerySectionHeaderViewAccessibility *)self safeValueForKey:@"label"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

@end