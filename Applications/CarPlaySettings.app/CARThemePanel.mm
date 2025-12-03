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
  panelController = [(CARSettingsPanel *)self panelController];
  v5 = [(CARThemeSelectorViewController *)v3 initWithPanelController:panelController];
  [(CARThemePanel *)self setSelectorViewController:v5];

  selectorViewController = [(CARThemePanel *)self selectorViewController];
  [selectorViewController willMoveToParentViewController:self];

  selectorViewController2 = [(CARThemePanel *)self selectorViewController];
  [(CARThemePanel *)self addChildViewController:selectorViewController2];

  view = [(CARThemePanel *)self view];
  selectorViewController3 = [(CARThemePanel *)self selectorViewController];
  view2 = [selectorViewController3 view];
  [view addSubview:view2];

  selectorViewController4 = [(CARThemePanel *)self selectorViewController];
  view3 = [selectorViewController4 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  selectorViewController5 = [(CARThemePanel *)self selectorViewController];
  view4 = [selectorViewController5 view];
  leadingAnchor = [view4 leadingAnchor];
  view5 = [(CARThemePanel *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v39[0] = v32;
  selectorViewController6 = [(CARThemePanel *)self selectorViewController];
  view6 = [selectorViewController6 view];
  trailingAnchor = [view6 trailingAnchor];
  view7 = [(CARThemePanel *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v39[1] = v26;
  selectorViewController7 = [(CARThemePanel *)self selectorViewController];
  view8 = [selectorViewController7 view];
  topAnchor = [view8 topAnchor];
  view9 = [(CARThemePanel *)self view];
  topAnchor2 = [view9 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v39[2] = v15;
  selectorViewController8 = [(CARThemePanel *)self selectorViewController];
  view10 = [selectorViewController8 view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(CARThemePanel *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v39[3] = v21;
  v22 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v22];
}

- (void)invalidate
{
  selectorViewController = [(CARThemePanel *)self selectorViewController];
  [selectorViewController invalidate];

  v4.receiver = self;
  v4.super_class = CARThemePanel;
  [(CARSettingsPanel *)&v4 invalidate];
}

@end