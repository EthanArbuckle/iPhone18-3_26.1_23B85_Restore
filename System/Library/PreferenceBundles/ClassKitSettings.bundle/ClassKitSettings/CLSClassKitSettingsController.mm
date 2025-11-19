@interface CLSClassKitSettingsController
- (CLSClassKitSettingsController)init;
- (id)activeClassKitAppleIDWithSpecifier:(id)a3;
- (id)allowBrowseSync:(id)a3;
- (id)appleIDSpecifier;
- (id)bundleIdentifierForAttachment:(id)a3;
- (id)createStudentSpecifiers;
- (id)createTeacherSpecifiers;
- (id)descriptionForAttachment:(id)a3;
- (id)fileTypeDescriptionForAsset:(id)a3;
- (id)specifierWithContextActivity:(id)a3;
- (id)specifierWithHandoutAssignedItemActivity:(id)a3;
- (id)specifierWithProgressActivity:(id)a3;
- (id)specifiers;
- (void)loadUserProgressActivities;
- (void)setAllowBrowseSync:(id)a3 specifier:(id)a4;
- (void)showMoreTapped:(id)a3;
- (void)showProgressPrivacyInfo:(id)a3;
- (void)viewDidLoad;
@end

@implementation CLSClassKitSettingsController

- (CLSClassKitSettingsController)init
{
  v12.receiver = self;
  v12.super_class = CLSClassKitSettingsController;
  v2 = [(CLSClassKitSettingsController *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    userProgressActivities = v2->_userProgressActivities;
    v2->_userProgressActivities = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    objectIDToContextMap = v2->_objectIDToContextMap;
    v2->_objectIDToContextMap = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    objectIDToAttachmentMap = v2->_objectIDToAttachmentMap;
    v2->_objectIDToAttachmentMap = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    objectIDToAssignedItemMap = v2->_objectIDToAssignedItemMap;
    v2->_objectIDToAssignedItemMap = v9;
  }

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CLSClassKitSettingsController;
  [(CLSClassKitSettingsController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CLASS_PROGRESS_TITLE" value:&stru_C898 table:@"ClassKitSettings"];
  [(CLSClassKitSettingsController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = dispatch_block_create(0, &stru_C5D8);
    objc_initWeak(&location, self);
    v6 = +[CLSDataStore shared];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_24FC;
    v17[3] = &unk_C600;
    objc_copyWeak(&v19, &location);
    v7 = v5;
    v18 = v7;
    [v6 currentUserWithCompletion:v17];

    v8 = dispatch_time(0, 100000000);
    dispatch_block_wait(v7, v8);
    v9 = [(CLSClassKitSettingsController *)self cachedCurrentUser];

    if (v9)
    {
      v10 = [(CLSClassKitSettingsController *)self cachedCurrentUser];
      v11 = [v10 isInstructor];

      if (v11)
      {
        v12 = [(CLSClassKitSettingsController *)self createTeacherSpecifiers];
      }

      else
      {
        v13 = [(CLSClassKitSettingsController *)self cachedCurrentUser];
        v14 = [v13 isStudent];

        if (v14)
        {
          v12 = [(CLSClassKitSettingsController *)self createStudentSpecifiers];
        }

        else
        {
          v12 = &__NSArray0__struct;
        }
      }

      v15 = *&self->PSListController_opaque[v3];
      *&self->PSListController_opaque[v3] = v12;
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)createTeacherSpecifiers
{
  v3 = [[NSMutableArray alloc] initWithCapacity:2];
  v15 = [PSSpecifier groupSpecifierWithID:@"IdentityGroupID"];
  [v3 addObject:v15];
  v4 = [(CLSClassKitSettingsController *)self appleIDSpecifier];
  [v3 addObject:v4];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ALLOW_BROWSE_SYNC_HEADER" value:&stru_C898 table:@"ClassKitSettings"];
  v7 = [PSSpecifier groupSpecifierWithID:@"AllowBrowseSyncGroupID" name:v6];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ALLOW_BROWSE_SYNC_FOOTER" value:&stru_C898 table:@"ClassKitSettings"];
  [v7 setProperty:v9 forKey:PSFooterTextGroupKey];

  [v3 addObject:v7];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ALLOW_BROWSE_SYNC_TITLE" value:&stru_C898 table:@"ClassKitSettings"];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"setAllowBrowseSync:specifier:" get:"allowBrowseSync:" detail:0 cell:6 edit:0];
  [(CLSClassKitSettingsController *)self setAllowBrowseToggleSpecifier:v12];

  v13 = [(CLSClassKitSettingsController *)self allowBrowseToggleSpecifier];
  [v3 addObject:v13];

  return v3;
}

- (id)createStudentSpecifiers
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"STUDENT_ACTIVITY_HEADER" value:&stru_C898 table:@"ClassKitSettings"];
  v5 = [PSSpecifier groupSpecifierWithID:@"StudentProgressGroupID" name:v4];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"STUDENT_ACTIVITY_FOOTER_ABOUT_CLASSKIT_LINK" value:&stru_C898 table:@"ClassKitSettings"];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"STUDENT_ACTIVITY_FOOTER" value:&stru_C898 table:@"ClassKitSettings"];
  v10 = [NSString localizedStringWithFormat:v9, v7];

  v11 = [(CLSClassKitSettingsController *)self cachedCurrentUser];
  v12 = [v11 person];
  if ([v12 isProgressTrackingAllowed])
  {
    v13 = [(CLSClassKitSettingsController *)self cachedCurrentUser];
    v14 = [v13 organizationProgressTrackingAllowed];

    if (v14)
    {
      v15 = v5;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"STUDENT_ACTIVITY_HEADER_OPT_OUT" value:&stru_C898 table:@"ClassKitSettings"];
  v15 = [PSSpecifier groupSpecifierWithID:@"StudentProgressGroupID" name:v17];

  v18 = [(CLSClassKitSettingsController *)self cachedCurrentUser];
  LODWORD(v16) = [v18 organizationProgressTrackingAllowed];

  if (v16)
  {
    v19 = [(CLSClassKitSettingsController *)self cachedCurrentUser];
    v20 = [v19 person];
    v21 = [v20 isProgressTrackingAllowed];

    if (v21)
    {
      goto LABEL_10;
    }

    v22 = @"STUDENT_ACTIVITY_FOOTER_OPT_OUT_STUDENT";
  }

  else
  {
    v22 = @"STUDENT_ACTIVITY_FOOTER_OPT_OUT_ORG";
  }

  v23 = [NSBundle bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:v22 value:&stru_C898 table:@"ClassKitSettings"];
  v25 = [NSString localizedStringWithFormat:v24, v7];

  v10 = v25;
LABEL_10:
  v26 = [v10 rangeOfString:v7];
  v28 = v27;
  v29 = [[NSMutableArray alloc] initWithCapacity:1];
  v30 = [PSSpecifier groupSpecifierWithID:@"IdentityGroupID"];
  [v29 addObject:v30];
  v31 = [(CLSClassKitSettingsController *)self appleIDSpecifier];
  [v29 addObject:v31];
  v47 = v10;
  v48 = v7;
  if (v26 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v15 setProperty:v10 forKey:PSFooterTextGroupKey];
  }

  else
  {
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    [v15 setProperty:v33 forKey:PSFooterCellClassGroupKey];

    [v15 setProperty:v10 forKey:PSFooterHyperlinkViewTitleKey];
    v55.location = v26;
    v55.length = v28;
    v34 = NSStringFromRange(v55);
    [v15 setProperty:v34 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v35 = [NSValue valueWithNonretainedObject:self];
    [v15 setProperty:v35 forKey:PSFooterHyperlinkViewTargetKey];

    v36 = NSStringFromSelector("showProgressPrivacyInfo:");
    [v15 setProperty:v36 forKey:PSFooterHyperlinkViewActionKey];
  }

  [v29 addObject:v15];
  [(CLSClassKitSettingsController *)self loadUserProgressActivities];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v37 = [(CLSClassKitSettingsController *)self userProgressActivities];
  v38 = [v37 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v50;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v50 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = [(CLSClassKitSettingsController *)self specifierWithProgressActivity:*(*(&v49 + 1) + 8 * i)];
        [v29 addObject:v42];
      }

      v39 = [v37 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v39);
  }

  if (![(CLSClassKitSettingsController *)self fetchAllActivities])
  {
    v43 = [NSBundle bundleForClass:objc_opt_class()];
    v44 = [v43 localizedStringForKey:@"Show More" value:&stru_C898 table:@"ClassKitSettings"];
    v45 = [PSSpecifier preferenceSpecifierNamed:v44 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v45 setButtonAction:"showMoreTapped:"];
    [v29 addObject:v45];
  }

  return v29;
}

- (id)appleIDSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"APPLE_ID_FIELD_LABEL" value:&stru_C898 table:@"ClassKitSettings"];

  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:"activeClassKitAppleIDWithSpecifier:" detail:0 cell:2 edit:0];
  [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v5 setProperty:v4 forKey:PSTitleKey];
  [v5 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v5 setButtonAction:"accountButtonTappedWithSpecifier:"];

  return v5;
}

