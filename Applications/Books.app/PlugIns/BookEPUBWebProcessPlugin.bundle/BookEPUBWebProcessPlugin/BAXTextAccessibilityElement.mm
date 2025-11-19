@interface BAXTextAccessibilityElement
- (BAXTextAccessibilityElement)initWithReferenceElement:(id)a3 container:(id)a4;
- (BAXTextAccessibilityElement)initWithReferenceElement:(id)a3 container:(id)a4 attributedValue:(id)a5 accessibilityFrame:(CGRect)a6;
- (BOOL)_accessibilityTextOperationAction:(id)a3;
- (BOOL)isVisible;
- (CGRect)accessibilityBoundsForTextMarkers:(id)a3;
- (CGRect)accessibilityFrameForLineNumber:(int64_t)a3;
- (_NSRange)_accessibilityRangeForLineNumber:(int64_t)a3;
- (_NSRange)_accessibilityRangeForTextMarker:(id)a3;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)_rangeForVisibleContent;
- (id)_accessibilityLineEndMarker:(id)a3;
- (id)_accessibilityLineStartMarker:(id)a3;
- (id)_accessibilityNextMarker:(id)a3;
- (id)_accessibilityObjectForTextMarker:(id)a3;
- (id)_accessibilityPreviousMarker:(id)a3;
- (id)_accessibilityTextMarkerForPosition:(int64_t)a3;
- (id)_accessibilityTextMarkerRange;
- (id)_accessibilityTextMarkerRangeForSelection;
- (id)_accessibilityTextOperations;
- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)a3 string:(id)a4 wantsSentences:(BOOL)a5;
- (id)_stringForVisibleContent;
- (id)accessibilityArrayOfTextForTextMarkers:(id)a3;
- (id)accessibilityAttributedContentForLineNumber:(int64_t)a3;
- (id)accessibilityContentForLineNumber:(int64_t)a3;
- (id)accessibilityStringForTextMarkers:(id)a3;
- (id)stringForTextMarkers:(id)a3;
- (id)textMarkerForPoint:(CGPoint)a3;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityDecreaseSelection:(id)a3;
- (void)_accessibilityIncreaseSelection:(id)a3;
- (void)_accessibilityModifySelection:(id)a3 increase:(BOOL)a4;
- (void)_accessibilityMoveSelectionToMarker:(id)a3;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
- (void)_checkActions;
- (void)trimElementSpanningPageBoundary;
@end

@implementation BAXTextAccessibilityElement

- (BAXTextAccessibilityElement)initWithReferenceElement:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = BAXTextAccessibilityElement;
    v8 = [(BAXTextAccessibilityElement *)&v13 initWithAccessibilityContainer:v7];
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
    [(BAXTextAccessibilityElement *)v8 setReferenceElement:v6];
    v10 = [v6 accessibilityAttributedValue];
    [(BAXTextAccessibilityElement *)v9 setAccessibilityAttributedValue:v10];

    [v6 accessibilityFrame];
    [(BAXTextAccessibilityElement *)v9 setAccessibilityFrame:?];
    -[BAXTextAccessibilityElement setAccessibilityTraits:](v9, "setAccessibilityTraits:", [v6 accessibilityTraits]);
  }

  return v9;
}

- (BAXTextAccessibilityElement)initWithReferenceElement:(id)a3 container:(id)a4 attributedValue:(id)a5 accessibilityFrame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (v14)
  {
    v20.receiver = self;
    v20.super_class = BAXTextAccessibilityElement;
    v16 = [(BAXTextAccessibilityElement *)&v20 initWithAccessibilityContainer:v14];
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
    [(BAXTextAccessibilityElement *)v16 setReferenceElement:v13];
    [(BAXTextAccessibilityElement *)v17 setAccessibilityAttributedValue:v15];
    [(BAXTextAccessibilityElement *)v17 setAccessibilityFrame:x, y, width, height];
    -[BAXTextAccessibilityElement setAccessibilityTraits:](v17, "setAccessibilityTraits:", [v13 accessibilityTraits]);
  }

  return v17;
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = BAXTextAccessibilityElement;
  v3 = UIAccessibilityTraitWebContent | [(BAXTextAccessibilityElement *)&v9 accessibilityTraits];
  v4 = [(BAXTextAccessibilityElement *)self referenceElement];
  v5 = [v4 accessibilityTraits];
  v6 = UIAccessibilityTraitHeader;

  if ((v6 & v5) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v3 | v7;
}

