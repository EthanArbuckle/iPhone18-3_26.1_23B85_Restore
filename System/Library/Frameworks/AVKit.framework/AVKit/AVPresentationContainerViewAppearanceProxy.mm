@interface AVPresentationContainerViewAppearanceProxy
- (UIView)actualView;
- (void)setActualView:(id)view;
@end

@implementation AVPresentationContainerViewAppearanceProxy

- (UIView)actualView
{
  WeakRetained = objc_loadWeakRetained(&self->_actualView);

  return WeakRetained;
}

- (void)setActualView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_actualView, viewCopy);
  maskedCorners = [(AVPresentationContainerViewAppearanceProxy *)self maskedCorners];
  layer = [viewCopy layer];
  [layer setMaskedCorners:maskedCorners];

  cornerCurve = [(AVPresentationContainerViewAppearanceProxy *)self cornerCurve];
  layer2 = [viewCopy layer];
  [layer2 setCornerCurve:cornerCurve];

  [(AVPresentationContainerViewAppearanceProxy *)self cornerRadius];
  v9 = v8;
  layer3 = [viewCopy layer];
  [layer3 setCornerRadius:v9];

  backgroundColor = [(AVPresentationContainerViewAppearanceProxy *)self backgroundColor];
  [viewCopy setBackgroundColor:backgroundColor];

  [viewCopy setClipsToBounds:{-[AVPresentationContainerViewAppearanceProxy clipsToBounds](self, "clipsToBounds")}];
}

@end