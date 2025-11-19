@interface NTK_PUAdjustmentsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NTK_PUAdjustmentsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTK_PUAdjustmentsViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"NTK_PUAdjustmentsViewController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"NTK_PUAdjustmentsViewController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"NTK_PUAdjustmentsViewDataSource" hasRequiredInstanceMethod:@"infoForItemAtIndexPath:"];
  [v3 validateClass:@"NTK_PUAdjustmentInfo" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = NTK_PUAdjustmentsViewControllerAccessibility;
  [(NTK_PUAdjustmentsViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 view];
    [v4 setAccessibilityViewIsModal:1];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = NTK_PUAdjustmentsViewControllerAccessibility;
  v8 = [(NTK_PUAdjustmentsViewControllerAccessibility *)&v20 collectionView:v6 cellForItemAtIndexPath:v7];
  [(NTK_PUAdjustmentsViewControllerAccessibility *)self safeValueForKey:@"dataSource"];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v9 = v19 = 0;
  v10 = v7;
  AXPerformSafeBlock();
  v11 = v15[5];

  _Block_object_dispose(&v14, 8);
  v12 = [v11 safeValueForKey:@"localizedName"];

  if (v12)
  {
    [v8 setAccessibilityLabel:v12];
  }

  return v8;
}

@end