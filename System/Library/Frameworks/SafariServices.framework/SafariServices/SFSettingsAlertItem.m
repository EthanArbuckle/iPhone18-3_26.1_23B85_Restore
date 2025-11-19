@interface SFSettingsAlertItem
@end

@implementation SFSettingsAlertItem

id __78___SFSettingsAlertItem_optionsGroupWithTitle_action_subItemAction_controller___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) attributedStringForValue:v3];
  v5 = [*(a1 + 32) textStyleForValue:v3];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78___SFSettingsAlertItem_optionsGroupWithTitle_action_subItemAction_controller___block_invoke_2;
  v18[3] = &unk_1E8493BD8;
  v19 = *(a1 + 32);
  v8 = v3;
  v20 = v8;
  v9 = [_SFSettingsAlertItem optionGroupOptionWithAttributedTitle:v4 textStyle:v5 icon:v6 action:v7 handler:v18];

  [v9 setTintColor:0];
  if (objc_opt_respondsToSelector())
  {
    v10 = [*(a1 + 32) accessibilityIdentifierForValue:v8];
    [v9 setAccessibilityIdentifier:v10];
  }

  objc_initWeak(&location, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78___SFSettingsAlertItem_optionsGroupWithTitle_action_subItemAction_controller___block_invoke_3;
  v13[3] = &unk_1E8493C00;
  objc_copyWeak(&v16, &location);
  v14 = *(a1 + 32);
  v11 = v8;
  v15 = v11;
  [v9 setViewConfigurationBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v9;
}

void __78___SFSettingsAlertItem_optionsGroupWithTitle_action_subItemAction_controller___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 group];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [*(a1 + 32) shouldSelectValue:*(a1 + 40) forItem:v4 groupItem:v5])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v5 subItems];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10) setSelected:*(*(&v11 + 1) + 8 * v10) == v4];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [*(a1 + 32) setSelectedValue:*(a1 + 40)];
  }

  [v5 updateOptionsGroupDetailLabel];
}

void __78___SFSettingsAlertItem_optionsGroupWithTitle_action_subItemAction_controller___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [WeakRetained setSelected:{objc_msgSend(*(a1 + 32), "isSelectedValue:", *(a1 + 40))}];
    [*(a1 + 32) prepareView:v4 forItem:WeakRetained value:*(a1 + 40)];
  }
}

void __72___SFSettingsAlertItem_setUpSelectionHandlerIfNeededWithViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      v4 = [v6 handler];
      v5 = [MEMORY[0x1E695DFB0] null];
      (v4)[2](v4, v3, v5);
    }

    WeakRetained = v6;
  }
}

@end