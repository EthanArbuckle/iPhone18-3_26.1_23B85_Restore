@interface TextViewLabelAccessibility
- (BOOL)_accessibilitySupportsHandwriting;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
@end

@implementation TextViewLabelAccessibility

- (id)_accessibilityTextViewTextOperationResponder
{
  v3 = objc_opt_class();

  return [(TextViewLabelAccessibility *)self _accessibilityDescendantOfType:v3];
}

- (id)accessibilityValue
{
  v2 = [(TextViewLabelAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(TextViewLabelAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v6 = [v5 _accessibilityLineNumberAndColumnForPoint:{x, y}];

  return v6;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3
{
  v4 = a3;
  v5 = [(TextViewLabelAccessibility *)self _accessibilityTextViewTextOperationResponder];
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
  v5 = [(TextViewLabelAccessibility *)self _accessibilityTextViewTextOperationResponder];
  [v5 _accessibilitySetSelectedTextRange:{location, length}];
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v2 = [(TextViewLabelAccessibility *)self _accessibilityTextViewTextOperationResponder];
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
  v2 = [(TextViewLabelAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (BOOL)_accessibilitySupportsHandwriting
{
  v3 = [(TextViewLabelAccessibility *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7528] & ~v3) == 0)
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = TextViewLabelAccessibility;
  return [(TextViewLabelAccessibility *)&v5 _accessibilitySupportsHandwriting];
}

@end