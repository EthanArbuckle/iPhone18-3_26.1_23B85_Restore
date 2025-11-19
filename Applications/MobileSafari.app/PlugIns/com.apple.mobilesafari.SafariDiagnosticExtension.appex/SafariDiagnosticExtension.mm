@interface SafariDiagnosticExtension
+ (id)_tabCollection;
+ (id)defaultContentBlockerManager;
+ (id)defaultWebExtensionsController;
+ (id)sharedProfileDelegate;
+ (id)tabGroupManager;
+ (void)initialize;
- (BOOL)_componentIDIsForBookmarksOrTabsComponent:(id)a3;
- (BOOL)_componentIDIsForHistoryComponent:(id)a3;
- (SafariDiagnosticExtension)init;
- (id)_bookmarksAttachmentItem;
- (id)_cloudKitDataAttachment;
- (id)_cloudTabRestorationAttachment;
- (id)_contentBlockerListAttachment;
- (id)_currentLayoutModeAttachment;
- (id)_getAttachmentsWithDisplayNamePattern:(id)a3;
- (id)_historyDataAttachmentItem;
- (id)_migrationEligibilityLogItem;
- (id)_openTabsAttachment;
- (id)_readOnlyTabCollection;
- (id)_tabCollectionDataAttachmentItemHidingSensitiveData:(BOOL)a3;
- (id)_tabsDatabaseAttachmentsItemHidingSensitiveData:(BOOL)a3;
- (id)_temporaryDirectory;
- (id)_webExtensionsListAttachment;
- (id)attachmentsForParameters:(id)a3;
- (void)_addTabGroup:(id)a3 inWindow:(id)a4 toLog:(id)a5;
- (void)_addWindow:(id)a3 withActiveTabGroup:(id)a4 toLog:(id)a5;
- (void)contentBlockerManagerExtensionListDidChange:(id)a3;
- (void)dealloc;
- (void)extensionsControllerExtensionListDidChange:(id)a3;
@end

@implementation SafariDiagnosticExtension

- (id)_readOnlyTabCollection
{
  if (qword_100010B40 != -1)
  {
    sub_1000059E4();
  }

  v3 = qword_100010B38;

  return v3;
}

+ (id)_tabCollection
{
  if (qword_100010B50 != -1)
  {
    sub_1000059F8();
  }

  v3 = qword_100010B48;

  return v3;
}

+ (id)tabGroupManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000014D8;
  block[3] = &unk_10000C390;
  block[4] = a1;
  if (qword_100010B60 != -1)
  {
    dispatch_once(&qword_100010B60, block);
  }

  v2 = qword_100010B58;

  return v2;
}

+ (id)sharedProfileDelegate
{
  if (qword_100010B70 != -1)
  {
    sub_100005A0C();
  }

  v3 = qword_100010B68;

  return v3;
}

+ (id)defaultWebExtensionsController
{
  if (qword_100010B80 != -1)
  {
    sub_100005A20();
  }

  v3 = qword_100010B78;

  return v3;
}

+ (id)defaultContentBlockerManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001740;
  block[3] = &unk_10000C390;
  block[4] = a1;
  if (qword_100010B90 != -1)
  {
    dispatch_once(&qword_100010B90, block);
  }

  v2 = qword_100010B88;

  return v2;
}

+ (void)initialize
{
  v5 = _SFSafariContainerPath();
  v2 = v5;
  setenv("HOME", [v5 fileSystemRepresentation], 1);
  v3 = v5;
  setenv("CFFIXED_USER_HOME", [v5 fileSystemRepresentation], 1);
  v4 = _SFSafariTemporaryDirectoryPath();
  setenv("TMPDIR", [v4 fileSystemRepresentation], 1);
}

- (SafariDiagnosticExtension)init
{
  v13.receiver = self;
  v13.super_class = SafariDiagnosticExtension;
  v2 = [(SafariDiagnosticExtension *)&v13 init];
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001970;
    block[3] = &unk_10000C3F8;
    v4 = v2;
    v12 = v4;
    dispatch_sync(&_dispatch_main_q, block);
    v5 = dispatch_queue_create("com.apple.MobileSafari.SafariDiagnosticExtension.DatabaseQueue", 0);
    databaseQueue = v4->_databaseQueue;
    v4->_databaseQueue = v5;

    v7 = objc_alloc_init(WBSHistoryConnectionProxy);
    historyConnection = v4->_historyConnection;
    v4->_historyConnection = v7;

    v9 = v4;
  }

  return v3;
}

