@interface CRLiOSPresetCollectionViewCell
- (UIButton)presetButton;
- (void)prepareForReuse;
@end

@implementation CRLiOSPresetCollectionViewCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CRLiOSPresetCollectionViewCell;
  [(CRLiOSPresetCollectionViewCell *)&v4 prepareForReuse];
  presetButton = [(CRLiOSPresetCollectionViewCell *)self presetButton];
  [presetButton setImage:0 forState:0];
}

- (UIButton)presetButton
{
  WeakRetained = objc_loadWeakRetained(&self->_presetButton);

  return WeakRetained;
}

@end