@interface SFContactAutoFillViewController
- (BOOL)canDrillInCellAtIndexPath:(id)a3;
- (SFContactAutoFillViewController)initWithMatches:(id)a3 contact:(id)a4;
- (SFContactAutoFillViewControllerFiller)autoFiller;
- (id)_valueForProperty:(id)a3 identifier:(id)a4;
- (id)matchesForProperty:(id)a3;
- (id)properties;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)valuesFromPropertyMatches:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_cancel:(id)a3;
- (void)autoFill:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SFContactAutoFillViewController

- (SFContactAutoFillViewController)initWithMatches:(id)a3 contact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SFContactAutoFillViewController;
  v8 = [(SFContactAutoFillViewController *)&v13 initWithStyle:0];
  if (v8)
  {
    v9 = [v6 copy];
    matches = v8->_matches;
    v8->_matches = v9;

    objc_storeStrong(&v8->_contact, a4);
    v11 = v8;
  }

  return v8;
}

- (id)_valueForProperty:(id)a3 identifier:(id)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69E30A8] contactKeyForString:v6];
  if ([v6 isEqualToString:*MEMORY[0x1E69C8AD8]])
  {
    v9 = [MEMORY[0x1E695CD80] stringFromContact:self->_contact style:0];
    goto LABEL_53;
  }

  if ([v8 isEqualToString:*MEMORY[0x1E695C360]])
  {
    [(CNContact *)self->_contact postalAddresses];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v10 = v61 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v59;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v59 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v58 + 1) + 8 * i);
          v16 = [v15 identifier];
          v17 = [v16 isEqualToString:v7];

          if (v17)
          {
            v21 = MEMORY[0x1E695CF68];
            v22 = [v15 value];
            v23 = [v21 stringFromPostalAddress:v22 style:0];
            goto LABEL_16;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v58 objects:v65 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_49;
  }

  if ([v8 isEqualToString:*MEMORY[0x1E695C1D0]])
  {
    v10 = [(CNContact *)self->_contact birthday];
    v18 = [MEMORY[0x1E695DEE8] currentCalendar];
    v19 = [v18 dateFromComponents:v10];
    v20 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v20 setLocalizedDateFormatFromTemplate:@"dMy"];
    v9 = [v20 stringFromDate:v19];

LABEL_18:
    goto LABEL_53;
  }

  if ([v8 isEqualToString:*MEMORY[0x1E695C330]])
  {
    [(CNContact *)self->_contact phoneNumbers];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v10 = v57 = 0u;
    v24 = [v10 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v55;
      while (2)
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v55 != v26)
          {
            objc_enumerationMutation(v10);
          }

          v28 = *(*(&v54 + 1) + 8 * j);
          v29 = [v28 identifier];
          v30 = [v29 isEqualToString:v7];

          if (v30)
          {
            v22 = [v28 value];
            v23 = [v22 stringValue];
LABEL_16:
            v9 = v23;

            goto LABEL_17;
          }
        }

        v25 = [v10 countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_49;
  }

  if ([v8 isEqualToString:*MEMORY[0x1E695C208]])
  {
    [(CNContact *)self->_contact emailAddresses];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v10 = v53 = 0u;
    v31 = [v10 countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v51;
LABEL_32:
      v34 = 0;
      while (1)
      {
        if (*v51 != v33)
        {
          objc_enumerationMutation(v10);
        }

        v35 = *(*(&v50 + 1) + 8 * v34);
        v36 = [v35 identifier];
        v37 = [v36 isEqualToString:v7];

        if (v37)
        {
          break;
        }

        if (v32 == ++v34)
        {
          v32 = [v10 countByEnumeratingWithState:&v50 objects:v63 count:16];
          if (v32)
          {
            goto LABEL_32;
          }

          goto LABEL_49;
        }
      }

LABEL_56:
      v9 = [v35 value];
LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_49;
  }

  if ([v8 isEqualToString:*MEMORY[0x1E695C418]])
  {
    [(CNContact *)self->_contact urlAddresses];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = v49 = 0u;
    v38 = [v10 countByEnumeratingWithState:&v46 objects:v62 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v47;
LABEL_43:
      v41 = 0;
      while (1)
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(v10);
        }

        v35 = *(*(&v46 + 1) + 8 * v41);
        v42 = [v35 identifier];
        v43 = [v42 isEqualToString:v7];

        if (v43)
        {
          goto LABEL_56;
        }

        if (v39 == ++v41)
        {
          v39 = [v10 countByEnumeratingWithState:&v46 objects:v62 count:16];
          if (v39)
          {
            goto LABEL_43;
          }

          break;
        }
      }
    }

