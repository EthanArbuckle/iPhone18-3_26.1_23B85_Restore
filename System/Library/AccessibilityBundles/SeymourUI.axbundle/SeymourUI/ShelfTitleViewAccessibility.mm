@interface ShelfTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (void)prepareForReuse;
@end

@implementation ShelfTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.ShelfTitleView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SeymourUI.ShelfTitleView" hasInstanceMethod:@"prepareForReuse" withFullSignature:{"v", 0}];
}

- (id)accessibilityElements
{
  v60 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDC7620];
  v4 = [(ShelfTitleViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v4)
  {
    v5 = [(ShelfTitleViewAccessibility *)self safeArrayForKey:@"subviews"];
    v6 = [v5 ax_filteredArrayUsingBlock:&__block_literal_global_3];
    v7 = [v5 ax_filteredArrayUsingBlock:&__block_literal_global_299_0];
    v9 = *MEMORY[0x29EDB90D8];
    v8 = *(MEMORY[0x29EDB90D8] + 8);
    v11 = *(MEMORY[0x29EDB90D8] + 16);
    v10 = *(MEMORY[0x29EDB90D8] + 24);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v53 objects:v59 count:16];
    height = v10;
    width = v11;
    y = v8;
    x = v9;
    if (v13)
    {
      v18 = v13;
      v19 = *v54;
      height = v10;
      width = v11;
      y = v8;
      x = v9;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v53 + 1) + 8 * i) frame];
          v70.origin.x = v21;
          v70.origin.y = v22;
          v70.size.width = v23;
          v70.size.height = v24;
          v62.origin.x = x;
          v62.origin.y = y;
          v62.size.width = width;
          v62.size.height = height;
          v63 = CGRectUnion(v62, v70);
          x = v63.origin.x;
          y = v63.origin.y;
          width = v63.size.width;
          height = v63.size.height;
        }

        v18 = [v12 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v18);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v25 = v7;
    v26 = [v25 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v50;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v50 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v49 + 1) + 8 * j) frame];
          v71.origin.x = v30;
          v71.origin.y = v31;
          v71.size.width = v32;
          v71.size.height = v33;
          v64.origin.x = v9;
          v64.origin.y = v8;
          v64.size.width = v11;
          v64.size.height = v10;
          v65 = CGRectUnion(v64, v71);
          v9 = v65.origin.x;
          v8 = v65.origin.y;
          v11 = v65.size.width;
          v10 = v65.size.height;
        }

        v27 = [v25 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v27);
    }

    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    v72.origin.x = v9;
    v72.origin.y = v8;
    v72.size.width = v11;
    v72.size.height = v10;
    v67 = CGRectIntersection(v66, v72);
    v34 = v67.size.width;
    if (!CGRectIsNull(v67))
    {
      v35 = v34;
      memset(&remainder, 0, sizeof(remainder));
      memset(&v47, 0, sizeof(v47));
      v36 = v35;
      v68.origin.x = x;
      v68.origin.y = y;
      v68.size.width = width;
      v68.size.height = height;
      CGRectDivide(v68, &v47, &remainder, v36, CGRectMaxXEdge);
      x = remainder.origin.x;
      y = remainder.origin.y;
      width = remainder.size.width;
      height = remainder.size.height;
    }

    LOBYTE(remainder.origin.x) = 0;
    objc_opt_class();
    v37 = __UIAccessibilityCastAsClass();
    if (LOBYTE(remainder.origin.x) == 1)
    {
      abort();
    }

    v38 = v37;
    v39 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:v37];
    v40 = [v12 ax_flatMappedArrayUsingBlock:&__block_literal_global_305];

    v41 = AXLabelForElements();
    [v39 setAccessibilityLabel:v41];

    [v39 setIsAccessibilityElement:1];
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    if (CGRectIsNull(v69))
    {
      x = *MEMORY[0x29EDB90E0];
      y = *(MEMORY[0x29EDB90E0] + 8);
      width = *(MEMORY[0x29EDB90E0] + 16);
      height = *(MEMORY[0x29EDB90E0] + 24);
    }

    [v39 setAccessibilityFrameInContainerSpace:{x, y, width, height}];
    [v39 setAccessibilityTraits:*MEMORY[0x29EDC7FD0] | *MEMORY[0x29EDC7F80]];
    v42 = [(ShelfTitleViewAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_308];
    v43 = v42;
    v4 = 0;
    if (v39 && v42)
    {
      v57 = v39;
      v44 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v57 count:1];
      v4 = [v44 arrayByAddingObjectsFromArray:v43];

      [(ShelfTitleViewAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:*v3];
    }
  }

  v45 = *MEMORY[0x29EDCA608];

  return v4;
}

uint64_t __52__ShelfTitleViewAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __52__ShelfTitleViewAccessibility_accessibilityElements__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id __52__ShelfTitleViewAccessibility_accessibilityElements__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accessibilityAttributedLabel];

  if (v3)
  {
    v4 = [v2 accessibilityAttributedLabel];
    v5 = [v4 string];
    [v2 setAccessibilityLabel:v5];
  }

  v6 = [v2 accessibilityLabel];

  return v6;
}

BOOL __52__ShelfTitleViewAccessibility_accessibilityElements__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = 0;
  if (v2 && (isKindOfClass & 1) != 0)
  {
    v5 = [v2 accessibilityLabel];
    v4 = [v5 length] != 0;
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = ShelfTitleViewAccessibility;
  [(ShelfTitleViewAccessibility *)&v3 prepareForReuse];
  [(ShelfTitleViewAccessibility *)self _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
}

@end