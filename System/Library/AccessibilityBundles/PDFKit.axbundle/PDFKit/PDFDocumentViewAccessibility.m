@interface PDFDocumentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsUsingPDFExtensionView;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_axGetPDFView;
- (void)layoutDocumentView;
- (void)updateVisibility;
@end

@implementation PDFDocumentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PDFDocumentView" hasInstanceVariable:@"_private" withType:"PDFDocumentViewPrivate"];
  [v3 validateClass:@"PDFDocumentViewPrivate" hasInstanceVariable:@"pdfView" withType:"PDFView"];
  [v3 validateClass:@"PDFView" hasInstanceMethod:@"extensionViewZoomScale" withFullSignature:{"d", 0}];
  [v3 validateClass:@"PDFView" hasInstanceMethod:@"extensionViewBoundsInDocument" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"PDFView" hasInstanceMethod:@"renderingProperties" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PDFRenderingProperties" hasInstanceMethod:@"isUsingPDFExtensionView" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PDFDocumentView" hasInstanceMethod:@"updateVisibility" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PDFDocumentView" hasInstanceMethod:@"layoutDocumentView" withFullSignature:{"v", 0}];
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v32 = *MEMORY[0x29EDCA608];
  v7 = a4;
  if ([(PDFDocumentViewAccessibility *)self _axIsUsingPDFExtensionView])
  {
    v8 = [(PDFDocumentViewAccessibility *)self _axGetPDFView];
    [v8 safeCGFloatForKey:@"extensionViewZoomScale"];
    v10 = v9;
    [v8 safeCGRectForKey:@"extensionViewBoundsInDocument"];
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
    v19 = [v15 subviews];

    v20 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v20)
    {
      v21 = *v27;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v26 + 1) + 8 * i);
          [v23 convertPoint:self fromView:{v17, v18}];
          if ([v23 pointInside:v7 withEvent:?])
          {
            v20 = v23;
            goto LABEL_13;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v24 = [v20 _accessibilityHitTest:v7 withEvent:{v17, v18}];
  }

  else
  {
    v30.receiver = self;
    v30.super_class = PDFDocumentViewAccessibility;
    v24 = [(PDFDocumentViewAccessibility *)&v30 _accessibilityHitTest:v7 withEvent:x, y];
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
  v2 = [(PDFDocumentViewAccessibility *)self _axGetPDFView];
  v3 = [v2 safeValueForKey:@"renderingProperties"];
  v4 = [v3 safeBoolForKey:@"isUsingPDFExtensionView"];

  return v4;
}

- (void)updateVisibility
{
  v3.receiver = self;
  v3.super_class = PDFDocumentViewAccessibility;
  [(PDFDocumentViewAccessibility *)&v3 updateVisibility];
  v2 = [MEMORY[0x29EDBA068] defaultCenter];
  [v2 postNotificationName:AXPDFVisibiltyUpdatedNotification object:0 userInfo:0];
}

- (void)layoutDocumentView
{
  v3.receiver = self;
  v3.super_class = PDFDocumentViewAccessibility;
  [(PDFDocumentViewAccessibility *)&v3 layoutDocumentView];
  v2 = [MEMORY[0x29EDBA068] defaultCenter];
  [v2 postNotificationName:AXPDFVisibiltyUpdatedNotification object:0 userInfo:0];
}

@end