@interface PSEditableTableCellAccessibility
- (_NSRange)_accessibilitySelectedTextRange;
- (id)_accessibilityChildren;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
@end

@implementation PSEditableTableCellAccessibility

- (id)_accessibilityChildren
{
  v9.receiver = self;
  v9.super_class = PSEditableTableCellAccessibility;
  v3 = [(PSEditableTableCellAccessibility *)&v9 _accessibilityChildren];
  v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_1];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 objectAtIndex:v4];
  }

  [v5 setIsAccessibilityElement:0];
  v6 = [(PSEditableTableCellAccessibility *)self safeValueForKey:@"textField"];
  v7 = [v5 accessibilityLabel];
  [v6 setAccessibilityLabel:v7];

  return v3;
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

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(PSEditableTableCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  [v5 _accessibilitySetSelectedTextRange:{location, length}];
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v2 = [(PSEditableTableCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v3 = [v2 _accessibilitySelectedTextRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)accessibilityLabel
{
  v3 = [(PSEditableTableCellAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    v4 = [(PSEditableTableCellAccessibility *)self accessibilityUserDefinedLabel];
    goto LABEL_10;
  }

  v4 = [(PSEditableTableCellAccessibility *)self safeValueForKey:@"title"];
  if (![v4 length])
  {
    v5 = [(PSEditableTableCellAccessibility *)self accessibilityIdentification];
    if ([v5 isEqualToString:@"AASpecifierUsername"])
    {
      v6 = @"account.username.label";
    }

    else
    {
      if (![v5 isEqualToString:@"AASpecifierPassword"])
      {
LABEL_9:

        goto LABEL_10;
      }

      v6 = @"account.password.label";
    }

    v7 = accessibilityLocalizedString(v6);

    v4 = v7;
    goto LABEL_9;
  }

LABEL_10:

  return v4;
}

- (id)accessibilityValue
{
  v2 = [(PSEditableTableCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(PSEditableTableCellAccessibility *)self _accessibilityTextViewTextOperationResponder];
  v3 = [v2 accessibilityTraits];

  return v3;
}

@end