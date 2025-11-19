@interface AXInvertColors_AVKit
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_AVKit

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVPlayerViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"AVFullScreenViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"AVPresentationController" hasInstanceMethod:@"presentationTransitionWillBegin" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIPresentationController" hasInstanceMethod:@"containerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVPresentationContext" hasInstanceMethod:@"backgroundView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVPresentationController" hasInstanceVariable:@"_context" withType:"AVPresentationContext"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"AVPlayerViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"AVPresentationContainerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"__AVPlayerLayerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"AVPresentationControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end