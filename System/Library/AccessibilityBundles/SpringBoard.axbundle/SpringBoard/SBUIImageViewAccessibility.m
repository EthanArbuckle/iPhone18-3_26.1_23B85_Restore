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
  v3 = [(SBUIImageViewAccessibility *)&v6 accessibilityTraits];
  v4 = [(SBUIImageViewAccessibility *)self accessibilityIdentification];
  if ([v4 isEqualToString:@"LockIcon"] || objc_msgSend(v4, "isEqualToString:", @"AlarmClock") || objc_msgSend(v4, "isEqualToString:", @"TTY") || objc_msgSend(v4, "isEqualToString:", @"Play") || objc_msgSend(v4, "isEqualToString:", @"Plus"))
  {
    v3 |= *MEMORY[0x29EDC7580];
  }

  return v3;
}

- (BOOL)accessibilityActivate
{
  v3 = [(SBUIImageViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"NotificationRoller"];

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
  v3 = [(SBUIImageViewAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"NotificationRoller"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"CameraGrabber"))
  {
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBUIImageViewAccessibility;
    v4 = [(SBUIImageViewAccessibility *)&v6 _accessibilitySupportsActivateAction];
  }

  return v4;
}

- (BOOL)isAccessibilityElement
{
  if (!isAccessibilityElement_validAXIDSet)
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDB8E50]) initWithObjects:{@"LockIcon", @"wallpaperView", @"AlarmClock", @"TTY", @"Play", @"Plus", 0}];
    v4 = isAccessibilityElement_validAXIDSet;
    isAccessibilityElement_validAXIDSet = v3;
  }

  v5 = [(SBUIImageViewAccessibility *)self accessibilityIdentification];
  v6 = [isAccessibilityElement_validAXIDSet containsObject:v5];
  v7 = [(SBUIImageViewAccessibility *)self safeValueForKey:@"tag"];
  v8 = [v7 integerValue];

  v9 = 1;
  if (v8 != 1337 && (v6 & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = SBUIImageViewAccessibility;
    v9 = [(SBUIImageViewAccessibility *)&v11 isAccessibilityElement];
  }

  return v9;
}

- (id)accessibilityLabel
{
  v3 = [(SBUIImageViewAccessibility *)self accessibilityIdentification];
  if ([v3 isEqualToString:@"LockIcon"])
  {
    v4 = @"lock.icon.text";
LABEL_13:
    v5 = accessibilityLocalizedString(v4);
    goto LABEL_14;
  }

  if ([v3 isEqualToString:@"wallpaperView"])
  {
    v4 = @"wallpaper.text";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"AlarmClock"])
  {
    v4 = @"statusbar.alarmclock.icon";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"TTY"])
  {
    v4 = @"statusbar.tty.icon";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"Play"])
  {
    v4 = @"statusbar.play.icon";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"Plus"])
  {
    v4 = @"statusbar.plus.icon";
    goto LABEL_13;
  }

  v8.receiver = self;
  v8.super_class = SBUIImageViewAccessibility;
  v5 = [(SBUIImageViewAccessibility *)&v8 accessibilityLabel];
LABEL_14:
  v6 = v5;

  return v6;
}

@end