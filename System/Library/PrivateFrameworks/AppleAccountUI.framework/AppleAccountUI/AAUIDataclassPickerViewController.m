@interface AAUIDataclassPickerViewController
- (AAUIDataclassPickerViewController)initWithCoder:(id)a3;
- (AAUIDataclassPickerViewController)initWithDataclassOptions:(id)a3 account:(id)a4;
- (AAUIDataclassPickerViewControllerDelegate)delegate;
- (double)_compressedHeightForView:(id)a3 containedInView:(id)a4;
- (double)heightForHeaderInTableView:(id)a3;
- (id)_cancelBarButtonItem;
- (id)_messageText;
- (id)_nextBarButtonItem;
- (id)_signOutFooterText;
- (id)_tableFooterView;
- (id)_tableHeaderView;
- (id)_tableView;
- (id)_titleText;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_additionalInformationSelected:(id)a3;
- (void)_cancelButtonSelected:(id)a3;
- (void)_delegate_signOutViewControllerDidCancel;
- (void)_delegate_signOutViewControllerDidCompleteWithDataclassActions:(id)a3;
- (void)_dismissAdditionalInformation:(id)a3;
- (void)_nextButtonSelected:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadView;
- (void)setDataclassOptions:(id)a3;
- (void)switchTableViewCellDidUpdateValue:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AAUIDataclassPickerViewController

- (AAUIDataclassPickerViewController)initWithDataclassOptions:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = AAUIDataclassPickerViewController;
  v8 = [(AAUIDataclassPickerViewController *)&v12 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[_AAUIDataclassOptionCache alloc] initWithDataclassOptions:v6];
    dataclassOptionCache = v8->_dataclassOptionCache;
    v8->_dataclassOptionCache = v9;

    objc_storeStrong(&v8->_account, a4);
  }

  return v8;
}

- (AAUIDataclassPickerViewController)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AAUIDataclassPickerViewController;
  v5 = [(AAUIDataclassPickerViewController *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_dataclassOptions"];

    v11 = [[_AAUIDataclassOptionCache alloc] initWithDataclassOptions:v10];
    dataclassOptionCache = v5->_dataclassOptionCache;
    v5->_dataclassOptionCache = v11;
  }

  return v5;
}

