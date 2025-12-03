@interface LAPSPasscodeOptionsSheetViewController
- (CGSize)preferredContentSize;
- (LAPSPasscodeOptionsSheetViewController)initWithConfiguration:(id)configuration style:(int64_t)style;
- (LAPSPasscodeOptionsViewControllerDelegate)delegate;
- (id)_cellIdentifierForIndexPath:(id)path;
- (id)_tableCellTextColor;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)supportedInterfaceOrientations;
- (void)_changePasscodeRecoveryStatus:(id)status;
- (void)_changeSelectedPasscodeTypeIndex:(int64_t)index;
- (void)_close:(id)_close;
- (void)_setup;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation LAPSPasscodeOptionsSheetViewController

- (LAPSPasscodeOptionsSheetViewController)initWithConfiguration:(id)configuration style:(int64_t)style
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = LAPSPasscodeOptionsSheetViewController;
  v8 = [(LAPSPasscodeOptionsSheetViewController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, configuration);
    v9->_style = style;
    allowedPasscodeTypes = [(LAPSPasscodeOptionsViewControllerConfiguration *)v9->_config allowedPasscodeTypes];
    allowedPasscodeTypes = v9->_allowedPasscodeTypes;
    v9->_allowedPasscodeTypes = allowedPasscodeTypes;

    v12 = v9->_allowedPasscodeTypes;
    selectedPasscodeType = [(LAPSPasscodeOptionsViewControllerConfiguration *)v9->_config selectedPasscodeType];
    v9->_selectedPasscodeTypeIndex = [(NSOrderedSet *)v12 indexOfObject:selectedPasscodeType];
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 1;
  }

  else
  {
    return [(NSOrderedSet *)self->_allowedPasscodeTypes count];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(LAPSPasscodeOptionsSheetViewController *)self _cellIdentifierForIndexPath:pathCopy];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:v8];
  }

  [v9 setAccessoryType:0];
  [v9 setSelectionStyle:0];
  if ([pathCopy section])
  {
    if ([pathCopy section] != 1)
    {
      [LAPSPasscodeOptionsSheetViewController tableView:cellForRowAtIndexPath:];
    }

    defaultContentConfiguration = [v9 defaultContentConfiguration];
    passcodeRecoveryTitle = [(LAPSPasscodeOptionsViewControllerConfiguration *)self->_config passcodeRecoveryTitle];
    [defaultContentConfiguration setText:passcodeRecoveryTitle];

    [v9 setContentConfiguration:defaultContentConfiguration];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__LAPSPasscodeOptionsSheetViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
    v19[3] = &unk_278A65D90;
    v19[4] = self;
    v12 = __74__LAPSPasscodeOptionsSheetViewController_tableView_cellForRowAtIndexPath___block_invoke_2(v19);
    [v9 setAccessoryView:v12];
    goto LABEL_9;
  }

  v13 = [pathCopy row];
  if (v13 >= [(NSOrderedSet *)self->_allowedPasscodeTypes count])
  {
    [LAPSPasscodeOptionsSheetViewController tableView:cellForRowAtIndexPath:];
  }

  defaultContentConfiguration = [v9 defaultContentConfiguration];
  textProperties = [defaultContentConfiguration textProperties];
  _tableCellTextColor = [(LAPSPasscodeOptionsSheetViewController *)self _tableCellTextColor];
  [textProperties setColor:_tableCellTextColor];

  v16 = -[NSOrderedSet objectAtIndex:](self->_allowedPasscodeTypes, "objectAtIndex:", [pathCopy row]);
  localizedName = [v16 localizedName];
  [defaultContentConfiguration setText:localizedName];

  [v9 setContentConfiguration:defaultContentConfiguration];
  if ([pathCopy row] == self->_selectedPasscodeTypeIndex)
  {
    [v9 setSelected:1];
    [viewCopy selectRowAtIndexPath:pathCopy animated:0 scrollPosition:0];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__LAPSPasscodeOptionsSheetViewController_tableView_cellForRowAtIndexPath___block_invoke;
    block[3] = &unk_278A65D40;
    block[4] = self;
    v21 = viewCopy;
    v22 = pathCopy;
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

- (id)_cellIdentifierForIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    if ([pathCopy section] != 1)
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    v7 = [pathCopy row];
    if (v7 < [(NSOrderedSet *)self->_allowedPasscodeTypes count])
    {
      -[LAPSPasscodeOptionsSheetViewController _changeSelectedPasscodeTypeIndex:](self, "_changeSelectedPasscodeTypeIndex:", [pathCopy row]);
      v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
      [v8 setAccessoryType:3];
    }
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    v7 = 0;
  }

  else
  {
    indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
    if ([indexPathForSelectedRow isEqual:pathCopy])
    {
      v9 = 0;
    }

    else
    {
      v9 = pathCopy;
    }

    v7 = v9;
  }

  return v7;
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
    v7 = [indexPathForSelectedRow isEqual:pathCopy];

    if ((v7 & 1) == 0)
    {
      v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
      [v8 setAccessoryType:0];
    }
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = objc_opt_new();

  return v4;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = objc_opt_new();

  return v4;
}

- (void)_setup
{
  v30[4] = *MEMORY[0x277D85DE8];
  view = [(LAPSPasscodeOptionsSheetViewController *)self view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = objc_alloc(MEMORY[0x277D75B40]);
  _tableViewStyle = [(LAPSPasscodeOptionsSheetViewController *)self _tableViewStyle];
  v7 = [v5 initWithFrame:_tableViewStyle style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setDataSource:self];
  [v7 setDelegate:self];
  [v7 setAllowsMultipleSelection:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setSectionHeaderTopPadding:0.0];
  view2 = [(LAPSPasscodeOptionsSheetViewController *)self view];
  [view2 addSubview:v7];

  v21 = MEMORY[0x277CCAAD0];
  topAnchor = [v7 topAnchor];
  view3 = [(LAPSPasscodeOptionsSheetViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[0] = v25;
  bottomAnchor = [v7 bottomAnchor];
  view4 = [(LAPSPasscodeOptionsSheetViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v30[1] = v20;
  leadingAnchor = [v7 leadingAnchor];
  view5 = [(LAPSPasscodeOptionsSheetViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[2] = v11;
  trailingAnchor = [v7 trailingAnchor];
  view6 = [(LAPSPasscodeOptionsSheetViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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

- (void)_close:(id)_close
{
  [(LAPSPasscodeOptionsSheetViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_43];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeOptionsViewControllerWillDisappear:self];
}

- (void)_changePasscodeRecoveryStatus:(id)status
{
  statusCopy = status;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [LAPSPasscodeOptionsSheetViewController _changePasscodeRecoveryStatus:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passcodeOptionsViewController:self didSetPasscodeRecoveryEnabled:{objc_msgSend(statusCopy, "isOn")}];
}

- (void)_changeSelectedPasscodeTypeIndex:(int64_t)index
{
  if (index < 0 || [(NSOrderedSet *)self->_allowedPasscodeTypes count]<= index)
  {
    [LAPSPasscodeOptionsSheetViewController _changeSelectedPasscodeTypeIndex:];
  }

  if (self->_selectedPasscodeTypeIndex != index)
  {
    self->_selectedPasscodeTypeIndex = index;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [(NSOrderedSet *)self->_allowedPasscodeTypes objectAtIndex:index];
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