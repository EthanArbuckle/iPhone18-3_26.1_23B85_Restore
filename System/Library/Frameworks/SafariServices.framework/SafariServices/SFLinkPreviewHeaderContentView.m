@interface SFLinkPreviewHeaderContentView
- (SFLinkPreviewHeaderContentView)initWithStyle:(int64_t)a3;
- (SFLinkPreviewHeaderContentViewDelegate)delegate;
- (void)_togglePreviewButtonPressed;
- (void)_updateDomainWithHidePreviewActionConstraints;
- (void)_updateSafariIconWithShowPreviewActionConstraints;
- (void)setDomain:(id)a3;
- (void)setPreviewEnabled:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation SFLinkPreviewHeaderContentView

- (SFLinkPreviewHeaderContentView)initWithStyle:(int64_t)a3
{
  v33.receiver = self;
  v33.super_class = SFLinkPreviewHeaderContentView;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(SFLinkPreviewHeaderContentView *)&v33 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  v9 = v8;
  if (v8)
  {
    v8->_style = a3;
    v10 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
    domainLabel = v9->_domainLabel;
    v9->_domainLabel = v10;

    [(UILabel *)v9->_domainLabel setLineBreakMode:3];
    [(UILabel *)v9->_domainLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = *MEMORY[0x1E69DDD28];
    v13 = *MEMORY[0x1E69DDC38];
    v14 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
    [(UILabel *)v9->_domainLabel setFont:v14];

    v15 = [(SFLinkPreviewHeaderContentView *)v9 secondaryLabelColor];
    [(UILabel *)v9->_domainLabel setTextColor:v15];

    [(SFLinkPreviewHeaderContentView *)v9 addSubview:v9->_domainLabel];
    v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari"];
    v17 = [MEMORY[0x1E69DC738] buttonWithType:0];
    togglePreviewButton = v9->_togglePreviewButton;
    v9->_togglePreviewButton = v17;

    v19 = v9->_togglePreviewButton;
    v20 = _WBSLocalizedString();
    [(UIButton *)v19 setTitle:v20 forState:0];

    v21 = v9->_togglePreviewButton;
    v22 = [(SFLinkPreviewHeaderContentView *)v9 secondaryLabelColor];
    [(UIButton *)v21 setTitleColor:v22 forState:0];

    v23 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v12 maximumContentSizeCategory:v13];
    v24 = [(UIButton *)v9->_togglePreviewButton titleLabel];
    [v24 setFont:v23];

    LODWORD(v25) = 1144766464;
    [(UIButton *)v9->_togglePreviewButton setContentCompressionResistancePriority:0 forAxis:v25];
    v26 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v27 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v28 = [v16 imageWithTintColor:v27 renderingMode:1];
    v29 = [v26 initWithImage:v28];
    safariIcon = v9->_safariIcon;
    v9->_safariIcon = v29;

    [(SFLinkPreviewHeaderContentView *)v9 addSubview:v9->_safariIcon];
    [(UIImageView *)v9->_safariIcon setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v9->_togglePreviewButton addTarget:v9 action:sel__togglePreviewButtonPressed forControlEvents:0x2000];
    [(UIButton *)v9->_togglePreviewButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFLinkPreviewHeaderContentView *)v9 addSubview:v9->_togglePreviewButton];
    v31 = v9;
  }

  return v9;
}

- (void)setDomain:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_domain isEqualToString:?])
  {
    v4 = [v6 copy];
    domain = self->_domain;
    self->_domain = v4;

    [(UILabel *)self->_domainLabel setText:self->_domain];
    [(SFLinkPreviewHeaderContentView *)self setNeedsUpdateConstraints];
  }
}

- (void)setPreviewEnabled:(BOOL)a3
{
  if (self->_previewEnabled == a3)
  {
    return;
  }

  self->_previewEnabled = a3;
  if (a3)
  {
    if (!self->_style)
    {
      [(UIImageView *)self->_safariIcon removeFromSuperview];
    }

    v4 = &OBJC_IVAR___SFLinkPreviewHeaderContentView__domainLabel;
    goto LABEL_8;
  }

  [(UILabel *)self->_domainLabel removeFromSuperview];
  if (!self->_style)
  {
    v4 = &OBJC_IVAR___SFLinkPreviewHeaderContentView__safariIcon;
LABEL_8:
    [(SFLinkPreviewHeaderContentView *)self addSubview:*(&self->super.super.super.super.super.isa + *v4)];
  }

  togglePreviewButton = self->_togglePreviewButton;
  v6 = _WBSLocalizedString();
  [(UIButton *)togglePreviewButton setTitle:v6 forState:0];

  [(SFLinkPreviewHeaderContentView *)self setNeedsUpdateConstraints];
}

- (void)_togglePreviewButtonPressed
{
  [(SFLinkPreviewHeaderContentView *)self setPreviewEnabled:!self->_previewEnabled];
  v3 = [(SFLinkPreviewHeaderContentView *)self delegate];
  [v3 linkPreviewHeaderContentView:self didEnableLinkPreview:{-[SFLinkPreviewHeaderContentView isPreviewEnabled](self, "isPreviewEnabled")}];
}

