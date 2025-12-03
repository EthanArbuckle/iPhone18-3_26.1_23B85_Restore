@interface MobileTimerUIButtonAccessibility
- (BOOL)_isAlarmTableViewCellDescendantDisclosureButton;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityLanguage;
- (unint64_t)accessibilityTraits;
@end

@implementation MobileTimerUIButtonAccessibility

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(MobileTimerUIButtonAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"WeatherButton"])
  {
    v4 = @"weather.button";
LABEL_5:
    accessibilityLabel = accessibilityNonLocalizedString(v4);
    goto LABEL_7;
  }

  if ([accessibilityIdentifier isEqualToString:@"YahooButton"])
  {
    v4 = @"yahoo.button";
    goto LABEL_5;
  }

  v8.receiver = self;
  v8.super_class = MobileTimerUIButtonAccessibility;
  accessibilityLabel = [(MobileTimerUIButtonAccessibility *)&v8 accessibilityLabel];
LABEL_7:
  v6 = accessibilityLabel;

  return v6;
}

- (id)accessibilityLanguage
{
  accessibilityIdentifier = [(MobileTimerUIButtonAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"WeatherButton"] & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"YahooButton"))
  {
    accessibilityLanguage = @"en-US";
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MobileTimerUIButtonAccessibility;
    accessibilityLanguage = [(MobileTimerUIButtonAccessibility *)&v6 accessibilityLanguage];
  }

  return accessibilityLanguage;
}

- (unint64_t)accessibilityTraits
{
  accessibilityIdentifier = [(MobileTimerUIButtonAccessibility *)self accessibilityIdentifier];
  if (([accessibilityIdentifier isEqualToString:@"WeatherButton"] & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"YahooButton"))
  {
    accessibilityTraits = *MEMORY[0x29EDC7F98];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MobileTimerUIButtonAccessibility;
    accessibilityTraits = [(MobileTimerUIButtonAccessibility *)&v6 accessibilityTraits];
  }

  return accessibilityTraits;
}

- (BOOL)isAccessibilityElement
{
  if ([(MobileTimerUIButtonAccessibility *)self _isAlarmTableViewCellDescendantDisclosureButton])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = MobileTimerUIButtonAccessibility;
  return [(MobileTimerUIButtonAccessibility *)&v4 isAccessibilityElement];
}

- (BOOL)_isAlarmTableViewCellDescendantDisclosureButton
{
  if (_isAlarmTableViewCellDescendantDisclosureButton__AlarmTableViewCellClassOnceToken != -1)
  {
    [MobileTimerUIButtonAccessibility _isAlarmTableViewCellDescendantDisclosureButton];
  }

  v3 = [(MobileTimerUIButtonAccessibility *)self _accessibilityViewAncestorIsKindOf:_isAlarmTableViewCellDescendantDisclosureButton__AlarmTableViewCellClass];
  v4 = v3 != 0;

  accessibilityIdentification = [(MobileTimerUIButtonAccessibility *)self accessibilityIdentification];
  v6 = [accessibilityIdentification isEqualToString:@"UITableCellViewDisclosure"];

  return v4 & v6;
}

uint64_t __83__MobileTimerUIButtonAccessibility__isAlarmTableViewCellDescendantDisclosureButton__block_invoke()
{
  result = MEMORY[0x29C2E1AE0](@"MTAAlarmTableViewCell");
  _isAlarmTableViewCellDescendantDisclosureButton__AlarmTableViewCellClass = result;
  return result;
}

@end