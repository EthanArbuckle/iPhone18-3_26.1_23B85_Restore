@interface TTRISettingsDefaultListPicker
- (id)generateViewModel;
- (id)listViewModelForIndexPath:(id)a3;
- (id)specifiers;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)setSpecifier:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation TTRISettingsDefaultListPicker

- (void)setSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = TTRISettingsDefaultListPicker;
  [(TTRISettingsDefaultListPicker *)&v5 setSpecifier:a3];
  v4 = objc_alloc_init(REMStore);
  [(TTRISettingsDefaultListPicker *)self setStore:v4];
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[REMUserDefaults daemonUserDefaults];
  v7 = [v6 preferredDefaultListID];

  v8 = [NSString stringWithFormat:@"%@/DEFAULT_LIST", REMSettingsNavigationDeepLinkGeneralPath];
  v9 = [NSURL URLWithString:v8];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Change Default List Settings" table:0 locale:v11 bundleURL:v13];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_25A4;
  v18[3] = &unk_351A8;
  v19 = v7;
  v20 = self;
  v15 = v7;
  v16 = objc_retainBlock(v18);
  [(TTRISettingsDefaultListPicker *)self pe_registerUndoActionName:v14 associatedDeepLink:v9 undoAction:v16];
  v17 = +[REMUserDefaults daemonUserDefaults];
  [v17 setPreferredDefaultListID:v5];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v28 = OBJC_IVAR___PSListController__specifiers;
    v4 = [(TTRISettingsDefaultListPicker *)self generateViewModel];
    [(TTRISettingsDefaultListPicker *)self setViewModel:v4];

    v37 = objc_alloc_init(NSMutableArray);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v5 = [(TTRISettingsDefaultListPicker *)self viewModel];
    v6 = [v5 accounts];

    obj = v6;
    v31 = [v6 countByEnumeratingWithState:&v42 objects:v47 count:16];
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
          v10 = [(TTRISettingsDefaultListPicker *)self viewModel];
          v11 = [v10 accounts];
          v12 = [v11 count];

          v33 = v8;
          if (v12 < 2)
          {
            v13 = 0;
          }

          else
          {
            v13 = [v9 name];
          }

          v32 = v13;
          v35 = [REMSettingsUtilities radioGroupSpecifierWithHeader:v13 footer:0 keyName:@"preferredDefaultListID" scope:0];
          [v37 addObject:?];
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = [v9 lists];
          v14 = [v36 countByEnumeratingWithState:&v38 objects:v46 count:16];
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
                  objc_enumerationMutation(v36);
                }

                v18 = *(*(&v38 + 1) + 8 * i);
                v19 = [TTRIListSummaryCell specifierWithViewModel:v18 target:self cell:3 detail:0 keyName:@"preferredDefaultListID" defaultValue:0 scope:0];
                v20 = [v18 listID];
                [v19 setObject:v20 forKeyedSubscript:v7];

                v21 = [v18 listID];
                v22 = [(TTRISettingsDefaultListPicker *)self viewModel];
                v23 = [v22 selectedListID];
                v24 = [v21 isEqual:v23];

                if (v24)
                {
                  [v35 setProperty:v19 forKey:v34];
                }

                [v37 addObject:v19];
              }

              v15 = [v36 countByEnumeratingWithState:&v38 objects:v46 count:16];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = TTRISettingsDefaultListPicker;
  v6 = a4;
  [(TTRISettingsDefaultListPicker *)&v14 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(TTRISettingsDefaultListPicker *)self specifierAtIndexPath:v6, v14.receiver, v14.super_class];

  v8 = [(TTRISettingsDefaultListPicker *)self getGroupSpecifierForSpecifier:v7];
  v9 = [v8 propertyForKey:PSIsRadioGroupKey];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = [v8 propertyForKey:PSRadioGroupCheckedSpecifierKey];
    v12 = [v11 propertyForKey:PSValueKey];
    [(TTRISettingsDefaultListPicker *)self setPreferenceValue:v12 specifier:v8];
  }

  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifier:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];

  [(TTRISettingsDefaultListPicker *)self reloadSpecifiers];
}

- (id)listViewModelForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(TTRISettingsDefaultListPicker *)self viewModel];
  v6 = [v5 accounts];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
  v8 = [v7 lists];
  v9 = [v4 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  return v10;
}

- (id)generateViewModel
{
  v31 = +[NSMutableArray array];
  v3 = objc_opt_new();
  v30 = self;
  v4 = [(TTRISettingsDefaultListPicker *)self store];
  v37 = 0;
  v5 = [v4 fetchEligibleDefaultListsWithError:&v37];
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
        v13 = [v11 account];
        v14 = [v13 objectID];
        v15 = [v3 objectForKeyedSubscript:v14];

        if (!v15)
        {
          v16 = [TTRISettingsDefaultListPickerViewModel_Account alloc];
          v17 = [v11 account];
          v15 = [(TTRISettingsDefaultListPickerViewModel_Account *)v16 initWithAccount:v17];

          v18 = [v11 account];
          v19 = [v18 objectID];
          [v3 setObject:v15 forKeyedSubscript:v19];

          [v31 addObject:v15];
        }

        v20 = [(TTRISettingsDefaultListPickerViewModel_Account *)v15 lists];
        v21 = [v20 arrayByAddingObject:v12];
        [(TTRISettingsDefaultListPickerViewModel_Account *)v15 setLists:v21];
      }

      v8 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v8);
  }

  v22 = objc_alloc_init(TTRISettingsDefaultListPickerViewModel);
  v23 = [v31 copy];
  [(TTRISettingsDefaultListPickerViewModel *)v22 setAccounts:v23];

  v24 = [(TTRISettingsDefaultListPicker *)v30 store];
  v32 = v29;
  v25 = [v24 fetchDefaultListWithError:&v32];
  v26 = v32;

  v27 = [v25 objectID];
  [(TTRISettingsDefaultListPickerViewModel *)v22 setSelectedListID:v27];

  return v22;
}

@end