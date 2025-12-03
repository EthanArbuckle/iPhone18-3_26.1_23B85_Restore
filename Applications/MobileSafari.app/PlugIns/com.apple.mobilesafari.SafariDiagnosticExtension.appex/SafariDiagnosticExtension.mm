@interface SafariDiagnosticExtension
+ (id)_tabCollection;
+ (id)defaultContentBlockerManager;
+ (id)defaultWebExtensionsController;
+ (id)sharedProfileDelegate;
+ (id)tabGroupManager;
+ (void)initialize;
- (BOOL)_componentIDIsForBookmarksOrTabsComponent:(id)component;
- (BOOL)_componentIDIsForHistoryComponent:(id)component;
- (SafariDiagnosticExtension)init;
- (id)_bookmarksAttachmentItem;
- (id)_cloudKitDataAttachment;
- (id)_cloudTabRestorationAttachment;
- (id)_contentBlockerListAttachment;
- (id)_currentLayoutModeAttachment;
- (id)_getAttachmentsWithDisplayNamePattern:(id)pattern;
- (id)_historyDataAttachmentItem;
- (id)_migrationEligibilityLogItem;
- (id)_openTabsAttachment;
- (id)_readOnlyTabCollection;
- (id)_tabCollectionDataAttachmentItemHidingSensitiveData:(BOOL)data;
- (id)_tabsDatabaseAttachmentsItemHidingSensitiveData:(BOOL)data;
- (id)_temporaryDirectory;
- (id)_webExtensionsListAttachment;
- (id)attachmentsForParameters:(id)parameters;
- (void)_addTabGroup:(id)group inWindow:(id)window toLog:(id)log;
- (void)_addWindow:(id)window withActiveTabGroup:(id)group toLog:(id)log;
- (void)contentBlockerManagerExtensionListDidChange:(id)change;
- (void)dealloc;
- (void)extensionsControllerExtensionListDidChange:(id)change;
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
  block[4] = self;
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
  block[4] = self;
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

- (BOOL)_componentIDIsForHistoryComponent:(id)component
{
  componentCopy = component;
  v4 = +[WBSInternalFeedbackRadarComponent safariHistoryModelAll];
  identifier = [v4 identifier];
  if ([componentCopy isEqualToString:identifier])
  {
    v6 = 1;
  }

  else
  {
    v7 = +[WBSInternalFeedbackRadarComponent safariHistoryUIIOS];
    identifier2 = [v7 identifier];
    if ([componentCopy isEqualToString:identifier2])
    {
      v6 = 1;
    }

    else
    {
      v9 = +[WBSInternalFeedbackRadarComponent safariHistoryUIMacOS];
      identifier3 = [v9 identifier];
      if ([componentCopy isEqualToString:identifier3])
      {
        v6 = 1;
      }

      else
      {
        v11 = +[WBSInternalFeedbackRadarComponent safariIOS];
        identifier4 = [v11 identifier];
        v6 = [componentCopy isEqualToString:identifier4];
      }
    }
  }

  return v6;
}

