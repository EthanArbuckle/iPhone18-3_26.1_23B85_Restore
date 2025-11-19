@interface SectionFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityRespondsToUserInteraction;
- (id)_accessibilityInternalTextLinks;
- (id)accessibilityLabel;
@end

@implementation SectionFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GameCenterUI.SectionFooterView" hasInstanceMethod:@"accessibilityLabelHasAction" withFullSignature:{"B", 0}];
  [v3 validateClass:@"GameCenterUI.SectionFooterView" hasInstanceMethod:@"accessibilityAttachmentHasAction" withFullSignature:{"B", 0}];
  [v3 validateClass:@"GameCenterUI.SectionFooterView" hasInstanceMethod:@"accessibilityFooterLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.DynamicTypeLabel" hasInstanceMethod:@"attributedText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SectionFooterViewAccessibility *)self _axFooterLabel];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)_accessibilityInternalTextLinks
{
  v16.receiver = self;
  v16.super_class = SectionFooterViewAccessibility;
  v3 = [(SectionFooterViewAccessibility *)&v16 _accessibilityInternalTextLinks];
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v5 = [(SectionFooterViewAccessibility *)self _axFooterLabel];
    v6 = [v5 safeValueForKey:@"attributedText"];

    if ([v6 length])
    {
      v7 = [v6 length];
      v8 = [(SectionFooterViewAccessibility *)self _accessibilityValueForKey:@"AXLinks"];
      v9 = v8;
      if (v8 && [v8 count])
      {
        v4 = v9;
      }

      else
      {
        v10 = [MEMORY[0x29EDB8DE8] array];

        [(SectionFooterViewAccessibility *)self _accessibilitySetRetainedValue:v10 forKey:@"AXLinks"];
        v13[0] = MEMORY[0x29EDCA5F8];
        v13[1] = 3221225472;
        v13[2] = __65__SectionFooterViewAccessibility__accessibilityInternalTextLinks__block_invoke;
        v13[3] = &unk_29F2C0868;
        v13[4] = self;
        v14 = v6;
        v11 = v10;
        v15 = v11;
        [v14 enumerateAttributesInRange:0 options:v7 usingBlock:{0x100000, v13}];
        v4 = v11;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __65__SectionFooterViewAccessibility__accessibilityInternalTextLinks__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ([a2 count])
  {
    v9 = [objc_alloc(MEMORY[0x29EDC7350]) initWithAccessibilityContainer:*(a1 + 32)];
    [v9 setRange:{a3, a4}];
    v7 = [*(a1 + 40) string];
    v8 = [v7 substringWithRange:{a3, a4}];
    [v9 setAccessibilityLabel:v8];

    [*(a1 + 48) axSafelyAddObject:v9];
  }
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  if (([(SectionFooterViewAccessibility *)self safeBoolForKey:@"accessibilityAttachmentHasAction"]& 1) != 0)
  {
    return 1;
  }

  return [(SectionFooterViewAccessibility *)self safeBoolForKey:@"accessibilityLabelHasAction"];
}

@end