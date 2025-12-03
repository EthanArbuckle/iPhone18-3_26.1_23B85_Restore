@interface PDFPageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityInsertAnnotation:(id)annotation;
- (BOOL)_accessibilityIsFrameOutOfBounds;
- (BOOL)_accessibilityRemoveAnnotation:(id)annotation;
- (BOOL)_axIsUsingPDFExtensionView;
- (CGPDFPage)_axPageRef;
- (CGPDFSelection)_lineSelectionForSelection:(CGPDFSelection *)selection;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_axAllElements;
- (id)_axGetPDFView;
- (id)_axLineSelections;
- (id)accessibilityElements;
- (void)removeControlForAnnotation:(id)annotation;
- (void)resetAccessibilityTree;
@end

@implementation PDFPageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PDFView" hasInstanceMethod:@"convertPoint:toPage:" withFullSignature:{"{CGPoint=dd}", "@", 0}];
  [validationsCopy validateClass:@"PDFView" hasInstanceMethod:@"convertRect:fromPage:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  [validationsCopy validateClass:@"PDFView" hasInstanceMethod:@"convertRect:toPage:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  [validationsCopy validateClass:@"PDFPageView" hasInstanceMethod:@"page" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PDFPage" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PDFPage" hasInstanceMethod:@"fetchAnnotationFromTaggedNodeRef:" withFullSignature:{"@", "^{CGPDFTaggedNode=}", 0}];
  [validationsCopy validateClass:@"PDFAnnotation" hasInstanceMethod:@"control" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PDFPageView" hasInstanceMethod:@"removeControlForAnnotation:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PDFPageView" hasInstanceMethod:@"resetAccessibilityTree" withFullSignature:{"v", 0}];
}

- (CGPDFPage)_axPageRef
{
  _axGetPage = [(PDFPageViewAccessibility *)self _axGetPage];
  v3 = __UIAccessibilitySafeClass();

  pageRef = [v3 pageRef];
  return pageRef;
}

- (id)_axGetPDFView
{
  _axGetPage = [(PDFPageViewAccessibility *)self _axGetPage];
  v3 = [_axGetPage safeValueForKey:@"view"];

  return v3;
}

- (BOOL)_axIsUsingPDFExtensionView
{
  _axGetPDFView = [(PDFPageViewAccessibility *)self _axGetPDFView];
  v3 = [_axGetPDFView safeValueForKey:@"renderingProperties"];
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

- (BOOL)_accessibilityInsertAnnotation:(id)annotation
{
  annotationCopy = annotation;
  accessibilityElements = [(PDFPageViewAccessibility *)self accessibilityElements];
  if ([accessibilityElements count] == 1)
  {
    v6 = [accessibilityElements objectAtIndex:0];
    v7 = [v6 _accessibilityInsertAnnotation:annotationCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_accessibilityRemoveAnnotation:(id)annotation
{
  annotationCopy = annotation;
  accessibilityElements = [(PDFPageViewAccessibility *)self accessibilityElements];
  if ([accessibilityElements count] == 1)
  {
    v6 = [accessibilityElements objectAtIndex:0];
    v7 = [v6 _accessibilityRemoveAnnotation:annotationCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v22 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  if ([(PDFPageViewAccessibility *)self _axIsUsingPDFExtensionView])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    _axAllElements = [(PDFPageViewAccessibility *)self _axAllElements];
    v9 = [_axAllElements countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(_axAllElements);
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

        v10 = [_axAllElements countByEnumeratingWithState:&v16 objects:v21 count:16];
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
    v14 = [(PDFPageViewAccessibility *)&v20 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

LABEL_13:

  return v14;
}

- (id)_axAllElements
{
  _axAllNodeElements = [(PDFPageViewAccessibility *)self _axAllNodeElements];
  if (!_axAllNodeElements)
  {
    _axAllNodeElements = [MEMORY[0x29EDB8DE8] array];
    array = [MEMORY[0x29EDB8DE8] array];
    accessibilityElements = [(PDFPageViewAccessibility *)self accessibilityElements];
    [array addObjectsFromArray:accessibilityElements];
    while (1)
    {

      if (![array count])
      {
        break;
      }

      accessibilityElements = [array firstObject];
      [array removeObjectAtIndex:0];
      if ([accessibilityElements isAccessibilityElement])
      {
        [_axAllNodeElements addObject:accessibilityElements];
      }

      else
      {
        v5AccessibilityElements = [accessibilityElements accessibilityElements];
        v7 = [v5AccessibilityElements count];

        if (v7)
        {
          v5AccessibilityElements2 = [accessibilityElements accessibilityElements];
          [array addObjectsFromArray:v5AccessibilityElements2];
        }
      }
    }

    [(PDFPageViewAccessibility *)self _axSetAllNodeElements:_axAllNodeElements];
  }

  return _axAllNodeElements;
}

- (id)accessibilityElements
{
  _axPageViewElements = [(PDFPageViewAccessibility *)self _axPageViewElements];
  if (!_axPageViewElements)
  {
    _axPageViewElements = [MEMORY[0x29EDB8DE8] array];
    [(PDFPageViewAccessibility *)self _axPageRef];
    v4 = CGPDFPageCopyRootTaggedNode();
    v5 = [UICGPDFNodeAccessibilityElement alloc];
    _axGetPage = [(PDFPageViewAccessibility *)self _axGetPage];
    v7 = [(UICGPDFNodeAccessibilityElement *)v5 initWithAccessibilityContainer:self pdfNodeRef:v4 withPage:_axGetPage];

    [_axPageViewElements axSafelyAddObject:v7];
    [(PDFPageViewAccessibility *)self _axSetPageViewElements:_axPageViewElements];
    CGPDFTaggedNodeRelease();
  }

  return _axPageViewElements;
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

- (CGPDFSelection)_lineSelectionForSelection:(CGPDFSelection *)selection
{
  v21 = *MEMORY[0x29EDCA608];
  TextRange = CGPDFSelectionGetTextRange();
  v6 = v5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _axLineSelections = [(PDFPageViewAccessibility *)self _axLineSelections];
  v8 = [_axLineSelections countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(_axLineSelections);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      if (CGPDFSelectionGetTextRange() == TextRange && v13 == v6)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [_axLineSelections countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)removeControlForAnnotation:(id)annotation
{
  v4.receiver = self;
  v4.super_class = PDFPageViewAccessibility;
  [(PDFPageViewAccessibility *)&v4 removeControlForAnnotation:annotation];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter postNotificationName:AXPDFRemoveFromSuperviewNotification object:0 userInfo:0];
}

@end