@interface CARSettingsOptionsPickerPanel
- (CARSettingsOptionsPickerPanel)initWithPanelController:(id)a3 title:(id)a4 image:(id)a5 optionsPicker:(id)a6 additionalSections:(id)a7;
- (id)cellSpecifier;
- (id)specifierSections;
@end

@implementation CARSettingsOptionsPickerPanel

- (CARSettingsOptionsPickerPanel)initWithPanelController:(id)a3 title:(id)a4 image:(id)a5 optionsPicker:(id)a6 additionalSections:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = CARSettingsOptionsPickerPanel;
  v17 = [(CARSettingsPanel *)&v26 initWithPanelController:v12];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_panelTitle, a4);
    objc_storeStrong(&v18->_image, a5);
    objc_storeStrong(&v18->_optionsPicker, a6);
    v19 = [v15 selectionHandler];
    objc_initWeak(&location, v18);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10002B5CC;
    v22[3] = &unk_1000DB7C8;
    objc_copyWeak(&v24, &location);
    v20 = v19;
    v23 = v20;
    [v15 setSelectionHandler:v22];
    objc_storeStrong(&v18->_additionalSections, a7);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v18;
}

- (id)specifierSections
{
  v3 = +[NSMutableArray array];
  v4 = [(CARSettingsOptionsPickerPanel *)self optionsPicker];
  v5 = [v4 specifierSection];

  [v3 addObject:v5];
  v6 = [(CARSettingsOptionsPickerPanel *)self additionalSections];

  if (v6)
  {
    v7 = [(CARSettingsOptionsPickerPanel *)self additionalSections];
    [v3 addObjectsFromArray:v7];
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
    v5 = [(CARSettingsOptionsPickerPanel *)self panelTitle];
    v6 = [(CARSettingsOptionsPickerPanel *)self image];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10002B8C8;
    v17 = &unk_1000DAE40;
    objc_copyWeak(&v18, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:v6 icon:0 accessoryType:1 actionBlock:&v14];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    v9 = self->_cellSpecifier;
    v10 = [(CARSettingsOptionsPickerPanel *)self optionsPicker:v14];
    v11 = [v10 selectedOption];
    v12 = [v11 title];
    [(CARSettingsCellSpecifier *)v9 setDetail:v12];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  return cellSpecifier;
}

@end