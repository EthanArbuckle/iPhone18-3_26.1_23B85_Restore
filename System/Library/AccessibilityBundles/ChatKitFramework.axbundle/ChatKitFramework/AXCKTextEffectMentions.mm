@interface AXCKTextEffectMentions
@end

@implementation AXCKTextEffectMentions

uint64_t ___AXCKTextEffectMentions_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v15 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v15 integerValue];
      v9 = [[AXCKMentionSubelement alloc] initWithTextView:*(a1 + 32)];
      [(AXCKMentionSubelement *)v9 setRange:a3, a4];
      [(AXCKMentionSubelement *)v9 setType:2];
      if ((v8 - 1) > 0xB)
      {
        v10 = &stru_2A21515E8;
      }

      else
      {
        v10 = off_29F2B07B8[v8 - 1];
      }

      v11 = accessibilityLocalizedString(v10);
      [(AXCKMentionSubelement *)v9 setAccessibilityValue:v11];

      v12 = [*(a1 + 40) string];
      v13 = [v12 substringWithRange:{a3, a4}];
      [(AXCKMentionSubelement *)v9 setAccessibilityLabel:v13];

      [*(a1 + 48) axSafelyAddObject:v9];
    }
  }

  return MEMORY[0x2A1C71028]();
}

@end