- (void)loadUserProgressActivities
{
  v50 = 0;
  v3 = [CLSQuery queryWithObjectType:objc_opt_class() predicate:0 error:&v50];
  v32 = v50;
  v35 = [NSSortDescriptor sortDescriptorWithKey:@"dateLastModified" ascending:0];
  v52 = v35;
  v4 = [NSArray arrayWithObjects:&v52 count:1];
  [v3 setSortDescriptors:v4];

  if ([(CLSClassKitSettingsController *)self fetchAllActivities])
  {
    v5 = 0;
  }

  else
  {
    v5 = 8;
  }

  [v3 setFetchLimit:v5];
  +[CLSDataStore shared];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_34E8;
  v49[3] = &unk_C628;
  v34 = v49[4] = self;
  v36 = v3;
  [v34 awaitExecuteQuery:v3 completion:v49];
  if (![(CLSClassKitSettingsController *)self fetchAllActivities])
  {
    v6 = [(CLSClassKitSettingsController *)self userProgressActivities];
    v7 = [v6 count];

    if (v7 <= 7)
    {
      [(CLSClassKitSettingsController *)self setFetchAllActivities:1];
    }
  }

  v8 = objc_alloc_init(NSMutableSet);
  v9 = objc_alloc_init(NSMutableSet);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = [(CLSClassKitSettingsController *)self userProgressActivities];
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v45 + 1) + 8 * i);
        v16 = [v15 type];
        v17 = v8;
        if (v16 >= 2)
        {
          if (v16 != &dword_0 + 2)
          {
            continue;
          }

          v17 = v9;
        }

        v18 = [v15 parentObjectID];
        [v17 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v12);
  }

  v19 = [(CLSClassKitSettingsController *)self objectIDToContextMap];
  [v19 removeAllObjects];

  v31 = [NSPredicate predicateWithFormat:@"objectID IN %@", v8];

  v44 = 0;
  v33 = [CLSQuery queryWithObjectType:objc_opt_class() predicate:v31 error:&v44];
  v20 = v44;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_35C8;
  v43[3] = &unk_C650;
  v43[4] = self;
  [v34 awaitExecuteQuery:v33 completion:v43];
  v21 = [(CLSClassKitSettingsController *)self objectIDToAssignedItemMap];

  [v21 removeAllObjects];
  v22 = objc_alloc_init(NSMutableSet);
  v23 = [NSPredicate predicateWithFormat:@"objectID IN %@", v9];
  v42 = 0;
  v24 = [CLSQuery queryWithObjectType:objc_opt_class() predicate:v23 error:&v42];
  v25 = v42;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_3770;
  v39[3] = &unk_C678;
  v40 = v22;
  v41 = self;
  v26 = v22;
  [v34 awaitExecuteQuery:v24 completion:v39];
  v27 = [(CLSClassKitSettingsController *)self objectIDToAttachmentMap];
  [v27 removeAllObjects];

  v28 = [NSPredicate predicateWithFormat:@"objectID IN %@", v26];

  v38 = 0;
  v29 = [CLSQuery queryWithObjectType:objc_opt_class() predicate:v28 error:&v38];
  v30 = v38;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_393C;
  v37[3] = &unk_C650;
  v37[4] = self;
  [v34 awaitExecuteQuery:v29 completion:v37];
}

