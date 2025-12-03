@interface AKAuthorizationEmailEditPaneViewController
- (AKAuthorizationScopeChoices)editableScopeChoices;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (id)tableView:(id)view anonymousCellForRow:(unint64_t)row;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view emailCellForRow:(unint64_t)row;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AKAuthorizationEmailEditPaneViewController

- (void)viewDidLoad
{
  v32[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v30 = a2;
  v29.receiver = self;
  v29.super_class = AKAuthorizationEmailEditPaneViewController;
  [(AKAuthorizationPaneViewController *)&v29 viewDidLoad];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v20 localizedStringForKey:@"AUTHORIZE_EMAIL_CONTACT" value:&stru_28358EF68 table:@"Localizable"];
  [(AKAuthorizationEmailEditPaneViewController *)selfCopy setTitle:?];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationEmailAddressesTableViewCell"];
  MEMORY[0x277D82BD8](tableView);
  tableView2 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationEmailAnonymousTableViewCell"];
  MEMORY[0x277D82BD8](tableView2);
  tableView3 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView3 setDataSource:selfCopy];
  MEMORY[0x277D82BD8](tableView3);
  tableView4 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView4 setDelegate:selfCopy];
  MEMORY[0x277D82BD8](tableView4);
  v28 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76918] traits:0x8000];
  [v28 setFont:?];
  MEMORY[0x277D82BD8](v25);
  [v28 setTextAlignment:1];
  [v28 setNumberOfLines:0];
  [v28 setAdjustsFontSizeToFitWidth:0];
  applicationName = [(AKAuthorizationEmailEditPaneViewController *)selfCopy applicationName];
  v27 = [(NSString *)applicationName length];
  MEMORY[0x277D82BD8](applicationName);
  if (v27)
  {
    v12 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v16 localizedStringForKey:@"AUTHORIZE_EMAIL_EDIT_INFO_FORMAT" value:&stru_28358EF68 table:@"Localizable"];
    applicationName2 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy applicationName];
    v13 = [v12 stringWithFormat:v15, applicationName2];
    [v28 setText:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](applicationName2);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
  }

  else
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v18 localizedStringForKey:@"AUTHORIZE_EMAIL_EDIT_INFO" value:&stru_28358EF68 table:@"Localizable"];
    [v28 setText:?];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
  }

  paneHeaderStackView = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  [(UIStackView *)paneHeaderStackView addArrangedSubview:v28];
  MEMORY[0x277D82BD8](paneHeaderStackView);
  paneHeaderStackView2 = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(UIStackView *)paneHeaderStackView2 addArrangedSubview:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](paneHeaderStackView2);
  v6 = MEMORY[0x277CCAAD0];
  widthAnchor = [v28 widthAnchor];
  paneHeaderStackView3 = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  widthAnchor2 = [(UIStackView *)paneHeaderStackView3 widthAnchor];
  +[AKAuthorizationPaneMetrics editPaneInfoLabelHorizontalPadding];
  v8 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-(2.0 * v2)];
  v32[0] = v8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  [v6 activateConstraints:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](paneHeaderStackView3);
  MEMORY[0x277D82BD8](widthAnchor);
  objc_storeStrong(&v28, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v6 = a2;
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = AKAuthorizationEmailEditPaneViewController;
  [(AKAuthorizationEmailEditPaneViewController *)&v4 viewWillDisappear:disappear];
  editableDataSources = [(AKAuthorizationPaneViewController *)selfCopy editableDataSources];
  [(AKAuthorizationEditableDataSources *)editableDataSources setEditableScopeChoicesChanged:1];
  MEMORY[0x277D82BD8](editableDataSources);
}

