@interface SKUIGiftRecipientTableViewCellAccessibility
- (BOOL)_accessibilityIsRecipientViewFocused;
- (id)accessibilityElements;
- (id)accessibilityValue;
@end

@implementation SKUIGiftRecipientTableViewCellAccessibility

- (id)accessibilityValue
{
  v2 = [(SKUIGiftRecipientTableViewCellAccessibility *)self safeValueForKey:@"recipientAddresses"];
  v3 = MEMORY[0x29ED3A170]();

  return v3;
}

- (id)accessibilityElements
{
  v2 = [(SKUIGiftRecipientTableViewCellAccessibility *)self safeValueForKey:@"_recipientView"];
  v3 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v2}];

  return v3;
}

- (BOOL)_accessibilityIsRecipientViewFocused
{
  v2 = [(SKUIGiftRecipientTableViewCellAccessibility *)self safeValueForKey:@"_recipientView"];
  v3 = [v2 safeValueForKey:@"focused"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end