@interface CARThemePanel
- (id)cellSpecifier;
- (void)invalidate;
- (void)viewDidLoad;
@end

@implementation CARThemePanel

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v5 = sub_10001C80C(@"THEMES_ROW_TITLE");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.wallpaper"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100007F68;
    v14 = &unk_1000DAE40;
    objc_copyWeak(&v15, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 actionBlock:&v11];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsThemeCell", v11, v12, v13, v14];
  v9 = self->_cellSpecifier;

  return v9;
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = CARThemePanel;
  [(CARSettingsPanel *)&v38 viewDidLoad];
  v3 = [_TtC15CarPlaySettings30CARThemeSelectorViewController alloc];
  v4 = [(CARSettingsPanel *)self panelController];
  v5 = [(CARThemeSelectorViewController *)v3 initWithPanelController:v4];
  [(CARThemePanel *)self setSelectorViewController:v5];

  v6 = [(CARThemePanel *)self selectorViewController];
  [v6 willMoveToParentViewController:self];

  v7 = [(CARThemePanel *)self selectorViewController];
  [(CARThemePanel *)self addChildViewController:v7];

  v8 = [(CARThemePanel *)self view];
  v9 = [(CARThemePanel *)self selectorViewController];
  v10 = [v9 view];
  [v8 addSubview:v10];

  v11 = [(CARThemePanel *)self selectorViewController];
  v12 = [v11 view];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = [(CARThemePanel *)self selectorViewController];
  v36 = [v37 view];
  v34 = [v36 leadingAnchor];
  v35 = [(CARThemePanel *)self view];
  v33 = [v35 leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v39[0] = v32;
  v31 = [(CARThemePanel *)self selectorViewController];
  v30 = [v31 view];
  v28 = [v30 trailingAnchor];
  v29 = [(CARThemePanel *)self view];
  v27 = [v29 trailingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v39[1] = v26;
  v25 = [(CARThemePanel *)self selectorViewController];
  v24 = [v25 view];
  v23 = [v24 topAnchor];
  v13 = [(CARThemePanel *)self view];
  v14 = [v13 topAnchor];
  v15 = [v23 constraintEqualToAnchor:v14];
  v39[2] = v15;
  v16 = [(CARThemePanel *)self selectorViewController];
  v17 = [v16 view];
  v18 = [v17 bottomAnchor];
  v19 = [(CARThemePanel *)self view];
  v20 = [v19 bottomAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v39[3] = v21;
  v22 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v22];
}

- (void)invalidate
{
  v3 = [(CARThemePanel *)self selectorViewController];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = CARThemePanel;
  [(CARSettingsPanel *)&v4 invalidate];
}

@end