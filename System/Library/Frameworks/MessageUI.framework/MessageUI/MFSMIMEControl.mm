@interface MFSMIMEControl
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (MFSMIMEControlDelegate)delegate;
- (id)_goToSettingsAction;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)menuWithOptions:(unint64_t)a3;
@end

@implementation MFSMIMEControl

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69DC8D8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__MFSMIMEControl_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v7[3] = &unk_1E8070680;
  objc_copyWeak(&v8, &location);
  v5 = [v4 configurationWithIdentifier:0 previewProvider:0 actionProvider:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

id __72__MFSMIMEControl_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = [v2 smimeStatusOptionsForControl:WeakRetained];

  v4 = [WeakRetained menuWithOptions:v3];

  return v4;
}

- (id)menuWithOptions:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = 0;
    goto LABEL_25;
  }

  v4 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(MFSMIMEControl *)self delegate];
  v8 = MEMORY[0x1E69DC628];
  if ((v4 & 2) != 0)
  {
    v15 = _EFLocalizedString();
    v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"lock.slash.fill"];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __34__MFSMIMEControl_menuWithOptions___block_invoke;
    v28[3] = &unk_1E806D8C8;
    v17 = v7;
    v29[0] = v17;
    v29[1] = self;
    v12 = [v8 actionWithTitle:v15 image:v16 identifier:0 handler:v28];

    [v6 addObject:v12];
    v13 = v29;
    if ((v4 & 4) != 0)
    {
      if ((v4 & 0x10) == 0 || (v4 & 0x20) != 0)
      {
        v24 = _EFLocalizedString();
      }

      else
      {
        v24 = EFLocalizedStringWithValue();
      }

      v18 = v24;
      v19 = [(MFSMIMEControl *)self _goToSettingsAction];
      [v6 addObject:v19];
      goto LABEL_23;
    }

    if ((v4 & 0x10) == 0)
    {
      v14 = _EFLocalizedString();
      goto LABEL_9;
    }

    if ((v4 & 0x20) != 0)
    {
      v18 = _EFLocalizedString();
      v19 = [(MFSMIMEControl *)self _goToSettingsAction];
      [v6 addObject:v19];
      goto LABEL_23;
    }

    v19 = [v17 sendingAddressForControl:self];
    v23 = MEMORY[0x1E696AEC0];
    v21 = _EFLocalizedString();
    v22 = [v23 stringWithFormat:v21, v19];
    goto LABEL_16;
  }

  v9 = _EFLocalizedString();
  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"lock.fill"];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __34__MFSMIMEControl_menuWithOptions___block_invoke_2;
  v26[3] = &unk_1E806D8C8;
  v11 = v7;
  v27[0] = v11;
  v27[1] = self;
  v12 = [v8 actionWithTitle:v9 image:v10 identifier:0 handler:v26];

  [v6 addObject:v12];
  v13 = v27;
  if ((v4 & 0x10) != 0)
  {
    if ((v4 & 0x20) != 0)
    {
      v18 = _EFLocalizedString();
      v19 = [(MFSMIMEControl *)self _goToSettingsAction];
      [v6 addObject:v19];
      goto LABEL_23;
    }

    v19 = [v11 sendingAddressForControl:self];
    v20 = MEMORY[0x1E696AEC0];
    v21 = _EFLocalizedString();
    v22 = [v20 stringWithFormat:v21, v19];
LABEL_16:
    v18 = v22;

LABEL_23:
    goto LABEL_24;
  }

  v14 = _EFLocalizedString();
LABEL_9:
  v18 = v14;
LABEL_24:

  v3 = [MEMORY[0x1E69DCC60] menuWithTitle:v18 children:v6];

LABEL_25:

  return v3;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  [(MFSMIMEControl *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MaxY = CGRectGetMaxY(v12);
  v9 = MidX;
  result.y = MaxY;
  result.x = v9;
  return result;
}

- (id)_goToSettingsAction
{
  v3 = MEMORY[0x1E69DC628];
  v4 = _EFLocalizedString();
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gearshape"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__MFSMIMEControl__goToSettingsAction__block_invoke;
  v8[3] = &unk_1E806E848;
  v8[4] = self;
  v6 = [v3 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  return v6;
}

void __37__MFSMIMEControl__goToSettingsAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 goToSettingsForControl:*(a1 + 32)];
}

- (MFSMIMEControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end