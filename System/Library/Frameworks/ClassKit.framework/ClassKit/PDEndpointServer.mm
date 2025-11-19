@interface PDEndpointServer
- (BOOL)isCurrentUserStudent:(id *)a3;
- (BOOL)isInternalWithError:(id *)a3;
- (NSMutableDictionary)statusReport;
- (PDDaemon)daemon;
- (PDDatabase)database;
- (PDEndpointServer)initWithClient:(id)a3 daemon:(id)a4;
- (id)_clientScopedPredicate:(id)a3 forEntityClass:(Class)a4;
- (id)_createHandoutAssignedItemFrom:(id)a3 withError:(id *)a4;
- (id)_createMainAppContext:(id *)a3;
- (id)asmRosterSearchFinishBlock:(id)a3 query:(id)a4 asmConfig:(id)a5 buffer:(id)a6 buffSize:(unint64_t)a7 nextOffset:(unint64_t)a8;
- (id)userNotificationCenter;
- (int64_t)_authorizationStatusActivityWithID:(id)a3;
- (int64_t)_authorizationStatusForContext:(id)a3;
- (int64_t)_authorizationStatusForContextWithObjectID:(id)a3;
- (int64_t)_authorizationStatusForHandoutAssignedItem:(id)a3;
- (int64_t)_authorizationStatusForObject:(id)a3;
- (void)_invalidateObserver:(id)a3;
- (void)_performQuery:(id)a3 querySpecification:(id)a4 issueServerRequest:(BOOL)a5 completion:(id)a6;
- (void)databaseChanged:(id)a3;
- (void)dealloc;
- (void)entitled_publishCollaborationStateChanges:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)remote_accountChanged;
- (void)remote_addAdminRequestor:(id)a3 completion:(id)a4;
- (void)remote_addAuthorizationStatus:(unint64_t)a3 forContextAtPath:(id)a4 completion:(id)a5;
- (void)remote_addAuthorizationStatus:(unint64_t)a3 forHandoutAssignedItem:(id)a4 completion:(id)a5;
- (void)remote_addOrganization:(id)a3 withLocations:(id)a4 completion:(id)a5;
- (void)remote_authTreeForAttachment:(id)a3 withCompletion:(id)a4;
- (void)remote_authTreeWithCompletion:(id)a3;
- (void)remote_authorizationStatusForContextAtPath:(id)a3 completion:(id)a4;
- (void)remote_authorizationStatusForHandoutAssignedItem:(id)a3 completion:(id)a4;
- (void)remote_canSearchRostersWithCompletion:(id)a3;
- (void)remote_cloudKitThumbnailUrlSuitableForOpeningForAsset:(id)a3 completion:(id)a4;
- (void)remote_cloudKitUrlSuitableForOpeningForAsset:(id)a3 downloadObserver:(id)a4 completion:(id)a5;
- (void)remote_cloudKitUrlSuitableForStreamingAsset:(id)a3 downloadObserver:(id)a4 completion:(id)a5;
- (void)remote_collaborationStatesForObjectWithID:(id)a3 classID:(id)a4 forOwnersWithRole:(unint64_t)a5 completion:(id)a6;
- (void)remote_collaborationStatesForObjectWithID:(id)a3 ownerPersonID:(id)a4 completion:(id)a5;
- (void)remote_contextsMatchingIdentifierPath:(id)a3 parentContextID:(id)a4 completion:(id)a5;
- (void)remote_createShareIfNeededForURL:(id)a3 completion:(id)a4;
- (void)remote_currentUserContentStoreCacheDirectoryURLWithCompletion:(id)a3;
- (void)remote_currentUserIsStudent:(id)a3;
- (void)remote_currentUserWithCompletion:(id)a3;
- (void)remote_databasePathWithCompletion:(id)a3;
- (void)remote_deleteAdminRequestID:(id)a3 completion:(id)a4;
- (void)remote_deleteAppWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)remote_deleteBackingStoreForAsset:(id)a3 completion:(id)a4;
- (void)remote_deleteCollectionRelatedObjectsWithCompletion:(id)a3 completion:(id)a4;
- (void)remote_deleteOrganization:(id)a3 completion:(id)a4;
- (void)remote_deleteProgressReportingCapabilitiesForContextID:(id)a3 completion:(id)a4;
- (void)remote_deleteThumbnailBlobForContextID:(id)a3 completion:(id)a4;
- (void)remote_deregisterDataObserverWithID:(id)a3 completion:(id)a4;
- (void)remote_executeRosterQuery:(id)a3 executeQuery:(id)a4 completion:(id)a5;
- (void)remote_featureIsEnabled:(int)a3 completion:(id)a4;
- (void)remote_fetchAndCompleteActiveAssignedActivitiesForContextPath:(id)a3 withCompletion:(id)a4;
- (void)remote_fetchAppBasedAssignmentUsage:(id)a3 completion:(id)a4;
- (void)remote_fetchCollectionItemsWithCompletion:(id)a3;
- (void)remote_fetchCollectionsWithCompletion:(id)a3;
- (void)remote_fetchContextsForContextIDs:(id)a3 completion:(id)a4;
- (void)remote_fetchCountOfActivitiesForContextID:(id)a3 completion:(id)a4;
- (void)remote_fetchDeletedObjectIDsNewerThanDate:(id)a3 completion:(id)a4;
- (void)remote_fetchHandoutAttachmentForDocumentURL:(id)a3 withCompletion:(id)a4;
- (void)remote_fetchOrphanedAssetsWithCompletion:(id)a3;
- (void)remote_fetchProgressReportingCapabilitiesForContextID:(id)a3 completion:(id)a4;
- (void)remote_fetchReportsWithPredicate:(id)a3 completion:(id)a4;
- (void)remote_fetchSurveyAnswer:(id)a3 responderIDs:(id)a4 completion:(id)a5;
- (void)remote_fetchThumbnailBlobForContextID:(id)a3 completion:(id)a4;
- (void)remote_fetchTransparencyMessageInfoForAttachmentID:(id)a3 withCompletion:(id)a4;
- (void)remote_fetchTransparencyMessageInfoWithCompletion:(id)a3;
- (void)remote_getBootstrapMode:(id)a3;
- (void)remote_getClassKitCatalogEnvironmentWithCompletion:(id)a3;
- (void)remote_getCurrentUseriCloudQuotaInfoWithCompletion:(id)a3;
- (void)remote_getDevModeWithCompletion:(id)a3;
- (void)remote_getServerInternalStateInfoWithCompletion:(id)a3;
- (void)remote_getServerSyncStatusWithCompletion:(id)a3;
- (void)remote_getUserDefaultForDefaultNamed:(id)a3 completion:(id)a4;
- (void)remote_getUserDefaultsConfigurationDictionaryWithCompletion:(id)a3;
- (void)remote_listAppsWithCompletion:(id)a3;
- (void)remote_mainAppContextWithCompletion:(id)a3;
- (void)remote_publishAdminRequests:(id)a3 withRequestor:(id)a4 adminRequestAccounts:(id)a5 completion:(id)a6;
- (void)remote_publishClass:(id)a3 membersToInsert:(id)a4 membersToDelete:(id)a5 completion:(id)a6;
- (void)remote_publishCollaborationStateChanges:(id)a3 completion:(id)a4;
- (void)remote_publishHandoutGraph:(id)a3 completion:(id)a4;
- (void)remote_publishSurveyAnswers:(id)a3 completion:(id)a4;
- (void)remote_recreateDatabaseWithCompletion:(id)a3;
- (void)remote_recreateDevelopmentDatabaseWithCompletion:(id)a3;
- (void)remote_registerDataObserver:(id)a3 withID:(id)a4 querySpecification:(id)a5 oldChangeTag:(unint64_t)a6 completion:(id)a7;
- (void)remote_relayRequestWithData:(id)a3 requestType:(unint64_t)a4 fileHandle:(id)a5 completion:(id)a6;
- (void)remote_removeAuthorizationStatus:(unint64_t)a3 forContextAtPath:(id)a4 completion:(id)a5;
- (void)remote_removeAuthorizationStatus:(unint64_t)a3 forHandoutAssignedItem:(id)a4 completion:(id)a5;
- (void)remote_renewCredentialsWithCompletion:(id)a3;
- (void)remote_repairHandoutAttachments:(id)a3 completion:(id)a4;
- (void)remote_saveInsightEvents:(id)a3 completion:(id)a4;
- (void)remote_saveObjects:(id)a3 saveResponse:(id)a4 completion:(id)a5;
- (void)remote_setBootstrapMode:(int)a3 url:(id)a4 completion:(id)a5;
- (void)remote_setClassKitCatalogEnvironment:(int64_t)a3 completion:(id)a4;
- (void)remote_setDevMode:(int)a3 completion:(id)a4;
- (void)remote_setOverrideBundleIdentifier:(id)a3 completion:(id)a4;
- (void)remote_setShouldSyncTeacherBrowsedContexts:(BOOL)a3 completion:(id)a4;
- (void)remote_setUserDefaultValue:(id)a3 forDefaultNamed:(id)a4 completion:(id)a5;
- (void)remote_shouldSyncTeacherBrowsedContextsWithCompletion:(id)a3;
- (void)remote_startActivityFailed:(id)a3 completion:(id)a4;
- (void)remote_startAppActivity:(id)a3 bundleID:(id)a4 activityType:(unint64_t)a5 completion:(id)a6;
- (void)remote_statusWithCompletion:(id)a3;
- (void)remote_studentActivityForAttachmentsWithIDs:(id)a3 completion:(id)a4;
- (void)remote_submittableURLByCurrentUser:(id)a3 completion:(id)a4;
- (void)remote_syncBootstrapWithCompletion:(id)a3;
- (void)remote_syncFetchWithCompletion:(id)a3;
- (void)remote_syncPushWithCompletion:(id)a3;
- (void)remote_syncStatsWithCompletion:(id)a3;
- (void)remote_topLevelContentStoreCacheDirectoryURLWithCompletion:(id)a3;
- (void)remote_triggerUserNotificationHandoutAssignedWithHandoutID:(id)a3 completion:(id)a4;
- (void)remote_triggerUserNotificationHandoutDueSoonWithReferenceDate:(id)a3 completion:(id)a4;
- (void)remote_triggerUserNotificationHandoutPastDueSummaryWithReferenceDate:(id)a3 completion:(id)a4;
- (void)remote_triggerUserNotificationReviewDueHandoutsWithReferenceDate:(id)a3 completion:(id)a4;
- (void)remote_triggerUserNotificationRevisedSubmissionWithAttachmentID:(id)a3 studentName:(id)a4 completion:(id)a5;
- (void)remote_triggerUserNotificationRevisionRequestedWithAttachmentID:(id)a3 completion:(id)a4;
- (void)remote_triggerUserNotificationWithTitle:(id)a3 message:(id)a4 wrappedImageURL:(id)a5;
- (void)remote_uploadAsset:(id)a3 createThumbnailIfNeeded:(BOOL)a4 uploadObserver:(id)a5 completion:(id)a6;
- (void)remote_urlSuitableForOpeningForExpectedURL:(id)a3 itemID:(id)a4 ownerName:(id)a5 zoneName:(id)a6 completion:(id)a7;
- (void)remote_validateAndCreateHandoutAssignedItem:(id)a3 withCompletion:(id)a4;
- (void)saveObjects:(id)a3 saveResponse:(id)a4 isRemoteClient:(BOOL)a5 completion:(id)a6;
@end

@implementation PDEndpointServer

- (PDEndpointServer)initWithClient:(id)a3 daemon:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = PDEndpointServer;
  v9 = [(PDEndpointServer *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, a3);
    objc_storeWeak(&v10->_daemon, v8);
    v11 = +[NSMapTable strongToStrongObjectsMapTable];
    observers = v10->_observers;
    v10->_observers = v11;

    v13 = CLSDispatchQueueName();
    v14 = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    if (qword_10024D868 != -1)
    {
      dispatch_once(&qword_10024D868, &stru_1002028A8);
    }

    v16 = qword_10024D860;
    v17 = dispatch_queue_create_with_target_V2(v14, v15, v16);
    queue = v10->_queue;
    v10->_queue = v17;

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v10 selector:"databaseChanged:" name:@"PDDataWrittenNotification" object:0];
    v20 = sub_1000B065C([PDRing alloc], 20);
    previousCommands = v10->_previousCommands;
    v10->_previousCommands = v20;
  }

  return v10;
}

- (void)invalidate
{
  v3 = [(PDEndpointServer *)self client];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v6 invalidate];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self];

  v8 = self->_observers;
  observers = self->_observers;
  self->_observers = 0;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(NSMapTable *)v8 objectEnumerator];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PDEndpointServer *)self _invalidateObserver:*(*(&v15 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PDEndpointServer;
  [(PDEndpointServer *)&v4 dealloc];
}

- (PDDatabase)database
{
  v2 = [(PDEndpointServer *)self daemon];
  v3 = [v2 database];

  return v3;
}

- (id)userNotificationCenter
{
  userNotificationCenter = self->_userNotificationCenter;
  if (!userNotificationCenter)
  {
    v4 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.schoolwork.ClassKitApp"];
    v5 = self->_userNotificationCenter;
    self->_userNotificationCenter = v4;

    userNotificationCenter = self->_userNotificationCenter;
  }

  return userNotificationCenter;
}

- (BOOL)isInternalWithError:(id *)a3
{
  v5 = [(PDEndpointServer *)self client];
  if (v5)
  {
    v6 = v5[25];

    if (v6)
    {
      return 1;
    }
  }

  CLSInitLog();
  v8 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [(PDEndpointServer *)self client];
    v11 = sub_1000B2528(v10);
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Not an internal client: %@", &v12, 0xCu);
  }

  [NSError cls_assignError:a3 code:1 description:@"ClassKit is not available."];
  return 0;
}

- (void)databaseChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000233C0;
  v9[3] = &unk_1002028F8;
  objc_copyWeak(&v12, &location);
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(queue, v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)remote_listAppsWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v20 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v20];
  v7 = v20;
  if (v6)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = [(PDEndpointServer *)self database];
    v10 = objc_opt_class();
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100023A9C;
    v18 = &unk_1002022C0;
    v19 = v8;
    v11 = v8;
    [v9 selectAll:v10 where:@"parentObjectID is NULL" orderBy:@"title asc" bindings:0 block:&v15];

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    v13 = [(PDEndpointServer *)self client:v15];
    v14 = sub_1000B2528(v13);
    (v5)[2](v5, v12, v14, v7);
  }

  else
  {
    v5[2](v5, 0, 0, v7);
  }
}

- (void)remote_setOverrideBundleIdentifier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v14 = 0;
  v9 = [(PDEndpointServer *)self isInternalWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11 = [(PDEndpointServer *)self client];
    sub_1000B24B8(v11, v7);
    v12 = v10;

    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  v8[2](v8, v13, v10);
}

- (void)remote_deleteAppWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v27 = 0;
  v9 = [(PDEndpointServer *)self isInternalWithError:&v27];
  v10 = v27;
  if ((v9 & 1) == 0)
  {
    v8[2](v8, 0, v10);
    goto LABEL_14;
  }

  v11 = [(PDEndpointServer *)self client];
  v12 = sub_1000B2528(v11);
  if (!(v7 | v12))
  {

    goto LABEL_9;
  }

  v13 = v12;
  v14 = [(PDEndpointServer *)self client];
  v15 = sub_1000B2528(v14);
  v16 = v15;
  if (v7 && v15)
  {
    v17 = [(PDEndpointServer *)self client];
    v18 = sub_1000B2528(v17);
    v24 = [v18 isEqualToString:v7];

    if (!v24)
    {
      goto LABEL_11;
    }

LABEL_9:
    v19 = [NSError cls_createErrorWithCode:3 format:@"Cannot delete app. Bundle identifier %@ set as currently active app. Select another app as active app and try again.", v7];

    v8[2](v8, 0, v19);
    v10 = v19;
    goto LABEL_14;
  }

LABEL_11:
  v20 = [(PDEndpointServer *)self database];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100023DF4;
  v25[3] = &unk_100202140;
  v25[4] = self;
  v21 = v7;
  v26 = v21;
  v22 = [v20 withSyncEnabled:v25];

  if ((v22 & 1) == 0)
  {
    v23 = [NSError cls_createErrorWithCode:100 format:@"Failed to delete app with identifier: %@", v21];

    v10 = v23;
  }

  (v8)[2](v8, v22, v10);

LABEL_14:
}

- (void)remote_accountChanged
{
  sub_100023888(self, a2);
  v15 = 0;
  v3 = [(PDEndpointServer *)self isInternalWithError:&v15];
  v4 = v15;
  CLSInitLog();
  if (v3)
  {
    v5 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "remote_accountChanged.", v13, 2u);
    }

    v6 = +[PDUserDefaults sharedDefaults];
    v7 = [v6 enableVerboseLogging];

    if (v7)
    {
      CLSLogDebugCurrentPersona();
    }

    v8 = [(PDEndpointServer *)self daemon];
    v9 = v8;
    if (v8)
    {
      [v8 handleAccountChange];
    }

    else
    {
      CLSInitLog();
      v11 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "PDEndpointServer has no daemon instance. Cannot notify account change.", v12, 2u);
      }
    }
  }

  else
  {
    v10 = CLSLogConnection;
    if (os_log_type_enabled(CLSLogConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "tried to call remote_accountChanged from unauthorized client", buf, 2u);
    }
  }
}

- (void)remote_databasePathWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v14 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v14];
  v7 = v14;
  if (v6)
  {
    v8 = [(PDEndpointServer *)self daemon];
    v9 = [v8 mode];
    if (v9 == 2)
    {
      v10 = [v8 teacherDevDatabase];
    }

    else if (v9 == 1)
    {
      v10 = [v8 studentDevDatabase];
    }

    else
    {
      if (v9)
      {
        v12 = 0;
        goto LABEL_11;
      }

      v10 = [(PDEndpointServer *)self database];
    }

    v11 = v10;
    v12 = sub_10010B4D8(v10);

LABEL_11:
    v13 = [v12 objectForKeyedSubscript:@"PDDatabaseStatsPathKey"];
    v5[2](v5, v13, 0);

    goto LABEL_12;
  }

  (v5)[2](v5, 0, v7);