- (id)specifierWithProgressActivity:(id)a3
{
  v5 = a3;
  v6 = [v5 type];
  if (v6 >= 2)
  {
    if (v6 != &dword_0 + 2)
    {
      goto LABEL_6;
    }

    v7 = [(CLSClassKitSettingsController *)self specifierWithHandoutAssignedItemActivity:v5];
  }

  else
  {
    v7 = [(CLSClassKitSettingsController *)self specifierWithContextActivity:v5];
  }

  v3 = v7;
LABEL_6:

  return v3;
}

- (id)specifierWithContextActivity:(id)a3
{
  v4 = a3;
  v5 = CLSLocalizedNameFromContextType();
  v6 = [(CLSClassKitSettingsController *)self objectIDToContextMap];
  v7 = [v4 parentObjectID];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = 0;
    v10 = &stru_C898;
    goto LABEL_10;
  }

  v9 = [v8 appIdentifier];
  v10 = [v8 title];
  if ([v8 type] != &dword_10 + 1)
  {
    goto LABEL_8;
  }

  v11 = [v8 customTypeName];
  v12 = +[NSCharacterSet whitespaceCharacterSet];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];

  if (![v13 length])
  {

LABEL_8:
    [v8 type];
    v13 = CLSLocalizedNameFromContextType();
    goto LABEL_9;
  }

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_9:

  v5 = v13;
