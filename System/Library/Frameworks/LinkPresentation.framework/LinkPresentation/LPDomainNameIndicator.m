@interface LPDomainNameIndicator
- (CGSize)sizeThatFits:(CGSize)a3;
- (LPDomainNameIndicator)initWithHost:(id)a3 domainName:(id)a4 theme:(id)a5;
- (void)layoutComponentView;
@end

@implementation LPDomainNameIndicator

- (LPDomainNameIndicator)initWithHost:(id)a3 domainName:(id)a4 theme:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v37.receiver = self;
  v37.super_class = LPDomainNameIndicator;
  v11 = [(LPComponentView *)&v37 initWithHost:v8];
  v12 = v11;
  if (v11)
  {
    [(LPDomainNameIndicator *)v11 setUserInteractionEnabled:0];
    v13 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v14 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v13];
    blurView = v12->_blurView;
    v12->_blurView = v14;

    v16 = objc_alloc(MEMORY[0x1E69DD298]);
    v17 = [MEMORY[0x1E69DD248] effectForBlurEffect:v13 style:0];
    v18 = [v16 initWithEffect:v17];
    vibrancyView = v12->_vibrancyView;
    v12->_vibrancyView = v18;

    v20 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v21 = [MEMORY[0x1E69DCAB8] _lp_systemImageNamed:@"safari.fill"];
    v22 = [v20 initWithImage:v21];
    glyphView = v12->_glyphView;
    v12->_glyphView = v22;

    [(UIImageView *)v12->_glyphView setContentMode:4];
    v24 = MEMORY[0x1E69DCAD8];
    v25 = [v10 domainNameIndicatorIconFont];
    v26 = [v24 configurationWithFont:v25];
    [(UIImageView *)v12->_glyphView setPreferredSymbolConfiguration:v26];

    v27 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v12->_label;
    v12->_label = v27;

    [(UILabel *)v12->_label setText:v9];
    v29 = [v10 domainNameIndicatorFont];
    [(UILabel *)v12->_label setFont:v29];

    [(UILabel *)v12->_label setNumberOfLines:1];
    [(UILabel *)v12->_label setLineBreakMode:4];
    [(UILabel *)v12->_label setBaselineAdjustment:2];
    LODWORD(v30) = 1148846080;
    [(UILabel *)v12->_label setContentCompressionResistancePriority:1 forAxis:v30];
    LODWORD(v31) = 1132068864;
    [(UILabel *)v12->_label setContentCompressionResistancePriority:0 forAxis:v31];
    [(LPDomainNameIndicator *)v12 addSubview:v12->_blurView];
    v32 = [(UIVisualEffectView *)v12->_blurView contentView];
    [v32 addSubview:v12->_vibrancyView];

    v33 = [(UIVisualEffectView *)v12->_vibrancyView contentView];
    [v33 addSubview:v12->_glyphView];

    v34 = [(UIVisualEffectView *)v12->_vibrancyView contentView];
    [v34 addSubview:v12->_label];

    v35 = v12;
  }

  return v12;
}

- (void)layoutComponentView
{
  [(LPDomainNameIndicator *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_glyphView sizeThatFits:v3, v5];
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_label sizeThatFits:v4, v6];
  v26 = v11;
  v13 = v12;
  [(LPDomainNameIndicator *)self bounds];
  v29 = CGRectInset(v28, 10.0, 10.0);
  y = v29.origin.y;
  x = v29.origin.x;
  width = v29.size.width;
  height = v29.size.height;
  if ([(UIView *)self _lp_isLTR])
  {
    [(UIImageView *)self->_glyphView layoutMargins];
    v17 = v16;
    v18 = 5.0;
    v30.origin.x = 5.0;
    v30.origin.y = 5.0;
    v30.size.width = v8;
    v30.size.height = v10;
    v19 = CGRectGetMaxX(v30) + v17;
  }

  else
  {
    v18 = width + -5.0 - v8;
    [(UILabel *)self->_label layoutMargins];
    v19 = v20;
  }

  v31.origin.y = 5.0;
  v31.origin.x = v18;
  v31.size.width = v8;
  v31.size.height = v10;
  v21 = CGRectGetMidY(v31) - v13 * 0.5;
  [(UIVisualEffectView *)self->_blurView setFrame:x, y, width, height];
  [(UIVisualEffectView *)self->_blurView bounds];
  [(UIVisualEffectView *)self->_vibrancyView setFrame:?];
  [(UIImageView *)self->_glyphView setFrame:v18, 5.0, v8, v10];
  [(UILabel *)self->_label setFrame:v19, v21, v26, v13];
  blurView = self->_blurView;
  [(UIVisualEffectView *)blurView frame];

  [(UIVisualEffectView *)blurView _lp_setCornerRadius:v23 * 0.5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIImageView *)self->_glyphView sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  [(UILabel *)self->_label sizeThatFits:width, height];
  v11 = v10;
  [(UIImageView *)self->_glyphView layoutMargins];
  v13 = v12;
  [(UILabel *)self->_label layoutMargins];
  v15 = v11 + v7 + 25.0 + v13 + v14;
  v16 = v9 + 20.0 + 10.0;
  result.height = v16;
  result.width = v15;
  return result;
}

@end