LABEL_12:
}

- (void)remote_recreateDatabaseWithCompletion:(id)a3
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  v10 = 0;
  v7 = [(PDEndpointServer *)self isInternalWithError:&v10];
  v8 = v10;
  if (v7)
  {
    v9 = [(PDEndpointServer *)self daemon];
    [v9 recreateDatabase];

    v5[2](v5, 1, 0);
  }

  else
  {
    (v5)[2](v5, 0, v8);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)remote_syncStatsWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v11 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = [(PDEndpointServer *)self daemon];
    v9 = [v8 operationsManager];
    v10 = sub_1001266DC(v9);

    v5[2](v5, v10, v7);
  }

  else
  {
    v5[2](v5, 0, v7);
  }
}

- (void)remote_syncPushWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v12 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [(PDEndpointServer *)self daemon];
    v9 = [v8 operationsManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002452C;
    v10[3] = &unk_100202970;
    v11 = v5;
    sub_100122748(v9, v10);
  }

  else
  {
    (*(v5 + 2))(v5, 0, v7);
  }
}

- (void)remote_syncFetchWithCompletion:(id)a3
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  v7 = [(PDEndpointServer *)self client];
  v8 = sub_1000B2528(v7);
  if ([v8 hasPrefix:@"com.apple.schoolwork.ClassKitApp"])
  {

    v9 = 0;
  }

  else
  {
    v16 = 0;
    v10 = [(PDEndpointServer *)self isInternalWithError:&v16];
    v9 = v16;

    if ((v10 & 1) == 0)
    {
      v5[2](v5, 0, v9);
      goto LABEL_6;
    }
  }

  v11 = [(PDEndpointServer *)self database];
  sub_1000EAE50(v11, 0);

  v12 = [(PDEndpointServer *)self daemon];
  v13 = [v12 operationsManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000246DC;
  v14[3] = &unk_100202970;
  v15 = v5;
  sub_10012175C(v13, v14);

LABEL_6:
  objc_autoreleasePoolPop(v6);
}

- (void)remote_syncBootstrapWithCompletion:(id)a3
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  v7 = [(PDEndpointServer *)self client];
  if (v7 && (v8 = v7[26], v7, (v8 & 1) != 0))
  {
    v9 = [(PDEndpointServer *)self database];
    sub_1000EAE50(v9, 0);
    sub_1000EAC18(v9, @"ee.setup");
    sub_1000EAC18(v9, @"bootstrap");
    v10 = [(PDEndpointServer *)self daemon];
    v11 = [v10 operationsManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100024874;
    v12[3] = &unk_100202970;
    v13 = v5;
    sub_100121CCC(v11, v12);
  }

  else
  {
    v9 = [NSError cls_createErrorWithCode:4 description:@"Not Authorized"];
    (*(v5 + 2))(v5, 0, v9);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)remote_fetchReportsWithPredicate:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  v10 = [(PDEndpointServer *)self client];
  v11 = sub_1000B2528(v10);
  if ([v11 hasPrefix:@"com.apple.schoolwork.ClassKitApp"])
  {

    v12 = 0;
  }

  else
  {
    v16 = 0;
    v13 = [(PDEndpointServer *)self isInternalWithError:&v16];
    v12 = v16;

    if ((v13 & 1) == 0)
    {
      v8[2](v8, 0, v12);
      goto LABEL_6;
    }
  }

  v14 = [(PDEndpointServer *)self daemon];
  v15 = [v14 operationsManager];
  sub_100123138(v15, v7, v8);

LABEL_6:
  objc_autoreleasePoolPop(v9);
}

- (void)remote_statusWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v10 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v10];
  v7 = v10;
  if (v6)
  {
    v8 = [(PDEndpointServer *)self daemon];
    v9 = [v8 statusReport];

    v5[2](v5, v9, 0);
  }

  else
  {
    (v5)[2](v5, 0, v7);
  }
}

- (void)remote_renewCredentialsWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v6 = [(PDEndpointServer *)self client];
  v7 = sub_1000B2528(v6);
  if ([v7 hasPrefix:@"com.apple.schoolwork.ClassKitApp"])
  {

    v8 = 0;
  }

  else
  {
    v11 = 0;
    v9 = [(PDEndpointServer *)self isInternalWithError:&v11];
    v8 = v11;

    if ((v9 & 1) == 0)
    {
      v5[2](v5, 0, 2, v8);
      goto LABEL_9;
    }
  }

  v10 = sub_10003E1B4();
  if (v10)
  {
    sub_10003F6AC(PDAccountInfo, v10, 1, v5);
  }

  else
  {
    v5[2](v5, 0, 2, v8);
  }

LABEL_9:
}

- (void)remote_addAuthorizationStatus:(unint64_t)a3 forContextAtPath:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  sub_100023888(self, a2);
  v16 = 0;
  v11 = [(PDEndpointServer *)self isInternalWithError:&v16];
  v12 = v16;
  if (v11)
  {
    v13 = [(PDEndpointServer *)self database];
    v14 = sub_10014B4D4(v13, a3, v9);

    if ((v14 & 1) == 0)
    {
      v15 = [NSError cls_createErrorWithCode:100 format:@"failed to add authorization at path: %@", v9];

      v12 = v15;
    }

    v10[2](v10, v14, v12);
  }

  else
  {
    v10[2](v10, 0, v12);
  }
}

- (void)remote_authorizationStatusForContextAtPath:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v14 = 0;
  v9 = [(PDEndpointServer *)self isInternalWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11 = [(PDEndpointServer *)self database];
    v12 = sub_10014C17C(v11, v7);

    v13 = [NSNumber numberWithInteger:v12];
    v8[2](v8, v13, v10);
  }

  else
  {
    v8[2](v8, 0, v10);
  }
}

- (void)remote_authorizationStatusForHandoutAssignedItem:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v14 = 0;
  v9 = [(PDEndpointServer *)self isInternalWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11 = [(PDEndpointServer *)self database];
    v12 = sub_100015328(v11, v7);

    v13 = [NSNumber numberWithInteger:v12];
    v8[2](v8, v13, v10);
  }

  else
  {
    v8[2](v8, 0, v10);
  }
}

- (void)remote_removeAuthorizationStatus:(unint64_t)a3 forContextAtPath:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  sub_100023888(self, a2);
  v16 = 0;
  v11 = [(PDEndpointServer *)self isInternalWithError:&v16];
  v12 = v16;
  if (v11)
  {
    v13 = [(PDEndpointServer *)self database];
    v14 = sub_10014B7E8(v13, a3, v9);

    if ((v14 & 1) == 0)
    {
      v15 = [NSError cls_createErrorWithCode:100 format:@"failed to remove authorization at path: %@", v9];

      v12 = v15;
    }

    v10[2](v10, v14, v12);
  }

  else
  {
    v10[2](v10, 0, v12);
  }
}

- (void)remote_recreateDevelopmentDatabaseWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v9 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v9];
  v7 = v9;
  if (v6)
  {
    v8 = [(PDEndpointServer *)self daemon];
    [v8 recreateDevelopmentDatabases];

    v5[2](v5, 1, 0);
  }

  else
  {
    (v5)[2](v5, 0, v7);
  }
}

- (void)remote_setDevMode:(int)a3 completion:(id)a4
{
  v7 = a4;
  sub_100023888(self, a2);
  v13 = 0;
  v8 = [(PDEndpointServer *)self isInternalWithError:&v13];
  v9 = v13;
  v10 = v9;
  if (v8)
  {
    if (a3 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = a3 == 1;
    }

    v12 = [(PDEndpointServer *)self daemon];
    [v12 setMode:v11];

    v10 = 0;
  }

  (v7)[2](v7, v10);
}

- (void)remote_getDevModeWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v13 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v13];
  v7 = v13;
  if (v6)
  {
    v8 = [(PDEndpointServer *)self daemon];
    v9 = [v8 mode];

    switch(v9)
    {
      case 2u:
        v10 = v5[2];
        v11 = v5;
        v12 = 2;
        goto LABEL_9;
      case 1u:
        v10 = v5[2];
        v11 = v5;
        v12 = 1;
        goto LABEL_9;
      case 0u:
        v10 = v5[2];
        v11 = v5;
        v12 = 0;
LABEL_9:
        v10(v11, v12, 0);
        break;
    }
  }

  else
  {
    (v5[2])(v5, 0, v7);
  }
}

- (void)remote_getBootstrapMode:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v13 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v13];
  v7 = v13;
  if (v6)
  {
    v8 = [(PDEndpointServer *)self database];
    v9 = [v8 select:objc_opt_class() identity:@"bootstrap"];
    v10 = sub_10016A160(v8, @"bootstrapMode");
    if (v10 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2 * (v10 == 2);
    }

    v12 = sub_1000E9BC0(v9);
    v5[2](v5, v11, v12, 0);
  }

  else
  {
    (v5)[2](v5, 0, 0, v7);
  }
}

- (void)remote_setBootstrapMode:(int)a3 url:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  sub_100023888(self, a2);
  v23 = 0;
  v11 = [(PDEndpointServer *)self isInternalWithError:&v23];
  v12 = v23;
  if (v11)
  {
    if (a3 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (a3 == 2);
    }

    v14 = [(PDEndpointServer *)self database];
    v15 = [v14 select:objc_opt_class() identity:@"bootstrap"];
    if (v13)
    {
      if (v13 == 2)
      {
        v16 = [v9 absoluteString];
      }

      else
      {
        v16 = @"https://pg-bootstrap.classkit.apple.com/v1/config";
      }
    }

    else
    {
      v16 = @"https://pg-bootstrap.itunes.apple.com/v1/config";
    }

    sub_10003F69C(v15, v16);
    if ([v14 updateObject:v15])
    {
      if (a3 == 2)
      {
        v17 = [PDAllowedHost alloc];
        v18 = [v9 host];
        v19 = sub_10006F334(v17, v18);

        if (([v14 insertOrUpdateObject:v19] & 1) == 0)
        {
          v22 = [NSError cls_createErrorWithCode:100 description:@"Failed to set allowed host in database.  The endpoint itself was updated"];
          v10[2](v10, v22);

          goto LABEL_20;
        }
      }

      if (sub_10016A0C8(v14, v13, @"bootstrapMode"))
      {
        v10[2](v10, 0);
LABEL_20:

        goto LABEL_21;
      }

      v20 = @"Failed to set mode in database.  The endpoint itself was updated";
    }

    else
    {
      v20 = @"Failed to update endpoint";
    }

    v21 = [NSError cls_createErrorWithCode:100 description:v20];
    v10[2](v10, v21);

    goto LABEL_20;
  }

  v10[2](v10, v12);
LABEL_21:
}

- (void)remote_setClassKitCatalogEnvironment:(int64_t)a3 completion:(id)a4
{
  v7 = a4;
  sub_100023888(self, a2);
  v12 = 0;
  v8 = [(PDEndpointServer *)self isInternalWithError:&v12];
  v9 = v12;
  v10 = v9;
  if (v8)
  {
    v11 = [(PDEndpointServer *)self database];
    sub_10015E1AC(v11, a3);

    v10 = 0;
  }

  (v7)[2](v7, v10);
}

- (void)remote_getClassKitCatalogEnvironmentWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v10 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v10];
  v7 = v10;
  if (v6)
  {
    v8 = [(PDEndpointServer *)self database];
    v9 = sub_10015E198(v8);
    v5[2](v5, v9, 0);
  }

  else
  {
    (v5)[2](v5, 0, v7);
  }
}

- (void)remote_shouldSyncTeacherBrowsedContextsWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v6 = [(PDEndpointServer *)self client];
  if (v6 && (v7 = v6[26], v6, (v7 & 1) != 0))
  {
    v8 = [(PDEndpointServer *)self database];
    v12 = [v8 select:objc_opt_class() identity:@"syncTeacherContexts"];

    if (v12)
    {
      v9 = v12[16];
    }

    else
    {
      v10 = [(PDEndpointServer *)self database];
      v9 = 1;
      sub_100169F38(v10, 1, @"syncTeacherContexts");
    }

    v11 = [NSNumber numberWithBool:v9 & 1];
    v5[2](v5, v11, 0);

    v5 = v11;
  }

  else
  {
    v12 = [NSError cls_createErrorWithCode:1 description:@"Could not read sync teacher browse."];
    (v5[2])(v5, 0);
  }
}

- (void)remote_setShouldSyncTeacherBrowsedContexts:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v13 = a4;
  sub_100023888(self, a2);
  v7 = [(PDEndpointServer *)self client];
  if (v7 && (v8 = v7[26], v7, (v8 & 1) != 0))
  {
    v9 = [(PDEndpointServer *)self database];
    sub_100169F38(v9, v4, @"syncTeacherContexts");

    if (v4)
    {
      v10 = [(PDEndpointServer *)self daemon];
      v11 = [v10 operationsManager];
      sub_100122748(v11, 0);
    }

    v13[2](v13, 0);
  }

  else
  {
    v12 = [NSError cls_createErrorWithCode:1 description:@"Could not write sync teacher browse."];
    (v13)[2](v13, v12);
  }
}

- (void)remote_fetchTransparencyMessageInfoForAttachmentID:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  v10 = [(PDEndpointServer *)self client];
  if (v10 && (v11 = v10[31], v10, (v11 & 1) != 0))
  {
    v12 = sub_100025B40(self, v7);
    v8[2](v8, v12, 0);
  }

  else
  {
    CLSInitLog();
    v13 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      v14[0] = 0;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Skipping remote_fetchTransparencyMessageInfoForAttachmentID from invalid client", v14, 2u);
    }

    v12 = [NSError cls_createErrorWithCode:4 format:@"Not Authorized"];
    (v8)[2](v8, 0, v12);
  }

  objc_autoreleasePoolPop(v9);
}

