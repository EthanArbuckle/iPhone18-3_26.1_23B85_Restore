@interface SK_UICollectionViewAccessibility
- (BOOL)_accessibilityOnlyComparesByXAxis;
- (BOOL)_accessibilityShouldOverrideScrollViewContentOffsetLimits;
- (BOOL)_accessibilityUseXRightOffsetForScrollOpaqueElementIntoViewDirection:(int64_t)a3;
- (BOOL)_axIsCollectionViewCarousel;
- (double)_accessibilityCellWidth;
- (double)_accessibilityLeftOpaqueScrollViewContentOffsetLimit;
- (double)_accessibilityRightOpaqueScrollViewContentOffsetLimit;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySortedElementsWithinWithOptions:(id)a3;
- (unint64_t)_accessibilityActualCellCount;
- (unint64_t)_accessibilityModelCellCount;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SK_UICollectionViewAccessibility

- (BOOL)_axIsCollectionViewCarousel
{
  v3 = [(SK_UICollectionViewAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"ShelfCollectionView"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SK_UICollectionViewAccessibility *)self accessibilityIdentifier];
    v4 = [v5 isEqualToString:@"SKUICarouselCollection"];
  }

  return v4;
}

- (BOOL)_accessibilityOnlyComparesByXAxis
{
  if ([(SK_UICollectionViewAccessibility *)self _axIsCollectionViewCarousel])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SK_UICollectionViewAccessibility;
  return [(SK_UICollectionViewAccessibility *)&v4 _accessibilityOnlyComparesByXAxis];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SK_UICollectionViewAccessibility;
  [(SK_UICollectionViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  if ([(SK_UICollectionViewAccessibility *)self _axIsCollectionViewCarousel])
  {
    v3 = [(SK_UICollectionViewAccessibility *)self safeValueForKey:@"delegate"];
    NSClassFromString(&cfstr_Skuicarouselpa_0.isa);
    if (objc_opt_isKindOfClass())
    {
      [v3 _accessibilityLoadAccessibilityInformation];
    }
  }
}

- (id)_accessibilityScrollStatus
{
  if ([(SK_UICollectionViewAccessibility *)self _axIsCollectionViewCarousel])
  {
    [(SK_UICollectionViewAccessibility *)self _accessibilityModelCellCount];
    v3 = MEMORY[0x29EDBA0F8];
    v4 = accessibilitySKUILocalizedString(@"top.shelf.carousel.status");
    v5 = AXFormatInteger();
    v6 = [v3 stringWithFormat:v4, v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SK_UICollectionViewAccessibility;
    v6 = [(SK_UICollectionViewAccessibility *)&v8 _accessibilityScrollStatus];
  }

  return v6;
}

- (BOOL)_accessibilityUseXRightOffsetForScrollOpaqueElementIntoViewDirection:(int64_t)a3
{
  v5 = [(SK_UICollectionViewAccessibility *)self _axIsCollectionViewCarousel];
  if (v5)
  {
    if (a3 == 2)
    {
      LOBYTE(v5) = [(SK_UICollectionViewAccessibility *)self _accessibilityIsRTL]^ 1;
    }

    else if (a3 == 1)
    {

      LOBYTE(v5) = [(SK_UICollectionViewAccessibility *)self _accessibilityIsRTL];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)_accessibilitySortedElementsWithinWithOptions:(id)a3
{
  v4 = a3;
  if (_accessibilitySortedElementsWithinWithOptions__onceToken != -1)
  {
    [SK_UICollectionViewAccessibility _accessibilitySortedElementsWithinWithOptions:];
  }

  if (_accessibilitySortedElementsWithinWithOptions__IsIBooks == 1 && [(SK_UICollectionViewAccessibility *)self _axIsCollectionViewCarousel])
  {
    v5 = [(SK_UICollectionViewAccessibility *)self subviews];
    v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_315];

    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __82__SK_UICollectionViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_3;
    v11[3] = &unk_29F3043B0;
    v11[4] = self;
    v7 = [v6 indexesOfObjectsPassingTest:v11];
    if ([v7 count])
    {
      v8 = [v6 mutableCopy];
      [v8 removeObjectsAtIndexes:v7];

      v6 = v8;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SK_UICollectionViewAccessibility;
    v6 = [(SK_UICollectionViewAccessibility *)&v10 _accessibilitySortedElementsWithinWithOptions:v4];
  }

  return v6;
}

- (double)_accessibilityRightOpaqueScrollViewContentOffsetLimit
{
  if ([(SK_UICollectionViewAccessibility *)self _axIsCollectionViewCarousel])
  {
    if ([(SK_UICollectionViewAccessibility *)self _accessibilityApplicationIsRTL])
    {
      v3 = [(SK_UICollectionViewAccessibility *)self _accessibilityActualCellCount];
    }

    else
    {
      v3 = [(SK_UICollectionViewAccessibility *)self _accessibilityModelCellCount];
    }

    v5 = v3;
    if ([(SK_UICollectionViewAccessibility *)self _accessibilityShouldOverrideScrollViewContentOffsetLimits])
    {
      [(SK_UICollectionViewAccessibility *)self _accessibilityCellWidth];
      return v6 * (v5 - 1);
    }

    else
    {
      [(SK_UICollectionViewAccessibility *)&v8 _accessibilityRightOpaqueScrollViewContentOffsetLimit:v7.receiver];
    }
  }

  else
  {
    [(SK_UICollectionViewAccessibility *)&v7 _accessibilityRightOpaqueScrollViewContentOffsetLimit:self];
  }

  return result;
}

- (double)_accessibilityLeftOpaqueScrollViewContentOffsetLimit
{
  if ([(SK_UICollectionViewAccessibility *)self _axIsCollectionViewCarousel])
  {
    v3 = 0.0;
    if ([(SK_UICollectionViewAccessibility *)self _accessibilityApplicationIsRTL])
    {
      v4 = [(SK_UICollectionViewAccessibility *)self _accessibilityActualCellCount];
      v3 = (v4 + ~[(SK_UICollectionViewAccessibility *)self _accessibilityModelCellCount]);
    }

    if ([(SK_UICollectionViewAccessibility *)self _accessibilityShouldOverrideScrollViewContentOffsetLimits])
    {
      [(SK_UICollectionViewAccessibility *)self _accessibilityCellWidth];
      return v3 * v5;
    }

    else
    {
      [(SK_UICollectionViewAccessibility *)&v8 _accessibilityLeftOpaqueScrollViewContentOffsetLimit:v7.receiver];
    }
  }

  else
  {
    [(SK_UICollectionViewAccessibility *)&v7 _accessibilityLeftOpaqueScrollViewContentOffsetLimit:self];
  }

  return result;
}

- (BOOL)_accessibilityShouldOverrideScrollViewContentOffsetLimits
{
  if (![(SK_UICollectionViewAccessibility *)self _axIsCollectionViewCarousel])
  {
    return 0;
  }

  v3 = [(SK_UICollectionViewAccessibility *)self safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Skuicarouselpa_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safeValueForKey:@"_modelObjects"];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_accessibilityModelCellCount
{
  if (![(SK_UICollectionViewAccessibility *)self _axIsCollectionViewCarousel])
  {
    return 0;
  }

  v3 = [(SK_UICollectionViewAccessibility *)self safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Skuicarouselpa_0.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    return 0;
  }

  v4 = [v3 safeValueForKey:@"_modelObjects"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [v5 count];
  return v6;
}

- (unint64_t)_accessibilityActualCellCount
{
  if (![(SK_UICollectionViewAccessibility *)self _axIsCollectionViewCarousel])
  {
    return 0;
  }

  return [(SK_UICollectionViewAccessibility *)self numberOfItemsInSection:0];
}

- (double)_accessibilityCellWidth
{
  v3 = [(SK_UICollectionViewAccessibility *)self _axIsCollectionViewCarousel];
  result = 0.0;
  if (v3)
  {
    [(SK_UICollectionViewAccessibility *)self contentSize];
    return v5 / [(SK_UICollectionViewAccessibility *)self _accessibilityActualCellCount];
  }

  return result;
}

@end