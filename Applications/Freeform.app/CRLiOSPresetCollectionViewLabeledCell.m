@interface CRLiOSPresetCollectionViewLabeledCell
- (NSLayoutConstraint)labelVerticalSpacingConstraint;
- (NSLayoutConstraint)presetViewLeadingConstraint;
- (NSLayoutConstraint)presetViewTrailingConstraint;
- (UIButton)presetButton;
- (UILabel)label;
- (UITextField)textField;
@end

@implementation CRLiOSPresetCollectionViewLabeledCell

- (UIButton)presetButton
{
  WeakRetained = objc_loadWeakRetained(&self->_presetButton);

  return WeakRetained;
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

- (UITextField)textField
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);

  return WeakRetained;
}

- (NSLayoutConstraint)labelVerticalSpacingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_labelVerticalSpacingConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)presetViewLeadingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_presetViewLeadingConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)presetViewTrailingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_presetViewTrailingConstraint);

  return WeakRetained;
}

@end