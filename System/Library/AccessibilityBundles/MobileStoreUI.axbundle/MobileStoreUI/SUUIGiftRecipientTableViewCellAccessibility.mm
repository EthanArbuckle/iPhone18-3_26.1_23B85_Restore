@interface SUUIGiftRecipientTableViewCellAccessibility
- (BOOL)_accessibilityIsRecipientViewFocused;
- (id)accessibilityElements;
- (id)accessibilityValue;
@end

@implementation SUUIGiftRecipientTableViewCellAccessibility

- (id)accessibilityValue
{
  v2 = [(SUUIGiftRecipientTableViewCellAccessibility *)self safeValueForKey:@"recipientAddresses"];
  v3 = MEMORY[0x29C2E1480]();

  return v3;
}

- (id)accessibilityElements
{
  v2 = [(SUUIGiftRecipientTableViewCellAccessibility *)self safeValueForKey:@"_recipientView"];
  v3 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v2}];

  return v3;
}

- (BOOL)_accessibilityIsRecipientViewFocused
{
  v2 = [(SUUIGiftRecipientTableViewCellAccessibility *)self safeValueForKey:@"_recipientView"];
  v3 = [v2 safeValueForKey:@"focused"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end