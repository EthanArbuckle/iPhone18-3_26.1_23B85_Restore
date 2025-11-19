@interface MUPDFContentViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axAKOverlayView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axHighlightPopoverDismissed;
- (void)_axHighlightPopoverPresentedForAnnotation:(id)a3 withHighlightController:(id)a4 pullFocus:(BOOL)a5;
- (void)loadContentWithCompletionBlock:(id)a3;
@end

@implementation MUPDFContentViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AKOverlayView"];
  [v3 validateClass:@"AKHighlightColorEditorController"];
  [v3 validateClass:@"AKAnnotationLayer"];
  [v3 validateClass:@"MUPDFContentViewController" isKindOfClass:@"MUContentViewController"];
  [v3 validateClass:@"AKHighlightColorEditorController" isKindOfClass:@"AKAnnotationPopoverViewController"];
  [v3 validateClass:@"MUPDFContentViewController" hasInstanceMethod:@"pdfView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MUContentViewController" hasInstanceMethod:@"annotationController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKController" hasInstanceMethod:@"pageControllers" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKController" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"AKPageController" hasInstanceMethod:@"overlayView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKOverlayView" hasInstanceMethod:@"pageController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKPageController" hasInstanceMethod:@"highlightColorEditorController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKHighlightColorEditorController" hasInstanceMethod:@"calloutBar" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKAnnotationLayer" hasInstanceMethod:@"annotation" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKAnnotationPopoverViewController" hasInstanceVariable:@"mAnnotation" withType:"AKAnnotation"];
  [v3 validateClass:@"MUPDFContentViewController" hasInstanceMethod:@"loadContentWithCompletionBlock:" withFullSignature:{"v", "@?", 0}];
}

- (id)_axAKOverlayView
{
  v2 = [(MUPDFContentViewControllerAccessibility *)self safeValueForKey:@"annotationController"];
  objc_opt_class();
  v3 = [v2 safeValueForKey:@"pageControllers"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v2 safeUnsignedIntegerForKey:@"currentPageIndex"];
  if (v5 >= [v4 count])
  {
    v7 = 0;
  }

  else
  {
    v6 = [v4 objectAtIndex:v5];
    v7 = [v6 safeValueForKey:@"overlayView"];
  }

  return v7;
}

- (void)loadContentWithCompletionBlock:(id)a3
{
  v4.receiver = self;
  v4.super_class = MUPDFContentViewControllerAccessibility;
  [(MUPDFContentViewControllerAccessibility *)&v4 loadContentWithCompletionBlock:a3];
  [(MUPDFContentViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = MUPDFContentViewControllerAccessibility;
  [(MUPDFContentViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(MUPDFContentViewControllerAccessibility *)self _axAKOverlayView];
  MEMORY[0x29C2DD430](@"AKOverlayView");
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safeValueForKeyPath:@"pageController.highlightColorEditorController"];
    v5 = [v4 safeValueForKey:@"mAnnotation"];
    [(MUPDFContentViewControllerAccessibility *)self _axHighlightPopoverPresentedForAnnotation:v5 withHighlightController:v4 pullFocus:0];
  }
}

- (void)_axHighlightPopoverPresentedForAnnotation:(id)a3 withHighlightController:(id)a4 pullFocus:(BOOL)a5
{
  v5 = a5;
  v32 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a4;
  v10 = [(MUPDFContentViewControllerAccessibility *)self _axAKOverlayView];
  MEMORY[0x29C2DD430](@"AKOverlayView");
  if (objc_opt_isKindOfClass())
  {
    MEMORY[0x29C2DD430](@"AKHighlightColorEditorController");
    if (objc_opt_isKindOfClass())
    {
      v11 = [v9 safeValueForKey:@"calloutBar"];
      v12 = v11;
      if (v11)
      {
        v25 = v9;
        argument = v11;
        v23 = self;
        v24 = v5;
        v13 = [v10 accessibilityElements];
        v14 = [v13 mutableCopy];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v28;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v28 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v27 + 1) + 8 * i);
              MEMORY[0x29C2DD430](@"AKAnnotationLayer");
              if (objc_opt_isKindOfClass())
              {
                v21 = [v20 safeValueForKey:@"annotation"];
                if ([v21 isEqual:v8])
                {
                  [v15 insertObject:argument atIndex:{objc_msgSend(v15, "indexOfObject:", v20)}];

                  goto LABEL_16;
                }
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        [v10 setAccessibilityElements:v15];
        v9 = v25;
        [v25 _accessibilitySetAssignedValue:v23 forKey:@"AXCalloutBarDelegate"];
        v12 = argument;
        if (v24)
        {
          UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument);
        }
      }
    }
  }

  v22 = *MEMORY[0x29EDCA608];
}

- (void)_axHighlightPopoverDismissed
{
  v2 = [(MUPDFContentViewControllerAccessibility *)self _axAKOverlayView];
  [v2 _accessibilitySetRetainedValue:0 forKey:@"AXAKRetainedElements"];

  v3 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v3, 0);
}

@end