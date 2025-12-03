@interface SKUIChartColumnHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation SKUIChartColumnHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIChartColumnHeaderView" hasInstanceVariable:@"_buttons" withType:"NSArray"];
  [validationsCopy validateClass:@"SKUIChartColumnHeaderView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17 = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = SKUIChartColumnHeaderViewAccessibility;
  [(SKUIChartColumnHeaderViewAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(SKUIChartColumnHeaderViewAccessibility *)self safeValueForKey:@"_buttons", 0];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = *MEMORY[0x29EDC7F80];
    v8 = *MEMORY[0x29EDC7F70];
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v9++) setAccessibilityTraits:v8 | v7];
      }

      while (v5 != v9);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SKUIChartColumnHeaderViewAccessibility;
  [(SKUIChartColumnHeaderViewAccessibility *)&v3 layoutSubviews];
  [(SKUIChartColumnHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end