- (AKAuthorizationScopeChoices)editableScopeChoices
{
  editableDataSources = [(AKAuthorizationPaneViewController *)self editableDataSources];
  editableScopeChoices = [(AKAuthorizationEditableDataSources *)editableDataSources editableScopeChoices];
  MEMORY[0x277D82BD8](editableDataSources);

  return editableScopeChoices;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v11 = 0;
  objc_storeStrong(&v11, path);
  v9 = 0;
  if ([v11 section] || (v7 = 1, objc_msgSend(v11, "row")))
  {
    v6 = 0;
    if ([v11 section] == 1)
    {
      v5 = [v11 row];
      editableScopeChoices = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
      v9 = 1;
      v6 = v5 < [(AKAuthorizationScopeChoices *)editableScopeChoices emailCount];
    }

    v7 = v6;
  }

  v14 = v7;
  if (v9)
  {
    MEMORY[0x277D82BD8](editableScopeChoices);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v14 & 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v21 = 0;
  objc_storeStrong(&v21, path);
  section = [v21 section];
  if (section)
  {
    if (section == 1)
    {
      v13 = [v21 row];
      editableScopeChoices = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
      emailCount = [(AKAuthorizationScopeChoices *)editableScopeChoices emailCount];
      MEMORY[0x277D82BD8](editableScopeChoices);
      if (v13 >= emailCount)
      {
        v18 = _AKLogSiwa();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v21, "row")}];
          v4 = MEMORY[0x277CCABB0];
          editableScopeChoices2 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
          v5 = [v4 numberWithUnsignedInteger:{-[AKAuthorizationScopeChoices emailCount](editableScopeChoices2, "emailCount")}];
          __os_log_helper_16_2_2_8_64_8_64(v24, v7, v5);
          _os_log_error_impl(&dword_222379000, v18, OS_LOG_TYPE_ERROR, "row %@ selected >= %@ emails available", v24, 0x16u);
          MEMORY[0x277D82BD8](v5);
          MEMORY[0x277D82BD8](editableScopeChoices2);
          MEMORY[0x277D82BD8](v7);
        }

        objc_storeStrong(&v18, 0);
      }

      else
      {
        editableScopeChoices3 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
        [(AKAuthorizationScopeChoices *)editableScopeChoices3 setWantsPrivateEmail:0];
        MEMORY[0x277D82BD8](editableScopeChoices3);
        v9 = [v21 row];
        editableScopeChoices4 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
        [(AKAuthorizationScopeChoices *)editableScopeChoices4 setIndexOfChosenEmail:v9];
        MEMORY[0x277D82BD8](editableScopeChoices4);
      }
    }
  }

  else if ([v21 row])
  {
    v20 = _AKLogSiwa();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v21, "row")}];
      __os_log_helper_16_2_1_8_64(v25, v14);
      _os_log_error_impl(&dword_222379000, v20, v19, "unexpected row %@ selected in Anonymous Email section", v25, 0xCu);
      MEMORY[0x277D82BD8](v14);
    }

    objc_storeStrong(&v20, 0);
  }

  else
  {
    editableScopeChoices5 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
    [(AKAuthorizationScopeChoices *)editableScopeChoices5 setWantsPrivateEmail:1];
    MEMORY[0x277D82BD8](editableScopeChoices5);
  }

  [location[0] deselectRowAtIndexPath:v21 animated:0];
  [location[0] reloadData];
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 2;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (section == 1)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"AUTHORIZE_YOUR_EMAIL_ADDRESSES" value:&stru_28358EF68 table:@"Localizable"];
    localizedUppercaseString = [v7 localizedUppercaseString];
    v11 = [@"\n\n" stringByAppendingString:?];
    MEMORY[0x277D82BD8](localizedUppercaseString);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (section)
  {
    v9 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v6 localizedStringForKey:@"AUTHORIZE_PRIVATE_EMAIL_FOOTER" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
  v4 = v9;

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (section)
  {
    if (section == 1)
    {
      editableScopeChoices = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
      emailCount = [(AKAuthorizationScopeChoices *)editableScopeChoices emailCount];
      MEMORY[0x277D82BD8](editableScopeChoices);
    }

    else
    {
      emailCount = 0;
    }
  }

  else
  {
    emailCount = 1;
  }

  objc_storeStrong(location, 0);
  return emailCount;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, path);
  section = [v8 section];
  if (section)
  {
    if (section == 1)
    {
      v11 = -[AKAuthorizationEmailEditPaneViewController tableView:emailCellForRow:](selfCopy, "tableView:emailCellForRow:", location[0], [v8 row]);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = -[AKAuthorizationEmailEditPaneViewController tableView:anonymousCellForRow:](selfCopy, "tableView:anonymousCellForRow:", location[0], [v8 row]);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

- (id)tableView:(id)view emailCellForRow:(unint64_t)row
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  rowCopy = row;
  editableScopeChoices = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
  emailCount = [(AKAuthorizationScopeChoices *)editableScopeChoices emailCount];
  MEMORY[0x277D82BD8](editableScopeChoices);
  if (row >= emailCount)
  {
    v24 = _AKLogSiwa();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:rowCopy];
      v12 = MEMORY[0x277CCABB0];
      editableScopeChoices2 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
      v13 = [v12 numberWithUnsignedInteger:{-[AKAuthorizationScopeChoices emailCount](editableScopeChoices2, "emailCount")}];
      __os_log_helper_16_2_2_8_64_8_64(v29, v15, v13);
      _os_log_error_impl(&dword_222379000, v24, v23, "cell row %@ >= %@ rows available", v29, 0x16u);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](editableScopeChoices2);
      MEMORY[0x277D82BD8](v15);
    }

    objc_storeStrong(&v24, 0);
    v28 = 0;
    v22 = 1;
  }

  else
  {
    v21 = [location[0] dequeueReusableCellWithIdentifier:@"AKAuthorizationEmailAddressesTableViewCell"];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v21 setBackgroundColor:?];
    MEMORY[0x277D82BD8](clearColor);
    [v21 setSelectionStyle:1];
    editableScopeChoices3 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
    v8 = [(AKAuthorizationScopeChoices *)editableScopeChoices3 emailAtIndex:rowCopy];
    textLabel = [v21 textLabel];
    [textLabel setText:v8];
    MEMORY[0x277D82BD8](textLabel);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](editableScopeChoices3);
    editableScopeChoices4 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
    v19 = 0;
    v11 = 0;
    if (rowCopy == [(AKAuthorizationScopeChoices *)editableScopeChoices4 indexOfChosenEmail])
    {
      editableScopeChoices5 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
      v19 = 1;
      v11 = ![(AKAuthorizationScopeChoices *)editableScopeChoices5 wantsPrivateEmail];
    }

    if (v19)
    {
      MEMORY[0x277D82BD8](editableScopeChoices5);
    }

    MEMORY[0x277D82BD8](editableScopeChoices4);
    if (v11)
    {
      [v21 setAccessoryType:3];
    }

    else
    {
      [v21 setAccessoryType:0];
    }

    v28 = MEMORY[0x277D82BE0](v21);
    v22 = 1;
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v28;

  return v4;
}

