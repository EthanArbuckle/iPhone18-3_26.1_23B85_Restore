void sub_100093250()
{
  v0 = os_log_create("com.apple.notes", "Mentions");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1004DACC4();
  }
}

void sub_100093340(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) object];
  v3 = ICDynamicCast();

  if (!v3)
  {
    [ICAssert handleFailedAssertWithCondition:"uuid" functionName:"[ICAppDelegate mentionNotificationDidSend:]_block_invoke" simulateCrash:1 showAlert:0 format:@"Notification did not contain a mention UUID"];
  }

  objc_opt_class();
  v4 = [*(a1 + 40) backgroundTasks];
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = ICDynamicCast();

  if (v6)
  {
    v7 = +[UIApplication sharedApplication];
    [v7 endBackgroundTask:{objc_msgSend(v6, "unsignedIntegerValue")}];

    v8 = [*(a1 + 40) backgroundTasks];
    [v8 removeObjectForKey:v3];

    v9 = os_log_create("com.apple.notes", "Mentions");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DAD3C();
    }
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Mentions");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1004DADAC();
    }
  }
}

void sub_100093638(id a1)
{
  v1 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Timed out waiting for database-locking operation to finish", v2, 2u);
  }
}

void sub_100093A4C(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) name];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Timed out waiting for context %@ to save in background", &v4, 0xCu);
  }
}

void sub_100093E40(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Timed out waiting for note context %p to set up Core Data stack", &v4, 0xCu);
  }
}

BOOL sub_100094334(id a1, ICAttachment *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(ICAttachment *)a2 note:a3];
  v5 = [v4 account];
  v6 = v5 == 0;

  return v6;
}

void sub_100094698(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DAF5C();
  }

  v5 = [ICAccount cloudKitAccountInContext:v3];
  if (*(a1 + 40) >= 1)
  {
    v6 = 0;
    do
    {
      [*(a1 + 32) submitChangePasswordEventForModernAccount:v5 isReset:*(a1 + 48)];
      ++v6;
    }

    while (v6 < *(a1 + 40));
  }

  [ICInstrumentationUtilities clearRecentPasswordChangeCountAsReset:*(a1 + 48)];
}

void sub_10009480C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[UIApplication sharedApplication];
  v18 = [v4 beginBackgroundTaskWithName:@"Submit Password Change Mode Event" expirationHandler:&stru_100647848];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = v3;
  obj = [ICAccount allActiveAccountsInContext:v3];
  v22 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v22)
  {
    v21 = *v25;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v7 = [ICInstrumentationUtilities recentPasswordModesForAccount:v6];
        v8 = objc_alloc_init(ICInstrumentationUtilitiesRecentPasswordMode);
        v9 = [v6 accountData];
        [v8 setLockedNotesMode:{objc_msgSend(v9, "lockedNotesMode")}];

        v23 = v8;
        v10 = [v7 arrayByAddingObject:v8];

        if ([v10 count] >= 2)
        {
          v11 = 1;
          do
          {
            v12 = [v10 objectAtIndexedSubscript:v11 - 1];
            v13 = [v10 objectAtIndexedSubscript:v11];
            v14 = os_log_create("com.apple.notes", "Analytics");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              [v12 lockedNotesMode];
              v15 = NSStringFromAccountDataLockedNotesMode();
              [v13 lockedNotesMode];
              v16 = NSStringFromAccountDataLockedNotesMode();
              *buf = 138412546;
              v29 = v15;
              v30 = 2112;
              v31 = v16;
              _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Instrumenting password mode change from mode %@ to mode %@", buf, 0x16u);
            }

            [*(a1 + 32) submitChangePasswordModeEventForAccount:v6 contextPath:objc_msgSend(v12 fromMode:"contextPath") toMode:{objc_msgSend(v12, "lockedNotesMode"), objc_msgSend(v13, "lockedNotesMode")}];
            ++v11;
          }

          while (v11 < [v10 count]);
        }

        [ICInstrumentationUtilities clearRecentPasswordModesForAccount:v6];
      }

      v22 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v22);
  }

  v17 = +[UIApplication sharedApplication];
  [v17 endBackgroundTask:v18];
}

void sub_100094B54(id a1)
{
  v1 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Timed out waiting for sumbit password change to finish", v2, 2u);
  }
}

id sub_100094C8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 window];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    objc_opt_class();
    v7 = [v3 activeEditorController];
    v8 = ICDynamicCast();

    v6 = [v8 isShowingAudioInspector];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10009501C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000950AC;
  v5[3] = &unk_1006469F0;
  v5[4] = v3;
  return [v3 checkIfHasSharedNotesOrFolders:v5];
}

uint64_t sub_1000950AC(uint64_t a1, int a2)
{
  if (a2)
  {
    return performBlockOnMainThread();
  }

  return result;
}

id sub_100095124(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DAFD4();
  }

  return [*(a1 + 32) requestAuthorizationToShowUserNotificationsIfNecessary];
}

void sub_100095198(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) viewControllerManagers];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          sub_1004DB010(&buf, v17, v8);
        }

        v9 = [v7 noteEditorViewController];
        [v9 setNote:0];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v10 = objc_alloc_init(ICDebugSpinner);
  [(ICDebugSpinner *)v10 show];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100095388;
  v13[3] = &unk_100645BA0;
  v11 = *(a1 + 32);
  v14 = v10;
  v15 = v11;
  v12 = v10;
  [ICDebugUtilities startFreshWithCompletionHandler:v13];
}

id sub_100095388(uint64_t a1)
{
  [*(a1 + 32) hide];
  v2 = *(a1 + 40);

  return [v2 showStartupWithCompletionBlock:0];
}

void sub_1000957E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100095804(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained requestAuthorizationToShowUserNotificationsIfNecessary];
}

void sub_100095914(uint64_t a1)
{
  [ICCloudSyncingObject hasAnySharedObjectInContext:*(a1 + 32)];
  v2 = *(a1 + 40);
  performBlockOnMainThread();
}

uint64_t sub_1000959B4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void *sub_100096060(void *result)
{
  v3 = result[5];
  if (v3 != 1)
  {
    if (v3)
    {

      return [ICCloudNotificationsController registerForUserNotificationsWithCompletionHandler:0];
    }

    else
    {
      v5[5] = v1;
      v5[6] = v2;
      v4 = result[4];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100096100;
      v5[3] = &unk_100645E30;
      v5[4] = v4;
      return [v4 showAllowNotificationsWarmingSheet:v5];
    }
  }

  return result;
}

id sub_100096100(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10009617C;
  v2[3] = &unk_100645E30;
  v2[4] = *(a1 + 32);
  return [ICCloudNotificationsController registerForUserNotificationsWithCompletionHandler:v2];
}

id sub_1000961EC(uint64_t a1)
{
  [*(a1 + 32) dismissAllowNotificationsWarmingSheet];
  v2 = *(a1 + 32);

  return [v2 setUserNotificationsAllowed:0];
}

void sub_100096330(uint64_t a1, void *a2)
{
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 authorizationStatus]);
  [*(a1 + 32) setUserNotificationsAllowed:v3];

  v4 = *(a1 + 40);
  performBlockOnMainThread();
}

uint64_t sub_1000963F4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void sub_100096928(uint64_t a1)
{
  v2 = [UIAlertController alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  v3 = *(a1 + 48);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100096B38;
  v18[3] = &unk_100646938;
  v19 = *(a1 + 64);
  v4 = [UIAlertAction actionWithTitle:v3 style:1 handler:v18];
  [v2 addAction:v4];

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100096B4C;
  v16 = &unk_100646938;
  v5 = *(a1 + 56);
  v17 = *(a1 + 64);
  v6 = [UIAlertAction actionWithTitle:v5 style:0 handler:&v13];
  [v2 addAction:{v6, v13, v14, v15, v16}];
  [v2 setPreferredAction:v6];
  objc_opt_class();
  v7 = +[UIApplication sharedApplication];
  v8 = [v7 connectedScenes];
  v9 = [v8 ic_objectPassingTest:&stru_1006479B8];
  v10 = ICDynamicCast();

  v11 = [v10 keyWindow];
  v12 = [v11 rootViewController];
  [v12 presentViewController:v2 animated:1 completion:0];
}

BOOL sub_100096B60(id a1, UIScene *a2, BOOL *a3)
{
  v4 = a2;
  if ([(UIScene *)v4 activationState])
  {
    v5 = [(UIScene *)v4 activationState]== 1;
  }

  else
  {
    v5 = 1;
  }

  *a3 = v5;

  return v5;
}

void sub_1000970B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000970C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000970E0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10009737C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000973B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v2 = [WeakRetained tagSelection];
    v3 = [v2 tagOperator];

    WeakRetained = v8;
    if (v3 != 2)
    {
      v4 = [v8 tagSelection];
      [v4 setTagOperator:2];

      v5 = [v8 tagSelectionDidChange];

      WeakRetained = v8;
      if (v5)
      {
        v6 = [v8 tagSelectionDidChange];
        v7 = [v8 tagSelection];
        (v6)[2](v6, v7);

        WeakRetained = v8;
      }
    }
  }
}

void sub_100097494(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v2 = [WeakRetained tagSelection];
    v3 = [v2 tagOperator];

    WeakRetained = v8;
    if (v3 != 1)
    {
      v4 = [v8 tagSelection];
      [v4 setTagOperator:1];

      v5 = [v8 tagSelectionDidChange];

      WeakRetained = v8;
      if (v5)
      {
        v6 = [v8 tagSelectionDidChange];
        v7 = [v8 tagSelection];
        (v6)[2](v6, v7);

        WeakRetained = v8;
      }
    }
  }
}

void sub_100097A4C(uint64_t a1)
{
  v2 = [*(a1 + 32) upgradeButtonTapHandler];

  if (v2)
  {
    v5 = [*(a1 + 32) upgradeButtonTapHandler];
    v3 = [*(a1 + 32) folderListSectionIdentifier];
    v4 = [v3 accountObjectID];
    v5[2](v5, v4);
  }
}

id sub_100097AF8(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setAccessories:v2];

  v3 = *(a1 + 32);

  return [v3 layoutIfNeeded];
}

id sub_100098898(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:NSFontAttributeName];
  v4 = [v3 copy];

  return v4;
}

void sub_100099618(id a1)
{
  v1 = [[ICRecentlyDeletedHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v2 = qword_1006CB270;
  qword_1006CB270 = v1;
}

ICHashtag *__cdecl sub_100099DF0(id a1, NSManagedObjectID *a2)
{
  v2 = a2;
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];
  v5 = [v4 ic_existingObjectWithID:v2];

  return v5;
}

void sub_100099E70(uint64_t a1)
{
  [*(a1 + 32) activityDidFinish:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) activityType];
    (*(v2 + 16))(v2, 1, v3);
  }
}

void sub_10009A0A0(id a1)
{
  v1 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Update Migration States took too long when moving to the background", v2, 2u);
  }
}

id sub_10009A114()
{
  v41 = objc_alloc_init(ICNoteContextLaunchTask);
  v42[0] = v41;
  v40 = objc_alloc_init(ICPutDeletedNotesInTrashLaunchTask);
  v42[1] = v40;
  v39 = objc_alloc_init(ICFixHiddenICloudAccountLaunchTask);
  v42[2] = v39;
  v38 = objc_alloc_init(ICCleanupTemporaryAssetDirectoryLaunchTask);
  v42[3] = v38;
  v37 = objc_alloc_init(ICResetReplicaIDsAfterBackupRestoreLaunchTask);
  v42[4] = v37;
  v36 = objc_alloc_init(ICRegisterStateHandlersLaunchTask);
  v42[5] = v36;
  v35 = objc_alloc_init(ICUpdateMigrationStatesLaunchTask);
  v42[6] = v35;
  v34 = objc_alloc_init(ICExcludeFromBackupFileAttributesLaunchTask);
  v42[7] = v34;
  v33 = objc_alloc_init(ICFixNotesWithoutFoldersLaunchTask);
  v42[8] = v33;
  v32 = objc_alloc_init(ICFixTombstonesWithoutAccountsLaunchTask);
  v42[9] = v32;
  v31 = objc_alloc_init(ICRegenerateGalleryAttachmentNoteTitlesLaunchTask);
  v42[10] = v31;
  v30 = objc_alloc_init(ICDeleteGalleryAttachmentPNGPreviewImagesLaunchTask);
  v42[11] = v30;
  v29 = objc_alloc_init(ICDeleteMigratedHTMLAccountsLaunchTask);
  v42[12] = v29;
  v28 = objc_alloc_init(ICDeleteOrphanedHTMLNotesLaunchTask);
  v42[13] = v28;
  v27 = objc_alloc_init(ICFixAttachmentMediaInconsistencyLaunchTask);
  v42[14] = v27;
  v26 = objc_alloc_init(ICFixPasswordProtectedNotesInSharedFoldersLaunchTask);
  v42[15] = v26;
  v25 = objc_alloc_init(ICFixMinimumSupportedVersionForSharedFoldersLaunchTask);
  v42[16] = v25;
  v24 = objc_alloc_init(ICMigrateSearchIndexingLaunchTask);
  v42[17] = v24;
  v23 = objc_alloc_init(ICCheckCoreSpotlightClientStateLaunchTask);
  v42[18] = v23;
  v22 = objc_alloc_init(ICReindexEverythingAfterBackupRestoreTask);
  v42[19] = v22;
  v21 = objc_alloc_init(ICReindexEverythingIfNecessaryTask);
  v42[20] = v21;
  v20 = objc_alloc_init(ICRunMiniDeviceSnapshotLaunchTask);
  v42[21] = v20;
  v19 = objc_alloc_init(ICRefreshHashtagStandardizedContentLaunchTask);
  v42[22] = v19;
  v18 = objc_alloc_init(ICDedupeHashtagsLaunchTask);
  v42[23] = v18;
  v17 = objc_alloc_init(ICDeleteCoherenceContextsFromGroupContainerLaunchTask);
  v42[24] = v17;
  v16 = objc_alloc_init(ICDeleteOrphanedAccountDirectoriesFromAppDataContainerLaunchTask);
  v42[25] = v16;
  v15 = objc_alloc_init(ICUpdateDerivedChecklistAttributesLaunchTask);
  v42[26] = v15;
  v14 = objc_alloc_init(ICUpdateInlineDrawingsSectionLaunchTask);
  v42[27] = v14;
  v13 = objc_alloc_init(ICUpdatePaperDocumentScansSectionLaunchTask);
  v42[28] = v13;
  v12 = objc_alloc_init(ICDonateDynamicAppVocabularyLaunchTask);
  v42[29] = v12;
  v0 = objc_alloc_init(ICImportAndDeleteCallRecordingsLaunchTask);
  v42[30] = v0;
  v1 = objc_alloc_init(ICUpdateAccountReferenceInAttachmentsAndMediaLaunchTask);
  v42[31] = v1;
  v2 = objc_alloc_init(ICGenerateWidgetSnippetForFirstTimeLaunchTask);
  v42[32] = v2;
  v3 = objc_alloc_init(ICFixMissingMediaLaunchTask);
  v42[33] = v3;
  v4 = objc_alloc_init(ICFixMissingPaperBundlesLaunchTask);
  v42[34] = v4;
  v5 = [[ICRefetchNoteRecordsLaunchTask alloc] initWithIdentifier:@"Fall2024" modifiedAfterDateString:@"2024-06-01T00:00:00+0000"];
  v42[35] = v5;
  v6 = objc_alloc_init(ICRemoveTemporaryPaperKitBundlesLaunchTask);
  v42[36] = v6;
  v7 = objc_alloc_init(ICRetranscribeAudioAttachmentsIfNeededLaunchTask);
  v42[37] = v7;
  v8 = objc_alloc_init(ICRetranscribeAfterVersionIncrementLaunchTask);
  v42[38] = v8;
  v9 = objc_alloc_init(ICUpdateUserSpecificRecordReferenceActionsLaunchTask);
  v42[39] = v9;
  v11 = [NSArray arrayWithObjects:v42 count:40];

  return v11;
}

void sub_10009A698(uint64_t a1)
{
  v2 = [NSPredicate predicateWithFormat:@"%K == %@", @"typeUTI", ICAttachmentUTTypeGallery];
  [ICAttachment attachmentsMatchingPredicate:v2 context:*(a1 + 32)];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v18 = [obj countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (!v18)
  {
    goto LABEL_25;
  }

  v15 = a1;
  v3 = 0;
  v17 = *v24;
  do
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v24 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v23 + 1) + 8 * i);
      if ([v5 hasAnyPNGPreviewImageFiles])
      {
        v6 = os_log_create("com.apple.notes", "LaunchTask");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          sub_1004DB2B0(v29, v5);
        }

        [v5 deleteAttachmentPreviewImages];
        [v5 purgeAttachmentPreviewImages];
        v3 = 1;
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = [v5 subAttachments];
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v28 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          for (j = 0; j != v9; j = j + 1)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * j);
            if ([v12 hasAnyPNGPreviewImageFiles])
            {
              v13 = os_log_create("com.apple.notes", "LaunchTask");
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                sub_1004DB2B0(v27, v12);
              }

              [v12 deleteAttachmentPreviewImages];
              [v12 purgeAttachmentPreviewImages];
              v3 = 1;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v19 objects:v28 count:16];
        }

        while (v9);
      }
    }

    v18 = [obj countByEnumeratingWithState:&v23 objects:v30 count:16];
  }

  while (v18);
  if (v3)
  {
    [*(v15 + 32) ic_save];
  }

  else
  {
LABEL_25:
    v14 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DB30C(v14);
    }
  }
}

void sub_10009A9B0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

void sub_10009AF0C(uint64_t a1)
{
  v2 = [*(a1 + 32) destinationAccountObjectID];
  v3 = [ICAccount ic_existingObjectWithID:v2 context:*(a1 + 40)];

  if (([v3 isValidObject] & 1) == 0)
  {
    v4 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancelling legacy import operation because the destination account does not exist", v5, 2u);
    }

    [*(a1 + 32) cancel];
  }
}

void sub_10009B1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B1F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009B210(uint64_t a1)
{
  v1 = a1 + 40;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) legacyAccountObjectID];
  v9 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v9];
  v5 = v9;
  v6 = *(*(v1 + 8) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (v5)
  {
    v8 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1004DB394(v1);
    }
  }
}

void sub_10009B554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009B57C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) objectID];
  v3 = [v2 allVisibleNoteObjectIDsForAccountWithObjectID:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10009B924(uint64_t a1)
{
  v2 = +[ICNoteContext sharedContext];
  v3 = [v2 snapshotManagedObjectContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009BA18;
  v6[3] = &unk_100647B50;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  [v5 performBlockAndWait:v6];
}

void sub_10009BA18(uint64_t a1)
{
  v2 = [*(a1 + 32) destinationAccountObjectID];
  v16 = [ICAccount ic_existingObjectWithID:v2 context:*(a1 + 40)];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(a1 + 48);
  v3 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v3)
  {
    v17 = *v39;
    do
    {
      v4 = 0;
      do
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v38 + 1) + 8 * v4);
        v32 = 0;
        v33 = &v32;
        v34 = 0x3032000000;
        v35 = sub_10009B1F8;
        v36 = sub_10009B208;
        v37 = 0;
        v26 = 0;
        v27 = &v26;
        v28 = 0x3032000000;
        v29 = sub_10009B1F8;
        v30 = sub_10009B208;
        v31 = 0;
        v6 = *(a1 + 56);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10009BDC0;
        v21[3] = &unk_100647B28;
        v24 = &v32;
        v22 = v6;
        v23 = v5;
        v25 = &v26;
        [v22 performBlockAndWait:v21];
        if (v33[5])
        {
          v7 = objc_autoreleasePoolPush();
          v8 = [*(a1 + 32) importLegacyFolder:v27[5] toAccount:v16];
          v9 = [*(a1 + 32) importLegacyNote:v33[5] deviceMigrationIdentifier:*(a1 + 64) toFolder:v8];

          objc_autoreleasePoolPop(v7);
        }

        v10 = *(a1 + 56);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10009BE94;
        v19[3] = &unk_100645E30;
        v20 = v10;
        [v20 performBlockAndWait:v19];

        _Block_object_dispose(&v26, 8);
        _Block_object_dispose(&v32, 8);

        v4 = v4 + 1;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v3);
  }

  v11 = *(a1 + 40);
  v18 = 0;
  v12 = [v11 save:&v18];
  v13 = v18;
  if ((v12 & 1) == 0)
  {
    v14 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1004DB4C8();
    }

    [*(a1 + 32) cancel];
  }
}

