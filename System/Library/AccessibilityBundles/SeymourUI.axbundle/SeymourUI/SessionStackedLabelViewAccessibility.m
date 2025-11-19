@interface SessionStackedLabelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SessionStackedLabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.SessionStackedLabelView" hasInstanceMethod:@"primaryLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SeymourUI.SessionStackedLabelView" hasInstanceMethod:@"secondaryLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SeymourUI.SessionStackedLabelView" hasInstanceMethod:@"noDataIndicator" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SessionStackedLabelViewAccessibility *)self safeValueForKey:@"primaryLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(SessionStackedLabelViewAccessibility *)self safeValueForKey:@"secondaryLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = [(SessionStackedLabelViewAccessibility *)self safeStringForKey:@"noDataIndicator"];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"--";
  }

  if ([v6 containsString:v8])
  {
    v9 = accessibilityLocalizedString(@"no.data");

    v6 = v9;
  }

  if (v6)
  {
    if ([v6 containsString:@":"])
    {
      AXDurationForDurationString();
      if (v10 > 0.0)
      {
        v11 = AXDurationStringForDuration();

        v6 = v11;
      }
    }
  }

  v12 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v4, v6}];
  v13 = AXLabelForElements();
  v15 = _accessibilityReplaceStylsticBulletsForSpeaking(v13, v14);

  return v15;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SessionStackedLabelViewAccessibility;
  return *MEMORY[0x29EDC7FD0] | [(SessionStackedLabelViewAccessibility *)&v3 accessibilityTraits];
}

@end