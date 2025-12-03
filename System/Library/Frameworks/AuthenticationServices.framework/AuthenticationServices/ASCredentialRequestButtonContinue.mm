@interface ASCredentialRequestButtonContinue
- (ASCredentialRequestButtonContinue)initWithCoder:(id)coder;
- (ASCredentialRequestButtonContinue)initWithFrame:(CGRect)frame;
- (id)_backgroundColorForCurrentControlState;
- (void)_commonInit;
@end

@implementation ASCredentialRequestButtonContinue

- (ASCredentialRequestButtonContinue)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = ASCredentialRequestButtonContinue;
  v3 = [(ASCredentialRequestButtonContinue *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ASCredentialRequestButtonContinue *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (ASCredentialRequestButtonContinue)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ASCredentialRequestButtonContinue;
  v3 = [(ASCredentialRequestButtonContinue *)&v7 initWithCoder:coder];
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
  titleLabel = [(ASCredentialRequestButton *)self titleLabel];
  [(ASCredentialRequestButtonContinue *)self addSubview:titleLabel];

  titleLabel2 = [(ASCredentialRequestButton *)self titleLabel];
  centerYAnchor = [titleLabel2 centerYAnchor];
  centerYAnchor2 = [(ASCredentialRequestButtonContinue *)self centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v31[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v26 = [v13 mutableCopy];

  titleLabel3 = [(ASCredentialRequestButton *)self titleLabel];
  centerXAnchor = [titleLabel3 centerXAnchor];
  centerXAnchor2 = [(ASCredentialRequestButtonContinue *)self centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v30[0] = v25;
  titleLabel4 = [(ASCredentialRequestButton *)self titleLabel];
  leadingAnchor = [titleLabel4 leadingAnchor];
  leadingAnchor2 = [(ASCredentialRequestButtonContinue *)self leadingAnchor];
  +[ASViewServiceInterfaceUtilities continueButtonTitleMargin];
  v15 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:?];
  v30[1] = v15;
  trailingAnchor = [(ASCredentialRequestButtonContinue *)self trailingAnchor];
  titleLabel5 = [(ASCredentialRequestButton *)self titleLabel];
  trailingAnchor2 = [titleLabel5 trailingAnchor];
  +[ASViewServiceInterfaceUtilities continueButtonTitleMargin];
  v19 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:?];
  v30[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
  [v26 addObjectsFromArray:v20];

  [MEMORY[0x1E696ACD8] activateConstraints:v26];
  automaticStyle = [MEMORY[0x1E69DCAB0] automaticStyle];
  [(ASCredentialRequestButtonContinue *)self setHoverStyle:automaticStyle];

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