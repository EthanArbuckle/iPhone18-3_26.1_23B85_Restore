@interface PDFPageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityInsertAnnotation:(id)a3;
- (BOOL)_accessibilityIsFrameOutOfBounds;
- (BOOL)_accessibilityRemoveAnnotation:(id)a3;
- (BOOL)_axIsUsingPDFExtensionView;
- (CGPDFPage)_axPageRef;
- (CGPDFSelection)_lineSelectionForSelection:(CGPDFSelection *)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_axAllElements;
- (id)_axGetPDFView;
- (id)_axLineSelections;
- (id)accessibilityElements;
- (void)removeControlForAnnotation:(id)a3;
- (void)resetAccessibilityTree;
@end

@implementation PDFPageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PDFView" hasInstanceMethod:@"convertPoint:toPage:" withFullSignature:{"{CGPoint=dd}", "@", 0}];
  [v3 validateClass:@"PDFView" hasInstanceMethod:@"convertRect:fromPage:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  [v3 validateClass:@"PDFView" hasInstanceMethod:@"convertRect:toPage:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  [v3 validateClass:@"PDFPageView" hasInstanceMethod:@"page" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PDFPage" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PDFPage" hasInstanceMethod:@"fetchAnnotationFromTaggedNodeRef:" withFullSignature:{"@", "^{CGPDFTaggedNode=}", 0}];
  [v3 validateClass:@"PDFAnnotation" hasInstanceMethod:@"control" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PDFPageView" hasInstanceMethod:@"removeControlForAnnotation:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PDFPageView" hasInstanceMethod:@"resetAccessibilityTree" withFullSignature:{"v", 0}];
}

- (CGPDFPage)_axPageRef
{
  v2 = [(PDFPageViewAccessibility *)self _axGetPage];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 pageRef];
  return v4;
}

- (id)_axGetPDFView
{
  v2 = [(PDFPageViewAccessibility *)self _axGetPage];
  v3 = [v2 safeValueForKey:@"view"];

  return v3;
}

- (BOOL)_axIsUsingPDFExtensionView
{
  v2 = [(PDFPageViewAccessibility *)self _axGetPDFView];
  v3 = [v2 safeValueForKey:@"renderingProperties"];
  v4 = [v3 safeBoolForKey:@"isUsingPDFExtensionView"];

  return v4;
}

- (BOOL)_accessibilityIsFrameOutOfBounds
{
  if ([(PDFPageViewAccessibility *)self _axIsUsingPDFExtensionView])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = PDFPageViewAccessibility;
  return [(PDFPageViewAccessibility *)&v4 _accessibilityIsFrameOutOfBounds];
}

- (BOOL)_accessibilityInsertAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(PDFPageViewAccessibility *)self accessibilityElements];
  if ([v5 count] == 1)
  {
    v6 = [v5 objectAtIndex:0];
    v7 = [v6 _accessibilityInsertAnnotation:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_accessibilityRemoveAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(PDFPageViewAccessibility *)self accessibilityElements];
  if ([v5 count] == 1)
  {
    v6 = [v5 objectAtIndex:0];
    v7 = [v6 _accessibilityRemoveAnnotation:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v22 = *MEMORY[0x29EDCA608];
  v7 = a4;
  if ([(PDFPageViewAccessibility *)self _axIsUsingPDFExtensionView])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(PDFPageViewAccessibility *)self _axAllElements];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          [v13 accessibilityFrame];
          v24.x = x;
          v24.y = y;
          if (CGRectContainsPoint(v25, v24))
          {
            v14 = v13;

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = PDFPageViewAccessibility;
    v14 = [(PDFPageViewAccessibility *)&v20 _accessibilityHitTest:v7 withEvent:x, y];
  }

LABEL_13:

  return v14;
}

- (id)_axAllElements
{
  v3 = [(PDFPageViewAccessibility *)self _axAllNodeElements];
  if (!v3)
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v4 = [MEMORY[0x29EDB8DE8] array];
    v5 = [(PDFPageViewAccessibility *)self accessibilityElements];
    [v4 addObjectsFromArray:v5];
    while (1)
    {

      if (![v4 count])
      {
        break;
      }

      v5 = [v4 firstObject];
      [v4 removeObjectAtIndex:0];
      if ([v5 isAccessibilityElement])
      {
        [v3 addObject:v5];
      }

      else
      {
        v6 = [v5 accessibilityElements];
        v7 = [v6 count];

        if (v7)
        {
          v8 = [v5 accessibilityElements];
          [v4 addObjectsFromArray:v8];
        }
      }
    }

    [(PDFPageViewAccessibility *)self _axSetAllNodeElements:v3];
  }

  return v3;
}

- (id)accessibilityElements
{
  v3 = [(PDFPageViewAccessibility *)self _axPageViewElements];
  if (!v3)
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    [(PDFPageViewAccessibility *)self _axPageRef];
    v4 = CGPDFPageCopyRootTaggedNode();
    v5 = [UICGPDFNodeAccessibilityElement alloc];
    v6 = [(PDFPageViewAccessibility *)self _axGetPage];
    v7 = [(UICGPDFNodeAccessibilityElement *)v5 initWithAccessibilityContainer:self pdfNodeRef:v4 withPage:v6];

    [v3 axSafelyAddObject:v7];
    [(PDFPageViewAccessibility *)self _axSetPageViewElements:v3];
    CGPDFTaggedNodeRelease();
  }

  return v3;
}

- (void)resetAccessibilityTree
{
  [(PDFPageViewAccessibility *)self _axSetPageViewElements:0];
  v2 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v2, 0);
}

- (id)_axLineSelections
{
  v3 = [(PDFPageViewAccessibility *)self _accessibilityValueForKey:@"lineSelections"];
  if (!v3)
  {
    [(PDFPageViewAccessibility *)self _axPageRef];
    v4 = CGPDFSelectionCreateForEntirePage();
    SelectionsByLine = CGPDFSelectionCreateSelectionsByLine();
    [(PDFPageViewAccessibility *)self _accessibilitySetRetainedValue:SelectionsByLine forKey:@"lineSelections"];

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v3;
}

- (CGPDFSelection)_lineSelectionForSelection:(CGPDFSelection *)a3
{
  v21 = *MEMORY[0x29EDCA608];
  TextRange = CGPDFSelectionGetTextRange();
  v6 = v5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(PDFPageViewAccessibility *)self _axLineSelections];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      if (CGPDFSelectionGetTextRange() == TextRange && v13 == v6)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  return v12;
}

- (void)removeControlForAnnotation:(id)a3
{
  v4.receiver = self;
  v4.super_class = PDFPageViewAccessibility;
  [(PDFPageViewAccessibility *)&v4 removeControlForAnnotation:a3];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 postNotificationName:AXPDFRemoveFromSuperviewNotification object:0 userInfo:0];
}

@end