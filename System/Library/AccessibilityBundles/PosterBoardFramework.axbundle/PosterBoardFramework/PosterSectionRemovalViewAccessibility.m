@interface PosterSectionRemovalViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PosterSectionRemovalViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PosterSectionRemovalViewAccessibility;
  [(PosterSectionRemovalViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PosterSectionRemovalViewAccessibility *)self safeSwiftValueForKey:@"deleteButton"];
  v4 = accessibilityLocalizedString(@"lock.screen.poster.cell.delete.label");
  [v3 setAccessibilityLabel:v4];
}

@end