- (_NSRange)_accessibilityRangeForTextMarker:(id)a3
{
  v4 = a3;
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [v5 _accessibilityRangeForTextMarker:v4];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)_accessibilityTextMarkerRange
{
  v2 = [(BAXTextAccessibilityElement *)self referenceElement];
  v3 = [v2 _accessibilityTextMarkerRange];

  return v3;
}

- (id)stringForTextMarkers:(id)a3
{
  v4 = a3;
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [v5 stringForTextMarkers:v4];

  return v6;
}

- (id)accessibilityStringForTextMarkers:(id)a3
{
  v4 = a3;
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [v5 accessibilityStringForTextMarkers:v4];

  return v6;
}

- (_NSRange)_accessibilityRangeForLineNumber:(int64_t)a3
{
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(BAXTextAccessibilityElement *)self referenceElement];
    v8 = [v7 _accessibilityRangeForLineNumber:a3];
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

- (id)accessibilityContentForLineNumber:(int64_t)a3
{
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(BAXTextAccessibilityElement *)self referenceElement];
    v8 = [v7 accessibilityContentForLineNumber:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)accessibilityAttributedContentForLineNumber:(int64_t)a3
{
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(BAXTextAccessibilityElement *)self referenceElement];
    v8 = [v7 accessibilityAttributedContentForLineNumber:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)accessibilityFrameForLineNumber:(int64_t)a3
{
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(BAXTextAccessibilityElement *)self referenceElement];
    [v7 accessibilityFrameForLineNumber:a3];
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

- (CGRect)accessibilityBoundsForTextMarkers:(id)a3
{
  v4 = a3;
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  [v5 accessibilityBoundsForTextMarkers:v4];
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

- (id)_accessibilityLineEndMarker:(id)a3
{
  v4 = a3;
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [v5 _accessibilityLineEndMarker:v4];

  return v6;
}

- (id)_accessibilityLineStartMarker:(id)a3
{
  v4 = a3;
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [v5 _accessibilityLineStartMarker:v4];

  return v6;
}

- (id)accessibilityArrayOfTextForTextMarkers:(id)a3
{
  v4 = a3;
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [v5 accessibilityArrayOfTextForTextMarkers:v4];

  return v6;
}

- (id)_accessibilityNextMarker:(id)a3
{
  v4 = a3;
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [v5 _accessibilityNextMarker:v4];

  return v6;
}

- (id)_accessibilityPreviousMarker:(id)a3
{
  v4 = a3;
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [v5 _accessibilityPreviousMarker:v4];

  return v6;
}

- (id)_accessibilityObjectForTextMarker:(id)a3
{
  v4 = a3;
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [v5 _accessibilityObjectForTextMarker:v4];

  return v6;
}

- (id)_accessibilityTextMarkerForPosition:(int64_t)a3
{
  v4 = [(BAXTextAccessibilityElement *)self referenceElement];
  v5 = [v4 _accessibilityTextMarkerForPosition:a3];

  return v5;
}

- (BOOL)_accessibilityTextOperationAction:(id)a3
{
  v3 = a3;
  v4 = +[BEAccessibilityReadingState currentReadingState];
  v5 = [v4 performableOperations];

  v6 = [v5 containsObject:v3];
  if (v6)
  {
    [BEAXWebContentUtilities performNativeAction:v3];
  }

  return v6;
}

- (id)_accessibilityTextOperations
{
  v2 = +[BEAccessibilityReadingState currentReadingState];
  v3 = [v2 performableOperations];

  return v3;
}

- (void)_accessibilityIncreaseSelection:(id)a3
{
  v4 = a3;
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  [v5 _accessibilityIncreaseSelection:v4];
}

- (void)_accessibilityDecreaseSelection:(id)a3
{
  v4 = a3;
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  [v5 _accessibilityDecreaseSelection:v4];
}

- (void)_accessibilityModifySelection:(id)a3 increase:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BAXTextAccessibilityElement *)self referenceElement];
  [v7 _accessibilityModifySelection:v6 increase:v4];
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v2 = [(BAXTextAccessibilityElement *)self referenceElement];
  v3 = [v2 _accessibilitySelectedTextRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  [v5 _accessibilitySetSelectedTextRange:{location, length}];
}

