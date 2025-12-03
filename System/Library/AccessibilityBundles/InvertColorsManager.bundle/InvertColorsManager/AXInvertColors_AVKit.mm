@interface AXInvertColors_AVKit
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_AVKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVPlayerViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"AVFullScreenViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"AVPresentationController" hasInstanceMethod:@"presentationTransitionWillBegin" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UIPresentationController" hasInstanceMethod:@"containerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVPresentationContext" hasInstanceMethod:@"backgroundView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVPresentationController" hasInstanceVariable:@"_context" withType:"AVPresentationContext"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"AVPlayerViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"AVPresentationContainerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"__AVPlayerLayerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"AVPresentationControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end