- (BOOL)_componentIDIsForHistoryComponent:(id)a3
{
  v3 = a3;
  v4 = +[WBSInternalFeedbackRadarComponent safariHistoryModelAll];
  v5 = [v4 identifier];
  if ([v3 isEqualToString:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = +[WBSInternalFeedbackRadarComponent safariHistoryUIIOS];
    v8 = [v7 identifier];
    if ([v3 isEqualToString:v8])
    {
      v6 = 1;
    }

    else
    {
      v9 = +[WBSInternalFeedbackRadarComponent safariHistoryUIMacOS];
      v10 = [v9 identifier];
      if ([v3 isEqualToString:v10])
      {
        v6 = 1;
      }

      else
      {
        v11 = +[WBSInternalFeedbackRadarComponent safariIOS];
        v12 = [v11 identifier];
        v6 = [v3 isEqualToString:v12];
      }
    }
  }

  return v6;
}

- (BOOL)_componentIDIsForBookmarksOrTabsComponent:(id)a3
{
  v3 = a3;
  v4 = +[WBSInternalFeedbackRadarComponent safariBookmarksModelAll];
  v5 = [v4 identifier];
  if ([v3 isEqualToString:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = +[WBSInternalFeedbackRadarComponent safariBookmarksModelIOS];
    v8 = [v7 identifier];
    if ([v3 isEqualToString:v8])
    {
      v6 = 1;
    }

    else
    {
      v9 = +[WBSInternalFeedbackRadarComponent safariBookmarksModelMacOS];
      v10 = [v9 identifier];
      if ([v3 isEqualToString:v10])
      {
        v6 = 1;
      }

      else
      {
        v11 = +[WBSInternalFeedbackRadarComponent safariBookmarksUIIOS];
        v12 = [v11 identifier];
        if ([v3 isEqualToString:v12])
        {
          v6 = 1;
        }

        else
        {
          v29 = +[WBSInternalFeedbackRadarComponent safariBookmarksUIMacOS];
          v28 = [v29 identifier];
          if ([v3 isEqualToString:?])
          {
            v6 = 1;
          }

          else
          {
            v27 = +[WBSInternalFeedbackRadarComponent safariICloudTabsAll];
            v26 = [v27 identifier];
            if ([v3 isEqualToString:?])
            {
              v6 = 1;
            }

            else
            {
              v25 = +[WBSInternalFeedbackRadarComponent safariICloudTabsIOS];
              v24 = [v25 identifier];
              if ([v3 isEqualToString:?])
              {
                v6 = 1;
              }

              else
              {
                v23 = +[WBSInternalFeedbackRadarComponent safariICloudTabsMacOS];
                v22 = [v23 identifier];
                if ([v3 isEqualToString:?])
                {
                  v6 = 1;
                }

                else
                {
                  v21 = +[WBSInternalFeedbackRadarComponent safariTabsAll];
                  v20 = [v21 identifier];
                  if ([v3 isEqualToString:?])
                  {
                    v6 = 1;
                  }

                  else
                  {
                    v19 = +[WBSInternalFeedbackRadarComponent safariTabsIOS];
                    v18 = [v19 identifier];
                    if ([v3 isEqualToString:?])
                    {
                      v6 = 1;
                    }

                    else
                    {
                      v17 = +[WBSInternalFeedbackRadarComponent safariTabsMacOS];
                      v16 = [v17 identifier];
                      if ([v3 isEqualToString:?])
                      {
                        v6 = 1;
                      }

                      else
                      {
                        v15 = +[WBSInternalFeedbackRadarComponent safariIOS];
                        v14 = [v15 identifier];
                        v6 = [v3 isEqualToString:v14];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

- (id)attachmentsForParameters:(id)a3
{
  v4 = a3;
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  v5 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting to gather diagnostic extension attachments", &v26, 2u);
  }

  v6 = [v4 safari_numberForKey:@"componentID"];
  v7 = [v6 stringValue];

  v8 = +[NSMutableArray array];
  if ([(SafariDiagnosticExtension *)self _componentIDIsForBookmarksOrTabsComponent:v7])
  {
    v9 = [v4 safari_BOOLForKey:@"DEExtensionAttachmentsParamConsentProvidedKey"];
    if (v9)
    {
      v10 = [(SafariDiagnosticExtension *)self _openTabsAttachment];
      if (v10)
      {
        [v8 addObject:v10];
      }

      if (+[WBSFeatureAvailability isInternalInstall])
      {
        v11 = [(SafariDiagnosticExtension *)self _cloudKitDataAttachment];
        [v8 safari_addObjectUnlessNil:v11];
      }
    }

    v12 = [(SafariDiagnosticExtension *)self _tabsDatabaseAttachmentsItemHidingSensitiveData:v9 ^ 1];
    [v8 safari_addObjectsFromArrayUnlessNil:v12];

    v13 = [(SafariDiagnosticExtension *)self _tabCollectionDataAttachmentItemHidingSensitiveData:v9 ^ 1];
    [v8 safari_addObjectUnlessNil:v13];

    v14 = [(SafariDiagnosticExtension *)self _bookmarksAttachmentItem];
    if (v14)
    {
      [v8 addObject:v14];
    }

    v15 = [(SafariDiagnosticExtension *)self _migrationEligibilityLogItem];
    if (v15)
    {
      [v8 addObject:v15];
    }
  }

  if (+[WBSFeatureAvailability isInternalInstall]&& [(SafariDiagnosticExtension *)self _componentIDIsForHistoryComponent:v7])
  {
    v16 = [(SafariDiagnosticExtension *)self _historyDataAttachmentItem];
    [v8 safari_addObjectsFromArrayUnlessNil:v16];
  }

  v17 = [(SafariDiagnosticExtension *)self _contentBlockerListAttachment];
  if (v17)
  {
    [v8 addObject:v17];
  }

  v18 = [(SafariDiagnosticExtension *)self _webExtensionsListAttachment];
  if (v18)
  {
    [v8 addObject:v18];
  }

  v19 = [(SafariDiagnosticExtension *)self _currentLayoutModeAttachment];
  [v8 safari_addObjectUnlessNil:v19];
  v20 = [(SafariDiagnosticExtension *)self _getAttachmentsWithDisplayNamePattern:@"com\\.apple\\.WebKit.*"];
  [v8 addObjectsFromArray:v20];

  v21 = [(SafariDiagnosticExtension *)self _cloudTabRestorationAttachment];
  [v8 safari_addObjectUnlessNil:v21];

  if (qword_100010B30 != -1)
  {
    sub_100005A48();
  }

  v22 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    v24 = [v8 count];
    v26 = 134217984;
    v27 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Finished gathering %lu diagnostic extension attachments", &v26, 0xCu);
  }

  return v8;
}

- (id)_currentLayoutModeAttachment
{
  if (_SFDeviceIsPad())
  {
    v3 = +[NSUserDefaults safari_browserDefaults];
    v4 = [v3 safari_enableStandaloneTabBar];

    v5 = @"Compact";
    if (v4)
    {
      v5 = @"Separate";
    }

    [NSString stringWithFormat:@"Current Tab Bar Layout: %@", v5];
  }

  else
  {
    v6 = +[SFFeatureManager sharedFeatureManager];
    v7 = [v6 preferredCapsuleLayoutStyle];

    if ((v7 - 1) > 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(&off_10000C550 + (v7 - 1));
    }

    [NSString stringWithFormat:@"Current Capsule Layout: %@", v8];
  }
  v9 = ;
  v10 = +[NSDate now];
  v11 = [v10 safari_filenameFormattedString];

  v12 = [(SafariDiagnosticExtension *)self _temporaryDirectory];
  v13 = [NSString stringWithFormat:@"Safari Current Layout State_%@.log", v11];
  v14 = [v12 stringByAppendingPathComponent:v13];

  v19 = 0;
  LODWORD(v13) = [v9 writeToFile:v14 atomically:1 encoding:4 error:&v19];
  v15 = v19;
  v16 = v15;
  if (!v13 || v15)
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_ERROR))
    {
      sub_100005A70();
    }

    v17 = 0;
  }

  else
  {
    v17 = [DEAttachmentItem attachmentWithPath:v14];
    [v17 setDeleteOnAttach:&__kCFBooleanTrue];
  }

  return v17;
}

- (void)_addTabGroup:(id)a3 inWindow:(id)a4 toLog:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 uuid];
  v11 = [v8 activeTabUUIDForTabGroupWithUUID:v10];

  v12 = [v7 tabWithUUID:v11];
  v13 = [v7 title];
  [v9 appendFormat:@"%@\n", v13];

  v14 = [v7 tabs];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000025EC;
  v19[3] = &unk_10000C420;
  v20 = v7;
  v21 = v12;
  v22 = v8;
  v23 = v9;
  v15 = v9;
  v16 = v8;
  v17 = v12;
  v18 = v7;
  [v14 enumerateObjectsUsingBlock:v19];
}

- (void)_addWindow:(id)a3 withActiveTabGroup:(id)a4 toLog:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v15 uuid];
  [v9 appendFormat:@"Browser Window : %@\n\n", v10];
  if (+[WBSFeatureAvailability isSafariProfilesEnabled])
  {
    v11 = [v8 profileIdentifier];
    [v9 appendFormat:@"Active Profile: %@\n\n", v11];
  }

  v12 = [v15 localTabGroup];
  [(SafariDiagnosticExtension *)self _addTabGroup:v12 inWindow:v15 toLog:v9];

  v13 = [v15 localTabGroup];
  v14 = WBSIsEqual();

  if ((v14 & 1) == 0)
  {
    [v9 appendString:@"\n"];
    [(SafariDiagnosticExtension *)self _addTabGroup:v8 inWindow:v15 toLog:v9];
  }

  [v9 appendString:@"\n\n"];
}

- (id)_openTabsAttachment
{
  if (+[WBSFeatureAvailability isSafariProfilesEnabled])
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A34();
    }

    v2 = qword_100010B28;
    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v3 = "Starting to gather open tabs, tab groups, and profiles";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v3, buf, 2u);
    }
  }

  else
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A34();
    }

    v2 = qword_100010B28;
    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v3 = "Starting to gather open tabs and tab groups";
      goto LABEL_10;
    }
  }

  v4 = objc_alloc_init(WBReadonlyTabCollection);
  v5 = [v4 windowStates];
  if ([v5 count])
  {
    v36 = objc_alloc_init(NSMutableString);
    v6 = +[NSDate now];
    v7 = [v6 safari_filenameFormattedString];

    v8 = [(SafariDiagnosticExtension *)self _temporaryDirectory];
    v30 = v7;
    v9 = [NSString stringWithFormat:@"Safari URLs for All Tabs_%@.log", v7];
    v29 = [v8 stringByAppendingPathComponent:v9];

    v32 = v4;
    v34 = [v4 allNamedTabGroupsUnsorted];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v31 = v5;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v40 + 1) + 8 * i);
          v15 = [v14 activeTabGroupUUID];
          v16 = [v14 localTabGroup];
          v45[0] = v16;
          v17 = [v14 privateTabGroup];
          v45[1] = v17;
          v18 = [NSArray arrayWithObjects:v45 count:2];
          v19 = [v34 arrayByAddingObjectsFromArray:v18];

          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_100002DD4;
          v38[3] = &unk_10000C448;
          v39 = v15;
          v20 = v15;
          v21 = [v19 safari_firstObjectPassingTest:v38];
          [(SafariDiagnosticExtension *)self _addWindow:v14 withActiveTabGroup:v21 toLog:v36];
        }

        v11 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v11);
    }

    [v36 appendString:@"\n"];
    v37 = 0;
    v22 = [v36 writeToFile:v29 atomically:1 encoding:4 error:&v37];
    v23 = v37;
    if (v22)
    {
      v24 = [DEAttachmentItem attachmentWithPath:v29];
      [v24 setDeleteOnAttach:&__kCFBooleanTrue];
      if (qword_100010B30 != -1)
      {
        sub_100005A48();
      }

      v5 = v31;
      v4 = v32;
      v25 = v30;
      v26 = qword_100010B28;
      if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Finished gathering open tabs", buf, 2u);
      }
    }

    else
    {
      v25 = v30;
      v5 = v31;
      if (qword_100010B30 != -1)
      {
        sub_100005A48();
      }

      v4 = v32;
      if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_ERROR))
      {
        sub_100005B08();
      }

      v24 = 0;
    }
  }

  else
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    v27 = qword_100010B28;
    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "No windows are currently open", buf, 2u);
    }

    v24 = 0;
  }

  return v24;
}

