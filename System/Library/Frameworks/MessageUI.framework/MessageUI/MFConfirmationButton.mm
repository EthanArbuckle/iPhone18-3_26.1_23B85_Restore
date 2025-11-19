@interface MFConfirmationButton
+ (MFConfirmationButton)confirmationButtonWithMessage:(id)a3 confirmationLabel:(id)a4 handler:(id)a5;
- (BOOL)_isInConfirmableState;
- (id)_confirmationMenu;
- (void)_didConfirm;
- (void)_updateButtonAction;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)reset;
- (void)setConfirmationIcon:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation MFConfirmationButton

+ (MFConfirmationButton)confirmationButtonWithMessage:(id)a3 confirmationLabel:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 buttonWithType:0];
  [v11 setConfirmationType:0];
  [v11 setConfirmationSelectionMode:0];
  [v11 setConfirmationMessage:v8];
  [v11 setConfirmationLabel:v9];
  [v11 setHandlerBlock:v10];
  v12 = [v11 _confirmationMenu];
  [v11 setMenu:v12];

  return v11;
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MFConfirmationButton;
  [(MFDimmableButton *)&v4 setSelected:a3];
  [(MFConfirmationButton *)self _updateButtonAction];
}

- (void)setConfirmationIcon:(id)a3
{
  objc_storeStrong(&self->_confirmationIcon, a3);
  v4 = [(MFConfirmationButton *)self _confirmationMenu];
  [(MFConfirmationButton *)self setMenu:?];
}

- (void)_updateButtonAction
{
  v3 = [(MFConfirmationButton *)self _isInConfirmableState];
  [(MFConfirmationButton *)self setContextMenuInteractionEnabled:v3];
  [(MFConfirmationButton *)self setShowsMenuAsPrimaryAction:v3];
  if (v3)
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

  v4 = [(MFConfirmationButton *)self confirmationSelectionMode];
  if (v4 == 2)
  {

    return [(MFConfirmationButton *)self isSelected];
  }

  else if (v4 == 1)
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
  v4 = [(MFConfirmationButton *)self confirmationLabel];
  v5 = [(MFConfirmationButton *)self confirmationIcon];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __41__MFConfirmationButton__confirmationMenu__block_invoke;
  v15 = &unk_1E806D678;
  objc_copyWeak(&v16, &location);
  v6 = [v3 actionWithTitle:v4 image:v5 identifier:0 handler:&v12];

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

  v3 = [(MFConfirmationButton *)self handlerBlock];

  if (v3)
  {
    v4 = [(MFConfirmationButton *)self handlerBlock];
    v4[2]();
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__MFConfirmationButton_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v12[3] = &unk_1E806DB80;
  objc_copyWeak(&v13, &location);
  [v10 addCompletion:v12];
  v11.receiver = self;
  v11.super_class = MFConfirmationButton;
  [(MFConfirmationButton *)&v11 contextMenuInteraction:v8 willEndForConfiguration:v9 animator:v10];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __80__MFConfirmationButton_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasPresentedConfirmation:1];
}

@end