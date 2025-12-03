@interface UIMapsToolbarButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation UIMapsToolbarButtonAccessibility

- (id)accessibilityLabel
{
  accessibilityIdentification = [(UIMapsToolbarButtonAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"settingsButton"])
  {
    accessibilityLabel = AXMapsLocString(@"SETTINGS_BUTTON");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIMapsToolbarButtonAccessibility;
    accessibilityLabel = [(UIMapsToolbarButtonAccessibility *)&v7 accessibilityLabel];
  }

  v5 = accessibilityLabel;

  return v5;
}

@end