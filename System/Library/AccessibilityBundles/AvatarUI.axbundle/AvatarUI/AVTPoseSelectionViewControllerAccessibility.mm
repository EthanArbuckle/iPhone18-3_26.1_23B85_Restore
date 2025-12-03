@interface AVTPoseSelectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setMode:(unint64_t)mode;
@end

@implementation AVTPoseSelectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTPoseSelectionViewController" hasInstanceMethod:@"setMode:" withFullSignature:{"v", "Q", 0}];
  [validationsCopy validateClass:@"AVTPoseSelectionViewController" hasInstanceMethod:@"mode" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"AVTPoseSelectionViewController" hasInstanceMethod:@"headerViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTPoseSelectionViewController" hasInstanceMethod:@"gridViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAnimojiPoseSelectionHeaderViewController" hasInstanceMethod:@"avtView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTPoseSelectionGridViewController" hasInstanceMethod:@"selectedStickerConfiguration" withFullSignature:{"@", 0}];
}

- (void)setMode:(unint64_t)mode
{
  v9.receiver = self;
  v9.super_class = AVTPoseSelectionViewControllerAccessibility;
  [(AVTPoseSelectionViewControllerAccessibility *)&v9 setMode:?];
  if (mode)
  {
    v5 = [(AVTPoseSelectionViewControllerAccessibility *)self safeValueForKeyPath:@"headerViewController.avtView"];
    [v5 setAccessibilityLabel:0];
  }

  else
  {
    objc_opt_class();
    v6 = [(AVTPoseSelectionViewControllerAccessibility *)self safeValueForKeyPath:@"gridViewController.selectedStickerConfiguration"];
    v5 = __UIAccessibilityCastAsClass();

    v7 = [(AVTPoseSelectionViewControllerAccessibility *)self safeValueForKeyPath:@"headerViewController.avtView"];
    localizedName = [v5 localizedName];
    [v7 setAccessibilityLabel:localizedName];
  }
}

@end