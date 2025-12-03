@interface MRUMirroringViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation MRUMirroringViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MRUMirroringViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MRUMirroringViewController" isKindOfClass:@"CCUIMenuModuleViewController"];
  [validationsCopy validateClass:@"CCUIMenuModuleViewController" isKindOfClass:@"CCUIButtonModuleViewController"];
  [validationsCopy validateClass:@"CCUIButtonModuleViewController" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CCUIButtonModuleViewController" hasInstanceMethod:@"buttonView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = MRUMirroringViewControllerAccessibility;
  [(MRUMirroringViewControllerAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  v3 = [(MRUMirroringViewControllerAccessibility *)self safeValueForKey:@"buttonView"];
  [v3 setIsAccessibilityElement:1];
  objc_initWeak(&location, self);
  v4 = MEMORY[0x29EDCA5F8];
  v5 = 3221225472;
  v6 = __85__MRUMirroringViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7 = &unk_29F29C728;
  objc_copyWeak(&v8, &location);
  [v3 _setAccessibilityTraitsBlock:&v4];
  [v3 setAccessibilityRespondsToUserInteraction:{1, v4, v5, v6, v7}];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __85__MRUMirroringViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isExpanded"];

  v3 = MEMORY[0x29EDC7F80];
  if (!v2)
  {
    v3 = MEMORY[0x29EDC7F70];
  }

  return *v3;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MRUMirroringViewControllerAccessibility;
  [(MRUMirroringViewControllerAccessibility *)&v3 viewDidLoad];
  [(MRUMirroringViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end