@interface CRLiOSPresetCollectionView
- (CRLiOSPresetCollectionViewDelegate)presetCollectionViewDelegate;
- (void)layoutSubviews;
@end

@implementation CRLiOSPresetCollectionView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CRLiOSPresetCollectionView;
  [(CRLiOSPresetCollectionView *)&v4 layoutSubviews];
  v3 = [(CRLiOSPresetCollectionView *)self presetCollectionViewDelegate];
  [v3 presetCollectionViewDidLayoutSubviews:self];
}

- (CRLiOSPresetCollectionViewDelegate)presetCollectionViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presetCollectionViewDelegate);

  return WeakRetained;
}

@end