@interface BAXTextAccessibilityElement
- (BAXTextAccessibilityElement)initWithReferenceElement:(id)element container:(id)container;
- (BAXTextAccessibilityElement)initWithReferenceElement:(id)element container:(id)container attributedValue:(id)value accessibilityFrame:(CGRect)frame;
- (BOOL)_accessibilityTextOperationAction:(id)action;
- (BOOL)isVisible;
- (CGRect)accessibilityBoundsForTextMarkers:(id)markers;
- (CGRect)accessibilityFrameForLineNumber:(int64_t)number;
- (_NSRange)_accessibilityRangeForLineNumber:(int64_t)number;
- (_NSRange)_accessibilityRangeForTextMarker:(id)marker;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)_rangeForVisibleContent;
- (id)_accessibilityLineEndMarker:(id)marker;
- (id)_accessibilityLineStartMarker:(id)marker;
- (id)_accessibilityNextMarker:(id)marker;
- (id)_accessibilityObjectForTextMarker:(id)marker;
- (id)_accessibilityPreviousMarker:(id)marker;
- (id)_accessibilityTextMarkerForPosition:(int64_t)position;
- (id)_accessibilityTextMarkerRange;
- (id)_accessibilityTextMarkerRangeForSelection;
- (id)_accessibilityTextOperations;
- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)range string:(id)string wantsSentences:(BOOL)sentences;
- (id)_stringForVisibleContent;
- (id)accessibilityArrayOfTextForTextMarkers:(id)markers;
- (id)accessibilityAttributedContentForLineNumber:(int64_t)number;
- (id)accessibilityContentForLineNumber:(int64_t)number;
- (id)accessibilityStringForTextMarkers:(id)markers;
- (id)stringForTextMarkers:(id)markers;
- (id)textMarkerForPoint:(CGPoint)point;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityDecreaseSelection:(id)selection;
- (void)_accessibilityIncreaseSelection:(id)selection;
- (void)_accessibilityModifySelection:(id)selection increase:(BOOL)increase;
- (void)_accessibilityMoveSelectionToMarker:(id)marker;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
- (void)_checkActions;
- (void)trimElementSpanningPageBoundary;
@end

@implementation BAXTextAccessibilityElement