- (void)contentBlockerManagerExtensionListDidChange:(id)a3
{
  v4 = a3;
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  v5 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content Blocker extension list changed", v6, 2u);
  }

  dispatch_semaphore_signal(self->_semaphoreWaitingForChangeInContentBlockers);
}

- (id)_contentBlockerListAttachment
{
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  v3 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting to gather content blockers", buf, 2u);
  }

  v34 = [objc_opt_class() defaultContentBlockerManager];
  v31 = self;
  semaphoreWaitingForChangeInContentBlockers = self->_semaphoreWaitingForChangeInContentBlockers;
  v5 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(semaphoreWaitingForChangeInContentBlockers, v5);
  if (qword_100010B30 != -1)
  {
    sub_100005A48();
  }

  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_DEBUG))
  {
    sub_100005BA0();
  }

  v6 = +[NSMutableArray array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [v34 extensions];
  v7 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v33 = *v37;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        v10 = v6;
        if (*v37 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = [v34 displayNameForExtension:v11];
        v13 = [v11 _plugIn];
        v14 = [v13 identifier];
        v15 = [NSString stringWithFormat:@"%@ (%@)", v12, v14];

        v16 = [v34 extensionIsEnabled:v11];
        v17 = @"disabled:";
        if (v16)
        {
          v17 = @"enabled:";
        }

        v18 = [NSString stringWithFormat:@"%@ %@", v17, v15];
        v6 = v10;
        [v10 addObject:v18];
      }

      v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    v19 = +[NSDate now];
    v20 = [v19 safari_filenameFormattedString];

    v21 = [(SafariDiagnosticExtension *)v31 _temporaryDirectory];
    v22 = [NSString stringWithFormat:@"Safari Content Blockers_%@.log", v20];
    v23 = [v21 stringByAppendingPathComponent:v22];

    if ([v6 count])
    {
      v24 = [v6 componentsJoinedByString:@"\n"];
    }

    else
    {
      v24 = @"No Content Blockers found.";
    }

    v35 = 0;
    v27 = [(__CFString *)v24 writeToFile:v23 atomically:1 encoding:4 error:&v35];
    v28 = v35;
    if (v27)
    {
      v26 = [DEAttachmentItem attachmentWithPath:v23];
      [v26 setDeleteOnAttach:&__kCFBooleanTrue];
      if (qword_100010B30 != -1)
      {
        sub_100005A48();
      }

      v29 = qword_100010B28;
      if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Finished gathering content blockers", buf, 2u);
      }
    }

    else
    {
      if (qword_100010B30 != -1)
      {
        sub_100005A48();
      }

      if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_ERROR))
      {
        sub_100005BD4();
      }

      v26 = 0;
    }
  }

  else
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    v25 = qword_100010B28;
    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "No content blocker extensions found", buf, 2u);
    }

    v26 = 0;
  }

  return v26;
}

