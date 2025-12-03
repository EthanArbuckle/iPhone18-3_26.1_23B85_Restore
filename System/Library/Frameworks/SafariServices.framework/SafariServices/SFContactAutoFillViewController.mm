@interface SFContactAutoFillViewController
- (BOOL)canDrillInCellAtIndexPath:(id)path;
- (SFContactAutoFillViewController)initWithMatches:(id)matches contact:(id)contact;
- (SFContactAutoFillViewControllerFiller)autoFiller;
- (id)_valueForProperty:(id)property identifier:(id)identifier;
- (id)matchesForProperty:(id)property;
- (id)properties;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)valuesFromPropertyMatches:(id)matches;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_cancel:(id)_cancel;
- (void)autoFill:(id)fill;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SFContactAutoFillViewController

- (SFContactAutoFillViewController)initWithMatches:(id)matches contact:(id)contact
{
  matchesCopy = matches;
  contactCopy = contact;
  v13.receiver = self;
  v13.super_class = SFContactAutoFillViewController;
  v8 = [(SFContactAutoFillViewController *)&v13 initWithStyle:0];
  if (v8)
  {
    v9 = [matchesCopy copy];
    matches = v8->_matches;
    v8->_matches = v9;

    objc_storeStrong(&v8->_contact, contact);
    v11 = v8;
  }

  return v8;
}

- (id)_valueForProperty:(id)property identifier:(id)identifier
{
  v66 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  identifierCopy = identifier;
  v8 = [MEMORY[0x1E69E30A8] contactKeyForString:propertyCopy];
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69C8AD8]])
  {
    value2 = [MEMORY[0x1E695CD80] stringFromContact:self->_contact style:0];
    goto LABEL_53;
  }

  if ([v8 isEqualToString:*MEMORY[0x1E695C360]])
  {
    [(CNContact *)self->_contact postalAddresses];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    birthday = v61 = 0u;
    v11 = [birthday countByEnumeratingWithState:&v58 objects:v65 count:16];
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
            objc_enumerationMutation(birthday);
          }

          v15 = *(*(&v58 + 1) + 8 * i);
          identifier = [v15 identifier];
          v17 = [identifier isEqualToString:identifierCopy];

          if (v17)
          {
            v21 = MEMORY[0x1E695CF68];
            value = [v15 value];
            stringValue = [v21 stringFromPostalAddress:value style:0];
            goto LABEL_16;
          }
        }

        v12 = [birthday countByEnumeratingWithState:&v58 objects:v65 count:16];
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
    birthday = [(CNContact *)self->_contact birthday];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v19 = [currentCalendar dateFromComponents:birthday];
    v20 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v20 setLocalizedDateFormatFromTemplate:@"dMy"];
    value2 = [v20 stringFromDate:v19];

LABEL_18:
    goto LABEL_53;
  }

  if ([v8 isEqualToString:*MEMORY[0x1E695C330]])
  {
    [(CNContact *)self->_contact phoneNumbers];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    birthday = v57 = 0u;
    v24 = [birthday countByEnumeratingWithState:&v54 objects:v64 count:16];
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
            objc_enumerationMutation(birthday);
          }

          v28 = *(*(&v54 + 1) + 8 * j);
          identifier2 = [v28 identifier];
          v30 = [identifier2 isEqualToString:identifierCopy];

          if (v30)
          {
            value = [v28 value];
            stringValue = [value stringValue];
LABEL_16:
            value2 = stringValue;

            goto LABEL_17;
          }
        }

        v25 = [birthday countByEnumeratingWithState:&v54 objects:v64 count:16];
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
    birthday = v53 = 0u;
    v31 = [birthday countByEnumeratingWithState:&v50 objects:v63 count:16];
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
          objc_enumerationMutation(birthday);
        }

        v35 = *(*(&v50 + 1) + 8 * v34);
        identifier3 = [v35 identifier];
        v37 = [identifier3 isEqualToString:identifierCopy];

        if (v37)
        {
          break;
        }

        if (v32 == ++v34)
        {
          v32 = [birthday countByEnumeratingWithState:&v50 objects:v63 count:16];
          if (v32)
          {
            goto LABEL_32;
          }

          goto LABEL_49;
        }
      }

LABEL_56:
      value2 = [v35 value];
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
    birthday = v49 = 0u;
    v38 = [birthday countByEnumeratingWithState:&v46 objects:v62 count:16];
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
          objc_enumerationMutation(birthday);
        }

        v35 = *(*(&v46 + 1) + 8 * v41);
        identifier4 = [v35 identifier];
        v43 = [identifier4 isEqualToString:identifierCopy];

        if (v43)
        {
          goto LABEL_56;
        }

        if (v39 == ++v41)
        {
          v39 = [birthday countByEnumeratingWithState:&v46 objects:v62 count:16];
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
    [SFContactAutoFillViewController _valueForProperty:propertyCopy identifier:v44];
  }

  value2 = 0;
