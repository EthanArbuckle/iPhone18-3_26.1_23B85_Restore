@interface SensorKitPrivacySettingsController
+ (void)initialize;
- (SensorKitPrivacySettingsController)init;
- (id)appsAndStudiesWhenFirstRunCompleteGroup;
- (id)appsSpecifierGroup;
- (id)authGroupSpecifierForAuthGroup:(id)group;
- (id)collectedDataSpecifiers;
- (id)dataAndAppsSpecifiers;
- (id)dataOptionsSpecifiers;
- (id)firstRunGroup;
- (id)globalSwitchSpecifierGroupSpecifiers;
- (id)isGlobalSwitchOn;
- (id)legacyAppsInstalled;
- (id)legacyAppsSpecifiers;
- (id)pendingAppSpecifiers;
- (id)selectSpecifier:(id)specifier;
- (id)specifierForID:(id)d;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)authorizationStore:(id)store didUpdateAuthorizationsForBundleId:(id)id sensors:(id)sensors;
- (void)dealloc;
- (void)enableSensorKit:(id)kit;
- (void)fetchPendingApp;
- (void)profileSettingsChanged:(id)changed;
- (void)setGlobalSwitch:(id)switch;
- (void)showActionSheet:(id)sheet;
- (void)showSensorKitPrivacyPage;
@end

@implementation SensorKitPrivacySettingsController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_10FF0 = os_log_create("com.apple.SensorKit", "PrivacySettingsController");
  }
}

- (SensorKitPrivacySettingsController)init
{
  v4.receiver = self;
  v4.super_class = SensorKitPrivacySettingsController;
  v2 = [(SensorKitPrivacySettingsController *)&v4 init];
  if (v2)
  {
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"profileSettingsChanged:" object:@"PSProfileConnectionEffectiveSettingsChangedNotification", 0];
    v2->_appsAndStudiesSpecifiers = +[NSMutableSet set];
    v2->_showPendingApp = 1;
    [(SensorKitPrivacySettingsController *)v2 setAuthStore:+[SRAuthorizationStore allSensorsStore]];
    [(SRAuthorizationStore *)[(SensorKitPrivacySettingsController *)v2 authStore] addReaderAuthorizationDelegate:v2];
    [(SRAuthorizationStore *)[(SensorKitPrivacySettingsController *)v2 authStore] addWriterAuthorizationDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(SRAuthorizationStore *)[(SensorKitPrivacySettingsController *)self authStore] removeReaderAuthorizationDelegate:self];
  [(SRAuthorizationStore *)[(SensorKitPrivacySettingsController *)self authStore] removeWriterAuthorizationDelegate:self];
  [(SensorKitPrivacySettingsController *)self setAuthStore:0];

  self->_appsAndStudiesSpecifiers = 0;
  [(SensorKitPrivacySettingsController *)self setFollowUpBundlePath:0];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  v3.receiver = self;
  v3.super_class = SensorKitPrivacySettingsController;
  [(SensorKitPrivacySettingsController *)&v3 dealloc];
}

