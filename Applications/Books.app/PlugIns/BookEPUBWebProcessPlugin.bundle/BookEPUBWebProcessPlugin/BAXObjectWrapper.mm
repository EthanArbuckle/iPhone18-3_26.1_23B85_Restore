@interface BAXObjectWrapper
+ (id)BAXLocalizedNumberForNumber:(id)number numberStyle:(unint64_t)style maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)separator;
- (BEAttachmentElement)baxAttachmentElement;
- (BOOL)_accessibilityIsRTL;
- (BOOL)_accessibilityPublicCustomRotorVisibleInTouchRotor:(id)rotor;
- (BOOL)_accessibilityReadAllContinuesWithScroll;
- (BOOL)_accessibilityScrollWithDirection:(int64_t)direction;
- (BOOL)_accessibilityTextOperationAction:(id)action;
- (BOOL)_elementContainsImageForSpeakScreen:(id)screen;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)baxElementIsInteractive;
- (BOOL)baxIsBookContentElement;
- (BOOL)baxIsInPictureBook;
- (BOOL)baxNeedsAttachmentElement;
- (BOOL)isAccessibilityElement;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)range;
- (CGRect)_accessibilityFrameForRange:(_NSRange)range;
- (CGRect)accessibilityFrameForLineNumber:(int64_t)number;
- (CGRect)baxBoundsForRange:(_NSRange)range;
- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)position;
- (_NSRange)_accessibilityRangeForLineNumber:(int64_t)number;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)baxStoredVisibleContentRange;
- (id)_accessibilityAttributedValueForRange:(_NSRange *)range;
- (id)_accessibilityInternalTextLinkCustomRotors;
- (id)_accessibilityInternalTextLinks;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySpeakThisString;
- (id)_accessibilitySupportsReadingContent;
- (id)_accessibilityTextOperations;
- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)range string:(id)string wantsSentences:(BOOL)sentences;
- (id)_axPageScrollString;
- (id)_baxHighlightRotor;
- (id)_bkaxSuperAccessibilityContainer;
- (id)_iosAccessibilityAttributeValue:(int64_t)value forParameter:(id)parameter;
- (id)accessibilityAttributedContentForLineNumber:(int64_t)number;
- (id)accessibilityAttributedPageContent;
- (id)accessibilityAttributedValue;
- (id)accessibilityContainer;
- (id)accessibilityContentForLineNumber:(int64_t)number;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomRotors;
- (id)accessibilityPageContent;
- (id)accessibilityValue;
- (id)baxBookContentElement;
- (id)baxVisibleLineInfos;
- (id)baxWebPageObject;
- (id)description;
- (id)rects;
- (id)text;
- (id)visibleLinkElements:(id)elements;
- (int64_t)accessibilityLineNumberForPoint:(CGPoint)point;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
- (void)_dispatchPageScrolledNotification;
- (void)_oldAccessibilitySetSelectedTextRange:(_NSRange)range;
- (void)baxInvalidateCaches;
- (void)baxInvalidateContainerCaches;
- (void)checkActions;
@end

@implementation BAXObjectWrapper

- (_NSRange)baxStoredVisibleContentRange
{
  v2 = __BAXGetAssociatedRange(self, &unk_26D61);
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)baxBookContentElement
{
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      NSClassFromString(@"WebAccessibilityObjectWrapper");
      if (objc_opt_isKindOfClass())
      {
        if ([(BAXObjectWrapper *)selfCopy baxIsBookContentElement])
        {
          break;
        }
      }

      accessibilityContainer = [(BAXObjectWrapper *)selfCopy accessibilityContainer];

      selfCopy = accessibilityContainer;
      if (!accessibilityContainer)
      {
        goto LABEL_7;
      }
    }

    selfCopy = selfCopy;
  }

LABEL_7:

  return selfCopy;
}

- (void)baxInvalidateCaches
{
  [(BAXObjectWrapper *)self baxSetStoredLinkRotorIndex:0];
  [(BAXObjectWrapper *)self baxSetStoredLinkRotorIndex:0];
  [(BAXObjectWrapper *)self baxSetStoredLinkRotor:0];
  [(BAXObjectWrapper *)self baxSetStoredHighlightRotor:0];
  [(BAXObjectWrapper *)self baxSetStoredLinkInfos:0];
  [(BAXObjectWrapper *)self baxSetStoredAttributedPageContent:0];
  [(BAXObjectWrapper *)self _baxSetCachedAttachmentElement:0];
  [(BAXObjectWrapper *)self _baxSetIsTurning:0];
  selfCopy = self;
  objc_setAssociatedObject(selfCopy, [@"StoredIsInteractiveElement" hash], 0, &dword_0 + 1);

  if ([(BAXObjectWrapper *)selfCopy accessibilityElementCount]>= 1)
  {
    v4 = 0;
    do
    {
      v5 = [(BAXObjectWrapper *)selfCopy accessibilityElementAtIndex:v4];
      v6 = objc_opt_class();
      v7 = __BAXCastAsSafeCategory(v6, v5, 0, 0);
      v8 = v7;
      if (v7)
      {
        [v7 baxInvalidateCaches];
      }

      ++v4;
    }

    while (v4 < [(BAXObjectWrapper *)selfCopy accessibilityElementCount]);
  }
}

