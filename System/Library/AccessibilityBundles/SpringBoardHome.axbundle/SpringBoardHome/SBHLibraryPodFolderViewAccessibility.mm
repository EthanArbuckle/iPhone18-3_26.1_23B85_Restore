@interface SBHLibraryPodFolderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)automationElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation SBHLibraryPodFolderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"firstIconListView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHLibraryPodFolderView" isKindOfClass:@"SBFolderView"];
  [v3 validateClass:@"SBIconListView" hasInstanceVariable:@"_iconViews" withType:"NSMapTable"];
  [v3 validateClass:@"SBHLibraryPodFolderView" hasInstanceVariable:@"_podScrollView" withType:"BSUIScrollView"];
  [v3 validateClass:@"SBIconView" hasInstanceMethod:@"icon" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBIcon" hasInstanceMethod:@"_axIconView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBHLibraryPodFolderViewAccessibility;
  [(SBHLibraryPodFolderViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBHLibraryPodFolderViewAccessibility *)self safeUIViewForKey:@"_podScrollView"];
  [v3 setAccessibilityContainerType:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBHLibraryPodFolderViewAccessibility;
  [(SBHLibraryPodFolderViewAccessibility *)&v3 layoutSubviews];
  [(SBHLibraryPodFolderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)automationElements
{
  v40 = *MEMORY[0x29EDCA608];
  [(SBHLibraryPodFolderViewAccessibility *)self _accessibilityVisibleFrame];
  if (v3 == 0.0)
  {
    v4 = MEMORY[0x29EDB8E90];
  }

  else
  {
    v5 = [(SBHLibraryPodFolderViewAccessibility *)self safeValueForKey:@"firstIconListView"];
    v6 = [v5 safeArrayForKey:@"icons"];

    v37 = 0;
    v7 = [(SBHLibraryPodFolderViewAccessibility *)self safeValueForKey:@"firstIconListView"];
    v8 = [v7 safeValueForKey:@"_iconViews"];
    v28 = __UIAccessibilitySafeClass();

    v4 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      v25 = v9;
      v26 = v4;
      v24 = *v34;
      do
      {
        v13 = 0;
        v27 = v11;
        do
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * v13);
          v15 = [v14 safeValueForKey:@"_axIconView"];
          if (!v15)
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v16 = [v28 objectEnumerator];
            v15 = [v16 countByEnumeratingWithState:&v29 objects:v38 count:16];
            if (v15)
            {
              v17 = *v30;
              while (2)
              {
                for (i = 0; i != v15; i = i + 1)
                {
                  if (*v30 != v17)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v19 = *(*(&v29 + 1) + 8 * i);
                  v20 = [v19 safeValueForKey:@"icon"];
                  v21 = [v20 isEqual:v14];

                  if (v21)
                  {
                    v15 = v19;
                    goto LABEL_19;
                  }
                }

                v15 = [v16 countByEnumeratingWithState:&v29 objects:v38 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }

LABEL_19:
              v9 = v25;
              v4 = v26;
              v12 = v24;
              v11 = v27;
            }
          }

          if (v15)
          {
            v22 = v15;
          }

          else
          {
            v22 = v14;
          }

          [v4 addObject:v22];

          ++v13;
        }

        while (v13 != v11);
        v11 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v11);
    }
  }

  return v4;
}

@end