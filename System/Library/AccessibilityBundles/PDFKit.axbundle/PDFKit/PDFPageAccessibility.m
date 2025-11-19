@interface PDFPageAccessibility
- (BOOL)_accessibilityIsFrameOutOfBounds;
- (CGPDFPage)_axPageRef;
- (id)_axAllElements;
- (id)accessibilityElementsWithPlugin:(id)a3;
- (id)accessibilityHitTest:(CGPoint)a3 withPlugin:(id)a4;
@end

@implementation PDFPageAccessibility

- (CGPDFPage)_axPageRef
{
  v2 = __UIAccessibilitySafeClass();
  v3 = [v2 pageRef];

  return v3;
}

- (BOOL)_accessibilityIsFrameOutOfBounds
{
  v3.receiver = self;
  v3.super_class = PDFPageAccessibility;
  return [(PDFPageAccessibility *)&v3 _accessibilityIsFrameOutOfBounds];
}

- (id)accessibilityHitTest:(CGPoint)a3 withPlugin:(id)a4
{
  y = a3.y;
  x = a3.x;
  v20 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = [(PDFPageAccessibility *)self plugin];

  if (!v8)
  {
    [(PDFPageAccessibility *)self _axSetPlugin:v7];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(PDFPageAccessibility *)self _axAllElements];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        [v13 accessibilityFrame];
        v22.x = x;
        v22.y = y;
        if (CGRectContainsPoint(v23, v22))
        {
          v10 = v13;
          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v10;
}

- (id)_axAllElements
{
  v3 = [(PDFPageAccessibility *)self _axAllNodeElements];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x29EDB8DE8] array];

    v6 = [MEMORY[0x29EDB8DE8] array];
    v7 = [(PDFPageAccessibility *)self accessibilityElements];
    [v6 addObjectsFromArray:v7];
    while (1)
    {

      if (![v6 count])
      {
        break;
      }

      v7 = [v6 firstObject];
      [v6 removeObjectAtIndex:0];
      if ([v7 isAccessibilityElement])
      {
        [v5 addObject:v7];
      }

      else
      {
        v8 = [v7 accessibilityElements];
        v9 = [v8 count];

        if (v9)
        {
          v10 = [v7 accessibilityElements];
          [v6 addObjectsFromArray:v10];
        }
      }
    }

    [(PDFPageAccessibility *)self _axSetAllNodeElements:v5];
  }

  return v5;
}

- (id)accessibilityElementsWithPlugin:(id)a3
{
  v4 = a3;
  v5 = [(PDFPageAccessibility *)self plugin];

  if (!v5)
  {
    [(PDFPageAccessibility *)self _axSetPlugin:v4];
  }

  v6 = [(PDFPageAccessibility *)self _axPageElements];
  if (!v6)
  {
    v6 = [MEMORY[0x29EDB8DE8] array];
    [(PDFPageAccessibility *)self _axPageRef];
    v7 = CGPDFPageCopyRootTaggedNode();
    v8 = [UICGPDFNodeAccessibilityElement alloc];
    objc_opt_class();
    v9 = __UIAccessibilityCastAsClass();
    v10 = [(UICGPDFNodeAccessibilityElement *)v8 initWithAccessibilityContainer:self pdfNodeRef:v7 withPage:v9];

    [v6 axSafelyAddObject:v10];
    [(PDFPageAccessibility *)self _axSetPageElements:v6];
    CGPDFTaggedNodeRelease();
  }

  return v6;
}

@end