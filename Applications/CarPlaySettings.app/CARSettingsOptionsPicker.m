@interface CARSettingsOptionsPicker
+ (CARSettingsOptionsPicker)pickerWithLabel:(id)a3 options:(id)a4 selectedValue:(id)a5 selectionHandler:(id)a6;
- (CARSettingsCellSpecifierSection)specifierSection;
- (CARSettingsOption)selectedOption;
- (CARSettingsOptionsPicker)initWithLabel:(id)a3 options:(id)a4 selectedValue:(id)a5 selectionHandler:(id)a6;
- (void)_handleUpdatedSelection;
@end

@implementation CARSettingsOptionsPicker

+ (CARSettingsOptionsPicker)pickerWithLabel:(id)a3 options:(id)a4 selectedValue:(id)a5 selectionHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_alloc(objc_opt_class()) initWithLabel:v12 options:v11 selectedValue:v10 selectionHandler:v9];

  return v13;
}

- (CARSettingsOptionsPicker)initWithLabel:(id)a3 options:(id)a4 selectedValue:(id)a5 selectionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v40.receiver = self;
  v40.super_class = CARSettingsOptionsPicker;
  v15 = [(CARSettingsOptionsPicker *)&v40 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_label, a3);
    objc_storeStrong(&v16->_options, a4);
    v17 = [v14 copy];
    selectionHandler = v16->_selectionHandler;
    v16->_selectionHandler = v17;

    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10002B0DC;
    v31[3] = &unk_1000DB7A0;
    v19 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
    v32 = v19;
    v33 = v13;
    v20 = v16;
    v34 = v20;
    v35 = &v36;
    [v12 enumerateObjectsUsingBlock:v31];
    objc_initWeak(&location, v20);
    v21 = [CARSettingsGroupCellSpecifier alloc];
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10002B18C;
    v28 = &unk_1000DB000;
    objc_copyWeak(&v29, &location);
    v22 = [(CARSettingsGroupCellSpecifier *)v21 initWithTitles:v19 actionBlock:&v25];
    v23 = v20[5];
    v20[5] = v22;

    [v20[5] setSelectedIndex:{v37[3], v25, v26, v27, v28}];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);

    _Block_object_dispose(&v36, 8);
  }

  return v16;
}

- (CARSettingsCellSpecifierSection)specifierSection
{
  v3 = [CARSettingsCellSpecifierSection alloc];
  v4 = [(CARSettingsOptionsPicker *)self label];
  v5 = [(CARSettingsOptionsPicker *)self groupSpecifier];
  v6 = [v5 groupSpecifiers];
  v7 = [(CARSettingsCellSpecifierSection *)v3 initWithTitle:v4 specifiers:v6];

  return v7;
}

- (void)_handleUpdatedSelection
{
  v10 = [(CARSettingsOptionsPicker *)self options];
  v3 = [(CARSettingsOptionsPicker *)self groupSpecifier];
  v4 = [v3 selectedIndex];

  v5 = v4 >= [v10 count];
  v6 = v10;
  if (!v5)
  {
    v7 = [v10 objectAtIndex:v4];
    [(CARSettingsOptionsPicker *)self setSelectedOption:v7];
    v8 = [(CARSettingsOptionsPicker *)self selectionHandler];
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8, v7);
    }

    v6 = v10;
  }
}

- (CARSettingsOption)selectedOption
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedOption);

  return WeakRetained;
}

@end