@interface Health_UICollectionViewAccessibility
- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility;
- (BOOL)isAccessibilityElement;
- (id)accessibilityValue;
- (id)centerCellFromCollectionView:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)adjustCycleTimelineCollectionViewIncrement:(BOOL)a3;
@end

@implementation Health_UICollectionViewAccessibility

- (BOOL)isAccessibilityElement
{
  if (AXDoesRequestingClientDeserveAutomation())
  {
    return 0;
  }

  v4 = [(Health_UICollectionViewAccessibility *)self accessibilityIdentification];
  v5 = [v4 isEqualToString:@"AXCycleTimelineCollectionView"];

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
  v3 = [(Health_UICollectionViewAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AXCycleTimelineCollectionView"];

  if (v4 && ([(Health_UICollectionViewAccessibility *)self centerCellFromCollectionView:self], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 accessibilityLabel];
    v10 = [v6 accessibilityValue];
    v8 = __UIAXStringForVariables();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = Health_UICollectionViewAccessibility;
    v8 = [(Health_UICollectionViewAccessibility *)&v11 accessibilityValue];
  }

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(Health_UICollectionViewAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AXCycleTimelineCollectionView"];

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
  v3 = [(Health_UICollectionViewAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AXCycleTimelineCollectionView"];

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
  v3 = [(Health_UICollectionViewAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AXCycleTimelineCollectionView"];

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
  v3 = [(Health_UICollectionViewAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"AXLoggingCardCarouselViewCollectionView"])
  {

    return 1;
  }

  v4 = [(Health_UICollectionViewAccessibility *)self accessibilityIdentification];
  v5 = [v4 isEqualToString:@"AXCycleTimelineCollectionView"];

  if (v5)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = Health_UICollectionViewAccessibility;
  return [(Health_UICollectionViewAccessibility *)&v7 accessibilityCollectionViewBehavesLikeUIViewAccessibility];
}

- (void)adjustCycleTimelineCollectionViewIncrement:(BOOL)a3
{
  v3 = a3;
  v16 = self;
  v4 = [(Health_UICollectionViewAccessibility *)v16 centerCellFromCollectionView:v16];
  if (v4)
  {
    v5 = [(Health_UICollectionViewAccessibility *)v16 indexPathForCell:v4];
    v6 = MEMORY[0x29EDB9FE0];
    v7 = [v5 item];
    v8 = [v5 section];
    if (v3)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v7 - 1;
    }

    v10 = [v6 indexPathForItem:v9 inSection:v8];
    v11 = [(Health_UICollectionViewAccessibility *)v16 cellForItemAtIndexPath:v10];

    if (v11)
    {
      [v11 center];
      v13 = v12;
      [(Health_UICollectionViewAccessibility *)v16 bounds];
      v15 = v13 + v14 * -0.5;
      [(Health_UICollectionViewAccessibility *)v16 contentOffset];
      [(Health_UICollectionViewAccessibility *)v16 setContentOffset:1 animated:v15];
    }
  }
}

- (id)centerCellFromCollectionView:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = a3;
  [v3 bounds];
  AX_CGRectGetCenter();
  v5 = v4;
  v7 = v6;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v3 indexPathsForVisibleItems];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(v8);
      }

      v13 = [v3 cellForItemAtIndexPath:*(*(&v16 + 1) + 8 * v12)];
      [v13 bounds];
      [v3 convertRect:v13 fromView:?];
      v23.x = v5;
      v23.y = v7;
      if (CGRectContainsPoint(v24, v23))
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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