@interface MTAAlarmCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axDataSource;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation MTAAlarmCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UICollectionViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAAlarmCollectionViewController" hasInstanceMethod:@"_removeAlarm:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"MTAAlarmCollectionViewController" isKindOfClass:@"UICollectionViewController"];
  [validationsCopy validateClass:@"MTAAlarmCollectionViewController" hasInstanceVariable:@"_noItemsView" withType:"_UIContentUnavailableView"];
  [validationsCopy validateClass:@"MTAAlarmCollectionViewController" hasInstanceVariable:@"_dataSource" withType:"MTAlarmDataSource"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = MTAAlarmCollectionViewControllerAccessibility;
  [(MTAAlarmCollectionViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = MTAAlarmCollectionViewControllerAccessibility;
  [(MTAAlarmCollectionViewControllerAccessibility *)&v2 viewDidLoad];
}

- (id)_axDataSource
{
  objc_opt_class();
  v3 = [(MTAAlarmCollectionViewControllerAccessibility *)self safeValueForKey:@"_dataSource"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

@end