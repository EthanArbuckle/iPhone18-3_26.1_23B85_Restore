@interface AXTextStyleMention
@end

@implementation AXTextStyleMention

uint64_t ___AXTextStyleMention_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v15 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 unsignedIntegerValue] == 1)
    {
      v8 = [[AXCKMentionSubelement alloc] initWithTextView:*(a1 + 32)];
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      [*(*(*(a1 + 56) + 8) + 40) setRange:{a3, a4}];
      [*(*(*(a1 + 56) + 8) + 40) setType:2];
      v11 = accessibilityLocalizedString(*(a1 + 40));
      [*(*(*(a1 + 56) + 8) + 40) setAccessibilityValue:v11];

      v12 = [*(a1 + 48) string];
      v13 = [v12 substringWithRange:{a3, a4}];
      [*(*(*(a1 + 56) + 8) + 40) setAccessibilityLabel:v13];
    }
  }

  return MEMORY[0x2A1C71028]();
}

@end