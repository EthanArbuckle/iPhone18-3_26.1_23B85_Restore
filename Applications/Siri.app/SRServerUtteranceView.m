@interface SRServerUtteranceView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SRServerUtteranceView)initWithFrame:(CGRect)a3;
- (double)_scaledSiriCorrectionViewLeading;
- (double)baselineOffsetFromBottom;
- (double)firstLineBaselineOffsetFromTop;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
- (void)setBlendEffectEnabled:(BOOL)a3;
- (void)setChevronHidden:(BOOL)a3;
- (void)setText:(id)a3;
@end

@implementation SRServerUtteranceView

- (SRServerUtteranceView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = SRServerUtteranceView;
  v3 = [(SRServerUtteranceView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setChevronHidden:(BOOL)a3
{
  if (!a3)
  {
    self->_chevronHasBeenShown = 1;
  }

  [(SRServerUtteranceView *)self setNeedsLayout];
}

- (double)firstLineBaselineOffsetFromTop
{
  v2 = [(SiriSharedUIContentLabel *)self->_label font];
  [v2 ascender];
  v4 = v3;

  return v4;
}

- (double)baselineOffsetFromBottom
{
  v2 = [(SiriSharedUIContentLabel *)self->_label font];
  [v2 descender];
  v4 = -v3;

  return v4;
}

- (void)setText:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_10016AE90;
  }

  v6 = v5;
  [(SiriSharedUIContentLabel *)self->_label setText:?];
  [(SRServerUtteranceView *)self setNeedsLayout];
}

- (void)setAttributedText:(id)a3
{
  if (a3)
  {
    [(SiriSharedUIContentLabel *)self->_label setAttributedText:?];

    [(SRServerUtteranceView *)self setNeedsLayout];
  }

  else
  {

    [(SRServerUtteranceView *)self setText:?];
  }
}

- (void)setBlendEffectEnabled:(BOOL)a3
{
  if (self->_blendEffectEnabled != a3)
  {
    v15 = v6;
    v16 = v5;
    v17 = v4;
    v18 = v3;
    v11 = a3;
    self->_blendEffectEnabled = a3;
    label = self->_label;
    if (a3)
    {
      +[UIColor siriui_blendEffectColor];
    }

    else
    {
      +[UIColor siriui_lightTextColor];
    }
    v14 = ;
    [(SiriSharedUIContentLabel *)label setTextColor:v14, v8, v7, v15, v16, v17, v18, v9];

    [(SiriSharedUIContentLabel *)self->_label siriui_setBlendEffectEnabled:v11];

    [(SRServerUtteranceView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
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