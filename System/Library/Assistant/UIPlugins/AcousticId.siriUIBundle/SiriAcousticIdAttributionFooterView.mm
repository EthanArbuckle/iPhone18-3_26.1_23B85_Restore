@interface SiriAcousticIdAttributionFooterView
- (SiriAcousticIdAttributionFooterView)initWithFrame:(CGRect)frame;
- (SiriAcousticIdAttributionFooterViewDelegate)delegate;
- (void)_attributionButtonClicked:(id)clicked;
- (void)_updateAttributionButton:(id)button withImage:(id)image;
- (void)layoutSubviews;
- (void)setAttributionPunchOut:(id)out;
@end

@implementation SiriAcousticIdAttributionFooterView

- (SiriAcousticIdAttributionFooterView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SiriAcousticIdAttributionFooterView;
  v3 = [(SiriAcousticIdAttributionFooterView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    attributionButton = v3->_attributionButton;
    v3->_attributionButton = v4;

    [(UIButton *)v3->_attributionButton _setTouchInsets:-0.3, -0.3, -0.3, -0.3];
    [(UIButton *)v3->_attributionButton setEnabled:0];
    [(UIButton *)v3->_attributionButton addTarget:v3 action:"_attributionButtonClicked:" forControlEvents:64];
    [(SiriAcousticIdAttributionFooterView *)v3 addSubview:v3->_attributionButton];
  }

  return v3;
}

- (void)_attributionButtonClicked:(id)clicked
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained attributionFooterViewButtonWasTapped:self];
}

- (void)setAttributionPunchOut:(id)out
{
  outCopy = out;
  if (self->_attributionPunchOut != outCopy)
  {
    objc_storeStrong(&self->_attributionPunchOut, out);
    v6 = [SiriUIAttributionImage attributionImageFromAppPunchOut:self->_attributionPunchOut];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_26F8;
    v7[3] = &unk_8298;
    v7[4] = self;
    v8 = outCopy;
    [v6 getLogoWithCompletion:v7];
  }
}

- (void)_updateAttributionButton:(id)button withImage:(id)image
{
  buttonCopy = button;
  imageCopy = image;
  v8 = +[UIColor siriui_maskingColor];
  v9 = [imageCopy _flatImageWithColor:v8];

  [buttonCopy setImage:v9 forState:0];
  v10 = +[UIColor siriui_maskingHighlightColor];
  v11 = [imageCopy _flatImageWithColor:v10];

  [buttonCopy setImage:v11 forState:4];
  [imageCopy size];
  v13 = v12;
  [imageCopy size];
  v15 = v14;

  [buttonCopy setFrame:{0.0, 0.0, v13, v15}];
  [buttonCopy setEnabled:1];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_2978;
  v17[3] = &unk_82C0;
  v18 = buttonCopy;
  v16 = buttonCopy;
  [UIView animateWithDuration:v17 animations:0.2];
  [(SiriAcousticIdAttributionFooterView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [(SiriAcousticIdAttributionFooterView *)self setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
  v14.receiver = self;
  v14.super_class = SiriAcousticIdAttributionFooterView;
  [(SiriAcousticIdAttributionFooterView *)&v14 layoutSubviews];
  semanticContentAttribute = [(SiriAcousticIdAttributionFooterView *)self semanticContentAttribute];
  [(UIButton *)self->_attributionButton frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (semanticContentAttribute == &dword_4)
  {
    v11 = SiriUIPlatterStyle[32];
  }

  else
  {
    v12 = v4;
    [(SiriAcousticIdAttributionFooterView *)self bounds];
    CGRectGetWidth(v15);
    v16.origin.x = v12;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    CGRectGetWidth(v16);
    v13 = SiriUIPlatterStyle[34];
  }

  [(SiriAcousticIdAttributionFooterView *)self bounds];
  UIRectCenteredYInRect();
  [(UIButton *)self->_attributionButton setFrame:?];
}

- (SiriAcousticIdAttributionFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end