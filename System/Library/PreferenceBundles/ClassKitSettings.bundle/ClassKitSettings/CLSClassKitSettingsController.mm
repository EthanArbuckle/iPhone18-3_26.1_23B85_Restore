@interface CLSClassKitSettingsController
- (CLSClassKitSettingsController)init;
- (id)activeClassKitAppleIDWithSpecifier:(id)specifier;
- (id)allowBrowseSync:(id)sync;
- (id)appleIDSpecifier;
- (id)bundleIdentifierForAttachment:(id)attachment;
- (id)createStudentSpecifiers;
- (id)createTeacherSpecifiers;
- (id)descriptionForAttachment:(id)attachment;
- (id)fileTypeDescriptionForAsset:(id)asset;
- (id)specifierWithContextActivity:(id)activity;
- (id)specifierWithHandoutAssignedItemActivity:(id)activity;
- (id)specifierWithProgressActivity:(id)activity;
- (id)specifiers;
- (void)loadUserProgressActivities;
- (void)setAllowBrowseSync:(id)sync specifier:(id)specifier;
- (void)showMoreTapped:(id)tapped;
- (void)showProgressPrivacyInfo:(id)info;
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
    cachedCurrentUser = [(CLSClassKitSettingsController *)self cachedCurrentUser];

    if (cachedCurrentUser)
    {
      cachedCurrentUser2 = [(CLSClassKitSettingsController *)self cachedCurrentUser];
      isInstructor = [cachedCurrentUser2 isInstructor];

      if (isInstructor)
      {
        createTeacherSpecifiers = [(CLSClassKitSettingsController *)self createTeacherSpecifiers];
      }

      else
      {
        cachedCurrentUser3 = [(CLSClassKitSettingsController *)self cachedCurrentUser];
        isStudent = [cachedCurrentUser3 isStudent];

        if (isStudent)
        {
          createTeacherSpecifiers = [(CLSClassKitSettingsController *)self createStudentSpecifiers];
        }

        else
        {
          createTeacherSpecifiers = &__NSArray0__struct;
        }
      }

      v15 = *&self->PSListController_opaque[v3];
      *&self->PSListController_opaque[v3] = createTeacherSpecifiers;
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
  appleIDSpecifier = [(CLSClassKitSettingsController *)self appleIDSpecifier];
  [v3 addObject:appleIDSpecifier];
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

  allowBrowseToggleSpecifier = [(CLSClassKitSettingsController *)self allowBrowseToggleSpecifier];
  [v3 addObject:allowBrowseToggleSpecifier];

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

  cachedCurrentUser = [(CLSClassKitSettingsController *)self cachedCurrentUser];
  person = [cachedCurrentUser person];
  if ([person isProgressTrackingAllowed])
  {
    cachedCurrentUser2 = [(CLSClassKitSettingsController *)self cachedCurrentUser];
    organizationProgressTrackingAllowed = [cachedCurrentUser2 organizationProgressTrackingAllowed];

    if (organizationProgressTrackingAllowed)
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

  cachedCurrentUser3 = [(CLSClassKitSettingsController *)self cachedCurrentUser];
  LODWORD(v16) = [cachedCurrentUser3 organizationProgressTrackingAllowed];

  if (v16)
  {
    cachedCurrentUser4 = [(CLSClassKitSettingsController *)self cachedCurrentUser];
    person2 = [cachedCurrentUser4 person];
    isProgressTrackingAllowed = [person2 isProgressTrackingAllowed];

    if (isProgressTrackingAllowed)
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
  appleIDSpecifier = [(CLSClassKitSettingsController *)self appleIDSpecifier];
  [v29 addObject:appleIDSpecifier];
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
  userProgressActivities = [(CLSClassKitSettingsController *)self userProgressActivities];
  v38 = [userProgressActivities countByEnumeratingWithState:&v49 objects:v53 count:16];
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
          objc_enumerationMutation(userProgressActivities);
        }

        v42 = [(CLSClassKitSettingsController *)self specifierWithProgressActivity:*(*(&v49 + 1) + 8 * i)];
        [v29 addObject:v42];
      }

      v39 = [userProgressActivities countByEnumeratingWithState:&v49 objects:v53 count:16];
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
    userProgressActivities = [(CLSClassKitSettingsController *)self userProgressActivities];
    v7 = [userProgressActivities count];

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
  userProgressActivities2 = [(CLSClassKitSettingsController *)self userProgressActivities];
  v11 = [userProgressActivities2 countByEnumeratingWithState:&v45 objects:v51 count:16];
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
          objc_enumerationMutation(userProgressActivities2);
        }

        v15 = *(*(&v45 + 1) + 8 * i);
        type = [v15 type];
        v17 = v8;
        if (type >= 2)
        {
          if (type != &dword_0 + 2)
          {
            continue;
          }

          v17 = v9;
        }

        parentObjectID = [v15 parentObjectID];
        [v17 addObject:parentObjectID];
      }

      v12 = [userProgressActivities2 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v12);
  }

  objectIDToContextMap = [(CLSClassKitSettingsController *)self objectIDToContextMap];
  [objectIDToContextMap removeAllObjects];

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
  objectIDToAssignedItemMap = [(CLSClassKitSettingsController *)self objectIDToAssignedItemMap];

  [objectIDToAssignedItemMap removeAllObjects];
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
  selfCopy = self;
  v26 = v22;
  [v34 awaitExecuteQuery:v24 completion:v39];
  objectIDToAttachmentMap = [(CLSClassKitSettingsController *)self objectIDToAttachmentMap];
  [objectIDToAttachmentMap removeAllObjects];

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

