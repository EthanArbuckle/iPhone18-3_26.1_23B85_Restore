@interface AVTPoseSelectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setMode:(unint64_t)a3;
@end

@implementation AVTPoseSelectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTPoseSelectionViewController" hasInstanceMethod:@"setMode:" withFullSignature:{"v", "Q", 0}];
  [v3 validateClass:@"AVTPoseSelectionViewController" hasInstanceMethod:@"mode" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"AVTPoseSelectionViewController" hasInstanceMethod:@"headerViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTPoseSelectionViewController" hasInstanceMethod:@"gridViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTAnimojiPoseSelectionHeaderViewController" hasInstanceMethod:@"avtView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTPoseSelectionGridViewController" hasInstanceMethod:@"selectedStickerConfiguration" withFullSignature:{"@", 0}];
}

- (void)setMode:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = AVTPoseSelectionViewControllerAccessibility;
  [(AVTPoseSelectionViewControllerAccessibility *)&v9 setMode:?];
  if (a3)
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
    v8 = [v5 localizedName];
    [v7 setAccessibilityLabel:v8];
  }
}

@end