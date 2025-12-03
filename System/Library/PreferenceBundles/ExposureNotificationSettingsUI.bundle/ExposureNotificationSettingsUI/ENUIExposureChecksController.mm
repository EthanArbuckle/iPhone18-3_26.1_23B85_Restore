@interface ENUIExposureChecksController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)deleteExposureChecks;
- (void)exportExposureChecks;
- (void)viewDidLoad;
@end

@implementation ENUIExposureChecksController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = ENUIExposureChecksController;
  [(ENUIExposureChecksController *)&v8 viewDidLoad];
  parentController = [(ENUIExposureChecksController *)self parentController];
  store = [parentController store];
  store = self->_store;
  self->_store = store;

  v6 = self->_store;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_B460;
  v7[3] = &unk_2CE18;
  v7[4] = self;
  [(ENUIExposureNotificationsStore *)v6 fetchExposureChecksWithCompletion:v7];
}

- (id)specifiers
{
  selfCopy = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = ENUILocalizedString();
    [(ENUIExposureChecksController *)selfCopy setTitle:v5];

    v6 = objc_alloc_init(NSMutableArray);
    if (-[ENUIExposureChecksController fetchCompleted](selfCopy, "fetchCompleted") && (-[ENUIExposureChecksController exposureChecks](selfCopy, "exposureChecks"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8))
    {
      v35 = v3;
      if (qword_34108 != -1)
      {
        sub_1BB74();
      }

      v37 = qword_34100;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v9 = selfCopy;
      obj = selfCopy->_exposureChecks;
      v10 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v39;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v39 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v38 + 1) + 8 * i);
            session = [v14 session];
            date = [session date];
            v17 = [v37 stringFromDate:date];

            v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:v9 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            [v18 setProperty:v14 forKey:v20];

            [v6 addObject:v18];
          }

          v11 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v11);
      }

      v21 = +[PSSpecifier emptyGroupSpecifier];
      v22 = PSIDKey;
      [v21 setObject:@"EXPORT_EXPOSURE_CHECKS_GROUP" forKeyedSubscript:PSIDKey];
      [v6 addObject:v21];
      v23 = ENUILocalizedString();
      v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:v9 set:0 get:0 detail:0 cell:13 edit:0];

      [v24 setObject:@"EXPORT_EXPOSURE_CHECKS" forKeyedSubscript:v22];
      [v24 setButtonAction:"exportExposureChecks"];
      [v6 addObject:v24];
      selfCopy = v9;
      v25 = +[PSSpecifier emptyGroupSpecifier];
      [v25 setObject:@"DELETE_EXPOSURE_CHECKS_GROUP" forKeyedSubscript:v22];
      [v6 addObject:v25];
      v26 = ENUILocalizedString();
      v27 = [PSConfirmationSpecifier preferenceSpecifierNamed:v26 target:v9 set:0 get:0 detail:0 cell:13 edit:0];

      v28 = ENUILocalizedString();
      [v27 setCancelButton:v28];

      v29 = ENUILocalizedString();
      [v27 setTitle:v29];

      v30 = ENUILocalizedString();
      [v27 setPrompt:v30];

      [v27 setObject:&__kCFBooleanTrue forKeyedSubscript:PSConfirmationDestructiveKey];
      [v27 setObject:@"DELETE_EXPOSURE_CHECKS" forKeyedSubscript:v22];
      [v27 setButtonAction:"deleteExposureChecks"];
      [v6 addObject:v27];

      v3 = v35;
    }

    else if ([(ENUIExposureChecksController *)selfCopy fetchCompleted])
    {
      v31 = +[PSSpecifier emptyGroupSpecifier];
      selfCopy->_exposureChecks;
      v32 = ENUILocalizedString();
      [v31 setObject:v32 forKeyedSubscript:PSFooterTextGroupKey];

      [v6 addObject:v31];
    }

    v33 = *&selfCopy->PSListController_opaque[v3];
    *&selfCopy->PSListController_opaque[v3] = v6;

    v4 = *&selfCopy->PSListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = ENUIExposureChecksController;
  pathCopy = path;
  v7 = [(ENUIExposureChecksController *)&v16 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(ENUIExposureChecksController *)self specifierAtIndexPath:pathCopy, v16.receiver, v16.super_class];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:PSIDKey];
    v10 = [v9 isEqualToString:@"DELETE_EXPOSURE_CHECKS"];

    if (v10)
    {
      v11 = v7;
      if ([v11 type] == &dword_C + 1)
      {
        v12 = +[UIColor redColor];
        textLabel = [v11 textLabel];
        [textLabel setTextColor:v12];

        goto LABEL_7;
      }
    }
  }

  v14 = v7;
LABEL_7:

  return v7;
}

- (void)exportExposureChecks
{
  v3 = (&stru_68 + 48);
  exposureChecks = self->_exposureChecks;
  v5 = ENUILogForCategory();
  v6 = v5;
  if (exposureChecks)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = objc_opt_class();
      v7 = v21;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting export", buf, 0xCu);
    }

    v6 = objc_alloc_init(NSDateFormatter);
    v8 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v6 setLocale:v8];

    [v6 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];
    exportManager = self->_exportManager;
    if (exportManager)
    {
      v10 = exportManager;
      v11 = self->_exportManager;
      self->_exportManager = v10;
    }

    else
    {
      v12 = [ENUIExposureChecksExportManager alloc];
      v13 = self->_exposureChecks;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_BD58;
      v18[3] = &unk_2CE40;
      v3 = &v19;
      v19 = v6;
      v11 = [(NSArray *)v13 enui_map:v18];
      v14 = [(ENUIExposureChecksExportManager *)v12 initWithJSONSerializedExposureChecks:v11];
      v15 = self->_exportManager;
      self->_exportManager = v14;
    }

    v16 = self->_exportManager;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_BD64;
    v17[3] = &unk_2CE90;
    v17[4] = self;
    [(ENUIExposureChecksExportManager *)v16 createExportFileWithCompletion:v17];
    if (!exportManager)
    {
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1BB88(self, v6);
  }
}

- (void)deleteExposureChecks
{
  store = self->_store;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_C204;
  v3[3] = &unk_2CEB8;
  v3[4] = self;
  [(ENUIExposureNotificationsStore *)store resetDataWithFlags:4 completion:v3];
}

@end