void sub_10009BD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_10009BDC0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v12 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v12];
  v5 = v12;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (v5)
  {
    v8 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1004DB530();
    }
  }

  v9 = [*(*(a1[6] + 8) + 40) folder];
  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_10009BF00(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v3 = @"MigrationBatchSize";
  v4 = &off_10066DED8;
  v2 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  [v1 registerDefaults:v2];
}

void sub_10009CC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose((v64 - 224), 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose((v64 - 176), 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

void sub_10009CD40(uint64_t a1)
{
  v2 = [*(a1 + 32) htmlString];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) identifier];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id sub_10009CDAC(uint64_t a1)
{
  v2 = [*(a1 + 32) creationDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) modificationDate];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) title];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  result = [*(a1 + 32) isPlainText];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

void sub_10009CE40(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) attachments];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) objectID];
        [v7 addObject:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_10009CF58(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v13];
  v5 = v13;

  if (v5)
  {
    v6 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1004DB654();
    }
  }

  v7 = [v4 identifier];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v4 fileURL];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_10009D890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_10009D8F8(uint64_t a1)
{
  v2 = [*(a1 + 32) htmlString];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) modificationDate];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) identifier];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_10009DB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009DB60(uint64_t a1)
{
  v6 = [*(a1 + 32) folders];
  v2 = [v6 objectsPassingTest:&stru_100647C30];
  v3 = [v2 allObjects];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

BOOL sub_10009DBE0(id a1, id a2, BOOL *a3)
{
  v3 = ICProtocolCast();
  v4 = [v3 isTrashFolder];

  return v4 ^ 1;
}

void sub_10009DC20(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DBA1C(v2);
  }

  v3 = [*(a1 + 32) destinationAccountObjectID];
  v4 = [ICAccount ic_existingObjectWithID:v3 context:*(a1 + 40)];

  if (v4)
  {
    if ([*(*(*(a1 + 48) + 8) + 40) count])
    {
      v5 = 0;
      do
      {
        v6 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v5];
        v7 = [*(a1 + 32) importLegacyFolder:v6 toAccount:v4];

        ++v5;
      }

      while ([*(*(*(a1 + 48) + 8) + 40) count] > v5);
    }

    v8 = *(a1 + 40);
    v12 = 0;
    v9 = [v8 save:&v12];
    v10 = v12;
    if ((v9 & 1) == 0)
    {
      v11 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1004DBA60();
      }
    }
  }
}

void sub_10009E3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_10009E434(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 account];
  v3 = [v4 defaultFolder];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isEqual:v3];
}

void sub_10009E4B4(uint64_t a1)
{
  v2 = [*(a1 + 32) account];
  v3 = [v2 name];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) name];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(a1 + 32) parentFolder];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if ([*(a1 + 40) renameFolders])
  {
    v12 = [*(a1 + 32) account];
    v13 = [v12 name];
    v14 = [NSString stringWithFormat:@"%@/%@", v13, *(*(*(a1 + 56) + 8) + 40)];
    v15 = [v14 ic_md5];
    v16 = *(*(a1 + 72) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  else
  {
    v18 = [*(*(*(a1 + 56) + 8) + 40) ic_md5];
    v19 = *(*(a1 + 72) + 8);
    v12 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  v20 = [*(a1 + 32) parentFolder];
  if (v20)
  {
    v21 = v20;
    do
    {
      v22 = [v21 name];
      v23 = [v22 ic_md5];
      v24 = [NSString stringWithFormat:@"%@/%@", v23, *(*(*(a1 + 72) + 8) + 40)];
      v25 = *(*(a1 + 72) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      v27 = [v21 parentFolder];

      v21 = v27;
    }

    while (v27);
  }
}

void sub_10009E768(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) managedObjectContext];
  v11 = *v1;
  v3 = [NSArray arrayWithObjects:&v11 count:1];
  v10 = 0;
  v4 = [v2 obtainPermanentIDsForObjects:v3 error:&v10];
  v5 = v10;

  if ((v4 & 1) == 0)
  {
    v6 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1004DBC00();
    }
  }

  v7 = [*v1 objectID];
  v8 = [v7 isTemporaryID];

  if (v8)
  {
    v9 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1004DBCAC();
    }
  }
}

void sub_10009EA08(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v18 = v7;
    v8 = [v7 fileWrapper];

    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = [v18 fileWrapper];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v11 = [v18 fileWrapper];
    v12 = v11;
    if (isKindOfClass)
    {
      v13 = [v11 attachmentIdentifier];
    }

    else
    {
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();

      if ((v14 & 1) == 0)
      {
        goto LABEL_8;
      }

      v12 = [v18 fileWrapper];
      v15 = [v12 remoteURL];
      v13 = [v15 absoluteString];
    }

    if (v13)
    {
LABEL_9:
      [*(a1 + 32) replaceCharactersInRange:a3 withString:{a4, v13}];

      v7 = v18;
      goto LABEL_10;
    }

LABEL_8:
    v16 = [v18 fileWrapper];
    v17 = [v16 regularFileContents];
    v13 = [v17 ic_md5];

    v7 = v18;
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
}

void sub_10009EC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009EC70(uint64_t a1)
{
  v2 = [*(a1 + 32) guid];
  v3 = [NSPredicate predicateWithFormat:@"%K == %@", @"guid", v2];
  v4 = [*(a1 + 32) managedObjectContext];
  v5 = [NoteContext allVisibleNotesMatchingPredicate:v3 context:v4];

  *(*(*(a1 + 40) + 8) + 24) = [v5 count] > 1;
}

NSDictionary *__cdecl sub_10009EE78(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 dictionaryRepresentation];

  return v2;
}

void sub_10009F2E4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009F390;
    block[3] = &unk_100645E30;
    v5 = *(a1 + 32);
    dispatch_async(v3, block);
  }
}

void sub_10009FB9C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.notes.activevacuum", v3);
  v2 = qword_1006CB280;
  qword_1006CB280 = v1;
}

void sub_10009FCF4(uint64_t a1)
{
  v2 = [*(a1 + 48) activeVacuum];

  if (!v2)
  {
    v3 = os_log_create("com.apple.notes", "Vacuum");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DBD54();
    }

    v4 = objc_alloc_init(ICDatabaseVacuum);
    [*(a1 + 48) setActiveVacuum:v4];
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 48) activeVacuum];
  [v6 setPreVacuumHandler:v5];

  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) activeVacuum];
  [v8 setPostVacuumHandler:v7];

  v9 = [*(a1 + 48) activeVacuum];
  [v9 startDatabaseVacuumPolicy];
}

void sub_10009FF68(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Vacuum");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DBE04();
  }

  v3 = [objc_opt_class() lastVacuumDate];
  v4 = [v3 dateByAddingTimeInterval:86400.0];
  v5 = +[NSDate date];
  v6 = [v4 ic_isEarlierThanDate:v5];

  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "Vacuum");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DBE40();
    }

    v8 = +[NSDate date];
    v9 = [v8 dateByAddingTimeInterval:10.0];

    v4 = v9;
  }

  v10 = os_log_create("com.apple.notes", "Vacuum");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DBE7C();
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A0134;
  v12[3] = &unk_100645BA0;
  v12[4] = *(a1 + 32);
  v13 = v4;
  v11 = v4;
  dispatch_async(&_dispatch_main_q, v12);
}

void sub_1000A0134(uint64_t a1)
{
  v2 = [*(a1 + 32) timer];

  if (v2)
  {
    v3 = os_log_create("com.apple.notes", "Vacuum");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DBEF0();
    }

    v4 = [*(a1 + 32) timer];
    [v4 invalidate];
  }

  v5 = [[NSTimer alloc] initWithFireDate:*(a1 + 40) interval:*(a1 + 32) target:"timerFired:" selector:0 userInfo:1 repeats:86400.0];
  [*(a1 + 32) setTimer:v5];

  v6 = +[NSRunLoop mainRunLoop];
  v7 = [*(a1 + 32) timer];
  [v6 addTimer:v7 forMode:NSDefaultRunLoopMode];
}

void sub_1000A02B0(uint64_t a1)
{
  v1 = [*(a1 + 32) timer];
  [v1 invalidate];
}

void sub_1000A0530(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000A05B8;
  v2[3] = &unk_100645BA0;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_1000A05B8(uint64_t a1)
{
  v2 = [*(a1 + 32) postVacuumHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) postVacuumHandler];
    v3[2](v3, *(a1 + 40));
  }
}

void sub_1000A07CC(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_save];
  v3 = os_log_create("com.apple.notes", "Vacuum");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DC094();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1004DC018(a1, v4);
  }

  v5 = [*(a1 + 48) postVacuumHandler];

  if (v5)
  {
    v6 = [*(a1 + 48) postVacuumHandler];
    v6[2](v6, *(a1 + 56));
  }
}

void sub_1000A0AD4(uint64_t a1)
{
  v2 = [*(a1 + 32) workerContext];
  [ICAttachment enumerateAttachmentsInContext:v2 batchSize:100 visibleOnly:0 saveAfterBatch:1 usingBlock:&stru_100647D48];

  v3 = [*(a1 + 32) workerContext];
  [ICInlineAttachment enumerateInlineAttachmentsInContext:v3 typeUTI:0 tokenContentIdentifier:0 batchSize:100 visibleOnly:0 saveAfterBatch:1 usingBlock:&stru_100647D88];

  v4 = [*(a1 + 32) workerContext];
  [ICMedia enumerateMediaInContext:v4 batchSize:100 saveAfterBatch:1 usingBlock:&stru_100647DC8];
}

void sub_1000A0BD0(id a1, ICAttachment *a2, BOOL *a3)
{
  v3 = a2;
  v5 = [(ICAttachment *)v3 note];
  v4 = [v5 account];
  [(ICAttachment *)v3 setAccount:v4];
}

void sub_1000A0C3C(id a1, ICInlineAttachment *a2, BOOL *a3)
{
  v3 = a2;
  v5 = [(ICInlineAttachment *)v3 note];
  v4 = [v5 account];
  [(ICInlineAttachment *)v3 setAccount:v4];
}

void sub_1000A0CA8(id a1, ICMedia *a2, BOOL *a3)
{
  v3 = a2;
  v6 = [(ICMedia *)v3 attachment];
  v4 = [v6 note];
  v5 = [v4 account];
  [(ICMedia *)v3 setAccount:v5];
}

uint64_t sub_1000A0D2C(uint64_t a1)
{
  if (a1 == -1)
  {
    v2 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1004DC10C(v2);
    }

    return 1;
  }

  else if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

__CFString *sub_1000A1A04()
{
  if (ICIsSandboxModeEnabled())
  {
    v0 = @"com.apple.mobilenotesdebug.appremoval";
  }

  else
  {
    v0 = @"com.apple.mobilenotes.appremoval";
  }

  return v0;
}

void sub_1000A1A88(id a1)
{
  v1 = objc_alloc_init(ICAppRemovalServiceClient);
  v2 = qword_1006CB2A0;
  qword_1006CB2A0 = v1;
}

void sub_1000A1CC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error reaching App Removal service: %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_1000A1DA4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) suspendConnectionIfNeeded];
  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004DC164(v3, v4);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

id sub_1000A1EBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    if ([v2 requestCount])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = [NSXPCConnection alloc];
    v4 = sub_1000A1A04();
    v5 = [v3 initWithServiceName:v4];
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    v8 = _LSAppRemovalServiceXPCInterface();
    [*(*(a1 + 32) + 8) setRemoteObjectInterface:v8];
  }

  [*(*(a1 + 32) + 8) resume];
LABEL_6:
  v9 = *(a1 + 32);
  v10 = [v9 requestCount] + 1;

  return [v9 setRequestCount:v10];
}

id sub_1000A2010(uint64_t a1)
{
  result = [*(a1 + 32) requestCount];
  if (result)
  {
    [*(a1 + 32) setRequestCount:{objc_msgSend(*(a1 + 32), "requestCount") - 1}];
    result = [*(a1 + 32) requestCount];
    if (!result)
    {
      v3 = *(*(a1 + 32) + 8);

      return [v3 suspend];
    }
  }

  return result;
}

void sub_1000A2344(uint64_t a1)
{
  v2 = objc_alloc_init(ICDebugSpinner);
  [(ICDebugSpinner *)v2 show];
  v3 = dispatch_get_global_queue(2, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A240C;
  v6[3] = &unk_100645BA0;
  v4 = *(a1 + 32);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

void sub_1000A240C(uint64_t a1)
{
  v2 = +[ICDatabaseStateHandler stateDictionary];
  v22 = 0;
  v3 = [NSPropertyListSerialization dataWithPropertyList:v2 format:200 options:0 error:&v22];
  v4 = v22;
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = NSTemporaryDirectory();
    v9 = [NSURL fileURLWithPath:v8];

    v10 = +[NSDate date];
    [v10 timeIntervalSinceReferenceDate];
    v12 = [NSString stringWithFormat:@"statedump-%ld", v11];
    v13 = [v9 URLByAppendingPathComponent:v12 isDirectory:0];

    v7 = [v13 URLByAppendingPathExtension:@"plist"];

    v21 = 0;
    LOBYTE(v10) = [v3 writeToURL:v7 options:0 error:&v21];
    v6 = v21;
    if (v10)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000A2670;
      block[3] = &unk_100645D40;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v18 = v14;
      v19 = v15;
      v20 = v7;
      dispatch_async(&_dispatch_main_q, block);

      v16 = v18;
    }

    else
    {
      v16 = os_log_create("com.apple.notes", "Internal");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1004DC1DC(v6, v16);
      }
    }
  }

  else
  {
    v6 = v4;
    v7 = os_log_create("com.apple.notes", "Internal");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004DC254(v6, v7);
    }
  }
}

void sub_1000A2670(uint64_t a1)
{
  [*(a1 + 32) hide];
  v2 = [*(a1 + 40) presentingViewController];

  if (v2)
  {
    v3 = [UIActivityViewController alloc];
    v11 = *(a1 + 48);
    v4 = [NSArray arrayWithObjects:&v11 count:1];
    v5 = [v3 initWithActivityItems:v4 applicationActivities:0];

    v10[0] = UIActivityTypeOpenInIBooks;
    v10[1] = ICActivityTypeShareToNote;
    v10[2] = UIActivityTypeSharePlay;
    v6 = [NSArray arrayWithObjects:v10 count:3];
    [v5 setExcludedActivityTypes:v6];

    v7 = [*(a1 + 40) presentationSourceItem];
    v8 = [v5 popoverPresentationController];
    [v8 setSourceItem:v7];

    v9 = [*(a1 + 40) presentingViewController];
    [v9 presentViewController:v5 animated:1 completion:0];
  }
}

void sub_1000A27E4(uint64_t a1)
{
  [*(a1 + 32) activityDidFinish:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) activityType];
    (*(v2 + 16))(v2, 1, v3);
  }
}

uint64_t sub_1000A351C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A3534(uint64_t a1)
{
  v6 = [ICAccount allActiveAccountsInContext:*(a1 + 32)];
  v2 = NSStringFromSelector("identifier");
  v3 = [v6 valueForKey:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000A3C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A3C58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_1000A3C70(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [a2 copy];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

void sub_1000A43D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = [v3 recordType];
  v4 = [*(a1 + 32) objectForKeyedSubscript:?];
  v5 = [ICASCloudSyncableItemData alloc];
  v6 = v5;
  if (v4)
  {
    v7 = [v4 syncableDataType];
    v8 = [v4 count];
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 unsignedIntegerValue] + 1);
    v10 = [v6 initWithSyncableDataType:v7 count:v9];
  }

  else
  {
    v10 = [v5 initWithSyncableDataType:v13 count:&off_10066DEF0];
  }

  [*(a1 + 32) setObject:v10 forKeyedSubscript:v13];
  v11 = *(a1 + 40);
  v12 = [v3 recordID];

  [v11 addObject:v12];
}

void sub_1000A4958(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 recordID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void sub_1000A49BC(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v24];
  v8 = [v7 recordType];
  if (!v8)
  {
    if ([*(a1 + 40) containsObject:v24])
    {
      v8 = *(a1 + 48);
    }

    else
    {
      v8 = @"icna_record_type_unknown";
    }
  }

  v9 = [v6 code];
  v10 = [v6 domain];

  v11 = [NSString stringWithFormat:@"%@_%ld", v10, v9];
  v12 = [NSString stringWithFormat:@"%@_%@", v8, v11];
  v13 = [*(a1 + 56) objectForKeyedSubscript:v12];
  v14 = [ICASPartialCloudErrorItemData alloc];
  if (v13)
  {
    v15 = [v13 syncableDataType];
    [v13 errorCode];
    v16 = v22 = v10;
    [v13 count];
    v23 = v8;
    v17 = a1;
    v19 = v18 = v7;
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 unsignedIntegerValue] + 1);
    v21 = [v14 initWithSyncableDataType:v15 errorCode:v16 count:v20 errorString:v11];

    v7 = v18;
    a1 = v17;
    v8 = v23;

    v10 = v22;
  }

  else
  {
    v15 = [NSNumber numberWithInteger:v9];
    v21 = [v14 initWithSyncableDataType:v8 errorCode:v15 count:&off_10066DEF0 errorString:v11];
  }

  [*(a1 + 56) setObject:v21 forKeyedSubscript:v12];
}

void sub_1000A5010(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1006CB2C0;
  qword_1006CB2C0 = v1;

  v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1006CB2C0 setLocale:v3];

  v4 = qword_1006CB2C0;

  [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
}

void sub_1000A53B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A53D8(uint64_t a1)
{
  v2 = [*(a1 + 32) modifiedAfterDate];
  v3 = [NSPredicate predicateWithFormat:@"modificationDate >= %@", v2];

  v4 = [*(a1 + 32) workerContext];
  v5 = [*(a1 + 32) relationshipKeyPathsForPrefetching];
  v6 = [*(a1 + 32) batchSize];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A54F8;
  v7[3] = &unk_100647EF0;
  v7[4] = *(a1 + 40);
  [ICNote enumerateAllCloudObjectsInContext:v4 predicate:v3 sortDescriptors:&__NSArray0__struct relationshipKeyPathsForPrefetching:v5 batchSize:v6 saveAfterBatch:1 usingBlock:v7];
}

void sub_1000A54F8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICDynamicCast();

  [v4 setNeedsToBeFetchedFromCloud:1];
  ++*(*(*(a1 + 32) + 8) + 24);
}

id sub_1000A5DA4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [ICAccount allAccountsInContext:*(a1 + 32), 0];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) setReplicaIDToBundleIdentifier:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) ic_save];
}

void sub_1000A7444(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id sub_1000A881C(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 32);

  return [v2 setWindowScene:0];
}

void sub_1000A8C40(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) activityType];
    (*(v1 + 16))(v1, 1, v2);
  }
}

id sub_1000A8ED8(uint64_t a1, void *a2)
{
  if (*(a1 + 32) != a2)
  {
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 folder];
    [v5 setCustomNoteSortType:v4];

    v6 = [*(a1 + 40) folder];
    [v6 updateChangeCountWithReason:@"Changed sort type"];

    v7 = [*(a1 + 40) folder];
    v8 = [v7 managedObjectContext];
    [v8 ic_save];

    v9 = [*(a1 + 40) virtualSmartFolder];
    [v9 setNoteSortType:v4];
  }

  v10 = *(a1 + 40);
  v11 = *(a1 + 48);

  return [v10 performActivityWithCompletion:v11];
}

