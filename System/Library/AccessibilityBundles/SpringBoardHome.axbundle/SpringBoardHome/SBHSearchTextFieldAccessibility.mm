@interface SBHSearchTextFieldAccessibility
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (unint64_t)accessibilityTraits;
- (void)updateVisualStyling;
@end

@implementation SBHSearchTextFieldAccessibility

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7FB8];
  v4.receiver = self;
  v4.super_class = SBHSearchTextFieldAccessibility;
  return [(SBHSearchTextFieldAccessibility *)&v4 accessibilityTraits]| v2;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v4 = AXSBIconControllerSharedInstance();
  v5 = v4;
  if (scroll == 1 && [v4 _axIsShowingAppLibrary])
  {
    [v5 _axHideAppLibrary];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)accessibilityPerformEscape
{
  v3 = AXSBIconControllerSharedInstance();
  if ([v3 _axIsShowingAppLibrary])
  {
    [v3 _axHideAppLibrary];
    accessibilityPerformEscape = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBHSearchTextFieldAccessibility;
    accessibilityPerformEscape = [(SBHSearchTextFieldAccessibility *)&v6 accessibilityPerformEscape];
  }

  return accessibilityPerformEscape;
}

- (void)updateVisualStyling
{
  v3.receiver = self;
  v3.super_class = SBHSearchTextFieldAccessibility;
  [(SBHSearchTextFieldAccessibility *)&v3 updateVisualStyling];
  if ([(SBHSearchTextFieldAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    if ([(SBHSearchTextFieldAccessibility *)self _accessibilityViewIsVisible])
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], self);
    }
  }
}

@end