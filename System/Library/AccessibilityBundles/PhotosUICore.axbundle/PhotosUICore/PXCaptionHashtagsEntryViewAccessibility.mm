@interface PXCaptionHashtagsEntryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilitySupportsHandwriting;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
- (void)moreButtonTapped:(id)a3;
@end

@implementation PXCaptionHashtagsEntryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXCaptionHashtagsEntryView" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PXCaptionHashtagsEntryView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXCaptionHashtagsEntryView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXCaptionHashtagsEntryView" hasInstanceMethod:@"moreButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXCaptionHashtagsEntryView" hasInstanceMethod:@"moreButtonTapped:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(PXCaptionHashtagsEntryViewAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(PXCaptionHashtagsEntryViewAccessibility *)self safeStringForKey:@"text"];
  if (![v3 length])
  {
    v4 = [(PXCaptionHashtagsEntryViewAccessibility *)self _accessibilityTextViewTextOperationResponder];
    v5 = [v4 accessibilityValue];

    v3 = v5;
  }

  return v3;
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(PXCaptionHashtagsEntryViewAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v6 = [v5 _accessibilityLineNumberAndColumnForPoint:{x, y}];

  return v6;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3
{
  v4 = a3;
  v5 = [(PXCaptionHashtagsEntryViewAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v6 = [v5 _accessibilityRangeForLineNumberAndColumn:v4];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(PXCaptionHashtagsEntryViewAccessibility *)self _accessibilityTextViewTextOperationResponder];
  [v5 _accessibilitySetSelectedTextRange:{location, length}];
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v2 = [(PXCaptionHashtagsEntryViewAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v3 = [v2 _accessibilitySelectedTextRange];
  v5 = v4;

  v6 = v3;
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
  v3 = [(PXCaptionHashtagsEntryViewAccessibility *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7528] & ~v3) == 0)
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
  v5 = [(PXCaptionHashtagsEntryViewAccessibility *)&v11 _accessibilitySupplementaryFooterViews];
  v6 = [v4 axArrayWithPossiblyNilArrays:{1, v5}];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x29EDB8DE8] array];
  }

  v9 = v8;

  if ([v3 _accessibilityViewIsVisible])
  {
    [v9 axSafelyAddObject:v3];
  }

  return v9;
}

- (void)moreButtonTapped:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXCaptionHashtagsEntryViewAccessibility;
  [(PXCaptionHashtagsEntryViewAccessibility *)&v4 moreButtonTapped:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
}

@end