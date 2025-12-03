@interface SKNodeAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityElementsHidden;
- (CGRect)accessibilityFrame;
- (id)_accessibilitySpriteKitChildrenNodes;
- (id)accessibilityContainer;
- (id)accessibilityElementAtIndex:(int64_t)index;
- (id)accessibilityLabel;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)element;
@end

@implementation SKNodeAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKNode" hasInstanceMethod:@"children" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKNode" hasInstanceMethod:@"frame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"SKNode" hasInstanceMethod:@"scene" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKNode" hasInstanceMethod:@"parent" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKNode" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKNode" hasInstanceMethod:@"alpha" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SKNode" hasInstanceMethod:@"isHidden" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(SKNodeAccessibility *)self accessibilityUserDefinedLabel];
  if (![accessibilityUserDefinedLabel length])
  {
    v4 = [(SKNodeAccessibility *)self safeValueForKey:@"name"];

    accessibilityUserDefinedLabel = v4;
  }

  return accessibilityUserDefinedLabel;
}

- (id)_accessibilitySpriteKitChildrenNodes
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  AXPerformSafeBlock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __59__SKNodeAccessibility__accessibilitySpriteKitChildrenNodes__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) safeValueForKey:@"children"];
  v2 = [v6 reverseObjectEnumerator];
  v3 = [v2 allObjects];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (CGRect)accessibilityFrame
{
  v51 = *MEMORY[0x29EDCA608];
  v48.receiver = self;
  v48.super_class = SKNodeAccessibility;
  [(SKNodeAccessibility *)&v48 accessibilityFrame];
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  if (!CGRectIsEmpty(v52))
  {
    goto LABEL_35;
  }

  v47 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  scene = [v6 scene];
  parent = [v6 parent];
  view = [scene view];
  v18 = view;
  v19 = !scene || v6 == 0;
  v20 = v19 || parent == 0;
  v21 = v20 || view == 0;
  v22 = !v21;
  if (v21)
  {
    v10 = *MEMORY[0x29EDB90E0];
    v8 = *(MEMORY[0x29EDB90E0] + 8);
    v12 = *(MEMORY[0x29EDB90E0] + 16);
    v14 = *(MEMORY[0x29EDB90E0] + 24);
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v23 = [MEMORY[0x29EDBA168] valueWithCGPoint:{v8, v10 + v14, 0}];
    v49[0] = v23;
    v24 = [MEMORY[0x29EDBA168] valueWithCGPoint:{v8 + v12, v10 + v14}];
    v49[1] = v24;
    v25 = [MEMORY[0x29EDBA168] valueWithCGPoint:{v8, v10}];
    v49[2] = v25;
    v26 = [MEMORY[0x29EDBA168] valueWithCGPoint:{v8 + v12, v10}];
    v49[3] = v26;
    v27 = [MEMORY[0x29EDB8D80] arrayWithObjects:v49 count:4];

    v28 = [v27 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v44;
      v31 = -INFINITY;
      v32 = INFINITY;
      v33 = INFINITY;
      v34 = -INFINITY;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v44 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [*(*(&v43 + 1) + 8 * i) CGPointValue];
          [scene convertPoint:parent fromNode:?];
          [scene convertPointToView:?];
          if (v36 >= v34)
          {
            v34 = v36;
          }

          if (v37 >= v31)
          {
            v31 = v37;
          }

          if (v36 < v33)
          {
            v33 = v36;
          }

          if (v37 < v32)
          {
            v32 = v37;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v29);
    }

    else
    {
      v31 = -INFINITY;
      v32 = INFINITY;
      v33 = INFINITY;
      v34 = -INFINITY;
    }

    v53.size.width = v34 - v33;
    v53.size.height = v31 - v32;
    v53.origin.x = v33;
    v53.origin.y = v32;
    v54 = UIAccessibilityConvertFrameToScreenCoordinates(v53, v18);
    x = v54.origin.x;
    y = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;
  }

  if (v22)
  {
LABEL_35:
    v10 = x;
    v8 = y;
    v12 = width;
    v14 = height;
  }

  v38 = *MEMORY[0x29EDCA608];
  v39 = v10;
  v40 = v8;
  v41 = v12;
  v42 = v14;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (BOOL)accessibilityElementsHidden
{
  [(SKNodeAccessibility *)self safeCGFloatForKey:@"alpha"];
  if (v3 == 0.0)
  {
    return 1;
  }

  return [(SKNodeAccessibility *)self safeBoolForKey:@"isHidden"];
}

- (id)accessibilityContainer
{
  v5.receiver = self;
  v5.super_class = SKNodeAccessibility;
  accessibilityContainer = [(SKNodeAccessibility *)&v5 accessibilityContainer];
  if (!accessibilityContainer)
  {
    accessibilityContainer = [(SKNodeAccessibility *)self safeValueForKey:@"parent"];
    if (!accessibilityContainer)
    {
      accessibilityContainer = [(SKNodeAccessibility *)self safeValueForKey:@"scene"];
    }
  }

  return accessibilityContainer;
}

- (int64_t)accessibilityElementCount
{
  v6.receiver = self;
  v6.super_class = SKNodeAccessibility;
  accessibilityElementCount = [(SKNodeAccessibility *)&v6 accessibilityElementCount];
  if (accessibilityElementCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    _accessibilitySpriteKitChildrenNodes = [(SKNodeAccessibility *)self _accessibilitySpriteKitChildrenNodes];
    accessibilityElementCount = [_accessibilitySpriteKitChildrenNodes accessibilityElementCount];
  }

  return accessibilityElementCount;
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  v8.receiver = self;
  v8.super_class = SKNodeAccessibility;
  v5 = [(SKNodeAccessibility *)&v8 accessibilityElementAtIndex:?];
  if (!v5)
  {
    _accessibilitySpriteKitChildrenNodes = [(SKNodeAccessibility *)self _accessibilitySpriteKitChildrenNodes];
    v5 = [_accessibilitySpriteKitChildrenNodes accessibilityElementAtIndex:index];
  }

  return v5;
}

- (int64_t)indexOfAccessibilityElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SKNodeAccessibility;
  v5 = [(SKNodeAccessibility *)&v8 indexOfAccessibilityElement:elementCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    _accessibilitySpriteKitChildrenNodes = [(SKNodeAccessibility *)self _accessibilitySpriteKitChildrenNodes];
    v5 = [_accessibilitySpriteKitChildrenNodes indexOfAccessibilityElement:elementCopy];
  }

  return v5;
}

@end