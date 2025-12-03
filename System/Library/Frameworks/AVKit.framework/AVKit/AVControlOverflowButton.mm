@interface AVControlOverflowButton
+ (id)_buttonWithImageName:(uint64_t)name isLegacyButton:;
+ (id)overflowButtonBordered:(BOOL)bordered;
- (AVControlOverflowButtonDelegate)delegate;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)updateContextMenu;
@end

@implementation AVControlOverflowButton

- (AVControlOverflowButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  v16.receiver = self;
  v16.super_class = AVControlOverflowButton;
  [(AVControlOverflowButton *)&v16 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animatorCopy];
  objc_storeWeak(&self->_activeMenuInteraction, interactionCopy);
  delegate = [(AVControlOverflowButton *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [[AVKitGlassInteractionAnimating alloc] initWithInteractionAnimation:animatorCopy];
    [delegate overflowButtonWillHideContextMenu:self animator:v12];
  }

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__AVControlOverflowButton_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v13[3] = &unk_1E7209EA8;
  objc_copyWeak(&v14, &location);
  [animatorCopy addCompletion:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __83__AVControlOverflowButton_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v2 overflowButtonDidHideContextMenu:v3];
    }

    WeakRetained = v3;
  }
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v12.receiver = self;
  v12.super_class = AVControlOverflowButton;
  interactionCopy = interaction;
  [(AVControlOverflowButton *)&v12 contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configuration animator:animatorCopy];
  objc_storeWeak(&self->_activeMenuInteraction, interactionCopy);

  v10 = [(AVControlOverflowButton *)self delegate:v12.receiver];
  if (objc_opt_respondsToSelector())
  {
    v11 = [[AVKitGlassInteractionAnimating alloc] initWithInteractionAnimation:animatorCopy];
    [v10 overflowButtonWillShowContextMenu:self animator:v11];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v10 overflowButtonWillShowContextMenu:self];
  }
}

- (void)updateContextMenu
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_activeMenuInteraction);

  if (WeakRetained)
  {
    delegate = [(AVControlOverflowButton *)self delegate];
    v5 = [delegate overflowMenuItemsForControlOverflowButton:self];

    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v13 = objc_loadWeakRetained(&self->_activeMenuInteraction);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __44__AVControlOverflowButton_updateContextMenu__block_invoke;
    v16[3] = &unk_1E7209E80;
    v17 = v7;
    v18 = v6;
    v14 = v6;
    v15 = v7;
    [v13 updateVisibleMenuWithBlock:v16];
  }
}

id __44__AVControlOverflowButton_updateContextMenu__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"AVControlOverflowMenu"];

  if (v5)
  {
    v6 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFED57D8 image:0 identifier:@"AVControlOverflowMenu" options:0 children:*(a1 + 32)];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithArray:*(a1 + 40)];
    v6 = v3;
    if ([v7 count])
    {
      while (1)
      {
        v6 = [v7 lastObject];
        [v7 removeLastObject];
        v8 = [v6 identifier];
        v9 = [v3 identifier];
        v10 = [v8 isEqualToString:v9];

        if (v10)
        {
          break;
        }

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = [v6 children];
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v18 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v7 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v13);
        }

        if (![v7 count])
        {
          v6 = v3;
          goto LABEL_17;
        }
      }
    }

LABEL_17:
  }

  return v6;
}

+ (id)overflowButtonBordered:(BOOL)bordered
{
  v3 = @"ellipsis";
  if (bordered)
  {
    v3 = @"ellipsis.circle";
  }

  v4 = v3;
  v5 = [AVControlOverflowButton _buttonWithImageName:v4 isLegacyButton:0];

  return v5;
}

+ (id)_buttonWithImageName:(uint64_t)name isLegacyButton:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  v5 = AVLocalizedString(@"More Controls");
  v6 = [(AVButton *)AVControlOverflowButton buttonWithAccessibilityIdentifier:@"More Controls" accessibilityLabel:v5 isFirstGeneration:name];

  if (v6)
  {
    objc_initWeak(&location, v6);
    v7 = MEMORY[0x1E69DC928];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __63__AVControlOverflowButton__buttonWithImageName_isLegacyButton___block_invoke;
    v16 = &unk_1E7209E58;
    objc_copyWeak(&v17, &location);
    v8 = [v7 elementWithUncachedProvider:&v13];
    v9 = MEMORY[0x1E69DCC60];
    v19[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:{1, v13, v14, v15, v16}];
    v11 = [v9 menuWithTitle:&stru_1EFED57D8 image:0 identifier:@"AVControlOverflowMenu" options:0 children:v10];

    [v6 setPreferredMenuElementOrder:2];
    [v6 setShowsMenuAsPrimaryAction:1];
    [v6 setMenu:v11];
    [v6 setImageName:v4];
    [v6 setAppliesTransformToImageViewWhenHighlighted:1];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __63__AVControlOverflowButton__buttonWithImageName_isLegacyButton___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5 = [v4 overflowMenuItemsForControlOverflowButton:WeakRetained];
  v3[2](v3, v5);
}

@end