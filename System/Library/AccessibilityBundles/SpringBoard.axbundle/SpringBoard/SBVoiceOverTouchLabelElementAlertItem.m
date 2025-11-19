@interface SBVoiceOverTouchLabelElementAlertItem
- (SBVoiceOverTouchLabelElementAlertItemDelegate)voiceOverAlertItemDelegate;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBVoiceOverTouchLabelElementAlertItem

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBAlertItem *)self alertController:a3];
  [v5 setAccessibilityIdentifier:@"VOLabelElement"];
  v6 = accessibilityLocalizedString(@"element.label.title");
  [v5 setTitle:v6];

  v7 = MEMORY[0x29EDC7920];
  v8 = accessibilityLocalizedString(@"VoiceOver.confirmation.Cancel");
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __77__SBVoiceOverTouchLabelElementAlertItem_configure_requirePasscodeForActions___block_invoke;
  v17[3] = &unk_29F2FC350;
  v17[4] = self;
  v9 = [v7 actionWithTitle:v8 style:1 handler:v17];
  [v5 addAction:v9];

  v10 = MEMORY[0x29EDC7920];
  v11 = accessibilityLocalizedString(@"element.label.save");
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __77__SBVoiceOverTouchLabelElementAlertItem_configure_requirePasscodeForActions___block_invoke_2;
  v15[3] = &unk_29F2FC378;
  v15[4] = self;
  v16 = v5;
  v12 = v5;
  v13 = [v10 actionWithTitle:v11 style:0 handler:v15];
  [v12 addAction:v13];

  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __77__SBVoiceOverTouchLabelElementAlertItem_configure_requirePasscodeForActions___block_invoke_3;
  v14[3] = &unk_29F2FC3A0;
  v14[4] = self;
  [v12 addTextFieldWithConfigurationHandler:v14];
}

void __77__SBVoiceOverTouchLabelElementAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 120));
    [v3 voiceOverTouchLabelElementAlertItemDidCancel:*(a1 + 32)];
  }
}

void __77__SBVoiceOverTouchLabelElementAlertItem_configure_requirePasscodeForActions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));

  if (WeakRetained)
  {
    v3 = [*(a1 + 40) textFields];
    v5 = [v3 firstObject];

    v4 = objc_loadWeakRetained((*(a1 + 32) + 120));
    [v4 voiceOverTouchLabelElementAlertItemDidAccept:*(a1 + 32) withTextField:v5];
  }
}

void __77__SBVoiceOverTouchLabelElementAlertItem_configure_requirePasscodeForActions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 initialValue];
  [v6 setText:v4];

  [v6 setDelegate:*(a1 + 32)];
  v5 = accessibilityLocalizedString(@"element.label.label");
  [v6 setPlaceholder:v5];

  [v6 setClearButtonMode:1];
  [v6 setReturnKeyType:9];
}

- (SBVoiceOverTouchLabelElementAlertItemDelegate)voiceOverAlertItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceOverAlertItemDelegate);

  return WeakRetained;
}

@end