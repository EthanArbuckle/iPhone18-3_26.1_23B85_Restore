@interface SBAppSwitcherPeopleScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySortedElementsWithin;
@end

@implementation SBAppSwitcherPeopleScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBAppSwitcherPeopleScrollView" hasInstanceMethod:@"expandedItemWrapper" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAppSwitcherPeopleContactContainer" hasInstanceMethod:@"contactView" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySortedElementsWithin
{
  v33 = *MEMORY[0x29EDCA608];
  v31.receiver = self;
  v31.super_class = SBAppSwitcherPeopleScrollViewAccessibility;
  _accessibilitySortedElementsWithin = [(SBAppSwitcherPeopleScrollViewAccessibility *)&v31 _accessibilitySortedElementsWithin];
  v4 = [(SBAppSwitcherPeopleScrollViewAccessibility *)self safeValueForKey:@"_expandedItemWrapper"];

  if (v4)
  {
    subviews = [(SBAppSwitcherPeopleScrollViewAccessibility *)self subviews];
    v25 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{objc_msgSend(_accessibilitySortedElementsWithin, "count") + objc_msgSend(subviews, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = subviews;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = @"_contactView";
      v10 = *v28;
      v11 = @"SBAppSwitcherPeopleContactContainer";
      v26 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = [v13 safeValueForKey:{v9, v25}];
          NSClassFromString(&v11->isa);
          if ((objc_opt_isKindOfClass() & 1) != 0 && [_accessibilitySortedElementsWithin indexOfObject:v14] == 0x7FFFFFFFFFFFFFFFLL)
          {
            subviews2 = [v13 subviews];
            if ([subviews2 count] == 1)
            {
              [subviews2 firstObject];
              v16 = v11;
              v17 = v9;
              v18 = v6;
              v20 = v19 = _accessibilitySortedElementsWithin;
              NSClassFromString(&cfstr_Sbappswitcherp_3.isa);
              isKindOfClass = objc_opt_isKindOfClass();

              _accessibilitySortedElementsWithin = v19;
              v6 = v18;
              v9 = v17;
              v11 = v16;
              v10 = v26;
              if (isKindOfClass)
              {
                firstObject = [subviews2 firstObject];
                [v25 addObject:firstObject];
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }

    [v25 addObjectsFromArray:_accessibilitySortedElementsWithin];
    v23 = [v25 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];
  }

  else
  {
    v23 = _accessibilitySortedElementsWithin;
  }

  return v23;
}

@end