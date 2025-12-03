@interface SBUIControlAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation SBUIControlAccessibility

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(SBUIControlAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"ShowcaseBlockingView"];

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
    accessibilityLabel = ;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBUIControlAccessibility;
    accessibilityLabel = [(SBUIControlAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  accessibilityIdentifier = [(SBUIControlAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"ShowcaseBlockingView"];

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
    accessibilityHint = ;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBUIControlAccessibility;
    accessibilityHint = [(SBUIControlAccessibility *)&v7 accessibilityHint];
  }

  return accessibilityHint;
}

- (BOOL)isAccessibilityElement
{
  accessibilityIdentifier = [(SBUIControlAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"ShowcaseBlockingView"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBUIControlAccessibility;
  return [(SBUIControlAccessibility *)&v6 isAccessibilityElement];
}

@end