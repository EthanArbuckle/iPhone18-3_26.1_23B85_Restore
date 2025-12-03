@interface CARDebugColorsPanel
- (CARDebugColorsPanel)initWithPanelController:(id)controller;
- (id)cellSpecifier;
- (id)cellSpecifiers;
- (id)phoneView;
- (void)_phoneButtonPressed:(id)pressed;
- (void)colorViewWasTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation CARDebugColorsPanel

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000B190;
    v8[3] = &unk_1000DAE40;
    objc_copyWeak(&v9, &location);
    v5 = [(CARSettingsCellSpecifier *)v4 initWithTitle:@"Debug Colors" image:0 icon:0 accessoryType:1 actionBlock:v8];
    v6 = self->_cellSpecifier;
    self->_cellSpecifier = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  return cellSpecifier;
}

- (id)phoneView
{
  phoneView = self->_phoneView;
  if (!phoneView)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_phoneView;
    self->_phoneView = v4;

    leftAnchor = [(UIView *)self->_phoneView leftAnchor];
    topAnchor = [(UIView *)self->_phoneView topAnchor];
    v22 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    selfCopy = self;
    obj = [(CARDebugColorsPanel *)self colorModels];
    v25 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v25)
    {
      v7 = 1000;
      v21 = *v39;
      do
      {
        v8 = 0;
        v9 = topAnchor;
        do
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v8;
          v10 = [[DebugColorView alloc] initWithModel:*(*(&v38 + 1) + 8 * v8)];
          [(DebugColorView *)v10 setUserInteractionEnabled:0];
          [(DebugColorView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
          v11 = [UIButton buttonWithType:0];
          [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v11 setTag:v7];
          [v11 addSubview:v10];
          [(UIView *)selfCopy->_phoneView addSubview:v11];
          [v11 addTarget:selfCopy action:"_phoneButtonPressed:" forControlEvents:0x2000];
          topAnchor2 = [(DebugColorView *)v10 topAnchor];
          topAnchor3 = [v11 topAnchor];
          v34 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
          v42[0] = v34;
          leftAnchor2 = [(DebugColorView *)v10 leftAnchor];
          leftAnchor3 = [v11 leftAnchor];
          v31 = [leftAnchor2 constraintEqualToAnchor:leftAnchor3];
          v42[1] = v31;
          rightAnchor = [(DebugColorView *)v10 rightAnchor];
          rightAnchor2 = [v11 rightAnchor];
          v27 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
          v42[2] = v27;
          bottomAnchor = [(DebugColorView *)v10 bottomAnchor];
          bottomAnchor2 = [v11 bottomAnchor];
          v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
          v42[3] = v13;
          topAnchor4 = [v11 topAnchor];
          v15 = [topAnchor4 constraintEqualToAnchor:v9 constant:10.0];
          v42[4] = v15;
          [v11 leftAnchor];
          v16 = v28 = v9;
          v17 = [v16 constraintEqualToAnchor:leftAnchor constant:10.0];
          v42[5] = v17;
          v18 = [NSArray arrayWithObjects:v42 count:6];
          [v22 addObjectsFromArray:v18];

          topAnchor = [v11 bottomAnchor];

          ++v7;
          v8 = v37 + 1;
          v9 = topAnchor;
        }

        while (v25 != (v37 + 1));
        v25 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v25);
    }

    [NSLayoutConstraint activateConstraints:v22];
    phoneView = selfCopy->_phoneView;
  }

  return phoneView;
}

- (void)_phoneButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  colorModels = [(CARDebugColorsPanel *)self colorModels];
  v5 = [pressedCopy tag];

  1000 = [colorModels objectAtIndexedSubscript:v5 - 1000];
  color = [1000 color];
  view = [(CARDebugColorsPanel *)self view];
  [view setBackgroundColor:color];
}

