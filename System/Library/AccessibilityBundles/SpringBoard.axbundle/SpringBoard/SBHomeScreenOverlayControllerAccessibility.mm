@interface SBHomeScreenOverlayControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setPresentationProgress:(double)progress fromLeading:(BOOL)leading interactive:(BOOL)interactive animated:(BOOL)animated completionHandler:(id)handler;
@end

@implementation SBHomeScreenOverlayControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBHomeScreenOverlayController" hasInstanceMethod:@"overlayViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHomeScreenOverlayController" hasInstanceMethod:@"presentationProgress" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SBHomeScreenOverlayController" hasInstanceMethod:@"setPresentationProgress:fromLeading:interactive:animated:completionHandler:" withFullSignature:{"v", "d", "B", "B", "B", "@?", 0}];
  [validationsCopy validateClass:@"SBHomeScreenOverlayController" hasInstanceMethod:@"dismissAnimated:completionHandler:" withFullSignature:{"v", "B", "@?", 0}];
}

- (void)setPresentationProgress:(double)progress fromLeading:(BOOL)leading interactive:(BOOL)interactive animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  interactiveCopy = interactive;
  leadingCopy = leading;
  handlerCopy = handler;
  [(SBHomeScreenOverlayControllerAccessibility *)self safeCGFloatForKey:@"presentationProgress"];
  v14 = v13;
  v19.receiver = self;
  v19.super_class = SBHomeScreenOverlayControllerAccessibility;
  [(SBHomeScreenOverlayControllerAccessibility *)&v19 setPresentationProgress:leadingCopy fromLeading:interactiveCopy interactive:animatedCopy animated:handlerCopy completionHandler:progress];
  if (v14 != progress)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }

  v15 = [(SBHomeScreenOverlayControllerAccessibility *)self safeValueForKey:@"window"];
  [v15 setAccessibilityViewIsModal:1];

  objc_opt_class();
  v16 = [(SBHomeScreenOverlayControllerAccessibility *)self safeValueForKey:@"overlayViewController"];
  v17 = __UIAccessibilityCastAsClass();

  view = [v17 view];
  [view setAccessibilityViewIsModal:1];
}

@end