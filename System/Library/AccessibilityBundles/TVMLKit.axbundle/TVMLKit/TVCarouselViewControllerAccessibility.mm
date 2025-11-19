@interface TVCarouselViewControllerAccessibility
@end

@implementation TVCarouselViewControllerAccessibility

id __84___TVCarouselViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:@"headerView"];
  v3 = [v2 subviews];
  v4 = MEMORY[0x29ED3B640]();

  return v4;
}

id __84___TVCarouselViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 safeIntegerForKey:@"currentPage"];
  v4 = [WeakRetained safeValueForKey:@"_collectionElement"];
  v5 = [v4 safeArrayForKey:@"sections"];
  v6 = [v5 firstObject];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v13 = v6;
  AXPerformSafeBlock();
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);
  v8 = [v7 safeDictionaryForKey:@"_dataDictionary"];

  v9 = [v8 objectForKey:@"ImageAX"];

  v12 = [v3 accessibilityValue];
  v10 = __UIAXStringForVariables();

  return v10;
}

uint64_t __84___TVCarouselViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_335(uint64_t a1)
{
  v2 = [*(a1 + 32) elementForItemAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

void __84___TVCarouselViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2_343(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityIncrement];
}

void __84___TVCarouselViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityDecrement];
}

@end