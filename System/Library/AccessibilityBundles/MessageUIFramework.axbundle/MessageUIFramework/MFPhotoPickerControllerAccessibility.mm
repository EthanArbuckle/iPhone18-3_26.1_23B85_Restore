@interface MFPhotoPickerControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation MFPhotoPickerControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFPhotoPickerController" isKindOfClass:@"UICollectionViewController"];
  [validationsCopy validateClass:@"MFPhotoPickerController" hasInstanceMethod:@"photosFetchResult" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFPhotoPickerController" hasInstanceMethod:@"close:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UICollectionViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"navigationItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFPhotoPickerController" isKindOfClass:@"UICollectionViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = MFPhotoPickerControllerAccessibility;
  [(MFPhotoPickerControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = *MEMORY[0x29EDC7F80];
  navigationItem = [v2 navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setAccessibilityTraits:v3];

  v6 = UIKitAccessibilityLocalizedString();
  navigationItem2 = [v2 navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setAccessibilityLabel:v6];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = MFPhotoPickerControllerAccessibility;
  v8 = [(MFPhotoPickerControllerAccessibility *)&v15 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
  objc_opt_class();
  v9 = [(MFPhotoPickerControllerAccessibility *)self safeValueForKey:@"photosFetchResult"];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [v10 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
  accessibilityLabel = [v11 accessibilityLabel];
  [v8 setAccessibilityLabel:accessibilityLabel];

  accessibilityCustomContent = [v11 accessibilityCustomContent];
  [v8 setAccessibilityCustomContent:accessibilityCustomContent];

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
  navigationItem = [v3 navigationItem];
  titleView = [navigationItem titleView];
  UIAccessibilityPostNotification(v4, titleView);
}

@end