void sub_1000A9598(uint64_t a1)
{
  if (*(a1 + 48) == *(a1 + 56))
  {
    [*(a1 + 40) sortType];
  }

  else
  {
    [*(a1 + 32) folderNoteSortTypeByChangingOrder:?];
  }
  v3 = ;
  v2 = [*(a1 + 40) selectedSortTypeHandler];
  (v2)[2](v2, v3);
}

void sub_1000A9764(id *a1)
{
  if ([a1[4] direction] == a1[6])
  {
    [a1[5] sortType];
  }

  else
  {
    [a1[4] folderNoteSortTypeByChangingDirection];
  }
  v3 = ;
  v2 = [a1[5] selectedSortTypeHandler];
  (v2)[2](v2, v3);
}

void sub_1000A9CD8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A9D98;
    v6[3] = &unk_100647F90;
    v6[4] = v3;
    v7 = *(a1 + 40);
    [v3 authenticateIfNeededWithCompletion:v6];
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }
}

uint64_t sub_1000A9D98(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) deleteObjects];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000AA588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AA5BC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (a2 == 2)
  {
    [WeakRetained setDidAuthenticate:1];
    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = *(v5 + 16);
  }

  else
  {
    v7 = *(a1 + 32);
    if (!v7)
    {
      goto LABEL_7;
    }

    v6 = *(v7 + 16);
  }

  v6();
LABEL_7:
}

void sub_1000AA7A0(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000AA828;
  v2[3] = &unk_100645E30;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 deleteModernFoldersIfNeeded:v2];
}

uint64_t sub_1000AA828(uint64_t a1)
{
  if (!+[NSThread isMainThread])
  {
    [ICAssert handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"[ICDeleteDecisionController deleteObjects]_block_invoke_2" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  result = [*(a1 + 32) groupingLevel];
  if (result >= 1)
  {
    v3 = *(a1 + 32);

    return [v3 endUndoGrouping];
  }

  return result;
}

void sub_1000AB008(uint64_t a1)
{
  v2 = +[ICNoteContext sharedContext];
  v3 = [v2 managedObjectContext];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AB0EC;
  v10[3] = &unk_100645BA0;
  v4 = v3;
  v11 = v4;
  v12 = *(a1 + 32);
  [v4 performBlockAndWait:v10];
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6, v7, v8);
  }
}

void sub_1000AB0EC(uint64_t a1)
{
  [*(a1 + 32) processPendingChanges];
  v3 = [*(a1 + 40) ic_objectsPassingTest:&stru_100648018];
  v2 = +[ICNoteContext sharedContext];
  [v2 undoablyTrashOrDeleteNotes:v3];

  [*(a1 + 32) ic_save];
}

BOOL sub_1000AB170(id a1, ICNote *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(ICNote *)a2 managedObjectContext:a3];
  v5 = v4 != 0;

  return v5;
}

void sub_1000AB590(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "Delete");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004DC994(a1, v3, v4);
    }
  }

  else
  {
    v4 = [*(a1 + 32) managedObjectContext];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000AB69C;
    v5[3] = &unk_100645E30;
    v5[4] = *(a1 + 32);
    [v4 performBlockAndWait:v5];
  }

  dispatch_group_leave(*(a1 + 40));
  --*(*(*(a1 + 48) + 8) + 24);
}

void sub_1000AB69C(uint64_t a1)
{
  v2 = +[ICNoteContext sharedContext];
  v3 = *(a1 + 32);
  v4 = [v3 parent];
  v5 = [*(a1 + 32) sharedRootObject];
  [v2 undoablyPersistDeleteEventForObject:v3 fromParentObject:v4 sharedRootObject:v5];

  v6 = +[ICNoteContext sharedContext];
  [v6 undoablyDeleteFolder:*(a1 + 32) markNotesForDeletion:0 moveAction:0 actionName:0];
}

uint64_t sub_1000AB764(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000ABBF0(uint64_t a1)
{
  v2 = [ICDeleteAlert alloc];
  v3 = [*(a1 + 32) deleteDecision];
  v4 = [v3 modernNotes];
  v6 = -[ICDeleteAlert initWithAlertType:count:](v2, "initWithAlertType:count:", 14, [v4 count]);

  v5 = [*(a1 + 32) alertPresenter];
  [v5 presentAlert:v6 withCompletion:*(a1 + 40)];
}

void sub_1000ACE28(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) activityDidFinish:1];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v6 count] != 0;
    v5 = [*(a1 + 32) activityType];
    (*(v3 + 16))(v3, v4, v5);
  }
}

void sub_1000AD160(uint64_t a1)
{
  v3 = [*(a1 + 32) viewControllerManager];
  v1 = [v3 activityStreamNavigationController];
  v2 = [v1 activityStreamViewController];
  [v2 updateContentLayout];
}

void sub_1000AD3B8(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v3 = @"ICNoteBrowseCollectionViewGalleryWideModeNumberOfColumnsKey";
  v4 = &off_10066DF08;
  v2 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  [v1 registerDefaults:v2];
}

id sub_1000AD63C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained diffableDataSource];
  v8 = [v7 sectionIdentifierForIndex:a2];
  v9 = ICDynamicCast();

  v10 = objc_loadWeakRetained((a1 + 32));
  if (v10 && (v11 = v10, v12 = [v9 sectionType], v11, !v12))
  {
    v13 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:0];
    [v13 setShowsSeparators:0];
    v15 = +[UIColor clearColor];
    [v13 setBackgroundColor:v15];

    v14 = [NSCollectionLayoutSection sectionWithListConfiguration:v13 layoutEnvironment:v5];
  }

  else
  {
    v13 = objc_loadWeakRetained((a1 + 32));
    v14 = [v13 notesSectionForSectionIndex:a2 layoutEnvironment:v5];
  }

  v16 = v14;

  return v16;
}

id sub_1000AE11C(uint64_t a1)
{
  result = +[ICNoteResultsGalleryCollectionViewCell heightForItemWidth:showsParticipantsInfo:showsFolderAndOrAccountName:](ICNoteResultsGalleryCollectionViewCell, "heightForItemWidth:showsParticipantsInfo:showsFolderAndOrAccountName:", [*(a1 + 32) shouldShowCellParticipantsInfo], objc_msgSend(*(a1 + 32), "shouldShowFolderAndOrAccountName"), *(a1 + 48) * *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

UIColor *__cdecl sub_1000AE190(id a1, UITraitCollection *a2)
{
  v2 = a2;
  v3 = [(UITraitCollection *)v2 ic_behavior];
  v4 = [(UITraitCollection *)v2 splitViewControllerLayoutEnvironment];

  if (v4 == 1)
  {
    if (v3 == 1)
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor systemBackgroundColor];
    }
    v5 = ;
  }

  else
  {
    v5 = +[UIColor systemGroupedBackgroundColor];
  }

  return v5;
}

void sub_1000AE4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000AE4EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained ic_behavior];
  v9 = [WeakRetained traitCollection];
  v10 = [v9 splitViewControllerLayoutEnvironment];

  v11 = [WeakRetained noteListSectionHeaderModeForSectionIndex:{objc_msgSend(v5, "section")}];
  v12 = 1;
  if (v11 != 2)
  {
    if (v11 != 1)
    {
      goto LABEL_5;
    }

    v12 = 0;
  }

  LOBYTE(v12) = [v5 item] != v12;
LABEL_5:
  v13 = [WeakRetained indexPathsForSelectedItems];
  v14 = [v13 containsObject:v5];

  if ((v12 & 1) == 0 && (v14 & 1) == 0)
  {
    [v6 setTopSeparatorVisibility:1];
    v15 = ICInternalSettingsAlignHeadersWithNavTitle();
    v16 = v8 == 1 && v10 == 2;
    v17 = v16;
    if ((v15 & 1) != 0 || v17)
    {
      [v6 topSeparatorInsets];
      [v6 setTopSeparatorInsets:?];
    }
  }

  v18 = [WeakRetained numberOfItemsInSection:{objc_msgSend(v5, "section")}];
  if (v18 && [v5 item] == v18 - 1)
  {
    [v6 setBottomSeparatorVisibility:2];
  }

  return v6;
}

BOOL sub_1000AEAC0(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  v5 = ICDynamicCast();

  LOBYTE(v4) = [v5 sectionType] == 0;
  return v4;
}

void sub_1000AED94(uint64_t a1)
{
  v2 = [NSBatchUpdateRequest alloc];
  v3 = +[ICAttachment entity];
  v4 = [v2 initWithEntity:v3];

  v5 = [NSPredicate predicateWithFormat:@"typeUTI == %@", ICAttachmentUTTypePaperDocumentScan];
  [v4 setPredicate:v5];

  [v4 setPropertiesToUpdate:&off_10066E3D0];
  [v4 setResultType:4];
  v6 = [*(a1 + 32) workerContext];
  v13 = 0;
  v7 = [v6 executeRequest:v4 error:&v13];
  v8 = v13;

  v9 = os_log_create("com.apple.notes", "LaunchTask");
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1004DCB34(v8, v10);
    }
  }

  else
  {
    v11 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v7 result];
      *buf = 138412290;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Updated %@ paper document scan section types", buf, 0xCu);
    }
  }
}

void sub_1000AF830(uint64_t a1)
{
  v2 = [*(a1 + 32) URLContexts];
  v3 = [v2 count];

  if (v3)
  {
    v4 = *(a1 + 40);
    v9 = [*(a1 + 32) URLContexts];
    [v4 handleOpeningURLContexts:? withScene:?];
  }

  else
  {
    v5 = [*(a1 + 32) shortcutItem];

    if (v5)
    {
      v6 = *(a1 + 56);
      v9 = [*(a1 + 32) shortcutItem];
      [v6 performActionForShortcutItem:?];
    }

    else
    {
      v7 = [*(a1 + 32) cloudKitShareMetadata];

      if (!v7)
      {
        return;
      }

      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) cloudKitShareMetadata];
      [v8 handleAcceptingCloudKitShareWithMetadata:? withWindowScene:?];
    }
  }
}

void sub_1000AFAC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  performBlockOnMainThread();
}

void sub_1000AFB40(uint64_t a1)
{
  v2 = +[ICNAWindowSceneReportingManager sharedManager];
  [v2 windowSceneWillBegin:*(a1 + 32)];
}

void sub_1000AFF00(id a1)
{
  v1 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Took too long to save note when moving scene to the background", v2, 2u);
  }
}

void sub_1000B0164(id a1, NSError *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.notes", "AudioTranscription");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1004DCBAC(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DCC24();
  }
}

void sub_1000B175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B1790(uint64_t a1)
{
  v2 = [*(a1 + 32) activityType];
  v3 = [v2 isEqual:@"TUUserActivityCreateCallRecording"];

  if (v3)
  {
    objc_opt_class();
    v4 = [*(a1 + 32) userInfo];
    v5 = [v4 objectForKeyedSubscript:@"uniqueProxyIdentifier"];
    v15 = ICDynamicCast();

    objc_opt_class();
    v6 = [*(a1 + 32) userInfo];
    v7 = [v6 objectForKeyedSubscript:@"recordingRequestUUID"];
    v8 = ICDynamicCast();

    if (v15 && v8)
    {
      [ICCallNoteCoordinator createNewCallNoteHelperWithNoteID:v15 recordingID:v8 context:*(a1 + 40) bgTaskIdentifier:*(*(*(a1 + 48) + 8) + 24)];
    }
  }

  else
  {
    v9 = [*(a1 + 32) activityType];
    v10 = [v9 isEqual:@"TUUserActivityFinishedCallRecording"];

    if (!v10)
    {
      return;
    }

    objc_opt_class();
    v11 = [*(a1 + 32) userInfo];
    v12 = [v11 objectForKeyedSubscript:@"uniqueProxyIdentifier"];
    v15 = ICDynamicCast();

    objc_opt_class();
    v13 = [*(a1 + 32) userInfo];
    v14 = [v13 objectForKeyedSubscript:@"recordingRequestUUID"];
    v8 = ICDynamicCast();

    if (v15 && v8)
    {
      [ICCallNoteCoordinator callRecordingEndedHelperWithNoteID:v15 recordingID:v8 context:*(a1 + 40) bgTaskIdentifier:*(*(*(a1 + 48) + 8) + 24)];
    }
  }
}

void sub_1000B1F28(uint64_t a1, void *a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B2000;
  block[3] = &unk_100645D40;
  v8 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000B2000(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [*(a1 + 48) window];
  v3 = [v4 rootViewController];
  [UIAlertController ic_showAlertWithTitle:v1 message:v2 viewController:v3];
}

void sub_1000B2080(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B212C;
  v5[3] = &unk_100645BA0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_1000B212C(uint64_t a1)
{
  v2 = [*(a1 + 32) searchController];
  if (v2)
  {
    [v2 cancelSearch];
  }

  [*(a1 + 32) selectObjectWithObjectID:*(a1 + 40)];
}

void sub_1000B218C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B229C;
  v5[3] = &unk_100648260;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  objc_copyWeak(&v9, &location);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  [v4 showStartupWithForceWelcomeScreen:1 completion:v5];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_1000B2280(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000B229C(uint64_t a1)
{
  if ([ICAccount hasActiveCloudKitAccountInContext:*(a1 + 32)])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained windowScene:*(a1 + 40) userDidAcceptCloudKitShareWithMetadata:*(a1 + 48)];
  }
}

void sub_1000B3374(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 object];

  v9 = ICDynamicCast();

  v5 = [v9 session];
  v6 = [v5 role];
  LODWORD(v4) = [v6 isEqualToString:_UIWindowSceneSessionTypeCoverSheet];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained icWindow];
    [v8 makeKeyWindow];
  }
}

void sub_1000B3C44(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DCEBC(v2);
  }

  v3 = [NSPredicate predicateWithFormat:@"folder.folderType != %d", 1];
  v45[0] = v3;
  v4 = [NSPredicate predicateWithFormat:@"markedForDeletion == YES"];
  v45[1] = v4;
  v5 = [NSPredicate predicateWithFormat:@"needsInitialFetchFromCloud == NO"];
  v45[2] = v5;
  v6 = [NSArray arrayWithObjects:v45 count:3];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  v28 = v7;
  v29 = a1;
  v8 = [ICNote notesMatchingPredicate:v7 context:*(a1 + 32)];
  v9 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DCF00(v8, v9);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = v8;
  v10 = [v8 copy];
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    v14 = "com.apple.notes";
    v15 = &ICTagSelectionMenuReplacementSubstring_ptr;
    v30 = v10;
    do
    {
      v16 = 0;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        v18 = os_log_create(v14, "LaunchTask");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v22 = [v17 ic_loggingDescription];
          v33 = [v17 folder];
          v32 = [v33 account];
          v31 = [v32 trashFolder];
          v23 = [v31 identifier];
          v24 = [v17 folder];
          [v24 account];
          v26 = v25 = v14;
          *buf = 138412802;
          v39 = v22;
          v40 = 2112;
          v41 = v23;
          v42 = 2112;
          v43 = v26;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Moving deleted note %@ to the trash %@ in account %@", buf, 0x20u);

          v14 = v25;
          v15 = &ICTagSelectionMenuReplacementSubstring_ptr;

          v10 = v30;
        }

        v19 = [v17 account];
        v20 = [v19 trashFolder];
        [v17 setFolder:v20];

        v21 = [v15[389] now];
        [v17 setFolderModificationDate:v21];

        [v17 updateChangeCountWithReason:@"Moved to trash"];
        v16 = v16 + 1;
      }

      while (v12 != v16);
      v12 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v12);
  }

  [*(v29 + 32) ic_save];
}

void sub_1000B4594(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [*(a1 + 32) accountsNeedingServerUpgrade];
  v2 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v25;
    *&v3 = 138412290;
    v20 = v3;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = os_log_create("com.apple.notes", "ServerSideUpdateTask");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [v7 ic_loggingIdentifier];
          *buf = v20;
          v31 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Starting tasks for account: %@", buf, 0xCu);
        }

        v10 = [v7 serverSideUpdateTaskLastAttemptedBuild];
        v11 = [*(a1 + 32) currentBuild];
        v12 = [v10 isEqualToString:v11];

        if ((v12 & 1) == 0)
        {
          [v7 setServerSideUpdateTaskFailureCount:0];
          v13 = [*(a1 + 32) currentBuild];
          [v7 setServerSideUpdateTaskLastAttemptedBuild:v13];

          v14 = [*(a1 + 32) currentVersion];
          [v7 setServerSideUpdateTaskLastAttemptedVersion:v14];
        }

        v15 = [*(a1 + 32) workerContext];
        v16 = [v15 ic_saveWithLogDescription:@"PreRunServerUpgradeTask"];

        if ((v16 & 1) == 0)
        {
          v17 = os_log_create("com.apple.notes", "ServerSideUpdateTask");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_1004DCFC4(v28, v7, &v29, v17);
          }
        }

        dispatch_group_enter(*(a1 + 40));
        v18 = [*(a1 + 32) invernessClientForAccount:v7];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000B48B8;
        v22[3] = &unk_100645E30;
        v19 = *(a1 + 32);
        v23 = *(a1 + 40);
        [v19 runServerSideTaskWithClient:v18 account:v7 completion:v22];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v4);
  }
}

uint64_t sub_1000B48C0(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "ServerSideUpdateTask");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DD03C(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000B4B00(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] workerContext];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B4C40;
  v16[3] = &unk_1006482D8;
  v17 = v7;
  v11 = a1[5];
  v12 = a1[4];
  v18 = v11;
  v19 = v12;
  v20 = v8;
  v21 = v9;
  v22 = a1[6];
  v23 = a1[7];
  v13 = v9;
  v14 = v8;
  v15 = v7;
  [v10 performBlock:v16];
}

uint64_t (**sub_1000B4C40(uint64_t a1))(void)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = os_log_create("com.apple.notes", "ServerSideUpdateTask");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004DD1B0(a1, v2, v5);
    }

    [*(a1 + 40) setServerSideUpdateTaskFailureCount:{(objc_msgSend(*(a1 + 40), "serverSideUpdateTaskFailureCount") + 1)}];
    v6 = [*(a1 + 48) workerContext];
    v7 = v6;
    v8 = @"ServerUpgradeTaskErrorSave";
    goto LABEL_5;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DD268(a1, v5);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = *(a1 + 64);
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      v16 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * v16);
        v18 = [*(a1 + 48) cloudContext];
        v19 = [*(a1 + 40) identifier];
        v20 = [*(a1 + 48) workerContext];
        [v18 ingestCloudKitRecord:v17 forAccountID:v19 forceMerge:1 context:v20];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v14);
  }

  [*(a1 + 40) setServerSideUpdateTaskContinuationToken:*(a1 + 56)];
  v21 = [*(a1 + 56) length];
  v22 = *(a1 + 48);
  if (!v21)
  {
    v25 = [v22 currentBuild];
    [*(a1 + 40) setServerSideUpdateTaskLastCompletedBuild:v25];

    v26 = [*(a1 + 48) currentVersion];
    [*(a1 + 40) setServerSideUpdateTaskLastCompletedVersion:v26];

    v6 = [*(a1 + 48) workerContext];
    v7 = v6;
    v8 = @"ServerUpgradeTaskFinalSave";
LABEL_5:
    [v6 ic_saveWithLogDescription:v8, v27];
    goto LABEL_6;
  }

  v23 = [v22 workerContext];
  v24 = [v23 ic_saveWithLogDescription:@"ServerUpgradeTaskIncrementalSave"];

  if (v24)
  {
    return [*(a1 + 48) runServerSideTaskWithClient:*(a1 + 72) account:*(a1 + 40) completion:*(a1 + 80)];
  }

  v7 = os_log_create("com.apple.notes", "ServerSideUpdateTask");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1004DD33C((a1 + 40), v7);
  }

LABEL_6:
  v9 = os_log_create("com.apple.notes", "ServerSideUpdateTask");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 40) ic_loggingIdentifier];
    *buf = 138412290;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Finished tasks for account: %@", buf, 0xCu);
  }

  result = *(a1 + 80);
  if (result)
  {
    return result[2]();
  }

  return result;
}

