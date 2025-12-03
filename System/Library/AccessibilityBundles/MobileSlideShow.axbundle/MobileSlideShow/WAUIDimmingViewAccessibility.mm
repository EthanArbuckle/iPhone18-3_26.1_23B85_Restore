@interface WAUIDimmingViewAccessibility
- (id)passthroughViews;
@end

@implementation WAUIDimmingViewAccessibility

- (id)passthroughViews
{
  v20 = *MEMORY[0x29EDCA608];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v17.receiver = self;
    v17.super_class = WAUIDimmingViewAccessibility;
    passthroughViews = [(WAUIDimmingViewAccessibility *)&v17 passthroughViews];
    array = [MEMORY[0x29EDB8DE8] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = passthroughViews;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [array addObject:{v10, v13}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = WAUIDimmingViewAccessibility;
    array = [(WAUIDimmingViewAccessibility *)&v18 passthroughViews];
  }

  v11 = *MEMORY[0x29EDCA608];

  return array;
}

@end