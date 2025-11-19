@interface MPRouteLabelAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation MPRouteLabelAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = NSClassFromString(&cfstr_Mrunowplayingh.isa);
  if (v3)
  {
    v4 = [(MPRouteLabelAccessibility *)self _accessibilityAncestorIsKindOf:v3];
    v5 = v4 == 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MPRouteLabelAccessibility;
    return [(MPRouteLabelAccessibility *)&v7 isAccessibilityElement];
  }

  return v5;
}

- (id)accessibilityLabel
{
  v2 = MEMORY[0x29EDBA018];
  v3 = [(MPRouteLabelAccessibility *)self safeSetForKey:@"routeNames"];
  v4 = [v3 allObjects];
  v5 = [v2 localizedStringByJoiningStrings:v4];

  return v5;
}

@end