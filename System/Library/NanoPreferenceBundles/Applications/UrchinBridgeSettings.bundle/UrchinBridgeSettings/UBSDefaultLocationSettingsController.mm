@interface UBSDefaultLocationSettingsController
+ (void)initialize;
- (id)selectedLocationIdentifier;
- (id)specifiers;
- (void)setSelectedLocationIdentifier:(id)identifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation UBSDefaultLocationSettingsController

+ (void)initialize
{
  if (qword_11560 != -1)
  {
    sub_5F48();
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = UBSDefaultLocationSettingsController;
  [(UBSDefaultLocationSettingsController *)&v6 viewDidLoad];
  v3 = +[USLocationWrapper shared];
  [(UBSDefaultLocationSettingsController *)self setModel:v3];

  model = [(UBSDefaultLocationSettingsController *)self model];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1FF4;
  v5[3] = &unk_C538;
  v5[4] = self;
  [model loadLocationsWithCompletion:v5];
}

- (id)specifiers
{
  v2 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v33 = OBJC_IVAR___PSListController__specifiers;
    locations = [(UBSDefaultLocationSettingsController *)self locations];
    v6 = [locations count];

    if (!v6)
    {
      v7 = qword_11568;
      if (os_log_type_enabled(qword_11568, OS_LOG_TYPE_ERROR))
      {
        sub_5F5C(v7);
      }
    }

    locations2 = [(UBSDefaultLocationSettingsController *)self locations];
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [locations2 count]);

    v10 = +[UBSLocalizedString shared];
    v11 = [v10 stringForKey:@"DEFAULT_LOCATION"];

    v32 = v11;
    v12 = [PSSpecifier groupSpecifierWithName:v11];
    [v12 setCellType:0];
    v13 = +[UBSLocalizedString shared];
    v14 = [v13 stringForKey:@"DEFAULT_LOCATION_HELP_COMPLICATION"];

    v31 = v14;
    [v12 setObject:v14 forKeyedSubscript:PSFooterTextGroupKey];
    [v12 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v35 = v12;
    [v9 addObject:v12];
    selectedLocation = [(UBSDefaultLocationSettingsController *)self selectedLocation];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    selfCopy = self;
    obj = [(UBSDefaultLocationSettingsController *)self locations];
    v17 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      v20 = PSValueKey;
      v34 = PSRadioGroupCheckedSpecifierKey;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v37 + 1) + 8 * i);
          name = [v22 name];
          v24 = [PSSpecifier preferenceSpecifierNamed:name target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

          [v24 setProperty:v22 forKey:v20];
          [v9 addObject:v24];
          if ([selectedLocation isEqual:v22])
          {
            v25 = qword_11568;
            if (os_log_type_enabled(qword_11568, OS_LOG_TYPE_DEFAULT))
            {
              v26 = v25;
              name2 = [v22 name];
              *buf = 138412290;
              v42 = name2;
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Settings selected location to %@.", buf, 0xCu);
            }

            [v35 setProperty:v24 forKey:v34];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v18);
    }

    v28 = [v9 copy];
    v29 = *&selfCopy->PSListController_opaque[v33];
    *&selfCopy->PSListController_opaque[v33] = v28;

    v3 = *&selfCopy->PSListController_opaque[v33];
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = UBSDefaultLocationSettingsController;
  pathCopy = path;
  [(UBSDefaultLocationSettingsController *)&v14 tableView:view didSelectRowAtIndexPath:pathCopy];
  section = [pathCopy section];

  v8 = [(UBSDefaultLocationSettingsController *)self specifierAtIndex:[(UBSDefaultLocationSettingsController *)self indexOfGroup:section]];
  v9 = [v8 propertyForKey:PSIsRadioGroupKey];
  LODWORD(pathCopy) = [v9 BOOLValue];

  if (pathCopy)
  {
    v10 = [v8 propertyForKey:PSRadioGroupCheckedSpecifierKey];
    v11 = [v10 propertyForKey:PSValueKey];
    selectedLocation = [(UBSDefaultLocationSettingsController *)self selectedLocation];
    if (([v11 isEqual:selectedLocation] & 1) == 0)
    {
      [(UBSDefaultLocationSettingsController *)self setPreferenceValue:v11 specifier:v10];
      [(UBSDefaultLocationSettingsController *)self setSelectedLocation:v11];
      model = [(UBSDefaultLocationSettingsController *)self model];
      [model setWithSelectedLocation:v11];
    }
  }

  [(UBSDefaultLocationSettingsController *)self reloadSpecifiers];
}

- (id)selectedLocationIdentifier
{
  selectedLocation = [(UBSDefaultLocationSettingsController *)self selectedLocation];
  v3 = [selectedLocation id];

  return v3;
}

- (void)setSelectedLocationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    locations = [(UBSDefaultLocationSettingsController *)self locations];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_2994;
    v13[3] = &unk_C5A8;
    v6 = identifierCopy;
    v14 = v6;
    v7 = [locations indexOfObjectPassingTest:v13];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = qword_11568;
      if (os_log_type_enabled(qword_11568, OS_LOG_TYPE_ERROR))
      {
        sub_5FA0(v6, v8);
      }
    }

    else
    {
      locations2 = [(UBSDefaultLocationSettingsController *)self locations];
      v11 = [locations2 objectAtIndexedSubscript:v7];

      model = [(UBSDefaultLocationSettingsController *)self model];
      [model setWithSelectedLocation:v11];

      [(UBSDefaultLocationSettingsController *)self setSelectedLocation:v11];
    }
  }

  else
  {
    v9 = qword_11568;
    if (os_log_type_enabled(qword_11568, OS_LOG_TYPE_ERROR))
    {
      sub_6018(v9);
    }
  }
}

@end