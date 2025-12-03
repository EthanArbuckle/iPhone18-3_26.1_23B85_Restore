@interface AKHighlightColorEditorControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didHide;
- (void)presentFromRect:(CGRect)rect view:(id)view;
@end

@implementation AKHighlightColorEditorControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKHighlightAnnotation"];
  [validationsCopy validateClass:@"AKAnnotationTheme"];
  [validationsCopy validateClass:@"AKHighlightColorEditorController" isKindOfClass:@"AKAnnotationPopoverViewController"];
  [validationsCopy validateClass:@"AKAnnotationPopoverViewController" hasInstanceMethod:@"annotation" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKAnnotationPopoverViewController" hasInstanceMethod:@"annotationTheme" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKHighlightAnnotation" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKHighlightAnnotation" hasInstanceMethod:@"style" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"AKAnnotationTheme" hasInstanceMethod:@"pageTheme" withFullSignature:{"i", 0}];
  [validationsCopy validateClass:@"AKHighlightColorEditorController" hasInstanceMethod:@"presentFromRect: view:" withFullSignature:{"v", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  [validationsCopy validateClass:@"AKHighlightColorEditorController" hasInstanceMethod:@"p_setStyle: forAnnotation:" withFullSignature:{"v", "q", "@", 0}];
  [validationsCopy validateClass:@"AKHighlightColorEditorController" hasInstanceMethod:@"p_updateAppearance" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AKHighlightColorEditorController" hasInstanceMethod:@"p_colorForTag: pageTheme:" withFullSignature:{"@", "q", "i", 0}];
  [validationsCopy validateClass:@"AKAnnotationPopoverViewController" hasInstanceMethod:@"didHide" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = AKHighlightColorEditorControllerAccessibility;
  [(AKHighlightColorEditorControllerAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v3 = [(AKHighlightColorEditorControllerAccessibility *)self safeValueForKey:@"annotation"];
  MEMORY[0x29C2C8260](@"AKHighlightAnnotation");
  if (objc_opt_isKindOfClass())
  {
    if ([v3 safeUnsignedIntegerForKey:@"style"] != 2)
    {
      v4 = [(AKHighlightColorEditorControllerAccessibility *)self safeValueForKey:@"annotationTheme"];
      MEMORY[0x29C2C8260](@"AKAnnotationTheme");
      if (objc_opt_isKindOfClass())
      {
        v5 = [v4 safeIntForKey:@"pageTheme"];
        v6 = [v3 safeValueForKey:@"color"];
        for (i = 1; i != 7; ++i)
        {
          v8 = [(AKHighlightColorEditorControllerAccessibility *)self p_colorForTag:i pageTheme:v5];
          v9 = UIAccessibilityColorEqualToColor();

          if (v9)
          {
            break;
          }
        }
      }
    }

    v10 = v3;
    AXPerformSafeBlock();
  }
}

uint64_t __91__AKHighlightColorEditorControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) p_setStyle:*(a1 + 48) forAnnotation:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 p_updateAppearance];
}

- (void)presentFromRect:(CGRect)rect view:(id)view
{
  v5.receiver = self;
  v5.super_class = AKHighlightColorEditorControllerAccessibility;
  [(AKHighlightColorEditorControllerAccessibility *)&v5 presentFromRect:view view:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [(AKHighlightColorEditorControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)didHide
{
  v4.receiver = self;
  v4.super_class = AKHighlightColorEditorControllerAccessibility;
  [(AKHighlightColorEditorControllerAccessibility *)&v4 didHide];
  v3 = [(AKHighlightColorEditorControllerAccessibility *)self _accessibilityValueForKey:@"AXCalloutBarDelegate"];
  MEMORY[0x29C2C8260](@"MUPDFContentViewController");
  if (objc_opt_isKindOfClass())
  {
    [v3 _axHighlightPopoverDismissed];
  }
}

@end