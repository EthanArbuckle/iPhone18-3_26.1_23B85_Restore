@interface AAUIDataclassPickerViewController
- (AAUIDataclassPickerViewController)initWithCoder:(id)coder;
- (AAUIDataclassPickerViewController)initWithDataclassOptions:(id)options account:(id)account;
- (AAUIDataclassPickerViewControllerDelegate)delegate;
- (double)_compressedHeightForView:(id)view containedInView:(id)inView;
- (double)heightForHeaderInTableView:(id)view;
- (id)_cancelBarButtonItem;
- (id)_messageText;
- (id)_nextBarButtonItem;
- (id)_signOutFooterText;
- (id)_tableFooterView;
- (id)_tableHeaderView;
- (id)_tableView;
- (id)_titleText;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_additionalInformationSelected:(id)selected;
- (void)_cancelButtonSelected:(id)selected;
- (void)_delegate_signOutViewControllerDidCancel;
- (void)_delegate_signOutViewControllerDidCompleteWithDataclassActions:(id)actions;
- (void)_dismissAdditionalInformation:(id)information;
- (void)_nextButtonSelected:(id)selected;
- (void)encodeWithCoder:(id)coder;
- (void)loadView;
- (void)setDataclassOptions:(id)options;
- (void)switchTableViewCellDidUpdateValue:(id)value;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation AAUIDataclassPickerViewController

- (AAUIDataclassPickerViewController)initWithDataclassOptions:(id)options account:(id)account
{
  optionsCopy = options;
  accountCopy = account;
  v12.receiver = self;
  v12.super_class = AAUIDataclassPickerViewController;
  v8 = [(AAUIDataclassPickerViewController *)&v12 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[_AAUIDataclassOptionCache alloc] initWithDataclassOptions:optionsCopy];
    dataclassOptionCache = v8->_dataclassOptionCache;
    v8->_dataclassOptionCache = v9;

    objc_storeStrong(&v8->_account, account);
  }

  return v8;
}

