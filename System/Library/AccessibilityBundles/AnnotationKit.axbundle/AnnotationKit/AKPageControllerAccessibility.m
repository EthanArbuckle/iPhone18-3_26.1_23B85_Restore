@interface AKPageControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)openPopoverForHighlightAnnotation:(id)a3;
@end

@implementation AKPageControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AKPageController" hasInstanceMethod:@"_popoverPresentingViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKPageController" hasInstanceMethod:@"openPopoverForHighlightAnnotation:" withFullSignature:{"v", "@", 0}];
}

- (void)openPopoverForHighlightAnnotation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKPageControllerAccessibility;
  [(AKPageControllerAccessibility *)&v8 openPopoverForHighlightAnnotation:v4];
  v5 = [(AKPageControllerAccessibility *)self safeValueForKey:@"_popoverPresentingViewController"];
  MEMORY[0x29C2C8260](@"MUPDFContentViewController");
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(AKPageControllerAccessibility *)self safeValueForKeyPath:@"highlightColorEditorController"];
    [v6 _axHighlightPopoverPresentedForAnnotation:v4 withHighlightController:v7 pullFocus:1];
  }
}

@end