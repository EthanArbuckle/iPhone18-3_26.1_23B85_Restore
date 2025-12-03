@interface AVTSplashScreenViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation AVTSplashScreenViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTSplashScreenViewController" hasInstanceMethod:@"playerViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTSplashScreenViewController" hasInstanceMethod:@"configuration" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTSplashScreenConfiguration" hasInstanceMethod:@"primaryPlayerItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVPlayerItem" hasInstanceMethod:@"_URL" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTSplashScreenViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = AVTSplashScreenViewControllerAccessibility;
  [(AVTSplashScreenViewControllerAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v3 = [(AVTSplashScreenViewControllerAccessibility *)self safeValueForKey:@"playerViewController"];
  v4 = [(AVTSplashScreenViewControllerAccessibility *)self safeValueForKeyPath:@"configuration.primaryPlayerItem"];
  v5 = [v4 safeValueForKey:@"_URL"];
  v6 = AVTAvatarEditorSplashVideo();
  v7 = [v6 safeValueForKey:@"_URL"];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9 = [v3 safeValueForKeyPath:@"view"];
    v10 = accessibilityLocalizedString(@"memoji.splash.video");
    [v9 setAccessibilityLabel:v10];

    [v9 setIsAccessibilityElement:1];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AVTSplashScreenViewControllerAccessibility;
  [(AVTSplashScreenViewControllerAccessibility *)&v3 viewDidLoad];
  [(AVTSplashScreenViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end