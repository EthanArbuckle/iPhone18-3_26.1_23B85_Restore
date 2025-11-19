@interface SBUITableViewAccessibility
- (BOOL)isAccessibilityElement;
- (BOOL)isAccessibilityOpaqueElementProvider;
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation SBUITableViewAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(SBUITableViewAccessibility *)self accessibilityIdentification];
  if (([v3 isEqualToString:@"GuideSectionList"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"GuideDomainList")) && (-[SBUITableViewAccessibility accessibilityElementsHidden](self, "accessibilityElementsHidden"))
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBUITableViewAccessibility;
    v4 = [(SBUITableViewAccessibility *)&v6 isAccessibilityElement];
  }

  return v4;
}

- (BOOL)isAccessibilityOpaqueElementProvider
{
  v3 = [(SBUITableViewAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"NCTodayTableView"];

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
  v3 = [(SBUITableViewAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"NCTodayTableView"];

  if (v4)
  {
    v5 = [(SBUITableViewAccessibility *)self tableFooterView];
    v6 = [MEMORY[0x29EDC7328] options];
    [v6 setShouldUseAllSubviews:1];
    [v6 setSorted:0];
    v7 = [v5 _accessibilityLeafDescendantsWithOptions:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBUITableViewAccessibility;
    v7 = [(SBUITableViewAccessibility *)&v9 _accessibilitySupplementaryFooterViews];
  }

  return v7;
}

@end