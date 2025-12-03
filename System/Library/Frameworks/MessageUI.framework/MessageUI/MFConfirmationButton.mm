@interface MFConfirmationButton
+ (MFConfirmationButton)confirmationButtonWithMessage:(id)message confirmationLabel:(id)label handler:(id)handler;
- (BOOL)_isInConfirmableState;
- (id)_confirmationMenu;
- (void)_didConfirm;
- (void)_updateButtonAction;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)reset;
- (void)setConfirmationIcon:(id)icon;
- (void)setSelected:(BOOL)selected;
@end

@implementation MFConfirmationButton

+ (MFConfirmationButton)confirmationButtonWithMessage:(id)message confirmationLabel:(id)label handler:(id)handler
{
  messageCopy = message;
  labelCopy = label;
  handlerCopy = handler;
  v11 = [self buttonWithType:0];
  [v11 setConfirmationType:0];
  [v11 setConfirmationSelectionMode:0];
  [v11 setConfirmationMessage:messageCopy];
  [v11 setConfirmationLabel:labelCopy];
  [v11 setHandlerBlock:handlerCopy];
  _confirmationMenu = [v11 _confirmationMenu];
  [v11 setMenu:_confirmationMenu];

  return v11;
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = MFConfirmationButton;
  [(MFDimmableButton *)&v4 setSelected:selected];
  [(MFConfirmationButton *)self _updateButtonAction];
}

- (void)setConfirmationIcon:(id)icon
{
  objc_storeStrong(&self->_confirmationIcon, icon);
  _confirmationMenu = [(MFConfirmationButton *)self _confirmationMenu];
  [(MFConfirmationButton *)self setMenu:?];
}

- (void)_updateButtonAction
{
  _isInConfirmableState = [(MFConfirmationButton *)self _isInConfirmableState];
  [(MFConfirmationButton *)self setContextMenuInteractionEnabled:_isInConfirmableState];
  [(MFConfirmationButton *)self setShowsMenuAsPrimaryAction:_isInConfirmableState];
  if (_isInConfirmableState)
  {

    [(MFConfirmationButton *)self removeTarget:self action:sel__didConfirm forControlEvents:64];
  }

  else
  {

    [(MFConfirmationButton *)self addTarget:self action:sel__didConfirm forControlEvents:64];
  }
}

- (BOOL)_isInConfirmableState
{
  if ([(MFConfirmationButton *)self confirmationType]== 1 && [(MFConfirmationButton *)self hasPresentedConfirmation])
  {
    return 0;
  }

  confirmationSelectionMode = [(MFConfirmationButton *)self confirmationSelectionMode];
  if (confirmationSelectionMode == 2)
  {

    return [(MFConfirmationButton *)self isSelected];
  }

  else if (confirmationSelectionMode == 1)
  {
    return [(MFConfirmationButton *)self isSelected]^ 1;
  }

  else
  {
    return 1;
  }
}

- (void)reset
{
  [(MFConfirmationButton *)self setSelected:0];
  [(MFConfirmationButton *)self setHasPresentedConfirmation:0];

  [(MFConfirmationButton *)self _updateButtonAction];
}

- (id)_confirmationMenu
{
  v18[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC628];
  confirmationLabel = [(MFConfirmationButton *)self confirmationLabel];
  confirmationIcon = [(MFConfirmationButton *)self confirmationIcon];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __41__MFConfirmationButton__confirmationMenu__block_invoke;
  v15 = &unk_1E806D678;
  objc_copyWeak(&v16, &location);
  v6 = [v3 actionWithTitle:confirmationLabel image:confirmationIcon identifier:0 handler:&v12];

  v7 = MEMORY[0x1E69DCC60];
  v8 = [(MFConfirmationButton *)self confirmationMessage:v12];
  v18[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v10 = [v7 menuWithTitle:v8 children:v9];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v10;
}

void __41__MFConfirmationButton__confirmationMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didConfirm];
}

- (void)_didConfirm
{
  if ([(MFConfirmationButton *)self confirmationSelectionMode])
  {
    [(MFConfirmationButton *)self setSelected:[(MFConfirmationButton *)self isSelected]^ 1];
  }

  handlerBlock = [(MFConfirmationButton *)self handlerBlock];

  if (handlerBlock)
  {
    handlerBlock2 = [(MFConfirmationButton *)self handlerBlock];
    handlerBlock2[2]();
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__MFConfirmationButton_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v12[3] = &unk_1E806DB80;
  objc_copyWeak(&v13, &location);
  [animatorCopy addCompletion:v12];
  v11.receiver = self;
  v11.super_class = MFConfirmationButton;
  [(MFConfirmationButton *)&v11 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animatorCopy];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __80__MFConfirmationButton_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasPresentedConfirmation:1];
}

@end