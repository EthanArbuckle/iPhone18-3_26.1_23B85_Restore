@interface SFQRImageHeaderView
- (BCSAction)action;
- (SFQRImageHeaderView)initWithFrame:(CGRect)frame;
- (id)_actionTypeString;
- (id)_title;
- (void)setAction:(id)action;
- (void)userInterfaceStyleDidChange;
@end

@implementation SFQRImageHeaderView

- (SFQRImageHeaderView)initWithFrame:(CGRect)frame
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SFQRImageHeaderView;
  v3 = [(SFQRImageHeaderView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v9[0] = objc_opt_class();
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v5 = [(SFQRImageHeaderView *)v3 registerForTraitChanges:v4 withTarget:v3 action:sel_userInterfaceStyleDidChange];

    v6 = v3;
  }

  return v3;
}

- (id)_actionTypeString
{
  WeakRetained = objc_loadWeakRetained(&self->_action);
  defaultActionTargetApplicationBundleIdentifier = [WeakRetained defaultActionTargetApplicationBundleIdentifier];
  v4 = defaultActionTargetApplicationBundleIdentifier;
  if (defaultActionTargetApplicationBundleIdentifier)
  {
    if ([defaultActionTargetApplicationBundleIdentifier isEqualToString:@"com.apple.mobilesafari"] || objc_msgSend(v4, "isEqualToString:", @"com.apple.Preferences") && (objc_msgSend(WeakRetained, "urlThatCanBeOpened"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "safari_isOTPAuthURL"), v6, v7))
    {
      localizedName = _WBSLocalizedString();
    }

    else
    {
      v8 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v4];
      localizedName = [v8 localizedName];
    }
  }

  else
  {
    localizedName = 0;
  }

  return localizedName;
}

- (id)_title
{
  _actionTypeString = [(SFQRImageHeaderView *)self _actionTypeString];
  if ([_actionTypeString length])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = _WBSLocalizedString();
    v5 = _WBSLocalizedString();
    v6 = [v3 localizedStringWithFormat:v4, _actionTypeString, v5];
  }

  else
  {
    v6 = _WBSLocalizedString();
  }

  return v6;
}

- (void)setAction:(id)action
{
  v44[4] = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_action, action);
  v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
  traitCollection = [(SFQRImageHeaderView *)self traitCollection];
  v6 = headerIconForUserInterfaceStyle([traitCollection userInterfaceStyle]);
  v7 = [v4 initWithImage:v6];
  iconView = self->_iconView;
  self->_iconView = v7;

  [(UIImageView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SFQRImageHeaderView *)self addSubview:self->_iconView];
  v9 = objc_alloc(MEMORY[0x1E69DCC10]);
  v42 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  _title = [(SFQRImageHeaderView *)self _title];
  [v42 setText:_title];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v42 setTextColor:secondaryLabelColor];

  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  [v42 setFont:v12];

  [v42 sizeToFit];
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SFQRImageHeaderView *)self addSubview:v42];
  v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
  sf_barHairlineShadowColor = [MEMORY[0x1E69DC888] sf_barHairlineShadowColor];
  [v13 setBackgroundColor:sf_barHairlineShadowColor];

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SFQRImageHeaderView *)self addSubview:v13];
  v32 = MEMORY[0x1E696ACD8];
  heightAnchor = [v13 heightAnchor];
  _SFOnePixel();
  v38 = [heightAnchor constraintEqualToConstant:?];
  v44[0] = v38;
  leadingAnchor = [v13 leadingAnchor];
  leadingAnchor2 = [(SFQRImageHeaderView *)self leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[1] = v15;
  trailingAnchor = [v13 trailingAnchor];
  trailingAnchor2 = [(SFQRImageHeaderView *)self trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v44[2] = v18;
  bottomAnchor = [v13 bottomAnchor];
  bottomAnchor2 = [(SFQRImageHeaderView *)self bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v44[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
  [v32 activateConstraints:v22];

  v33 = MEMORY[0x1E696ACD8];
  leadingAnchor3 = [(UIImageView *)self->_iconView leadingAnchor];
  leadingAnchor4 = [(SFQRImageHeaderView *)self leadingAnchor];
  v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v43[0] = v37;
  centerYAnchor = [(UIImageView *)self->_iconView centerYAnchor];
  centerYAnchor2 = [(SFQRImageHeaderView *)self centerYAnchor];
  v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v43[1] = v24;
  leadingAnchor5 = [v42 leadingAnchor];
  trailingAnchor3 = [(UIImageView *)self->_iconView trailingAnchor];
  v27 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:12.0];
  v43[2] = v27;
  centerYAnchor3 = [v42 centerYAnchor];
  centerYAnchor4 = [(SFQRImageHeaderView *)self centerYAnchor];
  v30 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v43[3] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
  [v33 activateConstraints:v31];
}

- (void)userInterfaceStyleDidChange
{
  traitCollection = [(SFQRImageHeaderView *)self traitCollection];
  v3 = headerIconForUserInterfaceStyle([traitCollection userInterfaceStyle]);
  [(UIImageView *)self->_iconView setImage:v3];
}

- (BCSAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

@end