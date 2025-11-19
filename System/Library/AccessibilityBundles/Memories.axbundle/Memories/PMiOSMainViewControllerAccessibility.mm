@interface PMiOSMainViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)editBBItem;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupBottomToolbar;
- (void)setControlVisibility:(BOOL)a3;
- (void)toggleControlVisibility;
- (void)viewDidLoad;
@end

@implementation PMiOSMainViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PMiOSMainViewController" isKindOfClass:@"MiroPlayerViewController"];
  [v3 validateClass:@"MiroPlayerViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"PMiOSSliderViewController"];
  [v3 validateClass:@"PMiOSMainViewController" hasInstanceMethod:@"moodSlider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PMiOSMainViewController" hasInstanceMethod:@"durationSlider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PMiOSMainViewController" hasInstanceMethod:@"editBBItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PMiOSMainViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PMiOSMainViewController" hasInstanceMethod:@"_setupBottomToolbar" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PMiOSMainViewController" hasInstanceMethod:@"toggleControlVisibility" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PMiOSMainViewController" hasInstanceMethod:@"setControlVisibility:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = PMiOSMainViewControllerAccessibility;
  [(PMiOSMainViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(PMiOSMainViewControllerAccessibility *)self safeValueForKey:@"moodSlider"];
  MEMORY[0x29C2DE4B0](@"PMiOSSliderViewController");
  if (objc_opt_isKindOfClass())
  {
    [v3 _axSetMemoriesEditSliderType:0];
  }

  v4 = [(PMiOSMainViewControllerAccessibility *)self safeValueForKey:@"durationSlider"];
  MEMORY[0x29C2DE4B0](@"PMiOSSliderViewController");
  if (objc_opt_isKindOfClass())
  {
    [v4 _axSetMemoriesEditSliderType:1];
  }

  v5 = [(PMiOSMainViewControllerAccessibility *)self safeValueForKeyPath:@"titleLabel"];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (id)editBBItem
{
  v5.receiver = self;
  v5.super_class = PMiOSMainViewControllerAccessibility;
  v2 = [(PMiOSMainViewControllerAccessibility *)&v5 editBBItem];
  v3 = accessibilityMemoriesLocalizedString(@"edit.button");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

- (void)_setupBottomToolbar
{
  v3.receiver = self;
  v3.super_class = PMiOSMainViewControllerAccessibility;
  [(PMiOSMainViewControllerAccessibility *)&v3 _setupBottomToolbar];
  [(PMiOSMainViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PMiOSMainViewControllerAccessibility;
  [(PMiOSMainViewControllerAccessibility *)&v5 viewDidLoad];
  v3 = [(PMiOSMainViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4 = accessibilityMemoriesLocalizedString(@"memory.movie.hint.reveal");
  [v3 setAccessibilityHint:v4];
}

- (void)toggleControlVisibility
{
  v2.receiver = self;
  v2.super_class = PMiOSMainViewControllerAccessibility;
  [(PMiOSMainViewControllerAccessibility *)&v2 toggleControlVisibility];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)setControlVisibility:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = PMiOSMainViewControllerAccessibility;
  [(PMiOSMainViewControllerAccessibility *)&v8 setControlVisibility:?];
  v5 = [(PMiOSMainViewControllerAccessibility *)self safeValueForKey:@"view"];
  if (v3)
  {
    v6 = @"memory.movie.hint.hide";
  }

  else
  {
    v6 = @"memory.movie.hint.reveal";
  }

  v7 = accessibilityMemoriesLocalizedString(v6);
  [v5 setAccessibilityHint:v7];
}

@end