- (void)extensionsControllerExtensionListDidChange:(id)a3
{
  v4 = a3;
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  v5 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Web extensions list changed", v6, 2u);
  }

  dispatch_semaphore_signal(self->_semaphoreWaitingForChangeInWebExtensions);
}

- (id)_webExtensionsListAttachment
{
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  v3 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting to gather web extensions", buf, 2u);
  }

  +[NSMutableArray array];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003750;
  block[3] = &unk_10000C470;
  v4 = block[4] = self;
  v19 = v4;
  dispatch_sync(&_dispatch_main_q, block);
  if ([v4 count])
  {
    v5 = +[NSDate now];
    v6 = [v5 safari_filenameFormattedString];

    v7 = [(SafariDiagnosticExtension *)self _temporaryDirectory];
    v8 = [NSString stringWithFormat:@"Safari Web Extensions_%@.log", v6];
    v9 = [v7 stringByAppendingPathComponent:v8];

    v10 = [v4 componentsJoinedByString:@"\n"];
    v17 = 0;
    v11 = [v10 writeToFile:v9 atomically:1 encoding:4 error:&v17];
    v12 = v17;
    if (v11)
    {
      v13 = [DEAttachmentItem attachmentWithPath:v9];
      [v13 setDeleteOnAttach:&__kCFBooleanTrue];
      if (qword_100010B30 != -1)
      {
        sub_100005A48();
      }

      v14 = qword_100010B28;
      if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Finished gathering web extensions", buf, 2u);
      }
    }

    else
    {
      if (qword_100010B30 != -1)
      {
        sub_100005A48();
      }

      if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_ERROR))
      {
        sub_100005C6C();
      }

      v13 = 0;
    }
  }

  else
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    v15 = qword_100010B28;
    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No web extensions found", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)_migrationEligibilityLogItem
{
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  v2 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Starting to gather bookmarks migration diagnostics", buf, 2u);
  }

  v3 = SafariCloudBookmarksMigrationCoordinatorLogsDirectoryURL();
  v4 = +[NSDate now];
  v5 = [v4 safari_filenameFormattedString];

  v6 = [NSString stringWithFormat:@"cloudBookmarksMigrationEligibility_%@.log", v5];
  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:v6];
  v9 = [NSURL fileURLWithPath:v8 isDirectory:0];

  v19 = 0;
  LOBYTE(v8) = [WBSFileLogger collectLogsInDirectory:v3 withName:@"migrationEligibility" intoFile:v9 error:&v19];
  v10 = v19;
  v11 = v10;
  if (v8)
  {
    v12 = [DEAttachmentItem attachmentWithPathURL:v9];
    [v12 setDeleteOnAttach:&__kCFBooleanTrue];
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    v13 = qword_100010B28;
    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Finished gathering bookmarks migration diagnostics", v17, 2u);
    }
  }

  else
  {
    if (v10)
    {
      if (qword_100010B30 != -1)
      {
        sub_100005A48();
      }

      v14 = qword_100010B28;
      if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_ERROR))
      {
        sub_100005D38(v14, v11);
      }
    }

    else
    {
      if (qword_100010B30 != -1)
      {
        sub_100005A48();
      }

      v15 = qword_100010B28;
      if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No migration elibility logs to collect", v18, 2u);
      }
    }

    v12 = 0;
  }

  return v12;
}