- (void)remote_fetchTransparencyMessageInfoWithCompletion:(id)a3
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  v7 = [(PDEndpointServer *)self client];
  if (v7 && (v8 = v7[31], v7, (v8 & 1) != 0))
  {
    v9 = [(PDEndpointServer *)self database];
    if (sub_10007116C(v9))
    {
      v42 = sub_100169FD0(v9, @"shownModalTransparency");
      v10 = [(PDEndpointServer *)self client];
      v46 = sub_1000B2528(v10);

      *buf = 0;
      v78 = buf;
      v79 = 0x3032000000;
      v80 = sub_100026A68;
      v81 = sub_100026A78;
      v82 = objc_opt_new();
      v71 = 0;
      v72 = &v71;
      v73 = 0x3032000000;
      v74 = sub_100026A68;
      v75 = sub_100026A78;
      v76 = objc_opt_new();
      v65 = 0;
      v66 = &v65;
      v67 = 0x3032000000;
      v68 = sub_100026A68;
      v69 = sub_100026A78;
      v70 = objc_opt_new();
      v11 = sub_1000711FC(v9);
      v12 = [v11 objectID];

      v88[0] = &off_10021B558;
      v88[1] = v46;
      v45 = [NSArray arrayWithObjects:v88 count:2];
      v13 = objc_opt_class();
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100026A80;
      v59[3] = &unk_1002022E8;
      v9 = v9;
      v60 = v9;
      v14 = v12;
      v61 = v14;
      v62 = buf;
      v63 = &v65;
      v64 = &v71;
      [v9 selectAll:v13 where:@"type = ? and bundleIdentifier = ?" bindings:v45 block:v59];
      v44 = v14;
      v15 = objc_opt_new();
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v16 = v66[5];
      v17 = [v16 countByEnumeratingWithState:&v55 objects:v87 count:16];
      if (v17)
      {
        v18 = 0;
        v19 = *v56;
        do
        {
          v20 = 0;
          do
          {
            if (*v56 != v19)
            {
              objc_enumerationMutation(v16);
            }

            if (sub_10014C17C(v9, *(*(&v55 + 1) + 8 * v20)) == 1)
            {
              v21 = [*(v78 + 5) objectAtIndexedSubscript:v18];
              [v15 addObject:v21];
            }

            ++v18;
            v20 = v20 + 1;
          }

          while (v17 != v20);
          v17 = [v16 countByEnumeratingWithState:&v55 objects:v87 count:16];
        }

        while (v17);
      }

      v22 = [v15 mutableCopy];
      [(__CFString *)v22 minusSet:v72[5]];
      v49 = 0;
      v50 = &v49;
      v51 = 0x3032000000;
      v52 = sub_100026A68;
      v53 = sub_100026A78;
      v54 = 0;
      if ([(__CFString *)v22 count])
      {
        v23 = objc_opt_new();
        v24 = v50[5];
        v50[5] = v23;

        v25 = [(__CFString *)v22 allObjects];
        v26 = [PDDatabase whereSQLForArray:v25 prefix:@"parentObjectID in "];
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_100026BA4;
        v48[3] = &unk_100202310;
        v48[4] = &v49;
        [v9 selectAll:objc_opt_class() where:v26 bindings:v25 block:v48];
      }

      if ([v50[5] count])
      {
        v27 = [v50[5] allObjects];
        v43 = [PDDatabase whereSQLForArray:v27 prefix:@"objectID in "];
        *v83 = 0;
        *&v83[8] = v83;
        *&v83[16] = 0x3032000000;
        v84 = sub_100026A68;
        v85 = sub_100026A78;
        v28 = [NSMutableArray alloc];
        v86 = [v28 initWithCapacity:{objc_msgSend(v50[5], "count")}];
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_100026C0C;
        v47[3] = &unk_100202338;
        v47[4] = v83;
        [v9 selectAll:objc_opt_class() where:v43 bindings:v27 block:v47];
        if ([*(*&v83[8] + 40) count])
        {
          v29 = [NSBundle bundleForClass:objc_opt_class()];
          v41 = [v29 localizedStringForKey:@"TRANSPARENCY_BANNER_TITLE" value:&stru_100206880 table:@"ClassKit"];

          v30 = [NSBundle bundleForClass:objc_opt_class()];
          v31 = [v30 localizedStringForKey:@"TRANSPARENCY_BANNER_MESSAGE_1_FORMAT" value:&stru_100206880 table:@"ClassKit"];

          if ([*(*&v83[8] + 40) count] >= 2)
          {
            v32 = [NSBundle bundleForClass:objc_opt_class()];
            v33 = [v32 localizedStringForKey:@"TRANSPARENCY_BANNER_MESSAGE_N_FORMAT" value:&stru_100206880 table:@"ClassKit"];

            v31 = v33;
          }

          v34 = objc_opt_new();
          v35 = [*(*&v83[8] + 40) sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];
          [v34 setObject:v35 forKeyedSubscript:@"classNames"];

          v36 = [NSNumber numberWithBool:v42 ^ 1u];
          [v34 setObject:v36 forKeyedSubscript:@"showModal"];

          if (v41)
          {
            [v34 setObject:v41 forKeyedSubscript:@"localizedTitle"];
          }

          if (v31)
          {
            [v34 setObject:v31 forKeyedSubscript:@"localizedMessageFormat"];
          }

          if ((v42 & 1) == 0)
          {
            sub_100169F38(v9, 1, @"shownModalTransparency");
          }
        }

        else
        {
          v34 = 0;
        }

        _Block_object_dispose(v83, 8);
      }

      else
      {
        v34 = 0;
      }

      CLSInitLog();
      v38 = CLSLogDefault;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        if ([(__CFString *)v22 count])
        {
          v39 = v22;
        }

        else
        {
          v39 = @"none";
        }

        if ([v50[5] count])
        {
          v40 = v50[5];
        }

        else
        {
          v40 = @"none";
        }

        *v83 = 138412802;
        *&v83[4] = v46;
        *&v83[12] = 2112;
        *&v83[14] = v39;
        *&v83[22] = 2112;
        v84 = v40;
        _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Client %@ pertains to relevant handoutIDs: %@ classIDs: %@", v83, 0x20u);
      }

      v5[2](v5, v34, 0);
      _Block_object_dispose(&v49, 8);

      _Block_object_dispose(&v65, 8);
      _Block_object_dispose(&v71, 8);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v5[2](v5, 0, 0);
    }
  }

  else
  {
    CLSInitLog();
    v37 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Skipping remote_fetchTransparencyMessageInfoWithCompletion from invalid client", buf, 2u);
    }

    v9 = [NSError cls_createErrorWithCode:4 format:@"Not Authorized"];
    (v5)[2](v5, 0, v9);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)remote_fetchHandoutAttachmentForDocumentURL:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self client];
  if (v9 && (v10 = v9[31], v9, (v10 & 1) != 0))
  {
    v11 = [(PDEndpointServer *)self database];
    v12 = sub_1000BA854(v11);
    v13 = v12;
    if (v12 && (*(v12 + 9) & 1) != 0)
    {
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_100027B74;
      v63[3] = &unk_100202388;
      v14 = v7;
      v64 = v14;
      v65 = v8;
      v15 = objc_retainBlock(v63);
      *buf = 0;
      v58 = buf;
      v59 = 0x3032000000;
      v60 = sub_100026A68;
      v61 = sub_100026A78;
      v62 = 0;
      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = sub_100026A68;
      v55 = sub_100026A78;
      v56 = 0;
      v45 = 0;
      v46 = &v45;
      v47 = 0x3032000000;
      v48 = sub_100026A68;
      v49 = sub_100026A78;
      v50 = 0;
      v16 = sub_10003E1B4();
      v17 = v16;
      if (v16)
      {
        v18 = *(v16 + 72);
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v44 = v14;
      CLSPerformWithPersona();

      if (v52[5] && (v20 = v46[5]) != 0)
      {
        v21 = [v20 zoneID];
        v43 = [v21 zoneName];

        v22 = [(PDEndpointServer *)self database];
        v23 = objc_opt_class();
        v71[0] = v52[5];
        v71[1] = v43;
        v24 = [NSArray arrayWithObjects:v71 count:2];
        v25 = [v22 select:v23 where:@"brItemID = ? and brZoneName = ?" bindings:v24];

        CLSInitLog();
        v26 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
        {
          v40 = v52[5];
          *v67 = 138412546;
          v68 = v40;
          v69 = 2112;
          v70 = v43;
          _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Looking up asset matching brItemID = %@ and brZoneName = %@", v67, 0x16u);
        }

        v27 = [v25 parentObjectID];
        v28 = v27 == 0;

        if (v28)
        {
          CLSInitLog();
          v39 = CLSLogDefault;
          if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
          {
            v41 = v52[5];
            *v67 = 138412546;
            v68 = v41;
            v69 = 2112;
            v70 = v43;
            _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "failed to find asset matching brItemID = %@ and brZoneName = %@", v67, 0x16u);
          }

          [*(v58 + 5) cls_log:CLSLogHandout];
          (v15[2])(v15, 0, *(v58 + 5));
        }

        else
        {
          v29 = [(PDEndpointServer *)self database];
          v30 = objc_opt_class();
          v31 = [v25 parentObjectID];
          v66 = v31;
          v32 = [NSArray arrayWithObjects:&v66 count:1];
          v33 = [v29 select:v30 where:@"objectID = ?" bindings:v32];

          if (!v33)
          {
            v34 = [v25 objectID];
            v35 = [NSError cls_createErrorWithCode:100 format:@"failed to find attachment for asset with id: %@", v34];
            v36 = *(v58 + 5);
            *(v58 + 5) = v35;

            [*(v58 + 5) cls_log:CLSLogHandout];
          }

          (v15[2])(v15, v33, *(v58 + 5));
        }
      }

      else
      {
        (v15[2])(v15, 0, *(v58 + 5));
      }

      _Block_object_dispose(&v45, 8);
      _Block_object_dispose(&v51, 8);

      _Block_object_dispose(buf, 8);
      v38 = v64;
    }

    else
    {
      CLSInitLog();
      v37 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Skipping remote_fetchHandoutAttachmentForDocumentURL from non-EDU MAID", buf, 2u);
      }

      v38 = [NSError cls_createErrorWithCode:4 format:@"Not Authorized"];
      (*(v8 + 2))(v8, 0, v38);
    }
  }

  else
  {
    CLSInitLog();
    v42 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Skipping remote_fetchHandoutAttachmentForDocumentURL from invalid client", buf, 2u);
    }

    v11 = [NSError cls_createErrorWithCode:4 format:@"Not Authorized"];
    (*(v8 + 2))(v8, 0, v11);
  }
}

- (void)remote_validateAndCreateHandoutAssignedItem:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self client];
  if (v9 && (v10 = v9[31], v9, (v10 & 1) != 0))
  {
    v11 = [(PDEndpointServer *)self database];
    v12 = v11;
    if (v11)
    {
      v13 = (sub_1000717E8(v11) >> 1) & 1;
    }

    else
    {
      LODWORD(v13) = 0;
    }

    if (!sub_10007116C(v12) || v13)
    {
      CLSInitLog();
      v20 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Unable call to remote_validateAndCreateHandoutAssignedItem. Progress tracking is not allowed.", buf, 2u);
      }

      v37 = 0;
      [NSError cls_assignError:&v37 code:4 description:@"Not Authorized"];
      v19 = v37;
      v8[2](v8, 0, v19);
    }

    else
    {
      v14 = [(PDEndpointServer *)self database];
      v15 = objc_opt_class();
      v41 = v7;
      v16 = [NSArray arrayWithObjects:&v41 count:1];
      v17 = [v14 select:v15 where:@"parentObjectID = ?" bindings:v16];

      if (v17)
      {
        if ([v17 effectiveAuthorizationStatus] == 2)
        {
          CLSInitLog();
          v18 = CLSLogDefault;
          if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "handout assigned item authorization denied", buf, 2u);
          }

          v36 = 0;
          [NSError cls_assignError:&v36 code:4 description:@"Not Authorized"];
          v19 = v36;
          v8[2](v8, 0, v19);
        }

        else
        {
          (v8)[2](v8, v17, 0);
          v19 = 0;
        }
      }

      else
      {
        v21 = [(PDEndpointServer *)self database];
        v22 = objc_opt_class();
        v40 = v7;
        v23 = [NSArray arrayWithObjects:&v40 count:1];
        v24 = [v21 select:v22 where:@"objectID = ?" bindings:v23];

        if (v24)
        {
          v34 = 0;
          v25 = [(PDEndpointServer *)self _createHandoutAssignedItemFrom:v24 withError:&v34];
          v19 = v34;
          if ([v25 effectiveAuthorizationStatus] == 2)
          {
            v33 = v19;
            [NSError cls_assignError:&v33 code:4 description:@"Not Authorized"];
            v26 = v33;

            v8[2](v8, 0, v26);
            v17 = 0;
            v19 = v26;
          }

          else
          {
            v28 = [(PDEndpointServer *)self database];
            v29 = objc_opt_class();
            v30 = [v25 objectID];
            v39 = v30;
            v31 = [NSArray arrayWithObjects:&v39 count:1];
            v17 = [v28 select:v29 where:@"objectID = ?" bindings:v31];

            (v8)[2](v8, v17, v19);
          }
        }

        else
        {
          CLSInitLog();
          v27 = CLSLogDefault;
          if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Unable call to remote_validateAndCreateHandoutAssignedItem. Progress tracking is not allowed, failed to find handout attachment.", buf, 2u);
          }

          v35 = 0;
          [NSError cls_assignError:&v35 code:4 description:@"Not Authorized"];
          v19 = v35;
          v8[2](v8, 0, v19);
          v17 = 0;
        }
      }
    }
  }

  else
  {
    CLSInitLog();
    v32 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Skipping remote_validateAndCreateHandoutAssignedItem from invalid client", buf, 2u);
    }

    v19 = [NSError cls_createErrorWithCode:4 format:@"Not Authorized"];
    v8[2](v8, 0, v19);
  }
}

- (id)_createHandoutAssignedItemFrom:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100026A68;
  v23 = sub_100026A78;
  v24 = 0;
  v7 = [(PDEndpointServer *)self client];
  v8 = sub_1000B2528(v7);
  if ([v8 length])
  {
    v9 = [(PDEndpointServer *)self database];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100028500;
    v13[3] = &unk_100202400;
    v14 = v7;
    v15 = v6;
    v16 = v8;
    v17 = self;
    v18 = &v19;
    v10 = [v9 withSyncEnabled:v13];

    if (v10)
    {
      v11 = v20[5];
    }

    else
    {
      [NSError cls_assignError:a4 code:100 description:@"Unable to create CLSHandoutAssignedItem."];
      v11 = 0;
    }
  }

  else
  {
    [NSError cls_assignError:a4 code:2 description:@"Unable to determine bundle identifier."];
    v11 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v11;
}

- (void)remote_fetchAndCompleteActiveAssignedActivitiesForContextPath:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self client];
  if (!v9 || (v10 = v9[31], v9, (v10 & 1) == 0))
  {
    CLSInitLog();
    v20 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Skipping remote_fetchAndCompleteActiveAssignedActivitiesForContextPath from invalid client", buf, 2u);
    }

    v12 = [NSError cls_createErrorWithCode:4 format:@"Not Authorized"];
    goto LABEL_20;
  }

  if ((sub_1000B280C() & 1) == 0)
  {
    v25 = 0;
    [NSError cls_assignError:&v25 code:322 description:@"No-Op for mark all assigned activities complete. Schoolwork is not installed."];
    v12 = v25;
    CLSInitLog();
    v18 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v27 = v12;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "markAsComplete: %{public}@", buf, 0xCu);
    }

LABEL_20:
    v8[2](v8, 0, v12);
    goto LABEL_21;
  }

  v11 = [(PDEndpointServer *)self database];
  v12 = v11;
  if (v11)
  {
    v13 = (sub_1000717E8(v11) >> 1) & 1;
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (!sub_10007116C(v12) || v13)
  {
    v24 = 0;
    [NSError cls_assignError:&v24 code:323 description:@"Unable call to fetchAndCompleteAllAssignedActivitiesForContextPath. Progress tracking is not allowed."];
    v16 = v24;
    CLSInitLog();
    v19 = CLSLogHandout;
    if (os_log_type_enabled(CLSLogHandout, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v27 = v16;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "markAsComplete: %{public}@", buf, 0xCu);
    }

    v8[2](v8, 0, v16);
  }

  else
  {
    v14 = sub_100026D00(self, v7);
    v15 = objc_opt_new();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100028C10;
    v21[3] = &unk_100202428;
    v21[4] = self;
    v16 = v14;
    v22 = v16;
    v23 = v8;
    [v15 setCompletion:v21];
    if (v16)
    {
      v17 = v16[3];
    }

    else
    {
      v17 = 0;
    }

    [(PDEndpointServer *)self saveObjects:v17 saveResponse:v15 isRemoteClient:0 completion:&stru_100202448];
  }

LABEL_21:
}

- (id)_createMainAppContext:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100026A68;
  v23 = sub_100026A78;
  v24 = 0;
  v5 = [(PDEndpointServer *)self client];
  v6 = sub_1000B2528(v5);
  if ([v6 length])
  {
    v7 = [(PDEndpointServer *)self database];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000295FC;
    v14 = &unk_100202470;
    v18 = &v19;
    v15 = v6;
    v16 = self;
    v17 = v5;
    v8 = [v7 withSyncEnabled:&v11];

    if (v8)
    {
      v9 = v20[5];
    }

    else
    {
      [NSError cls_assignError:a3 code:100 description:@"Unable to create main app context.", v11, v12, v13, v14, v15, v16];
      v9 = 0;
    }
  }

  else
  {
    [NSError cls_assignError:a3 code:2 description:@"Unable to determine bundle identifier."];
    v9 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v9;
}

- (void)remote_addAdminRequestor:(id)a3 completion:(id)a4
{
  v15 = a3;
  v7 = a4;
  sub_100023888(self, a2);
  v8 = [(PDEndpointServer *)self client];
  if (v8 && (v9 = v8[30], v8, (v9 & 1) != 0))
  {
    v10 = [(PDEndpointServer *)self database];
    v11 = [v10 insertOrUpdateObject:v15];

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v13 = [v15 email];
      v12 = [NSError cls_createErrorWithCode:100 format:@"Failed to create requestor: %@", v13];
    }

    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v15;
    }

    (v7)[2](v7, v14, v12);
  }

  else
  {
    v12 = [NSError cls_createErrorWithCode:4 description:@"Use pdtool"];
    v7[2](v7, 0, v12);
  }
}

- (void)remote_addOrganization:(id)a3 withLocations:(id)a4 completion:(id)a5
{
  v20 = a3;
  v9 = a4;
  v10 = a5;
  sub_100023888(self, a2);
  v11 = [(PDEndpointServer *)self client];
  if (v11 && (v12 = v11[30], v11, (v12 & 1) != 0))
  {
    v13 = [(PDEndpointServer *)self database];
    v14 = [v13 insertOrUpdateObject:v20];

    if (v14)
    {
      if ([v9 count] && (-[PDEndpointServer database](self, "database"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "insertOrUpdateObjects:", v9), v15, (v16 & 1) == 0))
      {
        v17 = [NSError cls_createErrorWithCode:100 format:@"Failed to create locations: %@", v9];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v18 = [v20 objectID];
      v17 = [NSError cls_createErrorWithCode:100 format:@"Failed to create organization: %@", v18];
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v20;
    }

    (v10)[2](v10, v19, v17);
  }

  else
  {
    v17 = [NSError cls_createErrorWithCode:4 description:@"Use pdtool"];
    v10[2](v10, 0, v17);
  }
}

- (void)remote_deleteOrganization:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self client];
  if (v9 && (v10 = v9[30], v9, (v10 & 1) != 0))
  {
    v11 = [(PDEndpointServer *)self database];
    v12 = objc_opt_class();
    v17 = v7;
    v13 = [NSArray arrayWithObjects:&v17 count:1];
    v14 = [v11 deleteAll:v12 where:@"objectID = ?" bindings:v13];

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = [NSError cls_createErrorWithCode:100 format:@"Failed to delete organization with identifier: %@", v7];
    }

    v8[2](v8, v14, v15);
  }

  else
  {
    v16 = [NSError cls_createErrorWithCode:4 description:@"Use pdtool"];
    v8[2](v8, 0, v16);
  }
}

- (void)remote_mainAppContextWithCompletion:(id)a3
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  v9 = 0;
  v7 = [(PDEndpointServer *)self _createMainAppContext:&v9];
  v8 = v9;
  v5[2](v5, v7, v8);

  objc_autoreleasePoolPop(v6);
}

- (void)_performQuery:(id)a3 querySpecification:(id)a4 issueServerRequest:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  v15 = [v12 entityName];
  v16 = NSClassFromString(v15);

  v41 = 0;
  LOBYTE(v15) = sub_10002A284(self, v16, &v41);
  v17 = v41;
  v18 = v17;
  if (v15)
  {
    v29 = v7;
    v27 = v17;
    v28 = v14;
    v30 = [v11 synchronousRemoteObjectProxyWithErrorHandler:&stru_100202490];

    v19 = [v12 predicate];
    v31 = [(PDEndpointServer *)self _clientScopedPredicate:v19 forEntityClass:v16];

    v20 = [[NSMutableArray alloc] initWithCapacity:50];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = [v12 offset];
    v21 = [(PDEndpointServer *)self database];
    v22 = [v12 sortDescriptors];
    v23 = [v12 limit];
    v24 = [v12 offset];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10002A52C;
    v32[3] = &unk_1002024B8;
    v35 = &v37;
    v25 = v20;
    v33 = v25;
    v36 = 50;
    v11 = v30;
    v34 = v11;
    sub_1000429A0(v21, v16, v31, v22, v23, v24, v32);

    if ([v25 count])
    {
      [v11 clientRemote_deliverObject:v25];
    }

    if (v29 && [(objc_class *)v16 conformsToProtocol:&OBJC_PROTOCOL___PDEndpointServerEntityHooks])
    {
      v26 = [v12 predicate];
      [(objc_class *)v16 endpointServer:self willQueryForObjectWithPredicate:v26];
    }

    [v11 clientRemote_finishWithOffset:v38[3] error:0];
    v13[2](v13);

    _Block_object_dispose(&v37, 8);
    v18 = v27;
    v14 = v28;
  }

  else
  {
    [v11 clientRemote_finishWithOffset:0 error:v17];
    v13[2](v13);
  }

  objc_autoreleasePoolPop(v14);
}