LABEL_10:
  v14 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v14 setProperty:v5 forKey:@"CLSSettingsSpecifierContextType"];
  v15 = [v4 objectID];
  [v14 setProperty:v15 forKey:PSIDKey];

  v16 = [v4 objectID];
  [v14 setProperty:v16 forKey:@"CLSSettingsSpecifierActivityID"];

  v17 = [v4 dateLastModified];
  [v14 setProperty:v17 forKey:@"CLSSettingsSpecifierActivityLastModifiedDate"];

  [v14 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v14 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  [v14 setProperty:v9 forKey:PSLazyIconAppID];

  return v14;
}

- (id)specifierWithHandoutAssignedItemActivity:(id)a3
{
  v4 = a3;
  v5 = [(CLSClassKitSettingsController *)self objectIDToAssignedItemMap];
  v6 = [v4 parentObjectID];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [(CLSClassKitSettingsController *)self objectIDToAttachmentMap];
    v9 = [v7 parentObjectID];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = [v10 title];
      v12 = [(CLSClassKitSettingsController *)self bundleIdentifierForAttachment:v10];
      v13 = [(CLSClassKitSettingsController *)self descriptionForAttachment:v10];
    }

    else
    {
      v11 = [v7 title];
      v12 = [v7 appIdentifier];
      v13 = &stru_C898;
    }
  }

  else
  {
    v12 = 0;
    v13 = &stru_C898;
    v11 = &stru_C898;
  }

  v14 = [PSSpecifier preferenceSpecifierNamed:v11 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v14 setProperty:v13 forKey:@"CLSSettingsSpecifierContextType"];
  v15 = [v4 objectID];
  [v14 setProperty:v15 forKey:PSIDKey];

  v16 = [v4 objectID];
  [v14 setProperty:v16 forKey:@"CLSSettingsSpecifierActivityID"];

  v17 = [v4 dateLastModified];
  [v14 setProperty:v17 forKey:@"CLSSettingsSpecifierActivityLastModifiedDate"];

  [v14 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v14 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  [v14 setProperty:v12 forKey:PSLazyIconAppID];

  return v14;
}

