@interface AAUIOBWelcomeController
+ (id)shieldView;
- (AAUIOBWelcomeController)initWithViewModel:(id)model;
- (AAUIOBWelcomeControllerDelegate)delegate;
- (void)_addBulletedListItems:(id)items;
- (void)_addContentViewWithViewModel:(id)model;
- (void)_addHelpLinkButtonWithViewModel:(id)model;
- (void)_addPrimaryButtonWithViewModel:(id)model;
- (void)_addSecondaryButtonWithViewModel:(id)model;
- (void)_addSecondaryViewWithViewModel:(id)model;
- (void)_delegate_welcomeViewControllerDidCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)_openHelpLink;
- (void)_setSymbolNameInHeaderViewWithModel:(id)model;
@end

@implementation AAUIOBWelcomeController

+ (id)shieldView
{
  v2 = [AAUIOBWelcomeController alloc];
  v3 = objc_alloc_init(AAUIProtoAccountShieldUI);
  v4 = [(AAUIOBWelcomeController *)v2 initWithViewModel:v3];

  v5 = MEMORY[0x1E69DCAB8];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v5 imageNamed:@"OBShieldUI" inBundle:v6];

  v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
  contentView = [(AAUIOBWelcomeController *)v4 contentView];
  [contentView bounds];
  v10 = [v8 initWithFrame:?];

  [v10 setImage:v7];
  [v10 setContentMode:2];
  [v10 setAutoresizingMask:18];
  contentView2 = [(AAUIOBWelcomeController *)v4 contentView];
  [contentView2 addSubview:v10];

  return v4;
}

- (AAUIOBWelcomeController)initWithViewModel:(id)model
{
  modelCopy = model;
  title = [modelCopy title];
  detailText = [modelCopy detailText];
  image = [modelCopy image];
  v11.receiver = self;
  v11.super_class = AAUIOBWelcomeController;
  v8 = -[AAUIOBWelcomeController initWithTitle:detailText:icon:contentLayout:](&v11, sel_initWithTitle_detailText_icon_contentLayout_, title, detailText, image, [modelCopy contentViewLayout]);

  if (v8)
  {
    if ([modelCopy conformsToProtocol:&unk_1F44E6680])
    {
      [(AAUIOBWelcomeController *)v8 _addBulletedListItems:modelCopy];
    }

    [(AAUIOBWelcomeController *)v8 _addContentViewWithViewModel:modelCopy];
    [(AAUIOBWelcomeController *)v8 _setSymbolNameInHeaderViewWithModel:modelCopy];
    [(AAUIOBWelcomeController *)v8 _addSecondaryViewWithViewModel:modelCopy];
    [(AAUIOBWelcomeController *)v8 _addPrimaryButtonWithViewModel:modelCopy];
    [(AAUIOBWelcomeController *)v8 _addSecondaryButtonWithViewModel:modelCopy];
    [(AAUIOBWelcomeController *)v8 _addHelpLinkButtonWithViewModel:modelCopy];
    accessibilityIdentifier = [modelCopy accessibilityIdentifier];
    [(AAUIOBWelcomeController *)v8 setAccessibilityIdentifier:accessibilityIdentifier];
  }

  [(AAUIOBWelcomeController *)v8 setModalInPresentation:1];

  return v8;
}

- (void)_addBulletedListItems:(id)items
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  bullets = [items bullets];
  v5 = [bullets countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(bullets);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        title = [v9 title];
        v11 = [v9 description];
        v12 = MEMORY[0x1E69DCAB8];
        symbolName = [v9 symbolName];
        v14 = [v12 systemImageNamed:symbolName];
        [(AAUIOBWelcomeController *)self addBulletedListItemWithTitle:title description:v11 image:v14];
      }

      v6 = [bullets countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)_setSymbolNameInHeaderViewWithModel:(id)model
{
  modelCopy = model;
  if (objc_opt_respondsToSelector())
  {
    symbolName = [modelCopy symbolName];
    v5 = [symbolName length];

    if (v5)
    {
      headerView = [(AAUIOBWelcomeController *)self headerView];
      symbolName2 = [modelCopy symbolName];
      symbolAccessibilityLabel = [modelCopy symbolAccessibilityLabel];
      [headerView setSymbol:symbolName2 accessibilityLabel:symbolAccessibilityLabel];
    }
  }
}

