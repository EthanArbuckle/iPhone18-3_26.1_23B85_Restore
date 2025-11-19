@interface MarmosetUIButtonAccessibility
- (BOOL)accessibilityPerformEscape;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MarmosetUIButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(MarmosetUIButtonAccessibility *)self backgroundImageForState:0];
  v4 = [(MarmosetUIButtonAccessibility *)self imageForState:0];
  v5 = [v4 accessibilityIdentifier];
  v6 = [v3 accessibilityIdentifier];
  if (([v5 hasPrefix:@"settingsglyph"] & 1) != 0 || objc_msgSend(v6, "hasPrefix:", @"settingsglyph"))
  {
    v7 = @"settings.button";
LABEL_9:
    v8 = accessibilityLocalizedString(v7);
    goto LABEL_10;
  }

  if (([v5 hasPrefix:@"shareGlyph"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"barShareGlyph") & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"shareGlyph") & 1) != 0 || objc_msgSend(v6, "hasPrefix:", @"barShareGlyph"))
  {
    v7 = @"share.button";
    goto LABEL_9;
  }

  v11.receiver = self;
  v11.super_class = MarmosetUIButtonAccessibility;
  v8 = [(MarmosetUIButtonAccessibility *)&v11 accessibilityLabel];
LABEL_10:
  v9 = v8;

  return v9;
}

- (id)accessibilityValue
{
  v3 = [(MarmosetUIButtonAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"SpeedButton"];

  if (v4)
  {
    v5 = [(MarmosetUIButtonAccessibility *)self titleForState:0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MarmosetUIButtonAccessibility;
    v5 = [(MarmosetUIButtonAccessibility *)&v7 accessibilityValue];
  }

  return v5;
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(MarmosetUIButtonAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"NowPlayingBackButton"];

  if (v4)
  {
    [(MarmosetUIButtonAccessibility *)self sendActionsForControlEvents:64];
    return 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MarmosetUIButtonAccessibility;
    return [(MarmosetUIButtonAccessibility *)&v6 accessibilityPerformEscape];
  }
}

- (BOOL)isAccessibilityElement
{
  [(MarmosetUIButtonAccessibility *)self alpha];
  if (v3 == 0.0)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = MarmosetUIButtonAccessibility;
  return [(MarmosetUIButtonAccessibility *)&v5 isAccessibilityElement];
}

@end