- (BAXTextAccessibilityElement)initWithReferenceElement:(id)element container:(id)container
{
  elementCopy = element;
  containerCopy = container;
  if (containerCopy)
  {
    v13.receiver = self;
    v13.super_class = BAXTextAccessibilityElement;
    v8 = [(BAXTextAccessibilityElement *)&v13 initWithAccessibilityContainer:containerCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = BAXTextAccessibilityElement;
    v8 = [(BAXTextAccessibilityElement *)&v12 init];
  }

  v9 = v8;
  if (v8)
  {
    [(BAXTextAccessibilityElement *)v8 setReferenceElement:elementCopy];
    accessibilityAttributedValue = [elementCopy accessibilityAttributedValue];
    [(BAXTextAccessibilityElement *)v9 setAccessibilityAttributedValue:accessibilityAttributedValue];

    [elementCopy accessibilityFrame];
    [(BAXTextAccessibilityElement *)v9 setAccessibilityFrame:?];
    -[BAXTextAccessibilityElement setAccessibilityTraits:](v9, "setAccessibilityTraits:", [elementCopy accessibilityTraits]);
  }

  return v9;
}

- (BAXTextAccessibilityElement)initWithReferenceElement:(id)element container:(id)container attributedValue:(id)value accessibilityFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  elementCopy = element;
  containerCopy = container;
  valueCopy = value;
  if (containerCopy)
  {
    v20.receiver = self;
    v20.super_class = BAXTextAccessibilityElement;
    v16 = [(BAXTextAccessibilityElement *)&v20 initWithAccessibilityContainer:containerCopy];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = BAXTextAccessibilityElement;
    v16 = [(BAXTextAccessibilityElement *)&v19 init];
  }

  v17 = v16;
  if (v16)
  {
    [(BAXTextAccessibilityElement *)v16 setReferenceElement:elementCopy];
    [(BAXTextAccessibilityElement *)v17 setAccessibilityAttributedValue:valueCopy];
    [(BAXTextAccessibilityElement *)v17 setAccessibilityFrame:x, y, width, height];
    -[BAXTextAccessibilityElement setAccessibilityTraits:](v17, "setAccessibilityTraits:", [elementCopy accessibilityTraits]);
  }

  return v17;
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = BAXTextAccessibilityElement;
  v3 = UIAccessibilityTraitWebContent | [(BAXTextAccessibilityElement *)&v9 accessibilityTraits];
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  accessibilityTraits = [referenceElement accessibilityTraits];
  v6 = UIAccessibilityTraitHeader;

  if ((v6 & accessibilityTraits) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v3 | v7;
}

- (_NSRange)_accessibilityRangeForTextMarker:(id)marker
{
  markerCopy = marker;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [referenceElement _accessibilityRangeForTextMarker:markerCopy];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)_accessibilityTextMarkerRange
{
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  _accessibilityTextMarkerRange = [referenceElement _accessibilityTextMarkerRange];

  return _accessibilityTextMarkerRange;
}

- (id)stringForTextMarkers:(id)markers
{
  markersCopy = markers;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [referenceElement stringForTextMarkers:markersCopy];

  return v6;
}

- (id)accessibilityStringForTextMarkers:(id)markers
{
  markersCopy = markers;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [referenceElement accessibilityStringForTextMarkers:markersCopy];

  return v6;
}

- (_NSRange)_accessibilityRangeForLineNumber:(int64_t)number
{
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    referenceElement2 = [(BAXTextAccessibilityElement *)self referenceElement];
    v8 = [referenceElement2 _accessibilityRangeForLineNumber:number];
    v10 = v9;

    v11 = v8;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  result.length = v12;
  result.location = v11;
  return result;
}

- (id)accessibilityContentForLineNumber:(int64_t)number
{
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    referenceElement2 = [(BAXTextAccessibilityElement *)self referenceElement];
    v8 = [referenceElement2 accessibilityContentForLineNumber:number];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)accessibilityAttributedContentForLineNumber:(int64_t)number
{
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    referenceElement2 = [(BAXTextAccessibilityElement *)self referenceElement];
    v8 = [referenceElement2 accessibilityAttributedContentForLineNumber:number];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)accessibilityFrameForLineNumber:(int64_t)number
{
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    referenceElement2 = [(BAXTextAccessibilityElement *)self referenceElement];
    [referenceElement2 accessibilityFrameForLineNumber:number];
    x = v8;
    y = v10;
    width = v12;
    height = v14;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)accessibilityBoundsForTextMarkers:(id)markers
{
  markersCopy = markers;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  [referenceElement accessibilityBoundsForTextMarkers:markersCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)_accessibilityLineEndMarker:(id)marker
{
  markerCopy = marker;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [referenceElement _accessibilityLineEndMarker:markerCopy];

  return v6;
}

- (id)_accessibilityLineStartMarker:(id)marker
{
  markerCopy = marker;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [referenceElement _accessibilityLineStartMarker:markerCopy];

  return v6;
}

- (id)accessibilityArrayOfTextForTextMarkers:(id)markers
{
  markersCopy = markers;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [referenceElement accessibilityArrayOfTextForTextMarkers:markersCopy];

  return v6;
}

- (id)_accessibilityNextMarker:(id)marker
{
  markerCopy = marker;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [referenceElement _accessibilityNextMarker:markerCopy];

  return v6;
}

- (id)_accessibilityPreviousMarker:(id)marker
{
  markerCopy = marker;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [referenceElement _accessibilityPreviousMarker:markerCopy];

  return v6;
}

- (id)_accessibilityObjectForTextMarker:(id)marker
{
  markerCopy = marker;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [referenceElement _accessibilityObjectForTextMarker:markerCopy];

  return v6;
}

- (id)_accessibilityTextMarkerForPosition:(int64_t)position
{
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v5 = [referenceElement _accessibilityTextMarkerForPosition:position];

  return v5;
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

- (void)_accessibilityIncreaseSelection:(id)selection
{
  selectionCopy = selection;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  [referenceElement _accessibilityIncreaseSelection:selectionCopy];
}

- (void)_accessibilityDecreaseSelection:(id)selection
{
  selectionCopy = selection;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  [referenceElement _accessibilityDecreaseSelection:selectionCopy];
}

- (void)_accessibilityModifySelection:(id)selection increase:(BOOL)increase
{
  increaseCopy = increase;
  selectionCopy = selection;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  [referenceElement _accessibilityModifySelection:selectionCopy increase:increaseCopy];
}

- (_NSRange)_accessibilitySelectedTextRange
{
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  _accessibilitySelectedTextRange = [referenceElement _accessibilitySelectedTextRange];
  v5 = v4;

  v6 = _accessibilitySelectedTextRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  [referenceElement _accessibilitySetSelectedTextRange:{location, length}];
}

- (id)_accessibilityTextMarkerRangeForSelection
{
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  _accessibilityTextMarkerRangeForSelection = [referenceElement _accessibilityTextMarkerRangeForSelection];

  return _accessibilityTextMarkerRangeForSelection;
}

- (id)textMarkerForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [referenceElement textMarkerForPoint:{x, y}];

  return v6;
}

- (void)_accessibilityMoveSelectionToMarker:(id)marker
{
  markerCopy = marker;
  [(BAXTextAccessibilityElement *)self _checkActions];
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  [referenceElement _accessibilityMoveSelectionToMarker:markerCopy];
}

- (void)_checkActions
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F51C;
  block[3] = &unk_207A0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)trimElementSpanningPageBoundary
{
  _rangeForVisibleContent = [(BAXTextAccessibilityElement *)self _rangeForVisibleContent];
  v5 = v4;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v8 = [referenceElement attributedStringForRange:{_rangeForVisibleContent, v5}];

  [(BAXTextAccessibilityElement *)self setAccessibilityAttributedValue:v8];
  referenceElement2 = [(BAXTextAccessibilityElement *)self referenceElement];
  [referenceElement2 frameForRange:{_rangeForVisibleContent, v5}];
  [(BAXTextAccessibilityElement *)self setAccessibilityFrame:?];
}

- (BOOL)isVisible
{
  [(BAXTextAccessibilityElement *)self accessibilityFrame];
  v4 = v3;
  [(BAXTextAccessibilityElement *)self accessibilityFrame];
  v6 = v4 + v5;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  [referenceElement accessibilityVisibleContentRect];
  v9 = v6 > v8;

  v10 = +[BEAccessibilityReadingState currentReadingState];
  [v10 secondaryVisibleContentRect];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v27.origin.x = CGRectZero.origin.x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v14 = CGRectEqualToRect(v25, v27);

  if (!v14)
  {
    [(BAXTextAccessibilityElement *)self accessibilityFrame];
    v16 = v15;
    [(BAXTextAccessibilityElement *)self accessibilityFrame];
    v18 = v16 + v17;
    referenceElement2 = [(BAXTextAccessibilityElement *)self referenceElement];
    [referenceElement2 accessibilityVisibleContentRect];
    v9 = v18 < v20;
  }

  [(BAXTextAccessibilityElement *)self accessibilityFrame];
  v28.origin.x = CGRectZero.origin.x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v21 = CGRectEqualToRect(v26, v28);
  if (!v21 && v9)
  {
    referenceElement3 = [(BAXTextAccessibilityElement *)self referenceElement];
    [referenceElement3 accessibilityFrame];
    v21 = v23 == 0.0;
  }

  return !v21;
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)range string:(id)string wantsSentences:(BOOL)sentences
{
  sentencesCopy = sentences;
  length = range.length;
  location = range.location;
  stringCopy = string;
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  v11 = [referenceElement _accessibilityTextRectsForSpeakThisStringRange:location string:length wantsSentences:{stringCopy, sentencesCopy}];

  return v11;
}

- (_NSRange)_rangeForVisibleContent
{
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  accessibilityVisibleCharacterRange = [referenceElement accessibilityVisibleCharacterRange];
  v6 = v5;

  referenceElement2 = [(BAXTextAccessibilityElement *)self referenceElement];
  elementTextRange = [referenceElement2 elementTextRange];

  v9 = accessibilityVisibleCharacterRange + elementTextRange;
  v10 = v6;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)_stringForVisibleContent
{
  referenceElement = [(BAXTextAccessibilityElement *)self referenceElement];
  _rangeForVisibleContent = [(BAXTextAccessibilityElement *)self _rangeForVisibleContent];
  v6 = [referenceElement attributedStringForRange:{_rangeForVisibleContent, v5}];

  string = [v6 string];

  return string;
}

@end