- (void)remote_executeRosterQuery:(id)a3 executeQuery:(id)a4 completion:(id)a5
{
  v8 = a3;
  v46 = a4;
  v9 = a5;
  v10 = [(PDEndpointServer *)self client];
  if (v10)
  {
    v11 = v10[31];

    if (v11)
    {
      context = objc_autoreleasePoolPush();
      v12 = [(PDEndpointServer *)self database];
      v13 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&stru_1002024D8];

      *v54 = 0;
      v55 = v54;
      v56 = 0x2020000000;
      v57 = 0;
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10002ADD0;
      v47[3] = &unk_100202500;
      v52 = v54;
      v14 = [[NSMutableArray alloc] initWithCapacity:50];
      v48 = v14;
      v53 = 50;
      v8 = v13;
      v49 = v8;
      v15 = v12;
      v50 = v15;
      v16 = v46;
      v51 = v16;
      v45 = objc_retainBlock(v47);
      v17 = sub_1000BA854(v15);
      v18 = v17;
      if (v17 && *(v17 + 9) == 1)
      {
        if (([v16 rosterSearchOptions] & 4) == 0)
        {
          goto LABEL_10;
        }

        v19 = [v16 rosterSearchOptions] ^ 4;
      }

      else
      {
        if (([v16 rosterSearchOptions] & 2) == 0)
        {
          goto LABEL_10;
        }

        v19 = [v16 rosterSearchOptions] ^ 2;
      }

      [v16 setRosterSearchOptions:v19];
LABEL_10:
      sub_10017C060(v15, v16, v45);
      if ([v14 count])
      {
        CLSInitLog();
        v20 = CLSLogSearch;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v41 = [v14 count];
          *buf = 134217984;
          v59 = v41;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Delivering %lu remaining objects (local).", buf, 0xCu);
        }

        [v8 clientRemote_deliverObject:v14];
        [v14 removeAllObjects];
      }

      v21 = [v16 keyword];
      v22 = [v21 length] > 1;

      if (v22)
      {
        v23 = +[PDASMSearchStringCache shared];
        v24 = [v16 keyword];
        v25 = [v23 isCached:v24];

        if (v25)
        {
          CLSInitLog();
          v26 = CLSLogSearch;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = [v16 keyword];
            *buf = 138412290;
            v59 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "String: '%@' appears in search string cache.  Returning.", buf, 0xCu);
          }

          [v8 clientRemote_finishWithOffset:*(v55 + 3) error:0];
          v9[2](v9);
LABEL_42:

          goto LABEL_43;
        }
      }

      if (([v16 rosterSearchOptions] & 4) != 0 && (objc_msgSend(v16, "groupID"), v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
      {
        CLSInitLog();
        v29 = CLSLogSearch;
        if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Search is for group expansion.  Just using local results.", buf, 2u);
        }
      }

      else
      {
        if (([v16 rosterSearchBehaviors] & 2) != 0)
        {
          v23 = [(PDEndpointServer *)self daemon];
          v43 = [v23 mode];
          v31 = [v23 operationsManager];
          v32 = sub_100121714(v31);

          if (v32)
          {
            v33 = [(PDEndpointServer *)self asmRosterSearchFinishBlock:v16 query:v8 asmConfig:v18 buffer:v14 buffSize:50 nextOffset:*(v55 + 3)];
            v34 = sub_10017BFC4(v15, v16, v45, v33);
            v35 = v34;
            if (v43 || !v34 || ![v34 needsToMakeNetworkRequest] || (objc_msgSend(v23, "operationsManager"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v36 == 0, v36, v37))
            {
              CLSInitLog();
              v40 = CLSLogSearch;
              if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Finishing query (local).", buf, 2u);
              }

              [v8 clientRemote_finishWithOffset:*(v55 + 3) error:0];
            }

            else
            {
              v38 = [v23 operationsManager];
              sub_1001232E0(v38, v35);
            }

            v9[2](v9);
          }

          else
          {
            CLSInitLog();
            v39 = CLSLogSearch;
            if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Invalid user.  No server query", buf, 2u);
            }

            [v8 clientRemote_finishWithOffset:*(v55 + 3) error:0];
            v9[2](v9);
          }

          goto LABEL_42;
        }

        CLSInitLog();
        v30 = CLSLogSearch;
        if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Server search not requested, finishing up.", buf, 2u);
        }
      }

      [v8 clientRemote_finishWithOffset:*(v55 + 3) error:0];
      v9[2](v9);
LABEL_43:

      _Block_object_dispose(v54, 8);
      objc_autoreleasePoolPop(context);
      goto LABEL_47;
    }
  }

  CLSInitLog();
  v42 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
  {
    *v54 = 0;
    _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Skipping remote_executeRosterQuery from invalid client", v54, 2u);
  }

  [v8 clientRemote_finishWithOffset:0 error:0];
  v9[2](v9);
LABEL_47:
}

- (void)remote_contextsMatchingIdentifierPath:(id)a3 parentContextID:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  sub_100023888(self, a2);
  v12 = [(PDEndpointServer *)self database];
  v13 = [v12 select:objc_opt_class() identity:v10];

  v14 = [(PDEndpointServer *)self database];
  v15 = sub_10014C7CC(v14, v9, v13);

  v16 = [(PDEndpointServer *)self client];
  if (v16)
  {
    v17 = v16[24];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(PDEndpointServer *)self client];
  v19 = sub_1000B2528(v18);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v15;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v21)
  {
    v30 = v13;
    v31 = v10;
    v32 = v9;
    v22 = *v34;
    while (2)
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v20);
        }

        if ((v17 & 1) == 0)
        {
          v24 = *(*(&v33 + 1) + 8 * i);
          v25 = [v24 appIdentifier];
          v26 = v25;
          if (v19)
          {
            if (!v25)
            {
              goto LABEL_19;
            }

            v27 = [v24 appIdentifier];
            v28 = [v19 isEqualToString:v27];

            if ((v28 & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          else if (v25)
          {

LABEL_19:
            v9 = v32;
            v21 = [NSError cls_createErrorWithCode:4 format:@"Can't fetch contexts at path: %@", v32];
            v29 = 0;
            goto LABEL_20;
          }
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }

    v29 = v20;
    v9 = v32;
LABEL_20:
    v13 = v30;
    v10 = v31;
  }

  else
  {
    v29 = v20;
  }

  v11[2](v11, v29, v21);
}

- (void)remote_fetchThumbnailBlobForContextID:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self database];
  v10 = objc_opt_class();
  v13 = v8;
  v11 = [NSArray arrayWithObjects:&v13 count:1];

  v12 = [v9 select:v10 where:@"parentObjectID = ?" bindings:v11];

  v7[2](v7, v12, 0);
}

- (void)remote_deleteThumbnailBlobForContextID:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self database];
  v10 = objc_opt_class();
  v13 = v8;
  v11 = [NSArray arrayWithObjects:&v13 count:1];

  v12 = [v9 deleteAll:v10 where:@"parentObjectID = ?" bindings:v11];
  v7[2](v7, v12, 0);
}

- (void)remote_fetchProgressReportingCapabilitiesForContextID:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  sub_100023888(self, a2);
  v9 = objc_opt_new();
  v10 = [(PDEndpointServer *)self database];
  v11 = objc_opt_class();
  v16 = v8;
  v12 = [NSArray arrayWithObjects:&v16 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002C178;
  v14[3] = &unk_100202548;
  v15 = v9;
  v13 = v9;
  [v10 selectAll:v11 where:@"parentObjectID = ?" bindings:v12 block:v14];

  v7[2](v7, v13, 0);
}

- (void)remote_deleteProgressReportingCapabilitiesForContextID:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self database];
  v10 = objc_opt_class();
  v13 = v8;
  v11 = [NSArray arrayWithObjects:&v13 count:1];

  v12 = [v9 deleteAll:v10 where:@"parentObjectID = ?" bindings:v11];
  v7[2](v7, v12, 0);
}

- (void)remote_fetchContextsForContextIDs:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  sub_100023888(self, a2);
  v9 = objc_opt_new();
  v10 = [PDDatabase whereSQLForArray:v8 prefix:@"objectID in "];
  v11 = [(PDEndpointServer *)self database];
  v12 = objc_opt_class();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002C3D8;
  v14[3] = &unk_1002022C0;
  v15 = v9;
  v13 = v9;
  [v11 selectAll:v12 where:v10 bindings:v8 block:v14];

  v7[2](v7, v13, 0);
}

- (void)remote_getServerSyncStatusWithCompletion:(id)a3
{
  v14 = a3;
  v5 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  v6 = [(PDEndpointServer *)self client];
  if (v6 && (v7 = v6[26], v6, (v7 & 1) != 0))
  {
    v8 = [(PDEndpointServer *)self database];
    v9 = sub_1000507D8(v8);
    if (sub_100050844(v8))
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = 0;
    if (sub_1000508B0(v8))
    {
      v12 = v10 | 4;
    }

    else
    {
      v12 = v10;
    }
  }

  else
  {
    v11 = [NSError cls_createErrorWithCode:4 description:@"Not Authorized"];
    v12 = 0;
    v8 = v11;
  }

  v13 = [NSNumber numberWithUnsignedInteger:v12];
  v14[2](v14, v13, v11);

  objc_autoreleasePoolPop(v5);
}

- (void)remote_getServerInternalStateInfoWithCompletion:(id)a3
{
  v23 = a3;
  v5 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  v6 = [(PDEndpointServer *)self client];
  if (v6 && (v7 = v6[26], v6, (v7 & 1) != 0))
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = [(PDEndpointServer *)self database];
    v10 = CLSSyncInitialRosterSyncDateKey;
    v11 = sub_10016A65C(v9, CLSSyncInitialRosterSyncDateKey);
    [v8 setObject:v11 forKeyedSubscript:v10];

    v12 = CLSSyncInitialHandoutSyncDateKey;
    v13 = sub_10016A65C(v9, CLSSyncInitialHandoutSyncDateKey);
    [v8 setObject:v13 forKeyedSubscript:v12];

    v14 = CLSSyncLatestRosterSyncDateKey;
    v15 = sub_10016A65C(v9, CLSSyncLatestRosterSyncDateKey);
    [v8 setObject:v15 forKeyedSubscript:v14];

    v16 = CLSSyncLatestHandoutSyncDateKey;
    v17 = sub_10016A65C(v9, CLSSyncLatestHandoutSyncDateKey);
    [v8 setObject:v17 forKeyedSubscript:v16];

    v18 = CLSSyncLatestRosterSyncFailureDateKey;
    v19 = sub_10016A65C(v9, CLSSyncLatestRosterSyncFailureDateKey);
    [v8 setObject:v19 forKeyedSubscript:v18];

    v20 = CLSSyncLatestHandoutSyncFailureDateKey;
    v21 = sub_10016A65C(v9, CLSSyncLatestHandoutSyncFailureDateKey);
    [v8 setObject:v21 forKeyedSubscript:v20];

    v22 = [v8 copy];
    v23[2](v23, v22, 0);
  }

  else
  {
    v8 = [NSError cls_createErrorWithCode:4 description:@"Not Authorized"];
    (v23)[2](v23, 0, v8);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)remote_fetchCountOfActivitiesForContextID:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self database];
  v10 = objc_opt_class();
  v14 = v8;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [v9 count:v10 where:@"parentObjectID = ?" bindings:v11];

  v13 = [NSNumber numberWithUnsignedInteger:v12];

  v7[2](v7, v13, 0);
}

- (void)remote_authTreeWithCompletion:(id)a3
{
  v13 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(PDEndpointServer *)self database];
  v6 = v5;
  if (v5 && (sub_1000717E8(v5) & 2) != 0)
  {
    v11 = [CLSAuthTree alloc];
    v12 = 0;
  }

  else
  {
    if (sub_10007116C(v6))
    {
      v7 = [(PDEndpointServer *)self client];
      v8 = sub_1000B2528(v7);

      v9 = sub_10014CAF0(v6, v8);
      v10 = 0;

      goto LABEL_8;
    }

    v11 = [CLSAuthTree alloc];
    v12 = 2;
  }

  v9 = [v11 initWithOverridingStatus:{v12, v13}];
  v10 = 0;
LABEL_8:
  v13[2](v13, v9, v10);

  objc_autoreleasePoolPop(v4);
}

- (void)remote_authTreeForAttachment:(id)a3 withCompletion:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [(PDEndpointServer *)self database];
  v9 = v8;
  if (v8 && (sub_1000717E8(v8) & 2) != 0)
  {
    v12 = [CLSAuthTree alloc];
    v13 = 0;
  }

  else
  {
    if (sub_10007116C(v9))
    {
      v10 = sub_100016CF0(v9, v14);
      v11 = 0;
      goto LABEL_8;
    }

    v12 = [CLSAuthTree alloc];
    v13 = 2;
  }

  v10 = [v12 initWithOverridingStatus:{v13, v14}];
  v11 = 0;
LABEL_8:
  v6[2](v6, v10, v11);

  objc_autoreleasePoolPop(v7);
}

- (void)remote_saveObjects:(id)a3 saveResponse:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  [(PDEndpointServer *)self saveObjects:v11 saveResponse:v8 isRemoteClient:1 completion:v9];
  objc_autoreleasePoolPop(v10);
}

- (void)saveObjects:(id)a3 saveResponse:(id)a4 isRemoteClient:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v45 = a3;
  v49 = a4;
  v48 = a6;
  sub_100023888(self, a2);
  v11 = [(PDEndpointServer *)self _createMainAppContext:0];
  v12 = [(PDEndpointServer *)self client];
  v47 = sub_1000B2528(v12);

  v13 = [(PDEndpointServer *)self database];
  v14 = v13;
  if (v13)
  {
    v15 = (sub_1000717E8(v13) >> 1) & 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  v16 = sub_1000711FC(v14);
  v46 = [v16 objectID];

  v17 = [(PDEndpointServer *)self client];
  if (v17)
  {
    v18 = v17[25];
  }

  else
  {
    v18 = 0;
  }

  if (v7)
  {
    v19 = [(PDEndpointServer *)self client];
    v20 = v19;
    if (v19 && (*(v19 + 26) & 1) != 0)
    {
      v21 = 1;
    }

    else
    {
      v22 = [(PDEndpointServer *)self client];
      if (v22)
      {
        v21 = v22[27];
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v76 = 0;
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10002D300;
  v73[3] = &unk_100202568;
  v74 = v15;
  v44 = objc_retainBlock(v73);
  if (v7)
  {
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_10002D3A0;
    v71[3] = &unk_100202970;
    v72 = v48;
    v23 = [v49 synchronousRemoteObjectProxyWithErrorHandler:v71];

    v49 = v23;
  }

  v24 = [(PDEndpointServer *)self client];
  if (v24)
  {
    v25 = v24[31];

    if (v25)
    {
      v26 = objc_opt_new();
      v27 = [PDSchoolworkCollaborationStateChangeManager alloc];
      v28 = [(PDEndpointServer *)self client];
      v29 = sub_1000B2528(v28);
      v30 = [(PDEndpointServer *)self database];
      v31 = sub_1001111CC(&v27->super.isa, v29, v30);

      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_10002D3B0;
      v57[3] = &unk_100202590;
      v58 = v14;
      v32 = v45;
      v59 = v32;
      v33 = v26;
      v67 = v75;
      v60 = v33;
      v61 = self;
      v68 = v21 & 1;
      v69 = v18 & 1;
      v62 = v47;
      v66 = v44;
      v70 = v15;
      v63 = v46;
      v34 = v31;
      v64 = v34;
      v35 = v49;
      v65 = v35;
      if ([v58 withSyncEnabled:v57] && !objc_msgSend(v33, "count"))
      {
        v39 = 0;
        goto LABEL_29;
      }

      v36 = [v33 count];
      if (v36)
      {
        if (v36 != 1)
        {
          v82[0] = CLSErrorUnderlyingErrorsKey;
          v82[1] = NSLocalizedDescriptionKey;
          v83[0] = v33;
          v83[1] = @"Save failed!";
          v40 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
          v39 = [NSError errorWithDomain:CLSClassKitDomainIdentifier code:9 userInfo:v40];

          goto LABEL_29;
        }

        v37 = [v33 firstObject];
      }

      else
      {
        CLSInitLog();
        v38 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v32;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Save failed; objects: %@", &buf, 0xCu);
        }

        v37 = [NSError cls_createErrorWithCode:3 description:@"Save failed!"];
      }

      v39 = v37;
LABEL_29:
      [v35 clientRemote_saveDone:v39];
      v41 = sub_100111548(v34);
      if ([v41 count])
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v78 = 0x3032000000;
        v79 = sub_100026A68;
        v80 = sub_100026A78;
        v42 = [(PDEndpointServer *)self client];
        v81 = sub_1000B2528(v42);

        objc_initWeak(&location, self);
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_10002DE50;
        v50[3] = &unk_1002025E0;
        objc_copyWeak(&v55, &location);
        p_buf = &buf;
        v51 = v34;
        v52 = self;
        v53 = v48;
        [(PDEndpointServer *)self entitled_publishCollaborationStateChanges:v41 completion:v50];

        objc_destroyWeak(&v55);
        objc_destroyWeak(&location);
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v48[2]();
      }

      goto LABEL_38;
    }
  }

  CLSInitLog();
  v43 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Skipping saveObjects from invalid client", &buf, 2u);
  }

  [v49 clientRemote_saveDone:0];
LABEL_38:

  _Block_object_dispose(v75, 8);
}

