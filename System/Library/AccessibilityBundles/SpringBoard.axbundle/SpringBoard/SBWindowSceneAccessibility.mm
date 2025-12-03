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
  _visibleWindows = [v2 _visibleWindows];
  v16 = [_visibleWindows mutableCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [*MEMORY[0x29EDC8008] _accessibilityAllWindowsOnlyVisibleWindows:1];
  reverseObjectEnumerator = [v4 reverseObjectEnumerator];

  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        windowScene = [v10 windowScene];
        _focusSystemSceneComponent = [windowScene _focusSystemSceneComponent];

        if ([_focusSystemSceneComponent conformsToProtocol:&unk_2A2315500])
        {
          parentFocusEnvironment = [_focusSystemSceneComponent parentFocusEnvironment];
          _focusSystemSceneComponent2 = [v2 _focusSystemSceneComponent];

          if (parentFocusEnvironment == _focusSystemSceneComponent2)
          {
            [v16 addObject:v10];
          }
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v7);
  }

  return v16;
}

@end