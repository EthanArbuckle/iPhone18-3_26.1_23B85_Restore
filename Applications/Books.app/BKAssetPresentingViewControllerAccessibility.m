@interface BKAssetPresentingViewControllerAccessibility
- (id)bkaxView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation BKAssetPresentingViewControllerAccessibility

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = BKAssetPresentingViewControllerAccessibility;
  [(BKAssetPresentingViewControllerAccessibility *)&v4 viewDidLoad];
  v3 = [(BKAssetPresentingViewControllerAccessibility *)self bkaxView];
  [v3 setAccessibilityViewIsModal:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = BKAssetPresentingViewControllerAccessibility;
  [(BKAssetPresentingViewControllerAccessibility *)&v3 viewDidAppear:a3];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (id)bkaxView
{
  objc_opt_class();
  v3 = [(BKAssetPresentingViewControllerAccessibility *)self imaxValueForKey:@"view"];
  v4 = __IMAccessibilityCastAsClass();

  return v4;
}

@end