@interface WDDataProviderTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (void)_setupUI;
@end

@implementation WDDataProviderTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WDDataProviderTableViewCell" hasInstanceVariable:@"_checkmarkButton" withType:"UIButton"];
  [v3 validateClass:@"WDDataProviderTableViewCell" hasInstanceVariable:@"_sourceStatusLabel" withType:"UILabel"];
  [v3 validateClass:@"WDDataProviderTableViewCell" isKindOfClass:@"UITableViewCell"];
}

- (id)accessibilityLabel
{
  [(WDDataProviderTableViewCellAccessibility *)self safeValueForKey:@"_checkmarkButton"];
  v16 = 0;
  v17 = &v16;
  v18 = 0x4010000000;
  v19 = &unk_29BE55492;
  v20 = 0u;
  v3 = v21 = 0u;
  AXPerformSafeBlock();
  v4 = v17[6];

  _Block_object_dispose(&v16, 8);
  if (v4 <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 safeValueForKey:@"currentTitle"];
  }

  v6 = [(WDDataProviderTableViewCellAccessibility *)self safeValueForKey:@"_sourceStatusLabel"];
  v7 = [v6 safeBoolForKey:@"hidden"];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(WDDataProviderTableViewCellAccessibility *)self safeValueForKey:@"_sourceStatusLabel"];
    v8 = [v9 accessibilityLabel];
  }

  LOBYTE(v16) = 0;
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  if (v16 == 1)
  {
    abort();
  }

  v11 = v10;
  v12 = [v10 textLabel];
  v13 = [v12 text];
  v14 = __UIAXStringForVariables();

  return v14;
}

uint64_t __62__WDDataProviderTableViewCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) frame];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (void)_setupUI
{
  v6.receiver = self;
  v6.super_class = WDDataProviderTableViewCellAccessibility;
  [(WDDataProviderTableViewCellAccessibility *)&v6 _setupUI];
  v3 = [(WDDataProviderTableViewCellAccessibility *)self safeValueForKey:@"_sourceStatusLabel"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(WDDataProviderTableViewCellAccessibility *)self safeValueForKey:@"textLabel"];
  [v4 setIsAccessibilityElement:0];

  v5 = [(WDDataProviderTableViewCellAccessibility *)self safeValueForKey:@"_checkmarkButton"];
  [v5 setIsAccessibilityElement:0];
}

@end