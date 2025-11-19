@interface NicknameFieldCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilitySupportsHandwriting;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
@end

@implementation NicknameFieldCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GameCenterUI.NicknameFieldCollectionViewCell" hasInstanceMethod:@"accessibilityTextLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UITextField" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UITextField" hasInstanceMethod:@"_clearButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(NicknameFieldCollectionViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(NicknameFieldCollectionViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(NicknameFieldCollectionViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v6 = [v5 _accessibilityLineNumberAndColumnForPoint:{x, y}];

  return v6;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3
{
  v4 = a3;
  v5 = [(NicknameFieldCollectionViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
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
  v5 = [(NicknameFieldCollectionViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  [v5 _accessibilitySetSelectedTextRange:{location, length}];
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDBDC00] | *MEMORY[0x29EDC7598];
  v3 = [(NicknameFieldCollectionViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v4 = [v3 safeBoolForKey:@"isEditing"];

  v5 = *MEMORY[0x29EDC7528];
  if (!v4)
  {
    v5 = 0;
  }

  return v2 | v5;
}

- (BOOL)_accessibilitySupportsHandwriting
{
  v3 = [(NicknameFieldCollectionViewCellAccessibility *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7528] & ~v3) == 0)
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
  v3 = [(NicknameFieldCollectionViewCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  if ([v3 safeBoolForKey:@"isEditing"])
  {
    v4 = [v3 safeValueForKey:@"_clearButton"];
    v9[0] = v4;
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NicknameFieldCollectionViewCellAccessibility;
    v5 = [(NicknameFieldCollectionViewCellAccessibility *)&v8 _accessibilitySupplementaryFooterViews];
  }

  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

@end