- (BEAttachmentElement)baxAttachmentElement
{
  _baxCachedAttachmentElement = [(BAXObjectWrapper *)self _baxCachedAttachmentElement];
  if (!_baxCachedAttachmentElement)
  {
    if (![(BAXObjectWrapper *)self baxNeedsAttachmentElement])
    {
      goto LABEL_5;
    }

    _baxCachedAttachmentElement = [[BEAttachmentElement alloc] initWithObjectWrapperElement:self];
    [(BAXObjectWrapper *)self _baxSetCachedAttachmentElement:_baxCachedAttachmentElement];
  }

LABEL_5:

  return [(BAXObjectWrapper *)self _baxCachedAttachmentElement];
}

- (BOOL)baxNeedsAttachmentElement
{
  v3.receiver = self;
  v3.super_class = BAXObjectWrapper;
  return (UIAccessibilityTraitImage & [(BAXObjectWrapper *)&v3 accessibilityTraits]) != 0;
}

- (BOOL)baxElementIsInteractive
{
  v4.receiver = self;
  v4.super_class = BAXObjectWrapper;
  accessibilityTraits = [(BAXObjectWrapper *)&v4 accessibilityTraits];
  if ((UIAccessibilityTraitStaticText & accessibilityTraits) != 0)
  {
    return 0;
  }

  if (((UIAccessibilityTraitAdjustable | UIAccessibilityTraitButton | UIAccessibilityTraitPopupButton | UIAccessibilityTraitRadioButton | UIAccessibilityTraitStartsMediaSession) & accessibilityTraits) != 0)
  {
    return (UIAccessibilityTraitImage & accessibilityTraits) == 0;
  }

  return 0;
}

- (BOOL)isAccessibilityElement
{
  if (BEBooksWebKitAccessibility())
  {
    v10.receiver = self;
    v10.super_class = BAXObjectWrapper;
    isAccessibilityElement = [(BAXObjectWrapper *)&v10 isAccessibilityElement];
  }

  else
  {
    accessibilityTraits = [(BAXObjectWrapper *)self accessibilityTraits];
    baxIsBookContentElement = [(BAXObjectWrapper *)self baxIsBookContentElement];
    v6 = UIAccessibilityTraitLink;
    baxElementIsInteractive = [(BAXObjectWrapper *)self baxElementIsInteractive];
    if ((v6 & ~accessibilityTraits) != 0)
    {
      v8 = baxElementIsInteractive;
    }

    else
    {
      v8 = 1;
    }

    isAccessibilityElement = v8 | baxIsBookContentElement;
  }

  return isAccessibilityElement & 1;
}

- (BOOL)accessibilityActivate
{
  accessibilityTraits = [(BAXObjectWrapper *)self accessibilityTraits];
  v4 = (UIAccessibilityTraitLink & ~accessibilityTraits) != 0;
  if ([(BAXObjectWrapper *)self baxElementIsInteractive])
  {
    v6.receiver = self;
    v6.super_class = BAXObjectWrapper;
    return [(BAXObjectWrapper *)&v6 accessibilityActivate];
  }

  return v4;
}

- (id)accessibilityValue
{
  if (BEBooksWebKitAccessibility())
  {
    [(BAXObjectWrapper *)&v7 accessibilityValue:v5.receiver];
  }

  else if ([(BAXObjectWrapper *)self baxElementIsInteractive])
  {
    [(BAXObjectWrapper *)&v6 accessibilityValue:v5.receiver];
  }

  else
  {
    if ([(BAXObjectWrapper *)self baxIsBookContentElement])
    {
      accessibilityPageContent = [(BAXObjectWrapper *)self accessibilityPageContent];
      goto LABEL_9;
    }

    [(BAXObjectWrapper *)&v5 accessibilityValue:self];
  }
  accessibilityPageContent = ;
LABEL_9:

  return accessibilityPageContent;
}

- (id)accessibilityAttributedValue
{
  if (BEBooksWebKitAccessibility())
  {
    [(BAXObjectWrapper *)&v6 accessibilityAttributedValue:v5.receiver];
  }

  else
  {
    if ([(BAXObjectWrapper *)self baxIsBookContentElement])
    {
      accessibilityAttributedPageContent = [(BAXObjectWrapper *)self accessibilityAttributedPageContent];
      goto LABEL_7;
    }

    [(BAXObjectWrapper *)&v5 accessibilityAttributedValue:self];
  }
  accessibilityAttributedPageContent = ;
LABEL_7:

  return accessibilityAttributedPageContent;
}

- (id)_iosAccessibilityAttributeValue:(int64_t)value forParameter:(id)parameter
{
  parameterCopy = parameter;
  if (BEBooksWebKitAccessibility())
  {
    [(BAXObjectWrapper *)&v21 _iosAccessibilityAttributeValue:value forParameter:parameterCopy, v20.receiver, v20.super_class, self, BAXObjectWrapper];
    v18 = LABEL_11:;
    goto LABEL_12;
  }

  if (value != 92700)
  {
    [(BAXObjectWrapper *)&v20 _iosAccessibilityAttributeValue:value forParameter:parameterCopy, self, BAXObjectWrapper, v21.receiver, v21.super_class];
    goto LABEL_11;
  }

  [parameterCopy pointValue];
  v8 = v7;
  v10 = v9;
  _accessibilityParentView = [(BAXObjectWrapper *)self _accessibilityParentView];
  window = [_accessibilityParentView window];

  if (window)
  {
    window2 = [_accessibilityParentView window];
    [window2 convertPoint:_accessibilityParentView toView:{v8, v10}];
    v8 = v14;
    v10 = v15;
  }

  v16 = [(BAXObjectWrapper *)self accessibilityLineNumberForPoint:v8, v10];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0x7FFFFFFFLL;
  }

  else
  {
    v17 = v16;
  }

  v18 = [NSNumber numberWithInteger:v17];

