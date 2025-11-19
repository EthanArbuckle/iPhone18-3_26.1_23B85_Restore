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
  v3 = [(SBUILabelAccessibility *)self accessibilityIdentification];
  if (([v3 isEqualToString:@"LockScreenTimeLabel"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"LockScreenDateLabel"))
  {
    v4 = [(SBUILabelAccessibility *)self _accessibilityViewIsVisible];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBUILabelAccessibility;
    v4 = [(SBUILabelAccessibility *)&v7 isAccessibilityElement];
  }

  v5 = v4;

  return v5;
}

- (id)accessibilityValue
{
  v3 = [(SBUILabelAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"AirPlay"];

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
  v3 = [(SBUILabelAccessibility *)self accessibilityIdentification];
  if ([v3 isEqualToString:@"LockScreenTimeLabel"])
  {
    v4 = [MEMORY[0x29EDB8DB0] date];
    v5 = AXDateStringForFormat();
  }

  else
  {
    v6 = [(SBUILabelAccessibility *)self accessibilityIdentifier];
    v7 = [v6 isEqualToString:@"AirPlay"];

    if (v7)
    {
      v8 = accessibilityLocalizedString(@"airplay.button");
    }

    else
    {
      v10.receiver = self;
      v10.super_class = SBUILabelAccessibility;
      v8 = [(SBUILabelAccessibility *)&v10 accessibilityLabel];
    }

    v5 = v8;
  }

  return v5;
}

- (BOOL)_accessibilityViewIsVisible
{
  v3 = [(SBUILabelAccessibility *)self accessibilityIdentification];
  if (([v3 isEqualToString:@"LockScreenTimeLabel"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"LockScreenDateLabel"))
  {
    v4 = [(SBUILabelAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Cstimerview.isa)];
    v5 = [v4 _accessibilityViewIsVisible];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBUILabelAccessibility;
    v5 = [(SBUILabelAccessibility *)&v7 _accessibilityViewIsVisible];
  }

  return v5;
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
    v11 = [(SBUILabelAccessibility *)self superview];
    [v11 accessibilityFrame];
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