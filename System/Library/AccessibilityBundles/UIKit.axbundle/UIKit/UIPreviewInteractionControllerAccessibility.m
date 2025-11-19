@interface UIPreviewInteractionControllerAccessibility
@end

@implementation UIPreviewInteractionControllerAccessibility

void __112___UIPreviewInteractionControllerAccessibility__preparePreviewViewControllerPresentationFromPreviewInteraction___block_invoke(id *a1)
{
  v13[2] = a1;
  v13[1] = a1;
  v12 = 0;
  objc_opt_class();
  v8 = [a1[4] safeValueForKey:@"currentPresentationController"];
  v11 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v8);
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  v13[0] = v10;
  v9 = [v10 safeUIViewForKey:@"contentPlatterView"];
  [v9 setIsAccessibilityElement:1];
  v2 = v9;
  v3 = UIKitAccessibilityLocalizedString();
  [v2 setAccessibilityLabel:?];
  *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  [v9 setAccessibilityIdentifier:{@"PreviewContainerElement", v1}];
  v4 = a1[4];
  v6 = [v13[0] presentedViewController];
  v5 = [(_UIPreviewInteractionControllerAccessibility *)v4 _accessibilityCustomActionsFromPresentedViewController:v6];
  [v9 setAccessibilityCustomActions:?];
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v13, 0);
}

void __77___UIPreviewInteractionControllerAccessibility__accessibilityShowMoreActions__block_invoke(id *a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [a1[4] safeValueForKey:@"previewActionsController"];
  argument = [v2[0] safeValueForKey:@"previewActionsView"];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument);
  objc_storeStrong(&argument, 0);
  objc_storeStrong(v2, 0);
}

@end