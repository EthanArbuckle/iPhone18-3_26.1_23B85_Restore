@interface SafariUIDimmingViewAccessibility
- (id)passthroughViews;
@end

@implementation SafariUIDimmingViewAccessibility

- (id)passthroughViews
{
  v19 = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = SafariUIDimmingViewAccessibility;
  v3 = [(SafariUIDimmingViewAccessibility *)&v17 passthroughViews];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = [MEMORY[0x29EDB8DE8] array];
    NSClassFromString(&cfstr_Browsertoolbar.isa);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v4 addObject:{v10, v13}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }

    [(SafariUIDimmingViewAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:@"axPassthroughViews"];
  }

  else
  {
    v4 = v3;
  }

  v11 = *MEMORY[0x29EDCA608];

  return v4;
}

@end