void sub_1000B50A0(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) workerContext];
  v3 = [ICAccount allActiveCloudKitAccountsInContext:v2];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 setServerSideUpdateTaskLastAttemptedBuild:0];
        [v8 setServerSideUpdateTaskLastAttemptedVersion:0];
        [v8 setServerSideUpdateTaskLastCompletedBuild:0];
        [v8 setServerSideUpdateTaskLastCompletedVersion:0];
        [v8 setServerSideUpdateTaskContinuationToken:0];
        [v8 setServerSideUpdateTaskFailureCount:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 32) workerContext];
  [v9 ic_saveWithLogDescription:@"ResetServerUpgradeState"];
}

uint64_t sub_1000B531C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "ServerSideUpdateTask");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DD3D8(v3, a1, v4);
  }

  v5 = [v3 serverSideUpdateTaskLastCompletedBuild];
  v6 = [*(a1 + 32) currentBuild];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = os_log_create("com.apple.notes", "ServerSideUpdateTask");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 ic_loggingIdentifier];
      v16 = 138412290;
      v17 = v9;
      v10 = "Already ran tasks for account %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v10, &v16, 0xCu);
    }
  }

  else
  {
    if ([v3 serverSideUpdateTaskFailureCount] < *(a1 + 40) || (objc_msgSend(v3, "serverSideUpdateTaskLastAttemptedBuild"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "currentBuild"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToString:", v13), v13, v12, !v14))
    {
      v11 = 1;
      goto LABEL_13;
    }

    v8 = os_log_create("com.apple.notes", "ServerSideUpdateTask");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 ic_loggingIdentifier];
      v16 = 138412290;
      v17 = v9;
      v10 = "Reached failure limit for account %@";
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

void sub_1000B5990(uint64_t a1)
{
  v2 = [NSBatchUpdateRequest alloc];
  v3 = +[ICAttachment entity];
  v4 = [v2 initWithEntity:v3];

  v5 = [NSPredicate predicateWithFormat:@"typeUTI == %@ || typeUTI == %@", ICAttachmentUTTypeInlineDrawingV1, ICAttachmentUTTypeInlineDrawing];
  [v4 setPredicate:v5];

  [v4 setPropertiesToUpdate:&off_10066E3F8];
  [v4 setResultType:4];
  v6 = [*(a1 + 32) workerContext];
  v13 = 0;
  v7 = [v6 executeRequest:v4 error:&v13];
  v8 = v13;

  v9 = os_log_create("com.apple.notes", "LaunchTask");
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1004DD520(v8, v10);
    }
  }

  else
  {
    v11 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v7 result];
      *buf = 138412290;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Updated %@ drawing attachment section types", buf, 0xCu);
    }
  }
}

void sub_1000B5D6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1004DD598(a1, v4, v5);
    }
  }
}

id sub_1000B6734(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryMedium];
  v5 = [UIFont preferredFontForTextStyle:*(a1 + 32) compatibleWithTraitCollection:v4];
  v6 = [v5 ic_fontWithSingleLineA];

  if (_UISolariumEnabled())
  {
    v7 = +[UIColor ICTintColor];
    [v3 setObject:v7 forKeyedSubscript:NSForegroundColorAttributeName];

    if (*(a1 + 32) == UIFontTextStyleSubheadline)
    {
      v8 = [*(a1 + 40) subtitleFont];

      v6 = v8;
    }
  }

  [v3 setObject:v6 forKeyedSubscript:NSFontAttributeName];
  v9 = [v3 copy];

  return v9;
}

void sub_1000B6F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B6F30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained syncMessage];
  v3 = [v2 actions];
  v4 = [v3 firstObject];

  [v4 performActionWithContext:&off_10066E420];
}

void sub_1000B74C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B74E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 summaryViewLockNowPressed:v3];
}

void sub_1000B8FB8(uint64_t a1)
{
  v3 = [*(a1 + 32) object];
  v2 = [v3 currentSearchDescription];
  [*(a1 + 40) setSearchSummaryString:v2];

  [*(a1 + 40) update];
}

void sub_1000B91DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B9200(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000B9218(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessibilityLabel];
  if (![v4 length])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v5 = ICDynamicCast();
      v6 = [v5 text];

      v4 = v6;
    }
  }

  if ([v4 length])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v14 + 1) + 8 * v11) isEqualToString:{v4, v14}])
          {

            goto LABEL_15;
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }

LABEL_15:
  v12 = *(*(*(a1 + 40) + 8) + 24);

  return v12;
}

void sub_1000B959C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B95C0(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 accessibilityTraits];
  if ((UIAccessibilityTraitButton & v5) != 0 || (UIAccessibilityTraitLink & v5) != 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v6 = *(*(*(a1 + 40) + 8) + 24);

  return v6;
}

void sub_1000BA828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BA848(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000BA860(uint64_t a1)
{
  v2 = +[ICCollaborationController sharedInstance];
  v3 = [*(a1 + 32) identifier];
  v4 = [v2 containerForAccountID:v3];

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) managedObjectContext];
  v7 = [ICCollaborationController serverShareCheckingParent:v5 managedObjectContext:v6];

  v8 = os_log_create("com.apple.notes", "Collaboration");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      sub_1004DD660(v7, (a1 + 40));
    }

    v10 = [[ICCloudSharingController alloc] initWithShare:v7 container:v4];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    [*(a1 + 48) trackCollaborationActionAddPeopleForObject:*(a1 + 40) share:v7 isInviting:1];
  }

  else
  {
    if (v9)
    {
      sub_1004DD71C((a1 + 40));
    }

    v13 = [ICCloudSharingController alloc];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000BAA84;
    v22 = &unk_100648430;
    v23 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v24 = v14;
    v25 = v15;
    v26 = v4;
    v16 = [(ICCloudSharingController *)v13 initWithPreparationHandler:&v19];
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  [*(*(*(a1 + 56) + 8) + 40) setAvailablePermissions:{15, v19, v20, v21, v22}];
}

void sub_1000BAA84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) managedObjectContext];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000BAB94;
  v12[3] = &unk_1006479E0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v15 = v4;
  v11 = *(a1 + 48);
  v8 = *(&v11 + 1);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v14 = v11;
  v13 = v9;
  v10 = v4;
  [v5 performBlock:v12];
}

void sub_1000BAB94(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000BAC80;
  v9[3] = &unk_1006479E0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v8 = *(a1 + 48);
  v12 = *(a1 + 64);
  v5 = *(a1 + 56);
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  [v2 performBlockInPersonaContext:v9];
}

void sub_1000BAC80(uint64_t a1)
{
  v2 = [ICCollaborationController newShareForObject:*(a1 + 32)];
  v3 = +[ICCollaborationController sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000BADAC;
  v10[3] = &unk_100648408;
  v4 = *(a1 + 32);
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *(a1 + 48);
  v9 = v5;
  v6 = *(a1 + 32);
  v13 = *(a1 + 64);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v3 prepareShare:v2 forObject:v4 qualityOfService:25 completionHandler:v10];
}

void sub_1000BADAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000BAEC4;
  v14[3] = &unk_1006483E0;
  v15 = v5;
  v16 = v6;
  v13 = *(a1 + 40);
  v8 = *(&v13 + 1);
  v9 = *(a1 + 64);
  *&v10 = *(a1 + 56);
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  [v7 performBlockInPersonaContext:v14];
}

uint64_t sub_1000BAEC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && !*(a1 + 40))
  {
    [*(a1 + 48) trackCollaborationActionFirstShareForObject:*(a1 + 56) share:? isInviting:?];
    v2 = *(a1 + 32);
  }

  [*(a1 + 48) setNewlyCreatedShare:v2];
  v3 = *(*(a1 + 72) + 16);

  return v3();
}

void sub_1000BB134(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) cloudSharingControllerForObject:*(a1 + 40)];
  v3 = ICCheckedDynamicCast();

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000BB380;
  v14[3] = &unk_100645BC8;
  v14[4] = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = *(a1 + 72);
  [v3 setDismissed:v14];
  [v3 setDelegate:*(a1 + 32)];
  v4 = +[ICCollaborationController sharedInstance];
  v5 = [v3 share];
  [v4 updateRootRecordMapWithShare:v5];

  if (+[UIDevice ic_isiPhone]&& (v6 = *(a1 + 56)) != 0)
  {
    v7 = [v3 popoverPresentationController];
    [v7 setBarButtonItem:v6];

    v8 = [v3 popoverPresentationController];
    [v8 _setIgnoreBarButtonItemSiblings:1];
  }

  else
  {
    [v3 setModalPresentationStyle:2];
  }

  if (([*(a1 + 40) isSharedRootObject] & 1) == 0)
  {
    objc_opt_class();
    v9 = [*(a1 + 40) sharedRootObject];
    v10 = ICDynamicCast();

    v11 = [v10 title];
    [v3 _setRootFolderTitle:v11];

    v12 = [*(a1 + 40) title];
    [v3 _setFolderSubitemName:v12];

    v13 = objc_alloc_init(UIImage);
    [v3 _setHeaderSecondaryImage:v13];
  }

  [*(a1 + 64) presentViewController:v3 animated:1 completion:*(a1 + 80)];
}

uint64_t sub_1000BB380(uint64_t a1)
{
  v2 = [*(a1 + 32) newlyCreatedShare];

  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = [*(a1 + 32) newlyCreatedShare];
    [v3 ic_setNonNilObject:v4 forNonNilKey:ICNotesCloudContextDidFetchShareNotificationShareKey];

    [v3 ic_setNonNilObject:*(a1 + 40) forNonNilKey:ICNotesCloudContextDidFetchShareNotificationAccountIDKey];
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = ICNotesCloudContextDidFetchShareNotification;
    v7 = *(a1 + 32);
    v8 = [v3 copy];
    [v5 postNotificationName:v6 object:v7 userInfo:v8];

    [*(a1 + 32) setNewlyCreatedShare:0];
  }

  result = *(a1 + 48);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

void sub_1000BB6C0(id *a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB7D0;
  block[3] = &unk_100648458;
  v2 = a1 + 5;
  *&v3 = a1[4];
  *(&v3 + 1) = *v2;
  v7 = v3;
  v4 = a1[6];
  v12 = a1[9];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = a1[8];
  v13 = a1[10];
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000BB7D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BB8C8;
  v8[3] = &unk_100648480;
  v7 = *(a1 + 40);
  v3 = *(&v7 + 1);
  v11 = *(a1 + 72);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v12 = *(a1 + 80);
  [v2 performBlockInPersonaContext:v8];
}

void sub_1000BB8C8(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) cloudSharingControllerForObject:*(a1 + 40)];
  v3 = ICCheckedDynamicCast();

  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1000BBBBC;
  v22 = &unk_100645E80;
  v23 = *(a1 + 32);
  v24 = *(a1 + 64);
  [v3 setDismissed:&v19];
  [v3 setDelegate:{*(a1 + 32), v19, v20, v21, v22, v23}];
  v4 = +[ICCollaborationController sharedInstance];
  v5 = [v3 share];
  [v4 updateRootRecordMapWithShare:v5];

  if (+[UIDevice ic_isiPhone]&& (v6 = *(a1 + 48)) != 0)
  {
    v7 = [v3 popoverPresentationController];
    [v7 setBarButtonItem:v6];

    v8 = [v3 popoverPresentationController];
    [v8 setPermittedArrowDirections:3];

    v9 = [v3 popoverPresentationController];
    [v9 _setIgnoreBarButtonItemSiblings:1];
  }

  else
  {
    [v3 setModalPresentationStyle:2];
  }

  if ([*(a1 + 40) isSharedViaICloudFolder])
  {
    objc_opt_class();
    v10 = [*(a1 + 40) sharedRootObject];
    v11 = ICDynamicCast();

    v12 = [v11 title];
    [v3 _setRootFolderTitle:v12];

    v13 = [*(a1 + 40) title];
    [v3 _setFolderSubitemName:v13];

    v14 = objc_alloc_init(UIImage);
    [v3 _setHeaderSecondaryImage:v14];
  }

  [*(a1 + 32) populateParticipantDetailsForCloudSharingController:v3];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"Hide Alerts" value:&stru_100661CF0 table:0];
  [v3 _setPrimaryAuxiliarySwitchTitle:v16];

  v17 = [*(a1 + 32) note];
  v18 = [v17 recordID];
  [v3 _setPrimaryAuxiliarySwitchState:{+[ICShareNotifier shouldPreventNotificationsForRecordID:](ICShareNotifier, "shouldPreventNotificationsForRecordID:", v18)}];

  [*(a1 + 56) presentViewController:v3 animated:1 completion:*(a1 + 72)];
}

uint64_t sub_1000BBBBC(uint64_t a1)
{
  v2 = [*(a1 + 32) newlyCreatedShare];

  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = [*(a1 + 32) newlyCreatedShare];
    [v3 ic_setNonNilObject:v4 forNonNilKey:ICNotesCloudContextDidFetchShareNotificationShareKey];

    v5 = [*(a1 + 32) note];
    v6 = [v5 account];
    v7 = [v6 identifier];
    [v3 ic_setNonNilObject:v7 forNonNilKey:ICNotesCloudContextDidFetchShareNotificationAccountIDKey];

    v8 = +[NSNotificationCenter defaultCenter];
    v9 = ICNotesCloudContextDidFetchShareNotification;
    v10 = *(a1 + 32);
    v11 = [v3 copy];
    [v8 postNotificationName:v9 object:v10 userInfo:v11];

    [*(a1 + 32) setNewlyCreatedShare:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v13 = *(result + 16);

    return v13();
  }

  return result;
}

void sub_1000BC038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000BC068(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 code];
  if (v4 == 29)
  {
    v5 = @"You’ve invited the maximum number of people. Reduce the number of people you’re sharing with before adding more.";
    v6 = @"Maximum Invitations Reached";
  }

  else
  {
    if (v4 != 32)
    {
      return;
    }

    v5 = @"One or more accounts can’t accept this shared note.";
    v6 = @"Invitations Not Sent";
  }

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:v6 value:&stru_100661CF0 table:0];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v14 = +[NSBundle mainBundle];
  v11 = [v14 localizedStringForKey:v5 value:&stru_100661CF0 table:0];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_1000BC3D8(uint64_t a1, int a2)
{
  if (a2)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_1000BA848;
    v28 = sub_1000BA858;
    v3 = [NSUserActivity alloc];
    v29 = [v3 initWithActivityType:ICNotesEditNoteUserActivityType];
    v4 = [[ICNoteUserActivityState alloc] initWithNote:*(a1 + 32)];
    ICNotesUpdateUserActivityForViewingNoteWithState();
    [v25[5] becomeCurrent];
    v5 = [[ICSendNoteActivityViewController alloc] initWithNote:*(a1 + 32) presentingViewController:*(a1 + 40) eventReporter:*(a1 + 48)];
    v6 = [*(a1 + 32) account];
    -[ICSendNoteActivityViewController setIsContentManaged:](v5, "setIsContentManaged:", [v6 isManaged]);

    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = sub_1000BA848;
    v22[4] = sub_1000BA858;
    v23 = 0;
    v7 = [*(a1 + 32) managedObjectContext];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000BC794;
    v19[3] = &unk_1006463C8;
    v21 = v22;
    v20 = *(a1 + 32);
    [v7 performBlockAndWait:v19];

    objc_initWeak(&location, v5);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000BC7E0;
    v16[3] = &unk_1006484D0;
    objc_copyWeak(&v17, &location);
    v16[4] = &v24;
    [(ICSendNoteActivityViewController *)v5 setCompletionWithItemsHandler:v16];
    if (+[UIDevice ic_isVision])
    {
      v8 = -2;
    }

    else
    {
      v8 = 7;
    }

    [(ICSendNoteActivityViewController *)v5 setModalPresentationStyle:v8];
    v9 = [(ICSendNoteActivityViewController *)v5 popoverPresentationController];
    [v9 setSourceItem:*(a1 + 56)];
    [v9 setSourceView:*(a1 + 64)];
    [v9 setSourceRect:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
    [v9 setPermittedArrowDirections:3];
    [v9 _setIgnoreBarButtonItemSiblings:1];
    v10 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000BC920;
    v12[3] = &unk_1006484F8;
    v15 = v22;
    v11 = v5;
    v13 = v11;
    v14 = *(a1 + 72);
    [v10 ic_replacePresentedViewControllerWithViewController:v11 animated:1 completion:v12];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(&v24, 8);
  }
}

void sub_1000BC744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1000BC794(uint64_t a1)
{
  v2 = [*(a1 + 32) serverShareCheckingParent];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000BC7E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((a3 & 1) == 0)
  {
    v10 = +[ICCollaborationController sharedInstance];
    v11 = [WeakRetained note];
    v12 = [v11 objectID];
    [v10 removeShareIfNeededWithOwnedObjectID:v12 countParticipants:1 completionHandler:0];
  }

  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [WeakRetained isCollaborationSelected];
  }

  else
  {
    v13 = 0;
  }

  v14 = [WeakRetained note];
  [ICCollaborationController saveActivityType:v9 isCollaborationSelected:v13 error:v8 completed:a3 forNote:v14];
}

uint64_t sub_1000BC920(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(a1 + 32) note];
  [ICCollaborationController trackShare:v2 forNote:v3];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_1000BCDD4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BCEF4;
  block[3] = &unk_100648548;
  v11 = *(a1 + 32);
  v4 = *(&v11 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v13 = v11;
  v14 = v7;
  v8 = *(a1 + 64);
  v9 = *(a1 + 96);
  v18 = *(a1 + 80);
  v19 = v9;
  v15 = v8;
  v16 = v3;
  v17 = *(a1 + 72);
  v10 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000BCF14(uint64_t a1)
{
  v3 = objc_alloc_init(NSItemProvider);
  v2 = +[ICCollaborationController sharedInstance];
  [v2 registerShareForObject:*(a1 + 32) itemProvider:v3 generateThumbnails:1];

  (*(*(a1 + 40) + 16))();
}

void sub_1000BCF9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) managedObjectContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000BD074;
  v6[3] = &unk_100646030;
  v7 = *(a1 + 32);
  v8 = v3;
  v9 = *(a1 + 40);
  v5 = v3;
  [v4 performBlock:v6];
}

void sub_1000BD074(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BD128;
  v3[3] = &unk_100648598;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [ICDeleteDecisionController deleteSharesInFolder:v2 completion:v3];
}

void sub_1000BD128(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004DD858();
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BD220;
    block[3] = &unk_100645CC8;
    v7 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_1000BD230(void *a1)
{
  v3 = objc_alloc_init(NSItemProvider);
  v2 = +[ICCollaborationController sharedInstance];
  [v2 registerShareForObject:a1[4] itemProvider:v3 generateThumbnails:1 sharePreparationHandler:a1[5]];

  (*(a1[6] + 16))();
}

void sub_1000BD674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BD6A0(uint64_t a1)
{
  v2 = [*(a1 + 32) shareTitle];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000BD6EC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v6 = +[ICCollaborationController sharedInstance];
    v5 = [*(a1 + 32) objectID];
    [v6 removeShareIfNeededWithOwnedObjectID:v5 countParticipants:1 completionHandler:0];
  }
}

void sub_1000BD998(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DD8C8(a1);
  }

  v3 = +[ICCollaborationController sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BDA8C;
  v5[3] = &unk_100645CC8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 fetchShareIfNecessaryForObject:v4 completionHandler:v5];
}

void sub_1000BDA8C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BDB10;
  block[3] = &unk_100645CC8;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1000BDB10(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000BDB28(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000BDBBC;
  v2[3] = &unk_100646D78;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [ICDeleteDecisionController deleteSharesInFolder:v1 completion:v2];
}

void sub_1000BDBBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004DD858();
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BDC90;
    block[3] = &unk_100645CC8;
    v6 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
    v4 = v6;
  }
}

