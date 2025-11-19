@interface LAPSPasscodeOptionsSheetViewController
- (CGSize)preferredContentSize;
- (LAPSPasscodeOptionsSheetViewController)initWithConfiguration:(id)a3 style:(int64_t)a4;
- (LAPSPasscodeOptionsViewControllerDelegate)delegate;
- (id)_cellIdentifierForIndexPath:(id)a3;
- (id)_tableCellTextColor;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_changePasscodeRecoveryStatus:(id)a3;
- (void)_changeSelectedPasscodeTypeIndex:(int64_t)a3;
- (void)_close:(id)a3;
- (void)_setup;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation LAPSPasscodeOptionsSheetViewController

- (LAPSPasscodeOptionsSheetViewController)initWithConfiguration:(id)a3 style:(int64_t)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = LAPSPasscodeOptionsSheetViewController;
  v8 = [(LAPSPasscodeOptionsSheetViewController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, a3);
    v9->_style = a4;
    v10 = [(LAPSPasscodeOptionsViewControllerConfiguration *)v9->_config allowedPasscodeTypes];
    allowedPasscodeTypes = v9->_allowedPasscodeTypes;
    v9->_allowedPasscodeTypes = v10;

    v12 = v9->_allowedPasscodeTypes;
    v13 = [(LAPSPasscodeOptionsViewControllerConfiguration *)v9->_config selectedPasscodeType];
    v9->_selectedPasscodeTypeIndex = [(NSOrderedSet *)v12 indexOfObject:v13];
  }

  return v9;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LAPSPasscodeOptionsSheetViewController;
  [(LAPSPasscodeOptionsSheetViewController *)&v3 viewDidLoad];
  [(LAPSPasscodeOptionsSheetViewController *)self _setup];
}

- (CGSize)preferredContentSize
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained contentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (![(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config isPasscodeRecoverySupported])
  {
    return 1;
  }

  if ([(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config isPasscodeRecoveryOptionVisible])
  {
    return 2;
  }

  return 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  else
  {
    return [(NSOrderedSet *)self->_allowedPasscodeTypes count];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(LAPSPasscodeOptionsSheetViewController *)self _cellIdentifierForIndexPath:v7];
  v9 = [v6 dequeueReusableCellWithIdentifier:v8];
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:v8];
  }

  [v9 setAccessoryType:0];
  [v9 setSelectionStyle:0];
  if ([v7 section])
  {
    if ([v7 section] != 1)
    {
      [LAPSPasscodeOptionsSheetViewController tableView:cellForRowAtIndexPath:];
    }

    v10 = [v9 defaultContentConfiguration];
    v11 = [(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config passcodeRecoveryTitle];
    [v10 setText:v11];

    [v9 setContentConfiguration:v10];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__LAPSPasscodeOptionsSheetViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
    v19[3] = &unk_278A65D90;
    v19[4] = self;
    v12 = __74__LAPSPasscodeOptionsSheetViewController_tableView_cellForRowAtIndexPath___block_invoke_2(v19);
    [v9 setAccessoryView:v12];
    goto LABEL_9;
  }

  v13 = [v7 row];
  if (v13 >= [(NSOrderedSet *)self->_allowedPasscodeTypes count])
  {
    [LAPSPasscodeOptionsSheetViewController tableView:cellForRowAtIndexPath:];
  }

  v10 = [v9 defaultContentConfiguration];
  v14 = [v10 textProperties];
  v15 = [(LAPSPasscodeOptionsSheetViewController *)self _tableCellTextColor];
  [v14 setColor:v15];

  v16 = -[NSOrderedSet objectAtIndex:](self->_allowedPasscodeTypes, "objectAtIndex:", [v7 row]);
  v17 = [v16 localizedName];
  [v10 setText:v17];

  [v9 setContentConfiguration:v10];
  if ([v7 row] == self->_selectedPasscodeTypeIndex)
  {
    [v9 setSelected:1];
    [v6 selectRowAtIndexPath:v7 animated:0 scrollPosition:0];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__LAPSPasscodeOptionsSheetViewController_tableView_cellForRowAtIndexPath___block_invoke;
    block[3] = &unk_278A65D40;
    block[4] = self;
    v21 = v6;
    v22 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v12 = v21;
LABEL_9:
  }

  return v9;
}

id __74__LAPSPasscodeOptionsSheetViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D75AE8]);
  [v2 setPreferredStyle:2];
  [v2 setOn:{objc_msgSend(*(*(a1 + 32) + 992), "isPasscodeRecoveryEnabled")}];
  [v2 setEnabled:{objc_msgSend(*(*(a1 + 32) + 992), "isPasscodeRecoveryRestricted") ^ 1}];
  objc_initWeak(&location, *(a1 + 32));
  v3 = MEMORY[0x277D750C8];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __74__LAPSPasscodeOptionsSheetViewController_tableView_cellForRowAtIndexPath___block_invoke_3;
  v9 = &unk_278A65D68;
  objc_copyWeak(&v10, &location);
  v4 = [v3 actionWithHandler:&v6];
  [v2 addAction:v4 forControlEvents:{4096, v6, v7, v8, v9}];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v2;
}

void __74__LAPSPasscodeOptionsSheetViewController_tableView_cellForRowAtIndexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _changePasscodeRecoveryStatus:v4];
}

- (id)_cellIdentifierForIndexPath:(id)a3
{
  v3 = a3;
  if ([v3 section])
  {
    if ([v3 section] != 1)
    {
      [LAPSPasscodeOptionsSheetViewController _cellIdentifierForIndexPath:];
    }

    v4 = @"PasscodeRecovery";
  }

  else
  {
    v4 = @"PasscodeType";
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (![v6 section])
  {
    v7 = [v6 row];
    if (v7 < [(NSOrderedSet *)self->_allowedPasscodeTypes count])
    {
      -[LAPSPasscodeOptionsSheetViewController _changeSelectedPasscodeTypeIndex:](self, "_changeSelectedPasscodeTypeIndex:", [v6 row]);
      v8 = [v9 cellForRowAtIndexPath:v6];
      [v8 setAccessoryType:3];
    }
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 section])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v5 indexPathForSelectedRow];
    if ([v8 isEqual:v6])
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v7 = v9;
  }

  return v7;
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v9 = a3;
  v5 = a4;
  if (![v5 section])
  {
    v6 = [v9 indexPathForSelectedRow];
    v7 = [v6 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      v8 = [v9 cellForRowAtIndexPath:v5];
      [v8 setAccessoryType:0];
    }
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = objc_opt_new();

  return v4;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = objc_opt_new();

  return v4;
}

