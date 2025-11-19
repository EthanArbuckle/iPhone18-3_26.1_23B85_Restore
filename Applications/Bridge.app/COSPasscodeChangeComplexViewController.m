@interface COSPasscodeChangeComplexViewController
- (COSPasscodeChangeComplexViewControllerDelegate)passcodeChangeDelegate;
- (id)detailText;
- (id)titleText;
- (void)setIsViewVisible:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSPasscodeChangeComplexViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = COSPasscodeChangeComplexViewController;
  [(COSPasscodeChangeComplexViewController *)&v4 viewWillAppear:a3];
  if (![(COSPasscodeChangeComplexViewController *)self isViewVisible])
  {
    [(COSPasscodeChangeComplexViewController *)self setIsViewVisible:1];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = COSPasscodeChangeComplexViewController;
  [(COSPasscodeChangeComplexViewController *)&v4 viewDidDisappear:a3];
  if ([(COSPasscodeChangeComplexViewController *)self isViewVisible])
  {
    [(COSPasscodeChangeComplexViewController *)self setIsViewVisible:0];
  }
}

- (void)setIsViewVisible:(BOOL)a3
{
  if (self->_isViewVisible != a3)
  {
    v4 = a3;
    self->_isViewVisible = a3;
    v6 = [(COSPasscodeChangeComplexViewController *)self passcodeChangeDelegate];
    [v6 passcodeChangeComplexViewController:self didChangeVisibilityWithIsVisible:v4];
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