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
  v3 = [(CRLiOSPresetCollectionViewCell *)self presetButton];
  [v3 setImage:0 forState:0];
}

- (UIButton)presetButton
{
  WeakRetained = objc_loadWeakRetained(&self->_presetButton);

  return WeakRetained;
}

@end