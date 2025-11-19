@interface CNSensitiveContentBlurView
- (BOOL)canShowButtons;
- (CNSensitiveContentBlurView)initWithManager:(id)a3;
- (CNSensitiveContentBlurViewDelegate)delegate;
- (UIButton)revealButton;
- (UILabel)descriptionLabel;
- (UIVisualEffectView)blurView;
- (void)configureButtons;
- (void)configureButtonsConstraints;
- (void)configureConstraints;
- (void)configureSubviews;
- (void)didConfirmForInterventionViewController:(id)a3;
- (void)didRejectForInterventionViewController:(id)a3;
- (void)resetRevealState;
- (void)revealContent;
- (void)setCanRevealContent:(BOOL)a3;
@end

@implementation CNSensitiveContentBlurView

- (CNSensitiveContentBlurViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didRejectForInterventionViewController:(id)a3
{
  v4 = [(CNSensitiveContentBlurView *)self interventionViewController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__CNSensitiveContentBlurView_didRejectForInterventionViewController___block_invoke;
  v5[3] = &unk_1E74E6A88;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

- (void)didConfirmForInterventionViewController:(id)a3
{
  v4 = [(CNSensitiveContentBlurView *)self delegate];
  [v4 sensitiveContentBlurView:self didSetContentHidden:0];

  [(CNSensitiveContentBlurView *)self resetRevealState];
}

- (void)revealContent
{
  v3 = [(CNSensitiveContentBlurView *)self sensitiveContentAnalysisManager];
  v4 = [v3 requiresDescriptiveInterventions];

  if (v4)
  {
    v5 = [(CNSensitiveContentBlurView *)self interventionViewController];

    if (!v5)
    {
      v6 = [MEMORY[0x1E69CA8E8] viewControllerWithWorkflow:0 contextDictionary:0];
      [(CNSensitiveContentBlurView *)self setInterventionViewController:v6];

      v7 = [(CNSensitiveContentBlurView *)self interventionViewController];
      [v7 setInterventionDelegate:self];
    }

    v9 = [(CNSensitiveContentBlurView *)self delegate];
    v8 = [(CNSensitiveContentBlurView *)self interventionViewController];
    [v9 sensitiveContentBlurView:self wantsToPresentInterventionController:v8];
  }

  else
  {
    v9 = [(CNSensitiveContentBlurView *)self delegate];
    [v9 sensitiveContentBlurView:self didSetContentHidden:0];
  }
}

- (void)resetRevealState
{
  v3 = [(CNSensitiveContentBlurView *)self interventionViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  [(CNSensitiveContentBlurView *)self setInterventionViewController:0];
}

- (UIButton)revealButton
{
  v3 = [(CNSensitiveContentBlurView *)self canRevealContent];
  revealButton = self->_revealButton;
  if (v3)
  {
    if (!revealButton)
    {
      v5 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
      v6 = [v5 background];
      v7 = [v6 copy];

      v8 = [MEMORY[0x1E69DC730] effectWithStyle:16];
      [v7 setVisualEffect:v8];

      [v5 setBackground:v7];
      [v5 setCornerStyle:4];
      v9 = [MEMORY[0x1E69DC888] whiteColor];
      [v5 setBaseForegroundColor:v9];

      [v5 setButtonSize:2];
      v10 = CNContactsUIBundle();
      v11 = [v10 localizedStringForKey:@"SENSITIVE_CONTENT_BUTTON_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
      [v5 setTitle:v11];

      v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eye.fill"];
      [v5 setImage:v12];

      [v5 setImagePlacement:2];
      [v5 setImagePadding:2.0];
      [v5 setContentInsets:{6.0, 15.0, 6.0, 15.0}];
      v13 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v5 primaryAction:0];
      [(UIButton *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIButton *)v13 addTarget:self action:sel_revealContent forControlEvents:64];
      v14 = self->_revealButton;
      self->_revealButton = v13;
      v15 = v13;

      v16 = self->_revealButton;
      goto LABEL_6;
    }
  }

  else
  {
    self->_revealButton = 0;

    revealButton = self->_revealButton;
  }

  v16 = revealButton;
LABEL_6:

  return v16;
}

- (UILabel)descriptionLabel
{
  descriptionLabel = self->_descriptionLabel;
  if (descriptionLabel)
  {
    v3 = descriptionLabel;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v5 setFont:v6];

    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v5 setTextColor:v7];

    [(UILabel *)v5 setNumberOfLines:2];
    [(UILabel *)v5 setTextAlignment:1];
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"SENSITIVE_CONTENT_DESCRIPTION" value:&stru_1F0CE7398 table:@"Localized"];
    [(UILabel *)v5 setText:v9];

    [(UILabel *)v5 setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = self->_descriptionLabel;
    self->_descriptionLabel = v5;
    v11 = v5;

    v3 = self->_descriptionLabel;
  }

  return v3;
}

- (UIVisualEffectView)blurView
{
  blurView = self->_blurView;
  if (blurView)
  {
    v3 = blurView;
  }

  else
  {
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:16];
    v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v5];
    [(UIVisualEffectView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = self->_blurView;
    self->_blurView = v6;
    v8 = v6;

    v3 = self->_blurView;
  }

  return v3;
}

- (void)configureButtonsConstraints
{
  v14[2] = *MEMORY[0x1E69E9840];
  if ([(CNSensitiveContentBlurView *)self canShowButtons])
  {
    v3 = [(CNSensitiveContentBlurView *)self revealButton];

    if (v3)
    {
      v4 = [(CNSensitiveContentBlurView *)self revealButton];
      v5 = [v4 topAnchor];
      v6 = [(CNSensitiveContentBlurView *)self descriptionLabel];
      v7 = [v6 bottomAnchor];
      v8 = [v5 constraintEqualToAnchor:v7 constant:8.0];
      v14[0] = v8;
      v9 = [(CNSensitiveContentBlurView *)self revealButton];
      v10 = [v9 centerXAnchor];
      v11 = [(CNSensitiveContentBlurView *)self centerXAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v14[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

      [MEMORY[0x1E696ACD8] activateConstraints:v13];
    }
  }
}

- (void)configureConstraints
{
  v21[3] = *MEMORY[0x1E69E9840];
  v3 = [(CNSensitiveContentBlurView *)self blurView];
  v4 = [(UIView *)self constrainViewToEdgesConstraints:v3];
  v19 = [MEMORY[0x1E695E0F0] arrayByAddingObjectsFromArray:v4];

  v5 = 0.0;
  if ([(CNSensitiveContentBlurView *)self canShowButtons])
  {
    if ([(CNSensitiveContentBlurView *)self canRevealContent])
    {
      v5 = -50.0;
    }

    else
    {
      v5 = 0.0;
    }
  }

  v20 = [(CNSensitiveContentBlurView *)self descriptionLabel];
  v18 = [v20 centerYAnchor];
  v17 = [(CNSensitiveContentBlurView *)self centerYAnchor];
  v16 = [v18 constraintEqualToAnchor:v17 constant:v5];
  v21[0] = v16;
  v15 = [(CNSensitiveContentBlurView *)self descriptionLabel];
  v14 = [v15 leadingAnchor];
  v6 = [(CNSensitiveContentBlurView *)self leadingAnchor];
  v7 = [v14 constraintEqualToAnchor:v6 constant:17.0];
  v21[1] = v7;
  v8 = [(CNSensitiveContentBlurView *)self descriptionLabel];
  v9 = [v8 trailingAnchor];
  v10 = [(CNSensitiveContentBlurView *)self trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-17.0];
  v21[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v13 = [v19 arrayByAddingObjectsFromArray:v12];

  [MEMORY[0x1E696ACD8] activateConstraints:v13];
  [(CNSensitiveContentBlurView *)self configureButtonsConstraints];
}

- (void)configureButtons
{
  if ([(CNSensitiveContentBlurView *)self canShowButtons]&& ([(CNSensitiveContentBlurView *)self revealButton], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(CNSensitiveContentBlurView *)self revealButton];
    [(CNSensitiveContentBlurView *)self addSubview:?];
  }

  else
  {
    v4 = [(CNSensitiveContentBlurView *)self revealButton];
    [v4 removeFromSuperview];
  }
}

- (void)configureSubviews
{
  v3 = [(CNSensitiveContentBlurView *)self blurView];
  [(CNSensitiveContentBlurView *)self addSubview:v3];

  v4 = [(CNSensitiveContentBlurView *)self descriptionLabel];
  [(CNSensitiveContentBlurView *)self addSubview:v4];

  [(CNSensitiveContentBlurView *)self configureButtons];
}

- (BOOL)canShowButtons
{
  v2 = [(CNSensitiveContentBlurView *)self sensitiveContentAnalysisManager];
  v3 = [v2 isEntitledForSensitiveContentUI];

  return v3;
}

- (void)setCanRevealContent:(BOOL)a3
{
  if (self->_canRevealContent != a3)
  {
    self->_canRevealContent = a3;
    [(CNSensitiveContentBlurView *)self configureButtons];
    [(CNSensitiveContentBlurView *)self configureConstraints];

    [(CNSensitiveContentBlurView *)self configureButtonsConstraints];
  }
}

- (CNSensitiveContentBlurView)initWithManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNSensitiveContentBlurView;
  v6 = [(CNSensitiveContentBlurView *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sensitiveContentAnalysisManager, a3);
    [(CNSensitiveContentBlurView *)v7 configureSubviews];
    [(CNSensitiveContentBlurView *)v7 configureConstraints];
    v8 = v7;
  }

  return v7;
}

@end