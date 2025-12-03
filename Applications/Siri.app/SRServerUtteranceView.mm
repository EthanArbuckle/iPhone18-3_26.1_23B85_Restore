@interface SRServerUtteranceView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SRServerUtteranceView)initWithFrame:(CGRect)frame;
- (double)_scaledSiriCorrectionViewLeading;
- (double)baselineOffsetFromBottom;
- (double)firstLineBaselineOffsetFromTop;
- (void)layoutSubviews;
- (void)setAttributedText:(id)text;
- (void)setBlendEffectEnabled:(BOOL)enabled;
- (void)setChevronHidden:(BOOL)hidden;
- (void)setText:(id)text;
@end

@implementation SRServerUtteranceView

- (SRServerUtteranceView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = SRServerUtteranceView;
  v3 = [(SRServerUtteranceView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[SiriSharedUIContentLabel label];
    label = v3->_label;
    v3->_label = v4;

    v6 = v3->_label;
    v7 = +[UIColor siriui_lightTextColor];
    [(SiriSharedUIContentLabel *)v6 setTextColor:v7];

    v8 = v3->_label;
    v9 = +[UIFont siriui_serverUtteranceFont];
    [(SiriSharedUIContentLabel *)v8 setFont:v9];

    [(SiriSharedUIContentLabel *)v3->_label setNumberOfLines:0];
    v10 = v3->_label;
    SiriUITextHyphenationFactor();
    *&v11 = v11;
    [(SiriSharedUIContentLabel *)v10 _setHyphenationFactor:v11];
    [(SRServerUtteranceView *)v3 addSubview:v3->_label];
    [(SRServerUtteranceView *)v3 setChevronHidden:1];
    v12 = SiriUIDefaultEdgePadding;
    v3->_edgeInsets.top = 0.0;
    v3->_edgeInsets.leading = v12;
    v3->_edgeInsets.bottom = 0.0;
    v3->_edgeInsets.trailing = v12;
  }

  return v3;
}

- (void)setChevronHidden:(BOOL)hidden
{
  if (!hidden)
  {
    self->_chevronHasBeenShown = 1;
  }

  [(SRServerUtteranceView *)self setNeedsLayout];
}

- (double)firstLineBaselineOffsetFromTop
{
  font = [(SiriSharedUIContentLabel *)self->_label font];
  [font ascender];
  v4 = v3;

  return v4;
}

- (double)baselineOffsetFromBottom
{
  font = [(SiriSharedUIContentLabel *)self->_label font];
  [font descender];
  v4 = -v3;

  return v4;
}

- (void)setText:(id)text
{
  textCopy = text;
  if (textCopy)
  {
    v5 = textCopy;
  }

  else
  {
    v5 = &stru_10016AE90;
  }

  v6 = v5;
  [(SiriSharedUIContentLabel *)self->_label setText:?];
  [(SRServerUtteranceView *)self setNeedsLayout];
}

- (void)setAttributedText:(id)text
{
  if (text)
  {
    [(SiriSharedUIContentLabel *)self->_label setAttributedText:?];

    [(SRServerUtteranceView *)self setNeedsLayout];
  }

  else
  {

    [(SRServerUtteranceView *)self setText:?];
  }
}

- (void)setBlendEffectEnabled:(BOOL)enabled
{
  if (self->_blendEffectEnabled != enabled)
  {
    v15 = v6;
    v16 = v5;
    v17 = v4;
    v18 = v3;
    enabledCopy = enabled;
    self->_blendEffectEnabled = enabled;
    label = self->_label;
    if (enabled)
    {
      +[UIColor siriui_blendEffectColor];
    }

    else
    {
      +[UIColor siriui_lightTextColor];
    }
    v14 = ;
    [(SiriSharedUIContentLabel *)label setTextColor:v14, v8, v7, v15, v16, v17, v18, v9];

    [(SiriSharedUIContentLabel *)self->_label siriui_setBlendEffectEnabled:enabledCopy];

    [(SRServerUtteranceView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  SiriUIUtteranceWidthForAvailableWidthAndInsets();
  [(SiriSharedUIContentLabel *)self->_label sizeThatFits:?];
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  [(SRServerUtteranceView *)self recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
  v12.receiver = self;
  v12.super_class = SRServerUtteranceView;
  [(SRServerUtteranceView *)&v12 layoutSubviews];
  [(SRServerUtteranceView *)self bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  CGRectGetWidth(v13);
  SiriUIUtteranceWidthForAvailableWidthAndInsets();
  v8 = v7;
  if (SiriLanguageIsRTL())
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    leading = CGRectGetWidth(v14) - v8 - self->_edgeInsets.leading;
    v10 = 2;
  }

  else
  {
    v10 = 0;
    leading = self->_edgeInsets.leading;
  }

  [(SiriSharedUIContentLabel *)self->_label setTextAlignment:v10];
  [(SiriSharedUIContentLabel *)self->_label sizeThatFits:v8, 1.79769313e308];
  [(SiriSharedUIContentLabel *)self->_label setFrame:leading, y, v8, v11];
}

- (double)_scaledSiriCorrectionViewLeading
{
  v2 = +[UIFont siriui_serverUtteranceCorrectionPromptFont];
  [v2 _scaledValueForValue:28.0];
  v4 = v3;

  return v4;
}

@end