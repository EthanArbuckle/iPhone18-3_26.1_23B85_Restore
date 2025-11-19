@interface SFPersonCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SFPersonCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFPersonCollectionViewCell" hasInstanceVariable:@"_secondLabel" withType:"UILabel"];
  [v3 validateClass:@"SFPersonCollectionViewCell" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
  [v3 validateClass:@"SFPersonCollectionViewCell" hasInstanceMethod:@"cellState" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SFPersonCollectionViewCell" hasInstanceMethod:@"circleProgressView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SFPersonCollectionViewCellAccessibility *)self safeValueForKey:@"_secondLabel"];
  if ([v3 _accessibilityViewIsVisible])
  {
    v4 = [(SFPersonCollectionViewCellAccessibility *)self safeValueForKey:@"_secondLabel"];
    v5 = [v4 accessibilityLabel];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SFPersonCollectionViewCellAccessibility *)self safeValueForKey:@"_nameLabel"];
  v7 = [v6 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)accessibilityValue
{
  if ([(SFPersonCollectionViewCellAccessibility *)self safeIntegerForKey:@"cellState"]== 3)
  {
    v3 = [(SFPersonCollectionViewCellAccessibility *)self safeValueForKey:@"circleProgressView"];
    v4 = [v3 accessibilityValue];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SFPersonCollectionViewCellAccessibility;
    v4 = [(SFPersonCollectionViewCellAccessibility *)&v6 accessibilityValue];
  }

  return v4;
}

@end