void sub_1000BE588(uint64_t a1)
{
  v2 = [*(a1 + 32) note];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [*(a1 + 32) folder];
  }

  v10 = v4;

  objc_opt_class();
  v5 = [v10 sharedRootObject];
  v6 = ICDynamicCast();

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v7 presentingViewController];
    v9 = [*(a1 + 32) presentingBarButtonItem];
    [v7 showCloudSharingControllerForFolder:v6 presentingViewController:v8 popoverBarButtonItem:v9 presented:0 dismissed:0];
  }
}

void sub_1000BEA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1000BEA70(uint64_t a1)
{
  v2 = [ICPaperStyleSheetCollectionViewController alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained note];
  v5 = [v4 paperStyleType];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v2 initWithInitialPaperStyleType:v5 delegate:v6];

  v8 = [v7 ic_embedInNavigationControllerForModalPresentation];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000BEBB0;
  v10[3] = &unk_1006459B8;
  objc_copyWeak(&v12, (a1 + 40));
  v9 = v8;
  v11 = v9;
  [UIViewController ic_performNotesActivity:v10];

  objc_destroyWeak(&v12);
}

void sub_1000BEBB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained ic_replacePresentedViewControllerWithViewController:*(a1 + 32) animated:1 completion:0];
}

id sub_1000BF320(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [*(a1 + 32) activityType];
    (*(v4 + 16))(v4, a2 == 0, v5);
  }

  v6 = *(a1 + 32);

  return [v6 activityDidFinish:a2 == 0];
}

uint64_t sub_1000BF670(uint64_t a1)
{
  [*(a1 + 32) setIsParsing:0];
  [*(a1 + 32) setShouldCancelParsingProcess:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000BF89C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000BF8C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        (*(v8 + 16))(v8, v6);
      }
    }

    v18 = v6;
    v19 = v5;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v29 = 0u;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        v12 = 0;
        do
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v29 + 1) + 8 * v12);
          v14 = [WeakRetained contentParseQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000BFB4C;
          block[3] = &unk_1006462B0;
          block[4] = v13;
          v15 = WeakRetained;
          v16 = *(a1 + 32);
          v25 = v15;
          v26 = v16;
          v27 = *(a1 + 48);
          v28 = *(a1 + 56);
          dispatch_async(v14, block);

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
    }

    v17 = [WeakRetained contentParseQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000C064C;
    v21[3] = &unk_100645E80;
    v22 = WeakRetained;
    v23 = *(a1 + 64);
    dispatch_async(v17, v21);

    v6 = v18;
    v5 = v19;
  }
}

void sub_1000BFB4C(id *a1)
{
  context = objc_autoreleasePoolPush();
  v28 = a1;
  v27 = [a1[4] objectForKeyedSubscript:@"archiveId"];
  v24 = [a1[4] objectForKeyedSubscript:@"noteId"];
  v2 = a1;
  if ([a1[5] shouldCancelParsingProcess])
  {
    v3 = [a1[6] notesImporterClient];
    [v3 cleanupArchiveId:v27 completionBlock:0];
  }

  else
  {
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = sub_1000C0204;
    v64 = sub_1000C0214;
    v65 = 0;
    v4 = dispatch_semaphore_create(0);
    v5 = [v2[5] notesImporterClient];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1000C021C;
    v57[3] = &unk_100648660;
    v59 = &v60;
    v6 = v4;
    v58 = v6;
    [v5 unarchiveEvernoteNoteFromArchiveId:v27 noteArchiveId:v24 completionBlock:v57];

    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    if ([v28[5] shouldCancelParsingProcess])
    {
      v7 = [v28[6] notesImporterClient];
      [v7 cleanupArchiveId:v27 completionBlock:0];
    }

    else
    {
      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = sub_1000C0204;
      v55 = sub_1000C0214;
      v56 = 0;
      v8 = dispatch_semaphore_create(0);

      v9 = [v28[5] notesImporterClient];
      v10 = [v61[5] content];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000C027C;
      v46[3] = &unk_100648688;
      v49 = &v51;
      v47 = v28[5];
      v50 = &v60;
      v6 = v8;
      v48 = v6;
      [v9 parseHTMLStringFromEvernoteContentString:v10 completionBlock:v46];

      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      if ([v28[5] shouldCancelParsingProcess])
      {
        v11 = [v28[6] notesImporterClient];
        [v11 cleanupArchiveId:v27 completionBlock:0];
      }

      else
      {
        v12 = v28[7];
        if (v12 && (v12[2](), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v22 = [v28[4] objectForKeyedSubscript:@"resourceIds"];
          if (v22 && v52[5])
          {
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            obj = v22;
            v14 = [obj countByEnumeratingWithState:&v42 objects:v66 count:16];
            if (v14)
            {
              v26 = *v43;
              do
              {
                for (i = 0; i != v14; i = i + 1)
                {
                  if (*v43 != v26)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v16 = *(*(&v42 + 1) + 8 * i);
                  v36 = 0;
                  v37 = &v36;
                  v38 = 0x3032000000;
                  v39 = sub_1000C0204;
                  v40 = sub_1000C0214;
                  v41 = 0;
                  v17 = dispatch_semaphore_create(0);

                  v18 = [v28[5] notesImporterClient];
                  v33[0] = _NSConcreteStackBlock;
                  v33[1] = 3221225472;
                  v33[2] = sub_1000C0324;
                  v33[3] = &unk_1006486B0;
                  v35 = &v36;
                  v6 = v17;
                  v34 = v6;
                  [v18 unarchiveEvernoteResourceFromArchiveId:v27 resourceArchiveId:v16 completionBlock:v33];

                  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
                  [v28[6] addAttachmentsInContent:v52[5] forEvernoteResource:v37[5] forNote:v13];

                  _Block_object_dispose(&v36, 8);
                }

                v14 = [obj countByEnumeratingWithState:&v42 objects:v66 count:16];
              }

              while (v14);
            }
          }

          v19 = [v13 managedObjectContext];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_1000C0384;
          v29[3] = &unk_100647028;
          v11 = v13;
          v30 = v11;
          v31 = &v60;
          v32 = &v51;
          [v19 performBlockAndWait:v29];

          v20 = [v28[6] notesImporterClient];
          [v20 cleanupArchiveId:v27 completionBlock:0];

          v21 = v28[8];
          if (v21)
          {
            v21[2](v21, v11);
          }
        }

        else
        {
          v11 = os_log_create("com.apple.notes", "Import");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_1004DDA94();
          }
        }
      }

      _Block_object_dispose(&v51, 8);
    }

    _Block_object_dispose(&v60, 8);
  }

  objc_autoreleasePoolPop(context);
}

void sub_1000C01A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a66, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C0204(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C021C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t sub_1000C027C(uint64_t a1, uint64_t a2)
{
  v3 = [ICNote attributedStringFromHTMLString:a2];
  v4 = [v3 mutableCopy];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 48) + 8) + 40);
  if (v7)
  {
    [*(a1 + 32) addTodoListsIfNeededInContent:v7 forEvernoteNote:*(*(*(a1 + 56) + 8) + 40)];
    [*(a1 + 32) addTitleInContent:*(*(*(a1 + 48) + 8) + 40) forEvernoteNote:*(*(*(a1 + 56) + 8) + 40)];
  }

  v8 = *(a1 + 40);

  return dispatch_semaphore_signal(v8);
}

void sub_1000C0324(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000C0384(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) created];
  if (v2)
  {
    v3 = (a1 + 32);
    [*(a1 + 32) setCreationDate:v2];
  }

  else
  {
    v4 = +[NSDate date];
    v3 = (a1 + 32);
    [*(a1 + 32) setCreationDate:v4];
  }

  v5 = [*(*(*(a1 + 40) + 8) + 40) updated];
  if (v5)
  {
    [*v3 setModificationDate:v5];
  }

  else
  {
    v6 = +[NSDate date];
    [*v3 setModificationDate:v6];
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(a1 + 32) textStorage];
    v8 = [v7 styler];

    v9 = objc_alloc_init(ICTextController);
    [v7 setStyler:v9];

    [v7 setConvertAttributes:1];
    [v7 setWantsUndoCommands:0];
    [v7 replaceCharactersInRange:0 withAttributedString:{0, *(*(*(a1 + 48) + 8) + 40)}];
    [v7 fixupAfterEditing];
    [v7 setConvertAttributes:0];
    if (!v8)
    {
      [v7 setStyler:0];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [*(*(*(a1 + 40) + 8) + 40) tags];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [*v3 account];
        v17 = [ICHashtag hashtagWithDisplayText:v15 account:v16 createIfNecessary:1];

        v18 = [*v3 addHashtagToNoteBodyIfMissing:v17];
        [v18 updateChangeCountWithReason:@"Imported tag"];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }
}

uint64_t sub_1000C064C(uint64_t a1)
{
  [*(a1 + 32) setIsParsing:0];
  [*(a1 + 32) setShouldCancelParsingProcess:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000C0CF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) data];
  v8 = [v2 addAttachmentWithUTI:v3 data:v4 filename:*(a1 + 56)];

  [v8 setTitle:*(a1 + 56)];
  v5 = [ICTextAttachment textAttachmentWithAttachment:v8];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [v8 updateChangeCountWithReason:@"Imported attachment"];
}

void sub_1000C2058()
{
  v0 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DDBF8();
  }

  v1 = +[ICNoteContext sharedContext];
  v2 = [v1 workerManagedObjectContext];

  v4 = [ICDeviceMigrationState deviceMigrationStatesByAccountIDInContext:v2];
  v3 = v4;
  performBlockOnMainThreadAndWait();
}

id sub_1000C2160(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v21;
    *&v4 = 138412290;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [*(a1 + 32) objectForKeyedSubscript:{v8, v17}];
        v10 = [v9 shortValue];

        if (v10 - 2 >= 5)
        {
          if (v10 >= 2u)
          {
            if (v10 == 7)
            {
              v14 = os_log_create("com.apple.notes", "Migration");
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                sub_1004DDC2C(&v18, v19, v14);
              }
            }
          }

          else
          {
            v12 = os_log_create("com.apple.notes", "Migration");
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v15 = [*(a1 + 40) stringFromMigrationState:v10];
              *buf = v17;
              v25 = v15;
              _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Migration state is (%@). Starting migration controller", buf, 0xCu);
            }

            v13 = [*(a1 + 40) sharedController];
          }
        }

        else
        {
          v11 = [*(a1 + 40) sharedController];
          [v11 continueMigrationForICloudAccountID:v8];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v5);
  }

  return +[ICMigrationController migrateLocalAccountIfNecessary];
}

void sub_1000C23F4(id a1)
{
  v1 = objc_alloc_init(ICMigrationController);
  v2 = qword_1006CB2E8;
  qword_1006CB2E8 = v1;
}

void sub_1000C2930(uint64_t a1)
{
  v1 = [ICAccount localAccountInContext:*(a1 + 32)];
  if (v1)
  {
    v2 = v1;
    [ICMigrationUtilities updateLegacyAccountMigrationStateForModernAccount:v1];
    v1 = v2;
  }
}

void sub_1000C3A90(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DDDEC();
  }

  v3 = *(a1 + 40);
  performBlockOnMainThreadAndWait();
}

id sub_1000C3B50(uint64_t a1)
{
  result = [objc_opt_class() currentMigrationStateForAccountID:*(a1 + 40)];
  if ((result - 2) <= 2)
  {
    [*(a1 + 32) startRepeatingImportTimer];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 performFinalRefreshForICloudAccountID:v4];
  }

  return result;
}

void sub_1000C3F68(uint64_t a1, int a2)
{
  v4 = os_log_create("com.apple.notes", "Migration");
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DDFC0();
    }

    [*(a1 + 32) setDidMigrateLocalAccount:1];
    v5 = +[ICNoteContext sharedContext];
    [v5 addOrDeleteLocalAccountIfNecessary];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to import the local account", v6, 2u);
  }
}

void sub_1000C4288(uint64_t a1, int a2)
{
  v4 = os_log_create("com.apple.notes", "Migration");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v5)
    {
      sub_1004DE090();
    }

    [objc_opt_class() setCurrentMigrationState:6 forAccountID:*(a1 + 40)];
    [*(a1 + 32) performFinalPushToCloudKitForAccountID:*(a1 + 40)];
  }

  else
  {
    if (v5)
    {
      sub_1004DE05C();
    }
  }
}

void sub_1000C4720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C4758(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained isCancelled];

  v4 = a1[5];
  v3 = a1[4];
  performBlockOnMainThreadAndWait();
}

void sub_1000C4818(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48));
  }

  v3 = *(a1 + 48);
  v4 = os_log_create("com.apple.notes", "Migration");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3 == 1)
  {
    if (v5)
    {
      sub_1004DE1B8(a1);
    }
  }

  else if (v5)
  {
    sub_1004DE12C(a1);
  }
}

id sub_1000C49F8(uint64_t a1)
{
  v2 = [*(a1 + 32) operationQueue];
  [v2 waitUntilAllOperationsAreFinished];

  if (*(a1 + 40))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C4AC8;
    block[3] = &unk_100645CC8;
    v5 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }

  [*(a1 + 32) resetNotificationObservers];
  [NSObject cancelPreviousPerformRequestsWithTarget:*(a1 + 32)];
  return [*(a1 + 32) resetRetryCounts];
}

void sub_1000C4B4C(uint64_t a1)
{
  v2 = [*(a1 + 32) repeatingImportTimer];

  if (v2)
  {
    v3 = [*(a1 + 32) repeatingImportTimer];
    [v3 invalidate];
  }

  v4 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"startICloudImportOperationIfNecessary" selector:0 userInfo:1 repeats:10.0];
  [*(a1 + 32) setRepeatingImportTimer:v4];
}

void sub_1000C51E0(uint64_t a1, uint64_t a2)
{
  v4 = os_log_create("com.apple.notes", "Migration");
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to perform final push to CloudKit during migration.", buf, 2u);
    }

    [*(a1 + 32) retrySelector:"performFinalPushToCloudKitForAccountID:" accountID:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DE320();
    }

    [*(a1 + 32) clearRetryCountForSelector:"performFinalPushToCloudKitForAccountID:" accountID:*(a1 + 40)];
    v6 = *(a1 + 40);
    performBlockOnMainThreadAndWait();
  }
}

id sub_1000C530C(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);

  return [v2 setCurrentMigrationState:7 forAccountID:v3];
}

void sub_1000C5638(id *a1)
{
  if (([a1[4] isValidObject] & 1) == 0)
  {
    v4 = os_log_create("com.apple.notes", "Migration");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v7 = "Can't push migration state because CloudKit account isn't a valid object";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    goto LABEL_14;
  }

  v2 = [a1[4] userRecordName];

  if (!v2)
  {
    v4 = os_log_create("com.apple.notes", "Migration");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v7 = "Can't push migration state because CloudKit account has no user record name";
    goto LABEL_13;
  }

  v3 = [a1[5] isValidObject];
  v4 = os_log_create("com.apple.notes", "Migration");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 1) == 0)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    *buf = 0;
    v7 = "Can't push migration state because device migration state object is not valid";
    goto LABEL_13;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pushing migration state", buf, 2u);
  }

  v6 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5838;
  block[3] = &unk_100645D40;
  v9 = a1[4];
  v10 = a1[6];
  v11 = a1[5];
  dispatch_async(v6, block);

  v4 = v9;
LABEL_14:
}

void sub_1000C5838(id *a1)
{
  v2 = [a1[4] managedObjectContext];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C5900;
  v3[3] = &unk_100645D40;
  v4 = a1[5];
  v5 = a1[4];
  v6 = a1[6];
  [v2 performBlock:v3];
}

void sub_1000C5900(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v4[0] = a1[5];
  v4[1] = v2;
  v3 = [NSArray arrayWithObjects:v4 count:2];
  [v1 pushCloudObjects:v3 operationGroupName:@"SaveMigrationState" completionHandler:&stru_100648858];
}

void sub_1000C5998(id a1, NSError *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.notes", "Migration");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1004DE354();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished pushing migration state", v5, 2u);
  }
}

void sub_1000C5A38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004DE3C8();
    }
  }

  else
  {
    v8 = [*(a1 + 32) managedObjectContext];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000C5B58;
    v9[3] = &unk_100645BC8;
    v10 = *(a1 + 32);
    v11 = v5;
    v12 = *(a1 + 40);
    [v8 performBlockAndWait:v9];

    v7 = v10;
  }
}

uint64_t sub_1000C5B58(uint64_t a1)
{
  if (([*(a1 + 32) isDeleted] & 1) == 0)
  {
    v2 = [*(a1 + 32) userRecordName];
    if (!v2)
    {
      v3 = *(a1 + 40);
      if (!v3)
      {
        goto LABEL_6;
      }

      v2 = [v3 recordID];
      v4 = [v2 recordName];
      [*(a1 + 32) setUserRecordName:v4];
    }
  }

LABEL_6:
  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void sub_1000C61E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C6204(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C621C(uint64_t a1, int a2)
{
  v4 = a1 + 40;
  v5 = [objc_opt_class() ensureLegacyAccountIsValid:*(*(*(a1 + 40) + 8) + 40)];
  v6 = *(*v4 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = os_log_create("com.apple.notes", "Migration");
  v9 = v8;
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DE494(a1 + 40);
    }

    [*(a1 + 32) disableLegacyAccount:*(*(*(a1 + 40) + 8) + 40)];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(*(*v4 + 8) + 40) objectIdentifier];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to copy notes from legacy account (%@) to iCloud account", &v11, 0xCu);
    }
  }
}

void sub_1000C6C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C6C74(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 48) legacyAccountContext];
  v3 = [ICLegacyAccountUtilities legacyAccountForICloudACAccount:v2 context:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000C7018(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = os_log_create("com.apple.notes", "Migration");
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DE770(a1);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1004DE6C4(a1, v5, v7);
  }
}

void sub_1000C7F10(id a1)
{
  v1 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Migration took too long and our background task expired. This is not good.", v2, 2u);
  }
}

void sub_1000C7F84(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DEA78();
  }

  v3 = +[UIApplication sharedApplication];
  [v3 endBackgroundTask:*(a1 + 32)];
}

void sub_1000C8EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C8EE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C8EFC(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) noteBrowseViewController];
  v3 = [v2 modernViewContext];
  v4 = [v3 objectWithID:*(a1 + 40)];
  v8 = ICCheckedDynamicCast();

  if (([v8 isDeletedOrInTrash] & 1) == 0)
  {
    v5 = [ICAppURLUtilities appURLForNote:v8];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_1000C8FD8(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) noteBrowseViewController];
  v3 = [v2 legacyViewContext];
  v4 = [v3 objectWithID:*(a1 + 40)];
  v8 = ICCheckedDynamicCast();

  if (([v8 isDeletedOrInTrash] & 1) == 0)
  {
    v5 = [ICAppURLUtilities appURLForHTMLNote:v8];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_1000C9160(uint64_t a1)
{
  v2 = +[ICCloudContext sharedContext];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C9204;
  v3[3] = &unk_100645CC8;
  v4 = *(a1 + 32);
  [v2 cancelEverythingWithCompletionHandler:v3];
}

void sub_1000C9204(uint64_t a1)
{
  v2 = +[ICNoteContext sharedContext];
  [v2 purgeEverything];

  v3 = +[ICAppDelegate sharedInstance];
  v4 = [v3 viewControllerManagers];
  [v4 enumerateObjectsUsingBlock:&stru_100648930];

  +[ICCache purgeAllCaches];
  +[ICLRUCache purgeAllCaches];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v5;
    performBlockOnMainThreadAndWait();
  }
}

void sub_1000C9300(id a1, ICViewControllerManager *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(ICViewControllerManager *)a2 visibleViewsUndoManager:a3];
  [v4 removeAllActions];
}

void sub_1000C9480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C9498(id a1)
{
  v1 = +[ICNoteContext sharedContext];
  [v1 deleteEverything];
}

