@interface PDFThumbnailViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (id)_axPageDescriptionForPage:(id)page;
- (id)_axThumbnailSelf;
- (id)accessibilityValue;
- (id)automationElements;
- (int64_t)_axCurrentPageNumber;
- (int64_t)_axPageNumberForPage:(id)page;
- (unint64_t)accessibilityTraits;
- (void)_axMoveOnePage:(BOOL)page;
@end

@implementation PDFThumbnailViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PDFThumbnailView" hasInstanceVariable:@"_iconsView" withType:"UIView<PDFThumbnailCollectionViewInterface>"];
  [validationsCopy validateClass:@"PDFIconsView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"PDFIconsView" hasInstanceVariable:@"_activeIcon" withType:"PDFPageIconLayer"];
  [validationsCopy validateClass:@"PDFPageIconLayer" isKindOfClass:@"CALayer"];
  [validationsCopy validateClass:@"PDFIconsView" hasInstanceVariable:@"_icons" withType:"NSMutableArray"];
}

- (id)_axThumbnailSelf
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();

  return v2;
}

- (int64_t)_axPageNumberForPage:(id)page
{
  pageCopy = page;
  _axThumbnailSelf = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
  pDFView = [_axThumbnailSelf PDFView];
  document = [pDFView document];

  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (pageCopy && document)
  {
    v8 = [document indexForPage:pageCopy];
  }

  return v8;
}

- (int64_t)_axCurrentPageNumber
{
  _axThumbnailSelf = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
  pDFView = [_axThumbnailSelf PDFView];
  currentPage = [pDFView currentPage];

  v6 = [(PDFThumbnailViewAccessibility *)self _axPageNumberForPage:currentPage];
  return v6;
}

- (id)_axPageDescriptionForPage:(id)page
{
  pageCopy = page;
  _axThumbnailSelf = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
  pDFView = [_axThumbnailSelf PDFView];
  document = [pDFView document];

  v8 = [(PDFThumbnailViewAccessibility *)self _axPageNumberForPage:pageCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = v8 + 1;
    pageCount = [document pageCount];
    v12 = MEMORY[0x29EDBA0F8];
    v13 = accessibilityLocalizedString(@"page.x.of.y");
    v9 = [v12 localizedStringWithFormat:v13, v10, pageCount];
  }

  return v9;
}

- (void)_axMoveOnePage:(BOOL)page
{
  pageCopy = page;
  _axThumbnailSelf = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
  pDFView = [_axThumbnailSelf PDFView];

  if ([(PDFThumbnailViewAccessibility *)self _axCurrentPageNumber]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    if (pageCopy)
    {
      if ([pDFView canGoToNextPage])
      {
        [pDFView goToNextPage:self];
      }
    }

    else if ([pDFView canGoToPreviousPage])
    {
      [pDFView goToPreviousPage:self];
    }
  }
}

- (BOOL)isAccessibilityElement
{
  _axThumbnailSelf = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
  pDFView = [_axThumbnailSelf PDFView];
  v4 = pDFView != 0;

  return v4;
}

- (unint64_t)accessibilityTraits
{
  _axThumbnailSelf = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
  pDFView = [_axThumbnailSelf PDFView];
  document = [pDFView document];

  _axThumbnailSelf2 = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
  pDFView2 = [_axThumbnailSelf2 PDFView];
  currentPage = [pDFView2 currentPage];

  v9 = 0;
  if (document && currentPage)
  {
    v9 = [document pageCount] > 1;
  }

  v13.receiver = self;
  v13.super_class = PDFThumbnailViewAccessibility;
  accessibilityTraits = [(PDFThumbnailViewAccessibility *)&v13 accessibilityTraits];
  if (v9)
  {
    v11 = *MEMORY[0x29EDC7F60];
  }

  else
  {
    v11 = 0;
  }

  return v11 | accessibilityTraits;
}

- (id)accessibilityValue
{
  v10.receiver = self;
  v10.super_class = PDFThumbnailViewAccessibility;
  accessibilityValue = [(PDFThumbnailViewAccessibility *)&v10 accessibilityValue];

  if (accessibilityValue)
  {
    v9.receiver = self;
    v9.super_class = PDFThumbnailViewAccessibility;
    accessibilityValue2 = [(PDFThumbnailViewAccessibility *)&v9 accessibilityValue];
  }

  else
  {
    _axThumbnailSelf = [(PDFThumbnailViewAccessibility *)self _axThumbnailSelf];
    pDFView = [_axThumbnailSelf PDFView];
    currentPage = [pDFView currentPage];

    accessibilityValue2 = [(PDFThumbnailViewAccessibility *)self _axPageDescriptionForPage:currentPage];
  }

  return accessibilityValue2;
}

- (CGPoint)accessibilityActivationPoint
{
  v13 = 0;
  _axIconsView = [(PDFThumbnailViewAccessibility *)self _axIconsView];
  v4 = [_axIconsView safeValueForKey:@"_activeIcon"];
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
  _axIconsView = [(PDFThumbnailViewAccessibility *)self _axIconsView];
  v4 = _axIconsView;
  if (_axIconsView)
  {
    [_axIconsView accessibilityFrame];
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
  automationElements = [(PDFThumbnailViewAccessibility *)&v13 automationElements];
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

  _axIconsView = [(PDFThumbnailViewAccessibility *)self _axIconsView];
  v9 = _axIconsView;
  if (_axIconsView)
  {
    v10 = [_axIconsView safeValueForKey:@"_icons"];
    v11 = __UIAccessibilitySafeClass();

    [v7 axSafelyAddObjectsFromArray:v11];
  }

  return v7;
}

@end