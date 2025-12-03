@interface MUPDFContentViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axAKOverlayView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axHighlightPopoverDismissed;
- (void)_axHighlightPopoverPresentedForAnnotation:(id)annotation withHighlightController:(id)controller pullFocus:(BOOL)focus;
- (void)loadContentWithCompletionBlock:(id)block;
@end

@implementation MUPDFContentViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKOverlayView"];
  [validationsCopy validateClass:@"AKHighlightColorEditorController"];
  [validationsCopy validateClass:@"AKAnnotationLayer"];
  [validationsCopy validateClass:@"MUPDFContentViewController" isKindOfClass:@"MUContentViewController"];
  [validationsCopy validateClass:@"AKHighlightColorEditorController" isKindOfClass:@"AKAnnotationPopoverViewController"];
  [validationsCopy validateClass:@"MUPDFContentViewController" hasInstanceMethod:@"pdfView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUContentViewController" hasInstanceMethod:@"annotationController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKController" hasInstanceMethod:@"pageControllers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKController" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"AKPageController" hasInstanceMethod:@"overlayView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKOverlayView" hasInstanceMethod:@"pageController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKPageController" hasInstanceMethod:@"highlightColorEditorController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKHighlightColorEditorController" hasInstanceMethod:@"calloutBar" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKAnnotationLayer" hasInstanceMethod:@"annotation" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKAnnotationPopoverViewController" hasInstanceVariable:@"mAnnotation" withType:"AKAnnotation"];
  [validationsCopy validateClass:@"MUPDFContentViewController" hasInstanceMethod:@"loadContentWithCompletionBlock:" withFullSignature:{"v", "@?", 0}];
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

- (void)loadContentWithCompletionBlock:(id)block
{
  v4.receiver = self;
  v4.super_class = MUPDFContentViewControllerAccessibility;
  [(MUPDFContentViewControllerAccessibility *)&v4 loadContentWithCompletionBlock:block];
  [(MUPDFContentViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = MUPDFContentViewControllerAccessibility;
  [(MUPDFContentViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  _axAKOverlayView = [(MUPDFContentViewControllerAccessibility *)self _axAKOverlayView];
  MEMORY[0x29C2DD430](@"AKOverlayView");
  if (objc_opt_isKindOfClass())
  {
    v4 = [_axAKOverlayView safeValueForKeyPath:@"pageController.highlightColorEditorController"];
    v5 = [v4 safeValueForKey:@"mAnnotation"];
    [(MUPDFContentViewControllerAccessibility *)self _axHighlightPopoverPresentedForAnnotation:v5 withHighlightController:v4 pullFocus:0];
  }
}

- (void)_axHighlightPopoverPresentedForAnnotation:(id)annotation withHighlightController:(id)controller pullFocus:(BOOL)focus
{
  focusCopy = focus;
  v32 = *MEMORY[0x29EDCA608];
  annotationCopy = annotation;
  controllerCopy = controller;
  _axAKOverlayView = [(MUPDFContentViewControllerAccessibility *)self _axAKOverlayView];
  MEMORY[0x29C2DD430](@"AKOverlayView");
  if (objc_opt_isKindOfClass())
  {
    MEMORY[0x29C2DD430](@"AKHighlightColorEditorController");
    if (objc_opt_isKindOfClass())
    {
      v11 = [controllerCopy safeValueForKey:@"calloutBar"];
      v12 = v11;
      if (v11)
      {
        v25 = controllerCopy;
        argument = v11;
        selfCopy = self;
        v24 = focusCopy;
        accessibilityElements = [_axAKOverlayView accessibilityElements];
        v14 = [accessibilityElements mutableCopy];

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
                if ([v21 isEqual:annotationCopy])
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

        [_axAKOverlayView setAccessibilityElements:v15];
        controllerCopy = v25;
        [v25 _accessibilitySetAssignedValue:selfCopy forKey:@"AXCalloutBarDelegate"];
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
  _axAKOverlayView = [(MUPDFContentViewControllerAccessibility *)self _axAKOverlayView];
  [_axAKOverlayView _accessibilitySetRetainedValue:0 forKey:@"AXAKRetainedElements"];

  v3 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v3, 0);
}

@end