- (void)fetchPendingApp
{
  v3 = qword_10FF0;
  if (os_log_type_enabled(qword_10FF0, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(location[0]) = 0;
    _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "Looking for a pending app follow up item", location, 2u);
  }

  v4 = objc_alloc_init(SRFollowUp);
  objc_initWeak(location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1460;
  v5[3] = &unk_C308;
  v5[4] = v4;
  objc_copyWeak(&v6, location);
  [v4 pendingFollowUpItemsWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(location);
}

- (id)legacyAppsInstalled
{
  v2 = +[NSSet setWithArray:](NSSet, "setWithArray:", [+[SRAuthorizationClient legacyResearchStudyBundleIDs] sharedInstance];
  legacyResearchStudyEntitlement = [+[SRAuthorizationClient sharedInstance](SRAuthorizationClient legacyResearchStudyEntitlement];
  v4 = [LSApplicationRecord enumeratorWithOptions:0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1728;
  v6[3] = &unk_C330;
  v6[4] = v2;
  v6[5] = legacyResearchStudyEntitlement;
  [v4 setFilter:v6];
  return v4;
}

- (id)firstRunGroup
{
  v3 = +[PSSpecifier emptyGroupSpecifier];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"DESCRIPTION_SENSORKIT" value:&stru_C650 table:0];
  v6 = [(NSBundle *)v4 localizedStringForKey:@"LEARN_MORE" value:&stru_C650 table:0];
  v7 = [NSString stringWithFormat:@"%@\n%@\n", v5, v6];
  v8 = objc_opt_class();
  [v3 setObject:NSStringFromClass(v8) forKeyedSubscript:PSFooterCellClassGroupKey];
  [v3 setObject:v7 forKeyedSubscript:PSFooterHyperlinkViewTitleKey];
  v11.location = [(NSString *)v7 rangeOfString:v6];
  [v3 setObject:NSStringFromRange(v11) forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];
  v9 = [NSValue valueWithNonretainedObject:self];
  [v3 setObject:v9 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];
  [v3 setObject:@"showSensorKitPrivacyPage" forKeyedSubscript:PSFooterHyperlinkViewActionKey];
  return v3;
}

- (id)appsAndStudiesWhenFirstRunCompleteGroup
{
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[NSMutableDictionary dictionary];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v12 = sub_1B48;
  v13 = &unk_C358;
  v14 = v5;
  v15 = v4;
  selfCopy = self;
  sub_1B48(v11, [(SRAuthorizationStore *)[(SensorKitPrivacySettingsController *)self authStore] readerAuthorizationBundleIdValues]);
  writerAuthorizationValues = [(SRAuthorizationStore *)[(SensorKitPrivacySettingsController *)self authStore] writerAuthorizationValues];
  v12(v11, writerAuthorizationValues);
  v7 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [v4 allValues]);
  v8 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [v5 allValues]);
  [(NSMutableArray *)v7 sortUsingFunction:sub_1EC4 context:0];
  [(NSMutableArray *)v8 sortUsingFunction:sub_1EC4 context:0];
  [v3 addObject:{-[SensorKitPrivacySettingsController appsSpecifierGroup](self, "appsSpecifierGroup")}];
  if ([(NSMutableSet *)self->_appsAndStudiesSpecifiers count])
  {
    [v3 addObjectsFromArray:v7];
    [v3 addObjectsFromArray:v8];
  }

  else
  {
    v9 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"NO_APPS_OR_STUDIES_AUTHORIZED", &stru_C650, 0];
    [v3 addObject:{+[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v9, self, 0, "valueForSpecifier:", objc_opt_class(), 7, 0)}];
  }

  return [NSArray arrayWithArray:v3];
}

- (id)legacyAppsSpecifiers
{
  v3 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  legacyAppsInstalled = [(SensorKitPrivacySettingsController *)self legacyAppsInstalled];
  v5 = [legacyAppsInstalled countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v5)
  {
    goto LABEL_17;
  }

  v7 = v5;
  v8 = *v27;
  *&v6 = 138543618;
  v25 = v6;
  do
  {
    v9 = 0;
    do
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(legacyAppsInstalled);
      }

      v10 = *(*(&v26 + 1) + 8 * v9);
      v11 = [v10 URL];
      if (!v11)
      {
        v14 = qword_10FF0;
        if (!os_log_type_enabled(qword_10FF0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        applicationIdentifier = [v10 applicationIdentifier];
        *buf = 138543362;
        v31 = applicationIdentifier;
        v16 = v14;
        v17 = "Error getting bundle URL for %{public}@";
        v18 = 12;
        goto LABEL_15;
      }

      v12 = v11;
      v13 = [NSBundle bundleWithURL:v11];
      if (v13)
      {
        [v3 addObject:{+[PSSpecifier sk_appSpecifierForBundle:value:cellType:target:](PSSpecifier, "sk_appSpecifierForBundle:value:cellType:target:", v13, -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"OTHER_APP_AUTHORIZED_STRING", &stru_C650, 0), 4, self)}];
        goto LABEL_12;
      }

      v19 = qword_10FF0;
      if (os_log_type_enabled(qword_10FF0, OS_LOG_TYPE_ERROR))
      {
        applicationIdentifier2 = [v10 applicationIdentifier];
        *buf = v25;
        v31 = applicationIdentifier2;
        v32 = 2114;
        v33 = v12;
        v16 = v19;
        v17 = "Error getting bundle for %{public}@ with URL %{public}@";
        v18 = 22;
LABEL_15:
        _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, v17, buf, v18);
      }

LABEL_12:
      v9 = v9 + 1;
    }

    while (v7 != v9);
    v21 = [legacyAppsInstalled countByEnumeratingWithState:&v26 objects:v34 count:16];
    v7 = v21;
  }

  while (v21);
