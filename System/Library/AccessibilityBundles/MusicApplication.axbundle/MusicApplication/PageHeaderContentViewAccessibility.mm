@interface PageHeaderContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (unint64_t)accessibilityTraits;
@end

@implementation PageHeaderContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.PageHeaderContentView" hasInstanceMethod:@"accessoryView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.PageHeaderContentView" hasInstanceMethod:@"supertitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.PageHeaderContentView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.PageHeaderContentView" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.JSListenNowTabViewController"];
  [validationsCopy validateClass:@"MusicApplication.PageHeaderPlayButton"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PageHeaderContentViewAccessibility;
  return *MEMORY[0x29EDC7F80] | [(PageHeaderContentViewAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(PageHeaderContentViewAccessibility *)self safeUIViewForKey:@"accessoryView"];
  [v4 setIsAccessibilityElement:1];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  MEMORY[0x29C2E2DD0](@"MusicApplication.PageHeaderPlayButton");
  if (objc_opt_isKindOfClass())
  {
    [v4 _setAccessibilityLabelBlock:&__block_literal_global_12];
    if (!v4)
    {
      goto LABEL_8;
    }

LABEL_7:
    [array addObject:v4];
    goto LABEL_8;
  }

  [v4 _setAccessibilityLabelBlock:&__block_literal_global_315];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __76__PageHeaderContentViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke_3;
  v7[3] = &__block_descriptor_40_e36__CGRect__CGPoint_dd__CGSize_dd__8__0lu32l8;
  v7[4] = v4;
  [v4 _setAccessibilityFrameBlock:v7];
  v5 = [v4 _accessibilityFindAncestor:&__block_literal_global_323_0 startWithSelf:1];
  if (v5)
  {
    [MEMORY[0x29EDC9738] accessibilityAttributesForAccountButtonInAccessoryView:v4];
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_8:

  return array;
}

double __76__PageHeaderContentViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  x = *MEMORY[0x29EDB90E0];
  y = *(MEMORY[0x29EDB90E0] + 8);
  width = *(MEMORY[0x29EDB90E0] + 16);
  height = *(MEMORY[0x29EDB90E0] + 24);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [*(a1 + 32) subviews];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v16 + 1) + 8 * v9) accessibilityFrame];
        v24.origin.x = v10;
        v24.origin.y = v11;
        v24.size.width = v12;
        v24.size.height = v13;
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        v23 = CGRectUnion(v22, v24);
        x = v23.origin.x;
        y = v23.origin.y;
        width = v23.size.width;
        height = v23.size.height;
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x29EDCA608];
  return x;
}

uint64_t __76__PageHeaderContentViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2E2DD0](@"MusicApplication.JSListenNowTabViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end