void sub_1000C94E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = a2;
  v5 = +[ICCloudContext notesZoneID];
  v12 = v5;
  v6 = [NSArray arrayWithObjects:&v12 count:1];
  v7 = [v4 identifier];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C9630;
  v8[3] = &unk_100648998;
  v11 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  [v3 deleteZonesWithZoneIDs:v6 accountID:v7 completionHandler:v8];
}

id sub_1000C9630(uint64_t a1)
{
  v2 = *(a1 + 56);
  objc_sync_enter(v2);
  ++*(*(*(a1 + 48) + 8) + 24);
  objc_sync_exit(v2);

  v3 = *(*(*(a1 + 48) + 8) + 24);
  result = [*(a1 + 32) count];
  if (v3 >= result)
  {
    v5 = +[ICAppDelegate sharedInstance];
    v6 = [v5 viewControllerManagers];
    [v6 enumerateObjectsUsingBlock:&stru_100648970];

    +[ICCache purgeAllCaches];
    +[ICLRUCache purgeAllCaches];
    result = *(a1 + 40);
    if (result)
    {
      v7 = *(result + 2);

      return v7();
    }
  }

  return result;
}

void sub_1000C9720(id a1, ICViewControllerManager *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(ICViewControllerManager *)a2 visibleViewsUndoManager:a3];
  [v4 removeAllActions];
}

void sub_1000C9894(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C996C;
  v5[3] = &unk_100648A38;
  v6 = v2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = v4;
  v9 = v4;
  [v6 cancelEverythingWithCompletionHandler:v5];
}

void sub_1000C996C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C9A44;
  v5[3] = &unk_100648A10;
  v9 = *(a1 + 64);
  v6 = v2;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v6 deleteRecordZonesWithZoneIDs:v3 accountID:v4 markZonesAsUserPurged:1 completionHandler:v5];
}

void sub_1000C9A44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 56) showAlertForError:a2 title:@"Error deleting zone(s)"];
  }

  v3 = *(a1 + 32);
  v4 = +[ICCloudContext notesZoneID];
  v11 = v4;
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  v6 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C9B84;
  v9[3] = &unk_1006489E8;
  v8 = *(a1 + 48);
  v7 = v8;
  v10 = v8;
  [v3 fetchRecordZoneChangesForZoneIDs:v5 accountID:v6 reason:@"DebugMenu-DeleteEverything" completionHandler:v9];
}

void sub_1000C9B84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] != 28)
  {
    [*(a1 + 40) showAlertForError:v4 title:@"Error syncing after deleting zone(s)"];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v5;
    performBlockOnMainThreadAndWait();
  }
}

void sub_1000C9D7C(uint64_t a1)
{
  v8 = [UIAlertController alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  v1 = +[NSBundle mainBundle];
  v2 = [v1 localizedStringForKey:@"OK" value:&stru_100661CF0 table:0];
  v3 = [UIAlertAction actionWithTitle:v2 style:0 handler:0];
  [v8 addAction:v3];

  v4 = +[UIApplication sharedApplication];
  v5 = [v4 delegate];
  v6 = [v5 window];
  v7 = [v6 rootViewController];
  [v7 presentViewController:v8 animated:1 completion:0];
}

void sub_1000CA128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CA140(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  [ICMigrationController setCurrentMigrationState:0 forAccountID:v4];
  [v3 setDidChooseToMigrate:0];
  [v3 setDidFinishMigration:0];
  [v3 setDidMigrateOnMac:0];
  [v3 updateChangeCountWithReason:@"Reset migration"];
  v5 = +[ICAccountUtilities sharedInstance];
  v6 = [v5 accountStore];
  v7 = [v6 accountWithIdentifier:v4];

  if (v7)
  {
    v8 = [v3 didChooseToMigrate];
    v9 = [v3 didFinishMigration];
    v10 = [v3 didMigrateOnMac];
    v11 = [v7 accountStore];
    [ICMigrationUtilities saveDidChooseToMigrate:v8 didFinishMigration:v9 didMigrateOnMac:v10 toACAccount:v7 inStore:v11 completionHandler:0];
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "Internal");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1004DEAF0(v4, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = *(a1 + 72);
  v20 = +[ICCloudContext sharedContext];
  v21 = [v20 allZoneIDs];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000CA3C8;
  v29[3] = &unk_100648B38;
  v30 = v4;
  v33 = *(a1 + 64);
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v24 = *(a1 + 48);
  v25 = *(a1 + 56);
  *&v26 = v24;
  *(&v26 + 1) = v25;
  *&v27 = v22;
  *(&v27 + 1) = v23;
  v31 = v27;
  v32 = v26;
  v28 = v4;
  [v19 deleteZonesWithZoneIDs:v21 accountID:v28 completionHandler:v29];
}

void sub_1000CA3C8(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Internal");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DEB5C();
  }

  v3 = +[ICCloudContext sharedContext];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CA528;
  v10[3] = &unk_100648B10;
  v4 = *(a1 + 32);
  v14 = *(a1 + 72);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 64);
  [v3 syncWithReason:@"DebugMenu-ResetMigration" completionHandler:v10];
}

void sub_1000CA528(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ICCloudContext errorsFromError:v3];
  v5 = [v4 ic_containsObjectPassingTest:&stru_100648A78];

  v6 = os_log_create("com.apple.notes", "Internal");
  v7 = v6;
  if (!v3 || (v5 & 1) != 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DEC5C();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1004DEBD4();
    }

    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1000CA778;
    v19 = &unk_1006476B0;
    v21 = *(a1 + 80);
    v20 = v3;
    performBlockOnMainThreadAndWait();
    v7 = v20;
  }

  v8 = *(a1 + 80);
  objc_sync_enter(v8);
  v9 = --*(*(*(a1 + 72) + 8) + 24);
  objc_sync_exit(v8);

  if (!v9)
  {
    v10 = [*(a1 + 40) managedObjectContext];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000CA78C;
    v11[3] = &unk_100648AE8;
    v12 = *(a1 + 48);
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    [v10 performBlockAndWait:v11];
  }
}

void sub_1000CA78C(uint64_t a1)
{
  v2 = +[ICNoteContext sharedContext];
  [v2 purgeEverything];

  [ICMigrationController setDidMigrateLocalAccount:0];
  [ICMigrationController setDidChooseToMigrateLocalAccount:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CA944;
  v10[3] = &unk_100648AA0;
  v3 = *(a1 + 32);
  v11 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:v10];
  performBlockOnMainThreadAndWait();
  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 managedObjectContext];
  v6 = [ICAccount localAccountInContext:v5];

  if (v6)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:ICMigrationStateWillChangeNotification object:0];

    [ICAccount deleteAccount:v6];
    v8 = +[ICNoteContext sharedContext];
    [v8 save];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:ICMigrationStateDidChangeNotification object:0];
  }

  if (*(a1 + 48))
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000CA944(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDidChooseToMigrate:0];
  [v3 setDidFinishMigration:0];
  [v3 setDidMigrateOnMac:0];
  [v3 updateChangeCountWithReason:@"Reset migration"];
  v4 = +[ICAccountUtilities sharedInstance];
  v5 = [v4 accountStore];
  v6 = [v5 accountWithIdentifier:*(a1 + 32)];

  if (v6)
  {
    v7 = [v3 didChooseToMigrate];
    v8 = [v3 didFinishMigration];
    v9 = [v3 didMigrateOnMac];
    v10 = [v6 accountStore];
    [ICMigrationUtilities saveDidChooseToMigrate:v7 didFinishMigration:v8 didMigrateOnMac:v9 toACAccount:v6 inStore:v10 completionHandler:0];
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "Internal");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1004DECD4();
    }
  }
}

void sub_1000CAA94(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:ICMigrationStateDidChangeNotification object:0];
}

void sub_1000CABB8(uint64_t a1)
{
  v2 = +[ICCloudContext sharedContext];
  [v2 enumerateAllCloudObjectsInContext:*(a1 + 32) batchSize:10 saveAfterBatch:1 usingBlock:&stru_100648B80];
}

void sub_1000CAC20(id a1, ICCloudObject *a2, BOOL *a3)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICCheckedDynamicCast();

  if (([v4 markedForDeletion] & 1) == 0)
  {
    [v4 updateChangeCountWithReason:@"Manually updated change count"];
  }
}

void sub_1000CACF0(id a1, NSManagedObjectContext *a2)
{
  v2 = a2;
  v3 = +[ICCloudContext sharedContext];
  [v3 enumerateAllCloudObjectsInContext:v2 batchSize:10 saveAfterBatch:1 usingBlock:&stru_100648BE0];
}

void sub_1000CAD64(id a1, ICCloudObject *a2, BOOL *a3)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICCheckedDynamicCast();

  [v4 setNeedsToBeFetchedFromCloud:1];
}

void sub_1000CAF24(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:ICNoteEntityName];
  v3 = [NSPredicate predicateWithFormat:@"account == nil"];
  [v2 setPredicate:v3];

  v4 = *(a1 + 32);
  v24 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v24];
  v6 = v24;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "Internal");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004DED40(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = os_log_create("com.apple.notes", "Internal");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Deleting invalid notes: %@", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(a1 + 32) deleteObject:{*(*(&v20 + 1) + 8 * v19), v20}];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v17);
  }
}

void sub_1000CB268(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [ICAccount allCloudKitAccountsInContext:v2];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CB3A0;
  v7[3] = &unk_100648C08;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v8 = v4;
  v11 = v13;
  v12 = v5;
  v6 = v3;
  v9 = v6;
  v10 = *(a1 + 40);
  [v6 enumerateObjectsUsingBlock:v7];

  _Block_object_dispose(v13, 8);
}

void sub_1000CB3A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_1000CB76C;
  v38 = sub_1000CB77C;
  v39 = 0;
  v5 = [*(a1 + 32) managedObjectContext];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000CB784;
  v31[3] = &unk_1006463C8;
  v33 = &v34;
  v19 = v3;
  v32 = v19;
  [v5 performBlockAndWait:v31];

  v6 = +[NSMutableSet set];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v35[5];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v40 count:16];
  if (v8)
  {
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        if (([v6 containsObject:v11] & 1) == 0)
        {
          v12 = [*(a1 + 32) managedObjectContext];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1000CB7EC;
          v23[3] = &unk_100645DB8;
          v23[4] = v11;
          v24 = v4;
          v25 = *(a1 + 32);
          v26 = v6;
          [v12 performBlockAndWait:v23];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v27 objects:v40 count:16];
    }

    while (v8);
  }

  v13 = [*(a1 + 32) managedObjectContext];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000CBB4C;
  v20[3] = &unk_100645BA0;
  v14 = v6;
  v21 = v14;
  v15 = v4;
  v22 = v15;
  [v13 performBlockAndWait:v20];

  v16 = *(a1 + 64);
  objc_sync_enter(v16);
  ++*(*(*(a1 + 56) + 8) + 24);
  objc_sync_exit(v16);

  v17 = *(*(*(a1 + 56) + 8) + 24);
  if (v17 >= [*(a1 + 40) count])
  {
    v18 = *(a1 + 48);
    if (v18)
    {
      (*(v18 + 16))();
    }
  }

  _Block_object_dispose(&v34, 8);
}

uint64_t sub_1000CB76C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000CB784(uint64_t a1)
{
  v5 = [*(a1 + 32) notes];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000CB7EC(id *a1)
{
  v1 = a1 + 4;
  v26 = [a1[4] legacyContentHashAtImport];
  if ([v26 length])
  {
    v2 = [*v1 folder];
    v3 = [*v1 account];
    v4 = [v3 trashFolder];

    if (v2 != v4)
    {
      v5 = os_log_create("com.apple.notes", "Internal");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DEDAC(a1, v1, v5);
      }

      v6 = [a1[4] textStorage];
      v7 = [v6 string];
      v8 = [v7 ic_md5];

      v9 = [a1[4] legacyContentHashAtImport];
      v10 = [NSPredicate predicateWithFormat:@"legacyContentHashAtImport == %@", v9];
      v34[0] = v10;
      v11 = [NSPredicate predicateWithFormat:@"SELF != %@", a1[4]];
      v34[1] = v11;
      v12 = [NSArray arrayWithObjects:v34 count:2];

      v27 = v12;
      v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];
      v14 = [a1[6] managedObjectContext];
      v15 = [ICNote notesMatchingPredicate:v13 context:v14];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v30;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v29 + 1) + 8 * i);
            v22 = [v21 textStorage];
            v23 = [v22 string];
            v24 = [v23 ic_md5];
            v25 = [v24 isEqualToString:v8];

            if (v25)
            {
              [a1[7] addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v18);
      }
    }
  }

  else
  {
  }
}

void sub_1000CBB4C(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v19;
    *&v3 = 138412546;
    v16 = v3;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 folder];
        v9 = [v7 account];
        v10 = [v9 trashFolder];

        if (v8 != v10)
        {
          v11 = os_log_create("com.apple.notes", "Internal");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = *(a1 + 40);
            v13 = [v7 loggingDescription];
            *buf = v16;
            v23 = v12;
            v24 = 2112;
            v25 = v13;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deleting duplicate in account ID %@: %@", buf, 0x16u);
          }

          v14 = [v7 account];
          v15 = [v14 trashFolder];
          [v7 setFolder:v15];

          [v7 updateChangeCountWithReason:@"Deleted migrated duplicate"];
        }
      }

      v4 = [v1 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v4);
  }
}

void sub_1000CBDAC(id a1)
{
  v1 = objc_alloc_init(ICBrowseAttachmentsDragAndDropDelegate);
  v2 = qword_1006CB2F8;
  qword_1006CB2F8 = v1;
}

id sub_1000CC2B8(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v2 object], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass))
    {
      objc_opt_class();
      v6 = ICDynamicCast();
      v3 = [v6 object];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

id sub_1000CC3A0(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  return v3;
}

id sub_1000CC3FC(id a1, id a2)
{
  v2 = a2;
  if ([ICDeleteDecision isHTMLNote:v2])
  {
    v3 = v2;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v2 object], v4 = objc_claimAutoreleasedReturnValue(), v5 = +[ICDeleteDecision isHTMLNote:](ICDeleteDecision, "isHTMLNote:", v4), v4, v5))
    {
      objc_opt_class();
      v6 = ICDynamicCast();
      v3 = [v6 object];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

id sub_1000CC4D8(id a1, id a2)
{
  v2 = a2;
  if ([ICDeleteDecision isHTMLFolder:v2])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

const __CFString *sub_1000CC62C(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return @"ICDeleteDecisionAdditionalStepNone";
  }

  else
  {
    return off_100648DA8[a1 - 1];
  }
}

void sub_1000CD18C(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();
  v4 = [v3 markedForDeletion];

  if (v4)
  {
    [*(a1 + 32) removeObject:v5];
  }
}

void sub_1000CD210(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 isSharedViaICloud] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_1000CD288(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v6 = ICDynamicCast();

  v4 = *(a1 + 32);
  v5 = [ICDeleteDecision decisionObjectsForFolder:v6];
  [v4 addObjectsFromArray:v5];
}

void sub_1000CD324(uint64_t a1, void *a2)
{
  v16 = a2;
  if (([v16 isSharedViaICloud] & 1) == 0)
  {
    [*(a1 + 32) setContainsUnsharedObjects:1];
  }

  objc_opt_class();
  v3 = ICDynamicCast();
  v4 = [v3 folder];
  v5 = [v4 isTrashFolder];

  if (v5)
  {
    [*(a1 + 40) addObject:v16];
  }

  if ([v16 isPasswordProtected])
  {
    v6 = 48;
LABEL_7:
    [*(a1 + v6) addObject:v16];
    goto LABEL_8;
  }

  if ([v16 isSharedViaICloud])
  {
    if ([v16 isSharedRootObject])
    {
      v7 = [v16 isOwnedByCurrentUser];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (v7)
      {
        if (isKindOfClass)
        {
          v6 = 56;
          goto LABEL_7;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = 64;
          goto LABEL_7;
        }
      }

      else
      {
        if (isKindOfClass)
        {
          v6 = 72;
          goto LABEL_7;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = 80;
          goto LABEL_7;
        }
      }
    }

    else
    {
      if ([v16 isSharedReadOnly])
      {
        v6 = 88;
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = 96;
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = 104;
        goto LABEL_7;
      }
    }
  }

  else
  {
    objc_opt_class();
    v9 = ICDynamicCast();
    v10 = [v9 isSmartFolder];

    if (v10)
    {
      v6 = 112;
      goto LABEL_7;
    }

    objc_opt_class();
    v11 = ICDynamicCast();
    v12 = [v11 visibleNotesIncludingChildFolders];
    v13 = [v12 count];

    if (v13)
    {
      v6 = 120;
      goto LABEL_7;
    }

    objc_opt_class();
    v14 = ICDynamicCast();
    v15 = [v14 isTrashFolder];

    if (v15)
    {
      v6 = 128;
      goto LABEL_7;
    }
  }

LABEL_8:
}

void sub_1000CD734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CD750(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();
  v4 = [v3 isDeleted];

  objc_opt_class();
  v5 = ICDynamicCast();
  v6 = v5;
  if (v5 && ([v5 isDeletedOrInTrash] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (v4)
  {
    [*(a1 + 32) removeObject:v7];
  }
}

void sub_1000CDD68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000CDE24;
  v3[3] = &unk_100645C78;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:v3];

  objc_destroyWeak(&v4);
}

void sub_1000CDE24(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 iCloudShareBarButtonItem];
  [v2 createAndPresentCloudSharingControllerBySender:v1];
}

void sub_1000CE068(uint64_t a1)
{
  v2 = +[ICCollaborationUIController sharedInstance];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) ic_windowScene];
  v5 = +[ICNoteContext sharedContext];
  v6 = [v5 managedObjectContext];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000CE1C8;
  v14[3] = &unk_100648E18;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v15 = v7;
  v16 = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CE34C;
  v11[3] = &unk_100648E40;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = v9;
  v13 = v10;
  [v2 fetchAndAcceptShareMetadataWithURL:v3 windowScene:v4 managedObjectContext:v6 alertBlock:v14 showObjectBlock:v11];
}

void sub_1000CE1C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CE2A4;
  v10[3] = &unk_100645DB8;
  v11 = *(a1 + 32);
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_1000CE2A4(uint64_t a1)
{
  [*(a1 + 32) setShowsActivityIndicator:0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = [*(a1 + 56) viewControllerManager];
  v4 = [v6 window];
  v5 = [v4 rootViewController];
  [UIAlertController ic_showAlertWithTitle:v2 message:v3 viewController:v5];
}

void sub_1000CE34C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CE400;
  block[3] = &unk_100645D40;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000CE400(uint64_t a1)
{
  [*(a1 + 32) setShowsActivityIndicator:0];
  v2 = [*(a1 + 40) viewControllerManager];
  v4 = [v2 searchController];

  if (v4)
  {
    [v4 cancelSearch];
  }

  v3 = [*(a1 + 40) viewControllerManager];
  [v3 selectObjectWithObjectID:*(a1 + 48)];
}

id sub_1000CE588(uint64_t a1)
{
  result = [*(a1 + 32) isEditing];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 setEditing:0 animated:1];
  }

  return result;
}

id sub_1000CE618(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 applicationState];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [WeakRetained note];
    v6 = [v5 folder];
    v7 = [v6 isTrashFolder];

    v8 = [WeakRetained note];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 account];
      v4 = [v10 defaultFolder];
    }

    else
    {
      v4 = [v8 folder];
    }
  }

  return v4;
}

void sub_1000CE6FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = v3;
  v4 = v3;
  performBlockOnMainThreadAndWait();
}

void sub_1000CE7A0(uint64_t a1)
{
  if ([*(a1 + 32) ic_isViewVisible] && objc_msgSend(*(a1 + 32), "isEditing"))
  {
    v2 = [*(a1 + 32) textView];
    v3 = [v2 selectedRange];
    v5 = v4;

    v6 = [*(a1 + 32) textStorage];
    [v6 replaceCharactersInRange:v3 withAttributedString:{v5, *(a1 + 40)}];

    v7 = [*(a1 + 32) note];
    [v7 updateModificationDateAndChangeCountAndSaveImmediately];

    v8 = [*(a1 + 40) length];
    v9 = [*(a1 + 32) textView];
    [v9 setSelectedRange:{v3, v8}];
  }
}

