@interface AKPageControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)openPopoverForHighlightAnnotation:(id)annotation;
@end

@implementation AKPageControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKPageController" hasInstanceMethod:@"_popoverPresentingViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKPageController" hasInstanceMethod:@"openPopoverForHighlightAnnotation:" withFullSignature:{"v", "@", 0}];
}

- (void)openPopoverForHighlightAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v8.receiver = self;
  v8.super_class = AKPageControllerAccessibility;
  [(AKPageControllerAccessibility *)&v8 openPopoverForHighlightAnnotation:annotationCopy];
  v5 = [(AKPageControllerAccessibility *)self safeValueForKey:@"_popoverPresentingViewController"];
  MEMORY[0x29C2C8260](@"MUPDFContentViewController");
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(AKPageControllerAccessibility *)self safeValueForKeyPath:@"highlightColorEditorController"];
    [v6 _axHighlightPopoverPresentedForAnnotation:annotationCopy withHighlightController:v7 pullFocus:1];
  }
}

@end