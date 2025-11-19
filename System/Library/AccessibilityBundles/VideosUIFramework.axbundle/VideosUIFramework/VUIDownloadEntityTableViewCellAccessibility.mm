@interface VUIDownloadEntityTableViewCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VUIDownloadEntityTableViewCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = VUIDownloadEntityTableViewCellAccessibility;
  [(VUIDownloadEntityTableViewCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(VUIDownloadEntityTableViewCellAccessibility *)self safeValueForKey:@"dotSeparatorLabel"];
  [v3 setIsAccessibilityElement:0];
}

@end