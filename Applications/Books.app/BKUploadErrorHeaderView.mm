@interface BKUploadErrorHeaderView
- (BKUploadErrorHeaderViewDelegate)delegate;
- (NSLayoutConstraint)underlineHeightConstraint;
- (UIButton)upgradeButton;
- (UILabel)errorLabel;
- (UIView)underlineView;
- (void)awakeFromNib;
- (void)upgradeButtonTouched:(id)touched;
@end

@implementation BKUploadErrorHeaderView

- (void)awakeFromNib
{
  v14.receiver = self;
  v14.super_class = BKUploadErrorHeaderView;
  [(BKUploadErrorHeaderView *)&v14 awakeFromNib];
  [(BKUploadErrorHeaderView *)self bounds];
  v4 = v3;
  [(BKUploadErrorHeaderView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [NSLayoutConstraint constraintWithItem:self attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:v4];
  [(BKUploadErrorHeaderView *)self addConstraint:v5];

  tintColor = [(BKUploadErrorHeaderView *)self tintColor];
  cGColor = [tintColor CGColor];
  upgradeButton = [(BKUploadErrorHeaderView *)self upgradeButton];
  layer = [upgradeButton layer];
  [layer setBorderColor:cGColor];

  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v12 = 1.0 / v11;
  underlineHeightConstraint = [(BKUploadErrorHeaderView *)self underlineHeightConstraint];
  [underlineHeightConstraint setConstant:v12];
}

- (void)upgradeButtonTouched:(id)touched
{
  delegate = [(BKUploadErrorHeaderView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(BKUploadErrorHeaderView *)self delegate];
    [delegate2 uploadErrorHeaderViewUpgradeButtonPressed:self];
  }
}

- (BKUploadErrorHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIButton)upgradeButton
{
  WeakRetained = objc_loadWeakRetained(&self->_upgradeButton);

  return WeakRetained;
}

- (UILabel)errorLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_errorLabel);

  return WeakRetained;
}

- (UIView)underlineView
{
  WeakRetained = objc_loadWeakRetained(&self->_underlineView);

  return WeakRetained;
}

- (NSLayoutConstraint)underlineHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_underlineHeightConstraint);

  return WeakRetained;
}

@end