LABEL_17:
  if (![v3 count])
  {
    return &__NSArray0__struct;
  }

  [v3 sortUsingFunction:sub_1EC4 context:0];
  v22 = +[NSMutableArray array];
  v23 = [PSSpecifier groupSpecifierWithName:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"OTHER_APPS_USING_SENSOR_AND_USAGE_DATA", &stru_C650, 0]];
  [v23 setObject:-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle forKeyedSubscript:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"OTHER_APPS_FOOTER", &stru_C650, 0), PSFooterTextGroupKey}];
  [v23 setObject:@"LEGACY_APPS_GROUP" forKeyedSubscript:PSIDKey];
  [v22 addObject:v23];
  [v22 addObjectsFromArray:v3];
  return [NSArray arrayWithArray:v22];
}

- (id)globalSwitchSpecifierGroupSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = +[PSSpecifier emptyGroupSpecifier];
  v6 = [PSSpecifier preferenceSpecifierNamed:[(NSBundle *)v4 localizedStringForKey:@"GLOBAL_SWITCH" value:&stru_C650 table:0] target:self set:"setGlobalSwitch:" get:"isGlobalSwitchOn" detail:0 cell:6 edit:0];
  [v5 setObject:@"GLOBAL_SWITCH_GROUP" forKeyedSubscript:PSIDKey];
  v7 = [(NSBundle *)v4 localizedStringForKey:@"GLOBAL_SWITCH_FOOTER_DESCRIPTION" value:&stru_C650 table:0];
  v8 = [(NSBundle *)v4 localizedStringForKey:@"GLOBAL_SWITCH_LEARN_MORE" value:&stru_C650 table:0];
  v9 = [NSString stringWithFormat:@"%@ %@\n", v7, v8];
  v10 = objc_opt_class();
  [v5 setObject:NSStringFromClass(v10) forKeyedSubscript:PSFooterCellClassGroupKey];
  [v5 setObject:v9 forKeyedSubscript:PSFooterHyperlinkViewTitleKey];
  v14.location = [(NSString *)v9 rangeOfString:v8];
  [v5 setObject:NSStringFromRange(v14) forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];
  v11 = [NSValue valueWithNonretainedObject:self];
  [v5 setObject:v11 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];
  [v5 setObject:@"showSensorKitPrivacyPage" forKeyedSubscript:PSFooterHyperlinkViewActionKey];
  [v3 addObject:v5];
  [v3 addObject:v6];

  return [NSArray arrayWithArray:v3];
}

- (id)appsSpecifierGroup
{
  v2 = [PSSpecifier groupSpecifierWithName:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"APPS_AND_STUDIES_USING_RESEARCH_SENSORS", &stru_C650, 0]];
  [v2 setObject:@"APP_AND_STUDIES_GROUP" forKeyedSubscript:PSIDKey];
  return v2;
}

- (id)specifiers
{
  if (self->_showPendingApp)
  {
    [(SensorKitPrivacySettingsController *)self fetchPendingApp];
  }

  else
  {
    [(SensorKitPrivacySettingsController *)self setFollowUpBundlePath:0];
  }

  v3 = OBJC_IVAR___PSListController__specifiers;
  result = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!result)
  {
    v5 = +[NSMutableArray array];
    firstRunOnboardingCompleted = [+[SRAuthorizationClient sharedInstance](SRAuthorizationClient firstRunOnboardingCompleted];
    v7 = [-[SensorKitPrivacySettingsController isGlobalSwitchOn](self "isGlobalSwitchOn")];
    if (firstRunOnboardingCompleted)
    {
      v8 = v7;
      [v5 addObjectsFromArray:{-[SensorKitPrivacySettingsController globalSwitchSpecifierGroupSpecifiers](self, "globalSwitchSpecifierGroupSpecifiers")}];
      if (v8)
      {
        [v5 addObjectsFromArray:{-[SensorKitPrivacySettingsController dataAndAppsSpecifiers](self, "dataAndAppsSpecifiers")}];
        [v5 addObjectsFromArray:{-[SensorKitPrivacySettingsController legacyAppsSpecifiers](self, "legacyAppsSpecifiers")}];
        dataOptionsSpecifiers = [(SensorKitPrivacySettingsController *)self dataOptionsSpecifiers];
LABEL_10:
        [v5 addObjectsFromArray:dataOptionsSpecifiers];
        result = [NSArray arrayWithArray:v5];
        *&self->PSListController_opaque[v3] = result;
        return result;
      }
    }

    else
    {
      [v5 addObject:{-[SensorKitPrivacySettingsController firstRunGroup](self, "firstRunGroup")}];
      v10 = [PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"ENABLE_SENSORKIT_BUTTON" target:&stru_C650 set:0] get:self detail:0 cell:0 edit:0, 13, 0];
      [v10 setButtonAction:"enableSensorKit:"];
      [v10 setObject:@"ENABLE_SENSORKIT" forKeyedSubscript:PSIDKey];
      [v5 addObject:v10];
    }

    dataOptionsSpecifiers = [(SensorKitPrivacySettingsController *)self legacyAppsSpecifiers];
    goto LABEL_10;
  }

  return result;
}

