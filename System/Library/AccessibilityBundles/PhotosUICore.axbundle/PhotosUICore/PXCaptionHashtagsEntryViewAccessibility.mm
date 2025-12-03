@interface PXCaptionHashtagsEntryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilitySupportsHandwriting;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
- (void)moreButtonTapped:(id)tapped;
@end

@implementation PXCaptionHashtagsEntryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXCaptionHashtagsEntryView" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PXCaptionHashtagsEntryView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCaptionHashtagsEntryView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCaptionHashtagsEntryView" hasInstanceMethod:@"moreButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCaptionHashtagsEntryView" hasInstanceMethod:@"moreButtonTapped:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  _accessibilityTextViewTextOperationResponder = [(PXCaptionHashtagsEntryViewAccessibility *)self _accessibilityTextViewTextOperationResponder];
  accessibilityLabel = [_accessibilityTextViewTextOperationResponder accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v3 = [(PXCaptionHashtagsEntryViewAccessibility *)self safeStringForKey:@"text"];
  if (![v3 length])
  {
    _accessibilityTextViewTextOperationResponder = [(PXCaptionHashtagsEntryViewAccessibility *)self _accessibilityTextViewTextOperationResponder];
    accessibilityValue = [_accessibilityTextViewTextOperationResponder accessibilityValue];

    v3 = accessibilityValue;
  }

  return v3;
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _accessibilityTextViewTextOperationResponder = [(PXCaptionHashtagsEntryViewAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v6 = [_accessibilityTextViewTextOperationResponder _accessibilityLineNumberAndColumnForPoint:{x, y}];

  return v6;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column
{
  columnCopy = column;
  _accessibilityTextViewTextOperationResponder = [(PXCaptionHashtagsEntryViewAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v6 = [_accessibilityTextViewTextOperationResponder _accessibilityRangeForLineNumberAndColumn:columnCopy];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  _accessibilityTextViewTextOperationResponder = [(PXCaptionHashtagsEntryViewAccessibility *)self _accessibilityTextViewTextOperationResponder];
  [_accessibilityTextViewTextOperationResponder _accessibilitySetSelectedTextRange:{location, length}];
}

- (_NSRange)_accessibilitySelectedTextRange
{
  _accessibilityTextViewTextOperationResponder = [(PXCaptionHashtagsEntryViewAccessibility *)self _accessibilityTextViewTextOperationResponder];
  _accessibilitySelectedTextRange = [_accessibilityTextViewTextOperationResponder _accessibilitySelectedTextRange];
  v5 = v4;

  v6 = _accessibilitySelectedTextRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDBDC00] | *MEMORY[0x29EDC7598];
  v3 = [(PXCaptionHashtagsEntryViewAccessibility *)self safeBoolForKey:@"isEditing"];
  v4 = *MEMORY[0x29EDC7528];
  if (!v3)
  {
    v4 = 0;
  }

  return v2 | v4;
}

- (BOOL)_accessibilitySupportsHandwriting
{
  accessibilityTraits = [(PXCaptionHashtagsEntryViewAccessibility *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7528] & ~accessibilityTraits) == 0)
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = PXCaptionHashtagsEntryViewAccessibility;
  return [(PXCaptionHashtagsEntryViewAccessibility *)&v5 _accessibilitySupportsHandwriting];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(PXCaptionHashtagsEntryViewAccessibility *)self safeValueForKey:@"moreButton"];
  v4 = MEMORY[0x29EDB8DE8];
  v11.receiver = self;
  v11.super_class = PXCaptionHashtagsEntryViewAccessibility;
  _accessibilitySupplementaryFooterViews = [(PXCaptionHashtagsEntryViewAccessibility *)&v11 _accessibilitySupplementaryFooterViews];
  v6 = [v4 axArrayWithPossiblyNilArrays:{1, _accessibilitySupplementaryFooterViews}];
  v7 = v6;
  if (v6)
  {
    array = v6;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v9 = array;

  if ([v3 _accessibilityViewIsVisible])
  {
    [v9 axSafelyAddObject:v3];
  }

  return v9;
}

- (void)moreButtonTapped:(id)tapped
{
  v4.receiver = self;
  v4.super_class = PXCaptionHashtagsEntryViewAccessibility;
  [(PXCaptionHashtagsEntryViewAccessibility *)&v4 moreButtonTapped:tapped];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
}

@end