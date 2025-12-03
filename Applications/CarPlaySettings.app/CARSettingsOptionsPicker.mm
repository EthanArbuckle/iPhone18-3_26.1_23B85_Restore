@interface CARSettingsOptionsPicker
+ (CARSettingsOptionsPicker)pickerWithLabel:(id)label options:(id)options selectedValue:(id)value selectionHandler:(id)handler;
- (CARSettingsCellSpecifierSection)specifierSection;
- (CARSettingsOption)selectedOption;
- (CARSettingsOptionsPicker)initWithLabel:(id)label options:(id)options selectedValue:(id)value selectionHandler:(id)handler;
- (void)_handleUpdatedSelection;
@end

@implementation CARSettingsOptionsPicker

+ (CARSettingsOptionsPicker)pickerWithLabel:(id)label options:(id)options selectedValue:(id)value selectionHandler:(id)handler
{
  handlerCopy = handler;
  valueCopy = value;
  optionsCopy = options;
  labelCopy = label;
  v13 = [objc_alloc(objc_opt_class()) initWithLabel:labelCopy options:optionsCopy selectedValue:valueCopy selectionHandler:handlerCopy];

  return v13;
}

- (CARSettingsOptionsPicker)initWithLabel:(id)label options:(id)options selectedValue:(id)value selectionHandler:(id)handler
{
  labelCopy = label;
  optionsCopy = options;
  valueCopy = value;
  handlerCopy = handler;
  v40.receiver = self;
  v40.super_class = CARSettingsOptionsPicker;
  v15 = [(CARSettingsOptionsPicker *)&v40 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_label, label);
    objc_storeStrong(&v16->_options, options);
    v17 = [handlerCopy copy];
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
    v19 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(optionsCopy, "count")}];
    v32 = v19;
    v33 = valueCopy;
    v20 = v16;
    v34 = v20;
    v35 = &v36;
    [optionsCopy enumerateObjectsUsingBlock:v31];
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
  label = [(CARSettingsOptionsPicker *)self label];
  groupSpecifier = [(CARSettingsOptionsPicker *)self groupSpecifier];
  groupSpecifiers = [groupSpecifier groupSpecifiers];
  v7 = [(CARSettingsCellSpecifierSection *)v3 initWithTitle:label specifiers:groupSpecifiers];

  return v7;
}

- (void)_handleUpdatedSelection
{
  options = [(CARSettingsOptionsPicker *)self options];
  groupSpecifier = [(CARSettingsOptionsPicker *)self groupSpecifier];
  selectedIndex = [groupSpecifier selectedIndex];

  v5 = selectedIndex >= [options count];
  v6 = options;
  if (!v5)
  {
    v7 = [options objectAtIndex:selectedIndex];
    [(CARSettingsOptionsPicker *)self setSelectedOption:v7];
    selectionHandler = [(CARSettingsOptionsPicker *)self selectionHandler];
    v9 = selectionHandler;
    if (selectionHandler)
    {
      (*(selectionHandler + 16))(selectionHandler, v7);
    }

    v6 = options;
  }
}

- (CARSettingsOption)selectedOption
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedOption);

  return WeakRetained;
}

@end