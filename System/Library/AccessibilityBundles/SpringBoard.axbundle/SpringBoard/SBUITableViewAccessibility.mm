@interface SBUITableViewAccessibility
- (BOOL)isAccessibilityElement;
- (BOOL)isAccessibilityOpaqueElementProvider;
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation SBUITableViewAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityIdentification = [(SBUITableViewAccessibility *)self accessibilityIdentification];
  if (([accessibilityIdentification isEqualToString:@"GuideSectionList"] & 1) != 0 || objc_msgSend(accessibilityIdentification, "isEqualToString:", @"GuideDomainList")) && (-[SBUITableViewAccessibility accessibilityElementsHidden](self, "accessibilityElementsHidden"))
  {
    isAccessibilityElement = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBUITableViewAccessibility;
    isAccessibilityElement = [(SBUITableViewAccessibility *)&v6 isAccessibilityElement];
  }

  return isAccessibilityElement;
}

- (BOOL)isAccessibilityOpaqueElementProvider
{
  accessibilityIdentification = [(SBUITableViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"NCTodayTableView"];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SBUITableViewAccessibility;
  return [(SBUITableViewAccessibility *)&v6 isAccessibilityOpaqueElementProvider];
}

- (id)_accessibilitySupplementaryFooterViews
{
  accessibilityIdentification = [(SBUITableViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"NCTodayTableView"];

  if (v4)
  {
    tableFooterView = [(SBUITableViewAccessibility *)self tableFooterView];
    options = [MEMORY[0x29EDC7328] options];
    [options setShouldUseAllSubviews:1];
    [options setSorted:0];
    _accessibilitySupplementaryFooterViews = [tableFooterView _accessibilityLeafDescendantsWithOptions:options];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBUITableViewAccessibility;
    _accessibilitySupplementaryFooterViews = [(SBUITableViewAccessibility *)&v9 _accessibilitySupplementaryFooterViews];
  }

  return _accessibilitySupplementaryFooterViews;
}

@end