- (BOOL)_componentIDIsForBookmarksOrTabsComponent:(id)component
{
  componentCopy = component;
  v4 = +[WBSInternalFeedbackRadarComponent safariBookmarksModelAll];
  identifier = [v4 identifier];
  if ([componentCopy isEqualToString:identifier])
  {
    v6 = 1;
  }

  else
  {
    v7 = +[WBSInternalFeedbackRadarComponent safariBookmarksModelIOS];
    identifier2 = [v7 identifier];
    if ([componentCopy isEqualToString:identifier2])
    {
      v6 = 1;
    }

    else
    {
      v9 = +[WBSInternalFeedbackRadarComponent safariBookmarksModelMacOS];
      identifier3 = [v9 identifier];
      if ([componentCopy isEqualToString:identifier3])
      {
        v6 = 1;
      }

      else
      {
        v11 = +[WBSInternalFeedbackRadarComponent safariBookmarksUIIOS];
        identifier4 = [v11 identifier];
        if ([componentCopy isEqualToString:identifier4])
        {
          v6 = 1;
        }

        else
        {
          v29 = +[WBSInternalFeedbackRadarComponent safariBookmarksUIMacOS];
          identifier5 = [v29 identifier];
          if ([componentCopy isEqualToString:?])
          {
            v6 = 1;
          }

          else
          {
            v27 = +[WBSInternalFeedbackRadarComponent safariICloudTabsAll];
            identifier6 = [v27 identifier];
            if ([componentCopy isEqualToString:?])
            {
              v6 = 1;
            }

            else
            {
              v25 = +[WBSInternalFeedbackRadarComponent safariICloudTabsIOS];
              identifier7 = [v25 identifier];
              if ([componentCopy isEqualToString:?])
              {
                v6 = 1;
              }

              else
              {
                v23 = +[WBSInternalFeedbackRadarComponent safariICloudTabsMacOS];
                identifier8 = [v23 identifier];
                if ([componentCopy isEqualToString:?])
                {
                  v6 = 1;
                }

                else
                {
                  v21 = +[WBSInternalFeedbackRadarComponent safariTabsAll];
                  identifier9 = [v21 identifier];
                  if ([componentCopy isEqualToString:?])
                  {
                    v6 = 1;
                  }

                  else
                  {
                    v19 = +[WBSInternalFeedbackRadarComponent safariTabsIOS];
                    identifier10 = [v19 identifier];
                    if ([componentCopy isEqualToString:?])
                    {
                      v6 = 1;
                    }

                    else
                    {
                      v17 = +[WBSInternalFeedbackRadarComponent safariTabsMacOS];
                      identifier11 = [v17 identifier];
                      if ([componentCopy isEqualToString:?])
                      {
                        v6 = 1;
                      }

                      else
                      {
                        v15 = +[WBSInternalFeedbackRadarComponent safariIOS];
                        identifier12 = [v15 identifier];
                        v6 = [componentCopy isEqualToString:identifier12];
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

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
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

  v6 = [parametersCopy safari_numberForKey:@"componentID"];
  stringValue = [v6 stringValue];

  v8 = +[NSMutableArray array];
  if ([(SafariDiagnosticExtension *)self _componentIDIsForBookmarksOrTabsComponent:stringValue])
  {
    v9 = [parametersCopy safari_BOOLForKey:@"DEExtensionAttachmentsParamConsentProvidedKey"];
    if (v9)
    {
      _openTabsAttachment = [(SafariDiagnosticExtension *)self _openTabsAttachment];
      if (_openTabsAttachment)
      {
        [v8 addObject:_openTabsAttachment];
      }

      if (+[WBSFeatureAvailability isInternalInstall])
      {
        _cloudKitDataAttachment = [(SafariDiagnosticExtension *)self _cloudKitDataAttachment];
        [v8 safari_addObjectUnlessNil:_cloudKitDataAttachment];
      }
    }

    v12 = [(SafariDiagnosticExtension *)self _tabsDatabaseAttachmentsItemHidingSensitiveData:v9 ^ 1];
    [v8 safari_addObjectsFromArrayUnlessNil:v12];

    v13 = [(SafariDiagnosticExtension *)self _tabCollectionDataAttachmentItemHidingSensitiveData:v9 ^ 1];
    [v8 safari_addObjectUnlessNil:v13];

    _bookmarksAttachmentItem = [(SafariDiagnosticExtension *)self _bookmarksAttachmentItem];
    if (_bookmarksAttachmentItem)
    {
      [v8 addObject:_bookmarksAttachmentItem];
    }

    _migrationEligibilityLogItem = [(SafariDiagnosticExtension *)self _migrationEligibilityLogItem];
    if (_migrationEligibilityLogItem)
    {
      [v8 addObject:_migrationEligibilityLogItem];
    }
  }

  if (+[WBSFeatureAvailability isInternalInstall]&& [(SafariDiagnosticExtension *)self _componentIDIsForHistoryComponent:stringValue])
  {
    _historyDataAttachmentItem = [(SafariDiagnosticExtension *)self _historyDataAttachmentItem];
    [v8 safari_addObjectsFromArrayUnlessNil:_historyDataAttachmentItem];
  }

  _contentBlockerListAttachment = [(SafariDiagnosticExtension *)self _contentBlockerListAttachment];
  if (_contentBlockerListAttachment)
  {
    [v8 addObject:_contentBlockerListAttachment];
  }

  _webExtensionsListAttachment = [(SafariDiagnosticExtension *)self _webExtensionsListAttachment];
  if (_webExtensionsListAttachment)
  {
    [v8 addObject:_webExtensionsListAttachment];
  }

  _currentLayoutModeAttachment = [(SafariDiagnosticExtension *)self _currentLayoutModeAttachment];
  [v8 safari_addObjectUnlessNil:_currentLayoutModeAttachment];
  v20 = [(SafariDiagnosticExtension *)self _getAttachmentsWithDisplayNamePattern:@"com\\.apple\\.WebKit.*"];
  [v8 addObjectsFromArray:v20];

  _cloudTabRestorationAttachment = [(SafariDiagnosticExtension *)self _cloudTabRestorationAttachment];
  [v8 safari_addObjectUnlessNil:_cloudTabRestorationAttachment];

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
    safari_enableStandaloneTabBar = [v3 safari_enableStandaloneTabBar];

    v5 = @"Compact";
    if (safari_enableStandaloneTabBar)
    {
      v5 = @"Separate";
    }

    [NSString stringWithFormat:@"Current Tab Bar Layout: %@", v5];
  }

  else
  {
    v6 = +[SFFeatureManager sharedFeatureManager];
    preferredCapsuleLayoutStyle = [v6 preferredCapsuleLayoutStyle];

    if ((preferredCapsuleLayoutStyle - 1) > 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(&off_10000C550 + (preferredCapsuleLayoutStyle - 1));
    }

    [NSString stringWithFormat:@"Current Capsule Layout: %@", v8];
  }
  v9 = ;
  v10 = +[NSDate now];
  safari_filenameFormattedString = [v10 safari_filenameFormattedString];

  _temporaryDirectory = [(SafariDiagnosticExtension *)self _temporaryDirectory];
  v13 = [NSString stringWithFormat:@"Safari Current Layout State_%@.log", safari_filenameFormattedString];
  v14 = [_temporaryDirectory stringByAppendingPathComponent:v13];

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

- (void)_addTabGroup:(id)group inWindow:(id)window toLog:(id)log
{
  groupCopy = group;
  windowCopy = window;
  logCopy = log;
  uuid = [groupCopy uuid];
  v11 = [windowCopy activeTabUUIDForTabGroupWithUUID:uuid];

  v12 = [groupCopy tabWithUUID:v11];
  title = [groupCopy title];
  [logCopy appendFormat:@"%@\n", title];

  tabs = [groupCopy tabs];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000025EC;
  v19[3] = &unk_10000C420;
  v20 = groupCopy;
  v21 = v12;
  v22 = windowCopy;
  v23 = logCopy;
  v15 = logCopy;
  v16 = windowCopy;
  v17 = v12;
  v18 = groupCopy;
  [tabs enumerateObjectsUsingBlock:v19];
}

- (void)_addWindow:(id)window withActiveTabGroup:(id)group toLog:(id)log
{
  windowCopy = window;
  groupCopy = group;
  logCopy = log;
  uuid = [windowCopy uuid];
  [logCopy appendFormat:@"Browser Window : %@\n\n", uuid];
  if (+[WBSFeatureAvailability isSafariProfilesEnabled])
  {
    profileIdentifier = [groupCopy profileIdentifier];
    [logCopy appendFormat:@"Active Profile: %@\n\n", profileIdentifier];
  }

  localTabGroup = [windowCopy localTabGroup];
  [(SafariDiagnosticExtension *)self _addTabGroup:localTabGroup inWindow:windowCopy toLog:logCopy];

  localTabGroup2 = [windowCopy localTabGroup];
  v14 = WBSIsEqual();

  if ((v14 & 1) == 0)
  {
    [logCopy appendString:@"\n"];
    [(SafariDiagnosticExtension *)self _addTabGroup:groupCopy inWindow:windowCopy toLog:logCopy];
  }

  [logCopy appendString:@"\n\n"];
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
  windowStates = [v4 windowStates];
  if ([windowStates count])
  {
    v36 = objc_alloc_init(NSMutableString);
    v6 = +[NSDate now];
    safari_filenameFormattedString = [v6 safari_filenameFormattedString];

    _temporaryDirectory = [(SafariDiagnosticExtension *)self _temporaryDirectory];
    v30 = safari_filenameFormattedString;
    v9 = [NSString stringWithFormat:@"Safari URLs for All Tabs_%@.log", safari_filenameFormattedString];
    v29 = [_temporaryDirectory stringByAppendingPathComponent:v9];

    v32 = v4;
    allNamedTabGroupsUnsorted = [v4 allNamedTabGroupsUnsorted];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v31 = windowStates;
    obj = windowStates;
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
          activeTabGroupUUID = [v14 activeTabGroupUUID];
          localTabGroup = [v14 localTabGroup];
          v45[0] = localTabGroup;
          privateTabGroup = [v14 privateTabGroup];
          v45[1] = privateTabGroup;
          v18 = [NSArray arrayWithObjects:v45 count:2];
          v19 = [allNamedTabGroupsUnsorted arrayByAddingObjectsFromArray:v18];

          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_100002DD4;
          v38[3] = &unk_10000C448;
          v39 = activeTabGroupUUID;
          v20 = activeTabGroupUUID;
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

      windowStates = v31;
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
      windowStates = v31;
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

- (void)contentBlockerManagerExtensionListDidChange:(id)change
{
  changeCopy = change;
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

  defaultContentBlockerManager = [objc_opt_class() defaultContentBlockerManager];
  selfCopy = self;
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
  obj = [defaultContentBlockerManager extensions];
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
        v12 = [defaultContentBlockerManager displayNameForExtension:v11];
        _plugIn = [v11 _plugIn];
        identifier = [_plugIn identifier];
        v15 = [NSString stringWithFormat:@"%@ (%@)", v12, identifier];

        v16 = [defaultContentBlockerManager extensionIsEnabled:v11];
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
    safari_filenameFormattedString = [v19 safari_filenameFormattedString];

    _temporaryDirectory = [(SafariDiagnosticExtension *)selfCopy _temporaryDirectory];
    v22 = [NSString stringWithFormat:@"Safari Content Blockers_%@.log", safari_filenameFormattedString];
    v23 = [_temporaryDirectory stringByAppendingPathComponent:v22];

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

- (void)extensionsControllerExtensionListDidChange:(id)change
{
  changeCopy = change;
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
    safari_filenameFormattedString = [v5 safari_filenameFormattedString];

    _temporaryDirectory = [(SafariDiagnosticExtension *)self _temporaryDirectory];
    v8 = [NSString stringWithFormat:@"Safari Web Extensions_%@.log", safari_filenameFormattedString];
    v9 = [_temporaryDirectory stringByAppendingPathComponent:v8];

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
  safari_filenameFormattedString = [v4 safari_filenameFormattedString];

  v6 = [NSString stringWithFormat:@"cloudBookmarksMigrationEligibility_%@.log", safari_filenameFormattedString];
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
  safari_filenameFormattedString = [v4 safari_filenameFormattedString];

  v6 = [NSString stringWithFormat:@"Bookmarks_Diagnostic_%@.json", safari_filenameFormattedString];
  _temporaryDirectory = [(SafariDiagnosticExtension *)self _temporaryDirectory];
  v8 = [_temporaryDirectory stringByAppendingPathComponent:v6];

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
      safari_privacyPreservingDescription = [v18 safari_privacyPreservingDescription];
      sub_100005E38(v10, safari_privacyPreservingDescription, v33, v20);
    }

    v15 = 0;
  }

LABEL_32:
  _Block_object_dispose(buf, 8);

  return v15;
}

- (id)_tabsDatabaseAttachmentsItemHidingSensitiveData:(BOOL)data
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
  safari_filenameFormattedString = [v5 safari_filenameFormattedString];

  _temporaryDirectory = [(SafariDiagnosticExtension *)self _temporaryDirectory];
  v8 = [NSString stringWithFormat:@"SafariTabs%@_%@.db", @"_WithoutSensitiveData", safari_filenameFormattedString];
  v9 = [_temporaryDirectory stringByAppendingPathComponent:v8];
  v10 = [NSURL fileURLWithPath:v9];

  _readOnlyTabCollection = [(SafariDiagnosticExtension *)self _readOnlyTabCollection];
  v26 = 0;
  v12 = [_readOnlyTabCollection copyTabsDatabase:v10 hidingSensitiveData:1 error:&v26];
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
    path = [v10 path];
    v17 = [path stringByAppendingString:@"-wal"];
    v18 = [NSURL fileURLWithPath:v17];
    v19 = [DEAttachmentItem attachmentWithPathURL:v18];

    [v19 setDeleteOnAttach:&__kCFBooleanTrue];
    [v14 addObject:v19];
    path2 = [v10 path];
    v21 = [path2 stringByAppendingString:@"-shm"];
    v22 = [NSURL fileURLWithPath:v21];
    v23 = [DEAttachmentItem attachmentWithPathURL:v22];

    [v23 setDeleteOnAttach:&__kCFBooleanTrue];
    [v14 addObject:v23];
  }

  return v14;
}

- (id)_tabCollectionDataAttachmentItemHidingSensitiveData:(BOOL)data
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

  _readOnlyTabCollection = [(SafariDiagnosticExtension *)self _readOnlyTabCollection];
  v6 = [_readOnlyTabCollection tabCollectionDataSummaryLogHidingSensitiveData:1];

  v7 = +[NSDate now];
  safari_filenameFormattedString = [v7 safari_filenameFormattedString];

  _temporaryDirectory = [(SafariDiagnosticExtension *)self _temporaryDirectory];
  v10 = [NSString stringWithFormat:@"Safari%@ Tabs Database_%@.log", @" Scrubbed", safari_filenameFormattedString];
  v11 = [_temporaryDirectory stringByAppendingPathComponent:v10];

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
  safari_filenameFormattedString = [v3 safari_filenameFormattedString];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  tabGroupManager = [objc_opt_class() tabGroupManager];
  obj = [tabGroupManager allProfileIdentifiers];

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
        _temporaryDirectory = [(SafariDiagnosticExtension *)self _temporaryDirectory];
        v10 = [NSString stringWithFormat:@"SafariHistoryWithURLsRedacted_%@_%@.db", v8, safari_filenameFormattedString];
        v11 = [_temporaryDirectory stringByAppendingPathComponent:v10];
        v12 = [NSURL fileURLWithPath:v11];

        absoluteString = [v12 absoluteString];
        [v34 setObject:absoluteString forKeyedSubscript:v8];
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
      safari_privacyPreservingDescription = [*(v47 + 5) safari_privacyPreservingDescription];
      sub_1000060A0(safari_privacyPreservingDescription, v53, v17);
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
  allValues = [v34 allValues];
  v24 = [allValues countByEnumeratingWithState:&v35 objects:v52 count:16];
  if (v24)
  {
    v25 = *v36;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(allValues);
        }

        v27 = [NSURL URLWithString:*(*(&v35 + 1) + 8 * j)];
        v28 = [DEAttachmentItem attachmentWithPathURL:v27];

        [v28 setDeleteOnAttach:&__kCFBooleanTrue];
        [v22 addObject:v28];
      }

      v24 = [allValues countByEnumeratingWithState:&v35 objects:v52 count:16];
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
  safari_filenameFormattedString = [v4 safari_filenameFormattedString];

  v6 = [NSString stringWithFormat:@"CloudKit_data_%@.plist", safari_filenameFormattedString];
  _temporaryDirectory = [(SafariDiagnosticExtension *)self _temporaryDirectory];
  v8 = [_temporaryDirectory stringByAppendingPathComponent:v6];

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
  safari_filenameFormattedString = [v4 safari_filenameFormattedString];

  _temporaryDirectory = [(SafariDiagnosticExtension *)self _temporaryDirectory];
  v7 = [NSString stringWithFormat:@"Safari CloudTab restoration_%@.log", safari_filenameFormattedString];
  v8 = [_temporaryDirectory stringByAppendingPathComponent:v7];

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

- (id)_getAttachmentsWithDisplayNamePattern:(id)pattern
{
  patternCopy = pattern;
  if (qword_100010B30 != -1)
  {
    sub_100005A34();
  }

  v4 = qword_100010B28;
  if (os_log_type_enabled(qword_100010B28, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v15 = patternCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting to gather crashes with display pattern '%{public}@'", buf, 0xCu);
  }

  v5 = objc_alloc_init(NSMutableArray);
  v6 = [NSRegularExpression regularExpressionWithPattern:patternCopy options:1 error:0];
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
  defaultContentBlockerManager = [objc_opt_class() defaultContentBlockerManager];
  [defaultContentBlockerManager removeObserver:self];

  v4.receiver = self;
  v4.super_class = SafariDiagnosticExtension;
  [(SafariDiagnosticExtension *)&v4 dealloc];
}

@end