- (id)_bookmarksAttachmentItem
{
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  v3 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting to gather bookmarks diagnostics", buf, 2u);
  }

  v4 = +[NSDate now];
  v5 = [v4 safari_filenameFormattedString];

  v6 = [NSString stringWithFormat:@"Bookmarks_Diagnostic_%@.json", v5];
  v7 = [(SafariDiagnosticExtension *)self _temporaryDirectory];
  v8 = [v7 stringByAppendingPathComponent:v6];

  v9 = [@"file://" stringByAppendingString:v8];
  v10 = [NSURL URLWithString:v9];

  v11 = objc_alloc_init(WBSSafariBookmarksSyncAgentProxy);
  v12 = dispatch_semaphore_create(0);
  *buf = 0;
  v28 = buf;
  v29 = 0x3032000000;
  v30 = sub_100004098;
  v31 = sub_1000040A8;
  v32 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000040B0;
  v24[3] = &unk_10000C498;
  v26 = buf;
  v13 = v12;
  v25 = v13;
  [v11 collectDiagnosticsDataWithCompletionHandler:v24];
  if (qword_100010B30 != -1)
  {
    sub_100005A48();
  }

  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_DEBUG))
  {
    sub_100005DD0();
  }

  v14 = dispatch_time(0, 90000000000);
  if (dispatch_semaphore_wait(v13, v14))
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_ERROR))
    {
      sub_100005E04();
    }

