@interface SFQRImageHeaderView
- (BCSAction)action;
- (SFQRImageHeaderView)initWithFrame:(CGRect)a3;
- (id)_actionTypeString;
- (id)_title;
- (void)setAction:(id)a3;
- (void)userInterfaceStyleDidChange;
@end

@implementation SFQRImageHeaderView

- (SFQRImageHeaderView)initWithFrame:(CGRect)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SFQRImageHeaderView;
  v3 = [(SFQRImageHeaderView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [WeakRetained defaultActionTargetApplicationBundleIdentifier];
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"com.apple.mobilesafari"] || objc_msgSend(v4, "isEqualToString:", @"com.apple.Preferences") && (objc_msgSend(WeakRetained, "urlThatCanBeOpened"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "safari_isOTPAuthURL"), v6, v7))
    {
      v5 = _WBSLocalizedString();
    }

    else
    {
      v8 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v4];
      v5 = [v8 localizedName];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_title
{
  v2 = [(SFQRImageHeaderView *)self _actionTypeString];
  if ([v2 length])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = _WBSLocalizedString();
    v5 = _WBSLocalizedString();
    v6 = [v3 localizedStringWithFormat:v4, v2, v5];
  }

  else
  {
    v6 = _WBSLocalizedString();
  }

  return v6;
}

- (void)setAction:(id)a3
{
  v44[4] = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_action, a3);
  v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v5 = [(SFQRImageHeaderView *)self traitCollection];
  v6 = headerIconForUserInterfaceStyle([v5 userInterfaceStyle]);
  v7 = [v4 initWithImage:v6];
  iconView = self->_iconView;
  self->_iconView = v7;

  [(UIImageView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SFQRImageHeaderView *)self addSubview:self->_iconView];
  v9 = objc_alloc(MEMORY[0x1E69DCC10]);
  v42 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v10 = [(SFQRImageHeaderView *)self _title];
  [v42 setText:v10];

  v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v42 setTextColor:v11];

  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  [v42 setFont:v12];

  [v42 sizeToFit];
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SFQRImageHeaderView *)self addSubview:v42];
  v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v14 = [MEMORY[0x1E69DC888] sf_barHairlineShadowColor];
  [v13 setBackgroundColor:v14];

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SFQRImageHeaderView *)self addSubview:v13];
  v32 = MEMORY[0x1E696ACD8];
  v40 = [v13 heightAnchor];
  _SFOnePixel();
  v38 = [v40 constraintEqualToConstant:?];
  v44[0] = v38;
  v36 = [v13 leadingAnchor];
  v34 = [(SFQRImageHeaderView *)self leadingAnchor];
  v15 = [v36 constraintEqualToAnchor:v34];
  v44[1] = v15;
  v16 = [v13 trailingAnchor];
  v17 = [(SFQRImageHeaderView *)self trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v44[2] = v18;
  v19 = [v13 bottomAnchor];
  v20 = [(SFQRImageHeaderView *)self bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v44[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
  [v32 activateConstraints:v22];

  v33 = MEMORY[0x1E696ACD8];
  v41 = [(UIImageView *)self->_iconView leadingAnchor];
  v39 = [(SFQRImageHeaderView *)self leadingAnchor];
  v37 = [v41 constraintEqualToAnchor:v39 constant:16.0];
  v43[0] = v37;
  v35 = [(UIImageView *)self->_iconView centerYAnchor];
  v23 = [(SFQRImageHeaderView *)self centerYAnchor];
  v24 = [v35 constraintEqualToAnchor:v23];
  v43[1] = v24;
  v25 = [v42 leadingAnchor];
  v26 = [(UIImageView *)self->_iconView trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:12.0];
  v43[2] = v27;
  v28 = [v42 centerYAnchor];
  v29 = [(SFQRImageHeaderView *)self centerYAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v43[3] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
  [v33 activateConstraints:v31];
}

- (void)userInterfaceStyleDidChange
{
  v4 = [(SFQRImageHeaderView *)self traitCollection];
  v3 = headerIconForUserInterfaceStyle([v4 userInterfaceStyle]);
  [(UIImageView *)self->_iconView setImage:v3];
}

- (BCSAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

@end