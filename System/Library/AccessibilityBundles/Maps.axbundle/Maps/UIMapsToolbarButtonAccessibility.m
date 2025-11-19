@interface UIMapsToolbarButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation UIMapsToolbarButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(UIMapsToolbarButtonAccessibility *)self accessibilityIdentification];
  if ([v3 isEqualToString:@"settingsButton"])
  {
    v4 = AXMapsLocString(@"SETTINGS_BUTTON");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIMapsToolbarButtonAccessibility;
    v4 = [(UIMapsToolbarButtonAccessibility *)&v7 accessibilityLabel];
  }

  v5 = v4;

  return v5;
}

@end