LABEL_14:
    v15 = 0;
    goto LABEL_32;
  }

  v16 = *(v28 + 5);
  if (!v16)
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_ERROR))
    {
      sub_100005EA0();
    }

    goto LABEL_14;
  }

  v23 = 0;
  v17 = [v16 writeToURL:v10 options:1 error:&v23];
  v18 = v23;
  if (v17)
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    v19 = qword_100010B28;
    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
    {
      *v33 = 138543362;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Finished writing bookmarks diagnostic data to %{public}@", v33, 0xCu);
    }

    v15 = [DEAttachmentItem attachmentWithPathURL:v10];
    [v15 setDeleteOnAttach:&__kCFBooleanTrue];
  }

  else
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    v20 = qword_100010B28;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [v18 safari_privacyPreservingDescription];
      sub_100005E38(v10, v21, v33, v20);
    }

    v15 = 0;
  }

LABEL_32:
  _Block_object_dispose(buf, 8);

  return v15;
}

- (id)_tabsDatabaseAttachmentsItemHidingSensitiveData:(BOOL)a3
{
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  v4 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = @" with sensitive data removed";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting to gather tabs database diagnostics%@.", buf, 0xCu);
  }

  v5 = +[NSDate now];
  v6 = [v5 safari_filenameFormattedString];

  v7 = [(SafariDiagnosticExtension *)self _temporaryDirectory];
  v8 = [NSString stringWithFormat:@"SafariTabs%@_%@.db", @"_WithoutSensitiveData", v6];
  v9 = [v7 stringByAppendingPathComponent:v8];
  v10 = [NSURL fileURLWithPath:v9];

  v11 = [(SafariDiagnosticExtension *)self _readOnlyTabCollection];
  v26 = 0;
  v12 = [v11 copyTabsDatabase:v10 hidingSensitiveData:1 error:&v26];
  v13 = v26;

  if (v13 || (v12 & 1) == 0)
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    v24 = qword_100010B28;
    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_ERROR))
    {
      sub_100005F08(v24, v13);
    }

    v14 = 0;
  }

  else
  {
    v14 = +[NSMutableArray array];
    v15 = [DEAttachmentItem attachmentWithPathURL:v10];
    [v15 setDeleteOnAttach:?];
    [v14 addObject:v15];
    v16 = [v10 path];
    v17 = [v16 stringByAppendingString:@"-wal"];
    v18 = [NSURL fileURLWithPath:v17];
    v19 = [DEAttachmentItem attachmentWithPathURL:v18];

    [v19 setDeleteOnAttach:&__kCFBooleanTrue];
    [v14 addObject:v19];
    v20 = [v10 path];
    v21 = [v20 stringByAppendingString:@"-shm"];
    v22 = [NSURL fileURLWithPath:v21];
    v23 = [DEAttachmentItem attachmentWithPathURL:v22];

    [v23 setDeleteOnAttach:&__kCFBooleanTrue];
    [v14 addObject:v23];
  }

  return v14;
}

