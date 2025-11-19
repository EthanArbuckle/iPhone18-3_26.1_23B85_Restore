@interface PKPaymentPreferenceCardCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PKPaymentPreferenceCardCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaymentPreferenceCardCell" hasInstanceVariable:@"_accessoryViewType" withType:"NSInteger"];
  [v3 validateClass:@"PKPaymentPreferenceCardCell" hasInstanceVariable:@"_actionSwitch" withType:"UISwitch"];
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(PKPaymentPreferenceCardCellAccessibility *)self safeIntegerForKey:@"_accessoryViewType"]== 1)
  {
    v3 = [(PKPaymentPreferenceCardCellAccessibility *)self safeValueForKey:@"actionSwitch"];
    [v3 accessibilityActivationPoint];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PKPaymentPreferenceCardCellAccessibility;
    [(PKPaymentPreferenceCardCellAccessibility *)&v10 accessibilityActivationPoint];
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (id)accessibilityValue
{
  if ([(PKPaymentPreferenceCardCellAccessibility *)self safeIntegerForKey:@"_accessoryViewType"]== 1)
  {
    v3 = [(PKPaymentPreferenceCardCellAccessibility *)self safeValueForKey:@"actionSwitch"];
    v4 = [v3 accessibilityValue];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PKPaymentPreferenceCardCellAccessibility;
    v4 = [(PKPaymentPreferenceCardCellAccessibility *)&v6 accessibilityValue];
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  if ([(PKPaymentPreferenceCardCellAccessibility *)self safeIntegerForKey:@"_accessoryViewType"]== 1)
  {
    return *MEMORY[0x29EDC7FE8];
  }

  v4.receiver = self;
  v4.super_class = PKPaymentPreferenceCardCellAccessibility;
  return [(PKPaymentPreferenceCardCellAccessibility *)&v4 accessibilityTraits];
}

@end