- (AAUIDataclassPickerViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = AAUIDataclassPickerViewController;
  v5 = [(AAUIDataclassPickerViewController *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_dataclassOptions"];

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
  navigationItem = [(AAUIDataclassPickerViewController *)self navigationItem];
  _cancelBarButtonItem = [(AAUIDataclassPickerViewController *)self _cancelBarButtonItem];
  [navigationItem setLeftBarButtonItem:_cancelBarButtonItem];

  navigationItem2 = [(AAUIDataclassPickerViewController *)self navigationItem];
  _nextBarButtonItem = [(AAUIDataclassPickerViewController *)self _nextBarButtonItem];
  [navigationItem2 setRightBarButtonItem:_nextBarButtonItem];

  _tableView = [(AAUIDataclassPickerViewController *)self _tableView];
  view = [(AAUIDataclassPickerViewController *)self view];
  [view addSubview:_tableView];

  v29 = MEMORY[0x1E696ACD8];
  topAnchor = [_tableView topAnchor];
  view2 = [(AAUIDataclassPickerViewController *)self view];
  contentLayoutGuide = [view2 contentLayoutGuide];
  topAnchor2 = [contentLayoutGuide topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v42[0] = v34;
  leftAnchor = [_tableView leftAnchor];
  view3 = [(AAUIDataclassPickerViewController *)self view];
  contentLayoutGuide2 = [view3 contentLayoutGuide];
  leftAnchor2 = [contentLayoutGuide2 leftAnchor];
  v28 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v42[1] = v28;
  v39 = _tableView;
  rightAnchor = [_tableView rightAnchor];
  view4 = [(AAUIDataclassPickerViewController *)self view];
  contentLayoutGuide3 = [view4 contentLayoutGuide];
  rightAnchor2 = [contentLayoutGuide3 rightAnchor];
  v11 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v42[2] = v11;
  bottomAnchor = [_tableView bottomAnchor];
  view5 = [(AAUIDataclassPickerViewController *)self view];
  contentLayoutGuide4 = [view5 contentLayoutGuide];
  bottomAnchor2 = [contentLayoutGuide4 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v42[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  [v29 activateConstraints:v17];

  v18 = MEMORY[0x1E6985DB0];
  v19 = *MEMORY[0x1E698BA28];
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  v21 = [v18 analyticsEventWithName:v19 altDSID:aa_altDSID flowID:self->_telemetryFlowID];

  v22 = *MEMORY[0x1E698BB30];
  v41[0] = *MEMORY[0x1E698BB28];
  v41[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  aaf_arrayAsCommaSeperatedString = [v23 aaf_arrayAsCommaSeperatedString];
  [v21 setObject:aaf_arrayAsCommaSeperatedString forKeyedSubscript:*MEMORY[0x1E6997818]];

  reporter = [MEMORY[0x1E698B810] reporter];
  [reporter sendEvent:v21];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = AAUIDataclassPickerViewController;
  [(AAUIDataclassPickerViewController *)&v5 viewWillAppear:appear];
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
  topLayoutGuide = [(AAUIDataclassPickerViewController *)self topLayoutGuide];
  [topLayoutGuide length];
  v5 = v4;
  bottomLayoutGuide = [(AAUIDataclassPickerViewController *)self bottomLayoutGuide];
  [bottomLayoutGuide length];
  v8 = v7;
  [(UITableView *)self->_tableView frame];
  MaxX = CGRectGetMaxX(v12);
  view = [(AAUIDataclassPickerViewController *)self view];
  [view bounds];
  [(UITableView *)self->_tableView setScrollIndicatorInsets:v5, 0.0, v8, MaxX - CGRectGetWidth(v13)];
}

- (void)setDataclassOptions:(id)options
{
  optionsCopy = options;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(_AAUIDataclassOptionCache *)self->_dataclassOptionCache setDataclassOptions:optionsCopy];

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
    _titleText = [(AAUIDataclassPickerViewController *)self _titleText];
    _messageText = [(AAUIDataclassPickerViewController *)self _messageText];
    v10 = [v7 initWithTitle:_titleText detailText:_messageText icon:0];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AAUIBuddyView *)self->_tableHeaderView addSubview:v10];
    v23 = objc_alloc(MEMORY[0x1E695DF70]);
    topAnchor = [v10 topAnchor];
    contentLayoutGuide = [(AAUIBuddyView *)self->_tableHeaderView contentLayoutGuide];
    topAnchor2 = [contentLayoutGuide topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v31[0] = v27;
    leadingAnchor = [v10 leadingAnchor];
    leadingAnchor2 = [(AAUIBuddyView *)self->_tableHeaderView leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v31[1] = v22;
    trailingAnchor = [v10 trailingAnchor];
    trailingAnchor2 = [(AAUIBuddyView *)self->_tableHeaderView trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v31[2] = v12;
    bottomAnchor = [v10 bottomAnchor];
    contentLayoutGuide2 = [(AAUIBuddyView *)self->_tableHeaderView contentLayoutGuide];
    bottomAnchor2 = [contentLayoutGuide2 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v31[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    v24 = [v23 initWithArray:v17];

    [MEMORY[0x1E696ACD8] activateConstraints:v24];
    v18 = self->_tableHeaderView;
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(AAUIBuddyView *)v18 setBackgroundColor:systemBackgroundColor];

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
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UITableView *)v7 setBackgroundColor:systemBackgroundColor];

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

    _signOutFooterText = [(AAUIDataclassPickerViewController *)self _signOutFooterText];
    if (_signOutFooterText)
    {
      groupedFooterConfiguration = [MEMORY[0x1E69DCC28] groupedFooterConfiguration];
      [groupedFooterConfiguration setText:_signOutFooterText];
      [(UITableViewHeaderFooterView *)self->_tableFooterView setContentConfiguration:groupedFooterConfiguration];
      [(UITableViewHeaderFooterView *)self->_tableFooterView setAccessibilityIdentifier:@"footer-view"];
    }

    v9 = self->_tableFooterView;
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UITableViewHeaderFooterView *)v9 setBackgroundColor:systemBackgroundColor];

    tableFooterView = self->_tableFooterView;
  }

  return tableFooterView;
}

- (id)_signOutFooterText
{
  delegate = [(AAUIDataclassPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate footerTextForDataclassPickerViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_titleText
{
  delegate = [(AAUIDataclassPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate titleTextForDataclassPickerViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_messageText
{
  delegate = [(AAUIDataclassPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate messageTextForDataclassPickerViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_cancelButtonSelected:(id)selected
{
  v4 = MEMORY[0x1E6985DB0];
  v5 = *MEMORY[0x1E698BA68];
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  v8 = [v4 analyticsEventWithName:v5 altDSID:aa_altDSID flowID:self->_telemetryFlowID];

  [v8 setObject:*MEMORY[0x1E698BB28] forKeyedSubscript:*MEMORY[0x1E6997820]];
  reporter = [MEMORY[0x1E698B810] reporter];
  [reporter sendEvent:v8];

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(AAUIDataclassPickerViewController *)self _delegate_signOutViewControllerDidCancel];
}

- (void)_nextButtonSelected:(id)selected
{
  v4 = MEMORY[0x1E6985DB0];
  v5 = *MEMORY[0x1E698BA68];
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  v10 = [v4 analyticsEventWithName:v5 altDSID:aa_altDSID flowID:self->_telemetryFlowID];

  [v10 setObject:*MEMORY[0x1E698BB30] forKeyedSubscript:*MEMORY[0x1E6997820]];
  reporter = [MEMORY[0x1E698B810] reporter];
  [reporter sendEvent:v10];

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  dataclassOptions = [(_AAUIDataclassOptionCache *)self->_dataclassOptionCache dataclassOptions];
  v9 = [dataclassOptions aaf_map:&__block_literal_global_129];

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

- (void)_additionalInformationSelected:(id)selected
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v14 = objc_alloc_init(MEMORY[0x1E69C56C0]);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SIGN_OUT_ADDITIONAL_INFO" value:&stru_1F447F790 table:@"Localizable"];
  [v14 setHTMLContent:v5 isFragment:1];

  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissAdditionalInformation_];
  navigationItem = [v14 navigationItem];
  [navigationItem setRightBarButtonItem:v6];

  v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v14];
  [v8 setModalPresentationStyle:2];
  navigationBar = [v8 navigationBar];
  v10 = objc_opt_new();
  [navigationBar setBackgroundImage:v10 forBarMetrics:0];

  navigationBar2 = [v8 navigationBar];
  v12 = objc_opt_new();
  [navigationBar2 setShadowImage:v12];

  navigationBar3 = [v8 navigationBar];
  [navigationBar3 setTranslucent:1];

  [(AAUIDataclassPickerViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_dismissAdditionalInformation:(id)information
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);

  [(AAUIDataclassPickerViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_delegate_signOutViewControllerDidCancel
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUIDataclassPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataclassPickerViewControllerDidCancel:self];
  }
}

- (void)_delegate_signOutViewControllerDidCompleteWithDataclassActions:(id)actions
{
  actionsCopy = actions;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUIDataclassPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataclassPickerViewController:self didCompleteWithDataclassActions:actionsCopy];
  }
}

- (void)switchTableViewCellDidUpdateValue:(id)value
{
  dataclassOptionCache = self->_dataclassOptionCache;
  valueCopy = value;
  dataclassOptions = [(_AAUIDataclassOptionCache *)dataclassOptionCache dataclassOptions];
  dataclass = [valueCopy dataclass];
  v8 = [dataclassOptions objectForKeyedSubscript:dataclass];

  control = [valueCopy control];

  [v8 setEnabled:{objc_msgSend(control, "isOn")}];
}

- (void)encodeWithCoder:(id)coder
{
  dataclassOptionCache = self->_dataclassOptionCache;
  coderCopy = coder;
  dataclassOptions = [(_AAUIDataclassOptionCache *)dataclassOptionCache dataclassOptions];
  [coderCopy encodeObject:dataclassOptions forKey:@"_dataclassOptions"];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (self->_tableView != view)
  {
    return 0;
  }

  filteredDataclasses = [(_AAUIDataclassOptionCache *)self->_dataclassOptionCache filteredDataclasses];
  v6 = [filteredDataclasses count];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  dataclassOptionCache = self->_dataclassOptionCache;
  pathCopy = path;
  viewCopy = view;
  filteredDataclasses = [(_AAUIDataclassOptionCache *)dataclassOptionCache filteredDataclasses];
  v10 = [filteredDataclasses objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v11 = [viewCopy dequeueReusableCellWithIdentifier:@"DataclassCellIdentifier" forIndexPath:pathCopy];

  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v11 setBackgroundColor:secondarySystemBackgroundColor];

  [v11 setDelegate:self];
  [v11 setDataclass:v10];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:v10 value:&stru_1F447F790 table:@"Localizable"];

  textLabel = [v11 textLabel];
  [textLabel setText:v14];

  dataclassOptions = [(_AAUIDataclassOptionCache *)self->_dataclassOptionCache dataclassOptions];
  v17 = [dataclassOptions objectForKeyedSubscript:v10];

  control = [v11 control];
  [control setEnabled:{objc_msgSend(v17, "isEditable")}];

  control2 = [v11 control];
  [control2 setOn:{objc_msgSend(v17, "isEnabled")}];

  return v11;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section || (-[_AAUIDataclassOptionCache filteredDataclasses](self->_dataclassOptionCache, "filteredDataclasses", view), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, !v6))
  {
    localizedUppercaseString = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SIGN_OUT_TABLE_HEADER" value:&stru_1F447F790 table:@"Localizable"];
    localizedUppercaseString = [v8 localizedUppercaseString];
  }

  return localizedUppercaseString;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy setSeparatorStyle:1];
  [cellCopy _setShouldHaveFullLengthBottomSeparator:0];
  [cellCopy _setShouldHaveFullLengthTopSeparator:0];
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if (section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(AAUIDataclassPickerViewController *)self _tableFooterView:view];
  }

  return v6;
}

- (double)heightForHeaderInTableView:(id)view
{
  viewCopy = view;
  _tableHeaderView = [(AAUIDataclassPickerViewController *)self _tableHeaderView];
  [(AAUIDataclassPickerViewController *)self _compressedHeightForView:_tableHeaderView containedInView:viewCopy];
  v7 = v6;

  return v7;
}

- (double)_compressedHeightForView:(id)view containedInView:(id)inView
{
  inViewCopy = inView;
  viewCopy = view;
  widthAnchor = [viewCopy widthAnchor];
  [inViewCopy bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v16 = [widthAnchor constraintEqualToConstant:CGRectGetWidth(v20)];

  [v16 setActive:1];
  [viewCopy systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
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