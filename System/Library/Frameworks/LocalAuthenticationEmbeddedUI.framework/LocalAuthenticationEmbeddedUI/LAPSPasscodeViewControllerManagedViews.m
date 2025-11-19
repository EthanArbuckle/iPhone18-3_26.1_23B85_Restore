@interface LAPSPasscodeViewControllerManagedViews
- (LACUIPasscodeField)passcodeFieldVC;
- (UILabel)errorCapsule;
- (UILabel)footerLabel;
- (UILabel)headerLabel;
- (UILabel)subHeaderLabel;
- (UIScrollView)scrollView;
- (UIView)errorCapsuleContainer;
@end

@implementation LAPSPasscodeViewControllerManagedViews

- (UILabel)headerLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_headerLabel);

  return WeakRetained;
}

- (UILabel)subHeaderLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_subHeaderLabel);

  return WeakRetained;
}

- (UILabel)footerLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_footerLabel);

  return WeakRetained;
}

- (UILabel)errorCapsule
{
  WeakRetained = objc_loadWeakRetained(&self->_errorCapsule);

  return WeakRetained;
}

- (UIView)errorCapsuleContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_errorCapsuleContainer);

  return WeakRetained;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (LACUIPasscodeField)passcodeFieldVC
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeFieldVC);

  return WeakRetained;
}

@end