- (void)remote_currentUserWithCompletion:(id)a3
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  CLSInitLog();
  v7 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "PDEndpointServer remote_currentUserWithCompletion", buf, 2u);
  }

  v8 = +[PDUserDefaults sharedDefaults];
  v9 = [v8 enableVerboseLogging];

  if (v9)
  {
    CLSLogDebugCurrentPersona();
  }

  sub_100023888(self, a2);
  v10 = [(PDEndpointServer *)self client];
  if (v10 && (v11 = v10[26], v10, (v11 & 1) != 0))
  {
    v12 = [(PDEndpointServer *)self client];
    v13 = sub_1000B2528(v12);

    v14 = [(PDEndpointServer *)self client];
    if (v14)
    {
      v15 = v14[25];
    }

    else
    {
      v15 = 0;
    }

    if (v13)
    {
      v50 = [v13 isEqualToString:@"com.apple.Preferences"] & v15;
    }

    else
    {
      v50 = 0;
    }

    v16 = [(PDEndpointServer *)self client];
    if (v16)
    {
      v49 = (v16[30] & v15);
    }

    else
    {
      v49 = 0;
    }

    if (v13)
    {
      HIDWORD(v48) = [v13 isEqualToString:@"com.apple.classroom.instructord"];
      LODWORD(v48) = [v13 isEqualToString:@"com.apple.studentd"] & v15;
      HIDWORD(v46) = [v13 isEqualToString:@"com.apple.schoolwork.ClassKitApp"];
      LODWORD(v46) = [v13 isEqualToString:@"com.apple.classroom"];
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    v17 = v6;
    v18 = sub_10003E1B4();
    CLSCurrentPersonaUniqueIdentifier();
    v52 = v18;
    v19 = v53 = 0;
    v20 = sub_10003FF10(PDAccountInfo, v18, v19, &v53);
    v51 = v53;
    CLSInitLog();
    v21 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      v35 = v21;
      v36 = [(PDEndpointServer *)self database];
      v37 = @"yes";
      if (!v36)
      {
        v37 = @"no";
      }

      *buf = 138412290;
      *&buf[4] = v37;
      _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "PDEndpointServer remote_currentUserWithCompletioncalled self.database is not nil: %@. About to synchronously fetch currentUser from the DB", buf, 0xCu);
    }

    v22 = [(PDEndpointServer *)self daemon];
    v23 = [(PDEndpointServer *)self database];
    v24 = sub_1000DA28C(v22, v23);

    CLSInitLog();
    v25 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v24;
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "PDEndpointServer remote_currentUserWithCompletioncalled finished fetching currentUser from DB: %@", buf, 0xCu);
    }

    v26 = [v24 devMode];
    v6 = v17;
    v27 = v19;
    if ((([v24 requiresPersonaMatch] ^ 1 | HIDWORD(v47) | v47 | HIDWORD(v48) | v20 | v48 | v50 | v49) & 1) != 0 || v26 - 1 < 2)
    {
      [v24 setClientPersonaUniqueIdentifier:v19];
      [v24 setHasMatchingPersona:v20];
      v30 = [v24 schoolworkUbiquitousContainerURL];
      if (v30)
      {
        v31 = [(PDEndpointServer *)self client];
        v32 = v31;
        if (v31 && (v33 = *(v31 + 32)) != 0)
        {
          v34 = v33;
          [v33 auditToken];
        }

        else
        {
          v34 = 0;
          *buf = 0u;
          v55 = 0u;
        }

        v38 = [v30 sandboxExtensionTokenForProcess:buf];

        [v24 setSchoolworkUbiquitousContainerURLSandboxExtension:v38];
      }

      v39 = [v24 multimediaCacheDirectoryURL];

      if (v39)
      {
        v40 = [(PDEndpointServer *)self client];
        v41 = v40;
        if (v40 && (v42 = *(v40 + 32)) != 0)
        {
          v43 = v42;
          [v42 auditToken];
        }

        else
        {
          v43 = 0;
          *buf = 0u;
          v55 = 0u;
        }

        v44 = [v39 sandboxExtensionTokenForProcess:buf];

        [v24 setMultimediaCacheDirectoryURLSandboxExtension:v44];
      }

      CLSInitLog();
      v45 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "PDEndpointServer remote_currentUserWithCompletion calling completion with currentUser: %@", buf, 0xCu);
      }

      v5[2](v5, v24, 0);

      v29 = v51;
    }

    else
    {
      CLSInitLog();
      v28 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "PDEndpointServer remote_currentUserWithCompletion bailing and calling completion with nil currentUser", buf, 2u);
      }

      v29 = v51;
      (v5)[2](v5, 0, v51);
    }
  }

  else
  {
    v13 = [NSError cls_createErrorWithCode:4 description:@"Not Authorized"];
    (v5)[2](v5, 0, v13);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)remote_getCurrentUseriCloudQuotaInfoWithCompletion:(id)a3
{
  v11 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = +[PDUserDefaults sharedDefaults];
  v7 = [v6 enableVerboseLogging];

  if (v7)
  {
    CLSLogDebugCurrentPersona();
  }

  sub_100023888(self, a2);
  v8 = [(PDEndpointServer *)self client];
  if (v8 && (v9 = v8[26], v8, (v9 & 1) != 0))
  {
    sub_10004010C(PDAccountInfo, v11);
  }

  else
  {
    v10 = [NSError cls_createErrorWithCode:4 description:@"Not Authorized"];
    (*(v11 + 2))(v11, 0, 0, 0, v10);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)remote_registerDataObserver:(id)a3 withID:(id)a4 querySpecification:(id)a5 oldChangeTag:(unint64_t)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  sub_100023888(self, a2);
  v17 = [(PDEndpointServer *)self client];
  if (v17 && (v18 = v17[31], v17, (v18 & 1) != 0))
  {
    v19 = [v15 entityName];
    v20 = NSClassFromString(v19);

    v33 = 0;
    LOBYTE(v19) = sub_10002A284(self, v20, &v33);
    v21 = v33;
    if (v19)
    {
      v22 = sub_1000E3BF8([PDDataObserver alloc], v13, v20, [v15 observerOptions]);
      v23 = [(PDEndpointServer *)self database];
      v32 = v21;
      v24 = sub_1000E3D20(v22, v23, v15, a6, &v32);
      v25 = v32;

      if (v24)
      {
        queue = self->_queue;
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10002EE98;
        v28[3] = &unk_1002028D0;
        v28[4] = self;
        v29 = v14;
        v30 = v22;
        v31 = v23;
        dispatch_sync(queue, v28);
        v16[2](v16, 0);
      }

      else
      {
        if (v22 && (v22[6] & 1) == 0)
        {
          [v22 setInvalidated:1];
          [v22[8] clientRemote_invalidate];
        }

        (v16)[2](v16, v25);
      }
    }

    else
    {
      [v13 clientRemote_invalidate];
      (v16)[2](v16, v21);
      v25 = v21;
    }
  }

  else
  {
    CLSInitLog();
    v27 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Skipping remote_registerDataObserver from invalid client", buf, 2u);
    }

    [v13 clientRemote_invalidate];
    v25 = [NSError cls_createErrorWithCode:4 format:@"Not Authorized"];
    (v16)[2](v16, v25);
  }
}

- (void)remote_deregisterDataObserverWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002F028;
  v10[3] = &unk_1002029E8;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  v9 = a4;
  dispatch_sync(queue, v10);
  v9[2](v9);
}

- (void)_invalidateObserver:(id)a3
{
  if (a3 && (*(a3 + 48) & 1) == 0)
  {
    [a3 setInvalidated:1];
    v4 = *(a3 + 8);

    [v4 clientRemote_invalidate];
  }
}

- (void)remote_featureIsEnabled:(int)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(PDEndpointServer *)self client];
  if (!v7 || (v8 = v7[31], v7, (v8 & 1) == 0))
  {
    CLSInitLog();
    v12 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      v14[0] = 0;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Skipping remote_featureIsEnabled from invalid client", v14, 2u);
    }

    v9 = [NSError cls_createErrorWithCode:4 format:@"Not Authorized"];
    goto LABEL_9;
  }

  if (a3)
  {
    v9 = [NSError errorWithDomain:CLSErrorCodeDomain code:314 userInfo:0];
LABEL_9:
    v13 = v9;
    v6[2](v6, 0, v9);

    goto LABEL_10;
  }

  v10 = [(PDEndpointServer *)self database];
  v11 = [v10 entityExistsByClass:objc_opt_class() identity:@"ee.publishClass"];

  (v6)[2](v6, v11, 0);
LABEL_10:
}

- (void)remote_getUserDefaultsConfigurationDictionaryWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(PDEndpointServer *)self isInternalWithError:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[PDUserDefaults configurationDictionary];
    v4[2](v4, v7, 0);
  }

  else
  {
    (v4)[2](v4, 0, v6);
  }
}

- (void)remote_getUserDefaultForDefaultNamed:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(PDEndpointServer *)self isInternalWithError:&v12];
  v9 = v12;
  if (v8)
  {
    v10 = +[PDUserDefaults sharedDefaults];
    v11 = [v10 valueForDefaultNamed:v6];
    v7[2](v7, v11, 0);
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }
}

- (void)remote_setUserDefaultValue:(id)a3 forDefaultNamed:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v11 = [(PDEndpointServer *)self isInternalWithError:&v17];
  v12 = v17;
  if (v11)
  {
    v13 = +[PDUserDefaults sharedDefaults];
    v16 = v12;
    v14 = [v13 setValue:v8 forDefaultNamed:v9 error:&v16];
    v15 = v16;

    v10[2](v10, v14, v15);
    v12 = v15;
  }

  else
  {
    v10[2](v10, 0, v12);
  }
}

- (void)remote_addAuthorizationStatus:(unint64_t)a3 forHandoutAssignedItem:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  sub_100023888(self, a2);
  v16 = 0;
  v11 = [(PDEndpointServer *)self isInternalWithError:&v16];
  v12 = v16;
  if (v11)
  {
    v13 = [(PDEndpointServer *)self database];
    v14 = sub_1000160C4(v13, a3, v9);

    if ((v14 & 1) == 0)
    {
      v15 = [NSError cls_createErrorWithCode:100 format:@"failed to add authorization at objectID: %@", v9];

      v12 = v15;
    }

    v10[2](v10, v14, v12);
  }

  else
  {
    v10[2](v10, 0, v12);
  }
}

- (void)remote_removeAuthorizationStatus:(unint64_t)a3 forHandoutAssignedItem:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  sub_100023888(self, a2);
  v16 = 0;
  v11 = [(PDEndpointServer *)self isInternalWithError:&v16];
  v12 = v16;
  if (v11)
  {
    v13 = [(PDEndpointServer *)self database];
    v14 = sub_10001639C(v13, a3, v9);

    if ((v14 & 1) == 0)
    {
      v15 = [NSError cls_createErrorWithCode:100 format:@"failed to remove authorization at objectID: %@", v9];

      v12 = v15;
    }

    v10[2](v10, v14, v12);
  }

  else
  {
    v10[2](v10, 0, v12);
  }
}

- (void)remote_urlSuitableForOpeningForExpectedURL:(id)a3 itemID:(id)a4 ownerName:(id)a5 zoneName:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(PDEndpointServer *)self client];
  if (v17 && (v18 = v17[26], v17, (v18 & 1) != 0))
  {
    v19 = sub_10012D028(PDFileSyncManager, 0);
    v20 = sub_10003E1B4();
    v21 = v20;
    if (v20)
    {
      v22 = *(v20 + 72);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    v26 = v12;
    v27 = v19;
    v28 = v13;
    v29 = v14;
    v30 = v15;
    v31 = v16;
    v24 = v19;
    CLSPerformWithPersona();
  }

  else
  {
    v25 = [NSError cls_createErrorWithCode:4 description:@"Fetching URL for asset not allowed."];
    (*(v16 + 2))(v16, 0, v25);
  }
}

- (void)remote_cloudKitThumbnailUrlSuitableForOpeningForAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDEndpointServer *)self client];
  if (v8 && (v9 = v8[26], v8, (v9 & 1) != 0))
  {
    v10 = sub_10003E1B4();
    v11 = v10;
    if (v10)
    {
      v12 = *(v10 + 72);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v15 = v6;
    v16 = v7;
    CLSPerformWithPersona();
  }

  else
  {
    v14 = [NSError cls_createErrorWithCode:4 description:@"Fetching thumbnail URL for asset not allowed."];
    (*(v7 + 2))(v7, 0, v14);
  }
}

- (void)remote_cloudKitUrlSuitableForOpeningForAsset:(id)a3 downloadObserver:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PDEndpointServer *)self client];
  if (v11 && (v12 = v11[26], v11, (v12 & 1) != 0))
  {
    v13 = sub_10003E1B4();
    v14 = v13;
    if (v13)
    {
      v15 = *(v13 + 72);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    CLSPerformWithPersona();
  }

  else
  {
    v17 = [NSError cls_createErrorWithCode:4 description:@"Fetching URL for asset not allowed."];
    (*(v10 + 2))(v10, 0, v17);
  }
}

- (void)remote_cloudKitUrlSuitableForStreamingAsset:(id)a3 downloadObserver:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PDEndpointServer *)self client];
  if (v11 && (v12 = v11[26], v11, (v12 & 1) != 0))
  {
    v13 = sub_10003E1B4();
    v14 = v13;
    if (v13)
    {
      v15 = *(v13 + 72);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    CLSPerformWithPersona();
  }

  else
  {
    v17 = [NSError cls_createErrorWithCode:4 description:@"Fetching streaming URL for asset not allowed."];
    (*(v10 + 2))(v10, 0, 0, v17);
  }
}

- (void)remote_deleteBackingStoreForAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDEndpointServer *)self client];
  if (v8 && (v9 = v8[26], v8, (v9 & 1) != 0))
  {
    v10 = sub_10003E1B4();
    v11 = v10;
    if (v10)
    {
      v12 = *(v10 + 72);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v15 = v6;
    v16 = v7;
    CLSPerformWithPersona();
  }

  else
  {
    v14 = [NSError cls_createErrorWithCode:4 description:@"Deleting backing store for asset not allowed."];
    (*(v7 + 2))(v7, 0, v14);
  }
}

- (void)remote_createShareIfNeededForURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDEndpointServer *)self client];
  if (!v8 || (v9 = v8[26], v8, (v9 & 1) == 0))
  {
    v10 = [NSError cls_createErrorWithCode:4 description:@"Creating share not allowed."];
    (*(v7 + 2))(v7, 1, 0, 0, v10);
    goto LABEL_12;
  }

  v10 = sub_10003E1B4();
  sub_1000408B8(v10);
  if (v10)
  {
    v11 = *(v10 + 96);
    v12 = *(v10 + 112);
    v13 = v12;
    if (v11)
    {
      if (v12)
      {
        v14 = *(v10 + 72);
        v18 = v6;
        v11 = v11;
        v13 = v13;
        v19 = v7;
        CLSPerformWithPersona();
      }

      else
      {
        v17 = *(v10 + 120);
        (*(v7 + 2))(v7, 1, 0, 0, v17);

        v13 = 0;
      }

      goto LABEL_10;
    }

    v15 = *(v10 + 104);
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = v15;
  (*(v7 + 2))(v7, 1, 0, 0, v16);

  v11 = 0;
LABEL_10:

LABEL_12:
}

- (void)remote_uploadAsset:(id)a3 createThumbnailIfNeeded:(BOOL)a4 uploadObserver:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(PDEndpointServer *)self client];
  if (v12 && (v13 = v12[26], v12, (v13 & 1) != 0))
  {
    v14 = sub_10003E1B4();
    v15 = v14;
    if (v14)
    {
      v16 = *(v14 + 72);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    CLSPerformWithPersona();
  }

  else
  {
    v18 = [NSError cls_createErrorWithCode:4 description:@"Uploading asset not allowed."];
    (*(v11 + 2))(v11, v18);
  }
}

- (void)remote_topLevelContentStoreCacheDirectoryURLWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v10 = 0;
  LOBYTE(self) = [(PDEndpointServer *)self isInternalWithError:&v10];
  v6 = v10;
  if (self)
  {
    v9 = v6;
    v7 = sub_1000E0D58(PDFileManager, &v9);
    v8 = v9;

    v5[2](v5, v7, v8);
    v6 = v8;
  }

  else
  {
    v5[2](v5, 0, v6);
  }
}

- (void)remote_currentUserContentStoreCacheDirectoryURLWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v10 = 0;
  LOBYTE(self) = [(PDEndpointServer *)self isInternalWithError:&v10];
  v6 = v10;
  if (self)
  {
    v9 = v6;
    v7 = sub_10012D068(PDFileSyncManager, &v9);
    v8 = v9;

    v5[2](v5, v7, v8);
    v6 = v8;
  }

  else
  {
    v5[2](v5, 0, v6);
  }
}