- (id)_accessibilityTextMarkerRangeForSelection
{
  v2 = [(BAXTextAccessibilityElement *)self referenceElement];
  v3 = [v2 _accessibilityTextMarkerRangeForSelection];

  return v3;
}

- (id)textMarkerForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  v6 = [v5 textMarkerForPoint:{x, y}];

  return v6;
}

- (void)_accessibilityMoveSelectionToMarker:(id)a3
{
  v4 = a3;
  [(BAXTextAccessibilityElement *)self _checkActions];
  v5 = [(BAXTextAccessibilityElement *)self referenceElement];
  [v5 _accessibilityMoveSelectionToMarker:v4];
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
  v3 = [(BAXTextAccessibilityElement *)self _rangeForVisibleContent];
  v5 = v4;
  v6 = [(BAXTextAccessibilityElement *)self referenceElement];
  v8 = [v6 attributedStringForRange:{v3, v5}];

  [(BAXTextAccessibilityElement *)self setAccessibilityAttributedValue:v8];
  v7 = [(BAXTextAccessibilityElement *)self referenceElement];
  [v7 frameForRange:{v3, v5}];
  [(BAXTextAccessibilityElement *)self setAccessibilityFrame:?];
}

- (BOOL)isVisible
{
  [(BAXTextAccessibilityElement *)self accessibilityFrame];
  v4 = v3;
  [(BAXTextAccessibilityElement *)self accessibilityFrame];
  v6 = v4 + v5;
  v7 = [(BAXTextAccessibilityElement *)self referenceElement];
  [v7 accessibilityVisibleContentRect];
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
    v19 = [(BAXTextAccessibilityElement *)self referenceElement];
    [v19 accessibilityVisibleContentRect];
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
    v22 = [(BAXTextAccessibilityElement *)self referenceElement];
    [v22 accessibilityFrame];
    v21 = v23 == 0.0;
  }

  return !v21;
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)a3 string:(id)a4 wantsSentences:(BOOL)a5
{
  v5 = a5;
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = [(BAXTextAccessibilityElement *)self referenceElement];
  v11 = [v10 _accessibilityTextRectsForSpeakThisStringRange:location string:length wantsSentences:{v9, v5}];

  return v11;
}

- (_NSRange)_rangeForVisibleContent
{
  v3 = [(BAXTextAccessibilityElement *)self referenceElement];
  v4 = [v3 accessibilityVisibleCharacterRange];
  v6 = v5;

  v7 = [(BAXTextAccessibilityElement *)self referenceElement];
  v8 = [v7 elementTextRange];

  v9 = v4 + v8;
  v10 = v6;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)_stringForVisibleContent
{
  v3 = [(BAXTextAccessibilityElement *)self referenceElement];
  v4 = [(BAXTextAccessibilityElement *)self _rangeForVisibleContent];
  v6 = [v3 attributedStringForRange:{v4, v5}];

  v7 = [v6 string];

  return v7;
}

@end