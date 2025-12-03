@interface SBUIImageViewAccessibility
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SBUIImageViewAccessibility

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = SBUIImageViewAccessibility;
  accessibilityTraits = [(SBUIImageViewAccessibility *)&v6 accessibilityTraits];
  accessibilityIdentification = [(SBUIImageViewAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"LockIcon"] || objc_msgSend(accessibilityIdentification, "isEqualToString:", @"AlarmClock") || objc_msgSend(accessibilityIdentification, "isEqualToString:", @"TTY") || objc_msgSend(accessibilityIdentification, "isEqualToString:", @"Play") || objc_msgSend(accessibilityIdentification, "isEqualToString:", @"Plus"))
  {
    accessibilityTraits |= *MEMORY[0x29EDC7580];
  }

  return accessibilityTraits;
}

- (BOOL)accessibilityActivate
{
  accessibilityIdentifier = [(SBUIImageViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"NotificationRoller"];

  if (v4)
  {
    [*MEMORY[0x29EDC8008] accessibilityPerformAction:5000 withValue:*MEMORY[0x29EDB8EF8] fencePort:0];
    return 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBUIImageViewAccessibility;
    return [(SBUIImageViewAccessibility *)&v6 accessibilityActivate];
  }
}

- (BOOL)_accessibilitySupportsActivateAction
{
  accessibilityIdentifier = [(SBUIImageViewAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"NotificationRoller"] & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"CameraGrabber"))
  {
    _accessibilitySupportsActivateAction = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBUIImageViewAccessibility;
    _accessibilitySupportsActivateAction = [(SBUIImageViewAccessibility *)&v6 _accessibilitySupportsActivateAction];
  }

  return _accessibilitySupportsActivateAction;
}

- (BOOL)isAccessibilityElement
{
  if (!isAccessibilityElement_validAXIDSet)
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDB8E50]) initWithObjects:{@"LockIcon", @"wallpaperView", @"AlarmClock", @"TTY", @"Play", @"Plus", 0}];
    v4 = isAccessibilityElement_validAXIDSet;
    isAccessibilityElement_validAXIDSet = v3;
  }

  accessibilityIdentification = [(SBUIImageViewAccessibility *)self accessibilityIdentification];
  v6 = [isAccessibilityElement_validAXIDSet containsObject:accessibilityIdentification];
  v7 = [(SBUIImageViewAccessibility *)self safeValueForKey:@"tag"];
  integerValue = [v7 integerValue];

  isAccessibilityElement = 1;
  if (integerValue != 1337 && (v6 & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = SBUIImageViewAccessibility;
    isAccessibilityElement = [(SBUIImageViewAccessibility *)&v11 isAccessibilityElement];
  }

  return isAccessibilityElement;
}

- (id)accessibilityLabel
{
  accessibilityIdentification = [(SBUIImageViewAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"LockIcon"])
  {
    v4 = @"lock.icon.text";
LABEL_13:
    accessibilityLabel = accessibilityLocalizedString(v4);
    goto LABEL_14;
  }

  if ([accessibilityIdentification isEqualToString:@"wallpaperView"])
  {
    v4 = @"wallpaper.text";
    goto LABEL_13;
  }

  if ([accessibilityIdentification isEqualToString:@"AlarmClock"])
  {
    v4 = @"statusbar.alarmclock.icon";
    goto LABEL_13;
  }

  if ([accessibilityIdentification isEqualToString:@"TTY"])
  {
    v4 = @"statusbar.tty.icon";
    goto LABEL_13;
  }

  if ([accessibilityIdentification isEqualToString:@"Play"])
  {
    v4 = @"statusbar.play.icon";
    goto LABEL_13;
  }

  if ([accessibilityIdentification isEqualToString:@"Plus"])
  {
    v4 = @"statusbar.plus.icon";
    goto LABEL_13;
  }

  v8.receiver = self;
  v8.super_class = SBUIImageViewAccessibility;
  accessibilityLabel = [(SBUIImageViewAccessibility *)&v8 accessibilityLabel];
LABEL_14:
  v6 = accessibilityLabel;

  return v6;
}

@end