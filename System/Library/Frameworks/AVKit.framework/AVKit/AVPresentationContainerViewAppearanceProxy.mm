@interface AVPresentationContainerViewAppearanceProxy
- (UIView)actualView;
- (void)setActualView:(id)a3;
@end

@implementation AVPresentationContainerViewAppearanceProxy

- (UIView)actualView
{
  WeakRetained = objc_loadWeakRetained(&self->_actualView);

  return WeakRetained;
}

- (void)setActualView:(id)a3
{
  v12 = a3;
  objc_storeWeak(&self->_actualView, v12);
  v4 = [(AVPresentationContainerViewAppearanceProxy *)self maskedCorners];
  v5 = [v12 layer];
  [v5 setMaskedCorners:v4];

  v6 = [(AVPresentationContainerViewAppearanceProxy *)self cornerCurve];
  v7 = [v12 layer];
  [v7 setCornerCurve:v6];

  [(AVPresentationContainerViewAppearanceProxy *)self cornerRadius];
  v9 = v8;
  v10 = [v12 layer];
  [v10 setCornerRadius:v9];

  v11 = [(AVPresentationContainerViewAppearanceProxy *)self backgroundColor];
  [v12 setBackgroundColor:v11];

  [v12 setClipsToBounds:{-[AVPresentationContainerViewAppearanceProxy clipsToBounds](self, "clipsToBounds")}];
}

@end