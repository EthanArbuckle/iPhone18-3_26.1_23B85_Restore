@interface CARSettingsPanelTableSource
- (CARSettingsPanelTableSource)initWithSpecifiers:(id)specifiers specifierSections:(id)sections;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)preferredFocusEnvironmentsForTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation CARSettingsPanelTableSource

- (CARSettingsPanelTableSource)initWithSpecifiers:(id)specifiers specifierSections:(id)sections
{
  specifiersCopy = specifiers;
  sectionsCopy = sections;
  v12.receiver = self;
  v12.super_class = CARSettingsPanelTableSource;
  v9 = [(CARSettingsPanelTableSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_specifiers, specifiers);
    objc_storeStrong(&v10->_specifierSections, sections);
  }

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[_TtC15CarPlaySettings24CARSettingsTableViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  specifierSections = [(CARSettingsPanelTableSource *)self specifierSections];

  if (specifierSections)
  {
    specifierSections2 = [(CARSettingsPanelTableSource *)self specifierSections];
    v12 = [specifierSections2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    specifiers = [v12 specifiers];
    v14 = [specifiers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    [v9 setSpecifier:v14];
  }

  else
  {
    specifierSections2 = [(CARSettingsPanelTableSource *)self specifiers];
    v12 = [specifierSections2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    [v9 setSpecifier:v12];
  }

  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  specifierSections = [(CARSettingsPanelTableSource *)self specifierSections];

  if (!specifierSections)
  {
    return 1;
  }

  specifierSections2 = [(CARSettingsPanelTableSource *)self specifierSections];
  v6 = [specifierSections2 count];

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  specifierSections = [(CARSettingsPanelTableSource *)self specifierSections];

  if (specifierSections)
  {
    specifierSections2 = [(CARSettingsPanelTableSource *)self specifierSections];
    v8 = [specifierSections2 objectAtIndexedSubscript:section];
    specifiers = [v8 specifiers];
    v10 = [specifiers count];
  }

  else
  {
    specifierSections2 = [(CARSettingsPanelTableSource *)self specifiers];
    v10 = [specifierSections2 count];
  }

  return v10;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  specifierSections = [(CARSettingsPanelTableSource *)self specifierSections];
  if ([specifierSections count] <= section)
  {
    v13 = 0;
  }

  else
  {
    specifierSections2 = [(CARSettingsPanelTableSource *)self specifierSections];
    v9 = [specifierSections2 objectAtIndexedSubscript:section];
    footer = [v9 footer];
    v11 = [footer length];

    if (!v11)
    {
      v13 = 0;
      goto LABEL_10;
    }

    v12 = +[CARSettingsTableFooterView identifier];
    v13 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v12];

    specifierSections3 = [(CARSettingsPanelTableSource *)self specifierSections];
    [v13 setHasNextSection:{objc_msgSend(specifierSections3, "count") - 1 > section}];

    if ([v13 hasNextSection])
    {
      specifierSections4 = [(CARSettingsPanelTableSource *)self specifierSections];
      v16 = [specifierSections4 objectAtIndexedSubscript:section + 1];
      title = [v16 title];
      [v13 setNextSectionHasHeader:{objc_msgSend(title, "length") != 0}];
    }

    else
    {
      [v13 setNextSectionHasHeader:0];
    }

    specifierSections = [(CARSettingsPanelTableSource *)self specifierSections];
    v18 = [specifierSections objectAtIndexedSubscript:section];
    footer2 = [v18 footer];
    [v13 setTextValue:footer2];
  }

LABEL_10:

  return v13;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  specifierSections = [(CARSettingsPanelTableSource *)self specifierSections];
  v6 = [specifierSections objectAtIndexedSubscript:section];
  footer = [v6 footer];
  v8 = [footer length];

  result = UITableViewAutomaticDimension;
  if (!v8)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  specifierSections = [(CARSettingsPanelTableSource *)self specifierSections];
  if ([specifierSections count] <= section)
  {
    v13 = 0;
  }

  else
  {
    specifierSections2 = [(CARSettingsPanelTableSource *)self specifierSections];
    v9 = [specifierSections2 objectAtIndexedSubscript:section];
    title = [v9 title];
    v11 = [title length];

    if (!v11)
    {
      v13 = 0;
      goto LABEL_10;
    }

    v12 = +[CARSettingsTableHeaderView identifier];
    v13 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v12];

    [v13 setHasPreviousSection:section > 0];
    if ([v13 hasPreviousSection])
    {
      specifierSections3 = [(CARSettingsPanelTableSource *)self specifierSections];
      v15 = [specifierSections3 objectAtIndexedSubscript:section - 1];
      footer = [v15 footer];
      [v13 setPreviousSectionHasFooter:{objc_msgSend(footer, "length") != 0}];
    }

    else
    {
      [v13 setPreviousSectionHasFooter:0];
    }

    specifierSections = [(CARSettingsPanelTableSource *)self specifierSections];
    v17 = [specifierSections objectAtIndexedSubscript:section];
    title2 = [v17 title];
    [v13 setTextValue:title2];
  }

LABEL_10:

  return v13;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  specifierSections = [(CARSettingsPanelTableSource *)self specifierSections];
  v7 = [specifierSections objectAtIndexedSubscript:section];
  title = [v7 title];
  v9 = [title length];

  if (v9)
  {
    return UITableViewAutomaticDimension;
  }

  v11 = section < 1;
  v12 = section - 1;
  if (v11)
  {
    return 0.0;
  }

  specifierSections2 = [(CARSettingsPanelTableSource *)self specifierSections];
  v14 = [specifierSections2 objectAtIndexedSubscript:v12];
  footer = [v14 footer];
  v16 = [footer length];

  result = 4.0;
  if (!v16)
  {
    return 16.0;
  }

  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  window = [viewCopy window];
  screen = [window screen];
  if ([screen supportsFocus])
  {
    v9 = [viewCopy cellForRowAtIndexPath:pathCopy];
    isFocused = [v9 isFocused];
  }

  else
  {
    isFocused = 0;
  }

  specifierSections = [(CARSettingsPanelTableSource *)self specifierSections];

  if (specifierSections)
  {
    specifierSections2 = [(CARSettingsPanelTableSource *)self specifierSections];
    v13 = [specifierSections2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    specifiers = [v13 specifiers];
    v15 = [specifiers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    specifierSections2 = [(CARSettingsPanelTableSource *)self specifiers];
    v15 = [specifierSections2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [viewCopy cellForRowAtIndexPath:pathCopy];
    accessoryView = [v17 accessoryView];

    if (accessoryView)
    {
      v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [accessoryView isOn] ^ 1);
      [v15 setCellValue:v19];
    }
  }

  v20 = isKindOfClass & isFocused;
  actionBlock = [v15 actionBlock];

  if (actionBlock)
  {
    actionBlock2 = [v15 actionBlock];
    cellValue = [v15 cellValue];
    (actionBlock2)[2](actionBlock2, cellValue);
  }

  if (v20)
  {
    [(CARSettingsPanelTableSource *)self setSavedFocusedIndexPath:pathCopy];
    v24 = viewCopy;
    v25 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:v24];
    [v25 setAllowsDeferral:0];
    v26 = [UIFocusSystem focusSystemForEnvironment:v24];

    [v26 _requestFocusUpdate:v25];
  }

  else
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    [(CARSettingsPanelTableSource *)self setSavedFocusedIndexPath:0];
  }
}

- (id)preferredFocusEnvironmentsForTableView:(id)view
{
  viewCopy = view;
  savedFocusedIndexPath = [(CARSettingsPanelTableSource *)self savedFocusedIndexPath];

  if (savedFocusedIndexPath)
  {
    savedFocusedIndexPath2 = [(CARSettingsPanelTableSource *)self savedFocusedIndexPath];
    v7 = [viewCopy cellForRowAtIndexPath:savedFocusedIndexPath2];

    if (v7)
    {
      v9 = v7;
      savedFocusedIndexPath = [NSArray arrayWithObjects:&v9 count:1];
    }

    else
    {
      savedFocusedIndexPath = 0;
    }
  }

  return savedFocusedIndexPath;
}

@end