LABEL_53:

  return value2;
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
          property = [v10 property];
          v12 = [v4 containsObject:property];

          if ((v12 & 1) == 0)
          {
            property2 = [v10 property];
            [v4 addObject:property2];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v7);
    }

    array = [MEMORY[0x1E695DF70] array];
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
          [array addObject:v24];
        }

        v16 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v16);
    }

    v25 = *(&self->super.super.super.super.isa + v27);
    *(&self->super.super.super.super.isa + v27) = array;

    propertyValues = *(&self->super.super.super.super.isa + v27);
  }

  return propertyValues;
}

- (id)matchesForProperty:(id)property
{
  propertyCopy = property;
  matches = self->_matches;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__SFContactAutoFillViewController_matchesForProperty___block_invoke;
  v9[3] = &unk_1E84936C0;
  v10 = propertyCopy;
  v6 = propertyCopy;
  v7 = [(NSArray *)matches safari_filterObjectsUsingBlock:v9];

  return v7;
}

uint64_t __54__SFContactAutoFillViewController_matchesForProperty___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 property];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)valuesFromPropertyMatches:(id)matches
{
  v39 = *MEMORY[0x1E69E9840];
  matchesCopy = matches;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = matchesCopy;
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
        identifier = [v11 identifier];
        v13 = [identifier length];

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

        identifier2 = [v11 identifier];
        v15 = [dictionary objectForKey:identifier2];

        if (!v15)
        {
          array = [MEMORY[0x1E695DF70] array];
          identifier3 = [v11 identifier];
          [dictionary setObject:array forKey:identifier3];
        }

        identifier4 = [v11 identifier];
        v19 = [dictionary objectForKey:identifier4];
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

  array2 = [MEMORY[0x1E695DF70] array];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __61__SFContactAutoFillViewController_valuesFromPropertyMatches___block_invoke;
  v30[3] = &unk_1E84936E8;
  v30[4] = self;
  v21 = array2;
  v31 = v21;
  [dictionary enumerateKeysAndObjectsUsingBlock:v30];
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
  navigationItem = [(SFContactAutoFillViewController *)self navigationItem];
  v4 = objc_alloc(MEMORY[0x1E69DC708]);
  v5 = _WBSLocalizedString();
  v6 = [v4 initWithTitle:v5 style:0 target:self action:sel__cancel_];
  [navigationItem setLeftBarButtonItem:v6];

  v7 = objc_alloc(MEMORY[0x1E69DC708]);
  v8 = _WBSLocalizedString();
  v9 = [v7 initWithTitle:v8 style:2 target:self action:sel_autoFill_];
  [navigationItem setRightBarButtonItem:v9];

  tableView = [(SFContactAutoFillViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];
  v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [tableView setTableFooterView:v11];

  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  [tableView setEstimatedRowHeight:100.0];
  [tableView setSeparatorInset:{0.0, 14.0 * 2.0 + 22.0, 0.0, 0.0}];
}

- (void)_cancel:(id)_cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_autoFiller);
  [WeakRetained dismissCustomAutoFill];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SFContactAutoFillViewController;
  [(SFContactAutoFillViewController *)&v5 viewWillAppear:appear];
  tableView = [(SFContactAutoFillViewController *)self tableView];
  [tableView reloadData];
}

- (void)autoFill:(id)fill
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  properties = [(SFContactAutoFillViewController *)self properties];
  v7 = [properties countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(properties);
        }

        selectedValue = [*(*(&v16 + 1) + 8 * v10) selectedValue];
        selected = [selectedValue selected];
        matches = [selectedValue matches];
        if (selected)
        {
          v14 = array;
        }

        else
        {
          v14 = array2;
        }

        [v14 addObjectsFromArray:matches];

        ++v10;
      }

      while (v8 != v10);
      v8 = [properties countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  WeakRetained = objc_loadWeakRetained(&self->_autoFiller);
  [WeakRetained performAutoFillWithMatchSelections:array doNotFill:array2 contact:self->_contact];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  properties = [(SFContactAutoFillViewController *)self properties];
  v8 = [properties objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  values = [v8 values];
  v10 = [values count];

  if (v10 >= 2)
  {
    v11 = [[SFContactAutoFillDetailViewController alloc] initWithPropertyValues:v8];
    navigationController = [(SFContactAutoFillViewController *)self navigationController];
    [navigationController pushViewController:v11 animated:1];

    [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(SFContactAutoFillViewController *)self properties:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"cell" forIndexPath:pathCopy];
  properties = [(SFContactAutoFillViewController *)self properties];
  v9 = [properties objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  LODWORD(self) = [(SFContactAutoFillViewController *)self canDrillInCellAtIndexPath:pathCopy];
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
  selectedValue = [v9 selectedValue];
  property = [v9 property];
  [v7 setValue:selectedValue property:property];

  return v7;
}

- (BOOL)canDrillInCellAtIndexPath:(id)path
{
  pathCopy = path;
  properties = [(SFContactAutoFillViewController *)self properties];
  v6 = [pathCopy row];

  v7 = [properties objectAtIndexedSubscript:v6];

  values = [v7 values];
  LOBYTE(v6) = [values count] > 1;

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