- (id)dataAndAppsSpecifiers
{
  v3 = +[NSMutableArray array];
  [(NSMutableSet *)self->_appsAndStudiesSpecifiers removeAllObjects];
  [v3 addObjectsFromArray:{-[SensorKitPrivacySettingsController collectedDataSpecifiers](self, "collectedDataSpecifiers")}];
  [v3 addObjectsFromArray:{-[SensorKitPrivacySettingsController pendingAppSpecifiers](self, "pendingAppSpecifiers")}];
  [v3 addObjectsFromArray:{-[SensorKitPrivacySettingsController appsAndStudiesWhenFirstRunCompleteGroup](self, "appsAndStudiesWhenFirstRunCompleteGroup")}];

  return [NSArray arrayWithArray:v3];
}

- (void)profileSettingsChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [objc_msgSend(userInfo objectForKey:{MCSetParametersForSettingsByTypeParamSenderPID), "intValue"}];
  if (v5 != getpid())
  {

    [(SensorKitPrivacySettingsController *)self reloadSpecifiers];
  }
}

- (void)showSensorKitPrivacyPage
{
  v3 = +[OBPrivacyPresenter srui_presenterForPrivacySplash];
  [v3 setPresentingViewController:self];

  [v3 present];
}

- (void)setGlobalSwitch:(id)switch
{
  if ([switch BOOLValue])
  {
    selfCopy2 = self;
    v5 = 1;
LABEL_13:

    [(SensorKitPrivacySettingsController *)selfCopy2 updateDataCollection:v5];
    return;
  }

  if (![(NSMutableSet *)self->_appsAndStudiesSpecifiers count])
  {
    selfCopy2 = self;
    v5 = 0;
    goto LABEL_13;
  }

  v6 = [(NSMutableSet *)self->_appsAndStudiesSpecifiers count];
  if (v6 == &dword_0 + 1)
  {
    v7 = 83;
  }

  else
  {
    v7 = 84;
  }

  if (v6 == &dword_0 + 1)
  {
    v8 = 85;
  }

  else
  {
    v8 = 86;
  }

  v9 = [UIAlertController alertControllerWithTitle:[NSString srui_localizedStringForCode:v7] message:[NSString srui_localizedStringForCode:v8] preferredStyle:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_2AA0;
  v15[3] = &unk_C380;
  v15[4] = self;
  v16 = 0;
  v10 = [UIAlertAction actionWithTitle:[NSString srui_localizedStringForCode:41] style:2 handler:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_2AB0;
  v14[3] = &unk_C3A8;
  v14[4] = self;
  v11 = [UIAlertAction actionWithTitle:[NSString srui_localizedStringForCode:26] style:0 handler:v14];
  [(UIAlertController *)v9 addAction:v10];
  [(UIAlertController *)v9 addAction:v11];
  if (v9)
  {
    [(SensorKitPrivacySettingsController *)self presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v12 = qword_10FF0;
    if (os_log_type_enabled(qword_10FF0, OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_fault_impl(&dword_0, v12, OS_LOG_TYPE_FAULT, "Failed to create an alert", v13, 2u);
    }
  }
}

- (id)isGlobalSwitchOn
{
  dataCollectionEnabled = [+[SRAuthorizationClient sharedInstance](SRAuthorizationClient dataCollectionEnabled];

  return [NSNumber numberWithBool:dataCollectionEnabled];
}

- (id)collectedDataSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithName:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"COLLECTED_DATA", &stru_C650, 0]];
  [v4 setObject:-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle forKeyedSubscript:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"COLLECTED_DATA_FOOTER", &stru_C650, 0), PSFooterTextGroupKey}];
  [v3 addObject:v4];
  v5 = +[NSMutableArray array];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_2FB4;
  v11 = &unk_C3D0;
  v12 = +[NSMutableSet set];
  v13 = v5;
  selfCopy = self;
  sub_2FB4(v9, [(SRAuthorizationStore *)[(SensorKitPrivacySettingsController *)self authStore] readerAuthorizationBundleIdValues], &stru_C410);
  writerAuthorizationValues = [(SRAuthorizationStore *)[(SensorKitPrivacySettingsController *)self authStore] writerAuthorizationValues];
  v10(v9, writerAuthorizationValues, &stru_C430);
  [v5 sortUsingFunction:sub_1EC4 context:0];
  if ([v5 count])
  {
    [v3 addObjectsFromArray:v5];
  }

  else
  {
    v7 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"NO_DATA_COLLECTION", &stru_C650, 0];
    [v3 addObject:{+[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v7, self, 0, 0, objc_opt_class(), 7, 0)}];
  }

  return [NSArray arrayWithArray:v3];
}

