@interface AAUIOBWelcomeController
+ (id)shieldView;
- (AAUIOBWelcomeController)initWithViewModel:(id)a3;
- (AAUIOBWelcomeControllerDelegate)delegate;
- (void)_addBulletedListItems:(id)a3;
- (void)_addContentViewWithViewModel:(id)a3;
- (void)_addHelpLinkButtonWithViewModel:(id)a3;
- (void)_addPrimaryButtonWithViewModel:(id)a3;
- (void)_addSecondaryButtonWithViewModel:(id)a3;
- (void)_addSecondaryViewWithViewModel:(id)a3;
- (void)_delegate_welcomeViewControllerDidCompleteWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_openHelpLink;
- (void)_setSymbolNameInHeaderViewWithModel:(id)a3;
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
  v9 = [(AAUIOBWelcomeController *)v4 contentView];
  [v9 bounds];
  v10 = [v8 initWithFrame:?];

  [v10 setImage:v7];
  [v10 setContentMode:2];
  [v10 setAutoresizingMask:18];
  v11 = [(AAUIOBWelcomeController *)v4 contentView];
  [v11 addSubview:v10];

  return v4;
}

- (AAUIOBWelcomeController)initWithViewModel:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [v4 detailText];
  v7 = [v4 image];
  v11.receiver = self;
  v11.super_class = AAUIOBWelcomeController;
  v8 = -[AAUIOBWelcomeController initWithTitle:detailText:icon:contentLayout:](&v11, sel_initWithTitle_detailText_icon_contentLayout_, v5, v6, v7, [v4 contentViewLayout]);

  if (v8)
  {
    if ([v4 conformsToProtocol:&unk_1F44E6680])
    {
      [(AAUIOBWelcomeController *)v8 _addBulletedListItems:v4];
    }

    [(AAUIOBWelcomeController *)v8 _addContentViewWithViewModel:v4];
    [(AAUIOBWelcomeController *)v8 _setSymbolNameInHeaderViewWithModel:v4];
    [(AAUIOBWelcomeController *)v8 _addSecondaryViewWithViewModel:v4];
    [(AAUIOBWelcomeController *)v8 _addPrimaryButtonWithViewModel:v4];
    [(AAUIOBWelcomeController *)v8 _addSecondaryButtonWithViewModel:v4];
    [(AAUIOBWelcomeController *)v8 _addHelpLinkButtonWithViewModel:v4];
    v9 = [v4 accessibilityIdentifier];
    [(AAUIOBWelcomeController *)v8 setAccessibilityIdentifier:v9];
  }

  [(AAUIOBWelcomeController *)v8 setModalInPresentation:1];

  return v8;
}

- (void)_addBulletedListItems:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [a3 bullets];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 title];
        v11 = [v9 description];
        v12 = MEMORY[0x1E69DCAB8];
        v13 = [v9 symbolName];
        v14 = [v12 systemImageNamed:v13];
        [(AAUIOBWelcomeController *)self addBulletedListItemWithTitle:v10 description:v11 image:v14];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)_setSymbolNameInHeaderViewWithModel:(id)a3
{
  v9 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v9 symbolName];
    v5 = [v4 length];

    if (v5)
    {
      v6 = [(AAUIOBWelcomeController *)self headerView];
      v7 = [v9 symbolName];
      v8 = [v9 symbolAccessibilityLabel];
      [v6 setSymbol:v7 accessibilityLabel:v8];
    }
  }
}

