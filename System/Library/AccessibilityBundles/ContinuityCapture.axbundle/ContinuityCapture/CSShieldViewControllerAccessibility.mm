@interface CSShieldViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_endLoadingScreen;
@end

@implementation CSShieldViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CSShieldViewController" hasInstanceMethod:@"_endLoadingScreen" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CSShieldViewController" hasInstanceVariable:@"_addSongButtonItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"CSShieldViewController" hasInstanceVariable:@"_helpButtonItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"CSShieldViewController" hasInstanceVariable:@"_vocalAttenuationButton" withType:"CSToggleButton"];
  [validationsCopy validateClass:@"CSShieldViewController" hasInstanceVariable:@"_reverbButton" withType:"CSToggleButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = CSShieldViewControllerAccessibility;
  [(CSShieldViewControllerAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v3 = [(CSShieldViewControllerAccessibility *)self safeValueForKey:@"_addSongButtonItem"];
  v4 = accessibilityLocalizedString(@"add.song");
  [v3 setAccessibilityLabel:v4];

  v5 = [(CSShieldViewControllerAccessibility *)self safeValueForKey:@"_helpButtonItem"];
  v6 = accessibilityLocalizedString(@"audio.help");
  [v5 setAccessibilityLabel:v6];

  v7 = [(CSShieldViewControllerAccessibility *)self safeValueForKey:@"_vocalAttenuationButton"];
  v8 = accessibilityLocalizedString(@"song.vocals");
  [v7 setAccessibilityLabel:v8];

  v9 = [(CSShieldViewControllerAccessibility *)self safeValueForKey:@"_reverbButton"];
  v10 = accessibilityLocalizedString(@"mic.reverb");
  [v9 setAccessibilityLabel:v10];
}

- (void)_endLoadingScreen
{
  v3.receiver = self;
  v3.super_class = CSShieldViewControllerAccessibility;
  [(CSShieldViewControllerAccessibility *)&v3 _endLoadingScreen];
  [(CSShieldViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end