LABEL_12:

  return v18;
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = BAXObjectWrapper;
  accessibilityTraits = [(BAXObjectWrapper *)&v5 accessibilityTraits];
  if ((BEBooksWebKitAccessibility() & 1) == 0 && [(BAXObjectWrapper *)self baxIsBookContentElement])
  {
    return accessibilityTraits & ~UIAccessibilityTraitWebContent | UIAccessibilityTraitBookContent | UIAccessibilityTraitCausesPageTurn;
  }

  return accessibilityTraits;
}

- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)position
{
  baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
  v5 = [BEAXWebContentUtilities lineRangeForCharacterPosition:position forBookContentElement:baxBookContentElement];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
  v4 = [BEAXWebContentUtilities visibleTextRangeInChapterForBookContentElement:baxBookContentElement];

  _accessibilityTextMarkerRangeForSelection = [(BAXObjectWrapper *)self _accessibilityTextMarkerRangeForSelection];
  if ([_accessibilityTextMarkerRangeForSelection count] == &dword_0 + 2)
  {
    firstObject = [_accessibilityTextMarkerRangeForSelection firstObject];
    v7 = ([(BAXObjectWrapper *)self _accessibilityRangeForTextMarker:firstObject]- v4);

    lastObject = [_accessibilityTextMarkerRangeForSelection lastObject];
    v9 = ([(BAXObjectWrapper *)self _accessibilityRangeForTextMarker:lastObject]- v4);

    v11 = v7 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL;
    v12 = v9 > v7;
    if (v11 && v12)
    {
      v13 = v9 - v7;
    }

    else
    {
      v13 = 0;
    }

    if (v11 && v12)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0x7FFFFFFFLL;
  }

  v15 = v14;
  v16 = v13;
  result.length = v16;
  result.location = v15;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
  v7 = [BEAXWebContentUtilities visibleTextRangeInChapterForBookContentElement:baxBookContentElement];

  [(BAXObjectWrapper *)self checkActions];
  if (length)
  {
    v17.receiver = self;
    v17.super_class = BAXObjectWrapper;
    [(BAXObjectWrapper *)&v17 _accessibilitySetSelectedTextRange:&v7[location], length];
  }

  else
  {
    baxBookContentElement2 = [(BAXObjectWrapper *)self baxBookContentElement];
    [BEAXWebContentUtilities frameForRange:&v7[location] forBookContentElement:0, baxBookContentElement2];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [BEAXWebContentUtilities jsSetSelectionWithFrame:v10, v12, v14, v16];
  }
}

- (void)checkActions
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6B4C;
  block[3] = &unk_207A0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_oldAccessibilitySetSelectedTextRange:(_NSRange)range
{
  v3.receiver = self;
  v3.super_class = BAXObjectWrapper;
  [(BAXObjectWrapper *)&v3 _accessibilitySetSelectedTextRange:range.location, range.length];
}

- (id)_accessibilityAttributedValueForRange:(_NSRange *)range
{
  if (BEBooksWebKitAccessibility())
  {
    v8.receiver = self;
    v8.super_class = BAXObjectWrapper;
    v5 = [(BAXObjectWrapper *)&v8 _accessibilityAttributedValueForRange:range];
  }

  else
  {
    baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
    v5 = [BEAXWebContentUtilities attributedValueForRange:range->location forBookContentElement:range->length, baxBookContentElement];
  }

  return v5;
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (BEBooksWebKitAccessibility())
  {
    v23.receiver = self;
    v23.super_class = BAXObjectWrapper;
    [(BAXObjectWrapper *)&v23 _accessibilityBoundsForRange:location, length];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
    [BEAXWebContentUtilities frameForRange:location forBookContentElement:length, baxBookContentElement];
    v7 = v15;
    v9 = v16;
    v11 = v17;
    v13 = v18;
  }

  v19 = v7;
  v20 = v9;
  v21 = v11;
  v22 = v13;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)baxBoundsForRange:(_NSRange)range
{
  v7.receiver = self;
  v7.super_class = BAXObjectWrapper;
  [(BAXObjectWrapper *)&v7 _accessibilityBoundsForRange:range.location, range.length];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)_accessibilityTextOperationAction:(id)action
{
  actionCopy = action;
  v4 = +[BEAccessibilityReadingState currentReadingState];
  performableOperations = [v4 performableOperations];

  v6 = [performableOperations containsObject:actionCopy];
  if (v6)
  {
    [BEAXWebContentUtilities performNativeAction:actionCopy];
  }

  return v6;
}

- (id)_accessibilityTextOperations
{
  v2 = +[BEAccessibilityReadingState currentReadingState];
  performableOperations = [v2 performableOperations];

  return performableOperations;
}

- (id)_accessibilitySupportsReadingContent
{
  v3 = &__kCFBooleanFalse;
  if ((BEBooksWebKitAccessibility() & 1) == 0 && [(BAXObjectWrapper *)self baxIsBookContentElement])
  {
    return &__kCFBooleanTrue;
  }

  return v3;
}