- (void)_addContentViewWithViewModel:(id)model
{
  v26[4] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  contentView = [modelCopy contentView];

  if (contentView)
  {
    contentView2 = [modelCopy contentView];
    contentView3 = [(AAUIOBWelcomeController *)self contentView];
    [contentView3 addSubview:contentView2];

    v18 = MEMORY[0x1E696ACD8];
    leadingAnchor = [contentView2 leadingAnchor];
    contentView4 = [(AAUIOBWelcomeController *)self contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[0] = v22;
    trailingAnchor = [contentView2 trailingAnchor];
    contentView5 = [(AAUIOBWelcomeController *)self contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[1] = v17;
    topAnchor = [contentView2 topAnchor];
    contentView6 = [(AAUIOBWelcomeController *)self contentView];
    topAnchor2 = [contentView6 topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-10.0];
    v26[2] = v10;
    bottomAnchor = [contentView2 bottomAnchor];
    contentView7 = [(AAUIOBWelcomeController *)self contentView];
    bottomAnchor2 = [contentView7 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v18 activateConstraints:v15];
  }
}

- (void)_addSecondaryViewWithViewModel:(id)model
{
  v22[3] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  secondaryView = [modelCopy secondaryView];

  if (secondaryView)
  {
    secondaryView2 = [modelCopy secondaryView];
    secondaryContentView = [(AAUIOBWelcomeController *)self secondaryContentView];
    [secondaryContentView addSubview:secondaryView2];

    v17 = MEMORY[0x1E696ACD8];
    leadingAnchor = [secondaryView2 leadingAnchor];
    secondaryContentView2 = [(AAUIOBWelcomeController *)self secondaryContentView];
    leadingAnchor2 = [secondaryContentView2 leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v22[0] = v18;
    trailingAnchor = [secondaryView2 trailingAnchor];
    secondaryContentView3 = [(AAUIOBWelcomeController *)self secondaryContentView];
    trailingAnchor2 = [secondaryContentView3 trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v22[1] = v10;
    topAnchor = [secondaryView2 topAnchor];
    secondaryContentView4 = [(AAUIOBWelcomeController *)self secondaryContentView];
    topAnchor2 = [secondaryContentView4 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-10.0];
    v22[2] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
    [v17 activateConstraints:v15];
  }
}

- (void)_addPrimaryButtonWithViewModel:(id)model
{
  modelCopy = model;
  primaryButton = [modelCopy primaryButton];

  if (primaryButton)
  {
    boldButton = [MEMORY[0x1E69B7D00] boldButton];
    primaryButton = self->_primaryButton;
    self->_primaryButton = boldButton;

    v7 = self->_primaryButton;
    primaryButton2 = [modelCopy primaryButton];
    [(OBTrayButton *)v7 setTitle:primaryButton2 forState:0];

    [(OBTrayButton *)self->_primaryButton addTarget:self action:sel__delegate_welcomeViewControllerDidCompleteWithSuccess_error_ forControlEvents:64];
    buttonTray = [(AAUIOBWelcomeController *)self buttonTray];
    [buttonTray addButton:self->_primaryButton];
  }
}

- (void)_addSecondaryButtonWithViewModel:(id)model
{
  modelCopy = model;
  secondaryButton = [modelCopy secondaryButton];

  if (secondaryButton)
  {
    linkButton = [MEMORY[0x1E69B7D38] linkButton];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = linkButton;

    v7 = self->_secondaryButton;
    secondaryButton2 = [modelCopy secondaryButton];
    [(OBTrayButton *)v7 setTitle:secondaryButton2 forState:0];

    [(OBTrayButton *)self->_secondaryButton addTarget:self action:sel__delegate_welcomeViewControllerDidCompleteWithSuccess_error_ forControlEvents:64];
    buttonTray = [(AAUIOBWelcomeController *)self buttonTray];
    [buttonTray addButton:self->_secondaryButton];
  }
}

- (void)_addHelpLinkButtonWithViewModel:(id)model
{
  modelCopy = model;
  helpLinkTitle = [modelCopy helpLinkTitle];

  if (helpLinkTitle)
  {
    helpLinkURL = [modelCopy helpLinkURL];
    helpLinkURL = self->_helpLinkURL;
    self->_helpLinkURL = helpLinkURL;

    accessoryButton = [MEMORY[0x1E69B7D20] accessoryButton];
    helpLinkTitle2 = [modelCopy helpLinkTitle];
    [accessoryButton setTitle:helpLinkTitle2 forState:0];

    [accessoryButton addTarget:self action:sel__openHelpLink forControlEvents:64];
    headerView = [(AAUIOBWelcomeController *)self headerView];
    [headerView addAccessoryButton:accessoryButton];
  }
}

- (void)_openHelpLink
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:self->_helpLinkURL];
  [*MEMORY[0x1E69DDA98] openURL:v2 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)_delegate_welcomeViewControllerDidCompleteWithSuccess:(BOOL)success error:(id)error
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUIOBWelcomeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate welcomeViewController:self didCompleteWithSuccess:1 error:0];
  }
}

- (AAUIOBWelcomeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end