@interface _TVListViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityFrameDelegate;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation _TVListViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = MEMORY[0x29EDBD618];
  v4 = *MEMORY[0x29EDBD618];
  v5 = a3;
  [v5 client:v4 validateClass:@"_TVListViewController"];
  [v5 client:*v3 validateClass:@"_TVListViewController" hasInstanceVariable:@"_collectionElement" withType:"IKCollectionElement"];
  [v5 validateClass:@"_TVListViewCell" hasInstanceMethod:@"setSelected:animated:" withFullSignature:{"v", "B", "B", 0}];
  [v5 validateClass:@"_TVListViewCell" hasInstanceMethod:@"floatingView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = [(_TVListViewCellAccessibility *)self _accessibleSubviews];
  v3 = [MEMORY[0x29EDB8DE8] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v14}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v3 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];
  v11 = MEMORY[0x29ED3B640](v3);

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = [(_TVListViewCellAccessibility *)self _accessibleSubviews];
  v3 = [MEMORY[0x29EDB8DE8] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
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

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 isAccessibilityElement])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x29EDCA608];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(_TVListViewCellAccessibility *)self _accessibleSubviews];
  v4 = [v3 count];

  if (!v4)
  {
    return *MEMORY[0x29EDC7578];
  }

  v5 = *MEMORY[0x29EDC7FA0];
  v6 = [(_TVListViewCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_6];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = *MEMORY[0x29EDC7F70];
  }

  v9.receiver = self;
  v9.super_class = _TVListViewCellAccessibility;
  return v7 | v5 | [(_TVListViewCellAccessibility *)&v9 accessibilityTraits];
}

- (id)_accessibilityFrameDelegate
{
  v3 = [(_TVListViewCellAccessibility *)self safeValueForKey:@"floatingView"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _TVListViewCellAccessibility;
    v5 = [(_TVListViewCellAccessibility *)&v8 _accessibilityFrameDelegate];
  }

  v6 = v5;

  return v6;
}

@end