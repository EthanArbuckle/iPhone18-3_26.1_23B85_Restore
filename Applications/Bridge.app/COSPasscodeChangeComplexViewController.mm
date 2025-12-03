@interface COSPasscodeChangeComplexViewController
- (COSPasscodeChangeComplexViewControllerDelegate)passcodeChangeDelegate;
- (id)detailText;
- (id)titleText;
- (void)setIsViewVisible:(BOOL)visible;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSPasscodeChangeComplexViewController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = COSPasscodeChangeComplexViewController;
  [(COSPasscodeChangeComplexViewController *)&v4 viewWillAppear:appear];
  if (![(COSPasscodeChangeComplexViewController *)self isViewVisible])
  {
    [(COSPasscodeChangeComplexViewController *)self setIsViewVisible:1];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = COSPasscodeChangeComplexViewController;
  [(COSPasscodeChangeComplexViewController *)&v4 viewDidDisappear:disappear];
  if ([(COSPasscodeChangeComplexViewController *)self isViewVisible])
  {
    [(COSPasscodeChangeComplexViewController *)self setIsViewVisible:0];
  }
}

- (void)setIsViewVisible:(BOOL)visible
{
  if (self->_isViewVisible != visible)
  {
    visibleCopy = visible;
    self->_isViewVisible = visible;
    passcodeChangeDelegate = [(COSPasscodeChangeComplexViewController *)self passcodeChangeDelegate];
    [passcodeChangeDelegate passcodeChangeComplexViewController:self didChangeVisibilityWithIsVisible:visibleCopy];
  }
}

- (id)titleText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"PASSCODE_CHANGING_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailText
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 valueRestrictionForFeature:MCFeatureMinimumPasscodeLength];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &off_100281E40;
  }

  v5 = [NSNumberFormatter localizedStringFromNumber:v4 numberStyle:5];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"PASSCODE_CHANGING_TEXT_COMPLEX_%@" value:&stru_10026E598 table:@"Localizable"];
  v8 = [NSString stringWithFormat:v7, v5];

  return v8;
}

- (COSPasscodeChangeComplexViewControllerDelegate)passcodeChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeChangeDelegate);

  return WeakRetained;
}

@end