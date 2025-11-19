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
  v4 = [(SmallBreakoutCollectionViewCellAccessibility *)&v9 accessibilityCustomActions];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(SmallBreakoutCollectionViewCellAccessibility *)self _axDetailsView];
  v7 = [v6 accessibilityCustomActions];
  [v5 axSafelyAddObjectsFromArray:v7];

  return v5;
}

- (id)automationElements
{
  v11.receiver = self;
  v11.super_class = SmallBreakoutCollectionViewCellAccessibility;
  v3 = [(SmallBreakoutCollectionViewCellAccessibility *)&v11 automationElements];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = v6;

  v8 = [(SmallBreakoutCollectionViewCellAccessibility *)self _axDetailsView];
  v9 = [v8 automationElements];
  [v7 axSafelyAddObjectsFromArray:v9];

  return v7;
}

@end