- (id)_tabCollectionDataAttachmentItemHidingSensitiveData:(BOOL)a3
{
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  v4 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = @"without titles and urls";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting to gather tab collection diagnostics %@", buf, 0xCu);
  }

  v5 = [(SafariDiagnosticExtension *)self _readOnlyTabCollection];
  v6 = [v5 tabCollectionDataSummaryLogHidingSensitiveData:1];

  v7 = +[NSDate now];
  v8 = [v7 safari_filenameFormattedString];

  v9 = [(SafariDiagnosticExtension *)self _temporaryDirectory];
  v10 = [NSString stringWithFormat:@"Safari%@ Tabs Database_%@.log", @" Scrubbed", v8];
  v11 = [v9 stringByAppendingPathComponent:v10];

  v16 = 0;
  LOBYTE(v10) = [v6 writeToFile:v11 atomically:1 encoding:4 error:&v16];
  v12 = v16;
  if (v10)
  {
    v13 = [DEAttachmentItem attachmentWithPath:v11];
    [v13 setDeleteOnAttach:&__kCFBooleanTrue];
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    v14 = qword_100010B28;
    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Finished gathering open tabs", buf, 2u);
    }
  }

  else
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_ERROR))
    {
      sub_100005FA0();
    }

    v13 = 0;
  }

  return v13;
}

- (id)_historyDataAttachmentItem
{
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  v2 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Starting to gather history diagnostics", buf, 2u);
  }

  *buf = 0;
  v47 = buf;
  v48 = 0x3032000000;
  v49 = sub_100004098;
  v50 = sub_1000040A8;
  v51 = 0;
  v29 = dispatch_semaphore_create(0);
  v34 = +[NSMutableDictionary dictionary];
  v3 = +[NSDate now];
  v31 = [v3 safari_filenameFormattedString];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = [objc_opt_class() tabGroupManager];
  obj = [v4 allProfileIdentifiers];

  v5 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v5)
  {
    v6 = *v43;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v42 + 1) + 8 * i);
        v9 = [(SafariDiagnosticExtension *)self _temporaryDirectory];
        v10 = [NSString stringWithFormat:@"SafariHistoryWithURLsRedacted_%@_%@.db", v8, v31];
        v11 = [v9 stringByAppendingPathComponent:v10];
        v12 = [NSURL fileURLWithPath:v11];

        v13 = [v12 absoluteString];
        [v34 setObject:v13 forKeyedSubscript:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v5);
  }

  historyConnection = self->_historyConnection;
  v15 = [v34 copy];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100004D2C;
  v39[3] = &unk_10000C4C0;
  v41 = buf;
  dsemaa = v29;
  v40 = dsemaa;
  [(WBSHistoryConnectionProxy *)historyConnection copyAndRedactHistoryDatabasesForAllProfiles:v15 completionHandler:v39];

  if (qword_100010B30 != -1)
  {
    sub_100005A48();
  }

  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_DEBUG))
  {
    sub_100006038();
  }

  v16 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(dsemaa, v16))
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_ERROR))
    {
      sub_10000606C();
    }

LABEL_27:
    v19 = 0;
    goto LABEL_28;
  }

  if (*(v47 + 5))
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    v17 = qword_100010B28;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [*(v47 + 5) safari_privacyPreservingDescription];
      sub_1000060A0(v18, v53, v17);
    }

    goto LABEL_27;
  }

  if (qword_100010B30 != -1)
  {
    sub_100005A48();
  }

  v21 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Finished gathering history", v53, 2u);
  }

  v22 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = [v34 allValues];
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v52 count:16];
  if (v24)
  {
    v25 = *v36;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = [NSURL URLWithString:*(*(&v35 + 1) + 8 * j)];
        v28 = [DEAttachmentItem attachmentWithPathURL:v27];

        [v28 setDeleteOnAttach:&__kCFBooleanTrue];
        [v22 addObject:v28];
      }

      v24 = [v23 countByEnumeratingWithState:&v35 objects:v52 count:16];
    }

    while (v24);
  }

  v19 = [v22 copy];
