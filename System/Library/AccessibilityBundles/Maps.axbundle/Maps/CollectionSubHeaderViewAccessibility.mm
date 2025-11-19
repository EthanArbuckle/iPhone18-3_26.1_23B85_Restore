@interface CollectionSubHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)createEditContent;
- (void)createSaveContent;
@end

@implementation CollectionSubHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CollectionSubHeaderView" hasInstanceVariable:@"_contentView" withType:"UIView"];
  [v3 validateClass:@"CollectionSubHeaderView" hasInstanceVariable:@"_sortButton" withType:"UIButton"];
  [v3 validateClass:@"CollectionSubHeaderView" hasInstanceVariable:@"_saveButton" withType:"UIButton"];
  [v3 validateClass:@"CollectionSubHeaderView" hasInstanceMethod:@"createEditContent" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CollectionSubHeaderView" hasInstanceMethod:@"createSaveContent" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = CollectionSubHeaderViewAccessibility;
  [(CollectionSubHeaderViewAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v3 = [(CollectionSubHeaderViewAccessibility *)self safeUIViewForKey:@"_contentView"];
  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  objc_initWeak(&location, v3);
  objc_initWeak(&from, self);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __82__CollectionSubHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_29F2CC418;
  objc_copyWeak(&v8, &location);
  [v3 _setAccessibilityLabelBlock:v7];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __82__CollectionSubHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v4[3] = &unk_29F2CC440;
  v4[4] = self;
  objc_copyWeak(&v5, &from);
  objc_copyWeak(&v6, &location);
  [v3 _setAccessibilityActivationPointBlock:v4];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

id __82__CollectionSubHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = UIAXStringForAllChildren();

  return v2;
}

double __82__CollectionSubHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(id *a1)
{
  v2 = [a1[4] safeUnsignedIntegerForKey:@"type"];
  if (v2 == 2)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 5);
    v4 = WeakRetained;
    v5 = @"_saveButton";
  }

  else
  {
    if (v2 != 1)
    {
      v4 = objc_loadWeakRetained(a1 + 6);
      v6 = [v4 superview];
      goto LABEL_7;
    }

    WeakRetained = objc_loadWeakRetained(a1 + 5);
    v4 = WeakRetained;
    v5 = @"_sortButton";
  }

  v6 = [WeakRetained safeUIViewForKey:v5];
LABEL_7:
  v7 = v6;
  [v6 accessibilityActivationPoint];
  v9 = v8;

  return v9;
}

- (void)createEditContent
{
  v3.receiver = self;
  v3.super_class = CollectionSubHeaderViewAccessibility;
  [(CollectionSubHeaderViewAccessibility *)&v3 createEditContent];
  [(CollectionSubHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)createSaveContent
{
  v3.receiver = self;
  v3.super_class = CollectionSubHeaderViewAccessibility;
  [(CollectionSubHeaderViewAccessibility *)&v3 createSaveContent];
  [(CollectionSubHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end