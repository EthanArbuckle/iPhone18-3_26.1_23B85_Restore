@interface SBUIControlAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation SBUIControlAccessibility

- (id)accessibilityLabel
{
  v3 = [(SBUIControlAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"ShowcaseBlockingView"];

  if (v4)
  {
    if (AXSpringBoardIsAssistantVisible())
    {
      UIAXPrivateLocalizedString();
    }

    else
    {
      accessibilityLocalizedString(@"dismiss.app.switcher.label");
    }
    v5 = ;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBUIControlAccessibility;
    v5 = [(SBUIControlAccessibility *)&v7 accessibilityLabel];
  }

  return v5;
}

- (id)accessibilityHint
{
  v3 = [(SBUIControlAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"ShowcaseBlockingView"];

  if (v4)
  {
    if (AXSpringBoardIsAssistantVisible())
    {
      UIAXPrivateLocalizedString();
    }

    else
    {
      accessibilityLocalizedString(@"dismiss.app.switcher.hint");
    }
    v5 = ;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBUIControlAccessibility;
    v5 = [(SBUIControlAccessibility *)&v7 accessibilityHint];
  }

  return v5;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(SBUIControlAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"ShowcaseBlockingView"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBUIControlAccessibility;
  return [(SBUIControlAccessibility *)&v6 isAccessibilityElement];
}

@end