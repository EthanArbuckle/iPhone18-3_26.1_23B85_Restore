@interface SmallBreakoutCollectionViewCellAccessibility
- (id)accessibilityCustomActions;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation SmallBreakoutCollectionViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SmallBreakoutCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SmallBreakoutCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityCustomActions
{
  v3 = MEMORY[0x29EDB8DE8];
  v9.receiver = self;
  v9.super_class = SmallBreakoutCollectionViewCellAccessibility;
  accessibilityCustomActions = [(SmallBreakoutCollectionViewCellAccessibility *)&v9 accessibilityCustomActions];
  v5 = [v3 arrayWithArray:accessibilityCustomActions];

  _axDetailsView = [(SmallBreakoutCollectionViewCellAccessibility *)self _axDetailsView];
  accessibilityCustomActions2 = [_axDetailsView accessibilityCustomActions];
  [v5 axSafelyAddObjectsFromArray:accessibilityCustomActions2];

  return v5;
}

- (id)automationElements
{
  v11.receiver = self;
  v11.super_class = SmallBreakoutCollectionViewCellAccessibility;
  automationElements = [(SmallBreakoutCollectionViewCellAccessibility *)&v11 automationElements];
  v4 = [automationElements mutableCopy];
  v5 = v4;
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = array;

  _axDetailsView = [(SmallBreakoutCollectionViewCellAccessibility *)self _axDetailsView];
  automationElements2 = [_axDetailsView automationElements];
  [v7 axSafelyAddObjectsFromArray:automationElements2];

  return v7;
}

@end