@interface NicknameFieldCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilitySupportsHandwriting;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
@end

@implementation NicknameFieldCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GameCenterUI.NicknameFieldCollectionViewCell" hasInstanceMethod:@"accessibilityTextLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UITextField" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UITextField" hasInstanceMethod:@"_clearButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  _accessibilityTextViewTextOperationResponder = [(NicknameFieldCollectionViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  accessibilityLabel = [_accessibilityTextViewTextOperationResponder accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  _accessibilityTextViewTextOperationResponder = [(NicknameFieldCollectionViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  accessibilityValue = [_accessibilityTextViewTextOperationResponder accessibilityValue];

  return accessibilityValue;
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _accessibilityTextViewTextOperationResponder = [(NicknameFieldCollectionViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v6 = [_accessibilityTextViewTextOperationResponder _accessibilityLineNumberAndColumnForPoint:{x, y}];

  return v6;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column
{
  columnCopy = column;
  _accessibilityTextViewTextOperationResponder = [(NicknameFieldCollectionViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
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
  _accessibilityTextViewTextOperationResponder = [(NicknameFieldCollectionViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  [_accessibilityTextViewTextOperationResponder _accessibilitySetSelectedTextRange:{location, length}];
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDBDC00] | *MEMORY[0x29EDC7598];
  _accessibilityTextViewTextOperationResponder = [(NicknameFieldCollectionViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v4 = [_accessibilityTextViewTextOperationResponder safeBoolForKey:@"isEditing"];

  v5 = *MEMORY[0x29EDC7528];
  if (!v4)
  {
    v5 = 0;
  }

  return v2 | v5;
}

- (BOOL)_accessibilitySupportsHandwriting
{
  accessibilityTraits = [(NicknameFieldCollectionViewCellAccessibility *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7528] & ~accessibilityTraits) == 0)
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = NicknameFieldCollectionViewCellAccessibility;
  return [(NicknameFieldCollectionViewCellAccessibility *)&v5 _accessibilitySupportsHandwriting];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v9[1] = *MEMORY[0x29EDCA608];
  _accessibilityTextViewTextOperationResponder = [(NicknameFieldCollectionViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if ([_accessibilityTextViewTextOperationResponder safeBoolForKey:@"isEditing"])
  {
    v4 = [_accessibilityTextViewTextOperationResponder safeValueForKey:@"_clearButton"];
    v9[0] = v4;
    _accessibilitySupplementaryFooterViews = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NicknameFieldCollectionViewCellAccessibility;
    _accessibilitySupplementaryFooterViews = [(NicknameFieldCollectionViewCellAccessibility *)&v8 _accessibilitySupplementaryFooterViews];
  }

  v6 = *MEMORY[0x29EDCA608];

  return _accessibilitySupplementaryFooterViews;
}

@end