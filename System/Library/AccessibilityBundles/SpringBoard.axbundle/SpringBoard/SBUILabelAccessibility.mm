@interface SBUILabelAccessibility
- (BOOL)_accessibilityViewIsVisible;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SBUILabelAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityIdentification = [(SBUILabelAccessibility *)self accessibilityIdentification];
  if (([accessibilityIdentification isEqualToString:@"LockScreenTimeLabel"] & 1) != 0 || objc_msgSend(accessibilityIdentification, "isEqualToString:", @"LockScreenDateLabel"))
  {
    _accessibilityViewIsVisible = [(SBUILabelAccessibility *)self _accessibilityViewIsVisible];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBUILabelAccessibility;
    _accessibilityViewIsVisible = [(SBUILabelAccessibility *)&v7 isAccessibilityElement];
  }

  v5 = _accessibilityViewIsVisible;

  return v5;
}

- (id)accessibilityValue
{
  accessibilityIdentifier = [(SBUILabelAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"AirPlay"];

  if (v4 && (-[SBUILabelAccessibility accessibilityLabel](self, "accessibilityLabel"), v5 = objc_claimAutoreleasedReturnValue(), v12.receiver = self, v12.super_class = SBUILabelAccessibility, -[SBUILabelAccessibility accessibilityLabel](&v12, sel_accessibilityLabel), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqualToString:v6], v6, v5, (v7 & 1) == 0))
  {
    [(SBUILabelAccessibility *)&v11 accessibilityLabel:v10.receiver];
  }

  else
  {
    [(SBUILabelAccessibility *)&v10 accessibilityValue:self];
  }
  v8 = ;

  return v8;
}

- (id)accessibilityLabel
{
  accessibilityIdentification = [(SBUILabelAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"LockScreenTimeLabel"])
  {
    date = [MEMORY[0x29EDB8DB0] date];
    v5 = AXDateStringForFormat();
  }

  else
  {
    accessibilityIdentifier = [(SBUILabelAccessibility *)self accessibilityIdentifier];
    v7 = [accessibilityIdentifier isEqualToString:@"AirPlay"];

    if (v7)
    {
      accessibilityLabel = accessibilityLocalizedString(@"airplay.button");
    }

    else
    {
      v10.receiver = self;
      v10.super_class = SBUILabelAccessibility;
      accessibilityLabel = [(SBUILabelAccessibility *)&v10 accessibilityLabel];
    }

    v5 = accessibilityLabel;
  }

  return v5;
}

- (BOOL)_accessibilityViewIsVisible
{
  accessibilityIdentification = [(SBUILabelAccessibility *)self accessibilityIdentification];
  if (([accessibilityIdentification isEqualToString:@"LockScreenTimeLabel"] & 1) != 0 || objc_msgSend(accessibilityIdentification, "isEqualToString:", @"LockScreenDateLabel"))
  {
    v4 = [(SBUILabelAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Cstimerview.isa)];
    _accessibilityViewIsVisible = [v4 _accessibilityViewIsVisible];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBUILabelAccessibility;
    _accessibilityViewIsVisible = [(SBUILabelAccessibility *)&v7 _accessibilityViewIsVisible];
  }

  return _accessibilityViewIsVisible;
}

- (CGRect)accessibilityFrame
{
  v20.receiver = self;
  v20.super_class = SBUILabelAccessibility;
  [(SBUILabelAccessibility *)&v20 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(SBUILabelAccessibility *)self _accessibilityBoolValueForKey:@"UseSuperviewAsFrame"])
  {
    superview = [(SBUILabelAccessibility *)self superview];
    [superview accessibilityFrame];
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

@end