LABEL_49:
  }

  v44 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    [SFContactAutoFillViewController _valueForProperty:v6 identifier:v44];
  }

  v9 = 0;
LABEL_53:

  return v9;
}

- (id)properties
{
  v39 = *MEMORY[0x1E69E9840];
  propertyValues = self->_propertyValues;
  if (!propertyValues)
  {
    v27 = 1056;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = self->_matches;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v34;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          v11 = [v10 property];
          v12 = [v4 containsObject:v11];

          if ((v12 & 1) == 0)
          {
            v13 = [v10 property];
            [v4 addObject:v13];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v7);
    }

    v14 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v4;
    v15 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v29 + 1) + 8 * j);
          v20 = [(SFContactAutoFillViewController *)self matchesForProperty:v19, v27];
          v21 = [(SFContactAutoFillViewController *)self valuesFromPropertyMatches:v20];
          v22 = [SFContactAutoFillPropertyValues alloc];
          v23 = [MEMORY[0x1E69E30A8] contactKeyForString:v19];
          v24 = [(SFContactAutoFillPropertyValues *)v22 initWithValues:v21 property:v23];
          [v14 addObject:v24];
        }

        v16 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v16);
    }

    v25 = *(&self->super.super.super.super.isa + v27);
    *(&self->super.super.super.super.isa + v27) = v14;

    propertyValues = *(&self->super.super.super.super.isa + v27);
  }

  return propertyValues;
}

- (id)matchesForProperty:(id)a3
{
  v4 = a3;
  matches = self->_matches;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__SFContactAutoFillViewController_matchesForProperty___block_invoke;
  v9[3] = &unk_1E84936C0;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)matches safari_filterObjectsUsingBlock:v9];

  return v7;
}

uint64_t __54__SFContactAutoFillViewController_matchesForProperty___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 property];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)valuesFromPropertyMatches:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v12 length];

        if (!v13)
        {
          v25 = [SFContactAutoFillValue alloc];
          v37 = v11;
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
          v27 = [MEMORY[0x1E69E30A8] valueStringForMatch:v11];
          v28 = [(SFContactAutoFillValue *)v25 initWithMatches:v26 displayValue:v27 label:0];

          v36 = v28;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];

          v23 = v6;
          goto LABEL_13;
        }

        v14 = [v11 identifier];
        v15 = [v5 objectForKey:v14];

        if (!v15)
        {
          v16 = [MEMORY[0x1E695DF70] array];
          v17 = [v11 identifier];
          [v5 setObject:v16 forKey:v17];
        }

        v18 = [v11 identifier];
        v19 = [v5 objectForKey:v18];
        [v19 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v20 = [MEMORY[0x1E695DF70] array];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __61__SFContactAutoFillViewController_valuesFromPropertyMatches___block_invoke;
  v30[3] = &unk_1E84936E8;
  v30[4] = self;
  v21 = v20;
  v31 = v21;
  [v5 enumerateKeysAndObjectsUsingBlock:v30];
  v22 = v31;
  v23 = v21;

  v24 = v23;
LABEL_13:

  return v24;
}

