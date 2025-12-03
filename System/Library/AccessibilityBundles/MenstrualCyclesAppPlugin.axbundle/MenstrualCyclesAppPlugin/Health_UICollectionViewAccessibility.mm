@interface Health_UICollectionViewAccessibility
- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility;
- (BOOL)isAccessibilityElement;
- (id)accessibilityValue;
- (id)centerCellFromCollectionView:(id)view;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)adjustCycleTimelineCollectionViewIncrement:(BOOL)increment;
@end

@implementation Health_UICollectionViewAccessibility

- (BOOL)isAccessibilityElement
{
  if (AXDoesRequestingClientDeserveAutomation())
  {
    return 0;
  }

  accessibilityIdentification = [(Health_UICollectionViewAccessibility *)self accessibilityIdentification];
  v5 = [accessibilityIdentification isEqualToString:@"AXCycleTimelineCollectionView"];

  if (v5)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = Health_UICollectionViewAccessibility;
  return [(Health_UICollectionViewAccessibility *)&v6 isAccessibilityElement];
}

- (id)accessibilityValue
{
  accessibilityIdentification = [(Health_UICollectionViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXCycleTimelineCollectionView"];

  if (v4 && ([(Health_UICollectionViewAccessibility *)self centerCellFromCollectionView:self], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    accessibilityLabel = [v5 accessibilityLabel];
    accessibilityValue = [v6 accessibilityValue];
    accessibilityValue2 = __UIAXStringForVariables();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = Health_UICollectionViewAccessibility;
    accessibilityValue2 = [(Health_UICollectionViewAccessibility *)&v11 accessibilityValue];
  }

  return accessibilityValue2;
}

- (unint64_t)accessibilityTraits
{
  accessibilityIdentification = [(Health_UICollectionViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXCycleTimelineCollectionView"];

  if (v4)
  {
    return *MEMORY[0x29EDC7F60];
  }

  v6.receiver = self;
  v6.super_class = Health_UICollectionViewAccessibility;
  return [(Health_UICollectionViewAccessibility *)&v6 accessibilityTraits];
}

- (void)accessibilityIncrement
{
  accessibilityIdentification = [(Health_UICollectionViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXCycleTimelineCollectionView"];

  if (v4)
  {
    [(Health_UICollectionViewAccessibility *)self adjustCycleTimelineCollectionViewIncrement:1];
  }

  v5.receiver = self;
  v5.super_class = Health_UICollectionViewAccessibility;
  [(Health_UICollectionViewAccessibility *)&v5 accessibilityIncrement];
}

- (void)accessibilityDecrement
{
  accessibilityIdentification = [(Health_UICollectionViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXCycleTimelineCollectionView"];

  if (v4)
  {
    [(Health_UICollectionViewAccessibility *)self adjustCycleTimelineCollectionViewIncrement:0];
  }

  v5.receiver = self;
  v5.super_class = Health_UICollectionViewAccessibility;
  [(Health_UICollectionViewAccessibility *)&v5 accessibilityDecrement];
}

- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility
{
  accessibilityIdentifier = [(Health_UICollectionViewAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"AXLoggingCardCarouselViewCollectionView"])
  {

    return 1;
  }

  accessibilityIdentification = [(Health_UICollectionViewAccessibility *)self accessibilityIdentification];
  v5 = [accessibilityIdentification isEqualToString:@"AXCycleTimelineCollectionView"];

  if (v5)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = Health_UICollectionViewAccessibility;
  return [(Health_UICollectionViewAccessibility *)&v7 accessibilityCollectionViewBehavesLikeUIViewAccessibility];
}

- (void)adjustCycleTimelineCollectionViewIncrement:(BOOL)increment
{
  incrementCopy = increment;
  selfCopy = self;
  v4 = [(Health_UICollectionViewAccessibility *)selfCopy centerCellFromCollectionView:selfCopy];
  if (v4)
  {
    v5 = [(Health_UICollectionViewAccessibility *)selfCopy indexPathForCell:v4];
    v6 = MEMORY[0x29EDB9FE0];
    item = [v5 item];
    section = [v5 section];
    if (incrementCopy)
    {
      v9 = item + 1;
    }

    else
    {
      v9 = item - 1;
    }

    v10 = [v6 indexPathForItem:v9 inSection:section];
    v11 = [(Health_UICollectionViewAccessibility *)selfCopy cellForItemAtIndexPath:v10];

    if (v11)
    {
      [v11 center];
      v13 = v12;
      [(Health_UICollectionViewAccessibility *)selfCopy bounds];
      v15 = v13 + v14 * -0.5;
      [(Health_UICollectionViewAccessibility *)selfCopy contentOffset];
      [(Health_UICollectionViewAccessibility *)selfCopy setContentOffset:1 animated:v15];
    }
  }
}

- (id)centerCellFromCollectionView:(id)view
{
  v21 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  [viewCopy bounds];
  AX_CGRectGetCenter();
  v5 = v4;
  v7 = v6;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  indexPathsForVisibleItems = [viewCopy indexPathsForVisibleItems];
  v9 = [indexPathsForVisibleItems countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(indexPathsForVisibleItems);
      }

      v13 = [viewCopy cellForItemAtIndexPath:*(*(&v16 + 1) + 8 * v12)];
      [v13 bounds];
      [viewCopy convertRect:v13 fromView:?];
      v23.x = v5;
      v23.y = v7;
      if (CGRectContainsPoint(v24, v23))
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [indexPathsForVisibleItems countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  v14 = *MEMORY[0x29EDCA608];

  return v13;
}

@end