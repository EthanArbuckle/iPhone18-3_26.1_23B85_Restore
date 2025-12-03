@interface BKAssetPresentingViewControllerAccessibility
- (id)bkaxView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation BKAssetPresentingViewControllerAccessibility

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = BKAssetPresentingViewControllerAccessibility;
  [(BKAssetPresentingViewControllerAccessibility *)&v4 viewDidLoad];
  bkaxView = [(BKAssetPresentingViewControllerAccessibility *)self bkaxView];
  [bkaxView setAccessibilityViewIsModal:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = BKAssetPresentingViewControllerAccessibility;
  [(BKAssetPresentingViewControllerAccessibility *)&v3 viewDidAppear:appear];
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