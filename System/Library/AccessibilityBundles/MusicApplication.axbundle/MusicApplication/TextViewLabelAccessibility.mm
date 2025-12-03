@interface TextViewLabelAccessibility
- (BOOL)_accessibilitySupportsHandwriting;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
@end

@implementation TextViewLabelAccessibility

- (id)_accessibilityTextViewTextOperationResponder
{
  v3 = objc_opt_class();

  return [(TextViewLabelAccessibility *)self _accessibilityDescendantOfType:v3];
}

- (id)accessibilityValue
{
  _accessibilityTextViewTextOperationResponder = [(TextViewLabelAccessibility *)self _accessibilityTextViewTextOperationResponder];
  accessibilityValue = [_accessibilityTextViewTextOperationResponder accessibilityValue];

  return accessibilityValue;
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _accessibilityTextViewTextOperationResponder = [(TextViewLabelAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v6 = [_accessibilityTextViewTextOperationResponder _accessibilityLineNumberAndColumnForPoint:{x, y}];

  return v6;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column
{
  columnCopy = column;
  _accessibilityTextViewTextOperationResponder = [(TextViewLabelAccessibility *)self _accessibilityTextViewTextOperationResponder];
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
  _accessibilityTextViewTextOperationResponder = [(TextViewLabelAccessibility *)self _accessibilityTextViewTextOperationResponder];
  [_accessibilityTextViewTextOperationResponder _accessibilitySetSelectedTextRange:{location, length}];
}

- (_NSRange)_accessibilitySelectedTextRange
{
  _accessibilityTextViewTextOperationResponder = [(TextViewLabelAccessibility *)self _accessibilityTextViewTextOperationResponder];
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
  _accessibilityTextViewTextOperationResponder = [(TextViewLabelAccessibility *)self _accessibilityTextViewTextOperationResponder];
  accessibilityTraits = [_accessibilityTextViewTextOperationResponder accessibilityTraits];

  return accessibilityTraits;
}

- (BOOL)_accessibilitySupportsHandwriting
{
  accessibilityTraits = [(TextViewLabelAccessibility *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7528] & ~accessibilityTraits) == 0)
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = TextViewLabelAccessibility;
  return [(TextViewLabelAccessibility *)&v5 _accessibilitySupportsHandwriting];
}

@end