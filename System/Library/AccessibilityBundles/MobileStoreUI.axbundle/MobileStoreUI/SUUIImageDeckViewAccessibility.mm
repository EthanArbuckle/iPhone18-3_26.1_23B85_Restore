@interface SUUIImageDeckViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SUUIImageDeckViewAccessibility

- (id)accessibilityLabel
{
  v22 = *MEMORY[0x29EDCA608];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [(SUUIImageDeckViewAccessibility *)self safeValueForKey:@"_imageViews"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = &stru_2A2230BA8;
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        accessibilityLabel = [*(*(&v17 + 1) + 8 * v8) accessibilityLabel];
        v16 = @"__AXStringForVariablesSentinel";
        v7 = __UIAXStringForVariables();

        ++v8;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:{16, accessibilityLabel, @"__AXStringForVariablesSentinel"}];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_2A2230BA8;
  }

  if ([(__CFString *)v7 length])
  {
    v10 = MEMORY[0x29EDBA0F8];
    v11 = accessibilityLocalizedString(@"collection.deck.album.labels");
    v12 = [v10 stringWithFormat:v11, v7];
  }

  else
  {
    v12 = accessibilityLocalizedString(@"collection.deck.no.album.labels");
  }

  v13 = *MEMORY[0x29EDCA608];

  return v12;
}

@end