@interface MTAWorldClockCollectionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (MTAWorldClockCollectionCellAccessibility)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axModifyDeleteButton;
@end

@implementation MTAWorldClockCollectionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTAWorldClockCollectionCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"MTAWorldClockCollectionCell" hasInstanceMethod:@"worldClockView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAWorldClockCollectionCell" hasInstanceMethod:@"deleteButton" withFullSignature:{"@", 0}];
}

- (MTAWorldClockCollectionCellAccessibility)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MTAWorldClockCollectionCellAccessibility;
  v3 = [(MTAWorldClockCollectionCellAccessibility *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTAWorldClockCollectionCellAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MTAWorldClockCollectionCellAccessibility;
  [(MTAWorldClockCollectionCellAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MTAWorldClockCollectionCellAccessibility *)self _axModifyDeleteButton];
}

- (id)accessibilityLabel
{
  v2 = [(MTAWorldClockCollectionCellAccessibility *)self safeValueForKey:@"worldClockView"];
  v3 = [v2 safeValueForKey:@"cityNameLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  return accessibilityLabel;
}

- (BOOL)canBecomeFocused
{
  if (([(MTAWorldClockCollectionCellAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = MTAWorldClockCollectionCellAccessibility;
  return [(MTAWorldClockCollectionCellAccessibility *)&v4 canBecomeFocused];
}

- (void)_axModifyDeleteButton
{
  v3 = [(MTAWorldClockCollectionCellAccessibility *)self safeValueForKey:@"deleteButton"];
  v2 = accessibilityLocalizedString(@"clock.delete");
  [v3 setAccessibilityLabel:v2];
}

@end