- (id)accessibilityContainer
{
  v14.receiver = self;
  v14.super_class = BAXObjectWrapper;
  accessibilityContainer = [(BAXObjectWrapper *)&v14 accessibilityContainer];
  selfCopy = self;
  v5 = objc_getAssociatedObject(selfCopy, [@"StoredIsInteractiveElement" hash]);

  if ([v5 BOOLValue])
  {
    v6 = accessibilityContainer;
    accessibilityContainer = v6;
    if (v6)
    {
      v7 = v6;
      while (1)
      {
        NSClassFromString(@"WKAccessibilityWebPageObject");
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v8 = objc_opt_class();
        v9 = __BAXCastAsSafeCategory(v8, v7, 0, 0);
        v10 = v9;
        if (v9)
        {
          [v9 _bkaxSuperAccessibilityContainer];
        }

        else
        {
          [v7 accessibilityContainer];
        }
        v11 = ;

        v7 = v11;
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      v12 = v7;

      accessibilityContainer = v12;
    }
  }

LABEL_11:

  return accessibilityContainer;
}

- (id)_bkaxSuperAccessibilityContainer
{
  v4.receiver = self;
  v4.super_class = BAXObjectWrapper;
  accessibilityContainer = [(BAXObjectWrapper *)&v4 accessibilityContainer];

  return accessibilityContainer;
}

- (id)accessibilityPageContent
{
  if (BEBooksWebKitAccessibility())
  {
    v6.receiver = self;
    v6.super_class = BAXObjectWrapper;
    accessibilityPageContent = [(BAXObjectWrapper *)&v6 accessibilityPageContent];
  }

  else if ([(BAXObjectWrapper *)self baxElementIsInteractive])
  {
    accessibilityPageContent = 0;
  }

  else
  {
    accessibilityAttributedPageContent = [(BAXObjectWrapper *)self accessibilityAttributedPageContent];
    accessibilityPageContent = [accessibilityAttributedPageContent string];
  }

  return accessibilityPageContent;
}

- (id)accessibilityAttributedPageContent
{
  if ((BEBooksWebKitAccessibility() & 1) != 0 || [(BAXObjectWrapper *)self baxNeedsAttachmentElement])
  {
    goto LABEL_3;
  }

  baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
  v3 = [BEAXWebContentUtilities attributedPageContentForBookContentElement:baxBookContentElement];

  if (!v3)
  {
    baxBookContentElement2 = [(BAXObjectWrapper *)self baxBookContentElement];
    v7 = [(BAXObjectWrapper *)self _elementContainsImageForSpeakScreen:baxBookContentElement2];

    if (!v7)
    {
LABEL_3:
      v3 = 0;
      goto LABEL_4;
    }

    v8 = [NSAttributedString alloc];
    v9 = BAXLocString(@"image");
    v3 = [v8 initWithString:v9];
  }

LABEL_4:

  return v3;
}

- (int64_t)accessibilityLineNumberForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (BEBooksWebKitAccessibility())
  {
    v9.receiver = self;
    v9.super_class = BAXObjectWrapper;
    return [(BAXObjectWrapper *)&v9 accessibilityLineNumberForPoint:x, y];
  }

  else
  {
    baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
    v8 = [BEAXWebContentUtilities lineNumberForPoint:baxBookContentElement forBookContentElement:x, y];

    return v8;
  }
}

- (id)accessibilityContentForLineNumber:(int64_t)number
{
  if (BEBooksWebKitAccessibility())
  {
    v9.receiver = self;
    v9.super_class = BAXObjectWrapper;
    string = [(BAXObjectWrapper *)&v9 accessibilityContentForLineNumber:number];
  }

  else
  {
    baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
    v7 = [BEAXWebContentUtilities attributedStringForLineNumber:number forBookContentElement:baxBookContentElement];
    string = [v7 string];
  }

  return string;
}

- (id)accessibilityAttributedContentForLineNumber:(int64_t)number
{
  if (BEBooksWebKitAccessibility())
  {
    v8.receiver = self;
    v8.super_class = BAXObjectWrapper;
    v5 = [(BAXObjectWrapper *)&v8 accessibilityAttributedContentForLineNumber:number];
  }

  else
  {
    baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
    v5 = [BEAXWebContentUtilities attributedStringForLineNumber:number forBookContentElement:baxBookContentElement];
  }

  return v5;
}

- (CGRect)accessibilityFrameForLineNumber:(int64_t)number
{
  if (BEBooksWebKitAccessibility())
  {
    v22.receiver = self;
    v22.super_class = BAXObjectWrapper;
    [(BAXObjectWrapper *)&v22 accessibilityFrameForLineNumber:number];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
    [BEAXWebContentUtilities frameForLineNumber:number forBookContentElement:baxBookContentElement];
    v6 = v14;
    v8 = v15;
    v10 = v16;
    v12 = v17;
  }

  v18 = v6;
  v19 = v8;
  v20 = v10;
  v21 = v12;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_accessibilityFrameForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (BEBooksWebKitAccessibility())
  {
    v36.receiver = self;
    v36.super_class = BAXObjectWrapper;
    [(BAXObjectWrapper *)&v36 _accessibilityFrameForRange:location, length];
    x = v6;
    y = v8;
    width = v10;
    height = v12;
  }

  else
  {
    baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
    v15 = [BEAXWebContentUtilities chapterRangeForRange:location forBookContentElement:length, baxBookContentElement];
    v17 = v16;

    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v18 = [(BAXObjectWrapper *)self _accessibilityTextMarkerForPosition:v15];
    v19 = [(BAXObjectWrapper *)self _accessibilityTextMarkerForPosition:&v15[v17]];
    v20 = v19;
    if (v18)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v37[0] = v18;
      v37[1] = v19;
      v22 = [NSArray arrayWithObjects:v37 count:2];
      v23 = [(BAXObjectWrapper *)self _accessibilityConvertDataArrayToTextMarkerArray:v22];

      baxBookContentElement2 = [(BAXObjectWrapper *)self baxBookContentElement];
      lineRectsAndText = [baxBookContentElement2 lineRectsAndText];

      if ([lineRectsAndText count])
      {
        firstObject = [lineRectsAndText firstObject];
        v27 = [firstObject valueForKey:@"rect"];
        [v27 CGRectValue];
        x = v28;
        y = v29;
        width = v30;
        height = v31;
      }
    }
  }

  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (_NSRange)_accessibilityRangeForLineNumber:(int64_t)number
{
  if (BEBooksWebKitAccessibility())
  {
    v11.receiver = self;
    v11.super_class = BAXObjectWrapper;
    v5 = [(BAXObjectWrapper *)&v11 _accessibilityRangeForLineNumber:number];
  }

  else
  {
    baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
    v8 = [BEAXWebContentUtilities lineRangeForLineNumber:number forBookContentElement:baxBookContentElement];
    v10 = v9;

    v5 = v8;
    v6 = v10;
  }

  result.length = v6;
  result.location = v5;
  return result;
}

