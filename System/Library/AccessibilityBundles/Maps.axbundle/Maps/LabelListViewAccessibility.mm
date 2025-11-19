@interface LabelListViewAccessibility
- (id)accessibilityLabel;
@end

@implementation LabelListViewAccessibility

- (id)accessibilityLabel
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDBA050] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(LabelListViewAccessibility *)self safeValueForKey:@"_labels"];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) accessibilityLabel];
        if ([v9 length])
        {
          [v3 appendFormat:@"%@, ", v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x29EDCA608];

  return v3;
}

@end