- (id)tableView:(id)view anonymousCellForRow:(unint64_t)row
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v20[1] = row;
  v20[0] = [location[0] dequeueReusableCellWithIdentifier:@"AKAuthorizationEmailAnonymousTableViewCell"];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"AUTHORIZE_PRIVATE_EMAIL_TITLE" value:? table:?];
  textLabel = [v20[0] textLabel];
  [textLabel setText:v8];
  MEMORY[0x277D82BD8](textLabel);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v16 localizedStringForKey:@"AUTHORIZE_FORWARDED_TO_FORMAT" value:&stru_28358EF68 table:@"Localizable"];
  editableScopeChoices = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
  forwardingEmail = [(AKAuthorizationScopeChoices *)editableScopeChoices forwardingEmail];
  v12 = [v10 stringWithFormat:v15, forwardingEmail];
  detailTextLabel = [v20[0] detailTextLabel];
  [detailTextLabel setText:v12];
  MEMORY[0x277D82BD8](detailTextLabel);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](forwardingEmail);
  MEMORY[0x277D82BD8](editableScopeChoices);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v18 = 0;
  wantsPrivateEmail = 0;
  if (!row)
  {
    editableScopeChoices2 = [(AKAuthorizationEmailEditPaneViewController *)selfCopy editableScopeChoices];
    v18 = 1;
    wantsPrivateEmail = [(AKAuthorizationScopeChoices *)editableScopeChoices2 wantsPrivateEmail];
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](editableScopeChoices2);
  }

  if (wantsPrivateEmail)
  {
    [v20[0] setAccessoryType:3];
  }

  else
  {
    [v20[0] setAccessoryType:0];
  }

  v5 = MEMORY[0x277D82BE0](v20[0]);
  objc_storeStrong(v20, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end