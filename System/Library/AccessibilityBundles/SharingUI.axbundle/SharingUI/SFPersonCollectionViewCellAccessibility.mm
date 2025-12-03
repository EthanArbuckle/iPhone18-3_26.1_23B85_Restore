@interface SFPersonCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SFPersonCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFPersonCollectionViewCell" hasInstanceVariable:@"_secondLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SFPersonCollectionViewCell" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SFPersonCollectionViewCell" hasInstanceMethod:@"cellState" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SFPersonCollectionViewCell" hasInstanceMethod:@"circleProgressView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SFPersonCollectionViewCellAccessibility *)self safeValueForKey:@"_secondLabel"];
  if ([v3 _accessibilityViewIsVisible])
  {
    v4 = [(SFPersonCollectionViewCellAccessibility *)self safeValueForKey:@"_secondLabel"];
    accessibilityLabel = [v4 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  v6 = [(SFPersonCollectionViewCellAccessibility *)self safeValueForKey:@"_nameLabel"];
  accessibilityLabel2 = [v6 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)accessibilityValue
{
  if ([(SFPersonCollectionViewCellAccessibility *)self safeIntegerForKey:@"cellState"]== 3)
  {
    v3 = [(SFPersonCollectionViewCellAccessibility *)self safeValueForKey:@"circleProgressView"];
    accessibilityValue = [v3 accessibilityValue];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SFPersonCollectionViewCellAccessibility;
    accessibilityValue = [(SFPersonCollectionViewCellAccessibility *)&v6 accessibilityValue];
  }

  return accessibilityValue;
}

@end