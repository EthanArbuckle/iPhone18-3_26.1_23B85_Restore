@interface SUUITracklistLockupCollectionViewCellAccessibility
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation SUUITracklistLockupCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = [(SUUITracklistLockupCollectionViewCellAccessibility *)self safeValueForKey:@"contentView"];
  v3 = [v2 safeValueForKey:@"subviews"];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (!v5)
  {
    v8 = 0;
    goto LABEL_32;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v38 = *v44;
  v34 = v4;
  do
  {
    v9 = 0;
    v33 = v7;
    v35 = v6;
    do
    {
      if (*v44 != v38)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v43 + 1) + 8 * v9);
      NSClassFromString(&cfstr_Suuibarratingv_0.isa);
      if (objc_opt_isKindOfClass())
      {
        v11 = accessibilityLocalizedString(@"popularity");
        v31 = [v10 accessibilityValue];
        v32 = @"__AXStringForVariablesSentinel";
        v30 = v11;
        v12 = __UIAXStringForVariables();

        v8 = v31;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_28;
        }

        v11 = [v10 accessibilityLabel];
        if ([v11 rangeOfString:@":"] != 0x7FFFFFFFFFFFFFFFLL && v7 == 5)
        {
          v37 = v8;
          v14 = [v11 componentsSeparatedByString:@":"];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v36 = v14;
          v15 = [v14 reverseObjectEnumerator];
          v16 = [v15 allObjects];

          v17 = [v16 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = 0;
            v20 = *v40;
            v21 = 0.0;
            do
            {
              v22 = 0;
              v23 = v19;
              do
              {
                if (*v40 != v20)
                {
                  objc_enumerationMutation(v16);
                }

                v24 = [*(*(&v39 + 1) + 8 * v22) integerValue];
                v25 = 3600 * v24;
                v26 = 60 * v24;
                if (v23 != 1)
                {
                  v26 = v24;
                }

                if (v23 != 2)
                {
                  v25 = v26;
                }

                v21 = v21 + v25;
                ++v23;
                ++v22;
              }

              while (v18 != v22);
              v19 += v18;
              v18 = [v16 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v18);
          }

          v27 = AXDurationStringForDuration();

          v11 = v27;
          v4 = v34;
          v6 = v35;
          v8 = v37;
        }

        v30 = v11;
        v31 = @"__AXStringForVariablesSentinel";
        v12 = __UIAXStringForVariables();
      }

      v8 = v12;
LABEL_28:
      ++v7;
      ++v9;
    }

    while (v9 != v6);
    v7 = v33 + v6;
    v6 = [v4 countByEnumeratingWithState:&v43 objects:v48 count:16];
  }

  while (v6);
LABEL_32:

  v28 = *MEMORY[0x29EDCA608];

  return v8;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = [(SUUITracklistLockupCollectionViewCellAccessibility *)self safeValueForKey:@"contentView"];
  v3 = [v2 safeValueForKey:@"subviews"];

  v4 = [MEMORY[0x29EDB8DE8] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 isAccessibilityElement])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x29EDCA608];

  return v4;
}

@end