LABEL_28:

  _Block_object_dispose(buf, 8);

  return v19;
}

- (id)_cloudKitDataAttachment
{
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  v3 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting to gather CloudKit data", buf, 2u);
  }

  v4 = +[NSDate now];
  v5 = [v4 safari_filenameFormattedString];

  v6 = [NSString stringWithFormat:@"CloudKit_data_%@.plist", v5];
  v7 = [(SafariDiagnosticExtension *)self _temporaryDirectory];
  v8 = [v7 stringByAppendingPathComponent:v6];

  v9 = [NSURL fileURLWithPath:v8];
  v10 = objc_alloc_init(WBSSafariBookmarksSyncAgentProxy);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000050A4;
  v16[3] = &unk_10000C4E8;
  v11 = dispatch_semaphore_create(0);
  v17 = v11;
  [v10 dumpCloudKitDataPrintByDates:0 liveOnly:0 printTree:0 printPlist:1 writeToFile:1 atFileURL:v9 completionHandler:v16];
  if (qword_100010B30 != -1)
  {
    sub_100005A48();
  }

  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_DEBUG))
  {
    sub_1000060F8();
  }

  v12 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v11, v12))
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_ERROR))
    {
      sub_10000612C();
    }

    v13 = 0;
  }

  else
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    v14 = qword_100010B28;
    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Finished writing CloudKit data to %{public}@", buf, 0xCu);
    }

    v13 = [DEAttachmentItem attachmentWithPathURL:v9];
    [v13 setDeleteOnAttach:&__kCFBooleanTrue];
  }

  return v13;
}

- (id)_cloudTabRestorationAttachment
{
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  v3 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting to gather CloudTab restoration data", buf, 2u);
  }

  v4 = +[NSDate now];
  v5 = [v4 safari_filenameFormattedString];

  v6 = [(SafariDiagnosticExtension *)self _temporaryDirectory];
  v7 = [NSString stringWithFormat:@"Safari CloudTab restoration_%@.log", v5];
  v8 = [v6 stringByAppendingPathComponent:v7];

  v9 = +[NSUserDefaults safari_browserDefaults];
  v10 = [v9 stringArrayForKey:_SFCloudTabsDeviceUUIDForRestorationDebugSyncLogDefaultsKey];
  v11 = [v10 componentsJoinedByString:@"\n"];

  v17 = 0;
  LOBYTE(v10) = [v11 writeToFile:v8 atomically:1 encoding:4 error:&v17];
  v12 = v17;
  if (v10)
  {
    v13 = [DEAttachmentItem attachmentWithPath:v8];
    [v13 setDeleteOnAttach:&__kCFBooleanTrue];
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    v14 = qword_100010B28;
    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Finished gathering CloudTab restoration data", v16, 2u);
    }
  }

  else
  {
    if (qword_100010B30 != -1)
    {
      sub_100005A48();
    }

    if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_ERROR))
    {
      sub_100006194();
    }

    v13 = 0;
  }

  return v13;
}

- (id)_getAttachmentsWithDisplayNamePattern:(id)a3
{
  v3 = a3;
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  v4 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting to gather crashes with display pattern '%{public}@'", buf, 0xCu);
  }

  v5 = objc_alloc_init(NSMutableArray);
  v6 = [NSRegularExpression regularExpressionWithPattern:v3 options:1 error:0];
  v7 = [NSRegularExpression regularExpressionWithPattern:@"(LowMemory|ExcResource|Sandbox|stacks|log-aggregated).*" options:1 error:0];
  v8 = v6;
  v9 = v7;
  v10 = v5;
  OSAIterateSubmittableLogsWithBlock();
  if (qword_100010B30 != -1)
  {
    sub_100005A48();
  }

  v11 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Finished gathering crashes with known display pattern", buf, 2u);
  }

  v12 = v10;

  return v10;
}

- (id)_temporaryDirectory
{
  if (qword_100010BA0 != -1)
  {
    sub_10000622C();
  }

  v3 = qword_100010B98;

  return v3;
}

- (void)dealloc
{
  v3 = [objc_opt_class() defaultContentBlockerManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SafariDiagnosticExtension;
  [(SafariDiagnosticExtension *)&v4 dealloc];
}

@end