void __61__SFContactAutoFillViewController_valuesFromPropertyMatches___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [SFContactAutoFillValue alloc];
  v8 = *(a1 + 32);
  v9 = [v5 firstObject];
  v10 = [v9 property];
  v11 = [v8 _valueForProperty:v10 identifier:v6];

  v12 = MEMORY[0x1E695CEE0];
  v13 = [v5 firstObject];
  v14 = [v13 label];
  v15 = [v12 localizedStringForLabel:v14];
  v16 = [(SFContactAutoFillValue *)v7 initWithMatches:v5 displayValue:v11 label:v15];

  [*(a1 + 40) addObject:v16];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = SFContactAutoFillViewController;
  [(SFContactAutoFillViewController *)&v12 viewDidLoad];
  v3 = [(SFContactAutoFillViewController *)self navigationItem];
  v4 = objc_alloc(MEMORY[0x1E69DC708]);
  v5 = _WBSLocalizedString();
  v6 = [v4 initWithTitle:v5 style:0 target:self action:sel__cancel_];
  [v3 setLeftBarButtonItem:v6];

  v7 = objc_alloc(MEMORY[0x1E69DC708]);
  v8 = _WBSLocalizedString();
  v9 = [v7 initWithTitle:v8 style:2 target:self action:sel_autoFill_];
  [v3 setRightBarButtonItem:v9];

  v10 = [(SFContactAutoFillViewController *)self tableView];
  [v10 registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];
  v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v10 setTableFooterView:v11];

  [v10 setRowHeight:*MEMORY[0x1E69DE3D0]];
  [v10 setEstimatedRowHeight:100.0];
  [v10 setSeparatorInset:{0.0, 14.0 * 2.0 + 22.0, 0.0, 0.0}];
}

- (void)_cancel:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_autoFiller);
  [WeakRetained dismissCustomAutoFill];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SFContactAutoFillViewController;
  [(SFContactAutoFillViewController *)&v5 viewWillAppear:a3];
  v4 = [(SFContactAutoFillViewController *)self tableView];
  [v4 reloadData];
}

- (void)autoFill:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(SFContactAutoFillViewController *)self properties];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) selectedValue];
        v12 = [v11 selected];
        v13 = [v11 matches];
        if (v12)
        {
          v14 = v4;
        }

        else
        {
          v14 = v5;
        }

        [v14 addObjectsFromArray:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  WeakRetained = objc_loadWeakRetained(&self->_autoFiller);
  [WeakRetained performAutoFillWithMatchSelections:v4 doNotFill:v5 contact:self->_contact];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(SFContactAutoFillViewController *)self properties];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  v9 = [v8 values];
  v10 = [v9 count];

  if (v10 >= 2)
  {
    v11 = [[SFContactAutoFillDetailViewController alloc] initWithPropertyValues:v8];
    v12 = [(SFContactAutoFillViewController *)self navigationController];
    [v12 pushViewController:v11 animated:1];

    [v13 deselectRowAtIndexPath:v6 animated:0];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(SFContactAutoFillViewController *)self properties:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"cell" forIndexPath:v6];
  v8 = [(SFContactAutoFillViewController *)self properties];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  LODWORD(self) = [(SFContactAutoFillViewController *)self canDrillInCellAtIndexPath:v6];
  [v7 setAccessoryType:self];
  if (self)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  [v7 setSelectionStyle:v10];
  [v7 setUsesDetailAppearance:0];
  v11 = [v9 selectedValue];
  v12 = [v9 property];
  [v7 setValue:v11 property:v12];

  return v7;
}

- (BOOL)canDrillInCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SFContactAutoFillViewController *)self properties];
  v6 = [v4 row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  v8 = [v7 values];
  LOBYTE(v6) = [v8 count] > 1;

  return v6;
}

- (SFContactAutoFillViewControllerFiller)autoFiller
{
  WeakRetained = objc_loadWeakRetained(&self->_autoFiller);

  return WeakRetained;
}

- (void)_valueForProperty:(uint64_t)a1 identifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Failed to find display value for %{public}@ property in contact card", &v2, 0xCu);
}

@end