void sub_1000CF0C4(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000CF338;
  v16 = sub_1000CF348;
  v17 = 0;
  v2 = [*(a1 + 32) noteContainer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [objc_opt_class() modernWorkerContext];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000CF350;
    v11[3] = &unk_100645FE0;
    v11[4] = *(a1 + 32);
    v11[5] = &v12;
    [v4 performBlockAndWait:v11];
LABEL_5:

    goto LABEL_6;
  }

  v5 = [*(a1 + 32) noteCollection];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  if (v6)
  {
    v4 = +[NoteContext sharedContext];
    v7 = [v4 managedObjectContext];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000CF43C;
    v10[3] = &unk_100645FE0;
    v10[4] = *(a1 + 32);
    v10[5] = &v12;
    [v7 performBlockAndWait:v10];

    goto LABEL_5;
  }

  v8 = [*(a1 + 32) virtualSmartFolder];

  if (v8)
  {
    v9 = v13[5];
    v13[5] = 0;
  }

LABEL_6:
  [*(a1 + 32) setSubfoldersCount:v13[5]];
  performBlockOnMainThread();
  _Block_object_dispose(&v12, 8);
}

uint64_t sub_1000CF338(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000CF350(uint64_t a1)
{
  v2 = [*(a1 + 32) noteContainer];
  v9 = [v2 objectID];

  if ([v9 ic_isModernFolderType])
  {
    v3 = [objc_opt_class() modernWorkerContext];
    v4 = [v3 ic_existingObjectWithID:v9];

    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 visibleNoteContainerChildrenCount]);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = *(*(a1 + 40) + 8);
    v4 = *(v8 + 40);
    *(v8 + 40) = &off_10066DF50;
  }
}

void sub_1000CF43C(uint64_t a1)
{
  v2 = +[NoteContext sharedContext];
  v3 = [v2 managedObjectContext];
  v4 = [*(a1 + 32) noteCollection];
  v5 = [v4 objectID];
  v11 = [v3 ic_existingObjectWithID:v5];

  v6 = +[NoteContext sharedContext];
  v7 = [v6 storesInCollection:v11];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count]);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_1000CF540(uint64_t a1)
{
  v2 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
  v3 = *(a1 + 32);
  if (v2)
  {

    [v3 updateTextAndStatus];
  }

  else
  {
    v4 = [v3 configurationState];
    [v3 updateAccessoriesUsingState:v4];
  }
}

void sub_1000CF654(uint64_t a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000CF338;
  v20 = sub_1000CF348;
  v21 = 0;
  if ([*(a1 + 32) showsNoteCount])
  {
    v2 = [*(a1 + 32) noteContainer];

    if (v2)
    {
      v3 = [objc_opt_class() modernWorkerContext];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000CF93C;
      v15[3] = &unk_100645FE0;
      v15[4] = *(a1 + 32);
      v15[5] = &v16;
      [v3 performBlockAndWait:v15];
LABEL_8:

      goto LABEL_9;
    }

    v5 = [*(a1 + 32) noteCollection];

    if (v5)
    {
      v3 = [objc_opt_class() legacyWorkerContext];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000CFA04;
      v14[3] = &unk_100645FE0;
      v14[4] = *(a1 + 32);
      v14[5] = &v16;
      [v3 performBlockAndWait:v14];
      goto LABEL_8;
    }

    v6 = [*(a1 + 32) virtualSmartFolder];

    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [*(a1 + 32) virtualSmartFolder];
    v8 = [objc_opt_class() modernWorkerContext];
    v9 = [v7 visibleNoteCountInContext:v8];

    v10 = [*(a1 + 32) virtualSmartFolder];
    v11 = [objc_opt_class() modernWorkerContext];
    v12 = [v10 visibleInvitationCountInContext:v11];

    v13 = [NSNumber numberWithInteger:&v9[v12]];
    v4 = v17[5];
    v17[5] = v13;
  }

  else
  {
    v4 = v17[5];
    v17[5] = 0;
  }

LABEL_9:
  [*(a1 + 32) setNoteCount:v17[5]];
  performBlockOnMainThread();
  _Block_object_dispose(&v16, 8);
}

void sub_1000CF93C(uint64_t a1)
{
  v2 = [objc_opt_class() modernWorkerContext];
  v3 = [*(a1 + 32) noteContainer];
  v4 = [v3 objectID];
  v8 = [v2 ic_existingObjectWithID:v4];

  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 visibleNotesCount]);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1000CFA04(uint64_t a1)
{
  v2 = [objc_opt_class() legacyWorkerContext];
  v3 = [*(a1 + 32) noteCollection];
  v4 = [v3 objectID];
  v10 = [v2 ic_existingObjectWithID:v4];

  v5 = [v10 predicateForNotes];
  v6 = [objc_opt_class() legacyWorkerContext];
  v7 = [NSNumber numberWithUnsignedInteger:[NoteContext countOfVisibleNotesMatchingPredicate:v5 context:v6]];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_1000CFB10(uint64_t a1)
{
  v2 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
  v3 = *(a1 + 32);
  if (v2)
  {

    [v3 updateTextAndStatus];
  }

  else
  {
    v4 = [v3 configurationState];
    [v3 updateAccessoriesUsingState:v4];
  }
}

void sub_1000D0250(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.notes.update-counts", v3);
  v2 = qword_1006CB310;
  qword_1006CB310 = v1;
}

void sub_1000D02F8(id a1)
{
  v3 = +[ICNoteContext sharedContext];
  v1 = [v3 workerManagedObjectContext];
  v2 = qword_1006CB320;
  qword_1006CB320 = v1;
}

void sub_1000D0398(id a1)
{
  v1 = [[NoteContext alloc] initWithPrivateQueue];
  v2 = qword_1006CB330;
  qword_1006CB330 = v1;

  v3 = [qword_1006CB330 managedObjectContext];
  v4 = qword_1006CB338;
  qword_1006CB338 = v3;
}

void sub_1000D0BE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000D0C08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained unsupportedFolderButton];
  [WeakRetained onUnsupportedFolderInfoPressed:v1];
}

void sub_1000D0C68(uint64_t a1)
{
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v5 = [*(a1 + 32) actionButton];
  [v5 setBounds:{CGRectZero.origin.x, y, width, height}];

  v6 = [*(a1 + 32) actionButton];
  [v6 sizeToFit];
}

NSCollectionLayoutSection *__cdecl sub_1000D1FE8(id a1, int64_t a2, NSCollectionLayoutEnvironment *a3)
{
  v3 = a3;
  v4 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:2];
  [v4 setHeaderMode:1];
  v5 = [NSCollectionLayoutSection sectionWithListConfiguration:v4 layoutEnvironment:v3];

  return v5;
}

void sub_1000D2574(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1000D25B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_copyWeak(&to, (a1 + 32));
  v10 = objc_loadWeakRetained(&to);
  v11 = [v10 shouldShowRecentItems];

  v12 = objc_loadWeakRetained(&to);
  v13 = v12;
  if (v11)
  {
    v14 = [v12 recentItems];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];
  }

  else
  {
    v16 = [v12 filteredSections];
    v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(v8, "section")}];

    v14 = [v17 items];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];
    v13 = v17;
  }

  [v7 setItem:v15];
  objc_destroyWeak(&to);
}

void sub_1000D2738(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_copyWeak(&to, (a1 + 32));
  v10 = objc_loadWeakRetained(&to);
  v11 = [v10 shouldShowRecentItems];

  if (v11)
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1000D28D0;
    v19 = &unk_100645C78;
    objc_copyWeak(&v20, &to);
    [v7 setClearButtonHandler:&v16];
    objc_destroyWeak(&v20);
    v12 = @"Recent";
  }

  else
  {
    v13 = objc_loadWeakRetained(&to);
    v14 = [v13 filteredSections];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v9, "section")}];

    v12 = [v15 title];
    [v7 setClearButtonHandler:0];
  }

  [v7 setTitle:{v12, v16, v17, v18, v19}];

  objc_destroyWeak(&to);
}

void sub_1000D28A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D28D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained clearRecentItems];
}

void sub_1000D2B44(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 identifier];
  v4 = [v3 items];

  v5 = [v4 ic_map:&stru_100649070];
  [*(a1 + 32) appendItemsWithIdentifiers:v5 intoSectionWithIdentifier:v6];
}

id sub_1000D2F0C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) indexOfObject:a2];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) objectAtIndexedSubscript:v3];
  }

  return v4;
}

BOOL sub_1000D4704(id a1, ICAccount *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(ICAccount *)a2 accountData:a3];
  v5 = [v4 supportsV1Neo];

  return v5;
}

uint64_t sub_1000D4A20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 title];
  v5 = [v4 lowercaseString];

  v6 = [v3 subtitle];

  v7 = [v6 lowercaseString];

  if ([v5 containsString:*(a1 + 32)])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v7 containsString:*(a1 + 32)];
  }

  return v8;
}

void sub_1000D4C64(id a1)
{
  v1 = +[ICAppDelegate sharedInstance];
  [v1 dismissAllowNotificationsWarmingSheet];
}

void sub_1000D54C8(uint64_t a1)
{
  +[ICCloudThrottlingPolicy resetSavedPolicyState];
  [ICCloudConfiguration setDefaultConfigurationURL:*(a1 + 32)];
  v2 = +[ICCloudConfiguration sharedConfiguration];
  [v2 loadConfigurationFromURL:*(a1 + 32)];
}

void sub_1000D55D8(id a1)
{
  v1 = objc_alloc_init(ICDebugSpinner);
  [(ICDebugSpinner *)v1 show];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000D5680;
  v3[3] = &unk_100645E30;
  v4 = v1;
  v2 = v1;
  [ICDebugUtilities purgeEverythingWithCompletionHandler:v3];
}

void sub_1000D56AC(id a1)
{
  v1 = objc_alloc_init(ICDebugSpinner);
  [(ICDebugSpinner *)v1 show];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000D5754;
  v3[3] = &unk_100645E30;
  v4 = v1;
  v2 = v1;
  [ICDebugUtilities deleteEverythingWithCompletionHandler:v3];
}

id sub_1000D5DC4(uint64_t a1, uint64_t a2)
{
  v3 = [@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXZY0123456789" length];
  for (i = [NSMutableString stringWithCapacity:20];
  {
    [i appendFormat:@"%C", objc_msgSend(@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXZY0123456789", "characterAtIndex:", arc4random() % v3)];
  }

  return i;
}

void sub_1000D6410(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6494;
  block[3] = &unk_100645E30;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000D64C0(id a1)
{
  [ICMigrationController setDidChooseToMigrateLocalAccount:0];
  [ICMigrationController setDidMigrateLocalAccount:0];
  v1 = +[ICNoteContext sharedContext];
  v2 = [v1 managedObjectContext];
  v3 = [ICAccount localAccountInContext:v2];

  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = ICMigrationStateWillChangeNotification;
    v13 = @"ICCurrentDeviceMigrationStateChangeWasForLocalAccountKey";
    v14 = &__kCFBooleanTrue;
    v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v4 postNotificationName:v5 object:0 userInfo:v6];

    [ICAccount deleteAccount:v3];
    v7 = +[ICNoteContext sharedContext];
    [v7 save];

    v8 = +[NSNotificationCenter defaultCenter];
    v9 = ICMigrationStateDidChangeNotification;
    v11 = @"ICCurrentDeviceMigrationStateChangeWasForLocalAccountKey";
    v12 = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [v8 postNotificationName:v9 object:0 userInfo:v10];
  }
}

void sub_1000D68A4(id a1)
{
  v1 = objc_alloc_init(ICDebugSpinner);
  [(ICDebugSpinner *)v1 show];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000D694C;
  v3[3] = &unk_100645E30;
  v4 = v1;
  v2 = v1;
  [ICDebugUtilities startFreshWithCompletionHandler:v3];
}

void sub_1000D6A38(uint64_t a1)
{
  v2 = +[ICDatabaseStateHandler stateDictionary];
  v23 = 0;
  v3 = [NSPropertyListSerialization dataWithPropertyList:v2 format:200 options:0 error:&v23];
  v4 = v23;
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = NSTemporaryDirectory();
    v9 = [NSURL fileURLWithPath:v8];

    v10 = +[NSDate date];
    [v10 timeIntervalSinceReferenceDate];
    v12 = [NSString localizedStringWithFormat:@"statedump-%ld", v11];
    v13 = [v9 URLByAppendingPathComponent:v12 isDirectory:0];

    v7 = [v13 URLByAppendingPathExtension:@"plist"];

    v22 = 0;
    LOBYTE(v10) = [v3 writeToURL:v7 options:0 error:&v22];
    v6 = v22;
    if (v10)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D6CB0;
      block[3] = &unk_100645DB8;
      v18 = *(a1 + 32);
      v19 = v7;
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v20 = v14;
      v21 = v15;
      dispatch_async(&_dispatch_main_q, block);

      v16 = v18;
    }

    else
    {
      v16 = os_log_create("com.apple.notes", "Internal");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1004DEEB0();
      }
    }
  }

  else
  {
    v6 = v4;
    v7 = os_log_create("com.apple.notes", "Internal");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004DEF18();
    }
  }
}

void sub_1000D6CB0(uint64_t a1)
{
  [*(a1 + 32) hide];
  v2 = [UIActivityViewController alloc];
  v9 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v9 count:1];
  v4 = [v2 initWithActivityItems:v3 applicationActivities:0];

  v8[0] = UIActivityTypeOpenInIBooks;
  v8[1] = ICActivityTypeShareToNote;
  v8[2] = UIActivityTypeSharePlay;
  v5 = [NSArray arrayWithObjects:v8 count:3];
  [v4 setExcludedActivityTypes:v5];

  v6 = *(a1 + 48);
  v7 = [v4 popoverPresentationController];
  [v7 setSourceView:v6];

  [*(a1 + 56) presentViewController:v4 animated:1 completion:0];
}

void sub_1000D70B4(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:(*(a1 + 32) & 1) == 0 forKey:ICViewControllerUseNonContiguousLayoutDefaultKey];
}

void sub_1000D7290(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.notes", "Internal");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1004DEF80();
    }
  }
}

BOOL sub_1000D75C0(id a1, ICAccount *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(ICAccount *)a2 accountData:a3];
  v5 = [v4 supportsV1Neo];

  return v5;
}

void sub_1000D7A44(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v3 = +[ICLockedNotesModeMigrator sharedMigrator];
    v4 = *(a1 + 64);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000D7BA8;
    v13[3] = &unk_1006492D8;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *v11 = *(a1 + 48);
    v8 = v11[1];
    *&v9 = v6;
    *(&v9 + 1) = v7;
    v15 = *v11;
    v14 = v9;
    v16 = *(a1 + 64);
    [v3 migrateLockedNotesInAccount:v6 toMode:v4 window:v5 completionHandler:v13];
  }

  else
  {
    v10 = *(a1 + 48);
    v12 = [*(a1 + 56) ic_subarrayFromIndex:1];
    [v10 migrateAccounts:v12 toMode:*(a1 + 64)];
  }
}

void sub_1000D7BA8(uint64_t a1)
{
  v2 = [ICAuthenticationAlert switchedModeInfoAlertWithAccount:*(a1 + 32)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D7C6C;
  v5[3] = &unk_1006492B0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5[4] = *(a1 + 48);
  v6 = v4;
  v7 = *(a1 + 64);
  [v2 presentInWindow:v3 completionHandler:v5];
}

void sub_1000D7C6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) ic_subarrayFromIndex:1];
  [v2 migrateAccounts:v3 toMode:*(a1 + 48)];
}

void sub_1000D7E24(uint64_t a1)
{
  v4 = +[ICPasswordUtilities sharedInstance];
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  [v4 showChangePasswordDialogueFromDisplayWindow:v3 account:*(a1 + 40) completionHandler:0];
}

void sub_1000D8128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D8140(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000D8158(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAutocapitalizationType:0];
  [v3 setAutocorrectionType:1];
  [v3 setSecureTextEntry:1];
  v4 = ICUnlocalizedString();
  [v3 setPlaceholder:v4];

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1000D81EC(uint64_t a1)
{
  v2 = +[ICAuthenticationState sharedState];
  v16 = [v2 cachedMainKeyForObject:*(a1 + 32)];

  v3 = [*(a1 + 32) cryptoStrategy];
  v4 = [*(*(*(a1 + 40) + 8) + 40) text];
  v5 = [v3 mainKeyForPassphrase:v4];

  if (v5)
  {
    v6 = +[ICAuthenticationState sharedState];
    v7 = [*(a1 + 32) identifier];
    [v6 setCachedMainKey:v5 forIdentifier:v7];

    v8 = [[NSAttributedString alloc] initWithString:@"Hello\tWorld"];
    v9 = [*(a1 + 32) addTableAttachmentWithText:v8];
    [v9 saveMergeableDataIfNeeded];
    v10 = +[ICAuthenticationState sharedState];
    v11 = [*(a1 + 32) identifier];
    [v10 setCachedMainKey:v16 forIdentifier:v11];

    v12 = +[ICAuthenticationState sharedState];
    v13 = [v9 identifier];
    [v12 setCachedMainKey:0 forIdentifier:v13];

    v14 = [[ICAttachmentInsertionController alloc] initWithNote:*(a1 + 32)];
    v15 = [v14 addAttachment:v9];
  }
}

void sub_1000D863C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D8654(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAutocapitalizationType:0];
  [v3 setAutocorrectionType:1];
  [v3 setSecureTextEntry:1];
  v4 = ICUnlocalizedString();
  [v3 setPlaceholder:v4];

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1000D86E8(uint64_t a1)
{
  v9 = objc_alloc_init(ICCryptoConvergenceControllerConfiguration);
  v2 = [*(*(*(a1 + 40) + 8) + 40) text];
  [v9 setDivergedPassphrase:v2];

  v3 = +[ICCryptoConvergenceController sharedController];
  v4 = [*(a1 + 32) objectID];
  v5 = [v3 convergeAttachmentsInNoteWithID:v4 configuration:v9];

  if (v5)
  {
    v6 = +[ICNoteContext sharedContext];
    v7 = [v6 managedObjectContext];
    [v7 ic_saveWithLogDescription:@"Converged attachments"];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:ICAuthenticationStateDidAuthenticateNotification object:0];
  }
}

void sub_1000D8A38(id a1)
{
  v1 = [[ICSearchQueryOperation alloc] initWithQueryString:@"*==*" rankingQueries:&__NSArray0__struct];
  v2 = [ICSearchQueryOperation newOperationQueueWithName:@"com.apple.notes.log-search-index-queue"];
  [v2 addOperation:v1];
  [v2 waitUntilAllOperationsAreFinished];
  v3 = os_log_create("com.apple.notes", "Internal");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [v1 results];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "All indexed items: %@", &v5, 0xCu);
  }
}

void sub_1000D8E0C(uint64_t a1)
{
  v2 = [ICFolder smartFolderWithQuery:*(a1 + 32) titleComponents:&off_10066E308 account:*(a1 + 40)];
  [v2 updateChangeCountWithReason:@"Created partially supported Smart Folder"];
  [*(a1 + 48) ic_save];
}

void sub_1000D8F28(uint64_t a1)
{
  v2 = [ICHashtag allVisibleHashtagsInContext:*(a1 + 32)];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) markForDeletion];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) ic_save];
}

void sub_1000D9444(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000D94C0;
  v2[3] = &unk_100645E30;
  v3 = v1;
  [v3 performBlock:v2];
}

void sub_1000D9BA0(uint64_t a1)
{
  v2 = +[ICAppRemovalServiceClient sharedClient];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000D9C34;
  v3[3] = &unk_100646638;
  v3[4] = *(a1 + 32);
  [v2 removeAppWithReply:v3];
}

