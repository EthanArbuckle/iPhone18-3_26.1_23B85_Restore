@interface DTL4SSettings
- (id)specifiers;
- (void)setL4SSettingForSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation DTL4SSettings

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = DTL4SSettings;
  [(DTL4SSettings *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"L4S" value:&stru_3E0D8 table:@"DTL4SSettings"];
  [(DTL4SSettings *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_25;
  }

  v42 = OBJC_IVAR___PSListController__specifiers;
  v4 = [NSNumber numberWithInt:network_config_get_l4s_enabled()];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v44 = "[DTL4SSettings specifiers]";
    v45 = 1024;
    l4s_enabled = network_config_get_l4s_enabled();
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s L4S get=%d", buf, 0x12u);
  }

  v5 = objc_alloc_init(NSMutableArray);
  v6 = [NSNumber numberWithInt:0];

  v38 = v4;
  if (v4 == v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[DTL4SSettings specifiers]";
      v9 = "%s L4S is system";
      goto LABEL_12;
    }
  }

  else
  {
    v7 = [NSNumber numberWithInt:1];

    v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v4 == v7)
    {
      if (v8)
      {
        *buf = 136315138;
        v44 = "[DTL4SSettings specifiers]";
        v9 = "%s L4S is enabled";
        goto LABEL_12;
      }
    }

    else if (v8)
    {
      *buf = 136315138;
      v44 = "[DTL4SSettings specifiers]";
      v9 = "%s L4S is disabled";
LABEL_12:
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
    }
  }

  v40 = [PSSpecifier preferenceSpecifierNamed:&stru_3E0D8 target:self set:0 get:0 detail:0 cell:0 edit:0];
  v41 = v5;
  [v5 addObject:?];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"L4S" value:&stru_3E0D8 table:@"DTL4SSettings"];
  v39 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:0 edit:0];

  v12 = [NSNumber numberWithBool:1];
  [v39 setProperty:v12 forKey:PSIsRadioGroupKey];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"SYSTEM" value:&stru_3E0D8 table:@"DTL4SSettings"];
  v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v15 setButtonAction:"setL4SSettingForSpecifier:"];
  v16 = [NSNumber numberWithInt:0];
  [v15 setProperty:v16 forKey:@"l4sValue"];

  v17 = [NSNumber numberWithInt:0];
  if (v4 == v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = [NSBundle bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"FORCE_ENABLE" value:&stru_3E0D8 table:@"DTL4SSettings"];
  v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v22 setButtonAction:"setL4SSettingForSpecifier:"];
  v23 = [NSNumber numberWithInt:1];
  [v22 setProperty:v23 forKey:@"l4sValue"];

  v24 = [NSNumber numberWithInt:1];
  if (v4 == v24)
  {
    v25 = v22;
  }

  else
  {
    v25 = v19;
  }

  v26 = v25;

  v27 = [NSBundle bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"FORCE_DISABLE" value:&stru_3E0D8 table:@"DTL4SSettings"];
  v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v29 setButtonAction:"setL4SSettingForSpecifier:"];
  v30 = [NSNumber numberWithInt:2];
  [v29 setProperty:v30 forKey:@"l4sValue"];

  v31 = [NSNumber numberWithInt:2];
  if (v38 == v31)
  {
    v32 = v29;
  }

  else
  {
    v32 = v26;
  }

  v33 = v32;

  if (v33)
  {
    [v39 setProperty:v33 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  v34 = [[NSArray alloc] initWithObjects:{v39, v15, v22, v29, 0}];
  l4sSpecifiers = self->_l4sSpecifiers;
  self->_l4sSpecifiers = v34;

  [v41 addObjectsFromArray:self->_l4sSpecifiers];
  v36 = *&self->PSListController_opaque[v42];
  *&self->PSListController_opaque[v42] = v41;

  v3 = *&self->PSListController_opaque[v42];
LABEL_25:

  return v3;
}

- (void)setL4SSettingForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:@"l4sValue"];
  intValue = [v3 intValue];

  _network_config_set_l4s_enabled(intValue);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = DTL4SSettings;
  [(DTL4SSettings *)&v21 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(DTL4SSettings *)self specifierAtIndex:[(DTL4SSettings *)self indexForIndexPath:pathCopy]];
  if ([v7 cellType] == &dword_0 + 3)
  {
    v8 = PSTableCellKey;
    v9 = [v7 propertyForKey:PSTableCellKey];
    [v9 setChecked:1];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    specifiers = [(DTL4SSettings *)self specifiers];
    v11 = [specifiers countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(specifiers);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          if (v15 != v7)
          {
            v16 = [v15 propertyForKey:v8];
            [v16 setChecked:0];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [specifiers countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

@end