- (void)loadView
{
  v3 = [AAUIBuddyView alloc];
  v4 = [(AAUIBuddyView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AAUIDataclassPickerViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v42[4] = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = AAUIDataclassPickerViewController;
  [(AAUIDataclassPickerViewController *)&v40 viewDidLoad];
  v3 = [(AAUIDataclassPickerViewController *)self navigationItem];
  v4 = [(AAUIDataclassPickerViewController *)self _cancelBarButtonItem];
  [v3 setLeftBarButtonItem:v4];

  v5 = [(AAUIDataclassPickerViewController *)self navigationItem];
  v6 = [(AAUIDataclassPickerViewController *)self _nextBarButtonItem];
  [v5 setRightBarButtonItem:v6];

  v7 = [(AAUIDataclassPickerViewController *)self _tableView];
  v8 = [(AAUIDataclassPickerViewController *)self view];
  [v8 addSubview:v7];

  v29 = MEMORY[0x1E696ACD8];
  v37 = [v7 topAnchor];
  v38 = [(AAUIDataclassPickerViewController *)self view];
  v36 = [v38 contentLayoutGuide];
  v35 = [v36 topAnchor];
  v34 = [v37 constraintEqualToAnchor:v35];
  v42[0] = v34;
  v32 = [v7 leftAnchor];
  v33 = [(AAUIDataclassPickerViewController *)self view];
  v31 = [v33 contentLayoutGuide];
  v30 = [v31 leftAnchor];
  v28 = [v32 constraintEqualToAnchor:v30];
  v42[1] = v28;
  v39 = v7;
  v26 = [v7 rightAnchor];
  v27 = [(AAUIDataclassPickerViewController *)self view];
  v9 = [v27 contentLayoutGuide];
  v10 = [v9 rightAnchor];
  v11 = [v26 constraintEqualToAnchor:v10];
  v42[2] = v11;
  v12 = [v7 bottomAnchor];
  v13 = [(AAUIDataclassPickerViewController *)self view];
  v14 = [v13 contentLayoutGuide];
  v15 = [v14 bottomAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];
  v42[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  [v29 activateConstraints:v17];

  v18 = MEMORY[0x1E6985DB0];
  v19 = *MEMORY[0x1E698BA28];
  v20 = [(ACAccount *)self->_account aa_altDSID];
  v21 = [v18 analyticsEventWithName:v19 altDSID:v20 flowID:self->_telemetryFlowID];

  v22 = *MEMORY[0x1E698BB30];
  v41[0] = *MEMORY[0x1E698BB28];
  v41[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v24 = [v23 aaf_arrayAsCommaSeperatedString];
  [v21 setObject:v24 forKeyedSubscript:*MEMORY[0x1E6997818]];

  v25 = [MEMORY[0x1E698B810] reporter];
  [v25 sendEvent:v21];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AAUIDataclassPickerViewController;
  [(AAUIDataclassPickerViewController *)&v5 viewWillAppear:a3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AAUIDataclassPickerViewController_viewWillAppear___block_invoke;
  block[3] = &unk_1E820B8F0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)viewWillLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = AAUIDataclassPickerViewController;
  [(AAUIDataclassPickerViewController *)&v11 viewWillLayoutSubviews];
  v3 = [(AAUIDataclassPickerViewController *)self topLayoutGuide];
  [v3 length];
  v5 = v4;
  v6 = [(AAUIDataclassPickerViewController *)self bottomLayoutGuide];
  [v6 length];
  v8 = v7;
  [(UITableView *)self->_tableView frame];
  MaxX = CGRectGetMaxX(v12);
  v10 = [(AAUIDataclassPickerViewController *)self view];
  [v10 bounds];
  [(UITableView *)self->_tableView setScrollIndicatorInsets:v5, 0.0, v8, MaxX - CGRectGetWidth(v13)];
}

- (void)setDataclassOptions:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(_AAUIDataclassOptionCache *)self->_dataclassOptionCache setDataclassOptions:v4];

  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (id)_cancelBarButtonItem
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonSelected_];

  return v2;
}

- (id)_nextBarButtonItem
{
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SIGN_OUT_NAVBAR_NEXT" value:&stru_1F447F790 table:@"Localizable"];
  v6 = [v3 initWithTitle:v5 style:2 target:self action:sel__nextButtonSelected_];

  return v6;
}

- (id)_tableHeaderView
{
  v31[4] = *MEMORY[0x1E69E9840];
  tableHeaderView = self->_tableHeaderView;
  if (!tableHeaderView)
  {
    v4 = [AAUIBuddyView alloc];
    v5 = [(AAUIBuddyView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_tableHeaderView;
    self->_tableHeaderView = v5;

    v7 = objc_alloc(MEMORY[0x1E69B7D28]);
    v8 = [(AAUIDataclassPickerViewController *)self _titleText];
    v9 = [(AAUIDataclassPickerViewController *)self _messageText];
    v10 = [v7 initWithTitle:v8 detailText:v9 icon:0];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AAUIBuddyView *)self->_tableHeaderView addSubview:v10];
    v23 = objc_alloc(MEMORY[0x1E695DF70]);
    v29 = [v10 topAnchor];
    v30 = [(AAUIBuddyView *)self->_tableHeaderView contentLayoutGuide];
    v28 = [v30 topAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v31[0] = v27;
    v26 = [v10 leadingAnchor];
    v25 = [(AAUIBuddyView *)self->_tableHeaderView leadingAnchor];
    v22 = [v26 constraintEqualToAnchor:v25];
    v31[1] = v22;
    v21 = [v10 trailingAnchor];
    v11 = [(AAUIBuddyView *)self->_tableHeaderView trailingAnchor];
    v12 = [v21 constraintEqualToAnchor:v11];
    v31[2] = v12;
    v13 = [v10 bottomAnchor];
    v14 = [(AAUIBuddyView *)self->_tableHeaderView contentLayoutGuide];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v31[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    v24 = [v23 initWithArray:v17];

    [MEMORY[0x1E696ACD8] activateConstraints:v24];
    v18 = self->_tableHeaderView;
    v19 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(AAUIBuddyView *)v18 setBackgroundColor:v19];

    [(AAUIBuddyView *)self->_tableHeaderView setAccessibilityIdentifier:@"header-view"];
    tableHeaderView = self->_tableHeaderView;
  }

  return tableHeaderView;
}

- (id)_tableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD020]);
    v5 = [v4 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_tableView;
    self->_tableView = v5;

    [(UITableView *)self->_tableView setAllowsSelection:0];
    v7 = self->_tableView;
    v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UITableView *)v7 setBackgroundColor:v8];

    [(UITableView *)self->_tableView setClipsToBounds:0];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView _setDrawsSeparatorAtTopOfSections:1];
    [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
    [(UITableView *)self->_tableView setSeparatorStyle:0];
    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"DataclassCellIdentifier"];
    [(UITableView *)self->_tableView setAccessibilityIdentifier:@"tableView"];
    tableView = self->_tableView;
  }

  return tableView;
}

