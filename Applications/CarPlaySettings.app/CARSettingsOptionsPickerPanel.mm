@interface CARSettingsOptionsPickerPanel
- (CARSettingsOptionsPickerPanel)initWithPanelController:(id)controller title:(id)title image:(id)image optionsPicker:(id)picker additionalSections:(id)sections;
- (id)cellSpecifier;
- (id)specifierSections;
@end

@implementation CARSettingsOptionsPickerPanel

- (CARSettingsOptionsPickerPanel)initWithPanelController:(id)controller title:(id)title image:(id)image optionsPicker:(id)picker additionalSections:(id)sections
{
  controllerCopy = controller;
  titleCopy = title;
  imageCopy = image;
  pickerCopy = picker;
  sectionsCopy = sections;
  v26.receiver = self;
  v26.super_class = CARSettingsOptionsPickerPanel;
  v17 = [(CARSettingsPanel *)&v26 initWithPanelController:controllerCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_panelTitle, title);
    objc_storeStrong(&v18->_image, image);
    objc_storeStrong(&v18->_optionsPicker, picker);
    selectionHandler = [pickerCopy selectionHandler];
    objc_initWeak(&location, v18);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10002B5CC;
    v22[3] = &unk_1000DB7C8;
    objc_copyWeak(&v24, &location);
    v20 = selectionHandler;
    v23 = v20;
    [pickerCopy setSelectionHandler:v22];
    objc_storeStrong(&v18->_additionalSections, sections);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v18;
}

- (id)specifierSections
{
  v3 = +[NSMutableArray array];
  optionsPicker = [(CARSettingsOptionsPickerPanel *)self optionsPicker];
  specifierSection = [optionsPicker specifierSection];

  [v3 addObject:specifierSection];
  additionalSections = [(CARSettingsOptionsPickerPanel *)self additionalSections];

  if (additionalSections)
  {
    additionalSections2 = [(CARSettingsOptionsPickerPanel *)self additionalSections];
    [v3 addObjectsFromArray:additionalSections2];
  }

  return v3;
}

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    panelTitle = [(CARSettingsOptionsPickerPanel *)self panelTitle];
    image = [(CARSettingsOptionsPickerPanel *)self image];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10002B8C8;
    v17 = &unk_1000DAE40;
    objc_copyWeak(&v18, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:panelTitle image:image icon:0 accessoryType:1 actionBlock:&v14];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    v9 = self->_cellSpecifier;
    v10 = [(CARSettingsOptionsPickerPanel *)self optionsPicker:v14];
    selectedOption = [v10 selectedOption];
    title = [selectedOption title];
    [(CARSettingsCellSpecifier *)v9 setDetail:title];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  return cellSpecifier;
}

@end