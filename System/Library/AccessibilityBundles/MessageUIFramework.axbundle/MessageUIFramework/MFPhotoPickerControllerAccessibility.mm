@interface MFPhotoPickerControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation MFPhotoPickerControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFPhotoPickerController" isKindOfClass:@"UICollectionViewController"];
  [v3 validateClass:@"MFPhotoPickerController" hasInstanceMethod:@"photosFetchResult" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFPhotoPickerController" hasInstanceMethod:@"close:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UICollectionViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"navigationItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFPhotoPickerController" isKindOfClass:@"UICollectionViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = MFPhotoPickerControllerAccessibility;
  [(MFPhotoPickerControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = *MEMORY[0x29EDC7F80];
  v4 = [v2 navigationItem];
  v5 = [v4 leftBarButtonItem];
  [v5 setAccessibilityTraits:v3];

  v6 = UIKitAccessibilityLocalizedString();
  v7 = [v2 navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setAccessibilityLabel:v6];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MFPhotoPickerControllerAccessibility;
  v8 = [(MFPhotoPickerControllerAccessibility *)&v15 collectionView:v6 cellForItemAtIndexPath:v7];
  objc_opt_class();
  v9 = [(MFPhotoPickerControllerAccessibility *)self safeValueForKey:@"photosFetchResult"];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [v10 objectAtIndex:{objc_msgSend(v7, "item")}];
  v12 = [v11 accessibilityLabel];
  [v8 setAccessibilityLabel:v12];

  v13 = [v11 accessibilityCustomContent];
  [v8 setAccessibilityCustomContent:v13];

  return v8;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = MFPhotoPickerControllerAccessibility;
  [(MFPhotoPickerControllerAccessibility *)&v7 viewDidLoad];
  [(MFPhotoPickerControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = *MEMORY[0x29EDC7ED8];
  v5 = [v3 navigationItem];
  v6 = [v5 titleView];
  UIAccessibilityPostNotification(v4, v6);
}

@end