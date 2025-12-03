@interface BKLibraryBookCoverViewControllerAccessibility
- (id)_bkaxBackButton;
- (id)_bkaxTarget;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_bkaxApplyAccessibilityInfo;
- (void)viewDidLoad;
@end

@implementation BKLibraryBookCoverViewControllerAccessibility

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BKLibraryBookCoverViewControllerAccessibility;
  [(BKLibraryBookCoverViewControllerAccessibility *)&v3 viewDidLoad];
  [(BKLibraryBookCoverViewControllerAccessibility *)self _bkaxApplyAccessibilityInfo];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = BKLibraryBookCoverViewControllerAccessibility;
  [(BKLibraryBookCoverViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(BKLibraryBookCoverViewControllerAccessibility *)self _bkaxApplyAccessibilityInfo];
}

- (id)_bkaxTarget
{
  objc_opt_class();
  v2 = __IMAccessibilityCastAsClass();

  return v2;
}

- (id)_bkaxBackButton
{
  objc_opt_class();
  v3 = [(BKLibraryBookCoverViewControllerAccessibility *)self imaxValueForKey:@"backButton"];
  v4 = __IMAccessibilityCastAsClass();

  return v4;
}

- (void)_bkaxApplyAccessibilityInfo
{
  v4 = sub_1000765EC(@"back.button");
  _bkaxBackButton = [(BKLibraryBookCoverViewControllerAccessibility *)self _bkaxBackButton];
  [_bkaxBackButton setAccessibilityLabel:v4];
}

@end