@interface PDFThumbnailViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (id)_axPageDescriptionForPage:(id)a3;
- (id)_axThumbnailSelf;
- (id)accessibilityValue;
- (id)automationElements;
- (int64_t)_axCurrentPageNumber;
- (int64_t)_axPageNumberForPage:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)_axMoveOnePage:(BOOL)a3;
@end

@implementation PDFThumbnailViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PDFThumbnailView" hasInstanceVariable:@"_iconsView" withType:"UIView<PDFThumbnailCollectionViewInterface>"];
  [v3 validateClass:@"PDFIconsView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"PDFIconsView" hasInstanceVariable:@"_activeIcon" withType:"PDFPageIconLayer"];
  [v3 validateClass:@"PDFPageIconLayer" isKindOfClass:@"CALayer"];
  [v3 validateClass:@"PDFIconsView" hasInstanceVariable:@"_icons" withType:"NSMutableArray"];
}

- (id)_axThumbnailSelf
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();

  return v2;
}

- (int64_t)_axPageNumberForPage:(id)a3
{
  v4 = a3;
  v5 = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
  v6 = [v5 PDFView];
  v7 = [v6 document];

  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 && v7)
  {
    v8 = [v7 indexForPage:v4];
  }

  return v8;
}

- (int64_t)_axCurrentPageNumber
{
  v3 = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
  v4 = [v3 PDFView];
  v5 = [v4 currentPage];

  v6 = [(PDFThumbnailViewAccessibility *)self _axPageNumberForPage:v5];
  return v6;
}

- (id)_axPageDescriptionForPage:(id)a3
{
  v4 = a3;
  v5 = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
  v6 = [v5 PDFView];
  v7 = [v6 document];

  v8 = [(PDFThumbnailViewAccessibility *)self _axPageNumberForPage:v4];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = v8 + 1;
    v11 = [v7 pageCount];
    v12 = MEMORY[0x29EDBA0F8];
    v13 = accessibilityLocalizedString(@"page.x.of.y");
    v9 = [v12 localizedStringWithFormat:v13, v10, v11];
  }

  return v9;
}

- (void)_axMoveOnePage:(BOOL)a3
{
  v3 = a3;
  v5 = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
  v6 = [v5 PDFView];

  if ([(PDFThumbnailViewAccessibility *)self _axCurrentPageNumber]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v3)
    {
      if ([v6 canGoToNextPage])
      {
        [v6 goToNextPage:self];
      }
    }

    else if ([v6 canGoToPreviousPage])
    {
      [v6 goToPreviousPage:self];
    }
  }
}

- (BOOL)isAccessibilityElement
{
  v2 = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
  v3 = [v2 PDFView];
  v4 = v3 != 0;

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
  v4 = [v3 PDFView];
  v5 = [v4 document];

  v6 = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
  v7 = [v6 PDFView];
  v8 = [v7 currentPage];

  v9 = 0;
  if (v5 && v8)
  {
    v9 = [v5 pageCount] > 1;
  }

  v13.receiver = self;
  v13.super_class = PDFThumbnailViewAccessibility;
  v10 = [(PDFThumbnailViewAccessibility *)&v13 accessibilityTraits];
  if (v9)
  {
    v11 = *MEMORY[0x29EDC7F60];
  }

  else
  {
    v11 = 0;
  }

  return v11 | v10;
}

- (id)accessibilityValue
{
  v10.receiver = self;
  v10.super_class = PDFThumbnailViewAccessibility;
  v3 = [(PDFThumbnailViewAccessibility *)&v10 accessibilityValue];

  if (v3)
  {
    v9.receiver = self;
    v9.super_class = PDFThumbnailViewAccessibility;
    v4 = [(PDFThumbnailViewAccessibility *)&v9 accessibilityValue];
  }

  else
  {
    v5 = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
    v6 = [v5 PDFView];
    v7 = [v6 currentPage];

    v4 = [(PDFThumbnailViewAccessibility *)self _axPageDescriptionForPage:v7];
  }

  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  v13 = 0;
  v3 = [(PDFThumbnailViewAccessibility *)self _axIconsView];
  v4 = [v3 safeValueForKey:@"_activeIcon"];
  v5 = __UIAccessibilitySafeClass();

  if (v5)
  {
    [v5 accessibilityFrame];
    AX_CGRectGetCenter();
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PDFThumbnailViewAccessibility;
    [(PDFThumbnailViewAccessibility *)&v12 accessibilityActivationPoint];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGRect)accessibilityFrame
{
  v3 = [(PDFThumbnailViewAccessibility *)self _axIconsView];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityFrame];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PDFThumbnailViewAccessibility;
    [(PDFThumbnailViewAccessibility *)&v17 accessibilityFrame];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)automationElements
{
  v13.receiver = self;
  v13.super_class = PDFThumbnailViewAccessibility;
  v3 = [(PDFThumbnailViewAccessibility *)&v13 automationElements];
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

  v8 = [(PDFThumbnailViewAccessibility *)self _axIconsView];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 safeValueForKey:@"_icons"];
    v11 = __UIAccessibilitySafeClass();

    [v7 axSafelyAddObjectsFromArray:v11];
  }

  return v7;
}

@end