- (BOOL)_accessibilityReadAllContinuesWithScroll
{
  if (BEBooksWebKitAccessibility())
  {
    v4.receiver = self;
    v4.super_class = BAXObjectWrapper;
    return [(BAXObjectWrapper *)&v4 _accessibilityReadAllContinuesWithScroll];
  }

  else
  {

    return [(BAXObjectWrapper *)self baxIsBookContentElement];
  }
}

- (id)_accessibilityInternalTextLinks
{
  baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
  v3 = [BEAXLineInfo linkElementsForElement:baxBookContentElement];

  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (v10)
        {
          v11 = [UIAccessibilityLinkSubelement alloc];
          v12 = [v11 initWithAccessibilityContainer:{v10, v16}];
          text = [v10 text];
          [v12 setAccessibilityLabel:text];

          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v14 = [v4 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)visibleLinkElements:(id)elements
{
  elementsCopy = elements;
  v5 = +[NSMutableArray array];
  v6 = +[BEAccessibilityReadingState currentReadingState];
  if ([v6 isFixedLayoutBook])
  {
    baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
    [baxBookContentElement accessibilityVisibleContentRect];
  }

  else
  {
    baxBookContentElement = +[BEAccessibilityReadingState currentReadingState];
    [baxBookContentElement primaryVisibleContentRect];
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = elementsCopy;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        [v21 accessibilityFrame];
        v32.x = v22;
        v32.y = v23;
        v33.origin.x = v12;
        v33.origin.y = v13;
        v33.size.width = v14;
        v33.size.height = v15;
        if (CGRectContainsPoint(v33, v32))
        {
          [v5 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  if ([v5 count])
  {
    v24 = [v5 copy];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_accessibilityInternalTextLinkCustomRotors
{
  baxStoredLinkInfos = [(BAXObjectWrapper *)self baxStoredLinkInfos];

  if (!baxStoredLinkInfos)
  {
    _accessibilityInternalTextLinks = [(BAXObjectWrapper *)self _accessibilityInternalTextLinks];
    v5 = [_accessibilityInternalTextLinks mutableCopy];
    [(BAXObjectWrapper *)self baxSetStoredLinkInfos:v5];
  }

  baxStoredLinkInfos2 = [(BAXObjectWrapper *)self baxStoredLinkInfos];
  v7 = [(BAXObjectWrapper *)self visibleLinkElements:baxStoredLinkInfos2];

  if ([v7 count])
  {
    objc_initWeak(&location, self);
    baxStoredLinkRotor = [(BAXObjectWrapper *)self baxStoredLinkRotor];
    if (baxStoredLinkRotor)
    {
      objc_destroyWeak(&location);
LABEL_7:
      v20 = baxStoredLinkRotor;
      v10 = [NSArray arrayWithObjects:&v20 count:1];

      goto LABEL_9;
    }

    v9 = [UIAccessibilityCustomRotor alloc];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_7DE8;
    v15 = &unk_207C8;
    objc_copyWeak(&v18, &location);
    selfCopy = self;
    v17 = v7;
    baxStoredLinkRotor = [v9 initWithSystemType:1 itemSearchBlock:&v12];
    [(BAXObjectWrapper *)self baxSetStoredLinkRotor:baxStoredLinkRotor, v12, v13, v14, v15, selfCopy];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    if (baxStoredLinkRotor)
    {
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)_baxHighlightRotor
{
  baxStoredHighlightRotor = [(BAXObjectWrapper *)self baxStoredHighlightRotor];
  if (!baxStoredHighlightRotor)
  {
    objc_initWeak(&location, self);
    v4 = [UIAccessibilityCustomRotor alloc];
    v5 = BAXLocString(@"highlights");
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_8070;
    v10 = &unk_207F0;
    objc_copyWeak(&v11, &location);
    baxStoredHighlightRotor = [v4 initWithName:v5 itemSearchBlock:&v7];

    [(BAXObjectWrapper *)self baxSetStoredHighlightRotor:baxStoredHighlightRotor, v7, v8, v9, v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return baxStoredHighlightRotor;
}

- (id)accessibilityCustomRotors
{
  v3 = +[NSMutableArray array];
  if ([(BAXObjectWrapper *)self baxIsBookContentElement])
  {
    _accessibilityInternalTextLinkCustomRotors = [(BAXObjectWrapper *)self _accessibilityInternalTextLinkCustomRotors];

    if (_accessibilityInternalTextLinkCustomRotors)
    {
      baxStoredLinkRotor = [(BAXObjectWrapper *)self baxStoredLinkRotor];
      [v3 addObject:baxStoredLinkRotor];
    }

    _baxHighlightRotor = [(BAXObjectWrapper *)self _baxHighlightRotor];
    if (_baxHighlightRotor)
    {
      v7 = _baxHighlightRotor;
      baxIsInPictureBook = [(BAXObjectWrapper *)self baxIsInPictureBook];

      if ((baxIsInPictureBook & 1) == 0)
      {
        baxStoredHighlightRotor = [(BAXObjectWrapper *)self baxStoredHighlightRotor];
        [v3 addObject:baxStoredHighlightRotor];
      }
    }
  }

  if ([v3 count])
  {
    v10 = [v3 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_accessibilityPublicCustomRotorVisibleInTouchRotor:(id)rotor
{
  rotorCopy = rotor;
  baxStoredLinkRotor = [(BAXObjectWrapper *)self baxStoredLinkRotor];
  v6 = [baxStoredLinkRotor baxValueForKey:@"uuid"];
  v7 = [v6 isEqual:rotorCopy];

  baxStoredHighlightRotor = [(BAXObjectWrapper *)self baxStoredHighlightRotor];
  v9 = [baxStoredHighlightRotor baxValueForKey:@"uuid"];
  v10 = [v9 isEqual:rotorCopy];

  return (v10 | v7) & 1;
}

- (id)_accessibilitySpeakThisString
{
  baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
  [baxBookContentElement baxSetStoredAttributedPageContent:0];

  return [(BAXObjectWrapper *)self accessibilityPageContent];
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)range string:(id)string wantsSentences:(BOOL)sentences
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_10;
  }

  v11 = [stringCopy length];

  if (!v11)
  {
LABEL_10:
    v37.receiver = self;
    v37.super_class = BAXObjectWrapper;
    stringCopy = [(BAXObjectWrapper *)&v37 _accessibilityTextRectsForSpeakThisStringRange:location string:length, stringCopy];
    goto LABEL_11;
  }

  baxBookContentElement2 = [(BAXObjectWrapper *)self baxBookContentElement];
  v13 = [BEAXWebContentUtilities visibleTextRangeInChapterForBookContentElement:baxBookContentElement2]+ location;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_8984;
  v35 = sub_8994;
  v36 = 0;
  v14 = [(BAXObjectWrapper *)self _accessibilityTextMarkerForPosition:v13];
  v15 = [(BAXObjectWrapper *)self _accessibilityTextMarkerForPosition:&v13[length]];
  v16 = v15;
  v17 = 0;
  if (v14 && v15)
  {
    v39[0] = v14;
    v39[1] = v15;
    v18 = [NSArray arrayWithObjects:v39 count:2];
    v19 = [baxBookContentElement2 _accessibilityConvertDataArrayToTextMarkerArray:v18];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_899C;
    v26[3] = &unk_20818;
    sentencesCopy = sentences;
    v29 = &v31;
    v27 = baxBookContentElement2;
    v17 = v19;
    v28 = v17;
    __BAXPerformSafeBlock(v26);
  }

  if (![v32[5] count])
  {
    baxBookContentElement3 = [(BAXObjectWrapper *)self baxBookContentElement];
    [BEAXWebContentUtilities frameForRange:v13 forBookContentElement:length, baxBookContentElement3];
    v21 = [NSValue valueWithCGRect:?];
    v38 = v21;
    v22 = [NSArray arrayWithObjects:&v38 count:1];
    v23 = v32[5];
    v32[5] = v22;
  }

  stringCopy = v32[5];

  _Block_object_dispose(&v31, 8);
LABEL_11:

  return stringCopy;
}

- (BOOL)_elementContainsImageForSpeakScreen:(id)screen
{
  screenCopy = screen;
  accessibilityElementCount = [screenCopy accessibilityElementCount];
  if (accessibilityElementCount)
  {
    v6 = accessibilityElementCount;
    v7 = 0;
    v8 = 0;
    v9 = UIAccessibilityTraitImage;
    while (1)
    {
      v10 = objc_opt_class();
      v11 = [screenCopy accessibilityElementAtIndex:v8];
      v12 = __BAXCastAsSafeCategory(v10, v11, 0, 0);

      if (v12)
      {
        if ((v9 & [v12 accessibilityTraits]) != 0)
        {

          v7 = 1;
          goto LABEL_10;
        }

        v7 = [(BAXObjectWrapper *)self _elementContainsImageForSpeakScreen:v12];
      }

      if (v6 == ++v8)
      {
        goto LABEL_10;
      }
    }
  }

  v7 = 0;
LABEL_10:

  return v7 & 1;
}

- (BOOL)baxIsBookContentElement
{
  baxWebPageObject = [(BAXObjectWrapper *)self baxWebPageObject];
  if (baxWebPageObject && ([(BAXObjectWrapper *)self accessibilityContainer], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 == baxWebPageObject))
  {
    [BEAccessibilityReadingState registerBookContentElement:self];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)baxWebPageObject
{
  accessibilityContainer = [(BAXObjectWrapper *)self accessibilityContainer];
  if (accessibilityContainer)
  {
    while (1)
    {
      v2AccessibilityContainer = [accessibilityContainer accessibilityContainer];
      NSClassFromString(@"WKAccessibilityWebPageObject");
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      v2AccessibilityContainer2 = [accessibilityContainer accessibilityContainer];

      accessibilityContainer = v2AccessibilityContainer2;
      if (!v2AccessibilityContainer2)
      {
        goto LABEL_6;
      }
    }

    accessibilityContainer = accessibilityContainer;
  }

LABEL_6:

  return accessibilityContainer;
}

- (BOOL)baxIsInPictureBook
{
  v2 = +[BEAccessibilityReadingState currentReadingState];
  isFixedLayoutBook = [v2 isFixedLayoutBook];

  return isFixedLayoutBook;
}

- (id)baxVisibleLineInfos
{
  baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
  v4 = [BEAXWebContentUtilities visibleTextRangeInChapterForBookContentElement:baxBookContentElement];
  v6 = v5;

  baxBookContentElement2 = [(BAXObjectWrapper *)self baxBookContentElement];
  baxStoredLineInfos = [baxBookContentElement2 baxStoredLineInfos];

  v9 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = baxStoredLineInfos;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    v14 = &v4[v6];
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        rangeInChapter = [v16 rangeInChapter];
        rangeInChapter2 = [v16 rangeInChapter];
        v20 = &rangeInChapter2[v19];
        if (v4 <= rangeInChapter && rangeInChapter < v14 && v4 <= v20 && v20 < v14)
        {
          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)text
{
  textMarkerRange = [(BAXObjectWrapper *)self textMarkerRange];
  v4 = [(BAXObjectWrapper *)self stringForTextMarkers:textMarkerRange];

  return v4;
}

- (id)rects
{
  lineRectsAndText = [(BAXObjectWrapper *)self lineRectsAndText];
  if (lineRectsAndText)
  {
    v3 = +[NSMutableArray array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = lineRectsAndText;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v12 + 1) + 8 * i) valueForKey:{@"rect", v12}];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  text = [(BAXObjectWrapper *)self text];
  if ([text length] > 0x3B)
  {
    v5 = [text substringToIndex:30];
    v6 = [text substringFromIndex:{objc_msgSend(text, "length") - 30}];
    v4 = [NSString stringWithFormat:@"%@...%@", v5, v6];
  }

  else
  {
    v4 = text;
  }

  [(BAXObjectWrapper *)self accessibilityFrame];
  v7 = NSStringFromCGRect(v14);
  baxIsBookContentElement = [(BAXObjectWrapper *)self baxIsBookContentElement];
  v12.receiver = self;
  v12.super_class = BAXObjectWrapper;
  accessibilityTraits = [(BAXObjectWrapper *)&v12 accessibilityTraits];
  v10 = [NSString stringWithFormat:@"<%@ %p isBookContentElement=%d frame=%@ superTraits=%d text=%@", objc_opt_class(), self, baxIsBookContentElement, v7, accessibilityTraits, v4];

  return v10;
}

- (id)accessibilityCustomActions
{
  v2 = +[NSMutableArray array];
  v3 = +[BEAccessibilityReadingState currentReadingState];
  isVisiblePageBookmarked = [v3 isVisiblePageBookmarked];

  v5 = [UIAccessibilityCustomAction alloc];
  if (isVisiblePageBookmarked)
  {
    v6 = @"unbookmark.page";
  }

  else
  {
    v6 = @"bookmark.page";
  }

  v7 = BAXLocString(v6);
  v8 = [v5 initWithName:v7 actionHandler:&stru_20838];

  [v2 addObject:v8];
  v9 = [v2 copy];

  return v9;
}

- (BOOL)_accessibilityScrollWithDirection:(int64_t)direction
{
  if (direction == 6)
  {
    return [(BAXObjectWrapper *)&v4 accessibilityScroll:3, self, BAXObjectWrapper, v5.receiver, v5.super_class];
  }

  if (direction == 5)
  {
    return [(BAXObjectWrapper *)&v5 accessibilityScroll:4, v4.receiver, v4.super_class, self, BAXObjectWrapper];
  }

  return 0;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  _accessibilityIsRTL = [(BAXObjectWrapper *)self _accessibilityIsRTL];
  if (scroll == 1 && (_accessibilityIsRTL & 1) != 0 || scroll == 2 && ((_accessibilityIsRTL ^ 1) & 1) != 0)
  {
    v6 = @"next";
  }

  else
  {
    v9 = scroll == 2;
    if (!_accessibilityIsRTL)
    {
      v9 = scroll == 1;
    }

    v6 = @"previous";
    if (!v9)
    {
      if (scroll == 5)
      {
        v6 = @"next";
      }

      else if (scroll != 6)
      {
        v10 = +[BEAccessibilityReadingState currentReadingState];
        bookLayout = [v10 bookLayout];

        if (bookLayout != &dword_0 + 2)
        {
          v13.receiver = self;
          v13.super_class = BAXObjectWrapper;
          return [(BAXObjectWrapper *)&v13 accessibilityScroll:scroll];
        }

        if (scroll == 3)
        {
          v12 = @"previous";
        }

        else
        {
          v12 = 0;
        }

        if (scroll == 4)
        {
          v6 = @"next";
        }

        else
        {
          v6 = v12;
        }
      }
    }
  }

  [BEAXWebContentUtilities turnPageWithDirection:v6];
  [(BAXObjectWrapper *)self _dispatchPageScrolledNotification];
  baxBookContentElement = [(BAXObjectWrapper *)self baxBookContentElement];
  [baxBookContentElement baxSetStoredAttributedPageContent:0];

  if (BEBooksWebKitAccessibility())
  {
    [(BAXObjectWrapper *)self baxInvalidateContainerCaches];
  }

  return 1;
}

- (void)baxInvalidateContainerCaches
{
  accessibilityContainer = [(BAXObjectWrapper *)self accessibilityContainer];
  if (accessibilityContainer)
  {
    v3 = accessibilityContainer;
    while (1)
    {
      NSClassFromString(@"WKAccessibilityWebPageObject");
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      accessibilityContainer2 = [v3 accessibilityContainer];

      v3 = accessibilityContainer2;
      if (!accessibilityContainer2)
      {
        return;
      }
    }

    v5 = objc_opt_class();
    v6 = __BAXCastAsSafeCategory(v5, v3, 0, 0);
    [v6 _baxSetCachedAccessibilityElementTree:0];
  }
}

- (void)_dispatchPageScrolledNotification
{
  [(BAXObjectWrapper *)self _baxSetIsTurning:1];
  v3 = dispatch_time(0, 150000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_961C;
  block[3] = &unk_207A0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (id)_accessibilityScrollStatus
{
  v2 = +[BEAccessibilityReadingState currentReadingState];
  pageCount = [v2 pageCount];

  v4 = +[BEAccessibilityReadingState currentReadingState];
  currentPage = [v4 currentPage];

  if (pageCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = BAXLocString(@"loading.book");
  }

  else
  {
    v7 = BAXLocString(@"page.num.of %@ %@");
    v8 = [NSNumber numberWithInteger:currentPage];
    v9 = [BAXObjectWrapper BAXLocalizedNumberForNumber:v8 numberStyle:1 maximumNumberOfDigitsAfterDecimalSeparator:0];
    v10 = [NSNumber numberWithUnsignedInteger:pageCount];
    v11 = [BAXObjectWrapper BAXLocalizedNumberForNumber:v10 numberStyle:1 maximumNumberOfDigitsAfterDecimalSeparator:0];
    v12 = [NSString stringWithFormat:v7, v9, v11];
    v6 = __BAXStringForVariables(v12, v13, v14, v15, v16, v17, v18, v19, @"__BAXStringForVariablesSentinel");
  }

  return v6;
}

+ (id)BAXLocalizedNumberForNumber:(id)number numberStyle:(unint64_t)style maximumNumberOfDigitsAfterDecimalSeparator:(unint64_t)separator
{
  numberCopy = number;
  v8 = objc_opt_new();
  [v8 setNumberStyle:style];
  [v8 setMaximumFractionDigits:separator];
  v9 = [v8 stringFromNumber:numberCopy];

  return v9;
}

- (id)_axPageScrollString
{
  baxStoredLinkInfos = [(BAXObjectWrapper *)self baxStoredLinkInfos];

  if (!baxStoredLinkInfos)
  {
    _accessibilityInternalTextLinks = [(BAXObjectWrapper *)self _accessibilityInternalTextLinks];
    v5 = [_accessibilityInternalTextLinks copy];
    [(BAXObjectWrapper *)self baxSetStoredLinkInfos:v5];
  }

  baxStoredLinkInfos2 = [(BAXObjectWrapper *)self baxStoredLinkInfos];
  v7 = [(BAXObjectWrapper *)self visibleLinkElements:baxStoredLinkInfos2];

  v8 = +[BEAccessibilityReadingState currentReadingState];
  visibleAnnotations = [v8 visibleAnnotations];

  v10 = [v7 count];
  v11 = [visibleAnnotations count];
  v12 = +[BEAccessibilityReadingState currentReadingState];
  pageCount = [v12 pageCount];

  v14 = +[BEAccessibilityReadingState currentReadingState];
  currentPage = [v14 currentPage];
  v17 = v16;

  v18 = &_AXSApplicationAccessibilityEnabled_ptr;
  if (pageCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = BAXLocString(@"page.num.of.loading");
  }

  else if (v17 < 2)
  {
    v23 = BAXLocString(@"page.num.of.with.total.single %lu %lu");
    v19 = [NSString stringWithFormat:v23, currentPage, pageCount];
  }

  else
  {
    BAXLocString(@"page.num.of.with.total.spread %lu %lu %lu");
    v20 = visibleAnnotations;
    v22 = v21 = v7;
    v19 = [NSString stringWithFormat:v22, currentPage, &currentPage[v17 - 1], pageCount];

    v7 = v21;
    visibleAnnotations = v20;
    v18 = &_AXSApplicationAccessibilityEnabled_ptr;
  }

  if (v10)
  {
    v24 = v18[153];
    v25 = BAXLocString(@"%lu link(s)");
    v26 = [v24 localizedStringWithFormat:v25, v10];

    v10 = __BAXStringForVariables(0, v27, v28, v29, v30, v31, v32, v33, v26);
  }

  if (v11)
  {
    v34 = v18[153];
    v35 = BAXLocString(@"%lu note(s)");
    v36 = [v34 localizedStringWithFormat:v35, v11];

    v44 = __BAXStringForVariables(v10, v37, v38, v39, v40, v41, v42, v43, v36);

    v10 = v44;
  }

  v45 = +[BEAccessibilityReadingState currentReadingState];
  isVisiblePageBookmarked = [v45 isVisiblePageBookmarked];

  if (isVisiblePageBookmarked)
  {
    v47 = BAXLocString(@"has.bookmark");
    v55 = __BAXStringForVariables(v10, v48, v49, v50, v51, v52, v53, v54, v47);

    v10 = v55;
  }

  v56 = [NSMutableAttributedString alloc];
  v64 = __BAXStringForVariables(v19, v57, v58, v59, v60, v61, v62, v63, v10);
  v65 = v64;
  if (v64)
  {
    v66 = v64;
  }

  else
  {
    v66 = &stru_20BC0;
  }

  v70 = @"UIAccessibilityTokenLowPitch";
  v71 = kCFBooleanTrue;
  v67 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
  v68 = [v56 initWithString:v66 attributes:v67];

  return v68;
}

- (BOOL)_accessibilityIsRTL
{
  v2 = +[BEAccessibilityReadingState currentReadingState];
  isRTL = [v2 isRTL];

  return isRTL;
}

@end