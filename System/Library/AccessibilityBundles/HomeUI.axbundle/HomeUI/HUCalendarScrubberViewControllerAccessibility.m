@interface HUCalendarScrubberViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_axLoadAccessibilityInformationForCalendarCell:(id)a3 atIndexPath:(id)a4;
@end

@implementation HUCalendarScrubberViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUCalendarScrubberViewController" isKindOfClass:@"UICollectionViewController"];
  [v3 validateClass:@"HUCalendarScrubberViewController" hasInstanceVariable:@"_dataSource" withType:"HUCalendarScrubberDataSource"];
  [v3 validateClass:@"HUCalendarScrubberDataSource" hasInstanceMethod:@"dateAtIndexPath:" withFullSignature:{"@", 0}];
}

- (void)_axLoadAccessibilityInformationForCalendarCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setIsAccessibilityElement:1];
  location = 0;
  p_location = &location;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v16[1] = MEMORY[0x29EDCA5F8];
  v16[2] = 3221225472;
  v16[3] = __108__HUCalendarScrubberViewControllerAccessibility__axLoadAccessibilityInformationForCalendarCell_atIndexPath___block_invoke;
  v16[4] = &unk_29F2C6B90;
  v16[7] = &location;
  v16[5] = self;
  v8 = v7;
  v16[6] = v8;
  AXPerformSafeBlock();
  v9 = p_location[5];

  _Block_object_dispose(&location, 8);
  v10 = AXDateStringForFormat();
  [v6 setAccessibilityLabel:v10];

  objc_initWeak(&location, v6);
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __108__HUCalendarScrubberViewControllerAccessibility__axLoadAccessibilityInformationForCalendarCell_atIndexPath___block_invoke_2;
  v15[3] = &unk_29F2C6BB8;
  objc_copyWeak(v16, &location);
  [v6 _setAccessibilityTraitsBlock:v15];
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __108__HUCalendarScrubberViewControllerAccessibility__axLoadAccessibilityInformationForCalendarCell_atIndexPath___block_invoke_3;
  v13[3] = &unk_29F2C6B48;
  objc_copyWeak(&v14, &location);
  [v6 _setAccessibilityValueBlock:v13];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __108__HUCalendarScrubberViewControllerAccessibility__axLoadAccessibilityInformationForCalendarCell_atIndexPath___block_invoke_4;
  v11[3] = &unk_29F2C6B48;
  objc_copyWeak(&v12, &location);
  [v6 _setAccessibilityHintBlock:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __108__HUCalendarScrubberViewControllerAccessibility__axLoadAccessibilityInformationForCalendarCell_atIndexPath___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"_dataSource"];
  v2 = [v5 dateAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __108__HUCalendarScrubberViewControllerAccessibility__axLoadAccessibilityInformationForCalendarCell_atIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x29EDC7F70];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained isSelected];

  if (v4)
  {
    v5 = MEMORY[0x29EDC7FC0];
    return *v5 | v2;
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 isUserInteractionEnabled];

  if ((v7 & 1) == 0)
  {
    v5 = MEMORY[0x29EDC7FA8];
    return *v5 | v2;
  }

  return v2;
}

id __108__HUCalendarScrubberViewControllerAccessibility__axLoadAccessibilityInformationForCalendarCell_atIndexPath___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isUserInteractionEnabled])
  {
    v2 = accessibilityHomeUILocalizedString(@"camera.calendar.cell.clips.available");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __108__HUCalendarScrubberViewControllerAccessibility__axLoadAccessibilityInformationForCalendarCell_atIndexPath___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isUserInteractionEnabled])
  {
    v2 = accessibilityHomeUILocalizedString(@"camera.calendar.cell.hint");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = HUCalendarScrubberViewControllerAccessibility;
  v6 = a4;
  v7 = [(HUCalendarScrubberViewControllerAccessibility *)&v9 collectionView:a3 cellForItemAtIndexPath:v6];
  [(HUCalendarScrubberViewControllerAccessibility *)self _axLoadAccessibilityInformationForCalendarCell:v7 atIndexPath:v6, v9.receiver, v9.super_class];

  return v7;
}

@end