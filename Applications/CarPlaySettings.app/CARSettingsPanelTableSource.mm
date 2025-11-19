@interface CARSettingsPanelTableSource
- (CARSettingsPanelTableSource)initWithSpecifiers:(id)a3 specifierSections:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)preferredFocusEnvironmentsForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation CARSettingsPanelTableSource

- (CARSettingsPanelTableSource)initWithSpecifiers:(id)a3 specifierSections:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CARSettingsPanelTableSource;
  v9 = [(CARSettingsPanelTableSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_specifiers, a3);
    objc_storeStrong(&v10->_specifierSections, a4);
  }

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[_TtC15CarPlaySettings24CARSettingsTableViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [(CARSettingsPanelTableSource *)self specifierSections];

  if (v10)
  {
    v11 = [(CARSettingsPanelTableSource *)self specifierSections];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
    v13 = [v12 specifiers];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
    [v9 setSpecifier:v14];
  }

  else
  {
    v11 = [(CARSettingsPanelTableSource *)self specifiers];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
    [v9 setSpecifier:v12];
  }

  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(CARSettingsPanelTableSource *)self specifierSections];

  if (!v4)
  {
    return 1;
  }

  v5 = [(CARSettingsPanelTableSource *)self specifierSections];
  v6 = [v5 count];

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(CARSettingsPanelTableSource *)self specifierSections];

  if (v6)
  {
    v7 = [(CARSettingsPanelTableSource *)self specifierSections];
    v8 = [v7 objectAtIndexedSubscript:a4];
    v9 = [v8 specifiers];
    v10 = [v9 count];
  }

  else
  {
    v7 = [(CARSettingsPanelTableSource *)self specifiers];
    v10 = [v7 count];
  }

  return v10;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(CARSettingsPanelTableSource *)self specifierSections];
  if ([v7 count] <= a4)
  {
    v13 = 0;
  }

  else
  {
    v8 = [(CARSettingsPanelTableSource *)self specifierSections];
    v9 = [v8 objectAtIndexedSubscript:a4];
    v10 = [v9 footer];
    v11 = [v10 length];

    if (!v11)
    {
      v13 = 0;
      goto LABEL_10;
    }

    v12 = +[CARSettingsTableFooterView identifier];
    v13 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v12];

    v14 = [(CARSettingsPanelTableSource *)self specifierSections];
    [v13 setHasNextSection:{objc_msgSend(v14, "count") - 1 > a4}];

    if ([v13 hasNextSection])
    {
      v15 = [(CARSettingsPanelTableSource *)self specifierSections];
      v16 = [v15 objectAtIndexedSubscript:a4 + 1];
      v17 = [v16 title];
      [v13 setNextSectionHasHeader:{objc_msgSend(v17, "length") != 0}];
    }

    else
    {
      [v13 setNextSectionHasHeader:0];
    }

    v7 = [(CARSettingsPanelTableSource *)self specifierSections];
    v18 = [v7 objectAtIndexedSubscript:a4];
    v19 = [v18 footer];
    [v13 setTextValue:v19];
  }

LABEL_10:

  return v13;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = [(CARSettingsPanelTableSource *)self specifierSections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 footer];
  v8 = [v7 length];

  result = UITableViewAutomaticDimension;
  if (!v8)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(CARSettingsPanelTableSource *)self specifierSections];
  if ([v7 count] <= a4)
  {
    v13 = 0;
  }

  else
  {
    v8 = [(CARSettingsPanelTableSource *)self specifierSections];
    v9 = [v8 objectAtIndexedSubscript:a4];
    v10 = [v9 title];
    v11 = [v10 length];

    if (!v11)
    {
      v13 = 0;
      goto LABEL_10;
    }

    v12 = +[CARSettingsTableHeaderView identifier];
    v13 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v12];

    [v13 setHasPreviousSection:a4 > 0];
    if ([v13 hasPreviousSection])
    {
      v14 = [(CARSettingsPanelTableSource *)self specifierSections];
      v15 = [v14 objectAtIndexedSubscript:a4 - 1];
      v16 = [v15 footer];
      [v13 setPreviousSectionHasFooter:{objc_msgSend(v16, "length") != 0}];
    }

    else
    {
      [v13 setPreviousSectionHasFooter:0];
    }

    v7 = [(CARSettingsPanelTableSource *)self specifierSections];
    v17 = [v7 objectAtIndexedSubscript:a4];
    v18 = [v17 title];
    [v13 setTextValue:v18];
  }

LABEL_10:

  return v13;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = [(CARSettingsPanelTableSource *)self specifierSections];
  v7 = [v6 objectAtIndexedSubscript:a4];
  v8 = [v7 title];
  v9 = [v8 length];

  if (v9)
  {
    return UITableViewAutomaticDimension;
  }

  v11 = a4 < 1;
  v12 = a4 - 1;
  if (v11)
  {
    return 0.0;
  }

  v13 = [(CARSettingsPanelTableSource *)self specifierSections];
  v14 = [v13 objectAtIndexedSubscript:v12];
  v15 = [v14 footer];
  v16 = [v15 length];

  result = 4.0;
  if (!v16)
  {
    return 16.0;
  }

  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v27 = a3;
  v6 = a4;
  v7 = [v27 window];
  v8 = [v7 screen];
  if ([v8 supportsFocus])
  {
    v9 = [v27 cellForRowAtIndexPath:v6];
    v10 = [v9 isFocused];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(CARSettingsPanelTableSource *)self specifierSections];

  if (v11)
  {
    v12 = [(CARSettingsPanelTableSource *)self specifierSections];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
    v14 = [v13 specifiers];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
  }

  else
  {
    v12 = [(CARSettingsPanelTableSource *)self specifiers];
    v15 = [v12 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v27 cellForRowAtIndexPath:v6];
    v18 = [v17 accessoryView];

    if (v18)
    {
      v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 isOn] ^ 1);
      [v15 setCellValue:v19];
    }
  }

  v20 = isKindOfClass & v10;
  v21 = [v15 actionBlock];

  if (v21)
  {
    v22 = [v15 actionBlock];
    v23 = [v15 cellValue];
    (v22)[2](v22, v23);
  }

  if (v20)
  {
    [(CARSettingsPanelTableSource *)self setSavedFocusedIndexPath:v6];
    v24 = v27;
    v25 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:v24];
    [v25 setAllowsDeferral:0];
    v26 = [UIFocusSystem focusSystemForEnvironment:v24];

    [v26 _requestFocusUpdate:v25];
  }

  else
  {
    [v27 deselectRowAtIndexPath:v6 animated:1];
    [(CARSettingsPanelTableSource *)self setSavedFocusedIndexPath:0];
  }
}

- (id)preferredFocusEnvironmentsForTableView:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsPanelTableSource *)self savedFocusedIndexPath];

  if (v5)
  {
    v6 = [(CARSettingsPanelTableSource *)self savedFocusedIndexPath];
    v7 = [v4 cellForRowAtIndexPath:v6];

    if (v7)
    {
      v9 = v7;
      v5 = [NSArray arrayWithObjects:&v9 count:1];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end