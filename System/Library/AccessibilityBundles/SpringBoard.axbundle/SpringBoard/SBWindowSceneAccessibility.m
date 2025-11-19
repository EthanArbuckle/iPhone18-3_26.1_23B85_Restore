@interface SBWindowSceneAccessibility
- (id)_accessibilityTraversalWindows;
@end

@implementation SBWindowSceneAccessibility

- (id)_accessibilityTraversalWindows
{
  v23 = *MEMORY[0x29EDCA608];
  v21 = 0;
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 _visibleWindows];
  v16 = [v3 mutableCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [*MEMORY[0x29EDC8008] _accessibilityAllWindowsOnlyVisibleWindows:1];
  v5 = [v4 reverseObjectEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 windowScene];
        v12 = [v11 _focusSystemSceneComponent];

        if ([v12 conformsToProtocol:&unk_2A2315500])
        {
          v13 = [v12 parentFocusEnvironment];
          v14 = [v2 _focusSystemSceneComponent];

          if (v13 == v14)
          {
            [v16 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v7);
  }

  return v16;
}

@end