@interface AVTAvatarAttributeEditorViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation AVTAvatarAttributeEditorViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorViewController" hasInstanceMethod:@"alphaAssetsLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorViewController" hasInstanceMethod:@"avtViewSession" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorViewController" hasInstanceMethod:@"attributesCollectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTViewSession" hasInstanceMethod:@"avtView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = AVTAvatarAttributeEditorViewControllerAccessibility;
  [(AVTAvatarAttributeEditorViewControllerAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(AVTAvatarAttributeEditorViewControllerAccessibility *)self safeValueForKey:@"alphaAssetsLabel"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setIsAccessibilityElement:0];
  v5 = [(AVTAvatarAttributeEditorViewControllerAccessibility *)self safeValueForKeyPath:@"avtViewSession.avtView"];
  v6 = accessibilityLocalizedString(@"editor.puppet");
  [v5 setAccessibilityLabel:v6];

  objc_opt_class();
  v7 = [(AVTAvatarAttributeEditorViewControllerAccessibility *)self safeValueForKey:@"attributesCollectionView"];
  v8 = __UIAccessibilityCastAsClass();

  indexPathsForVisibleItems = [v8 indexPathsForVisibleItems];
  [v8 reloadItemsAtIndexPaths:indexPathsForVisibleItems];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AVTAvatarAttributeEditorViewControllerAccessibility;
  [(AVTAvatarAttributeEditorViewControllerAccessibility *)&v3 viewDidLoad];
  [(AVTAvatarAttributeEditorViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end