- (id)bundleIdentifierForAttachment:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [(CLSClassKitSettingsController *)self cachedCurrentUser];
  v7 = [v6 person];
  v8 = [v7 objectID];

  if (v5 || !v8)
  {
    if (v5)
    {
      goto LABEL_24;
    }
  }

  else if ([v4 type] == 2)
  {
    v9 = [v4 assetForPerson:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 fileUTType];
      v12 = [v11 identifier];
      v13 = [LSDocumentProxy documentProxyForName:0 type:v12 MIMEType:0];

      v26 = v13;
      v27 = 0;
      v14 = [v13 availableClaimBindingsForMode:0 handlerRank:_LSHandlerRankOwner error:&v27];
      v15 = v27;
      if (v15)
      {
        CLSInitLog();
        v16 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v15;
          _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "CLSClassKitSettingsController failed to query asset claim bindings. Error: %@", buf, 0xCu);
        }
      }

      v17 = [v14 firstObject];
      v18 = [v17 bundleRecord];
      v5 = [v18 bundleIdentifier];

      v25 = [v11 conformsToType:UTTypePDF];
      v19 = [v11 conformsToType:UTTypeHTML];
      LOBYTE(v18) = [v11 conformsToType:UTTypeImage];
      v20 = [v11 conformsToType:UTTypeMovie];

      if ((v18 & 1) != 0 || v20)
      {
        v21 = @"com.apple.mobileslideshow";

        v5 = v21;
      }

      if (!((v5 == 0) | (v25 | v19) & 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v5 = 0;
    }

    v23 = @"com.apple.DocumentsApp";

    v5 = v23;
LABEL_22:

    goto LABEL_24;
  }

  if (![v4 type])
  {
    v22 = &CLSSettingsMobileSafariAppBundleIdentifier;
    goto LABEL_19;
  }

  if ([v4 type] == 5 || objc_msgSend(v4, "type") == 6)
  {
    v22 = &CLSSettingsSchoolworkAppBundleIdentifier;
LABEL_19:
    v5 = *v22;
    goto LABEL_24;
  }

  v5 = 0;
LABEL_24:

  return v5;
}

- (id)descriptionForAttachment:(id)a3
{
  v4 = a3;
  if ([v4 type])
  {
    if ([v4 type] == 2)
    {
      v5 = [(CLSClassKitSettingsController *)self cachedCurrentUser];
      v6 = [v5 person];
      v7 = [v6 objectID];

      if (v7)
      {
        v8 = [v4 assetForPerson:v7];
        if (v8)
        {
          v9 = [(CLSClassKitSettingsController *)self fileTypeDescriptionForAsset:v8];
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_16;
    }

    if ([v4 type] == 5)
    {
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = v10;
      v11 = @"ACTIVITY_EXIT_TICKET";
    }

    else
    {
      if ([v4 type] != 6)
      {
        v9 = 0;
        goto LABEL_17;
      }

      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = v10;
      v11 = @"ACTIVITY_ASSESSMENT";
    }
  }

  else
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = v10;
    v11 = @"STUDENT_ACTIVITY_WEB_LINK";
  }

  v9 = [v10 localizedStringForKey:v11 value:&stru_C898 table:@"ClassKitSettings"];
LABEL_16:

LABEL_17:

  return v9;
}

- (id)fileTypeDescriptionForAsset:(id)a3
{
  v3 = [a3 fileUTType];
  v4 = [v3 localizedDescription];

  return v4;
}

- (id)activeClassKitAppleIDWithSpecifier:(id)a3
{
  v3 = +[CLSDataStore shared];
  v4 = [v3 currentUser];

  v5 = [v4 person];
  v6 = [v5 appleID];

  return v6;
}

- (void)setAllowBrowseSync:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 BOOLValue];
  v9 = +[CLSDataStore shared];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_4768;
  v12[3] = &unk_C6C8;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  [v9 setShouldSyncTeacherBrowsedContexts:v8 completion:v12];
}

- (id)allowBrowseSync:(id)a3
{
  v3 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v4 = dispatch_block_create(0, &stru_C6E8);
  v5 = +[CLSDataStore shared];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_49D0;
  v11[3] = &unk_C710;
  v14 = &v15;
  v6 = v3;
  v12 = v6;
  v7 = v4;
  v13 = v7;
  [v5 shouldSyncTeacherBrowsedContextsWithCompletion:v11];

  v8 = dispatch_time(0, 200000000);
  dispatch_block_wait(v7, v8);
  v9 = [NSNumber numberWithBool:*(v16 + 24)];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)showMoreTapped:(id)a3
{
  [a3 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  if (![(CLSClassKitSettingsController *)self fetchAllActivities])
  {
    [(CLSClassKitSettingsController *)self setFetchAllActivities:1];

    [(CLSClassKitSettingsController *)self reloadSpecifiers];
  }
}

- (void)showProgressPrivacyInfo:(id)a3
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.classkit"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

@end