- (CARDebugColorsPanel)initWithPanelController:(id)controller
{
  v47.receiver = self;
  v47.super_class = CARDebugColorsPanel;
  result = [(CARSettingsPanel *)&v47 initWithPanelController:controller];
  if (result)
  {
    v46 = result;
    v45 = +[UIColor labelColor];
    v44 = [DebugColorModel modelWithColor:v45 name:@"Label"];
    v48[0] = v44;
    v43 = +[UIColor _carSystemPrimaryColor];
    v42 = [DebugColorModel modelWithColor:v43 name:@"Primary"];
    v48[1] = v42;
    v41 = +[UIColor _carSystemSecondaryColor];
    v40 = [DebugColorModel modelWithColor:v41 name:@"Secondary"];
    v48[2] = v40;
    v39 = +[UIColor _carSystemTertiaryColor];
    v38 = [DebugColorModel modelWithColor:v39 name:@"Tertiary"];
    v48[3] = v38;
    v37 = +[UIColor _carSystemQuaternaryColor];
    v36 = [DebugColorModel modelWithColor:v37 name:@"Quaternary"];
    v48[4] = v36;
    v35 = +[UIColor _carSystemFocusColor];
    v34 = [DebugColorModel modelWithColor:v35 name:@"Focus"];
    v48[5] = v34;
    v33 = +[UIColor _carSystemFocusLabelColor];
    v32 = [DebugColorModel modelWithColor:v33 name:@"Focus Label"];
    v48[6] = v32;
    v31 = +[UIColor _carSystemFocusPrimaryColor];
    v30 = [DebugColorModel modelWithColor:v31 name:@"Focus Primary"];
    v48[7] = v30;
    v29 = +[UIColor _carSystemFocusSecondaryColor];
    v28 = [DebugColorModel modelWithColor:v29 name:@"Focus Secondary"];
    v48[8] = v28;
    v27 = +[UIColor tableBackgroundColor];
    v26 = [DebugColorModel modelWithColor:v27 name:@"tableBackgroundColor"];
    v48[9] = v26;
    v25 = +[UIColor systemRedColor];
    v24 = [DebugColorModel modelWithColor:v25 name:@"System Red"];
    v48[10] = v24;
    v23 = +[UIColor systemOrangeColor];
    v22 = [DebugColorModel modelWithColor:v23 name:@"System Orange"];
    v48[11] = v22;
    v21 = +[UIColor systemYellowColor];
    v20 = [DebugColorModel modelWithColor:v21 name:@"System Yellow"];
    v48[12] = v20;
    v19 = +[UIColor systemGreenColor];
    v18 = [DebugColorModel modelWithColor:v19 name:@"System Green"];
    v48[13] = v18;
    v17 = +[UIColor systemTealColor];
    v16 = [DebugColorModel modelWithColor:v17 name:@"System Teal"];
    v48[14] = v16;
    v4 = +[UIColor systemBlueColor];
    v5 = [DebugColorModel modelWithColor:v4 name:@"System Blue"];
    v48[15] = v5;
    v6 = +[UIColor systemPurpleColor];
    v7 = [DebugColorModel modelWithColor:v6 name:@"System Purple"];
    v48[16] = v7;
    v8 = +[UIColor systemPinkColor];
    v9 = [DebugColorModel modelWithColor:v8 name:@"System Pink"];
    v48[17] = v9;
    v10 = +[UIColor whiteColor];
    v11 = [DebugColorModel modelWithColor:v10 name:@"White"];
    v48[18] = v11;
    v12 = +[UIColor blackColor];
    v13 = [DebugColorModel modelWithColor:v12 name:@"Black"];
    v48[19] = v13;
    v14 = [NSArray arrayWithObjects:v48 count:20];
    colorModels = v46->_colorModels;
    v46->_colorModels = v14;

    return v46;
  }

  return result;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CARDebugColorsPanel;
  [(CARSettingsCollectionPanel *)&v2 viewDidLoad];
}

- (id)cellSpecifiers
{
  cellSpecifiers = self->_cellSpecifiers;
  if (!cellSpecifiers)
  {
    v4 = objc_opt_new();
    v5 = [CARSettingsCellViewSpecifier alloc];
    v6 = [[CarTaitStyleView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v7 = [(CARSettingsCellViewSpecifier *)v5 initWithView:v6 actionBlock:&stru_1000DAFA0];

    v16 = v7;
    [(NSArray *)v4 addObject:v7];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [(CARDebugColorsPanel *)self colorModels];
    v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [[DebugColorView alloc] initWithModel:*(*(&v21 + 1) + 8 * i)];
          [(DebugColorView *)v11 setDelegate:self];
          objc_initWeak(&location, v11);
          v12 = [CARSettingsCellViewSpecifier alloc];
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10000BFFC;
          v18[3] = &unk_1000DAE40;
          objc_copyWeak(&v19, &location);
          v13 = [(CARSettingsCellViewSpecifier *)v12 initWithView:v11 actionBlock:v18];
          [(NSArray *)v4 addObject:v13];

          objc_destroyWeak(&v19);
          objc_destroyWeak(&location);
        }

        v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v14 = self->_cellSpecifiers;
    self->_cellSpecifiers = v4;

    cellSpecifiers = self->_cellSpecifiers;
  }

  return cellSpecifiers;
}

- (void)colorViewWasTapped:(id)tapped
{
  colorModel = [tapped colorModel];
  color = [colorModel color];
  [(CARSettingsCollectionPanel *)self setBackgroundColor:color];
}

@end