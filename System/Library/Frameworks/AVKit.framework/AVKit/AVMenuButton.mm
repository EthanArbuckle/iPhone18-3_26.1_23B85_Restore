@interface AVMenuButton
+ (id)buttonWithAccessibilityIdentifier:(id)identifier accessibilityLabel:(id)label isFirstGeneration:(BOOL)generation;
- (AVMenuButtonDelegate)delegate;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)updateContextMenu;
@end

@implementation AVMenuButton

+ (id)buttonWithAccessibilityIdentifier:(id)identifier accessibilityLabel:(id)label isFirstGeneration:(BOOL)generation
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___AVMenuButton;
  v5 = objc_msgSendSuper2(&v7, sel_buttonWithAccessibilityIdentifier_accessibilityLabel_isFirstGeneration_, identifier, label, generation);
  [v5 setShowsMenuAsPrimaryAction:1];
  [v5 setContextMenuInteractionEnabled:1];
  [v5 setAutoresizingMask:0];
  [v5 setAppliesTransformToImageViewWhenHighlighted:1];

  return v5;
}

- (AVMenuButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  interactionCopy = interaction;
  [configurationCopy setPreferredMenuElementOrder:2];
  v10.receiver = self;
  v10.super_class = AVMenuButton;
  v8 = [(AVMenuButton *)&v10 _contextMenuInteraction:interactionCopy styleForMenuWithConfiguration:configurationCopy];

  return v8;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  v16.receiver = self;
  v16.super_class = AVMenuButton;
  [(AVMenuButton *)&v16 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animatorCopy];
  objc_storeWeak(&self->_activeMenuInteraction, interactionCopy);
  delegate = [(AVMenuButton *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [[AVKitGlassInteractionAnimating alloc] initWithInteractionAnimation:animatorCopy];
    [delegate menuButtonWillHideMenu:self animator:v12];
  }

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__AVMenuButton_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v13[3] = &unk_1E7209EA8;
  objc_copyWeak(&v14, &location);
  [animatorCopy addCompletion:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __72__AVMenuButton_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v2 menuButtonDidHideMenu:v3];
    }

    WeakRetained = v3;
  }
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v12.receiver = self;
  v12.super_class = AVMenuButton;
  interactionCopy = interaction;
  [(AVMenuButton *)&v12 contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configuration animator:animatorCopy];
  objc_storeWeak(&self->_activeMenuInteraction, interactionCopy);

  v10 = [(AVMenuButton *)self delegate:v12.receiver];
  if (objc_opt_respondsToSelector())
  {
    v11 = [[AVKitGlassInteractionAnimating alloc] initWithInteractionAnimation:animatorCopy];
    [v10 menuButtonWillShowMenu:self animator:v11];
  }
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v5 = [(AVMenuButton *)self delegate:interaction];

  if (v5)
  {
    delegate = [(AVMenuButton *)self delegate];
    v7 = [delegate menuForMenuButton:self];
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1E69DC8D8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__AVMenuButton_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v12[3] = &unk_1E7207340;
  v13 = v7;
  v9 = v7;
  v10 = [v8 configurationWithIdentifier:0 previewProvider:0 actionProvider:v12];

  return v10;
}

- (void)updateContextMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_activeMenuInteraction);
  if (WeakRetained)
  {
    delegate = [(AVMenuButton *)self delegate];
    v5 = [delegate menuForMenuButton:self];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __33__AVMenuButton_updateContextMenu__block_invoke;
    v7[3] = &unk_1E7207318;
    v8 = v5;
    v6 = v5;
    [WeakRetained updateVisibleMenuWithBlock:v7];
  }
}

id __33__AVMenuButton_updateContextMenu__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] arrayWithObject:*(a1 + 32)];
  v5 = v3;
  if ([v4 count])
  {
    while (1)
    {
      v5 = [v4 lastObject];
      [v4 removeLastObject];
      v6 = [v5 identifier];
      v7 = [v3 identifier];
      v8 = [v6 isEqualToString:v7];

      if (v8)
      {
        break;
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [v5 children];
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v16 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v4 addObject:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }

      if (![v4 count])
      {
        v5 = v3;
        goto LABEL_15;
      }
    }
  }

LABEL_15:

  return v5;
}

@end