- (void)remote_canSearchRostersWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v6 = [(PDEndpointServer *)self database];
  v7 = sub_10003E1B4();
  if (sub_10004054C(v7))
  {
    v8 = sub_1000711FC(v6);

    if (v8)
    {
      v9 = sub_1000BA854(v6);
      if (v9)
      {
        v10 = [NSNumber numberWithBool:v9[8]];
        v5[2](v5, v10, 0);
      }

      else
      {
        v16 = [NSError cls_createErrorWithCode:100 format:@"Cannot search roster because ASMConfig is not available"];
        (v5)[2](v5, 0, v16);

        v10 = &__kCFBooleanFalse;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = [(PDEndpointServer *)self client];
  if (v11)
  {
    v12 = v11[26];
  }

  else
  {
    v12 = 0;
  }

  v13 = +[PDUserDefaults sharedDefaults];
  v14 = [v13 enableVerboseLogging];

  if (v14)
  {
    CLSInitLog();
    v15 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      v17 = v15;
      v18 = [(PDEndpointServer *)self client];
      v19 = sub_1000B2528(v18);
      v20 = v19;
      v21 = @"no";
      if (v12)
      {
        v21 = @"yes";
      }

      v22 = 138412546;
      v23 = v19;
      v24 = 2112;
      v25 = v21;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Checking roster search availability for client '%@' (isDashboardClient:%@)", &v22, 0x16u);
    }
  }

  v9 = [NSNumber numberWithBool:v12 & 1];
  v5[2](v5, v9, 0);
LABEL_13:
}

- (void)remote_studentActivityForAttachmentsWithIDs:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self client];
  v10 = v9;
  if (!v9 || *(v9 + 26) != 1 || ([(PDEndpointServer *)self database], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_23;
  }

  v12 = v11;
  v13 = sub_1000717E8(v11);

  if ((v13 & 1) == 0)
  {
LABEL_23:
    v33 = [NSError cls_createErrorWithCode:4 description:@"Fetching student activity is not allowed."];
    v8[2](v8, 0, v33);

    goto LABEL_24;
  }

  v34 = v8;
  v36 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v35 = v7;
  obj = v7;
  v14 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    v17 = &CLSLogAsset_ptr;
    v37 = self;
    v38 = *v42;
    do
    {
      v18 = 0;
      v39 = v15;
      do
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v41 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = [(PDEndpointServer *)self database];
        v22 = v17[90];
        v23 = [v21 select:objc_opt_class() identity:v19];

        if (v23)
        {
          v24 = [v23 contextPath];

          if (v24)
          {
            v25 = v17;
            v26 = [v23 contextPath];
            v27 = [CLSContext objectIDForIdentifierPath:v26];

            if (v27)
            {
              v28 = [(PDEndpointServer *)self database];
              v29 = objc_opt_class();
              v47 = v27;
              v30 = [NSArray arrayWithObjects:&v47 count:1];
              v31 = [v28 select:v29 where:@"parentObjectID = ?" bindings:v30];

              if (v31)
              {
                [v36 setObject:v31 forKeyedSubscript:v19];
              }

              self = v37;
              v16 = v38;
            }

            v17 = v25;
            v15 = v39;
          }
        }

        else
        {
          CLSInitLog();
          v32 = CLSLogDefault;
          if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v46 = v19;
            _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "No attachment found with objectID %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v20);
        v18 = v18 + 1;
      }

      while (v15 != v18);
      v15 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v15);
  }

  v8 = v34;
  (v34)[2](v34, v36, 0);

  v7 = v35;
LABEL_24:
}

- (void)remote_startAppActivity:(id)a3 bundleID:(id)a4 activityType:(unint64_t)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  sub_100023888(self, a2);
  v14 = [(PDEndpointServer *)self client];
  if (!v14 || (v15 = v14[26], v14, (v15 & 1) == 0))
  {
    v17 = [NSError cls_createErrorWithCode:4 description:@"Action not allowed."];
    v13[2](v13, 0, v17);
    goto LABEL_46;
  }

  v16 = [(PDEndpointServer *)self database];
  v17 = v16;
  if (a5 == 3)
  {
    v55 = [v16 select:objc_opt_class() identity:v11];
    v21 = objc_opt_class();
    v60 = v11;
    v22 = [NSArray arrayWithObjects:&v60 count:1];
    v23 = [v17 select:v21 where:@"parentObjectID = ?" bindings:v22];

    if (!v23)
    {
      v23 = [[CLSActivity alloc] _initWithTargetClass:objc_opt_class()];
      v24 = [(PDEndpointServer *)self client];
      v25 = sub_1000B2528(v24);
      [v23 setAppIdentifier:v25];

      [v23 setParentObjectID:v11];
      v26 = [v23 objectID];
      [v55 setCurrentActivityID:v26];

      v27 = +[NSDate now];
      [v55 setDateLastModified:v27];

      v59[0] = v55;
      v59[1] = v23;
      v28 = [NSArray arrayWithObjects:v59 count:2];
      [v17 saveAndSyncObjects:v28];
    }

    v29 = [v23 objectID];
    sub_100088880(v17);
    v30 = objc_opt_class();
    v58 = v29;
    v31 = [NSArray arrayWithObjects:&v58 count:1];
    v32 = [v17 select:v30 where:@"activityID = ?" bindings:v31];

    if (!v32)
    {
      v32 = sub_1000877D8([PDAppUsage alloc], v29, v12);
    }

    v33 = v55;
    v34 = [v55 parentObjectID];
    if (v34)
    {
      if (sub_1000881B0(v17, v34))
      {
        v53 = [v17 select:objc_opt_class() identity:v34];
        [v53 timeExpectation];
        if (v35 == 0.0)
        {
          CLSInitLog();
          v46 = CLSLogDefault;
          if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Not tracking time for this assignment, no time expectation specified.", buf, 2u);
          }

          v39 = [NSError cls_createErrorWithCode:0 description:@"No time expectation specified"];
          v13[2](v13, 0, v39);
        }

        else
        {
          v36 = +[NSDate now];
          sub_100087930(v32, v36);

          if (v32)
          {
            *(v32 + 8) = 1;
          }

          v37 = [v17 insertOrUpdateObject:v32];
          v38 = v37;
          if (v37)
          {
            v39 = 0;
          }

          else
          {
            v52 = v37;
            CLSInitLog();
            v47 = CLSLogDefault;
            if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
            {
              v49 = v47;
              if (v32)
              {
                v50 = *(v32 + 16);
              }

              else
              {
                v50 = 0;
              }

              v51 = v50;
              *buf = 138543362;
              v57 = v51;
              _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Failed to update AppUsage. AppUsageID: %{public}@", buf, 0xCu);
            }

            v39 = [NSError cls_createErrorWithCode:8 description:@"Failed to update AppUsage.", v51];
            v38 = v52;
          }

          v13[2](v13, v38, v39);
        }

        goto LABEL_40;
      }

      CLSInitLog();
      v44 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Not tracking time for this assignment, usage threshold reached.", buf, 2u);
      }

      v42 = @"Usage threshold reached";
      v43 = 0;
    }

    else
    {
      CLSInitLog();
      v41 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        v48 = v41;
        v54 = [v55 objectID];
        *buf = 138543362;
        v57 = v54;
        _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Missing parent object Attachment. CLSAssignedItemID: %{public}@", buf, 0xCu);
      }

      v42 = @"Missing attachment";
      v43 = 100;
    }

    v45 = [NSError cls_createErrorWithCode:v43 description:v42];
    v13[2](v13, 0, v45);

LABEL_40:
LABEL_41:

    goto LABEL_46;
  }

  if (a5 != 1)
  {
    CLSInitLog();
    v40 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v57 = a5;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Invoke start activity on un-supported attachment type - %lu", buf, 0xCu);
    }

    v33 = [NSError cls_createErrorWithCode:2 description:@"Start activity on un-supported attachment type."];
    v13[2](v13, 0, v33);
    goto LABEL_41;
  }

  sub_100088880(v16);
  v18 = sub_1000879B4(v17, v12);
  if (!sub_1000878C0(v18))
  {
    goto LABEL_9;
  }

  if (v18)
  {
    v18[9] = 1;
  }

  if (([v17 insertOrUpdateObject:v18] & 1) == 0)
  {
    v19 = [NSError cls_createErrorWithCode:8 description:@"Failed to update PDAppUsage."];
    v20 = 0;
  }

  else
  {
LABEL_9:
    v19 = 0;
    v20 = 1;
  }

  v13[2](v13, v20, v19);

LABEL_46:
}

- (void)remote_startActivityFailed:(id)a3 completion:(id)a4
{
  v16 = a3;
  v7 = a4;
  sub_100023888(self, a2);
  v8 = [(PDEndpointServer *)self client];
  if (v8 && (v9 = v8[26], v8, (v9 & 1) != 0))
  {
    v10 = [(PDEndpointServer *)self database];
    v11 = sub_100087F3C(v10, v16);
    if (v11)
    {
      v12 = [v10 select:objc_opt_class() identity:v11];
      v13 = v12;
      if (v12)
      {
        *(v12 + 8) = 0;
      }

      v14 = [v10 insertOrUpdateObject:v12];
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = [NSError cls_createErrorWithCode:8 description:@"Failed to update AppUsage"];
      }

      v7[2](v7, v14, v15);
    }

    else
    {
      v13 = [NSError cls_createErrorWithCode:0 description:@"AppUsage not found"];
      v7[2](v7, 0, v13);
    }
  }

  else
  {
    v10 = [NSError cls_createErrorWithCode:4 description:@"Action not allowed."];
    v7[2](v7, 0, v10);
  }
}

- (void)remote_fetchAppBasedAssignmentUsage:(id)a3 completion:(id)a4
{
  v12 = a3;
  v7 = a4;
  sub_100023888(self, a2);
  v8 = [(PDEndpointServer *)self client];
  if (v8 && (v9 = v8[26], v8, (v9 & 1) != 0))
  {
    v10 = [(PDEndpointServer *)self database];
    v11 = [NSNumber numberWithDouble:sub_100088364(v10, v12, 0)];
    v7[2](v7, v11, 0);

    v7 = v11;
  }

  else
  {
    v10 = [NSError cls_createErrorWithCode:4 description:@"Action not allowed."];
    (v7)[2](v7, 0, v10);
  }
}

- (void)remote_submittableURLByCurrentUser:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self client];
  if (v9 && (v10 = v9[27], v9, (v10 & 1) != 0))
  {
    v11 = [(PDEndpointServer *)self database];
    v12 = sub_1000BA854(v11);
    v13 = v12;
    if (v12 && (*(v12 + 9) & 1) != 0)
    {
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_100031F54;
      v64[3] = &unk_100202680;
      v14 = v7;
      v65 = v14;
      v66 = v8;
      v15 = objc_retainBlock(v64);
      *buf = 0;
      v59 = buf;
      v60 = 0x3032000000;
      v61 = sub_100026A68;
      v62 = sub_100026A78;
      v63 = 0;
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = sub_100026A68;
      v56 = sub_100026A78;
      v57 = 0;
      v46 = 0;
      v47 = &v46;
      v48 = 0x3032000000;
      v49 = sub_100026A68;
      v50 = sub_100026A78;
      v51 = 0;
      obj = 0;
      v16 = [(PDEndpointServer *)self isCurrentUserStudent:&obj];
      objc_storeStrong(&v63, obj);
      if (v16)
      {
        v17 = sub_10003E1B4();
        v18 = v17;
        if (v17)
        {
          v19 = *(v17 + 72);
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;
        v44 = v14;
        CLSPerformWithPersona();

        if (v53[5] && (v21 = v47[5]) != 0)
        {
          v22 = [v21 zoneID];
          v23 = [v22 zoneName];

          v24 = objc_opt_class();
          v72[0] = v53[5];
          v72[1] = v23;
          v25 = [NSArray arrayWithObjects:v72 count:2];
          v26 = [v11 select:v24 where:@"brItemID = ? and brZoneName = ?" bindings:v25];

          CLSInitLog();
          v27 = CLSLogDefault;
          if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
          {
            v41 = v53[5];
            *v68 = 138412546;
            v69 = v41;
            v70 = 2112;
            v71 = v23;
            _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Looking up asset matching brItemID = %@ and brZoneName = %@", v68, 0x16u);
          }

          v28 = [v26 parentObjectID];
          v29 = v28 == 0;

          if (v29)
          {
            CLSInitLog();
            v37 = CLSLogDefault;
            if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
            {
              v42 = v53[5];
              *v68 = 138412546;
              v69 = v42;
              v70 = 2112;
              v71 = v23;
              _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "failed to find asset matching brItemID = %@ and brZoneName = %@", v68, 0x16u);
            }

            [*(v59 + 5) cls_log:CLSLogHandout];
            (v15[2])(v15, 0, *(v59 + 5));
          }

          else
          {
            v30 = objc_opt_class();
            v31 = [v26 parentObjectID];
            v67 = v31;
            v32 = [NSArray arrayWithObjects:&v67 count:1];
            v33 = [v11 select:v30 where:@"objectID = ?" bindings:v32];

            if (v33)
            {
              v34 = 0;
            }

            else
            {
              v38 = [v26 objectID];
              v39 = [NSError cls_createErrorWithCode:100 format:@"failed to find attachment for asset with id: %@", v38, _NSConcreteStackBlock, 3221225472, sub_100032040, &unk_1002023B0, v44, &v52, buf, &v46];
              v40 = *(v59 + 5);
              *(v59 + 5) = v39;

              [*(v59 + 5) cls_log:CLSLogHandout];
              v34 = *(v59 + 5);
            }

            (v15[2])(v15, v33 != 0, v34);
          }
        }

        else
        {
          (v15[2])(v15, 0, *(v59 + 5));
        }
      }

      else
      {
        (v15[2])(v15, 0, *(v59 + 5));
      }

      _Block_object_dispose(&v46, 8);

      _Block_object_dispose(&v52, 8);
      _Block_object_dispose(buf, 8);

      v36 = v65;
    }

    else
    {
      CLSInitLog();
      v35 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Skipping remote_submittableURLByCurrentUser from non-EDU MAID", buf, 2u);
      }

      v36 = [NSError cls_createErrorWithCode:4 format:@"Not Authorized"];
      (*(v8 + 2))(v8, 0, v36);
    }
  }

  else
  {
    v43 = [NSError cls_createErrorWithCode:4 description:@"Action not allowed."];
    (*(v8 + 2))(v8, 0, v43);
  }
}

- (void)remote_currentUserIsStudent:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v6 = [(PDEndpointServer *)self client];
  if (v6 && (v7 = v6[27], v6, (v7 & 1) != 0))
  {
    v11 = 0;
    v8 = [(PDEndpointServer *)self isCurrentUserStudent:&v11];
    v9 = v11;
    v5[2](v5, v8, v9);
  }

  else
  {
    v10 = [NSError cls_createErrorWithCode:4 description:@"Action not allowed."];
    v5[2](v5, 0, v10);
  }
}

- (void)remote_publishHandoutGraph:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self client];
  v10 = v9;
  if (!v9 || *(v9 + 26) != 1 || ([(PDEndpointServer *)self database], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_25;
  }

  v12 = v11;
  v13 = sub_1000717E8(v11);

  if ((v13 & 2) == 0)
  {
LABEL_25:
    v15 = [NSError cls_createErrorWithCode:4 description:@"Publishing handouts not allowed."];
    v8[2](v8, 0, v15);
    goto LABEL_26;
  }

  v14 = [(PDEndpointServer *)self client];
  v15 = sub_1000B2528(v14);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v32 = v7;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v36 + 1) + 8 * i);
        v22 = [v21 appIdentifier];

        if (!v22)
        {
          [v21 setAppIdentifier:v15];
        }

        if ([v21 conformsToProtocol:&OBJC_PROTOCOL___PDEndpointServerEntityHooks] && (objc_msgSend(v21, "willBeProcessedByEndpointServer:", self) & 1) == 0)
        {
          v8[2](v8, 0, 0);
          v23 = v16;
          v7 = v32;
          goto LABEL_23;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v23 = [(PDEndpointServer *)self daemon];
  v24 = [v23 operationsManager];

  if (v24)
  {
    v25 = [PDHandoutPublish alloc];
    v26 = [(PDEndpointServer *)self database];
    v27 = sub_10012BEB8(v25, v26, v16);

    v28 = [(PDEndpointServer *)self client];
    v29 = sub_1000B2528(v28);
    [v27 setSourceApplicationBundleIdentifier:v29];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100032658;
    v33[3] = &unk_1002026A8;
    v34 = v8;
    [v27 addOnFinishBlock:v33];
    v30 = [v23 operationsManager];
    sub_1001232E0(v30, v27);
  }

  else
  {
    CLSInitLog();
    v31 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Operations manager is nil!", buf, 2u);
    }

    v27 = [NSError cls_createErrorWithCode:100 description:@"Operations manager is nil.", v32];
    v8[2](v8, 0, v27);
  }

  v7 = v32;

LABEL_23:
LABEL_26:
}

- (void)remote_fetchDeletedObjectIDsNewerThanDate:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(PDEndpointServer *)self database];
  v10 = objc_opt_class();
  v15 = v7;
  v11 = [NSArray arrayWithObjects:&v15 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100032858;
  v13[3] = &unk_100202A30;
  v14 = v8;
  v12 = v8;
  [v9 selectAll:v10 where:@"deletedAtDate >= ?" bindings:v11 block:v13];

  v6[2](v6, v12);
}

- (void)remote_repairHandoutAttachments:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self client];
  if (v9 && (v10 = v9[26], v9, (v10 & 1) != 0))
  {
    v11 = [(PDEndpointServer *)self daemon];
    v12 = [v11 operationsManager];

    if (v12)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = v7;
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          v17 = 0;
          do
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v27 + 1) + 8 * v17) setNeedsRepair:1];
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v15);
      }

      v18 = [PDHandoutPublish alloc];
      v19 = [(PDEndpointServer *)self database];
      v20 = sub_10012BEB8(v18, v19, v13);

      v21 = [(PDEndpointServer *)self client];
      v22 = sub_1000B2528(v21);
      [v20 setSourceApplicationBundleIdentifier:v22];

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100032BD4;
      v25[3] = &unk_1002026A8;
      v26 = v8;
      [v20 addOnFinishBlock:v25];
      v23 = [v11 operationsManager];
      sub_1001232E0(v23, v20);
    }

    else
    {
      CLSInitLog();
      v24 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Operations manager is nil!", buf, 2u);
      }

      v20 = [NSError cls_createErrorWithCode:100 description:@"Operations manager is nil."];
      (*(v8 + 2))(v8, 0, v20);
    }
  }

  else
  {
    v11 = [NSError cls_createErrorWithCode:4 description:@"Repairing handout attachments not allowed."];
    (*(v8 + 2))(v8, 0, v11);
  }
}

