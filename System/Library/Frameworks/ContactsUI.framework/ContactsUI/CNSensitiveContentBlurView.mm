@interface CNSensitiveContentBlurView
- (BOOL)canShowButtons;
- (CNSensitiveContentBlurView)initWithManager:(id)manager;
- (CNSensitiveContentBlurViewDelegate)delegate;
- (UIButton)revealButton;
- (UILabel)descriptionLabel;
- (UIVisualEffectView)blurView;
- (void)configureButtons;
- (void)configureButtonsConstraints;
- (void)configureConstraints;
- (void)configureSubviews;
- (void)didConfirmForInterventionViewController:(id)controller;
- (void)didRejectForInterventionViewController:(id)controller;
- (void)resetRevealState;
- (void)revealContent;
- (void)setCanRevealContent:(BOOL)content;
@end

@implementation CNSensitiveContentBlurView

- (CNSensitiveContentBlurViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didRejectForInterventionViewController:(id)controller
{
  interventionViewController = [(CNSensitiveContentBlurView *)self interventionViewController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__CNSensitiveContentBlurView_didRejectForInterventionViewController___block_invoke;
  v5[3] = &unk_1E74E6A88;
  v5[4] = self;
  [interventionViewController dismissViewControllerAnimated:1 completion:v5];
}

- (void)didConfirmForInterventionViewController:(id)controller
{
  delegate = [(CNSensitiveContentBlurView *)self delegate];
  [delegate sensitiveContentBlurView:self didSetContentHidden:0];

  [(CNSensitiveContentBlurView *)self resetRevealState];
}

- (void)revealContent
{
  sensitiveContentAnalysisManager = [(CNSensitiveContentBlurView *)self sensitiveContentAnalysisManager];
  requiresDescriptiveInterventions = [sensitiveContentAnalysisManager requiresDescriptiveInterventions];

  if (requiresDescriptiveInterventions)
  {
    interventionViewController = [(CNSensitiveContentBlurView *)self interventionViewController];

    if (!interventionViewController)
    {
      v6 = [MEMORY[0x1E69CA8E8] viewControllerWithWorkflow:0 contextDictionary:0];
      [(CNSensitiveContentBlurView *)self setInterventionViewController:v6];

      interventionViewController2 = [(CNSensitiveContentBlurView *)self interventionViewController];
      [interventionViewController2 setInterventionDelegate:self];
    }

    delegate = [(CNSensitiveContentBlurView *)self delegate];
    interventionViewController3 = [(CNSensitiveContentBlurView *)self interventionViewController];
    [delegate sensitiveContentBlurView:self wantsToPresentInterventionController:interventionViewController3];
  }

  else
  {
    delegate = [(CNSensitiveContentBlurView *)self delegate];
    [delegate sensitiveContentBlurView:self didSetContentHidden:0];
  }
}

- (void)resetRevealState
{
  interventionViewController = [(CNSensitiveContentBlurView *)self interventionViewController];
  [interventionViewController dismissViewControllerAnimated:1 completion:0];

  [(CNSensitiveContentBlurView *)self setInterventionViewController:0];
}

- (UIButton)revealButton
{
  canRevealContent = [(CNSensitiveContentBlurView *)self canRevealContent];
  revealButton = self->_revealButton;
  if (canRevealContent)
  {
    if (!revealButton)
    {
      grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
      background = [grayButtonConfiguration background];
      v7 = [background copy];

      v8 = [MEMORY[0x1E69DC730] effectWithStyle:16];
      [v7 setVisualEffect:v8];

      [grayButtonConfiguration setBackground:v7];
      [grayButtonConfiguration setCornerStyle:4];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [grayButtonConfiguration setBaseForegroundColor:whiteColor];

      [grayButtonConfiguration setButtonSize:2];
      v10 = CNContactsUIBundle();
      v11 = [v10 localizedStringForKey:@"SENSITIVE_CONTENT_BUTTON_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
      [grayButtonConfiguration setTitle:v11];

      v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eye.fill"];
      [grayButtonConfiguration setImage:v12];

      [grayButtonConfiguration setImagePlacement:2];
      [grayButtonConfiguration setImagePadding:2.0];
      [grayButtonConfiguration setContentInsets:{6.0, 15.0, 6.0, 15.0}];
      v13 = [MEMORY[0x1E69DC738] buttonWithConfiguration:grayButtonConfiguration primaryAction:0];
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

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v5 setTextColor:whiteColor];

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
    revealButton = [(CNSensitiveContentBlurView *)self revealButton];

    if (revealButton)
    {
      revealButton2 = [(CNSensitiveContentBlurView *)self revealButton];
      topAnchor = [revealButton2 topAnchor];
      descriptionLabel = [(CNSensitiveContentBlurView *)self descriptionLabel];
      bottomAnchor = [descriptionLabel bottomAnchor];
      v8 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:8.0];
      v14[0] = v8;
      revealButton3 = [(CNSensitiveContentBlurView *)self revealButton];
      centerXAnchor = [revealButton3 centerXAnchor];
      centerXAnchor2 = [(CNSensitiveContentBlurView *)self centerXAnchor];
      v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v14[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

      [MEMORY[0x1E696ACD8] activateConstraints:v13];
    }
  }
}

- (void)configureConstraints
{
  v21[3] = *MEMORY[0x1E69E9840];
  blurView = [(CNSensitiveContentBlurView *)self blurView];
  v4 = [(UIView *)self constrainViewToEdgesConstraints:blurView];
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

  descriptionLabel = [(CNSensitiveContentBlurView *)self descriptionLabel];
  centerYAnchor = [descriptionLabel centerYAnchor];
  centerYAnchor2 = [(CNSensitiveContentBlurView *)self centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:v5];
  v21[0] = v16;
  descriptionLabel2 = [(CNSensitiveContentBlurView *)self descriptionLabel];
  leadingAnchor = [descriptionLabel2 leadingAnchor];
  leadingAnchor2 = [(CNSensitiveContentBlurView *)self leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:17.0];
  v21[1] = v7;
  descriptionLabel3 = [(CNSensitiveContentBlurView *)self descriptionLabel];
  trailingAnchor = [descriptionLabel3 trailingAnchor];
  trailingAnchor2 = [(CNSensitiveContentBlurView *)self trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-17.0];
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
    revealButton = [(CNSensitiveContentBlurView *)self revealButton];
    [(CNSensitiveContentBlurView *)self addSubview:?];
  }

  else
  {
    revealButton = [(CNSensitiveContentBlurView *)self revealButton];
    [revealButton removeFromSuperview];
  }
}

- (void)configureSubviews
{
  blurView = [(CNSensitiveContentBlurView *)self blurView];
  [(CNSensitiveContentBlurView *)self addSubview:blurView];

  descriptionLabel = [(CNSensitiveContentBlurView *)self descriptionLabel];
  [(CNSensitiveContentBlurView *)self addSubview:descriptionLabel];

  [(CNSensitiveContentBlurView *)self configureButtons];
}

- (BOOL)canShowButtons
{
  sensitiveContentAnalysisManager = [(CNSensitiveContentBlurView *)self sensitiveContentAnalysisManager];
  isEntitledForSensitiveContentUI = [sensitiveContentAnalysisManager isEntitledForSensitiveContentUI];

  return isEntitledForSensitiveContentUI;
}

- (void)setCanRevealContent:(BOOL)content
{
  if (self->_canRevealContent != content)
  {
    self->_canRevealContent = content;
    [(CNSensitiveContentBlurView *)self configureButtons];
    [(CNSensitiveContentBlurView *)self configureConstraints];

    [(CNSensitiveContentBlurView *)self configureButtonsConstraints];
  }
}

- (CNSensitiveContentBlurView)initWithManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = CNSensitiveContentBlurView;
  v6 = [(CNSensitiveContentBlurView *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sensitiveContentAnalysisManager, manager);
    [(CNSensitiveContentBlurView *)v7 configureSubviews];
    [(CNSensitiveContentBlurView *)v7 configureConstraints];
    v8 = v7;
  }

  return v7;
}

@end