- (id)specifierWithProgressActivity:(id)activity
{
  activityCopy = activity;
  type = [activityCopy type];
  if (type >= 2)
  {
    if (type != &dword_0 + 2)
    {
      goto LABEL_6;
    }

    v7 = [(CLSClassKitSettingsController *)self specifierWithHandoutAssignedItemActivity:activityCopy];
  }

  else
  {
    v7 = [(CLSClassKitSettingsController *)self specifierWithContextActivity:activityCopy];
  }

  v3 = v7;
LABEL_6:

  return v3;
}

- (id)specifierWithContextActivity:(id)activity
{
  activityCopy = activity;
  v5 = CLSLocalizedNameFromContextType();
  objectIDToContextMap = [(CLSClassKitSettingsController *)self objectIDToContextMap];
  parentObjectID = [activityCopy parentObjectID];
  v8 = [objectIDToContextMap objectForKeyedSubscript:parentObjectID];

  if (!v8)
  {
    appIdentifier = 0;
    title = &stru_C898;
    goto LABEL_10;
  }

  appIdentifier = [v8 appIdentifier];
  title = [v8 title];
  if ([v8 type] != &dword_10 + 1)
  {
    goto LABEL_8;
  }

  customTypeName = [v8 customTypeName];
  v12 = +[NSCharacterSet whitespaceCharacterSet];
  v13 = [customTypeName stringByTrimmingCharactersInSet:v12];

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
  v14 = [PSSpecifier preferenceSpecifierNamed:title target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v14 setProperty:v5 forKey:@"CLSSettingsSpecifierContextType"];
  objectID = [activityCopy objectID];
  [v14 setProperty:objectID forKey:PSIDKey];

  objectID2 = [activityCopy objectID];
  [v14 setProperty:objectID2 forKey:@"CLSSettingsSpecifierActivityID"];

  dateLastModified = [activityCopy dateLastModified];
  [v14 setProperty:dateLastModified forKey:@"CLSSettingsSpecifierActivityLastModifiedDate"];

  [v14 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v14 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  [v14 setProperty:appIdentifier forKey:PSLazyIconAppID];

  return v14;
}

- (id)specifierWithHandoutAssignedItemActivity:(id)activity
{
  activityCopy = activity;
  objectIDToAssignedItemMap = [(CLSClassKitSettingsController *)self objectIDToAssignedItemMap];
  parentObjectID = [activityCopy parentObjectID];
  v7 = [objectIDToAssignedItemMap objectForKeyedSubscript:parentObjectID];

  if (v7)
  {
    objectIDToAttachmentMap = [(CLSClassKitSettingsController *)self objectIDToAttachmentMap];
    parentObjectID2 = [v7 parentObjectID];
    v10 = [objectIDToAttachmentMap objectForKeyedSubscript:parentObjectID2];

    if (v10)
    {
      title = [v10 title];
      appIdentifier = [(CLSClassKitSettingsController *)self bundleIdentifierForAttachment:v10];
      v13 = [(CLSClassKitSettingsController *)self descriptionForAttachment:v10];
    }

    else
    {
      title = [v7 title];
      appIdentifier = [v7 appIdentifier];
      v13 = &stru_C898;
    }
  }

  else
  {
    appIdentifier = 0;
    v13 = &stru_C898;
    title = &stru_C898;
  }

  v14 = [PSSpecifier preferenceSpecifierNamed:title target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v14 setProperty:v13 forKey:@"CLSSettingsSpecifierContextType"];
  objectID = [activityCopy objectID];
  [v14 setProperty:objectID forKey:PSIDKey];

  objectID2 = [activityCopy objectID];
  [v14 setProperty:objectID2 forKey:@"CLSSettingsSpecifierActivityID"];

  dateLastModified = [activityCopy dateLastModified];
  [v14 setProperty:dateLastModified forKey:@"CLSSettingsSpecifierActivityLastModifiedDate"];

  [v14 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v14 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  [v14 setProperty:appIdentifier forKey:PSLazyIconAppID];

  return v14;
}

- (id)bundleIdentifierForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  bundleIdentifier = [attachmentCopy bundleIdentifier];
  cachedCurrentUser = [(CLSClassKitSettingsController *)self cachedCurrentUser];
  person = [cachedCurrentUser person];
  objectID = [person objectID];

  if (bundleIdentifier || !objectID)
  {
    if (bundleIdentifier)
    {
      goto LABEL_24;
    }
  }

  else if ([attachmentCopy type] == 2)
  {
    v9 = [attachmentCopy assetForPerson:objectID];
    v10 = v9;
    if (v9)
    {
      fileUTType = [v9 fileUTType];
      identifier = [fileUTType identifier];
      v13 = [LSDocumentProxy documentProxyForName:0 type:identifier MIMEType:0];

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

      firstObject = [v14 firstObject];
      bundleRecord = [firstObject bundleRecord];
      bundleIdentifier = [bundleRecord bundleIdentifier];

      v25 = [fileUTType conformsToType:UTTypePDF];
      v19 = [fileUTType conformsToType:UTTypeHTML];
      LOBYTE(bundleRecord) = [fileUTType conformsToType:UTTypeImage];
      v20 = [fileUTType conformsToType:UTTypeMovie];

      if ((bundleRecord & 1) != 0 || v20)
      {
        v21 = @"com.apple.mobileslideshow";

        bundleIdentifier = v21;
      }

      if (!((bundleIdentifier == 0) | (v25 | v19) & 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      bundleIdentifier = 0;
    }

    v23 = @"com.apple.DocumentsApp";

    bundleIdentifier = v23;
LABEL_22:

    goto LABEL_24;
  }

  if (![attachmentCopy type])
  {
    v22 = &CLSSettingsMobileSafariAppBundleIdentifier;
    goto LABEL_19;
  }

  if ([attachmentCopy type] == 5 || objc_msgSend(attachmentCopy, "type") == 6)
  {
    v22 = &CLSSettingsSchoolworkAppBundleIdentifier;
LABEL_19:
    bundleIdentifier = *v22;
    goto LABEL_24;
  }

  bundleIdentifier = 0;
LABEL_24:

  return bundleIdentifier;
}

- (id)descriptionForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if ([attachmentCopy type])
  {
    if ([attachmentCopy type] == 2)
    {
      cachedCurrentUser = [(CLSClassKitSettingsController *)self cachedCurrentUser];
      person = [cachedCurrentUser person];
      objectID = [person objectID];

      if (objectID)
      {
        v8 = [attachmentCopy assetForPerson:objectID];
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

    if ([attachmentCopy type] == 5)
    {
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      objectID = v10;
      v11 = @"ACTIVITY_EXIT_TICKET";
    }

    else
    {
      if ([attachmentCopy type] != 6)
      {
        v9 = 0;
        goto LABEL_17;
      }

      v10 = [NSBundle bundleForClass:objc_opt_class()];
      objectID = v10;
      v11 = @"ACTIVITY_ASSESSMENT";
    }
  }

  else
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    objectID = v10;
    v11 = @"STUDENT_ACTIVITY_WEB_LINK";
  }

  v9 = [v10 localizedStringForKey:v11 value:&stru_C898 table:@"ClassKitSettings"];
LABEL_16:

LABEL_17:

  return v9;
}

- (id)fileTypeDescriptionForAsset:(id)asset
{
  fileUTType = [asset fileUTType];
  localizedDescription = [fileUTType localizedDescription];

  return localizedDescription;
}

- (id)activeClassKitAppleIDWithSpecifier:(id)specifier
{
  v3 = +[CLSDataStore shared];
  currentUser = [v3 currentUser];

  person = [currentUser person];
  appleID = [person appleID];

  return appleID;
}

- (void)setAllowBrowseSync:(id)sync specifier:(id)specifier
{
  syncCopy = sync;
  specifierCopy = specifier;
  bOOLValue = [syncCopy BOOLValue];
  v9 = +[CLSDataStore shared];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_4768;
  v12[3] = &unk_C6C8;
  v12[4] = self;
  v13 = specifierCopy;
  v14 = syncCopy;
  v10 = syncCopy;
  v11 = specifierCopy;
  [v9 setShouldSyncTeacherBrowsedContexts:bOOLValue completion:v12];
}

- (id)allowBrowseSync:(id)sync
{
  syncCopy = sync;
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
  v6 = syncCopy;
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

- (void)showMoreTapped:(id)tapped
{
  [tapped setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  if (![(CLSClassKitSettingsController *)self fetchAllActivities])
  {
    [(CLSClassKitSettingsController *)self setFetchAllActivities:1];

    [(CLSClassKitSettingsController *)self reloadSpecifiers];
  }
}

- (void)showProgressPrivacyInfo:(id)info
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.classkit"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

@end