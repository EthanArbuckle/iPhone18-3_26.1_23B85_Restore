@interface PDFDocumentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsUsingPDFExtensionView;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_axGetPDFView;
- (void)layoutDocumentView;
- (void)updateVisibility;
@end

@implementation PDFDocumentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PDFDocumentView" hasInstanceVariable:@"_private" withType:"PDFDocumentViewPrivate"];
  [validationsCopy validateClass:@"PDFDocumentViewPrivate" hasInstanceVariable:@"pdfView" withType:"PDFView"];
  [validationsCopy validateClass:@"PDFView" hasInstanceMethod:@"extensionViewZoomScale" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PDFView" hasInstanceMethod:@"extensionViewBoundsInDocument" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"PDFView" hasInstanceMethod:@"renderingProperties" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PDFRenderingProperties" hasInstanceMethod:@"isUsingPDFExtensionView" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PDFDocumentView" hasInstanceMethod:@"updateVisibility" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PDFDocumentView" hasInstanceMethod:@"layoutDocumentView" withFullSignature:{"v", 0}];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v32 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  if ([(PDFDocumentViewAccessibility *)self _axIsUsingPDFExtensionView])
  {
    _axGetPDFView = [(PDFDocumentViewAccessibility *)self _axGetPDFView];
    [_axGetPDFView safeCGFloatForKey:@"extensionViewZoomScale"];
    v10 = v9;
    [_axGetPDFView safeCGRectForKey:@"extensionViewBoundsInDocument"];
    v12 = v11;
    v14 = v13;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    objc_opt_class();
    v15 = __UIAccessibilityCastAsClass();
    v16 = y / v10;
    v17 = x / v10 + v12;
    v18 = v16 + v14;
    subviews = [v15 subviews];

    v20 = [subviews countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v20)
    {
      v21 = *v27;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(subviews);
          }

          v23 = *(*(&v26 + 1) + 8 * i);
          [v23 convertPoint:self fromView:{v17, v18}];
          if ([v23 pointInside:eventCopy withEvent:?])
          {
            v20 = v23;
            goto LABEL_13;
          }
        }

        v20 = [subviews countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v24 = [v20 _accessibilityHitTest:eventCopy withEvent:{v17, v18}];
  }

  else
  {
    v30.receiver = self;
    v30.super_class = PDFDocumentViewAccessibility;
    v24 = [(PDFDocumentViewAccessibility *)&v30 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  return v24;
}

- (id)_axGetPDFView
{
  v2 = [(PDFDocumentViewAccessibility *)self safeValueForKey:@"_private"];
  v3 = [v2 safeValueForKey:@"pdfView"];

  return v3;
}

- (BOOL)_axIsUsingPDFExtensionView
{
  _axGetPDFView = [(PDFDocumentViewAccessibility *)self _axGetPDFView];
  v3 = [_axGetPDFView safeValueForKey:@"renderingProperties"];
  v4 = [v3 safeBoolForKey:@"isUsingPDFExtensionView"];

  return v4;
}

- (void)updateVisibility
{
  v3.receiver = self;
  v3.super_class = PDFDocumentViewAccessibility;
  [(PDFDocumentViewAccessibility *)&v3 updateVisibility];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter postNotificationName:AXPDFVisibiltyUpdatedNotification object:0 userInfo:0];
}

- (void)layoutDocumentView
{
  v3.receiver = self;
  v3.super_class = PDFDocumentViewAccessibility;
  [(PDFDocumentViewAccessibility *)&v3 layoutDocumentView];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter postNotificationName:AXPDFVisibiltyUpdatedNotification object:0 userInfo:0];
}

@end