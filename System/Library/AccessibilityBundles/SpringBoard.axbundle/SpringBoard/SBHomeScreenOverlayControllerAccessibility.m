@interface SBHomeScreenOverlayControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setPresentationProgress:(double)a3 fromLeading:(BOOL)a4 interactive:(BOOL)a5 animated:(BOOL)a6 completionHandler:(id)a7;
@end

@implementation SBHomeScreenOverlayControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBHomeScreenOverlayController" hasInstanceMethod:@"overlayViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHomeScreenOverlayController" hasInstanceMethod:@"presentationProgress" withFullSignature:{"d", 0}];
  [v3 validateClass:@"SBHomeScreenOverlayController" hasInstanceMethod:@"setPresentationProgress:fromLeading:interactive:animated:completionHandler:" withFullSignature:{"v", "d", "B", "B", "B", "@?", 0}];
  [v3 validateClass:@"SBHomeScreenOverlayController" hasInstanceMethod:@"dismissAnimated:completionHandler:" withFullSignature:{"v", "B", "@?", 0}];
}

- (void)setPresentationProgress:(double)a3 fromLeading:(BOOL)a4 interactive:(BOOL)a5 animated:(BOOL)a6 completionHandler:(id)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v12 = a7;
  [(SBHomeScreenOverlayControllerAccessibility *)self safeCGFloatForKey:@"presentationProgress"];
  v14 = v13;
  v19.receiver = self;
  v19.super_class = SBHomeScreenOverlayControllerAccessibility;
  [(SBHomeScreenOverlayControllerAccessibility *)&v19 setPresentationProgress:v9 fromLeading:v8 interactive:v7 animated:v12 completionHandler:a3];
  if (v14 != a3)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }

  v15 = [(SBHomeScreenOverlayControllerAccessibility *)self safeValueForKey:@"window"];
  [v15 setAccessibilityViewIsModal:1];

  objc_opt_class();
  v16 = [(SBHomeScreenOverlayControllerAccessibility *)self safeValueForKey:@"overlayViewController"];
  v17 = __UIAccessibilityCastAsClass();

  v18 = [v17 view];
  [v18 setAccessibilityViewIsModal:1];
}

@end