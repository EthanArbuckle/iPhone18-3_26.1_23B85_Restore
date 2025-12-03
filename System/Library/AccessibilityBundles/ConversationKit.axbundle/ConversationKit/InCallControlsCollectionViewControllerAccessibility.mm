@interface InCallControlsCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetupSidebar;
- (void)viewDidLoad;
@end

@implementation InCallControlsCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationKit.InCallControlsCollectionViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsCollectionViewController" hasSwiftField:@"collectionView" withSwiftType:"Optional<UICollectionView>"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = InCallControlsCollectionViewControllerAccessibility;
  [(InCallControlsCollectionViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(InCallControlsCollectionViewControllerAccessibility *)self _accessibilitySetupSidebar];
}

- (void)_accessibilitySetupSidebar
{
  if (self)
  {
    v2 = [self safeSwiftValueForKey:@"collectionView"];
    v1 = accessibilityLocalizedString(@"call.sidebar.label");
    [v2 setAccessibilityLabel:v1];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = InCallControlsCollectionViewControllerAccessibility;
  [(InCallControlsCollectionViewControllerAccessibility *)&v3 viewDidLoad];
  [(InCallControlsCollectionViewControllerAccessibility *)self _accessibilitySetupSidebar];
}

@end