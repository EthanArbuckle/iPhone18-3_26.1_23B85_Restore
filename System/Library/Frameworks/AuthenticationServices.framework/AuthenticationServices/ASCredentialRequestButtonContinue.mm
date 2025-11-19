@interface ASCredentialRequestButtonContinue
- (ASCredentialRequestButtonContinue)initWithCoder:(id)a3;
- (ASCredentialRequestButtonContinue)initWithFrame:(CGRect)a3;
- (id)_backgroundColorForCurrentControlState;
- (void)_commonInit;
@end

@implementation ASCredentialRequestButtonContinue

- (ASCredentialRequestButtonContinue)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = ASCredentialRequestButtonContinue;
  v3 = [(ASCredentialRequestButtonContinue *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ASCredentialRequestButtonContinue *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (ASCredentialRequestButtonContinue)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ASCredentialRequestButtonContinue;
  v3 = [(ASCredentialRequestButtonContinue *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ASCredentialRequestButtonContinue *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (void)_commonInit
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = +[ASViewServiceInterfaceUtilities continueButtonBackgroundColor];
  [(ASCredentialRequestButtonContinue *)self setBackgroundColor:v3];

  +[ASViewServiceInterfaceUtilities continueButtonCornerRadius];
  [(ASCredentialRequestButtonContinue *)self _setContinuousCornerRadius:?];
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v5 setTextAlignment:1];
  [v5 setAdjustsFontForContentSizeCategory:1];
  [v5 setAdjustsFontSizeToFitWidth:1];
  v6 = +[ASViewServiceInterfaceUtilities continueButtonTitleFont];
  [v5 setFont:v6];

  v7 = +[ASViewServiceInterfaceUtilities continueButtonTitleColor];
  [v5 setTextColor:v7];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
  [(ASCredentialRequestButton *)self setTitleLabel:v5];
  v8 = [(ASCredentialRequestButton *)self titleLabel];
  [(ASCredentialRequestButtonContinue *)self addSubview:v8];

  v9 = [(ASCredentialRequestButton *)self titleLabel];
  v10 = [v9 centerYAnchor];
  v11 = [(ASCredentialRequestButtonContinue *)self centerYAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v31[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v26 = [v13 mutableCopy];

  v29 = [(ASCredentialRequestButton *)self titleLabel];
  v28 = [v29 centerXAnchor];
  v27 = [(ASCredentialRequestButtonContinue *)self centerXAnchor];
  v25 = [v28 constraintEqualToAnchor:v27];
  v30[0] = v25;
  v24 = [(ASCredentialRequestButton *)self titleLabel];
  v23 = [v24 leadingAnchor];
  v14 = [(ASCredentialRequestButtonContinue *)self leadingAnchor];
  +[ASViewServiceInterfaceUtilities continueButtonTitleMargin];
  v15 = [v23 constraintGreaterThanOrEqualToAnchor:v14 constant:?];
  v30[1] = v15;
  v16 = [(ASCredentialRequestButtonContinue *)self trailingAnchor];
  v17 = [(ASCredentialRequestButton *)self titleLabel];
  v18 = [v17 trailingAnchor];
  +[ASViewServiceInterfaceUtilities continueButtonTitleMargin];
  v19 = [v16 constraintGreaterThanOrEqualToAnchor:v18 constant:?];
  v30[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
  [v26 addObjectsFromArray:v20];

  [MEMORY[0x1E696ACD8] activateConstraints:v26];
  v21 = [MEMORY[0x1E69DCAB0] automaticStyle];
  [(ASCredentialRequestButtonContinue *)self setHoverStyle:v21];

  v22 = *MEMORY[0x1E69E9840];
}

- (id)_backgroundColorForCurrentControlState
{
  if (([(ASCredentialRequestButtonContinue *)self isEnabled]& 1) != 0)
  {
    if ([(ASCredentialRequestButtonContinue *)self isHighlighted])
    {
      +[ASViewServiceInterfaceUtilities continueButtonHighlightedBackgroundColor];
    }

    else
    {
      +[ASViewServiceInterfaceUtilities continueButtonBackgroundColor];
    }
    v3 = ;
  }

  else
  {
    v3 = +[ASViewServiceInterfaceUtilities continueButtonDisabledBackgroundColor];
  }

  return v3;
}

@end