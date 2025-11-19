@interface PHRecentCallDetailsItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsTTYCall;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PHRecentCallDetailsItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHRecentCallDetailsItemView" hasInstanceMethod:@"timeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHRecentCallDetailsItemView" hasInstanceMethod:@"statusLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHRecentCallDetailsItemView" hasInstanceVariable:@"_ttyDetailDisclosureImageView" withType:"UIImageView"];
  [v3 validateClass:@"PHRecentCallDetailsItemView" hasInstanceMethod:@"durationAndDataLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHRecentCallDetailsItemView" hasInstanceMethod:@"verifiedBadgeView" withFullSignature:{"@", 0}];
}

- (BOOL)_axIsTTYCall
{
  v2 = [(PHRecentCallDetailsItemViewAccessibility *)self safeValueForKey:@"_ttyDetailDisclosureImageView"];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(PHRecentCallDetailsItemViewAccessibility *)self _axIsTTYCall];
  v3 = MEMORY[0x29EDC7F70];
  if (!v2)
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
  v4 = [v3 _accessibilityViewIsVisible];

  if ([(PHRecentCallDetailsItemViewAccessibility *)self _axIsTTYCall])
  {
    v5 = accessibilityMobilePhoneLocalizedString(@"tty.text");
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PHRecentCallDetailsItemViewAccessibility *)self safeValueForKey:@"timeLabel"];
  v7 = [v6 accessibilityLabel];
  v8 = [(PHRecentCallDetailsItemViewAccessibility *)self safeValueForKey:@"statusLabel"];
  v9 = [v8 accessibilityLabel];
  if (v4)
  {
    v10 = accessibilityMobilePhoneLocalizedString(@"verified.call");
  }

  else
  {
    v10 = 0;
  }

  v11 = [(PHRecentCallDetailsItemViewAccessibility *)self safeValueForKey:@"durationAndDataLabel"];
  v14 = [v11 accessibilityLabel];
  v12 = __UIAXStringForVariables();

  if (v4)
  {
  }

  return v12;
}

@end