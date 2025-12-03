@interface SUUIGiftTextTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
@end

@implementation SUUIGiftTextTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIGiftTextTableViewCell" hasInstanceVariable:@"_textView" withType:"UITextView"];
  [validationsCopy validateClass:@"SUUIGiftTextTableViewCell" hasInstanceVariable:@"_placeholderLabel" withType:"UILabel"];
}

- (id)accessibilityValue
{
  v3 = [(SUUIGiftTextTableViewCellAccessibility *)self safeValueForKey:@"_placeholderLabel"];
  isHidden = [v3 isHidden];

  if (isHidden)
  {
    _accessibilityTextViewTextOperationResponder = [(SUUIGiftTextTableViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
    [_accessibilityTextViewTextOperationResponder accessibilityValue];
  }

  else
  {
    _accessibilityTextViewTextOperationResponder = [(SUUIGiftTextTableViewCellAccessibility *)self safeValueForKey:@"_placeholderLabel"];
    [_accessibilityTextViewTextOperationResponder accessibilityLabel];
  }
  v6 = ;

  return v6;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  _accessibilityTextViewTextOperationResponder = [(SUUIGiftTextTableViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  [_accessibilityTextViewTextOperationResponder _accessibilitySetSelectedTextRange:{location, length}];
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _accessibilityTextViewTextOperationResponder = [(SUUIGiftTextTableViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v6 = [_accessibilityTextViewTextOperationResponder _accessibilityLineNumberAndColumnForPoint:{x, y}];

  return v6;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  _accessibilityTextViewTextOperationResponder = [(SUUIGiftTextTableViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  _accessibilitySelectedTextRange = [_accessibilityTextViewTextOperationResponder _accessibilitySelectedTextRange];
  v5 = v4;

  v6 = _accessibilitySelectedTextRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column
{
  columnCopy = column;
  _accessibilityTextViewTextOperationResponder = [(SUUIGiftTextTableViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v6 = [_accessibilityTextViewTextOperationResponder _accessibilityRangeForLineNumberAndColumn:columnCopy];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(SUUIGiftTextTableViewCellAccessibility *)self safeValueForKey:@"_placeholderLabel"];
  isHidden = [v3 isHidden];

  if (!isHidden)
  {
    return 0;
  }

  _accessibilityTextViewTextOperationResponder = [(SUUIGiftTextTableViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  accessibilityTraits = [_accessibilityTextViewTextOperationResponder accessibilityTraits];

  return accessibilityTraits;
}

- (CGPoint)accessibilityActivationPoint
{
  _accessibilityTextViewTextOperationResponder = [(SUUIGiftTextTableViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  [_accessibilityTextViewTextOperationResponder accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end