- (void)remote_fetchCollectionsWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v6 = [(PDEndpointServer *)self client];
  if (v6 && (v7 = v6[26], v6, (v7 & 1) != 0))
  {
    v8 = [(PDEndpointServer *)self daemon];
    v9 = [v8 operationsManager];

    if (v9)
    {
      v10 = [PDCollectionSearchOperation alloc];
      v11 = [(PDEndpointServer *)self database];
      v12 = [(PDCollectionSearchOperation *)v10 initForCollectionsWithDatabase:v11];

      v13 = [v8 operationsManager];
      sub_1001232E0(v13, v12);

      v5[2](v5, 1, 0);
    }

    else
    {
      CLSInitLog();
      v14 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        v16[0] = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Operations manager is nil!", v16, 2u);
      }

      v15 = [NSError cls_createErrorWithCode:100 description:@"Operations manager is nil."];
      (v5)[2](v5, 0, v15);
    }
  }

  else
  {
    v8 = [NSError cls_createErrorWithCode:4 description:@"Fetching Collections not allowed. Not a Dashboard Client."];
    (v5)[2](v5, 0, v8);
  }
}

- (void)remote_fetchCollectionItemsWithCompletion:(id)a3
{
  v5 = a3;
  sub_100023888(self, a2);
  v6 = [(PDEndpointServer *)self client];
  if (v6 && (v7 = v6[26], v6, (v7 & 1) != 0))
  {
    v8 = [(PDEndpointServer *)self daemon];
    v9 = [v8 operationsManager];

    if (v9)
    {
      v10 = [PDCollectionSearchOperation alloc];
      v11 = [(PDEndpointServer *)self database];
      v12 = [(PDCollectionSearchOperation *)v10 initForCollectionItemsWithDatabase:v11];

      v13 = [(PDEndpointServer *)self client];
      v14 = sub_1000B2528(v13);
      [v12 setSourceApplicationBundleIdentifier:v14];

      v15 = [v8 operationsManager];
      sub_1001232E0(v15, v12);

      v5[2](v5, 1, 0);
    }

    else
    {
      CLSInitLog();
      v16 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        v18[0] = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Operations manager is nil!", v18, 2u);
      }

      v17 = [NSError cls_createErrorWithCode:100 description:@"Operations manager is nil."];
      (v5)[2](v5, 0, v17);
    }
  }

  else
  {
    v8 = [NSError cls_createErrorWithCode:4 description:@"Fetching Collection Items not allowed. Not a Dashboard Client."];
    (v5)[2](v5, 0, v8);
  }
}

- (void)remote_deleteCollectionRelatedObjectsWithCompletion:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self client];
  if (v9 && (v10 = v9[26], v9, (v10 & 1) != 0))
  {
    v11 = [(PDEndpointServer *)self database];
    v12 = sub_1000711FC(v11);

    if (v12)
    {
      v13 = [(PDEndpointServer *)self daemon];
      v14 = [v13 operationsManager];

      if (v14)
      {
        v15 = [PDCollectionPublishOperation alloc];
        v16 = [(PDEndpointServer *)self database];
        v17 = [(PDCollectionPublishOperation *)v15 initWithDatabase:v16 andObjectsToDelete:v7];

        v18 = [(PDEndpointServer *)self client];
        v19 = sub_1000B2528(v18);
        [(PDOperation *)v17 setSourceApplicationBundleIdentifier:v19];

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100033338;
        v23[3] = &unk_1002026D0;
        v24 = v8;
        [(PDOperation *)v17 addOnFinishBlock:v23];
        v20 = [v13 operationsManager];
        sub_1001232E0(v20, v17);
      }

      else
      {
        CLSInitLog();
        v22 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Operations manager is nil!", buf, 2u);
        }

        v17 = [NSError cls_createErrorWithCode:100 description:@"Operations manager is nil."];
        (*(v8 + 2))(v8, 0, v17);
      }
    }

    else
    {
      CLSInitLog();
      v21 = CLSLogCollection;
      if (os_log_type_enabled(CLSLogCollection, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Must be signed in to delete collections.", buf, 2u);
      }

      v13 = [NSError cls_createErrorWithCode:2 description:@"Must be signed in to delete collections."];
      (*(v8 + 2))(v8, 0, v13);
    }
  }

  else
  {
    v11 = [NSError cls_createErrorWithCode:4 description:@"Deleting Collections not allowed. Not a Dashboard Client."];
    (*(v8 + 2))(v8, 0, v11);
  }
}

- (void)remote_collaborationStatesForObjectWithID:(id)a3 ownerPersonID:(id)a4 completion:(id)a5
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  sub_100023888(self, a2);
  v11 = [(PDEndpointServer *)self client];
  if (v11 && (v12 = v11[26], v11, (v12 & 1) != 0))
  {
    v13 = [(PDEndpointServer *)self database];
    v14 = sub_100163860(v13, v15, v9);

    v10[2](v10, v14, 0);
  }

  else
  {
    v14 = [NSError cls_createErrorWithCode:4 description:@"Fetching assignment states not allowed. Not a Dashboard Client."];
    (v10)[2](v10, 0, v14);
  }
}

- (void)remote_collaborationStatesForObjectWithID:(id)a3 classID:(id)a4 forOwnersWithRole:(unint64_t)a5 completion:(id)a6
{
  v17 = a3;
  v11 = a4;
  v12 = a6;
  sub_100023888(self, a2);
  v13 = [(PDEndpointServer *)self client];
  if (v13 && (v14 = v13[26], v13, (v14 & 1) != 0))
  {
    v15 = [(PDEndpointServer *)self database];
    v16 = sub_100163A80(v15, v17, v11, a5);

    v12[2](v12, v16, 0);
  }

  else
  {
    v16 = [NSError cls_createErrorWithCode:4 description:@"Fetching assignment states not allowed. Not a Dashboard Client."];
    (v12)[2](v12, 0, v16);
  }
}

- (void)remote_publishCollaborationStateChanges:(id)a3 completion:(id)a4
{
  v11 = a3;
  v7 = a4;
  sub_100023888(self, a2);
  v8 = [(PDEndpointServer *)self client];
  if (v8 && (v9 = v8[26], v8, (v9 & 1) != 0))
  {
    [(PDEndpointServer *)self entitled_publishCollaborationStateChanges:v11 completion:v7];
  }

  else
  {
    v10 = [NSError cls_createErrorWithCode:4 description:@"Changing assignment state not allowed. Not a Dashboard Client."];
    (*(v7 + 2))(v7, 0, 0, v10);
  }
}

- (void)entitled_publishCollaborationStateChanges:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDEndpointServer *)self database];
  v9 = sub_1000711FC(v8);

  if (v9)
  {
    v10 = sub_1000711FC(v8);
    v11 = [v10 objectID];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v6;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = [v17 senderPersonID];

          if (!v18)
          {
            [v17 setSenderPersonID:v11];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v14);
    }

    v19 = [(PDEndpointServer *)self daemon];
    v20 = [v19 operationsManager];

    if (v20)
    {
      v21 = [PDCollaborationStateChangePublish alloc];
      v22 = [(PDEndpointServer *)self database];
      v23 = sub_1001596A4(v21, v22, v12);

      v24 = [(PDEndpointServer *)self client];
      v25 = sub_1000B2528(v24);
      [v23 setSourceApplicationBundleIdentifier:v25];

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100033AD8;
      v30[3] = &unk_1002026F8;
      v31 = v7;
      [v23 addOnFinishBlock:v30];
      v26 = [v19 operationsManager];
      sub_1001232E0(v26, v23);
    }

    else
    {
      CLSInitLog();
      v28 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Operations manager is nil!", buf, 2u);
      }

      v23 = [NSError cls_createErrorWithCode:100 description:@"Operations manager is nil.", v29];
      (*(v7 + 2))(v7, 0, 0, v23);
    }

    v6 = v29;
  }

  else
  {
    CLSInitLog();
    v27 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Must be signed in to publish state changes.", buf, 2u);
    }

    v11 = [NSError cls_createErrorWithCode:2 description:@"Must be signed in to publish state changes."];
    (*(v7 + 2))(v7, 0, 0, v11);
  }
}

- (void)remote_triggerUserNotificationReviewDueHandoutsWithReferenceDate:(id)a3 completion:(id)a4
{
  v15 = a3;
  v7 = a4;
  sub_100023888(self, a2);
  v8 = [(PDEndpointServer *)self client];
  if (v8 && (v9 = v8[30], v8, (v9 & 1) != 0))
  {
    v10 = [(PDEndpointServer *)self daemon];
    v11 = [v10 userNotificationManager];

    v12 = [v11 reviewDueHandoutsTrigger];
    v13 = [v12 fetchHandoutsDueYesterdayFromDate:v15];
    v14 = [v12 dueYesterdayUserNotificationDataFromHandouts:v13];
    [v12 fireTriggerWithNotificationData:v14];
    v7[2](v7, 0);

    v7 = v12;
  }

  else
  {
    v11 = [NSError cls_createErrorWithCode:4 description:@"Triggering notifications not allowed. Use pdtool"];
    (v7)[2](v7, v11);
  }
}

- (void)remote_triggerUserNotificationHandoutDueSoonWithReferenceDate:(id)a3 completion:(id)a4
{
  v15 = a3;
  v7 = a4;
  sub_100023888(self, a2);
  v8 = [(PDEndpointServer *)self client];
  if (v8 && (v9 = v8[30], v8, (v9 & 1) != 0))
  {
    v10 = [(PDEndpointServer *)self daemon];
    v11 = [v10 userNotificationManager];

    v12 = [v11 handoutDueSoonTrigger];
    v13 = [v12 fetchHandoutsDueNextDayFromDate:v15];
    v14 = [v12 dueTomorrowUserNotificationDataFromHandouts:v13];
    [v12 fireTriggerWithNotificationData:v14];
    v7[2](v7, 0);

    v7 = v12;
  }

  else
  {
    v11 = [NSError cls_createErrorWithCode:4 description:@"Triggering notifications not allowed.  Use pdtool"];
    (v7)[2](v7, v11);
  }
}

- (void)remote_triggerUserNotificationHandoutPastDueSummaryWithReferenceDate:(id)a3 completion:(id)a4
{
  v15 = a3;
  v7 = a4;
  sub_100023888(self, a2);
  v8 = [(PDEndpointServer *)self client];
  if (v8 && (v9 = v8[30], v8, (v9 & 1) != 0))
  {
    v10 = [(PDEndpointServer *)self daemon];
    v11 = [v10 userNotificationManager];

    v12 = [v11 handoutPastDueTrigger];
    v13 = [v12 fetchActiveHandoutsPastDueFromDate:v15];
    v14 = [v12 pastDueUserNotificationDataFromHandouts:v13];
    [v12 fireTriggerWithNotificationData:v14];
    v7[2](v7, 0);

    v7 = v12;
  }

  else
  {
    v11 = [NSError cls_createErrorWithCode:4 description:@"Triggering notifications not allowed.  Use pdtool"];
    (v7)[2](v7, v11);
  }
}

- (void)remote_triggerUserNotificationRevisionRequestedWithAttachmentID:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self client];
  if (v9 && (v10 = v9[30], v9, (v10 & 1) != 0))
  {
    v11 = [(PDEndpointServer *)self daemon];
    v12 = [v11 userNotificationManager];

    v13 = [v12 revisionNeededTrigger];
    if (v13)
    {
      v14 = [(PDEndpointServer *)self database];
      v15 = [v14 select:objc_opt_class() identity:v7];

      if (v15)
      {
        v16 = [(PDEndpointServer *)self database];
        v17 = objc_opt_class();
        v18 = [v15 parentObjectID];
        v19 = [v16 select:v17 identity:v18];

        if (v19)
        {
          v20 = [(PDEndpointServer *)self database];
          v21 = objc_opt_class();
          v30 = v19;
          v22 = [v19 objectID];
          v31 = v22;
          v23 = [NSArray arrayWithObjects:&v31 count:1];
          v24 = [v20 select:v21 where:@"parentObjectID = ?" bindings:v23];

          if (v24)
          {
            v25 = [(PDEndpointServer *)self database];
            v26 = [v13 notificationDataWithDatabase:v25 recipient:v24 attachmentID:v7];

            [v13 fireTriggerWithNotificationData:v26];
            v27 = 0;
          }

          else
          {
            v27 = [NSError cls_createErrorWithCode:2 description:@"Handout recipient does not exist"];
            v26 = v27;
          }

          v8[2](v8, v27);

          v19 = v30;
        }

        else
        {
          v29 = [NSError cls_createErrorWithCode:2 description:@"Handout does not exist"];
          v8[2](v8, v29);
        }
      }

      else
      {
        v28 = [NSError cls_createErrorWithCode:2 description:@"Handout attachment does not exist"];
        v8[2](v8, v28);
      }
    }

    else
    {
      v15 = [NSError cls_createErrorWithCode:2 description:@"Revision requested notification trigger does not exist. Are you signed in as a student?"];
      v8[2](v8, v15);
    }
  }

  else
  {
    v12 = [NSError cls_createErrorWithCode:4 description:@"Triggering notifications not allowed.  Use pdtool"];
    v8[2](v8, v12);
  }
}

- (void)remote_triggerUserNotificationRevisedSubmissionWithAttachmentID:(id)a3 studentName:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  sub_100023888(self, a2);
  v12 = [(PDEndpointServer *)self client];
  if (v12 && (v13 = v12[30], v12, (v13 & 1) != 0))
  {
    v14 = [(PDEndpointServer *)self daemon];
    v15 = [v14 userNotificationManager];

    v16 = [v15 revisedSubmissionTrigger];
    if (v16)
    {
      v17 = [(PDEndpointServer *)self database];
      v18 = [v17 select:objc_opt_class() identity:v9];

      if (v18)
      {
        v19 = [(PDEndpointServer *)self database];
        v20 = objc_opt_class();
        v21 = [v18 parentObjectID];
        v22 = [v19 select:v20 identity:v21];

        if (v22)
        {
          v23 = objc_opt_class();
          v24 = [v22 objectID];
          v47 = v24;
          v25 = [NSArray arrayWithObjects:&v47 count:1];
          v26 = v19;
          v27 = v25;
          v46 = v26;
          v28 = [v26 select:v23 where:@"parentObjectID = ?" bindings:v25];

          if (v28)
          {
            v45 = v28;
            v29 = [NSBundle bundleForClass:objc_opt_class()];
            v30 = [v29 localizedStringForKey:@"NOTIFICATION_TEACHER_REVIEW_REVISED_WORK_MESSAGE_FORMAT" value:&stru_100206880 table:@"ClassKit"];
            [v18 title];
            v32 = v31 = v22;
            v44 = [NSString stringWithFormat:v30, v10, v32];

            v22 = v31;
            v33 = [NSBundle bundleForClass:objc_opt_class()];
            v34 = [v33 localizedStringForKey:@"NOTIFICATION_TEACHER_REVIEW_REVISED_WORK_TITLE" value:&stru_100206880 table:@"ClassKit"];

            v43 = v34;
            v35 = sub_10012F04C([PDUserNotificationData alloc], 5, v34, v44);
            v37 = [v22 objectID];
            if (v35)
            {
              objc_setProperty_nonatomic_copy(v35, v36, v37, 24);
            }

            v39 = [v45 classID];
            v19 = v46;
            if (v35)
            {
              objc_setProperty_nonatomic_copy(v35, v38, v39, 32);
            }

            v41 = [v18 objectID];
            if (v35)
            {
              objc_setProperty_nonatomic_copy(v35, v40, v41, 48);
            }

            [v16 fireTriggerWithNotificationData:v35];
            v11[2](v11, 0);

            v42 = v44;
            v28 = v45;
          }

          else
          {
            v42 = [NSError cls_createErrorWithCode:2 description:@"Handout recipient does not exist"];
            (v11)[2](v11, v42);
            v19 = v46;
          }
        }

        else
        {
          v28 = [NSError cls_createErrorWithCode:2 description:@"Handout does not exist"];
          (v11)[2](v11, v28);
        }
      }

      else
      {
        v19 = [NSError cls_createErrorWithCode:2 description:@"Handout attachment does not exist"];
        (v11)[2](v11, v19);
      }
    }

    else
    {
      v18 = [NSError cls_createErrorWithCode:2 description:@"Revised submission notification trigger does not exist. Are you signed in as a teacher?"];
      (v11)[2](v11, v18);
    }
  }

  else
  {
    v15 = [NSError cls_createErrorWithCode:4 description:@"Triggering notifications not allowed.  Use pdtool"];
    (v11)[2](v11, v15);
  }
}

- (void)remote_triggerUserNotificationHandoutAssignedWithHandoutID:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  sub_100023888(self, a2);
  v9 = [(PDEndpointServer *)self client];
  if (v9 && (v10 = v9[30], v9, (v10 & 1) != 0))
  {
    v11 = [(PDEndpointServer *)self daemon];
    v12 = [v11 userNotificationManager];

    v13 = [v12 handoutAssignedTrigger];
    if (v13)
    {
      v14 = [(PDEndpointServer *)self database];
      v15 = [v14 select:objc_opt_class() identity:v7];
      if (v15)
      {
        v16 = objc_opt_class();
        v23 = v7;
        v17 = [NSArray arrayWithObjects:&v23 count:1];
        v18 = [v14 select:v16 where:@"parentObjectID = ?" bindings:v17];

        if (v18)
        {
          v19 = [v15 objectID];
          v20 = [v15 title];
          v21 = [v13 notificationDataWithDatabase:v14 recipient:v18 handoutID:v19 handoutTitle:v20];

          [v13 fireTriggerWithNotificationData:v21];
          v22 = 0;
        }

        else
        {
          v22 = [NSError cls_createErrorWithCode:2 description:@"Handout recipient does not exist"];
          v21 = v22;
        }

        v8[2](v8, v22);
      }

      else
      {
        v18 = [NSError cls_createErrorWithCode:2 description:@"Handout does not exist"];
        v8[2](v8, v18);
      }
    }

    else
    {
      v14 = [NSError cls_createErrorWithCode:2 description:@"Handout notification trigger does not exist.  Are you signed in as a student?"];
      v8[2](v8, v14);
    }
  }

  else
  {
    v12 = [NSError cls_createErrorWithCode:4 description:@"Triggering notifications not allowed.  Use pdtool"];
    v8[2](v8, v12);
  }
}

