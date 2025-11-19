@interface PKPaymentSetupHeroViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (PKPaymentSetupHeroViewAccessibility)initWithContext:(int64_t)a3 featuredPaymentNetworks:(id)a4;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKPaymentSetupHeroViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaymentSetupHeroView" hasInstanceVariable:@"_context" withType:"q"];
  [v3 validateClass:@"PKPaymentSetupHeroView" hasInstanceMethod:@"_isSmallPhone" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = PKPaymentSetupHeroViewAccessibility;
  [(PKPaymentSetupHeroViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (id)accessibilityLabel
{
  v3 = [(PKPaymentSetupHeroViewAccessibility *)self safeIntegerForKey:@"_context"];
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v4 = @"payment.hero.watch";
  }

  else if (v3)
  {
    if (([(PKPaymentSetupHeroViewAccessibility *)self safeBoolForKey:@"_isSmallPhone"]& 1) != 0)
    {
      v4 = @"payment.hero.label.small.phone";
    }

    else if (AXDeviceHasPearl())
    {
      v4 = @"payment.hero.label.face.id";
    }

    else
    {
      v4 = @"payment.hero.label.touch.id";
    }
  }

  else
  {
    v4 = @"setup.card.image";
  }

  v5 = accessibilityLocalizedString(v4);

  return v5;
}

- (PKPaymentSetupHeroViewAccessibility)initWithContext:(int64_t)a3 featuredPaymentNetworks:(id)a4
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupHeroViewAccessibility;
  v4 = [(PKPaymentSetupHeroViewAccessibility *)&v6 initWithContext:a3 featuredPaymentNetworks:a4];
  [(PKPaymentSetupHeroViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end