void sub_1000D9C34(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    exit(0);
  }

  v4 = v2;
  v3 = v2;
  dispatchMainAfterDelay();
}

void sub_1000D9CD8(uint64_t a1)
{
  v2 = [*(a1 + 32) localizedDescription];
  v6 = [UIAlertController alertControllerWithTitle:@"Error in App Removal" message:v2 preferredStyle:1];

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"OK" value:&stru_100661CF0 table:0];
  v5 = [UIAlertAction actionWithTitle:v4 style:0 handler:0];
  [v6 addAction:v5];

  [*(a1 + 40) presentViewController:v6 animated:1 completion:0];
}

void sub_1000DA244(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [*(a1 + 32) note];
  v4 = [v3 allDrawings];
  [PKHandwritingDebugUtility presentHandwritingDebugViewFromViewController:v2 allDrawings:v4 tiledView:*(a1 + 40)];

  [*(a1 + 32) activityDidFinish:1];
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [*(a1 + 32) activityType];
    (*(v5 + 16))(v5, 1, v6);
  }
}

void sub_1000DB2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000DB2F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained diffableDataSource];
    v9 = [v8 snapshot];
    v10 = [v9 sectionIdentifiers];
    v11 = [v10 objectAtIndexedSubscript:a2];

    if (v11 == @"ICNoteSearchDataSourceAttachmentSectionIdentifier")
    {
      v12 = [v7 attachmentSectionForLayoutEnvironment:v5];
    }

    else
    {
      if (v11 == @"ICNoteSearchDataSourceSuggestionsSectionIdentifier")
      {
        v12 = [v7 notesListSectionForSectionIndex:a2 layoutEnvironment:v5];
      }

      else
      {
        v12 = [v7 notesSectionForSectionIndex:a2 layoutEnvironment:v5];
        if (+[UIDevice ic_isVision])
        {
          [v12 contentInsets];
          [v12 setContentInsets:0.0];
        }
      }

      [v7 setHeaderOfSectionLayout:v12];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1000DBA78(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) window];
  [v5 setFrame:{v1, v2, v3, v4}];
}

uint64_t sub_1000DBAE4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000DBD18(uint64_t a1)
{
  v3 = [*(a1 + 32) window];
  v1 = [v3 rootViewController];
  v2 = [v1 view];
  [v2 setAlpha:1.0];
}

uint64_t sub_1000DBD88(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000DBE98(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  [v2 setHidden:1];

  [*(a1 + 32) setWindow:0];
  v3 = [*(a1 + 32) window];
  [v3 setWindowScene:0];

  v4 = [*(a1 + 32) presentingWindow];
  [v4 makeKeyAndVisible];

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_1000DC234(uint64_t a1)
{
  [*(a1 + 32) activityDidFinish:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) activityType];
    (*(v2 + 16))(v2, 1, v3);
  }
}

id sub_1000DC60C(void *a1)
{
  [ICDateHeadersUtilities setQueryDateHeadersType:a1[6]];
  v2 = a1[4];
  v3 = a1[5];

  return [v2 performActivityWithCompletion:v3];
}

id sub_1000DC72C()
{
  v0 = +[NotesApp sharedNotesApp];
  v1 = [v0 noteContext];

  return v1;
}

void sub_1000DCA90(uint64_t a1)
{
  v2 = [*(a1 + 32) clearButtonHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) clearButtonHandler];
    v3[2]();
  }
}

void sub_1000DE584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a30);
  objc_destroyWeak((v32 - 112));
  _Unwind_Resume(a1);
}

void sub_1000DE600(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) copy:WeakRetained];
}

void sub_1000DE654(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained shareAttachment:WeakRetained];
}

void sub_1000DE698(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showInNote:WeakRetained];
}

void sub_1000DE6DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openAttachmentInspector:WeakRetained];
}

void sub_1000DFC64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1000DFC94(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  objc_copyWeak(&v6, a1 + 6);
  v5 = a1[5];
  performBlockOnMainThread();

  objc_destroyWeak(&v6);
}

void sub_1000DFD7C(uint64_t a1)
{
  if (*(a1 + 32) && ([*(a1 + 40) value] & 1) == 0)
  {
    v3 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got device list response", buf, 2u);
    }

    v4 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setPrimaryAccountDevices:v4];

    v2 = objc_loadWeakRetained((a1 + 56));
    [v2 stopIndicatorAnimationIfNecessaryForDeviceCheckIndicator:*(a1 + 48)];
  }

  else
  {
    v2 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device list request was cancelled or failed", v6, 2u);
    }
  }
}

void sub_1000DFE94(uint64_t a1)
{
  if ([*(a1 + 32) value])
  {
    WeakRetained = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Migration state fetch request was cancelled", v6, 2u);
    }

    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got migration state response.", buf, 2u);
  }

  v4 = [WeakRetained timeoutTimer];
  if (v4)
  {

LABEL_12:
    [WeakRetained stopIndicatorAnimationIfNecessaryForDeviceCheckIndicator:*(a1 + 40)];
    goto LABEL_13;
  }

  if (([WeakRetained userDidContinue]& 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DF334(v5);
  }

LABEL_13:
}

void sub_1000E10C8(uint64_t a1)
{
  v2 = ICKeyPathFromSelector();
  v3 = ICKeyPathFromSelector();
  v4 = [NSPredicate predicateWithFormat:@"%K == nil OR %K == nil", v2, v3];
  v5 = [*(a1 + 32) workerContext];
  v6 = [ICNote ic_objectIDsMatchingPredicate:v4 context:v5];

  v7 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v22 = [v6 count];
    v23 = 2112;
    v24 = v2;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found %lu notes with no value for %@ or %@", buf, 0x20u);
  }

  v8 = +[NSMutableSet set];
  v9 = +[NSMutableSet set];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000E1428;
  v18[3] = &unk_1006494F0;
  v18[4] = *(a1 + 32);
  v10 = v8;
  v19 = v10;
  v11 = v9;
  v20 = v11;
  [v6 enumerateObjectsUsingBlock:v18];
  v12 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v10 count];
    v14 = [v11 count];
    *buf = 134218240;
    v22 = v13;
    v23 = 2048;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Found %lu notes with a checklist and %lu notes with a checklist in progress", buf, 0x16u);
  }

  v15 = [*(a1 + 32) workerContext];
  [v15 reset];

  [*(a1 + 32) updateNotesWithObjectIDs:v10 usingValue:1 forKey:v2];
  v16 = [NSMutableSet setWithArray:v6];
  [v16 minusSet:v10];
  [*(a1 + 32) updateNotesWithObjectIDs:v16 usingValue:0 forKey:v2];
  [*(a1 + 32) updateNotesWithObjectIDs:v11 usingValue:1 forKey:v3];
  v17 = [NSMutableSet setWithArray:v6];
  [v17 minusSet:v11];
  [*(a1 + 32) updateNotesWithObjectIDs:v17 usingValue:0 forKey:v3];
}

void sub_1000E1428(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 workerContext];
  v13 = [v5 ic_existingObjectWithID:v4];

  [v13 updateDerivedAttributesIfNeeded];
  v6 = [v13 hasChecklist];
  LODWORD(v4) = [v6 BOOLValue];

  if (v4)
  {
    v7 = a1[5];
    v8 = [v13 objectID];
    [v7 addObject:v8];
  }

  v9 = [v13 hasChecklistInProgress];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = a1[6];
    v12 = [v13 objectID];
    [v11 addObject:v12];
  }
}

void sub_1000E2A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000E2A9C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 didChooseToMigrate];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1000E33B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id sub_1000E33E0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained isCellReorderableForIdentifier:v3];

  return v5;
}

void sub_1000E3434(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v36 = v3;
  obj = [v3 sectionTransactions];
  v37 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v37)
  {
    v35 = *v50;
    do
    {
      v4 = 0;
      do
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v4;
        v5 = [*(*(&v49 + 1) + 8 * v4) finalSnapshot];
        v6 = [v36 difference];
        v7 = [v6 insertions];
        v40 = v6;
        v8 = [v6 removals];
        v9 = [v7 arrayByAddingObjectsFromArray:v8];

        v10 = v5;
        v39 = v9;
        v38 = [NSSet setWithArray:v9];
        v11 = [v38 ic_compactMap:&stru_100649580];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v46;
          v44 = v10;
          v42 = v11;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v46 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v45 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 ic_isEntityOfClass:objc_opt_class()] && objc_msgSend(v10, "containsItem:", v16))
              {
                v17 = [WeakRetained diffableDataSource];
                v18 = [v17 snapshot];
                v19 = [v18 sectionIdentifierForSectionContainingItemIdentifier:v16];

                objc_opt_class();
                LOBYTE(v17) = objc_opt_isKindOfClass();
                v20 = [v10 parentOfChild:v16];
                v21 = v20;
                if (v17)
                {
                  if (v20)
                  {
                    v22 = [v10 childrenOfParent:v20];
                    v23 = [v22 indexOfObject:v16];
                  }

                  else
                  {
                    v23 = [v10 indexOfItem:v16];
                  }

                  v25 = [v10 parentOfChild:v16];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || (v26 = [v25 ic_isModernFolderType], !v25) || (v26 & 1) == 0)
                  {
                    v27 = [v19 noteContainerObjectID];

                    v25 = v27;
                  }

                  v21 = v25;
                }

                else if (v20)
                {
                  v24 = [v10 childrenOfParent:v20];
                  v23 = [v24 indexOfObject:v16];
                }

                else
                {
                  v21 = v19;
                  v23 = 0;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v28 = [v21 accountObjectID];
                }

                else
                {
                  v28 = v21;
                }

                v29 = v28;
                v30 = [WeakRetained actualChildIndexForSnapshotIndex:v23 inDestinationObjectID:v28 sectionSnapshot:v44];
                v53 = v16;
                v31 = [NSArray arrayWithObjects:&v53 count:1];
                [WeakRetained performDropOfFolderObjectIDs:v31 atFolderObjectID:v29 atIndex:v30];

                v32 = [WeakRetained cellForItemIdentifier:v16];
                v33 = ICProtocolCast();
                if (objc_opt_respondsToSelector())
                {
                  [v33 updateAccessories];
                }

                v10 = v44;
                v11 = v42;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v45 objects:v54 count:16];
          }

          while (v13);
        }

        v4 = v41 + 1;
      }

      while ((v41 + 1) != v37);
      v37 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v37);
  }
}

BOOL sub_1000E3A6C(id a1, UICellAccessory *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_1000E464C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ic_isModernType])
  {
    v4 = [*(a1 + 32) modernManagedObjectContext];
    v5 = [v4 objectWithID:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL sub_1000E4F2C(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  v5 = ICDynamicCast();

  LOBYTE(v4) = [v5 sectionType] == 3;
  return v4;
}

void sub_1000E4F8C(uint64_t a1)
{
  v2 = [*(a1 + 32) movableNoteObjectIDsIn:*(a1 + 40) forDropIntoSection:*(a1 + 48)];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [*(a1 + 32) modernManagedObjectContext];
        v9 = [v8 objectWithID:v7];

        [v9 changePinStatusIfPossible];
        v10 = [*(a1 + 32) presentingViewController];
        v11 = [v10 eventReporter];

        [v11 submitNotePinEventForModernNote:v9 contextPath:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v12 = [*(a1 + 32) modernManagedObjectContext];
  [v12 ic_save];
}

id sub_1000E510C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 modernManagedObjectContext];
  v5 = [v4 objectWithID:v3];

  return v5;
}

id sub_1000E574C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  if (*(a1 + 80) == 1)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000E5A74;
    v26[3] = &unk_100646870;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v27 = v3;
    v28 = v4;
    v5 = [UIAction ic_removeActionWithHandler:v26];
    [v2 addObject:v5];
  }

  if (*(a1 + 81) == 1)
  {
    v6 = *(a1 + 64) == *(a1 + 72);
    v7 = [*(a1 + 48) count];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000E5B68;
    v22[3] = &unk_100649708;
    v8 = *(a1 + 56);
    v25 = v6;
    v9 = *(a1 + 40);
    v23 = v8;
    v24 = v9;
    v10 = [UIAction ic_pinNoteActionPinned:v6 numberOfElements:v7 withHandler:v22];
    [v2 addObject:v10];
  }

  if (*(a1 + 82) == 1)
  {
    v11 = [*(a1 + 48) count];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000E5C84;
    v20[3] = &unk_100646870;
    v20[4] = *(a1 + 40);
    v21 = *(a1 + 56);
    v12 = [UIAction ic_moveActionWithWithNumberOfElements:v11 handler:v20];
    [v2 addObject:v12];
  }

  if (*(a1 + 83) == 1)
  {
    v13 = [*(a1 + 48) count];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000E5C94;
    v18[3] = &unk_100646870;
    v18[4] = *(a1 + 40);
    v19 = *(a1 + 56);
    v14 = [UIAction ic_deleteActionWithNumberOfElements:v13 handler:v18];
    [v2 addObject:v14];
  }

  v15 = [v2 copy];
  v16 = [UIMenu menuWithTitle:&stru_100661CF0 image:0 identifier:0 options:1 children:v15];

  return v16;
}

void sub_1000E5A74(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) performRemoveActionWithInvitation:{*(*(&v7 + 1) + 8 * v6), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1000E5B68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E5C00;
  v4[3] = &unk_1006496E0;
  v5 = *(a1 + 48);
  v3 = [v2 ic_compactMap:v4];
  [*(a1 + 40) performPinActionWithNotes:v3];
}

void *sub_1000E5C00(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICDynamicCast();

  if ((*(a1 + 32) & 1) != 0 || ([v4 isPinned] & 1) == 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

void sub_1000E5C94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 performDeleteActionWithObjects:v2 completion:0];
}

ICFolderPreviewViewController *sub_1000E6174(void *a1)
{
  if (a1[4])
  {
    goto LABEL_2;
  }

  if (a1[5])
  {
    v2 = [[ICFolderPreviewViewController alloc] initWithFolder:a1[5]];
LABEL_7:
    v1 = v2;
    goto LABEL_8;
  }

  if (a1[6])
  {
    v2 = [[ICNotePreviewViewController alloc] initWithNote:a1[6]];
    goto LABEL_7;
  }

  if (!a1[7])
  {
LABEL_2:
    v1 = 0;
    goto LABEL_8;
  }

  v1 = [[NotePreviewController alloc] initWithNote:a1[7]];
  [(ICFolderPreviewViewController *)v1 setupPreview];
LABEL_8:

  return v1;
}

id sub_1000E6220(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [*(a1 + 40) contextMenuForInvitation:v4 sourceView:*(a1 + 48)];
LABEL_9:
    v9 = v5;
    goto LABEL_10;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v5 = [*(a1 + 40) contextMenuForFolder:v6 sourceView:*(a1 + 48)];
    goto LABEL_9;
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    v5 = [*(a1 + 40) contextMenuForModernNote:v7 sourceView:*(a1 + 48)];
    goto LABEL_9;
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    v5 = [*(a1 + 40) contextMenuForLegacyNote:v8 sourceView:*(a1 + 48)];
    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

void sub_1000E6490(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 cellForItemIdentifier:v3];
  v12 = [v2 indexPathForCell:v4];

  [*(a1 + 32) ic_deselectAllItems];
  [*(a1 + 32) selectItemAtIndexPath:v12 animated:1 scrollPosition:0];
  v5 = [*(a1 + 32) delegate];
  LOBYTE(v3) = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 collectionView:*(a1 + 32) didSelectItemAtIndexPath:v12];
  }

  v7 = [*(a1 + 32) delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = [*(a1 + 32) delegate];
  v9 = [v8 collectionView:*(a1 + 32) canPerformPrimaryActionForItemAtIndexPath:v12];

  if (v9)
  {
    v10 = [*(a1 + 32) delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v7 = [*(a1 + 32) delegate];
      [v7 collectionView:*(a1 + 32) performPrimaryActionForItemAtIndexPath:v12];
LABEL_7:
    }
  }
}

id sub_1000E6704(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ic_isModernNoteType])
  {
    v4 = [*(a1 + 32) modernManagedObjectContext];
    v5 = [v4 objectWithID:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000E6820(uint64_t a1)
{
  v2 = [*(a1 + 32) diffableDataSource];
  v3 = [v2 snapshot];

  v4 = [v3 itemIdentifiers];
  v5 = [v4 containsObject:*(a1 + 40)];

  if (v5)
  {
    v8 = *(a1 + 40);
    v6 = [NSArray arrayWithObjects:&v8 count:1];
    [v3 reloadItemsWithIdentifiers:v6];

    v7 = [*(a1 + 32) diffableDataSource];
    [v7 applySnapshot:v3 animatingDifferences:1];
  }
}

NSManagedObjectID *__cdecl sub_1000E6A64(id a1, UIDragItem *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = [(UIDragItem *)v2 localObject];

  v4 = ICDynamicCast();

  return v4;
}

id sub_1000E72D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ic_isEntityOfClass:objc_opt_class()])
  {
    v4 = [*(a1 + 32) modernManagedObjectContext];
    v5 = [v4 objectWithID:v3];

    LODWORD(v4) = *(a1 + 40);
    if (v4 == [v5 isPinned] || (objc_msgSend(v5, "isPinnable") & 1) == 0 && (*(a1 + 40) & 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1000E7498(uint64_t a1)
{
  v2 = [*(a1 + 32) modernManagedObjectContext];
  v3 = [v2 objectWithID:*(a1 + 40)];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 48);
  v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v18 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * v6);
        v8 = [*(a1 + 32) modernManagedObjectContext];
        v9 = [v8 objectWithID:v7];

        v10 = [ICMoveDecisionController alloc];
        v29 = v9;
        v11 = [NSArray arrayWithObjects:&v29 count:1];
        v12 = [*(a1 + 32) presentingViewController];
        v13 = [(ICMoveDecisionController *)v10 initWithSourceObjects:v11 presentingViewController:v12];

        [(ICMoveDecisionController *)v13 setDestination:v3];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000E76E8;
        v19[3] = &unk_100649880;
        v24 = *(a1 + 56);
        v14 = v3;
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);
        v20 = v14;
        v21 = v15;
        v22 = v7;
        v23 = v16;
        [(ICMoveDecisionController *)v13 performDecisionWithCompletion:v19];

        v6 = v6 + 1;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }
}

void sub_1000E76E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) visibleSubFolders];
  v6 = [v5 count];

  if (v4 < v6)
  {
    v7 = [*(a1 + 40) modernManagedObjectContext];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000E79B4;
    v26[3] = &unk_100649858;
    v27 = v3;
    v8 = *(a1 + 32);
    v9 = *(a1 + 64);
    v10 = *(a1 + 40);
    v28 = v8;
    v29 = v10;
    v30 = v9;
    [v7 performBlockAndWait:v26];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000E7A58;
    v24[3] = &unk_100645BA0;
    v25 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v24);
    v11 = [*(a1 + 40) diffableDataSource];
    v12 = [v11 snapshot];
    v13 = [v12 sectionIdentifierForSectionContainingItemIdentifier:*(a1 + 48)];

    v14 = [*(a1 + 40) diffableDataSource];
    v15 = [v14 snapshotForSection:v13];

    if ([v15 containsItem:*(a1 + 56)])
    {
      v16 = [v15 isExpanded:*(a1 + 56)];
    }

    else
    {
      v16 = 0;
    }

    if ([*(a1 + 40) isEditing] & 1) != 0 || (objc_msgSend(*(a1 + 40), "diffableDataSource"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "snapshot"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "itemIdentifiers"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v16 | ~objc_msgSend(v19, "containsObject:", *(a1 + 48)), v19, v18, v17, (v20))
    {
      [*(a1 + 40) reloadCellAfterDelayForObjectID:*(a1 + 48)];
    }

    else
    {
      v21 = [*(a1 + 40) diffableDataSource];
      v22 = [v21 snapshot];
      v31 = *(a1 + 48);
      v23 = [NSArray arrayWithObjects:&v31 count:1];
      [v22 reconfigureItemsWithIdentifiers:v23];
    }
  }
}