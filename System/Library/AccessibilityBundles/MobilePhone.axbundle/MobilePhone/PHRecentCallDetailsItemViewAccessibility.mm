@interface PHRecentCallDetailsItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsTTYCall;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PHRecentCallDetailsItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHRecentCallDetailsItemView" hasInstanceMethod:@"timeLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHRecentCallDetailsItemView" hasInstanceMethod:@"statusLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHRecentCallDetailsItemView" hasInstanceVariable:@"_ttyDetailDisclosureImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"PHRecentCallDetailsItemView" hasInstanceMethod:@"durationAndDataLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHRecentCallDetailsItemView" hasInstanceMethod:@"verifiedBadgeView" withFullSignature:{"@", 0}];
}

- (BOOL)_axIsTTYCall
{
  v2 = [(PHRecentCallDetailsItemViewAccessibility *)self safeValueForKey:@"_ttyDetailDisclosureImageView"];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)accessibilityTraits
{
  _axIsTTYCall = [(PHRecentCallDetailsItemViewAccessibility *)self _axIsTTYCall];
  v3 = MEMORY[0x29EDC7F70];
  if (!_axIsTTYCall)
  {
    v3 = MEMORY[0x29EDC7FA0];
  }

  return *v3;
}

- (id)accessibilityHint
{
  if ([(PHRecentCallDetailsItemViewAccessibility *)self _axIsTTYCall])
  {
    v2 = accessibilityMobilePhoneLocalizedString(@"view.tty.conversation");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)accessibilityLabel
{
  v3 = [(PHRecentCallDetailsItemViewAccessibility *)self safeUIViewForKey:@"verifiedBadgeView"];
  _accessibilityViewIsVisible = [v3 _accessibilityViewIsVisible];

  if ([(PHRecentCallDetailsItemViewAccessibility *)self _axIsTTYCall])
  {
    v5 = accessibilityMobilePhoneLocalizedString(@"tty.text");
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PHRecentCallDetailsItemViewAccessibility *)self safeValueForKey:@"timeLabel"];
  accessibilityLabel = [v6 accessibilityLabel];
  v8 = [(PHRecentCallDetailsItemViewAccessibility *)self safeValueForKey:@"statusLabel"];
  accessibilityLabel2 = [v8 accessibilityLabel];
  if (_accessibilityViewIsVisible)
  {
    v10 = accessibilityMobilePhoneLocalizedString(@"verified.call");
  }

  else
  {
    v10 = 0;
  }

  v11 = [(PHRecentCallDetailsItemViewAccessibility *)self safeValueForKey:@"durationAndDataLabel"];
  accessibilityLabel3 = [v11 accessibilityLabel];
  v12 = __UIAXStringForVariables();

  if (_accessibilityViewIsVisible)
  {
  }

  return v12;
}

@end