- (void)_setup
{
  v30[4] = *MEMORY[0x277D85DE8];
  v3 = [(LAPSPasscodeOptionsSheetViewController *)self view];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = objc_alloc(MEMORY[0x277D75B40]);
  v6 = [(LAPSPasscodeOptionsSheetViewController *)self _tableViewStyle];
  v7 = [v5 initWithFrame:v6 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setDataSource:self];
  [v7 setDelegate:self];
  [v7 setAllowsMultipleSelection:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setSectionHeaderTopPadding:0.0];
  v8 = [(LAPSPasscodeOptionsSheetViewController *)self view];
  [v8 addSubview:v7];

  v21 = MEMORY[0x277CCAAD0];
  v27 = [v7 topAnchor];
  v28 = [(LAPSPasscodeOptionsSheetViewController *)self view];
  v26 = [v28 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v30[0] = v25;
  v23 = [v7 bottomAnchor];
  v24 = [(LAPSPasscodeOptionsSheetViewController *)self view];
  v22 = [v24 bottomAnchor];
  v20 = [v23 constraintEqualToAnchor:v22];
  v30[1] = v20;
  v19 = [v7 leadingAnchor];
  v9 = [(LAPSPasscodeOptionsSheetViewController *)self view];
  v10 = [v9 leadingAnchor];
  v11 = [v19 constraintEqualToAnchor:v10];
  v30[2] = v11;
  v12 = [v7 trailingAnchor];
  v13 = [(LAPSPasscodeOptionsSheetViewController *)self view];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v30[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v21 activateConstraints:v16];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __48__LAPSPasscodeOptionsSheetViewController__setup__block_invoke;
  v29[3] = &unk_278A65DF8;
  v29[4] = self;
  v17 = __48__LAPSPasscodeOptionsSheetViewController__setup__block_invoke(v29);
  [v7 setTableHeaderView:v17];

  objc_storeWeak(&self->_tableView, v7);
  v18 = *MEMORY[0x277D85DE8];
}

id __48__LAPSPasscodeOptionsSheetViewController__setup__block_invoke(uint64_t a1)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _tableViewNeedsHeaderView];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  if (v2)
  {
    v4 = [v3 initWithFrame:{0.0, 0.0, 0.0, 60.0}];
    v31 = (a1 + 32);
    v32 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = [*(*(a1 + 32) + 992) title];
    [v32 setText:v5];

    v6 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A28] weight:*MEMORY[0x277D743F8]];
    [v32 setFont:v6];

    [v4 addSubview:v32];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = MEMORY[0x277CCAAD0];
    v8 = [v32 centerYAnchor];
    v9 = [v4 centerYAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v37[0] = v10;
    v11 = [v32 leadingAnchor];
    v12 = [v4 leadingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:20.0];
    v37[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    [v7 activateConstraints:v14];

    v15 = MEMORY[0x277D75220];
    v16 = __48__LAPSPasscodeOptionsSheetViewController__setup__block_invoke_2();
    v17 = [MEMORY[0x277D750C8] actionWithHandler:&__block_literal_global_40];
    v18 = [v15 buttonWithConfiguration:v16 primaryAction:v17];

    [v4 addSubview:v18];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = MEMORY[0x277CCAAD0];
    v20 = [v18 centerYAnchor];
    v21 = [v4 centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v36[0] = v22;
    v23 = [v18 trailingAnchor];
    v24 = [v4 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:-20.0];
    v36[1] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    [v19 activateConstraints:v26];

    objc_initWeak(&location, *v31);
    v27 = MEMORY[0x277D750C8];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __48__LAPSPasscodeOptionsSheetViewController__setup__block_invoke_6;
    v33[3] = &unk_278A65D68;
    objc_copyWeak(&v34, &location);
    v28 = [v27 actionWithHandler:v33];
    [v18 addAction:v28 forControlEvents:64];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = [v3 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

id __48__LAPSPasscodeOptionsSheetViewController__setup__block_invoke_2()
{
  v0 = [MEMORY[0x277D75230] grayButtonConfiguration];
  v1 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  [v0 setImage:v1];

  [v0 setImageColorTransformer:&__block_literal_global_34];
  v2 = __48__LAPSPasscodeOptionsSheetViewController__setup__block_invoke_4();
  [v0 setPreferredSymbolConfigurationForImage:v2];

  [v0 setCornerStyle:4];
  [v0 setContentInsets:{5.0, 5.0, 5.0, 5.0}];

  return v0;
}

id __48__LAPSPasscodeOptionsSheetViewController__setup__block_invoke_4()
{
  v0 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D743F8]];
  v1 = [MEMORY[0x277D755D0] configurationWithFont:v0 scale:1];

  return v1;
}

void __48__LAPSPasscodeOptionsSheetViewController__setup__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _close:v4];
}

- (void)_close:(id)a3
{
  [(LAPSPasscodeOptionsSheetViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_43];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeOptionsViewControllerWillDisappear:self];
}

- (void)_changePasscodeRecoveryStatus:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [LAPSPasscodeOptionsSheetViewController _changePasscodeRecoveryStatus:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeOptionsViewController:self didSetPasscodeRecoveryEnabled:{objc_msgSend(v5, "isOn")}];
}

- (void)_changeSelectedPasscodeTypeIndex:(int64_t)a3
{
  if (a3 < 0 || [(NSOrderedSet *)self->_allowedPasscodeTypes count]<= a3)
  {
    [LAPSPasscodeOptionsSheetViewController _changeSelectedPasscodeTypeIndex:];
  }

  if (self->_selectedPasscodeTypeIndex != a3)
  {
    self->_selectedPasscodeTypeIndex = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [(NSOrderedSet *)self->_allowedPasscodeTypes objectAtIndex:a3];
    [WeakRetained passcodeOptionsViewController:self didSelectPasscodeType:v6];

    if ([(LAPSPasscodeOptionsSheetViewController *)self _tableRowShouldDismissOnSelection])
    {

      [(LAPSPasscodeOptionsSheetViewController *)self _close:0];
    }
  }
}

- (id)_tableCellTextColor
{
  style = self->_style;
  if (style == 1)
  {
    self = [MEMORY[0x277D75348] labelColor];
  }

  else if (!style)
  {
    self = [MEMORY[0x277D75348] tableCellBlueTextColor];
  }

  return self;
}

- (LAPSPasscodeOptionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end