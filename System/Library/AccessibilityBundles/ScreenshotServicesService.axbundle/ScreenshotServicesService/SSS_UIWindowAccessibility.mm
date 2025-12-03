@interface SSS_UIWindowAccessibility
- (id)accessibilityRemoteSubstituteChildren:(id)children;
@end

@implementation SSS_UIWindowAccessibility

- (id)accessibilityRemoteSubstituteChildren:(id)children
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = [*MEMORY[0x29EDC8008] safeArrayForKey:@"_accessibilityWindows"];
  array = [MEMORY[0x29EDB8DE8] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  reverseObjectEnumerator = [v3 reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      [array addObject:v10];
      if ([v10 accessibilityViewIsModal])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];

  return array;
}

@end