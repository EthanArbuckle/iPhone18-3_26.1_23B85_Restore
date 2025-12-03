@interface TTRISettingsDefaultListPicker
- (id)generateViewModel;
- (id)listViewModelForIndexPath:(id)path;
- (id)specifiers;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation TTRISettingsDefaultListPicker

- (void)setSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = TTRISettingsDefaultListPicker;
  [(TTRISettingsDefaultListPicker *)&v5 setSpecifier:specifier];
  v4 = objc_alloc_init(REMStore);
  [(TTRISettingsDefaultListPicker *)self setStore:v4];
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  v6 = +[REMUserDefaults daemonUserDefaults];
  preferredDefaultListID = [v6 preferredDefaultListID];

  rEMSettingsNavigationDeepLinkGeneralPath = [NSString stringWithFormat:@"%@/DEFAULT_LIST", REMSettingsNavigationDeepLinkGeneralPath];
  v9 = [NSURL URLWithString:rEMSettingsNavigationDeepLinkGeneralPath];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Change Default List Settings" table:0 locale:v11 bundleURL:bundleURL];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_25A4;
  v18[3] = &unk_351A8;
  v19 = preferredDefaultListID;
  selfCopy = self;
  v15 = preferredDefaultListID;
  v16 = objc_retainBlock(v18);
  [(TTRISettingsDefaultListPicker *)self pe_registerUndoActionName:v14 associatedDeepLink:v9 undoAction:v16];
  v17 = +[REMUserDefaults daemonUserDefaults];
  [v17 setPreferredDefaultListID:valueCopy];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v28 = OBJC_IVAR___PSListController__specifiers;
    generateViewModel = [(TTRISettingsDefaultListPicker *)self generateViewModel];
    [(TTRISettingsDefaultListPicker *)self setViewModel:generateViewModel];

    v37 = objc_alloc_init(NSMutableArray);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    viewModel = [(TTRISettingsDefaultListPicker *)self viewModel];
    accounts = [viewModel accounts];

    obj = accounts;
    v31 = [accounts countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v31)
    {
      v30 = *v43;
      v7 = PSValueKey;
      v34 = PSRadioGroupCheckedSpecifierKey;
      do
      {
        v8 = 0;
        do
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v42 + 1) + 8 * v8);
          viewModel2 = [(TTRISettingsDefaultListPicker *)self viewModel];
          accounts2 = [viewModel2 accounts];
          v12 = [accounts2 count];

          v33 = v8;
          if (v12 < 2)
          {
            name = 0;
          }

          else
          {
            name = [v9 name];
          }

          v32 = name;
          v35 = [REMSettingsUtilities radioGroupSpecifierWithHeader:name footer:0 keyName:@"preferredDefaultListID" scope:0];
          [v37 addObject:?];
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          lists = [v9 lists];
          v14 = [lists countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v39;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v39 != v16)
                {
                  objc_enumerationMutation(lists);
                }

                v18 = *(*(&v38 + 1) + 8 * i);
                v19 = [TTRIListSummaryCell specifierWithViewModel:v18 target:self cell:3 detail:0 keyName:@"preferredDefaultListID" defaultValue:0 scope:0];
                listID = [v18 listID];
                [v19 setObject:listID forKeyedSubscript:v7];

                listID2 = [v18 listID];
                viewModel3 = [(TTRISettingsDefaultListPicker *)self viewModel];
                selectedListID = [viewModel3 selectedListID];
                v24 = [listID2 isEqual:selectedListID];

                if (v24)
                {
                  [v35 setProperty:v19 forKey:v34];
                }

                [v37 addObject:v19];
              }

              v15 = [lists countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v15);
          }

          v8 = v33 + 1;
        }

        while ((v33 + 1) != v31);
        v31 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v31);
    }

    v25 = [v37 copy];
    v26 = *&self->PSListController_opaque[v28];
    *&self->PSListController_opaque[v28] = v25;

    v3 = *&self->PSListController_opaque[v28];
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = TTRISettingsDefaultListPicker;
  pathCopy = path;
  [(TTRISettingsDefaultListPicker *)&v14 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(TTRISettingsDefaultListPicker *)self specifierAtIndexPath:pathCopy, v14.receiver, v14.super_class];

  v8 = [(TTRISettingsDefaultListPicker *)self getGroupSpecifierForSpecifier:v7];
  v9 = [v8 propertyForKey:PSIsRadioGroupKey];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = [v8 propertyForKey:PSRadioGroupCheckedSpecifierKey];
    v12 = [v11 propertyForKey:PSValueKey];
    [(TTRISettingsDefaultListPicker *)self setPreferenceValue:v12 specifier:v8];
  }

  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifier:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];

  [(TTRISettingsDefaultListPicker *)self reloadSpecifiers];
}

- (id)listViewModelForIndexPath:(id)path
{
  pathCopy = path;
  viewModel = [(TTRISettingsDefaultListPicker *)self viewModel];
  accounts = [viewModel accounts];
  v7 = [accounts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  lists = [v7 lists];
  v9 = [pathCopy row];

  v10 = [lists objectAtIndexedSubscript:v9];

  return v10;
}

- (id)generateViewModel
{
  v31 = +[NSMutableArray array];
  v3 = objc_opt_new();
  selfCopy = self;
  store = [(TTRISettingsDefaultListPicker *)self store];
  v37 = 0;
  v5 = [store fetchEligibleDefaultListsWithError:&v37];
  v29 = v37;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = [[TTRISettingsDefaultListPickerViewModel_List alloc] initWithList:v11];
        account = [v11 account];
        objectID = [account objectID];
        v15 = [v3 objectForKeyedSubscript:objectID];

        if (!v15)
        {
          v16 = [TTRISettingsDefaultListPickerViewModel_Account alloc];
          account2 = [v11 account];
          v15 = [(TTRISettingsDefaultListPickerViewModel_Account *)v16 initWithAccount:account2];

          account3 = [v11 account];
          objectID2 = [account3 objectID];
          [v3 setObject:v15 forKeyedSubscript:objectID2];

          [v31 addObject:v15];
        }

        lists = [(TTRISettingsDefaultListPickerViewModel_Account *)v15 lists];
        v21 = [lists arrayByAddingObject:v12];
        [(TTRISettingsDefaultListPickerViewModel_Account *)v15 setLists:v21];
      }

      v8 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v8);
  }

  v22 = objc_alloc_init(TTRISettingsDefaultListPickerViewModel);
  v23 = [v31 copy];
  [(TTRISettingsDefaultListPickerViewModel *)v22 setAccounts:v23];

  store2 = [(TTRISettingsDefaultListPicker *)selfCopy store];
  v32 = v29;
  v25 = [store2 fetchDefaultListWithError:&v32];
  v26 = v32;

  objectID3 = [v25 objectID];
  [(TTRISettingsDefaultListPickerViewModel *)v22 setSelectedListID:objectID3];

  return v22;
}

@end