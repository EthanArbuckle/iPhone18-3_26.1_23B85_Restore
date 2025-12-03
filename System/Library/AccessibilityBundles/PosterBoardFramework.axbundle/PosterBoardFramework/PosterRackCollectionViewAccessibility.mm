@interface PosterRackCollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsPosterSwitcher;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axCenteredPoster;
- (id)_axCollectionViewController;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PosterRackCollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PosterBoard.PosterRackCollectionView" isKindOfClass:@"UICollectionView"];
  [validationsCopy validateClass:@"PosterBoard.PosterRackCollectionViewController" hasSwiftField:@"layoutMode" withSwiftType:"PRUISSwitcherLayoutMode"];
}

- (id)accessibilityValue
{
  if ([(PosterRackCollectionViewAccessibility *)self _axIsPosterSwitcher])
  {
    _axCenteredPoster = [(PosterRackCollectionViewAccessibility *)self _axCenteredPoster];
    accessibilityLabel = [_axCenteredPoster accessibilityLabel];
    _axCenteredPoster2 = [(PosterRackCollectionViewAccessibility *)self _axCenteredPoster];
    accessibilityValue = [_axCenteredPoster2 accessibilityValue];
    accessibilityValue2 = __UIAXStringForVariables();
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PosterRackCollectionViewAccessibility;
    accessibilityValue2 = [(PosterRackCollectionViewAccessibility *)&v9 accessibilityValue];
  }

  return accessibilityValue2;
}

- (id)accessibilityHint
{
  if ([(PosterRackCollectionViewAccessibility *)self _axIsPosterSwitcher])
  {
    _axCenteredPoster = [(PosterRackCollectionViewAccessibility *)self _axCenteredPoster];
    accessibilityHint = [_axCenteredPoster accessibilityHint];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PosterRackCollectionViewAccessibility;
    accessibilityHint = [(PosterRackCollectionViewAccessibility *)&v6 accessibilityHint];
  }

  return accessibilityHint;
}

- (id)accessibilityIdentifier
{
  if ([(PosterRackCollectionViewAccessibility *)self _axIsPosterSwitcher])
  {
    _axCenteredPoster = [(PosterRackCollectionViewAccessibility *)self _axCenteredPoster];
    accessibilityIdentifier = [_axCenteredPoster accessibilityIdentifier];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PosterRackCollectionViewAccessibility;
    accessibilityIdentifier = [(PosterRackCollectionViewAccessibility *)&v6 accessibilityIdentifier];
  }

  return accessibilityIdentifier;
}

- (BOOL)isAccessibilityElement
{
  if ([(PosterRackCollectionViewAccessibility *)self _axIsPosterSwitcher])
  {
    accessibilityElements = [(PosterRackCollectionViewAccessibility *)self accessibilityElements];
    v4 = accessibilityElements == 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PosterRackCollectionViewAccessibility;
    return [(PosterRackCollectionViewAccessibility *)&v6 isAccessibilityElement];
  }

  return v4;
}

- (CGRect)accessibilityFrame
{
  if ([(PosterRackCollectionViewAccessibility *)self _axIsPosterSwitcher])
  {
    _axCenteredPoster = [(PosterRackCollectionViewAccessibility *)self _axCenteredPoster];
    [_axCenteredPoster accessibilityFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = PosterRackCollectionViewAccessibility;
    [(PosterRackCollectionViewAccessibility *)&v20 accessibilityFrame];
    v5 = v12;
    v7 = v13;
    v9 = v14;
    v11 = v15;
  }

  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)accessibilityPath
{
  if ([(PosterRackCollectionViewAccessibility *)self _axIsPosterSwitcher])
  {
    _axCenteredPoster = [(PosterRackCollectionViewAccessibility *)self _axCenteredPoster];
    accessibilityPath = [_axCenteredPoster accessibilityPath];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PosterRackCollectionViewAccessibility;
    accessibilityPath = [(PosterRackCollectionViewAccessibility *)&v6 accessibilityPath];
  }

  return accessibilityPath;
}

- (id)accessibilityCustomActions
{
  if ([(PosterRackCollectionViewAccessibility *)self _axIsPosterSwitcher])
  {
    _axCenteredPoster = [(PosterRackCollectionViewAccessibility *)self _axCenteredPoster];
    accessibilityCustomActions = [_axCenteredPoster accessibilityCustomActions];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PosterRackCollectionViewAccessibility;
    accessibilityCustomActions = [(PosterRackCollectionViewAccessibility *)&v6 accessibilityCustomActions];
  }

  return accessibilityCustomActions;
}

- (unint64_t)accessibilityTraits
{
  if ([(PosterRackCollectionViewAccessibility *)self _axIsPosterSwitcher])
  {
    _axCenteredPoster = [(PosterRackCollectionViewAccessibility *)self _axCenteredPoster];
    accessibilityTraits = [_axCenteredPoster accessibilityTraits];

    return accessibilityTraits;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PosterRackCollectionViewAccessibility;
    return [(PosterRackCollectionViewAccessibility *)&v6 accessibilityTraits];
  }
}

- (id)accessibilityElements
{
  v9[1] = *MEMORY[0x29EDCA608];
  if ([(PosterRackCollectionViewAccessibility *)self _axIsPosterSwitcher])
  {
    v3 = [(PosterRackCollectionViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_0];
    v4 = v3;
    if (v3)
    {
      v9[0] = v3;
      accessibilityElements = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];
    }

    else
    {
      accessibilityElements = 0;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PosterRackCollectionViewAccessibility;
    accessibilityElements = [(PosterRackCollectionViewAccessibility *)&v8 accessibilityElements];
  }

  v6 = *MEMORY[0x29EDCA608];

  return accessibilityElements;
}

uint64_t __62__PosterRackCollectionViewAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E7EC0](@"PosterBoard.PosterSectionRemovalView");
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v4 = [v3 _accessibilityViewIsVisible];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_accessibilitySupplementaryFooterViews
{
  if ([(PosterRackCollectionViewAccessibility *)self _axIsPosterSwitcher])
  {
    _axCenteredPoster = [(PosterRackCollectionViewAccessibility *)self _axCenteredPoster];
    _accessibilitySupplementaryFooterViews = [_axCenteredPoster _accessibilitySupplementaryFooterViews];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PosterRackCollectionViewAccessibility;
    _accessibilitySupplementaryFooterViews = [(PosterRackCollectionViewAccessibility *)&v6 _accessibilitySupplementaryFooterViews];
  }

  return _accessibilitySupplementaryFooterViews;
}

- (id)_axCollectionViewController
{
  objc_opt_class();
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  dataSource = [v2 dataSource];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (BOOL)_axIsPosterSwitcher
{
  _axCollectionViewController = [(PosterRackCollectionViewAccessibility *)self _axCollectionViewController];
  v3 = [_axCollectionViewController safeSwiftValueForKey:@"layoutMode"];
  v4 = AXConvertToLayoutMode();

  return v4 == 1;
}

- (id)_axCenteredPoster
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = AXCenteredPosterCellInCollectionView(v2);

  return v3;
}

@end