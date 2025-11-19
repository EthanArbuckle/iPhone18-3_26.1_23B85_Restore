@interface SKUIGiftTextTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
@end

@implementation SKUIGiftTextTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIGiftTextTableViewCell" hasInstanceVariable:@"_textView" withType:"UITextView"];
  [v3 validateClass:@"SKUIGiftTextTableViewCell" hasInstanceVariable:@"_placeholderLabel" withType:"UILabel"];
}

- (id)accessibilityValue
{
  v3 = [(SKUIGiftTextTableViewCellAccessibility *)self safeValueForKey:@"_placeholderLabel"];
  v4 = [v3 isHidden];

  if (v4)
  {
    v5 = [(SKUIGiftTextTableViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
    [v5 accessibilityValue];
  }

  else
  {
    v5 = [(SKUIGiftTextTableViewCellAccessibility *)self safeValueForKey:@"_placeholderLabel"];
    [v5 accessibilityLabel];
  }
  v6 = ;

  return v6;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(SKUIGiftTextTableViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  [v5 _accessibilitySetSelectedTextRange:{location, length}];
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(SKUIGiftTextTableViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v6 = [v5 _accessibilityLineNumberAndColumnForPoint:{x, y}];

  return v6;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v2 = [(SKUIGiftTextTableViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v3 = [v2 _accessibilitySelectedTextRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3
{
  v4 = a3;
  v5 = [(SKUIGiftTextTableViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v6 = [v5 _accessibilityRangeForLineNumberAndColumn:v4];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(SKUIGiftTextTableViewCellAccessibility *)self safeValueForKey:@"_placeholderLabel"];
  v4 = [v3 isHidden];

  if (!v4)
  {
    return 0;
  }

  v5 = [(SKUIGiftTextTableViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v6 = [v5 accessibilityTraits];

  return v6;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(SKUIGiftTextTableViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end