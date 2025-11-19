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
  v3 = [(MobileTimerUIButtonAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"WeatherButton"])
  {
    v4 = @"weather.button";
LABEL_5:
    v5 = accessibilityNonLocalizedString(v4);
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"YahooButton"])
  {
    v4 = @"yahoo.button";
    goto LABEL_5;
  }

  v8.receiver = self;
  v8.super_class = MobileTimerUIButtonAccessibility;
  v5 = [(MobileTimerUIButtonAccessibility *)&v8 accessibilityLabel];
LABEL_7:
  v6 = v5;

  return v6;
}

- (id)accessibilityLanguage
{
  v3 = [(MobileTimerUIButtonAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"WeatherButton"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"YahooButton"))
  {
    v4 = @"en-US";
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MobileTimerUIButtonAccessibility;
    v4 = [(MobileTimerUIButtonAccessibility *)&v6 accessibilityLanguage];
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(MobileTimerUIButtonAccessibility *)self accessibilityIdentifier];
  if (([v3 isEqualToString:@"WeatherButton"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"YahooButton"))
  {
    v4 = *MEMORY[0x29EDC7F98];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MobileTimerUIButtonAccessibility;
    v4 = [(MobileTimerUIButtonAccessibility *)&v6 accessibilityTraits];
  }

  return v4;
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

  v5 = [(MobileTimerUIButtonAccessibility *)self accessibilityIdentification];
  v6 = [v5 isEqualToString:@"UITableCellViewDisclosure"];

  return v4 & v6;
}

uint64_t __83__MobileTimerUIButtonAccessibility__isAlarmTableViewCellDescendantDisclosureButton__block_invoke()
{
  result = MEMORY[0x29C2E1AE0](@"MTAAlarmTableViewCell");
  _isAlarmTableViewCellDescendantDisclosureButton__AlarmTableViewCellClass = result;
  return result;
}

@end