- (id)_tableFooterView
{
  tableFooterView = self->_tableFooterView;
  if (!tableFooterView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD050]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_tableFooterView;
    self->_tableFooterView = v5;

    v7 = [(AAUIDataclassPickerViewController *)self _signOutFooterText];
    if (v7)
    {
      v8 = [MEMORY[0x1E69DCC28] groupedFooterConfiguration];
      [v8 setText:v7];
      [(UITableViewHeaderFooterView *)self->_tableFooterView setContentConfiguration:v8];
      [(UITableViewHeaderFooterView *)self->_tableFooterView setAccessibilityIdentifier:@"footer-view"];
    }

    v9 = self->_tableFooterView;
    v10 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UITableViewHeaderFooterView *)v9 setBackgroundColor:v10];

    tableFooterView = self->_tableFooterView;
  }

  return tableFooterView;
}

- (id)_signOutFooterText
{
  v3 = [(AAUIDataclassPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 footerTextForDataclassPickerViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_titleText
{
  v3 = [(AAUIDataclassPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 titleTextForDataclassPickerViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_messageText
{
  v3 = [(AAUIDataclassPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 messageTextForDataclassPickerViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_cancelButtonSelected:(id)a3
{
  v4 = MEMORY[0x1E6985DB0];
  v5 = *MEMORY[0x1E698BA68];
  v6 = [(ACAccount *)self->_account aa_altDSID];
  v8 = [v4 analyticsEventWithName:v5 altDSID:v6 flowID:self->_telemetryFlowID];

  [v8 setObject:*MEMORY[0x1E698BB28] forKeyedSubscript:*MEMORY[0x1E6997820]];
  v7 = [MEMORY[0x1E698B810] reporter];
  [v7 sendEvent:v8];

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(AAUIDataclassPickerViewController *)self _delegate_signOutViewControllerDidCancel];
}

- (void)_nextButtonSelected:(id)a3
{
  v4 = MEMORY[0x1E6985DB0];
  v5 = *MEMORY[0x1E698BA68];
  v6 = [(ACAccount *)self->_account aa_altDSID];
  v10 = [v4 analyticsEventWithName:v5 altDSID:v6 flowID:self->_telemetryFlowID];

  [v10 setObject:*MEMORY[0x1E698BB30] forKeyedSubscript:*MEMORY[0x1E6997820]];
  v7 = [MEMORY[0x1E698B810] reporter];
  [v7 sendEvent:v10];

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = [(_AAUIDataclassOptionCache *)self->_dataclassOptionCache dataclassOptions];
  v9 = [v8 aaf_map:&__block_literal_global_129];

  [(AAUIDataclassPickerViewController *)self _delegate_signOutViewControllerDidCompleteWithDataclassActions:v9];
}

id __57__AAUIDataclassPickerViewController__nextButtonSelected___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 isEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  v4 = [MEMORY[0x1E6959A58] actionWithType:v3];

  return v4;
}

- (void)_additionalInformationSelected:(id)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v14 = objc_alloc_init(MEMORY[0x1E69C56C0]);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SIGN_OUT_ADDITIONAL_INFO" value:&stru_1F447F790 table:@"Localizable"];
  [v14 setHTMLContent:v5 isFragment:1];

  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissAdditionalInformation_];
  v7 = [v14 navigationItem];
  [v7 setRightBarButtonItem:v6];

  v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v14];
  [v8 setModalPresentationStyle:2];
  v9 = [v8 navigationBar];
  v10 = objc_opt_new();
  [v9 setBackgroundImage:v10 forBarMetrics:0];

  v11 = [v8 navigationBar];
  v12 = objc_opt_new();
  [v11 setShadowImage:v12];

  v13 = [v8 navigationBar];
  [v13 setTranslucent:1];

  [(AAUIDataclassPickerViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_dismissAdditionalInformation:(id)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);

  [(AAUIDataclassPickerViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_delegate_signOutViewControllerDidCancel
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(AAUIDataclassPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 dataclassPickerViewControllerDidCancel:self];
  }
}

- (void)_delegate_signOutViewControllerDidCompleteWithDataclassActions:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = [(AAUIDataclassPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 dataclassPickerViewController:self didCompleteWithDataclassActions:v5];
  }
}

- (void)switchTableViewCellDidUpdateValue:(id)a3
{
  dataclassOptionCache = self->_dataclassOptionCache;
  v4 = a3;
  v5 = [(_AAUIDataclassOptionCache *)dataclassOptionCache dataclassOptions];
  v6 = [v4 dataclass];
  v8 = [v5 objectForKeyedSubscript:v6];

  v7 = [v4 control];

  [v8 setEnabled:{objc_msgSend(v7, "isOn")}];
}

- (void)encodeWithCoder:(id)a3
{
  dataclassOptionCache = self->_dataclassOptionCache;
  v4 = a3;
  v5 = [(_AAUIDataclassOptionCache *)dataclassOptionCache dataclassOptions];
  [v4 encodeObject:v5 forKey:@"_dataclassOptions"];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (self->_tableView != a3)
  {
    return 0;
  }

  v5 = [(_AAUIDataclassOptionCache *)self->_dataclassOptionCache filteredDataclasses];
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  dataclassOptionCache = self->_dataclassOptionCache;
  v7 = a4;
  v8 = a3;
  v9 = [(_AAUIDataclassOptionCache *)dataclassOptionCache filteredDataclasses];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  v11 = [v8 dequeueReusableCellWithIdentifier:@"DataclassCellIdentifier" forIndexPath:v7];

  v12 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v11 setBackgroundColor:v12];

  [v11 setDelegate:self];
  [v11 setDataclass:v10];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:v10 value:&stru_1F447F790 table:@"Localizable"];

  v15 = [v11 textLabel];
  [v15 setText:v14];

  v16 = [(_AAUIDataclassOptionCache *)self->_dataclassOptionCache dataclassOptions];
  v17 = [v16 objectForKeyedSubscript:v10];

  v18 = [v11 control];
  [v18 setEnabled:{objc_msgSend(v17, "isEditable")}];

  v19 = [v11 control];
  [v19 setOn:{objc_msgSend(v17, "isEnabled")}];

  return v11;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 || (-[_AAUIDataclassOptionCache filteredDataclasses](self->_dataclassOptionCache, "filteredDataclasses", a3), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, !v6))
  {
    v4 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SIGN_OUT_TABLE_HEADER" value:&stru_1F447F790 table:@"Localizable"];
    v4 = [v8 localizedUppercaseString];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  [v5 setSeparatorStyle:1];
  [v5 _setShouldHaveFullLengthBottomSeparator:0];
  [v5 _setShouldHaveFullLengthTopSeparator:0];
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(AAUIDataclassPickerViewController *)self _tableFooterView:a3];
  }

  return v6;
}

- (double)heightForHeaderInTableView:(id)a3
{
  v4 = a3;
  v5 = [(AAUIDataclassPickerViewController *)self _tableHeaderView];
  [(AAUIDataclassPickerViewController *)self _compressedHeightForView:v5 containedInView:v4];
  v7 = v6;

  return v7;
}

- (double)_compressedHeightForView:(id)a3 containedInView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 widthAnchor];
  [v5 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v16 = [v7 constraintEqualToConstant:CGRectGetWidth(v20)];

  [v16 setActive:1];
  [v6 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v18 = v17;

  [v16 setActive:0];
  return v18;
}

- (AAUIDataclassPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end