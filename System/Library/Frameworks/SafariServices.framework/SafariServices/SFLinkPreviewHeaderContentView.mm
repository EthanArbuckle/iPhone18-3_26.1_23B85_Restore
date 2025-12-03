@interface SFLinkPreviewHeaderContentView
- (SFLinkPreviewHeaderContentView)initWithStyle:(int64_t)style;
- (SFLinkPreviewHeaderContentViewDelegate)delegate;
- (void)_togglePreviewButtonPressed;
- (void)_updateDomainWithHidePreviewActionConstraints;
- (void)_updateSafariIconWithShowPreviewActionConstraints;
- (void)setDomain:(id)domain;
- (void)setPreviewEnabled:(BOOL)enabled;
- (void)updateConstraints;
@end

@implementation SFLinkPreviewHeaderContentView

- (SFLinkPreviewHeaderContentView)initWithStyle:(int64_t)style
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
    v8->_style = style;
    v10 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
    domainLabel = v9->_domainLabel;
    v9->_domainLabel = v10;

    [(UILabel *)v9->_domainLabel setLineBreakMode:3];
    [(UILabel *)v9->_domainLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = *MEMORY[0x1E69DDD28];
    v13 = *MEMORY[0x1E69DDC38];
    v14 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
    [(UILabel *)v9->_domainLabel setFont:v14];

    secondaryLabelColor = [(SFLinkPreviewHeaderContentView *)v9 secondaryLabelColor];
    [(UILabel *)v9->_domainLabel setTextColor:secondaryLabelColor];

    [(SFLinkPreviewHeaderContentView *)v9 addSubview:v9->_domainLabel];
    v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari"];
    v17 = [MEMORY[0x1E69DC738] buttonWithType:0];
    togglePreviewButton = v9->_togglePreviewButton;
    v9->_togglePreviewButton = v17;

    v19 = v9->_togglePreviewButton;
    v20 = _WBSLocalizedString();
    [(UIButton *)v19 setTitle:v20 forState:0];

    v21 = v9->_togglePreviewButton;
    secondaryLabelColor2 = [(SFLinkPreviewHeaderContentView *)v9 secondaryLabelColor];
    [(UIButton *)v21 setTitleColor:secondaryLabelColor2 forState:0];

    v23 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v12 maximumContentSizeCategory:v13];
    titleLabel = [(UIButton *)v9->_togglePreviewButton titleLabel];
    [titleLabel setFont:v23];

    LODWORD(v25) = 1144766464;
    [(UIButton *)v9->_togglePreviewButton setContentCompressionResistancePriority:0 forAxis:v25];
    v26 = objc_alloc(MEMORY[0x1E69DCAE0]);
    secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v28 = [v16 imageWithTintColor:secondaryLabelColor3 renderingMode:1];
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

- (void)setDomain:(id)domain
{
  domainCopy = domain;
  if (![(NSString *)self->_domain isEqualToString:?])
  {
    v4 = [domainCopy copy];
    domain = self->_domain;
    self->_domain = v4;

    [(UILabel *)self->_domainLabel setText:self->_domain];
    [(SFLinkPreviewHeaderContentView *)self setNeedsUpdateConstraints];
  }
}

- (void)setPreviewEnabled:(BOOL)enabled
{
  if (self->_previewEnabled == enabled)
  {
    return;
  }

  self->_previewEnabled = enabled;
  if (enabled)
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
  delegate = [(SFLinkPreviewHeaderContentView *)self delegate];
  [delegate linkPreviewHeaderContentView:self didEnableLinkPreview:{-[SFLinkPreviewHeaderContentView isPreviewEnabled](self, "isPreviewEnabled")}];
}

- (void)_updateDomainWithHidePreviewActionConstraints
{
  v26[7] = *MEMORY[0x1E69E9840];
  if (!self->_domainWithHidePreviewActionConstraints)
  {
    centerYAnchor = [(UILabel *)self->_domainLabel centerYAnchor];
    centerYAnchor2 = [(SFLinkPreviewHeaderContentView *)self centerYAnchor];
    v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
    v26[0] = v23;
    heightAnchor = [(UILabel *)self->_domainLabel heightAnchor];
    heightAnchor2 = [(SFLinkPreviewHeaderContentView *)self heightAnchor];
    v20 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v26[1] = v20;
    leadingAnchor = [(UILabel *)self->_domainLabel leadingAnchor];
    leadingAnchor2 = [(SFLinkPreviewHeaderContentView *)self leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v26[2] = v17;
    trailingAnchor = [(UILabel *)self->_domainLabel trailingAnchor];
    leadingAnchor3 = [(UIButton *)self->_togglePreviewButton leadingAnchor];
    v14 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor3 constant:-16.0];
    v26[3] = v14;
    trailingAnchor2 = [(UIButton *)self->_togglePreviewButton trailingAnchor];
    trailingAnchor3 = [(SFLinkPreviewHeaderContentView *)self trailingAnchor];
    v4 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
    v26[4] = v4;
    topAnchor = [(UIButton *)self->_togglePreviewButton topAnchor];
    topAnchor2 = [(SFLinkPreviewHeaderContentView *)self topAnchor];
    v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[5] = v7;
    bottomAnchor = [(UIButton *)self->_togglePreviewButton bottomAnchor];
    bottomAnchor2 = [(SFLinkPreviewHeaderContentView *)self bottomAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
    leadingAnchor = [(UIImageView *)self->_safariIcon leadingAnchor];
    leadingAnchor2 = [(SFLinkPreviewHeaderContentView *)self leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v27[0] = v24;
    centerYAnchor = [(UIImageView *)self->_safariIcon centerYAnchor];
    centerYAnchor2 = [(SFLinkPreviewHeaderContentView *)self centerYAnchor];
    v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v27[1] = v21;
    widthAnchor = [(UIImageView *)self->_safariIcon widthAnchor];
    v19 = [widthAnchor constraintEqualToConstant:16.0];
    v27[2] = v19;
    heightAnchor = [(UIImageView *)self->_safariIcon heightAnchor];
    v17 = [heightAnchor constraintEqualToConstant:16.0];
    v27[3] = v17;
    trailingAnchor = [(UIImageView *)self->_safariIcon trailingAnchor];
    leadingAnchor3 = [(UIButton *)self->_togglePreviewButton leadingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-6.0];
    v27[4] = v14;
    topAnchor = [(UIButton *)self->_togglePreviewButton topAnchor];
    topAnchor2 = [(SFLinkPreviewHeaderContentView *)self topAnchor];
    v4 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v27[5] = v4;
    bottomAnchor = [(UIButton *)self->_togglePreviewButton bottomAnchor];
    bottomAnchor2 = [(SFLinkPreviewHeaderContentView *)self bottomAnchor];
    v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v27[6] = v7;
    trailingAnchor2 = [(UIButton *)self->_togglePreviewButton trailingAnchor];
    trailingAnchor3 = [(SFLinkPreviewHeaderContentView *)self trailingAnchor];
    v10 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:-16.0];
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