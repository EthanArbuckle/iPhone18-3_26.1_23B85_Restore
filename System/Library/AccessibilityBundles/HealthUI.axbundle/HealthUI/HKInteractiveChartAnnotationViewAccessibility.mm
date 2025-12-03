@interface HKInteractiveChartAnnotationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HKInteractiveChartAnnotationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HKInteractiveChartAnnotationView" hasInstanceMethod:@"bodyMarginsLayout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKInteractiveChartAnnotationView" hasInstanceMethod:@"infoButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_HKBodyMarginsLayout" hasInstanceMethod:@"bodyView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_HKDateContentLayout" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_HKAnnotationColumnLayout" hasInstanceMethod:@"columnViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKInteractiveChartAnnotationViewKeyValueLabel" hasInstanceMethod:@"tapOutBlock" withFullSignature:{"@?", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(HKInteractiveChartAnnotationViewAccessibility *)self safeUIViewForKey:@"infoButton"];
  array = [MEMORY[0x29EDB8DE8] array];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __67__HKInteractiveChartAnnotationViewAccessibility_accessibilityLabel__block_invoke;
  v10[3] = &unk_29F2C4478;
  v10[4] = self;
  v11 = v3;
  v12 = array;
  v5 = array;
  v6 = v3;
  v7 = [(HKInteractiveChartAnnotationViewAccessibility *)self _accessibilityFindDescendant:v10];
  v8 = MEMORY[0x29C2D9140](v5);

  return v8;
}

uint64_t __67__HKInteractiveChartAnnotationViewAccessibility_accessibilityLabel__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[4] != v3 && a1[5] != v3 && [v3 isAccessibilityElement])
  {
    [a1[6] addObject:v4];
  }

  return 0;
}

- (unint64_t)accessibilityTraits
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = [(HKInteractiveChartAnnotationViewAccessibility *)self safeValueForKeyPath:@"bodyMarginsLayout.bodyView.contentView"];
  v4 = [v3 safeArrayForKey:@"columnViews"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) safeValueForKey:@"tapOutBlock"];
        v7 |= v10 != 0;
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v15.receiver = self;
  v15.super_class = HKInteractiveChartAnnotationViewAccessibility;
  accessibilityTraits = [(HKInteractiveChartAnnotationViewAccessibility *)&v15 accessibilityTraits];
  if (v7)
  {
    v12 = *MEMORY[0x29EDC7F70];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x29EDCA608];
  return v12 | accessibilityTraits;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v7[1] = *MEMORY[0x29EDCA608];
  v2 = [(HKInteractiveChartAnnotationViewAccessibility *)self safeUIViewForKey:@"infoButton"];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];

  return v4;
}

@end