- (void)remote_triggerUserNotificationWithTitle:(id)a3 message:(id)a4 wrappedImageURL:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  sub_100023888(self, a2);
  v12 = [v9 url];

  sub_100043340(PDPrivateUserNotificationManager, v11, v10, v12);
}

- (void)remote_publishClass:(id)a3 membersToInsert:(id)a4 membersToDelete:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  sub_100023888(self, a2);
  v15 = [(PDEndpointServer *)self client];
  if (v15 && (v16 = v15[26], v15, (v16 & 1) != 0))
  {
    v17 = [(PDEndpointServer *)self client];
    v18 = sub_1000B2528(v17);

    v47 = v11;
    v48 = v13;
    if ([v11 isDeleted])
    {
      v19 = 3;
    }

    else if ([v11 isTemporary])
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    v45 = v19;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v56 = 0u;
    v46 = v12;
    v20 = v12;
    v21 = [v20 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v57;
      while (2)
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v57 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v56 + 1) + 8 * i);
          v26 = [v25 appIdentifier];

          if (!v26)
          {
            [v25 setAppIdentifier:v18];
          }

          if ([v25 conformsToProtocol:&OBJC_PROTOCOL___PDEndpointServerEntityHooks] && (objc_msgSend(v25, "willBeProcessedByEndpointServer:", self) & 1) == 0)
          {
            (*(v14 + 2))(v14, 0, 0);
            v34 = v20;
LABEL_34:
            v12 = v46;
            v11 = v47;
            v13 = v48;
            goto LABEL_35;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v56 objects:v61 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v44 = v14;

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v27 = v48;
    v28 = [v27 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v53;
      while (2)
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v53 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v52 + 1) + 8 * j);
          v33 = [v32 appIdentifier];

          if (!v33)
          {
            [v32 setAppIdentifier:v18];
          }

          if ([v32 conformsToProtocol:&OBJC_PROTOCOL___PDEndpointServerEntityHooks] && (objc_msgSend(v32, "willBeProcessedByEndpointServer:", self) & 1) == 0)
          {
            v14 = v44;
            v44[2](v44, 0, 0);
            v34 = v27;
            goto LABEL_34;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    v34 = [(PDEndpointServer *)self daemon];
    v35 = [v34 operationsManager];

    if (v35)
    {
      v36 = [PDClassPublish alloc];
      v37 = [(PDEndpointServer *)self database];
      v38 = v20;
      v11 = v47;
      v39 = sub_10007F73C(v36, v37, v47, v38, v27, v45);

      v40 = [(PDEndpointServer *)self client];
      v41 = sub_1000B2528(v40);
      [v39 setSourceApplicationBundleIdentifier:v41];

      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100035234;
      v49[3] = &unk_100202720;
      v14 = v44;
      v50 = v44;
      [v39 addOnFinishBlock:v49];
      v42 = [v34 operationsManager];
      sub_1001232E0(v42, v39);
    }

    else
    {
      CLSInitLog();
      v43 = CLSLogDefault;
      v14 = v44;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Operations manager is nil!", buf, 2u);
      }

      v39 = [NSError cls_createErrorWithCode:100 description:@"Operations manager is nil.", v44];
      (*(v14 + 2))(v14, 0, v39);
      v11 = v47;
    }

    v12 = v46;
    v13 = v48;

LABEL_35:
  }

  else
  {
    v18 = [NSError cls_createErrorWithCode:4 description:@"Creating classes not allowed. Not a Dashboard Client."];
    (*(v14 + 2))(v14, 0, v18);
  }
}

- (void)remote_publishSurveyAnswers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDEndpointServer *)self client];
  if (v8 && (v9 = v8[26], v8, (v9 & 1) != 0))
  {
    v10 = [(PDEndpointServer *)self daemon];
    v11 = [v10 operationsManager];

    if (v11)
    {
      v12 = objc_opt_new();
      v13 = objc_opt_new();
      v14 = [(PDEndpointServer *)self database];
      v15 = objc_opt_class();
      v16 = [v6 objectID];
      v41[0] = v16;
      v41[1] = &off_10021B570;
      v17 = [NSArray arrayWithObjects:v41 count:2];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000358B0;
      v37[3] = &unk_100202748;
      v18 = v12;
      v38 = v18;
      v19 = v13;
      v39 = v19;
      [v14 selectAll:v15 where:@"surveyID = ? and state = ?" bindings:v17 block:v37];

      v20 = objc_opt_new();
      if ([v19 count])
      {
        v21 = [PDDatabase whereSQLForArray:v19 prefix:@"parentObjectID in "];
        v22 = [(PDEndpointServer *)self database];
        v23 = objc_opt_class();
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100035938;
        v35[3] = &unk_100202770;
        v36 = v20;
        [v22 selectAll:v23 where:v21 bindings:v19 block:v35];
      }

      v24 = [PDPublishSurveyAnswersOperation alloc];
      v25 = [(PDEndpointServer *)self database];
      v26 = sub_100082BC0(v24, v25, v6, v18, v20);

      v30 = _NSConcreteStackBlock;
      v31 = 3221225472;
      v32 = sub_10003594C;
      v33 = &unk_100202798;
      v34 = v7;
      [v26 addOnFinishBlock:&v30];
      v27 = [v10 operationsManager];
      sub_1001232E0(v27, v26);
    }

    else
    {
      CLSInitLog();
      v28 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Operations manager is nil!", buf, 2u);
      }

      v18 = [NSError cls_createErrorWithCode:100 description:@"Operations manager is nil."];
      (*(v7 + 2))(v7, 0, v18);
    }
  }

  else
  {
    CLSInitLog();
    v29 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "CLSDataStore unable to publish survey answer, app is not dashboard client", buf, 2u);
    }

    v10 = [NSError cls_createErrorWithCode:4 description:@"Not authorized."];
    (*(v7 + 2))(v7, 0, v10);
  }
}

- (void)remote_fetchSurveyAnswer:(id)a3 responderIDs:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  sub_100023888(self, a2);
  v12 = [(PDEndpointServer *)self client];
  if (v12 && (v13 = v12[26], v12, (v13 & 1) != 0))
  {
    v14 = [(PDEndpointServer *)self daemon];
    v15 = [v14 operationsManager];

    if (v15)
    {
      v16 = [PDFetchSurveyAnswerOperation alloc];
      v17 = [(PDEndpointServer *)self database];
      v18 = sub_1000A5C10(v16, v17, v9, v10);

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100035C74;
      v22[3] = &unk_1002027C0;
      v23 = v11;
      [v18 addOnFinishBlock:v22];
      v19 = [v14 operationsManager];
      sub_1001232E0(v19, v18);
    }

    else
    {
      CLSInitLog();
      v20 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Operations manager is nil!", buf, 2u);
      }

      v18 = [NSError cls_createErrorWithCode:100 description:@"Operations manager is nil."];
      (*(v11 + 2))(v11, 0, v18);
    }
  }

  else
  {
    CLSInitLog();
    v21 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "CLSDataStore unable to publish survey answer, app is not dashboard client", buf, 2u);
    }

    v14 = [NSError cls_createErrorWithCode:4 description:@"Not authorized."];
    (*(v11 + 2))(v11, 0, v14);
  }
}

- (void)remote_publishAdminRequests:(id)a3 withRequestor:(id)a4 adminRequestAccounts:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PDEndpointServer *)self client];
  if (v14 && (v15 = v14[26], v14, (v15 & 1) != 0))
  {
    v35 = v12;
    v36 = v11;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v41;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v40 + 1) + 8 * i);
          v22 = [(PDEndpointServer *)self client];
          v23 = sub_1000B2528(v22);
          [v21 setBundleIdentifier:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v18);
    }

    v24 = [(PDEndpointServer *)self daemon];
    v25 = [v24 operationsManager];

    if (v25)
    {
      v26 = [v24 operationsManager];
      v27 = sub_100121714(v26);

      v12 = v35;
      if (v27)
      {
        v28 = [PDASMPublishAccountOperation alloc];
        v29 = [(PDEndpointServer *)self database];
        v30 = sub_1000DF7CC(v28, v29, v16);
        v11 = v36;
      }

      else
      {
        v32 = [PDPublishAdminRequest alloc];
        v29 = [(PDEndpointServer *)self database];
        v33 = v32;
        v11 = v36;
        v30 = [(PDPublishAdminRequest *)v33 initWithDatabase:v29 adminRequests:v16 requestor:v36];
      }

      [(PDPublishAdminRequest *)v30 setAdminRequestAccounts:v35];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000360BC;
      v37[3] = &unk_1002027E8;
      v38 = v13;
      [(PDOperation *)v30 addOnFinishBlock:v37];
      v34 = [v24 operationsManager];
      sub_1001232E0(v34, v30);
    }

    else
    {
      CLSInitLog();
      v31 = CLSLogDefault;
      v12 = v35;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Operations manager is nil!", buf, 2u);
      }

      v30 = [NSError cls_createErrorWithCode:100 description:@"Operations manager is nil."];
      (*(v13 + 2))(v13, 0, v30);
      v11 = v36;
    }
  }

  else
  {
    v24 = [NSError cls_createErrorWithCode:4 description:@"Not authorized."];
    (*(v13 + 2))(v13, 0, v24);
  }
}

- (void)remote_deleteAdminRequestID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDEndpointServer *)self client];
  if (v8 && (v9 = v8[26], v8, (v9 & 1) != 0))
  {
    v10 = [(PDEndpointServer *)self database];
    v11 = objc_opt_class();
    v15 = v6;
    v12 = [NSArray arrayWithObjects:&v15 count:1];
    v13 = [v10 deleteAll:v11 where:@"objectID = ?" bindings:v12];

    v7[2](v7, v13, 0);
  }

  else
  {
    v14 = [NSError cls_createErrorWithCode:4 description:@"Not authorized."];
    (v7)[2](v7, 0, v14);
  }
}

- (void)remote_fetchOrphanedAssetsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PDEndpointServer *)self client];
  if (v5 && (v6 = v5[26], v5, (v6 & 1) != 0))
  {
    v7 = [(PDEndpointServer *)self database];
    v8 = sub_10015D1E8(v7);

    v4[2](v4, v8, 0);
  }

  else
  {
    v8 = [NSError cls_createErrorWithCode:4 description:@"Not authorized."];
    (v4)[2](v4, 0, v8);
  }
}

- (void)remote_relayRequestWithData:(id)a3 requestType:(unint64_t)a4 fileHandle:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(PDEndpointServer *)self client];
  if (!v13 || (v14 = v13[26], v13, (v14 & 1) == 0))
  {
    v16 = [NSError cls_createErrorWithCode:4 description:@"Not authorized."];
    goto LABEL_11;
  }

  v27 = 0;
  v28 = 0;
  v15 = [v11 seekToEndReturningOffset:&v28 error:&v27];
  v16 = v27;
  if ((v15 & 1) == 0)
  {
LABEL_11:
    v12[2](v12, 0, v16);
    goto LABEL_12;
  }

  v17 = [(PDEndpointServer *)self daemon];
  v18 = [v17 operationsManager];

  if (v18)
  {
    v19 = [PDRelayRequestOperation alloc];
    v20 = [(PDEndpointServer *)self database];
    v21 = [(PDRelayRequestOperation *)v19 initWithDatabase:v20 data:v10 fileHandle:v11 requestType:a4];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100036790;
    v24[3] = &unk_100202810;
    v25 = v12;
    [(PDOperation *)v21 addOnFinishBlock:v24];
    v22 = [v17 operationsManager];
    sub_1001232E0(v22, v21);
  }

  else
  {
    CLSInitLog();
    v23 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Operations manager is nil!", buf, 2u);
    }

    v21 = [NSError cls_createErrorWithCode:100 description:@"Operations manager is nil."];
    v12[2](v12, 0, v21);
  }

LABEL_12:
}

- (void)remote_saveInsightEvents:(id)a3 completion:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [(PDEndpointServer *)self client];
  if (!v7 || (v8 = v7[26], v7, (v8 & 1) == 0))
  {
    v18 = @"Not authorized.";
    goto LABEL_9;
  }

  v9 = [(PDEndpointServer *)self database];
  v10 = [PDEndpointRequestOperation isEndpointAvailable:@"uploadEvents" inDatabase:v9];

  if ((v10 & 1) == 0)
  {
    v18 = @"Not enabled.";
LABEL_9:
    v19 = [NSError cls_createErrorWithCode:4 description:v18];
    goto LABEL_10;
  }

  v11 = [(PDEndpointServer *)self database];
  v12 = [v11 insertOrUpdateObjects:v20];

  if (v12)
  {
    v13 = [(PDEndpointServer *)self daemon];
    v14 = [PDUploadEventsOperation alloc];
    v15 = [(PDEndpointServer *)self database];
    v16 = [(PDURLRequestOperation *)v14 initWithDatabase:v15];

    v17 = [v13 operationsManager];
    sub_100123A84(v17, v16);

    v6[2](v6, 1, 0);
    goto LABEL_11;
  }

  v19 = [NSError cls_createErrorWithCode:100 format:@"Failed to save events: %@", v20];
LABEL_10:
  v13 = v19;
  v6[2](v6, 0, v19);
LABEL_11:
}

- (id)asmRosterSearchFinishBlock:(id)a3 query:(id)a4 asmConfig:(id)a5 buffer:(id)a6 buffSize:(unint64_t)a7 nextOffset:(unint64_t)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100036FBC;
  v22[3] = &unk_100202860;
  v23 = a6;
  v24 = v13;
  v25 = v12;
  v26 = v14;
  v27 = a8;
  v15 = v14;
  v16 = v12;
  v17 = v13;
  v18 = v23;
  v19 = objc_retainBlock(v22);
  v20 = objc_retainBlock(v19);

  return v20;
}

- (int64_t)_authorizationStatusActivityWithID:(id)a3
{
  v4 = a3;
  v5 = [(PDEndpointServer *)self database];
  v6 = [v5 select:objc_opt_class() identity:v4];

  if (v6)
  {
    v7 = [v6 parentObjectID];
    v8 = [(PDEndpointServer *)self _authorizationStatusForHandoutAssignedItem:v7];

    if (v8 == 1)
    {
      v9 = 1;
    }

    else
    {
      v10 = [v6 parentObjectID];
      v9 = [(PDEndpointServer *)self _authorizationStatusForContextWithObjectID:v10];
    }
  }

  else
  {
    v9 = 2;
  }

  return v9;
}

- (int64_t)_authorizationStatusForContextWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(PDEndpointServer *)self database];
  v6 = objc_opt_class();
  v11 = v4;
  v7 = [NSArray arrayWithObjects:&v11 count:1];

  v8 = [v5 select:v6 where:@"objectID = ?" bindings:v7];

  v9 = [(PDEndpointServer *)self _authorizationStatusForContext:v8];
  return v9;
}

- (int64_t)_authorizationStatusForContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 2;
    v5 = [(PDEndpointServer *)self database];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100037594;
    v8[3] = &unk_100202888;
    v10 = &v11;
    v8[4] = self;
    v9 = v4;
    sub_10010BE68(v5, v8);

    v6 = v12[3];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

- (int64_t)_authorizationStatusForHandoutAssignedItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PDEndpointServer *)self database];
    v6 = [v5 select:objc_opt_class() identity:v4];

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 2;
    v7 = [(PDEndpointServer *)self database];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000377B8;
    v11[3] = &unk_100202888;
    v13 = &v14;
    v11[4] = self;
    v8 = v6;
    v12 = v8;
    sub_10010BE68(v7, v11);

    v9 = v15[3];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = 2;
  }

  return v9;
}

- (int64_t)_authorizationStatusForObject:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 2;
  v5 = [(PDEndpointServer *)self database];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100037988;
  v9[3] = &unk_100202270;
  v6 = v4;
  v11 = self;
  v12 = &v13;
  v10 = v6;
  sub_10010BE68(v5, v9);
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

- (id)_clientScopedPredicate:(id)a3 forEntityClass:(Class)a4
{
  v6 = a3;
  v7 = [(PDEndpointServer *)self client];
  v8 = v7;
  if (v7 && v7[24] == 1)
  {
  }

  else
  {
    v9 = [(PDEndpointServer *)self database];
    v10 = [v9 entityClass:a4 containsColumnNamed:@"appIdentifier"];

    if (v10)
    {
      v11 = [(PDEndpointServer *)self client];
      v12 = sub_1000B2528(v11);

      v13 = [v6 pd_scopeToKeyPath:@"appIdentifier" value:v12];

      goto LABEL_7;
    }
  }

  v13 = v6;
LABEL_7:

  return v13;
}

- (NSMutableDictionary)statusReport
{
  v3 = [(PDEndpointServer *)self client];
  v4 = sub_1000B2560(v3);
  v5 = [v4 mutableCopy];

  if (self && (previousCommands = self->_previousCommands) != 0)
  {
    v7 = [(NSMutableArray *)previousCommands->_buffer count];
  }

  else
  {
    v7 = 0;
  }

  v8 = [[NSString alloc] initWithFormat:@"Last %ld executed commands", v7];
  if (self)
  {
    v9 = self->_previousCommands;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = sub_1000B09A4(v10);
  [v5 setObject:v11 forKeyedSubscript:v8];

  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037E3C;
  block[3] = &unk_1002029C0;
  objc_copyWeak(&v17, &location);
  v13 = v5;
  v16 = v13;
  dispatch_sync(queue, block);
  [v13 setObject:&__kCFBooleanFalse forKeyedSubscript:@"is connected as dev"];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v13;
}

- (BOOL)isCurrentUserStudent:(id *)a3
{
  v5 = [(PDEndpointServer *)self database];
  v6 = sub_10003E1B4();
  v7 = CLSCurrentPersonaUniqueIdentifier();
  LODWORD(v8) = sub_10003FF10(PDAccountInfo, v6, v7, a3);
  v9 = [(PDEndpointServer *)self daemon];
  v10 = sub_1000DA28C(v9, v5);

  if (![v10 requiresPersonaMatch] || v8)
  {
    v8 = [v10 roles] & 1;
  }

  return v8;
}

- (PDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

@end