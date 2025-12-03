@interface PDFPageAccessibility
- (BOOL)_accessibilityIsFrameOutOfBounds;
- (CGPDFPage)_axPageRef;
- (id)_axAllElements;
- (id)accessibilityElementsWithPlugin:(id)plugin;
- (id)accessibilityHitTest:(CGPoint)test withPlugin:(id)plugin;
@end

@implementation PDFPageAccessibility

- (CGPDFPage)_axPageRef
{
  v2 = __UIAccessibilitySafeClass();
  pageRef = [v2 pageRef];

  return pageRef;
}

- (BOOL)_accessibilityIsFrameOutOfBounds
{
  v3.receiver = self;
  v3.super_class = PDFPageAccessibility;
  return [(PDFPageAccessibility *)&v3 _accessibilityIsFrameOutOfBounds];
}

- (id)accessibilityHitTest:(CGPoint)test withPlugin:(id)plugin
{
  y = test.y;
  x = test.x;
  v20 = *MEMORY[0x29EDCA608];
  pluginCopy = plugin;
  plugin = [(PDFPageAccessibility *)self plugin];

  if (!plugin)
  {
    [(PDFPageAccessibility *)self _axSetPlugin:pluginCopy];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  _axAllElements = [(PDFPageAccessibility *)self _axAllElements];
  v10 = [_axAllElements countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(_axAllElements);
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

      v10 = [_axAllElements countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  _axAllNodeElements = [(PDFPageAccessibility *)self _axAllNodeElements];
  v4 = _axAllNodeElements;
  if (_axAllNodeElements && [_axAllNodeElements count])
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];

    array2 = [MEMORY[0x29EDB8DE8] array];
    accessibilityElements = [(PDFPageAccessibility *)self accessibilityElements];
    [array2 addObjectsFromArray:accessibilityElements];
    while (1)
    {

      if (![array2 count])
      {
        break;
      }

      accessibilityElements = [array2 firstObject];
      [array2 removeObjectAtIndex:0];
      if ([accessibilityElements isAccessibilityElement])
      {
        [array addObject:accessibilityElements];
      }

      else
      {
        v7AccessibilityElements = [accessibilityElements accessibilityElements];
        v9 = [v7AccessibilityElements count];

        if (v9)
        {
          v7AccessibilityElements2 = [accessibilityElements accessibilityElements];
          [array2 addObjectsFromArray:v7AccessibilityElements2];
        }
      }
    }

    [(PDFPageAccessibility *)self _axSetAllNodeElements:array];
  }

  return array;
}

- (id)accessibilityElementsWithPlugin:(id)plugin
{
  pluginCopy = plugin;
  plugin = [(PDFPageAccessibility *)self plugin];

  if (!plugin)
  {
    [(PDFPageAccessibility *)self _axSetPlugin:pluginCopy];
  }

  _axPageElements = [(PDFPageAccessibility *)self _axPageElements];
  if (!_axPageElements)
  {
    _axPageElements = [MEMORY[0x29EDB8DE8] array];
    [(PDFPageAccessibility *)self _axPageRef];
    v7 = CGPDFPageCopyRootTaggedNode();
    v8 = [UICGPDFNodeAccessibilityElement alloc];
    objc_opt_class();
    v9 = __UIAccessibilityCastAsClass();
    v10 = [(UICGPDFNodeAccessibilityElement *)v8 initWithAccessibilityContainer:self pdfNodeRef:v7 withPage:v9];

    [_axPageElements axSafelyAddObject:v10];
    [(PDFPageAccessibility *)self _axSetPageElements:_axPageElements];
    CGPDFTaggedNodeRelease();
  }

  return _axPageElements;
}

@end