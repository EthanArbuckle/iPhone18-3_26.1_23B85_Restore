@interface PGPictureInPictureViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setHostedWindowHostingHandle:(id)handle;
- (void)viewDidLoad;
@end

@implementation PGPictureInPictureViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PGPictureInPictureViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PGControlsContainerView"];
  [validationsCopy validateClass:@"PGLayerHostView"];
  [validationsCopy validateClass:@"_UIRemoteView"];
  [validationsCopy validateClass:@"PGPictureInPictureViewController" hasInstanceVariable:@"_controlsContainerView" withType:"PGControlsContainerView"];
  [validationsCopy validateClass:@"PGPictureInPictureViewController" hasInstanceVariable:@"_contentView" withType:"PGLayerHostView"];
  [validationsCopy validateClass:@"PGLayerHostView" hasInstanceVariable:@"_remoteView" withType:"_UIRemoteView"];
  [validationsCopy validateClass:@"_UIHostedWindowHostingHandle" hasInstanceVariable:@"_pid" withType:"i"];
  [validationsCopy validateClass:@"PGPictureInPictureViewController" hasInstanceMethod:@"setStashed:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"PGPictureInPictureViewController" hasInstanceMethod:@"setHostedWindowHostingHandle:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PGPictureInPictureViewControllerAccessibility;
  [(PGPictureInPictureViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PGPictureInPictureViewControllerAccessibility *)self safeValueForKey:@"_controlsContainerView"];
  [v3 _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PGPictureInPictureViewControllerAccessibility;
  [(PGPictureInPictureViewControllerAccessibility *)&v3 viewDidLoad];
  [(PGPictureInPictureViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setHostedWindowHostingHandle:(id)handle
{
  handleCopy = handle;
  v10.receiver = self;
  v10.super_class = PGPictureInPictureViewControllerAccessibility;
  [(PGPictureInPictureViewControllerAccessibility *)&v10 setHostedWindowHostingHandle:handleCopy];
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 safeIntForKey:@"_pid"];
  v7 = [(PGPictureInPictureViewControllerAccessibility *)self safeValueForKeyPath:@"_contentView._remoteView"];
  v8 = [MEMORY[0x29EDBA070] numberWithInt:v6];
  [v7 _accessibilitySetRetainedValue:v8 forKey:@"ax-pid"];

  v9 = [MEMORY[0x29EDBA070] numberWithInt:_AXUIElementRemoteBridgeMachPortForAXServer()];
  [v7 _accessibilitySetRetainedValue:v9 forKey:@"ax-machport"];
}

@end