- (id)authGroupSpecifierForAuthGroup:(id)group
{
  v4 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", [group localizedDisplayName], self, 0, 0, 0, 2, 0);
  [v4 setUserInfo:group];
  if (qword_11000 != -1)
  {
    dispatch_once(&qword_11000, &stru_C590);
  }

  platforms = [group platforms];
  if ([platforms count] <= 1)
  {
    v6 = [objc_msgSend(platforms "firstObject")];
  }

  else
  {
    v6 = @"mix";
  }

  v7 = [UIImage imageNamed:v6 inBundle:qword_10FF8];
  [v4 setObject:v7 forKeyedSubscript:PSIconImageKey];
  return v4;
}

- (id)specifierForID:(id)d
{
  if ([d isEqualToString:@"OPEN_ENABLE_SENSORKIT"])
  {
    [(SensorKitPrivacySettingsController *)self enableSensorKit:0];
    return 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SensorKitPrivacySettingsController;
    return [(SensorKitPrivacySettingsController *)&v6 specifierForID:d];
  }
}

- (id)selectSpecifier:(id)specifier
{
  if ([(NSMutableSet *)self->_appsAndStudiesSpecifiers containsObject:?])
  {
    v5 = [[SRAuthorizationCategoryGroupViewController alloc] initWithStyle:1];
    [v5 setAppBundle:{+[NSBundle bundleWithIdentifier:](NSBundle, "bundleWithIdentifier:", objc_msgSend(specifier, "userInfo"))}];
    [v5 setTitle:{objc_msgSend(specifier, "name")}];
    [v5 setAuthStore:{-[SensorKitPrivacySettingsController authStore](self, "authStore")}];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v12 = sub_3660;
    v13 = &unk_C458;
    specifierCopy = specifier;
    [v5 setReaderAuthState:{sub_3660(v11, -[SRAuthorizationStore readerAuthorizationBundleIdValues](-[SensorKitPrivacySettingsController authStore](self, "authStore"), "readerAuthorizationBundleIdValues"), &stru_C478)}];
    writerAuthorizationValues = [(SRAuthorizationStore *)[(SensorKitPrivacySettingsController *)self authStore] writerAuthorizationValues];
    [v5 setWriterAuthState:{v12(v11, writerAuthorizationValues, &stru_C498)}];
    return v5;
  }

  else if ([specifier cellType] == &dword_0 + 2)
  {
    v8 = [[SRResearchDataPerCategoryViewController alloc] initWithStyle:1];
    [v8 setAuthGroup:{objc_msgSend(specifier, "userInfo")}];
    [v8 setTitle:{objc_msgSend(specifier, "name")}];
    [v8 setAuthStore:{-[SensorKitPrivacySettingsController authStore](self, "authStore")}];

    return v8;
  }

  else
  {
    if ([objc_msgSend(specifier "identifier")])
    {
      v9 = [NSBundle bundleWithPath:[(SensorKitPrivacySettingsController *)self followUpBundlePath]];
      if (v9)
      {
        [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
        self->_showPendingApp = 0;
        [(SensorKitPrivacySettingsController *)self reloadSpecifiers];
      }

      else
      {
        v10 = qword_10FF0;
        if (os_log_type_enabled(qword_10FF0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          bundlePath = [0 bundlePath];
          _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Unable to find bundle %{public}@ to launch", buf, 0xCu);
        }
      }
    }

    return 0;
  }
}

- (id)pendingAppSpecifiers
{
  result = [(SensorKitPrivacySettingsController *)self followUpBundlePath];
  if (result)
  {
    v4 = result;
    v5 = [NSBundle bundleWithPath:result];
    if (v5)
    {
      v6 = v5;
      sr_normalizedBundleIdentifier = [(NSBundle *)v5 sr_normalizedBundleIdentifier];
      v12 = 0;
      if ([objc_msgSend(+[LSApplicationRecord sr_applicationRecordWithIdentifier:error:](LSApplicationRecord sr_applicationRecordWithIdentifier:sr_normalizedBundleIdentifier error:{&v12), "applicationState"), "isInstalled"}])
      {
        v8 = +[NSMutableArray array];
        [v8 addObject:{+[PSSpecifier groupSpecifierWithName:](PSSpecifier, "groupSpecifierWithName:", -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"PENDING_SENSORKIT_REQUESTS", &stru_C650, 0))}];
        v9 = [PSSpecifier sk_appSpecifierForBundle:v6 value:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"PENDING_APP_REVIEW" cellType:&stru_C650 target:0], 4, self];
        [v9 setObject:@"PENDING_APP_SPECIFIER" forKeyedSubscript:PSIDKey];
        [v8 addObject:v9];
        return [NSArray arrayWithArray:v8];
      }

      v11 = qword_10FF0;
      if (os_log_type_enabled(qword_10FF0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v14 = sr_normalizedBundleIdentifier;
        v15 = 2114;
        v16 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ no longer installed %{public}@. Removing the pending app review group", buf, 0x16u);
      }
    }

    else
    {
      v10 = qword_10FF0;
      if (os_log_type_enabled(qword_10FF0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v4;
        _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Failed to find bundle for %{public}@", buf, 0xCu);
      }
    }

    return 0;
  }

  return result;
}

- (id)dataOptionsSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  [v4 setObject:@"DATA_OPTIONS_GROUP" forKeyedSubscript:PSIDKey];
  v5 = [NSString srui_localizedStringForCode:16];
  [v4 setObject:v5 forKeyedSubscript:PSFooterTextGroupKey];
  v6 = [PSSpecifier deleteButtonSpecifierWithName:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DELETE_ALL_TITLE" target:&stru_C650 action:0], self, "showActionSheet:"];
  [v6 setObject:&off_CBE0 forKeyedSubscript:PSAlignmentKey];
  [v3 addObject:v4];
  [v3 addObject:v6];

  return [NSArray arrayWithArray:v3];
}

- (void)showActionSheet:(id)sheet
{
  objc_initWeak(&location, self);
  v4 = [UIAlertController alertControllerWithTitle:[NSString srui_localizedStringForCode:22] message:0 preferredStyle:0];
  v5 = [NSString srui_localizedStringForCode:24];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_3CE0;
  v10 = &unk_C4C0;
  objc_copyWeak(&v11, &location);
  v6 = [UIAlertAction actionWithTitle:v5 style:2 handler:&v7];
  [(UIAlertController *)v4 addAction:v6, v7, v8, v9, v10];
  [(UIAlertController *)v4 addAction:[UIAlertAction actionWithTitle:[NSString srui_localizedStringForCode:26] style:1 handler:0]];
  [(SensorKitPrivacySettingsController *)self presentViewController:v4 animated:1 completion:0];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)enableSensorKit:(id)kit
{
  if (![(SensorKitPrivacySettingsController *)self presentingEnableSensorKit])
  {
    [(SensorKitPrivacySettingsController *)self setPresentingEnableSensorKit:1];
    v4 = qword_10FF0;
    if (os_log_type_enabled(qword_10FF0, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Loading First Run", buf, 2u);
    }

    objc_initWeak(buf, self);
    objc_copyWeak(&v5, buf);
    SRRequestFirstRunOnBoarding();
    objc_destroyWeak(&v5);
    objc_destroyWeak(buf);
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = SensorKitPrivacySettingsController;
  v6 = [(SensorKitPrivacySettingsController *)&v9 tableView:view cellForRowAtIndexPath:?];
  v7 = [(SensorKitPrivacySettingsController *)self specifierAtIndexPath:path];
  if ([(SensorKitPrivacySettingsController *)self specifierForID:@"PENDING_APP_SPECIFIER"]== v7)
  {
    [objc_msgSend(v6 "detailTextLabel")];
    [v6 setSelectionStyle:3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v6 "titleLabel")];
    [objc_msgSend(v6 "titleLabel")];
  }

  return v6;
}

- (void)authorizationStore:(id)store didUpdateAuthorizationsForBundleId:(id)id sensors:(id)sensors
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4164;
  v5[3] = &unk_C550;
  objc_copyWeak(&v6, &location);
  dispatch_async(&_dispatch_main_q, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end