- (void)_addContentViewWithViewModel:(id)a3
{
  v26[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 contentView];

  if (v5)
  {
    v6 = [v4 contentView];
    v7 = [(AAUIOBWelcomeController *)self contentView];
    [v7 addSubview:v6];

    v18 = MEMORY[0x1E696ACD8];
    v24 = [v6 leadingAnchor];
    v25 = [(AAUIOBWelcomeController *)self contentView];
    v23 = [v25 leadingAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v26[0] = v22;
    v20 = [v6 trailingAnchor];
    v21 = [(AAUIOBWelcomeController *)self contentView];
    v19 = [v21 trailingAnchor];
    v17 = [v20 constraintEqualToAnchor:v19];
    v26[1] = v17;
    v16 = [v6 topAnchor];
    v8 = [(AAUIOBWelcomeController *)self contentView];
    v9 = [v8 topAnchor];
    v10 = [v16 constraintEqualToAnchor:v9 constant:-10.0];
    v26[2] = v10;
    v11 = [v6 bottomAnchor];
    v12 = [(AAUIOBWelcomeController *)self contentView];
    v13 = [v12 bottomAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    v26[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v18 activateConstraints:v15];
  }
}

- (void)_addSecondaryViewWithViewModel:(id)a3
{
  v22[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 secondaryView];

  if (v5)
  {
    v6 = [v4 secondaryView];
    v7 = [(AAUIOBWelcomeController *)self secondaryContentView];
    [v7 addSubview:v6];

    v17 = MEMORY[0x1E696ACD8];
    v20 = [v6 leadingAnchor];
    v21 = [(AAUIOBWelcomeController *)self secondaryContentView];
    v19 = [v21 leadingAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v22[0] = v18;
    v16 = [v6 trailingAnchor];
    v8 = [(AAUIOBWelcomeController *)self secondaryContentView];
    v9 = [v8 trailingAnchor];
    v10 = [v16 constraintEqualToAnchor:v9];
    v22[1] = v10;
    v11 = [v6 topAnchor];
    v12 = [(AAUIOBWelcomeController *)self secondaryContentView];
    v13 = [v12 topAnchor];
    v14 = [v11 constraintEqualToAnchor:v13 constant:-10.0];
    v22[2] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
    [v17 activateConstraints:v15];
  }
}

- (void)_addPrimaryButtonWithViewModel:(id)a3
{
  v10 = a3;
  v4 = [v10 primaryButton];

  if (v4)
  {
    v5 = [MEMORY[0x1E69B7D00] boldButton];
    primaryButton = self->_primaryButton;
    self->_primaryButton = v5;

    v7 = self->_primaryButton;
    v8 = [v10 primaryButton];
    [(OBTrayButton *)v7 setTitle:v8 forState:0];

    [(OBTrayButton *)self->_primaryButton addTarget:self action:sel__delegate_welcomeViewControllerDidCompleteWithSuccess_error_ forControlEvents:64];
    v9 = [(AAUIOBWelcomeController *)self buttonTray];
    [v9 addButton:self->_primaryButton];
  }
}

- (void)_addSecondaryButtonWithViewModel:(id)a3
{
  v10 = a3;
  v4 = [v10 secondaryButton];

  if (v4)
  {
    v5 = [MEMORY[0x1E69B7D38] linkButton];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = v5;

    v7 = self->_secondaryButton;
    v8 = [v10 secondaryButton];
    [(OBTrayButton *)v7 setTitle:v8 forState:0];

    [(OBTrayButton *)self->_secondaryButton addTarget:self action:sel__delegate_welcomeViewControllerDidCompleteWithSuccess_error_ forControlEvents:64];
    v9 = [(AAUIOBWelcomeController *)self buttonTray];
    [v9 addButton:self->_secondaryButton];
  }
}

- (void)_addHelpLinkButtonWithViewModel:(id)a3
{
  v10 = a3;
  v4 = [v10 helpLinkTitle];

  if (v4)
  {
    v5 = [v10 helpLinkURL];
    helpLinkURL = self->_helpLinkURL;
    self->_helpLinkURL = v5;

    v7 = [MEMORY[0x1E69B7D20] accessoryButton];
    v8 = [v10 helpLinkTitle];
    [v7 setTitle:v8 forState:0];

    [v7 addTarget:self action:sel__openHelpLink forControlEvents:64];
    v9 = [(AAUIOBWelcomeController *)self headerView];
    [v9 addAccessoryButton:v7];
  }
}

- (void)_openHelpLink
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:self->_helpLinkURL];
  [*MEMORY[0x1E69DDA98] openURL:v2 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)_delegate_welcomeViewControllerDidCompleteWithSuccess:(BOOL)a3 error:(id)a4
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(AAUIOBWelcomeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 welcomeViewController:self didCompleteWithSuccess:1 error:0];
  }
}

- (AAUIOBWelcomeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end