@interface SystemApertureButtonAccessibility
- (id)_axGetLabelSubview;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SystemApertureButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(SystemApertureButtonAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"joinButton"])
  {
    v4 = @"join.call";
  }

  else if ([v3 isEqualToString:@"cancelButton"])
  {
    v4 = @"cancel.join.call";
  }

  else if ([v3 isEqualToString:@"leaveButton"])
  {
    v4 = @"leave.call";
  }

  else if ([v3 isEqualToString:@"openMessagesButton"])
  {
    v4 = @"open.messages";
  }

  else if ([v3 isEqualToString:@"toggleAudioRouteMenuButton"])
  {
    v4 = @"audio.route";
  }

  else if ([v3 isEqualToString:@"toggleMicMenuButton"])
  {
    v4 = @"mute";
  }

  else if ([v3 isEqualToString:@"toggleVideoButton"])
  {
    v4 = @"camera";
  }

  else
  {
    if (![v3 isEqualToString:@"shareMenuButton"])
    {
      v9.receiver = self;
      v9.super_class = SystemApertureButtonAccessibility;
      v7 = [(SystemApertureButtonAccessibility *)&v9 accessibilityLabel];
      if ([v7 length])
      {
        v5 = v7;
      }

      else
      {
        v8 = [(SystemApertureButtonAccessibility *)self _axGetLabelSubview];
        v5 = [v8 text];
      }

      goto LABEL_18;
    }

    v4 = @"share.content";
  }

  v5 = accessibilityLocalizedString(v4);
LABEL_18:

  return v5;
}

- (id)accessibilityValue
{
  v3 = [(SystemApertureButtonAccessibility *)self accessibilityIdentifier];
  if (([v3 isEqualToString:@"toggleVideoButton"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"toggleMicMenuButton"))
  {
    if ([(SystemApertureButtonAccessibility *)self safeBoolForKey:@"isSelected"])
    {
      v4 = @"on";
    }

    else
    {
      v4 = @"off";
    }

    v5 = accessibilityLocalizedString(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = SystemApertureButtonAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(SystemApertureButtonAccessibility *)&v6 accessibilityTraits];
  v4 = [(SystemApertureButtonAccessibility *)self accessibilityIdentifier];
  if (([v4 isEqualToString:@"toggleVideoButton"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"toggleMicMenuButton"))
  {
    v3 &= ~*MEMORY[0x29EDC7FC0];
  }

  return v3;
}

- (id)_axGetLabelSubview
{
  v3 = objc_opt_class();

  return [(SystemApertureButtonAccessibility *)self _accessibilityDescendantOfType:v3];
}

@end