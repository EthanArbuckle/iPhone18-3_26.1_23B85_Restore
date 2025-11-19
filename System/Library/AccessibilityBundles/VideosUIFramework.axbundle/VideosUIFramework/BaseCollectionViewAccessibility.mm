@interface BaseCollectionViewAccessibility
- (id)accessibilityHeaderElements;
@end

@implementation BaseCollectionViewAccessibility

- (id)accessibilityHeaderElements
{
  v25 = *MEMORY[0x29EDCA608];
  v23.receiver = self;
  v23.super_class = BaseCollectionViewAccessibility;
  v3 = [(BaseCollectionViewAccessibility *)&v23 accessibilityHeaderElements];
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v5 = MEMORY[0x29ED3FF70](@"VideosUI.CollectionRichHeaderView");
    v6 = [(BaseCollectionViewAccessibility *)self safeUIViewForKey:@"superview"];
    v7 = [v6 safeArrayForKey:@"subviews"];
    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 3221225472;
    v22[2] = __62__BaseCollectionViewAccessibility_accessibilityHeaderElements__block_invoke;
    v22[3] = &__block_descriptor_40_e23_B32__0__UIView_8Q16_B24lu32l8;
    v22[4] = v5;
    v8 = [v7 ax_filteredArrayUsingBlock:v22];

    v9 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
    v4 = [MEMORY[0x29EDB8DE8] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v18 + 1) + 8 * i) _accessibilityLeafDescendantsWithOptions:{v9, v18}];
          [v4 addObjectsFromArray:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x29EDCA608];

  return v4;
}

@end