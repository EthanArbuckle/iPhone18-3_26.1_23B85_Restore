@interface PSEditableTableCellAccessibility
- (_NSRange)_accessibilitySelectedTextRange;
- (id)_accessibilityChildren;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
@end

@implementation PSEditableTableCellAccessibility

- (id)_accessibilityChildren
{
  v9.receiver = self;
  v9.super_class = PSEditableTableCellAccessibility;
  _accessibilityChildren = [(PSEditableTableCellAccessibility *)&v9 _accessibilityChildren];
  v4 = [_accessibilityChildren indexOfObjectPassingTest:&__block_literal_global_1];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [_accessibilityChildren objectAtIndex:v4];
  }

  [v5 setIsAccessibilityElement:0];
  v6 = [(PSEditableTableCellAccessibility *)self safeValueForKey:@"textField"];
  accessibilityLabel = [v5 accessibilityLabel];
  [v6 setAccessibilityLabel:accessibilityLabel];

  return _accessibilityChildren;
}

uint64_t __58__PSEditableTableCellAccessibility__accessibilityChildren__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  NSClassFromString(&cfstr_Uitabletextacc.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *a4 = 1;
  }

  return isKindOfClass & 1;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  _accessibilityTextViewTextOperationResponder = [(PSEditableTableCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  [_accessibilityTextViewTextOperationResponder _accessibilitySetSelectedTextRange:{location, length}];
}

- (_NSRange)_accessibilitySelectedTextRange
{
  _accessibilityTextViewTextOperationResponder = [(PSEditableTableCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  _accessibilitySelectedTextRange = [_accessibilityTextViewTextOperationResponder _accessibilitySelectedTextRange];
  v5 = v4;

  v6 = _accessibilitySelectedTextRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(PSEditableTableCellAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(PSEditableTableCellAccessibility *)self accessibilityUserDefinedLabel];
    goto LABEL_10;
  }

  accessibilityUserDefinedLabel2 = [(PSEditableTableCellAccessibility *)self safeValueForKey:@"title"];
  if (![accessibilityUserDefinedLabel2 length])
  {
    accessibilityIdentification = [(PSEditableTableCellAccessibility *)self accessibilityIdentification];
    if ([accessibilityIdentification isEqualToString:@"AASpecifierUsername"])
    {
      v6 = @"account.username.label";
    }

    else
    {
      if (![accessibilityIdentification isEqualToString:@"AASpecifierPassword"])
      {
LABEL_9:

        goto LABEL_10;
      }

      v6 = @"account.password.label";
    }

    v7 = accessibilityLocalizedString(v6);

    accessibilityUserDefinedLabel2 = v7;
    goto LABEL_9;
  }

LABEL_10:

  return accessibilityUserDefinedLabel2;
}

- (id)accessibilityValue
{
  _accessibilityTextViewTextOperationResponder = [(PSEditableTableCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  accessibilityValue = [_accessibilityTextViewTextOperationResponder accessibilityValue];

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  _accessibilityTextViewTextOperationResponder = [(PSEditableTableCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  accessibilityTraits = [_accessibilityTextViewTextOperationResponder accessibilityTraits];

  return accessibilityTraits;
}

@end