@interface NTK_PUAdjustmentsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NTK_PUAdjustmentsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTK_PUAdjustmentsViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"NTK_PUAdjustmentsViewController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"NTK_PUAdjustmentsViewController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"NTK_PUAdjustmentsViewDataSource" hasRequiredInstanceMethod:@"infoForItemAtIndexPath:"];
  [validationsCopy validateClass:@"NTK_PUAdjustmentInfo" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
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
    view = [v2 view];
    [view setAccessibilityViewIsModal:1];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = NTK_PUAdjustmentsViewControllerAccessibility;
  v8 = [(NTK_PUAdjustmentsViewControllerAccessibility *)&v20 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
  [(NTK_PUAdjustmentsViewControllerAccessibility *)self safeValueForKey:@"dataSource"];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v9 = v19 = 0;
  v10 = pathCopy;
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