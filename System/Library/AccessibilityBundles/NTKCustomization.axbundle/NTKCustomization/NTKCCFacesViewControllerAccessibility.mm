@interface NTKCCFacesViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation NTKCCFacesViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKCCFacesViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCCFacesViewController" hasInstanceMethod:@"editButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCCFacesViewController" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCCFacesViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCCFacesViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v14.receiver = self;
  v14.super_class = NTKCCFacesViewControllerAccessibility;
  [(NTKCCFacesViewControllerAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v3 = [(NTKCCFacesViewControllerAccessibility *)self safeValueForKey:@"editButton"];
  v4 = accessibilityLocalizedCustomizationString(@"myfaces.edit.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(NTKCCFacesViewControllerAccessibility *)self safeValueForKey:@"headerView"];
  if (v5)
  {
    v6 = +[NSMutableArray array];
    v7 = [(NTKCCFacesViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
    v8 = __UIAccessibilitySafeClass();

    [v8 setAccessibilityTraits:UIAccessibilityTraitHeader];
    [v6 axSafelyAddObject:v8];
    [v6 axSafelyAddObject:v3];
    [v5 setAccessibilityElements:v6];
    [v5 setIsAccessibilityElement:0];
  }

  objc_opt_class();
  v9 = __UIAccessibilityCastAsClass();
  if (v9)
  {
    v10 = +[NSMutableArray array];
    [v10 axSafelyAddObject:v5];
    v11 = [(NTKCCFacesViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
    [v10 axSafelyAddObject:v11];

    view = [v9 view];
    [view setAccessibilityElements:v10];

    view2 = [v9 view];
    [view2 setIsAccessibilityElement:0];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NTKCCFacesViewControllerAccessibility;
  [(NTKCCFacesViewControllerAccessibility *)&v3 viewDidLoad];
  [(NTKCCFacesViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end