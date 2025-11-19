@interface SRTapToEditView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SRTapToEditView)initWithFrame:(CGRect)a3;
- (double)_circleToLabelHeightDifference;
- (double)baselineOffsetFromBottom;
- (double)firstLineBaselineOffsetFromTop;
- (void)_setHighlighted:(BOOL)a3;
- (void)layoutSubviews;
@end

@implementation SRTapToEditView

- (SRTapToEditView)initWithFrame:(CGRect)a3
{
  v29.receiver = self;
  v29.super_class = SRTapToEditView;
  v3 = [(SRTapToEditView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    tapToEditLabel = v3->_tapToEditLabel;
    v3->_tapToEditLabel = v5;

    v7 = v3->_tapToEditLabel;
    v8 = +[UIFont siriui_serverUtteranceCorrectionPromptFont];
    [(UILabel *)v7 setFont:v8];

    v9 = v3->_tapToEditLabel;
    v10 = +[UIColor siriui_tapToEditColor];
    [(UILabel *)v9 setTextColor:v10];

    v11 = v3->_tapToEditLabel;
    v12 = [v4 siriUILocalizedStringForKey:@"TAP_TO_EDIT" table:0];
    [(UILabel *)v11 setText:v12];

    [(UILabel *)v3->_tapToEditLabel sizeToFit];
    [(SRTapToEditView *)v3 addSubview:v3->_tapToEditLabel];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [UIImage imageNamed:@"Circle" inBundle:v13];
    v15 = [v14 imageWithRenderingMode:2];

    v16 = [SiriUIContentButton buttonWithImageTemplate:v15 style:0];
    circleButton = v3->_circleButton;
    v3->_circleButton = v16;

    [(SiriUIContentButton *)v3->_circleButton setUserInteractionEnabled:0];
    [(SiriUIContentButton *)v3->_circleButton setAlpha:0.12];
    [(SiriUIContentButton *)v3->_circleButton sizeToFit];
    [(SRTapToEditView *)v3 addSubview:v3->_circleButton];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [UIImage imageNamed:@"Chevron" inBundle:v18];
    v20 = [v19 imageWithRenderingMode:2];

    if (SiriLanguageIsRTL())
    {
      v21 = [v20 imageWithHorizontallyFlippedOrientation];

      v20 = v21;
    }

    v22 = [SiriUIContentButton buttonWithImageTemplate:v20 style:0];
    chevronButton = v3->_chevronButton;
    v3->_chevronButton = v22;

    [(SiriUIContentButton *)v3->_chevronButton setUserInteractionEnabled:0];
    v24 = v3->_chevronButton;
    v25 = +[UIColor siriui_tapToEditColor];
    [(SiriUIContentButton *)v24 setDefaultColorForTemplate:v25];

    v26 = v3->_chevronButton;
    v27 = +[UIColor siriui_tapToEditMaskingColor];
    [(SiriUIContentButton *)v26 setHighlightColorForTemplate:v27];

    [(SiriUIContentButton *)v3->_chevronButton sizeToFit];
    [(SRTapToEditView *)v3 addSubview:v3->_chevronButton];
    [(SiriUIContentButton *)v3->_chevronButton siriui_setBlendEffectEnabled:1];
    [(UILabel *)v3->_tapToEditLabel siriui_setBlendEffectEnabled:1];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UILabel *)self->_tapToEditLabel sizeThatFits:?];
  v7 = v6;
  v9 = v8 + 10.0;
  [(SiriUIContentButton *)self->_circleButton sizeThatFits:width, height];
  v12 = v9 + v11;
  if (v7 >= v10)
  {
    v10 = v7;
  }

  result.height = v10;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = SRTapToEditView;
  [(SRTapToEditView *)&v30 layoutSubviews];
  circleButton = self->_circleButton;
  [(SRTapToEditView *)self bounds];
  [(SiriUIContentButton *)circleButton sizeThatFits:v4, v5];
  v7 = v6;
  v9 = v8;
  tapToEditLabel = self->_tapToEditLabel;
  [(SRTapToEditView *)self bounds];
  [(UILabel *)tapToEditLabel sizeThatFits:v11, v12];
  v14 = v13;
  v16 = v15;
  v17 = v9 - v15;
  v18 = +[UIScreen mainScreen];
  [v18 scale];
  v20 = v19;

  v21 = v17 * -0.5;
  v22 = floor(v17 * -0.5);
  if (v20 < 2.0)
  {
    v21 = v22;
  }

  v23 = 0.0;
  v24 = v17 * 0.5;
  v25 = floor(v17 * 0.5);
  if (v20 < 2.0)
  {
    v24 = v25;
  }

  v26 = v17 <= 0.0;
  if (v17 > 0.0)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0.0;
  }

  if (v26)
  {
    v28 = v21;
  }

  else
  {
    v28 = 0.0;
  }

  if (SiriLanguageIsRTL())
  {
    v29 = 0.0;
    v31.origin.x = 0.0;
    v31.origin.y = v28;
    v31.size.width = v7;
    v31.size.height = v9;
    v23 = CGRectGetWidth(v31) + 10.0;
  }

  else
  {
    v32.origin.x = 0.0;
    v32.origin.y = v27;
    v32.size.width = v14;
    v32.size.height = v16;
    v29 = CGRectGetWidth(v32) + 10.0;
  }

  [(UILabel *)self->_tapToEditLabel setFrame:v23, v27, v14, v16];
  [(SiriUIContentButton *)self->_circleButton setFrame:v29, v28, v7, v9];
  [(SiriUIContentButton *)self->_chevronButton setFrame:v29, v28, v7, v9];
}

- (double)firstLineBaselineOffsetFromTop
{
  [(SRTapToEditView *)self _circleToLabelHeightDifference];
  v4 = v3;
  v5 = [(UILabel *)self->_tapToEditLabel font];
  [v5 ascender];
  v7 = v6;

  result = v4 * 0.5 + v7;
  if (v4 <= 0.0)
  {
    return v7;
  }

  return result;
}

- (double)baselineOffsetFromBottom
{
  [(SRTapToEditView *)self _circleToLabelHeightDifference];
  v4 = v3;
  v5 = [(UILabel *)self->_tapToEditLabel font];
  [v5 descender];
  v7 = v6;
  v8 = -v6;

  result = v4 * 0.5 - v7;
  if (v4 <= 0.0)
  {
    return v8;
  }

  return result;
}

- (void)_setHighlighted:(BOOL)a3
{
  v3 = a3;
  tapToEditLabel = self->_tapToEditLabel;
  if (a3)
  {
    +[UIColor siriui_tapToEditMaskingColor];
  }

  else
  {
    +[UIColor siriui_tapToEditColor];
  }
  v6 = ;
  [(UILabel *)tapToEditLabel setTextColor:v6];

  [(SiriUIContentButton *)self->_circleButton setHighlighted:v3];
  chevronButton = self->_chevronButton;

  [(SiriUIContentButton *)chevronButton setHighlighted:v3];
}

- (double)_circleToLabelHeightDifference
{
  circleButton = self->_circleButton;
  [(SRTapToEditView *)self bounds];
  [(SiriUIContentButton *)circleButton sizeThatFits:v4, v5];
  v7 = v6;
  tapToEditLabel = self->_tapToEditLabel;
  [(SRTapToEditView *)self bounds];
  [(UILabel *)tapToEditLabel sizeThatFits:v9, v10];
  return v7 - v11;
}

@end