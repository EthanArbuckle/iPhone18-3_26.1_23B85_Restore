@interface LibraryMainViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation LibraryMainViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Music.LibraryMainViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"Music.LibraryMainViewController" hasInstanceMethod:@"setEditing:animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"Music.LibraryMainViewController" hasSwiftField:@"accountButton" withSwiftType:"AccountButtonWrapper"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = [(LibraryMainViewControllerAccessibility *)self safeSwiftValueForKey:@"accountButton"];
  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityRespondsToUserInteraction:1];
  v4 = accessibilityMusicLocalizedString(@"account");
  [v3 setAccessibilityLabel:v4];

  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [v3 _accessibilitySetFKAShouldProcessChildren:0];
  v5.receiver = self;
  v5.super_class = LibraryMainViewControllerAccessibility;
  [(LibraryMainViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LibraryMainViewControllerAccessibility;
  [(LibraryMainViewControllerAccessibility *)&v3 viewDidLoad];
  [(LibraryMainViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end