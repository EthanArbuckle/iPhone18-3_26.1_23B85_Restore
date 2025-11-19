@interface AKAuthorizationEmailEditPaneViewController
- (AKAuthorizationScopeChoices)editableScopeChoices;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 anonymousCellForRow:(unint64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 emailCellForRow:(unint64_t)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AKAuthorizationEmailEditPaneViewController

- (void)viewDidLoad
{
  v32[1] = *MEMORY[0x277D85DE8];
  v31 = self;
  v30 = a2;
  v29.receiver = self;
  v29.super_class = AKAuthorizationEmailEditPaneViewController;
  [(AKAuthorizationPaneViewController *)&v29 viewDidLoad];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v20 localizedStringForKey:@"AUTHORIZE_EMAIL_CONTACT" value:&stru_28358EF68 table:@"Localizable"];
  [(AKAuthorizationEmailEditPaneViewController *)v31 setTitle:?];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  v21 = [(AKAuthorizationPaneViewController *)v31 tableView];
  [(UITableView *)v21 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationEmailAddressesTableViewCell"];
  MEMORY[0x277D82BD8](v21);
  v22 = [(AKAuthorizationPaneViewController *)v31 tableView];
  [(UITableView *)v22 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKAuthorizationEmailAnonymousTableViewCell"];
  MEMORY[0x277D82BD8](v22);
  v23 = [(AKAuthorizationPaneViewController *)v31 tableView];
  [(UITableView *)v23 setDataSource:v31];
  MEMORY[0x277D82BD8](v23);
  v24 = [(AKAuthorizationPaneViewController *)v31 tableView];
  [(UITableView *)v24 setDelegate:v31];
  MEMORY[0x277D82BD8](v24);
  v28 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76918] traits:0x8000];
  [v28 setFont:?];
  MEMORY[0x277D82BD8](v25);
  [v28 setTextAlignment:1];
  [v28 setNumberOfLines:0];
  [v28 setAdjustsFontSizeToFitWidth:0];
  v26 = [(AKAuthorizationEmailEditPaneViewController *)v31 applicationName];
  v27 = [(NSString *)v26 length];
  MEMORY[0x277D82BD8](v26);
  if (v27)
  {
    v12 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v16 localizedStringForKey:@"AUTHORIZE_EMAIL_EDIT_INFO_FORMAT" value:&stru_28358EF68 table:@"Localizable"];
    v14 = [(AKAuthorizationEmailEditPaneViewController *)v31 applicationName];
    v13 = [v12 stringWithFormat:v15, v14];
    [v28 setText:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
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

  v3 = [(AKAuthorizationPaneViewController *)v31 paneHeaderStackView];
  [(UIStackView *)v3 addArrangedSubview:v28];
  MEMORY[0x277D82BD8](v3);
  v5 = [(AKAuthorizationPaneViewController *)v31 paneHeaderStackView];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(UIStackView *)v5 addArrangedSubview:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  v6 = MEMORY[0x277CCAAD0];
  v11 = [v28 widthAnchor];
  v10 = [(AKAuthorizationPaneViewController *)v31 paneHeaderStackView];
  v9 = [(UIStackView *)v10 widthAnchor];
  +[AKAuthorizationPaneMetrics editPaneInfoLabelHorizontalPadding];
  v8 = [v11 constraintEqualToAnchor:v9 constant:-(2.0 * v2)];
  v32[0] = v8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  [v6 activateConstraints:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(&v28, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = AKAuthorizationEmailEditPaneViewController;
  [(AKAuthorizationEmailEditPaneViewController *)&v4 viewWillDisappear:a3];
  v3 = [(AKAuthorizationPaneViewController *)v7 editableDataSources];
  [(AKAuthorizationEditableDataSources *)v3 setEditableScopeChoicesChanged:1];
  MEMORY[0x277D82BD8](v3);
}

- (AKAuthorizationScopeChoices)editableScopeChoices
{
  v3 = [(AKAuthorizationPaneViewController *)self editableDataSources];
  v4 = [(AKAuthorizationEditableDataSources *)v3 editableScopeChoices];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v9 = 0;
  if ([v11 section] || (v7 = 1, objc_msgSend(v11, "row")))
  {
    v6 = 0;
    if ([v11 section] == 1)
    {
      v5 = [v11 row];
      v10 = [(AKAuthorizationEmailEditPaneViewController *)v13 editableScopeChoices];
      v9 = 1;
      v6 = v5 < [(AKAuthorizationScopeChoices *)v10 emailCount];
    }

    v7 = v6;
  }

  v14 = v7;
  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v14 & 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v17 = [v21 section];
  if (v17)
  {
    if (v17 == 1)
    {
      v13 = [v21 row];
      v11 = [(AKAuthorizationEmailEditPaneViewController *)v23 editableScopeChoices];
      v12 = [(AKAuthorizationScopeChoices *)v11 emailCount];
      MEMORY[0x277D82BD8](v11);
      if (v13 >= v12)
      {
        v18 = _AKLogSiwa();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v21, "row")}];
          v4 = MEMORY[0x277CCABB0];
          v6 = [(AKAuthorizationEmailEditPaneViewController *)v23 editableScopeChoices];
          v5 = [v4 numberWithUnsignedInteger:{-[AKAuthorizationScopeChoices emailCount](v6, "emailCount")}];
          __os_log_helper_16_2_2_8_64_8_64(v24, v7, v5);
          _os_log_error_impl(&dword_222379000, v18, OS_LOG_TYPE_ERROR, "row %@ selected >= %@ emails available", v24, 0x16u);
          MEMORY[0x277D82BD8](v5);
          MEMORY[0x277D82BD8](v6);
          MEMORY[0x277D82BD8](v7);
        }

        objc_storeStrong(&v18, 0);
      }

      else
      {
        v8 = [(AKAuthorizationEmailEditPaneViewController *)v23 editableScopeChoices];
        [(AKAuthorizationScopeChoices *)v8 setWantsPrivateEmail:0];
        MEMORY[0x277D82BD8](v8);
        v9 = [v21 row];
        v10 = [(AKAuthorizationEmailEditPaneViewController *)v23 editableScopeChoices];
        [(AKAuthorizationScopeChoices *)v10 setIndexOfChosenEmail:v9];
        MEMORY[0x277D82BD8](v10);
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
    v15 = [(AKAuthorizationEmailEditPaneViewController *)v23 editableScopeChoices];
    [(AKAuthorizationScopeChoices *)v15 setWantsPrivateEmail:1];
    MEMORY[0x277D82BD8](v15);
  }

  [location[0] deselectRowAtIndexPath:v21 animated:0];
  [location[0] reloadData];
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 2;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4 == 1)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"AUTHORIZE_YOUR_EMAIL_ADDRESSES" value:&stru_28358EF68 table:@"Localizable"];
    v6 = [v7 localizedUppercaseString];
    v11 = [@"\n\n" stringByAppendingString:?];
    MEMORY[0x277D82BD8](v6);
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

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4)
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4)
  {
    if (a4 == 1)
    {
      v5 = [(AKAuthorizationEmailEditPaneViewController *)v8 editableScopeChoices];
      v9 = [(AKAuthorizationScopeChoices *)v5 emailCount];
      MEMORY[0x277D82BD8](v5);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  objc_storeStrong(location, 0);
  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = [v8 section];
  if (v7)
  {
    if (v7 == 1)
    {
      v11 = -[AKAuthorizationEmailEditPaneViewController tableView:emailCellForRow:](v10, "tableView:emailCellForRow:", location[0], [v8 row]);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = -[AKAuthorizationEmailEditPaneViewController tableView:anonymousCellForRow:](v10, "tableView:anonymousCellForRow:", location[0], [v8 row]);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

- (id)tableView:(id)a3 emailCellForRow:(unint64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = a4;
  v17 = [(AKAuthorizationEmailEditPaneViewController *)v27 editableScopeChoices];
  v18 = [(AKAuthorizationScopeChoices *)v17 emailCount];
  MEMORY[0x277D82BD8](v17);
  if (a4 >= v18)
  {
    v24 = _AKLogSiwa();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
      v12 = MEMORY[0x277CCABB0];
      v14 = [(AKAuthorizationEmailEditPaneViewController *)v27 editableScopeChoices];
      v13 = [v12 numberWithUnsignedInteger:{-[AKAuthorizationScopeChoices emailCount](v14, "emailCount")}];
      __os_log_helper_16_2_2_8_64_8_64(v29, v15, v13);
      _os_log_error_impl(&dword_222379000, v24, v23, "cell row %@ >= %@ rows available", v29, 0x16u);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
    }

    objc_storeStrong(&v24, 0);
    v28 = 0;
    v22 = 1;
  }

  else
  {
    v21 = [location[0] dequeueReusableCellWithIdentifier:@"AKAuthorizationEmailAddressesTableViewCell"];
    v6 = [MEMORY[0x277D75348] clearColor];
    [v21 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v6);
    [v21 setSelectionStyle:1];
    v9 = [(AKAuthorizationEmailEditPaneViewController *)v27 editableScopeChoices];
    v8 = [(AKAuthorizationScopeChoices *)v9 emailAtIndex:v25];
    v7 = [v21 textLabel];
    [v7 setText:v8];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    v10 = [(AKAuthorizationEmailEditPaneViewController *)v27 editableScopeChoices];
    v19 = 0;
    v11 = 0;
    if (v25 == [(AKAuthorizationScopeChoices *)v10 indexOfChosenEmail])
    {
      v20 = [(AKAuthorizationEmailEditPaneViewController *)v27 editableScopeChoices];
      v19 = 1;
      v11 = ![(AKAuthorizationScopeChoices *)v20 wantsPrivateEmail];
    }

    if (v19)
    {
      MEMORY[0x277D82BD8](v20);
    }

    MEMORY[0x277D82BD8](v10);
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

- (id)tableView:(id)a3 anonymousCellForRow:(unint64_t)a4
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20[1] = a4;
  v20[0] = [location[0] dequeueReusableCellWithIdentifier:@"AKAuthorizationEmailAnonymousTableViewCell"];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"AUTHORIZE_PRIVATE_EMAIL_TITLE" value:? table:?];
  v7 = [v20[0] textLabel];
  [v7 setText:v8];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v16 localizedStringForKey:@"AUTHORIZE_FORWARDED_TO_FORMAT" value:&stru_28358EF68 table:@"Localizable"];
  v14 = [(AKAuthorizationEmailEditPaneViewController *)v22 editableScopeChoices];
  v13 = [(AKAuthorizationScopeChoices *)v14 forwardingEmail];
  v12 = [v10 stringWithFormat:v15, v13];
  v11 = [v20[0] detailTextLabel];
  [v11 setText:v12];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v18 = 0;
  v17 = 0;
  if (!a4)
  {
    v19 = [(AKAuthorizationEmailEditPaneViewController *)v22 editableScopeChoices];
    v18 = 1;
    v17 = [(AKAuthorizationScopeChoices *)v19 wantsPrivateEmail];
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](v19);
  }

  if (v17)
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