- (void)_updateDomainWithHidePreviewActionConstraints
{
  v26[7] = *MEMORY[0x1E69E9840];
  if (!self->_domainWithHidePreviewActionConstraints)
  {
    v25 = [(UILabel *)self->_domainLabel centerYAnchor];
    v24 = [(SFLinkPreviewHeaderContentView *)self centerYAnchor];
    v23 = [v25 constraintEqualToAnchor:v24 constant:0.0];
    v26[0] = v23;
    v22 = [(UILabel *)self->_domainLabel heightAnchor];
    v21 = [(SFLinkPreviewHeaderContentView *)self heightAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v26[1] = v20;
    v19 = [(UILabel *)self->_domainLabel leadingAnchor];
    v18 = [(SFLinkPreviewHeaderContentView *)self leadingAnchor];
    v17 = [v19 constraintEqualToAnchor:v18 constant:16.0];
    v26[2] = v17;
    v16 = [(UILabel *)self->_domainLabel trailingAnchor];
    v15 = [(UIButton *)self->_togglePreviewButton leadingAnchor];
    v14 = [v16 constraintLessThanOrEqualToAnchor:v15 constant:-16.0];
    v26[3] = v14;
    v13 = [(UIButton *)self->_togglePreviewButton trailingAnchor];
    v3 = [(SFLinkPreviewHeaderContentView *)self trailingAnchor];
    v4 = [v13 constraintEqualToAnchor:v3 constant:-16.0];
    v26[4] = v4;
    v5 = [(UIButton *)self->_togglePreviewButton topAnchor];
    v6 = [(SFLinkPreviewHeaderContentView *)self topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    v26[5] = v7;
    v8 = [(UIButton *)self->_togglePreviewButton bottomAnchor];
    v9 = [(SFLinkPreviewHeaderContentView *)self bottomAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v26[6] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:7];
    domainWithHidePreviewActionConstraints = self->_domainWithHidePreviewActionConstraints;
    self->_domainWithHidePreviewActionConstraints = v11;
  }
}

- (void)_updateSafariIconWithShowPreviewActionConstraints
{
  v27[8] = *MEMORY[0x1E69E9840];
  if (!self->_safariIconWithShowPreviewActionConstraints)
  {
    v26 = [(UIImageView *)self->_safariIcon leadingAnchor];
    v25 = [(SFLinkPreviewHeaderContentView *)self leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25 constant:16.0];
    v27[0] = v24;
    v23 = [(UIImageView *)self->_safariIcon centerYAnchor];
    v22 = [(SFLinkPreviewHeaderContentView *)self centerYAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v27[1] = v21;
    v20 = [(UIImageView *)self->_safariIcon widthAnchor];
    v19 = [v20 constraintEqualToConstant:16.0];
    v27[2] = v19;
    v18 = [(UIImageView *)self->_safariIcon heightAnchor];
    v17 = [v18 constraintEqualToConstant:16.0];
    v27[3] = v17;
    v16 = [(UIImageView *)self->_safariIcon trailingAnchor];
    v15 = [(UIButton *)self->_togglePreviewButton leadingAnchor];
    v14 = [v16 constraintEqualToAnchor:v15 constant:-6.0];
    v27[4] = v14;
    v13 = [(UIButton *)self->_togglePreviewButton topAnchor];
    v3 = [(SFLinkPreviewHeaderContentView *)self topAnchor];
    v4 = [v13 constraintEqualToAnchor:v3];
    v27[5] = v4;
    v5 = [(UIButton *)self->_togglePreviewButton bottomAnchor];
    v6 = [(SFLinkPreviewHeaderContentView *)self bottomAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    v27[6] = v7;
    v8 = [(UIButton *)self->_togglePreviewButton trailingAnchor];
    v9 = [(SFLinkPreviewHeaderContentView *)self trailingAnchor];
    v10 = [v8 constraintLessThanOrEqualToAnchor:v9 constant:-16.0];
    v27[7] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:8];
    safariIconWithShowPreviewActionConstraints = self->_safariIconWithShowPreviewActionConstraints;
    self->_safariIconWithShowPreviewActionConstraints = v11;
  }
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = SFLinkPreviewHeaderContentView;
  [(SFLinkPreviewHeaderContentView *)&v3 updateConstraints];
  if (self->_previewEnabled)
  {
    [(SFLinkPreviewHeaderContentView *)self _updateDomainWithHidePreviewActionConstraints];
  }

  else
  {
    [(SFLinkPreviewHeaderContentView *)self _updateSafariIconWithShowPreviewActionConstraints];
  }

  [MEMORY[0x1E696ACD8] sf_setConstraints:self->_domainWithHidePreviewActionConstraints active:self->_previewEnabled];
  [MEMORY[0x1E696ACD8] sf_setConstraints:self->_safariIconWithShowPreviewActionConstraints active:!self->_previewEnabled];
}

- (SFLinkPreviewHeaderContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end