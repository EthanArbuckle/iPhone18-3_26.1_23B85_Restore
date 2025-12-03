@interface PDEndpointServer
- (BOOL)isCurrentUserStudent:(id *)student;
- (BOOL)isInternalWithError:(id *)error;
- (NSMutableDictionary)statusReport;
- (PDDaemon)daemon;
- (PDDatabase)database;
- (PDEndpointServer)initWithClient:(id)client daemon:(id)daemon;
- (id)_clientScopedPredicate:(id)predicate forEntityClass:(Class)class;
- (id)_createHandoutAssignedItemFrom:(id)from withError:(id *)error;
- (id)_createMainAppContext:(id *)context;
- (id)asmRosterSearchFinishBlock:(id)block query:(id)query asmConfig:(id)config buffer:(id)buffer buffSize:(unint64_t)size nextOffset:(unint64_t)offset;
- (id)userNotificationCenter;
- (int64_t)_authorizationStatusActivityWithID:(id)d;
- (int64_t)_authorizationStatusForContext:(id)context;
- (int64_t)_authorizationStatusForContextWithObjectID:(id)d;
- (int64_t)_authorizationStatusForHandoutAssignedItem:(id)item;
- (int64_t)_authorizationStatusForObject:(id)object;
- (void)_invalidateObserver:(id)observer;
- (void)_performQuery:(id)query querySpecification:(id)specification issueServerRequest:(BOOL)request completion:(id)completion;
- (void)databaseChanged:(id)changed;
- (void)dealloc;
- (void)entitled_publishCollaborationStateChanges:(id)changes completion:(id)completion;
- (void)invalidate;
- (void)remote_accountChanged;
- (void)remote_addAdminRequestor:(id)requestor completion:(id)completion;
- (void)remote_addAuthorizationStatus:(unint64_t)status forContextAtPath:(id)path completion:(id)completion;
- (void)remote_addAuthorizationStatus:(unint64_t)status forHandoutAssignedItem:(id)item completion:(id)completion;
- (void)remote_addOrganization:(id)organization withLocations:(id)locations completion:(id)completion;
- (void)remote_authTreeForAttachment:(id)attachment withCompletion:(id)completion;
- (void)remote_authTreeWithCompletion:(id)completion;
- (void)remote_authorizationStatusForContextAtPath:(id)path completion:(id)completion;
- (void)remote_authorizationStatusForHandoutAssignedItem:(id)item completion:(id)completion;
- (void)remote_canSearchRostersWithCompletion:(id)completion;
- (void)remote_cloudKitThumbnailUrlSuitableForOpeningForAsset:(id)asset completion:(id)completion;
- (void)remote_cloudKitUrlSuitableForOpeningForAsset:(id)asset downloadObserver:(id)observer completion:(id)completion;
- (void)remote_cloudKitUrlSuitableForStreamingAsset:(id)asset downloadObserver:(id)observer completion:(id)completion;
- (void)remote_collaborationStatesForObjectWithID:(id)d classID:(id)iD forOwnersWithRole:(unint64_t)role completion:(id)completion;
- (void)remote_collaborationStatesForObjectWithID:(id)d ownerPersonID:(id)iD completion:(id)completion;
- (void)remote_contextsMatchingIdentifierPath:(id)path parentContextID:(id)d completion:(id)completion;
- (void)remote_createShareIfNeededForURL:(id)l completion:(id)completion;
- (void)remote_currentUserContentStoreCacheDirectoryURLWithCompletion:(id)completion;
- (void)remote_currentUserIsStudent:(id)student;
- (void)remote_currentUserWithCompletion:(id)completion;
- (void)remote_databasePathWithCompletion:(id)completion;
- (void)remote_deleteAdminRequestID:(id)d completion:(id)completion;
- (void)remote_deleteAppWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)remote_deleteBackingStoreForAsset:(id)asset completion:(id)completion;
- (void)remote_deleteCollectionRelatedObjectsWithCompletion:(id)completion completion:(id)a4;
- (void)remote_deleteOrganization:(id)organization completion:(id)completion;
- (void)remote_deleteProgressReportingCapabilitiesForContextID:(id)d completion:(id)completion;
- (void)remote_deleteThumbnailBlobForContextID:(id)d completion:(id)completion;
- (void)remote_deregisterDataObserverWithID:(id)d completion:(id)completion;
- (void)remote_executeRosterQuery:(id)query executeQuery:(id)executeQuery completion:(id)completion;
- (void)remote_featureIsEnabled:(int)enabled completion:(id)completion;
- (void)remote_fetchAndCompleteActiveAssignedActivitiesForContextPath:(id)path withCompletion:(id)completion;
- (void)remote_fetchAppBasedAssignmentUsage:(id)usage completion:(id)completion;
- (void)remote_fetchCollectionItemsWithCompletion:(id)completion;
- (void)remote_fetchCollectionsWithCompletion:(id)completion;
- (void)remote_fetchContextsForContextIDs:(id)ds completion:(id)completion;
- (void)remote_fetchCountOfActivitiesForContextID:(id)d completion:(id)completion;
- (void)remote_fetchDeletedObjectIDsNewerThanDate:(id)date completion:(id)completion;
- (void)remote_fetchHandoutAttachmentForDocumentURL:(id)l withCompletion:(id)completion;
- (void)remote_fetchOrphanedAssetsWithCompletion:(id)completion;
- (void)remote_fetchProgressReportingCapabilitiesForContextID:(id)d completion:(id)completion;
- (void)remote_fetchReportsWithPredicate:(id)predicate completion:(id)completion;
- (void)remote_fetchSurveyAnswer:(id)answer responderIDs:(id)ds completion:(id)completion;
- (void)remote_fetchThumbnailBlobForContextID:(id)d completion:(id)completion;
- (void)remote_fetchTransparencyMessageInfoForAttachmentID:(id)d withCompletion:(id)completion;
- (void)remote_fetchTransparencyMessageInfoWithCompletion:(id)completion;
- (void)remote_getBootstrapMode:(id)mode;
- (void)remote_getClassKitCatalogEnvironmentWithCompletion:(id)completion;
- (void)remote_getCurrentUseriCloudQuotaInfoWithCompletion:(id)completion;
- (void)remote_getDevModeWithCompletion:(id)completion;
- (void)remote_getServerInternalStateInfoWithCompletion:(id)completion;
- (void)remote_getServerSyncStatusWithCompletion:(id)completion;
- (void)remote_getUserDefaultForDefaultNamed:(id)named completion:(id)completion;
- (void)remote_getUserDefaultsConfigurationDictionaryWithCompletion:(id)completion;
- (void)remote_listAppsWithCompletion:(id)completion;
- (void)remote_mainAppContextWithCompletion:(id)completion;
- (void)remote_publishAdminRequests:(id)requests withRequestor:(id)requestor adminRequestAccounts:(id)accounts completion:(id)completion;
- (void)remote_publishClass:(id)class membersToInsert:(id)insert membersToDelete:(id)delete completion:(id)completion;
- (void)remote_publishCollaborationStateChanges:(id)changes completion:(id)completion;
- (void)remote_publishHandoutGraph:(id)graph completion:(id)completion;
- (void)remote_publishSurveyAnswers:(id)answers completion:(id)completion;
- (void)remote_recreateDatabaseWithCompletion:(id)completion;
- (void)remote_recreateDevelopmentDatabaseWithCompletion:(id)completion;
- (void)remote_registerDataObserver:(id)observer withID:(id)d querySpecification:(id)specification oldChangeTag:(unint64_t)tag completion:(id)completion;
- (void)remote_relayRequestWithData:(id)data requestType:(unint64_t)type fileHandle:(id)handle completion:(id)completion;
- (void)remote_removeAuthorizationStatus:(unint64_t)status forContextAtPath:(id)path completion:(id)completion;
- (void)remote_removeAuthorizationStatus:(unint64_t)status forHandoutAssignedItem:(id)item completion:(id)completion;
- (void)remote_renewCredentialsWithCompletion:(id)completion;
- (void)remote_repairHandoutAttachments:(id)attachments completion:(id)completion;
- (void)remote_saveInsightEvents:(id)events completion:(id)completion;
- (void)remote_saveObjects:(id)objects saveResponse:(id)response completion:(id)completion;
- (void)remote_setBootstrapMode:(int)mode url:(id)url completion:(id)completion;
- (void)remote_setClassKitCatalogEnvironment:(int64_t)environment completion:(id)completion;
- (void)remote_setDevMode:(int)mode completion:(id)completion;
- (void)remote_setOverrideBundleIdentifier:(id)identifier completion:(id)completion;
- (void)remote_setShouldSyncTeacherBrowsedContexts:(BOOL)contexts completion:(id)completion;
- (void)remote_setUserDefaultValue:(id)value forDefaultNamed:(id)named completion:(id)completion;
- (void)remote_shouldSyncTeacherBrowsedContextsWithCompletion:(id)completion;
- (void)remote_startActivityFailed:(id)failed completion:(id)completion;
- (void)remote_startAppActivity:(id)activity bundleID:(id)d activityType:(unint64_t)type completion:(id)completion;
- (void)remote_statusWithCompletion:(id)completion;
- (void)remote_studentActivityForAttachmentsWithIDs:(id)ds completion:(id)completion;
- (void)remote_submittableURLByCurrentUser:(id)user completion:(id)completion;
- (void)remote_syncBootstrapWithCompletion:(id)completion;
- (void)remote_syncFetchWithCompletion:(id)completion;
- (void)remote_syncPushWithCompletion:(id)completion;
- (void)remote_syncStatsWithCompletion:(id)completion;
- (void)remote_topLevelContentStoreCacheDirectoryURLWithCompletion:(id)completion;
- (void)remote_triggerUserNotificationHandoutAssignedWithHandoutID:(id)d completion:(id)completion;
- (void)remote_triggerUserNotificationHandoutDueSoonWithReferenceDate:(id)date completion:(id)completion;
- (void)remote_triggerUserNotificationHandoutPastDueSummaryWithReferenceDate:(id)date completion:(id)completion;
- (void)remote_triggerUserNotificationReviewDueHandoutsWithReferenceDate:(id)date completion:(id)completion;
- (void)remote_triggerUserNotificationRevisedSubmissionWithAttachmentID:(id)d studentName:(id)name completion:(id)completion;
- (void)remote_triggerUserNotificationRevisionRequestedWithAttachmentID:(id)d completion:(id)completion;
- (void)remote_triggerUserNotificationWithTitle:(id)title message:(id)message wrappedImageURL:(id)l;
- (void)remote_uploadAsset:(id)asset createThumbnailIfNeeded:(BOOL)needed uploadObserver:(id)observer completion:(id)completion;
- (void)remote_urlSuitableForOpeningForExpectedURL:(id)l itemID:(id)d ownerName:(id)name zoneName:(id)zoneName completion:(id)completion;
- (void)remote_validateAndCreateHandoutAssignedItem:(id)item withCompletion:(id)completion;
- (void)saveObjects:(id)objects saveResponse:(id)response isRemoteClient:(BOOL)client completion:(id)completion;
@end

@implementation PDEndpointServer

- (PDEndpointServer)initWithClient:(id)client daemon:(id)daemon
{
  clientCopy = client;
  daemonCopy = daemon;
  v23.receiver = self;
  v23.super_class = PDEndpointServer;
  v9 = [(PDEndpointServer *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, client);
    objc_storeWeak(&v10->_daemon, daemonCopy);
    v11 = +[NSMapTable strongToStrongObjectsMapTable];
    observers = v10->_observers;
    v10->_observers = v11;

    v13 = CLSDispatchQueueName();
    uTF8String = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    if (qword_10024D868 != -1)
    {
      dispatch_once(&qword_10024D868, &stru_1002028A8);
    }

    v16 = qword_10024D860;
    v17 = dispatch_queue_create_with_target_V2(uTF8String, v15, v16);
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
  client = [(PDEndpointServer *)self client];
  v4 = client;
  if (client)
  {
    v5 = *(client + 32);
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
  objectEnumerator = [(NSMapTable *)v8 objectEnumerator];
  v11 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [(PDEndpointServer *)self _invalidateObserver:*(*(&v15 + 1) + 8 * i)];
      }

      v12 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  daemon = [(PDEndpointServer *)self daemon];
  database = [daemon database];

  return database;
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

- (BOOL)isInternalWithError:(id *)error
{
  client = [(PDEndpointServer *)self client];
  if (client)
  {
    v6 = client[25];

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
    client2 = [(PDEndpointServer *)self client];
    v11 = sub_1000B2528(client2);
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Not an internal client: %@", &v12, 0xCu);
  }

  [NSError cls_assignError:error code:1 description:@"ClassKit is not available."];
  return 0;
}

- (void)databaseChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000233C0;
  v9[3] = &unk_1002028F8;
  objc_copyWeak(&v12, &location);
  v10 = object;
  v11 = changedCopy;
  v7 = changedCopy;
  v8 = object;
  dispatch_async(queue, v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)remote_listAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  v20 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v20];
  v7 = v20;
  if (v6)
  {
    v8 = objc_alloc_init(NSMutableArray);
    database = [(PDEndpointServer *)self database];
    v10 = objc_opt_class();
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100023A9C;
    v18 = &unk_1002022C0;
    v19 = v8;
    v11 = v8;
    [database selectAll:v10 where:@"parentObjectID is NULL" orderBy:@"title asc" bindings:0 block:&v15];

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
    (completionCopy)[2](completionCopy, v12, v14, v7);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0, v7);
  }
}

- (void)remote_setOverrideBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  sub_100023888(self, a2);
  v14 = 0;
  v9 = [(PDEndpointServer *)self isInternalWithError:&v14];
  v10 = v14;
  if (v9)
  {
    client = [(PDEndpointServer *)self client];
    sub_1000B24B8(client, identifierCopy);
    v12 = v10;

    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  completionCopy[2](completionCopy, v13, v10);
}

- (void)remote_deleteAppWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  sub_100023888(self, a2);
  v27 = 0;
  v9 = [(PDEndpointServer *)self isInternalWithError:&v27];
  v10 = v27;
  if ((v9 & 1) == 0)
  {
    completionCopy[2](completionCopy, 0, v10);
    goto LABEL_14;
  }

  client = [(PDEndpointServer *)self client];
  v12 = sub_1000B2528(client);
  if (!(identifierCopy | v12))
  {

    goto LABEL_9;
  }

  v13 = v12;
  client2 = [(PDEndpointServer *)self client];
  v15 = sub_1000B2528(client2);
  v16 = v15;
  if (identifierCopy && v15)
  {
    client3 = [(PDEndpointServer *)self client];
    v18 = sub_1000B2528(client3);
    v24 = [v18 isEqualToString:identifierCopy];

    if (!v24)
    {
      goto LABEL_11;
    }

LABEL_9:
    identifierCopy = [NSError cls_createErrorWithCode:3 format:@"Cannot delete app. Bundle identifier %@ set as currently active app. Select another app as active app and try again.", identifierCopy];

    completionCopy[2](completionCopy, 0, identifierCopy);
    v10 = identifierCopy;
    goto LABEL_14;
  }

LABEL_11:
  database = [(PDEndpointServer *)self database];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100023DF4;
  v25[3] = &unk_100202140;
  v25[4] = self;
  v21 = identifierCopy;
  v26 = v21;
  v22 = [database withSyncEnabled:v25];

  if ((v22 & 1) == 0)
  {
    v23 = [NSError cls_createErrorWithCode:100 format:@"Failed to delete app with identifier: %@", v21];

    v10 = v23;
  }

  (completionCopy)[2](completionCopy, v22, v10);

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
    enableVerboseLogging = [v6 enableVerboseLogging];

    if (enableVerboseLogging)
    {
      CLSLogDebugCurrentPersona();
    }

    daemon = [(PDEndpointServer *)self daemon];
    v9 = daemon;
    if (daemon)
    {
      [daemon handleAccountChange];
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

- (void)remote_databasePathWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  v14 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v14];
  v7 = v14;
  if (v6)
  {
    daemon = [(PDEndpointServer *)self daemon];
    mode = [daemon mode];
    if (mode == 2)
    {
      teacherDevDatabase = [daemon teacherDevDatabase];
    }

    else if (mode == 1)
    {
      teacherDevDatabase = [daemon studentDevDatabase];
    }

    else
    {
      if (mode)
      {
        v12 = 0;
        goto LABEL_11;
      }

      teacherDevDatabase = [(PDEndpointServer *)self database];
    }

    v11 = teacherDevDatabase;
    v12 = sub_10010B4D8(teacherDevDatabase);

LABEL_11:
    v13 = [v12 objectForKeyedSubscript:@"PDDatabaseStatsPathKey"];
    completionCopy[2](completionCopy, v13, 0);

    goto LABEL_12;
  }

  (completionCopy)[2](completionCopy, 0, v7);
LABEL_12:
}

- (void)remote_recreateDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  v10 = 0;
  v7 = [(PDEndpointServer *)self isInternalWithError:&v10];
  v8 = v10;
  if (v7)
  {
    daemon = [(PDEndpointServer *)self daemon];
    [daemon recreateDatabase];

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v8);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)remote_syncStatsWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  v11 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v11];
  v7 = v11;
  if (v6)
  {
    daemon = [(PDEndpointServer *)self daemon];
    operationsManager = [daemon operationsManager];
    v10 = sub_1001266DC(operationsManager);

    completionCopy[2](completionCopy, v10, v7);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v7);
  }
}

- (void)remote_syncPushWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  v12 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v12];
  v7 = v12;
  if (v6)
  {
    daemon = [(PDEndpointServer *)self daemon];
    operationsManager = [daemon operationsManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002452C;
    v10[3] = &unk_100202970;
    v11 = completionCopy;
    sub_100122748(operationsManager, v10);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v7);
  }
}

- (void)remote_syncFetchWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  v8 = sub_1000B2528(client);
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
      completionCopy[2](completionCopy, 0, v9);
      goto LABEL_6;
    }
  }

  database = [(PDEndpointServer *)self database];
  sub_1000EAE50(database, 0);

  daemon = [(PDEndpointServer *)self daemon];
  operationsManager = [daemon operationsManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000246DC;
  v14[3] = &unk_100202970;
  v15 = completionCopy;
  sub_10012175C(operationsManager, v14);

LABEL_6:
  objc_autoreleasePoolPop(v6);
}

- (void)remote_syncBootstrapWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v8 = client[26], client, (v8 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    sub_1000EAE50(database, 0);
    sub_1000EAC18(database, @"ee.setup");
    sub_1000EAC18(database, @"bootstrap");
    daemon = [(PDEndpointServer *)self daemon];
    operationsManager = [daemon operationsManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100024874;
    v12[3] = &unk_100202970;
    v13 = completionCopy;
    sub_100121CCC(operationsManager, v12);
  }

  else
  {
    database = [NSError cls_createErrorWithCode:4 description:@"Not Authorized"];
    (*(completionCopy + 2))(completionCopy, 0, database);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)remote_fetchReportsWithPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  v9 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  v11 = sub_1000B2528(client);
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
      completionCopy[2](completionCopy, 0, v12);
      goto LABEL_6;
    }
  }

  daemon = [(PDEndpointServer *)self daemon];
  operationsManager = [daemon operationsManager];
  sub_100123138(operationsManager, predicateCopy, completionCopy);

LABEL_6:
  objc_autoreleasePoolPop(v9);
}

- (void)remote_statusWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  v10 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v10];
  v7 = v10;
  if (v6)
  {
    daemon = [(PDEndpointServer *)self daemon];
    statusReport = [daemon statusReport];

    completionCopy[2](completionCopy, statusReport, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v7);
  }
}

- (void)remote_renewCredentialsWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  v7 = sub_1000B2528(client);
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
      completionCopy[2](completionCopy, 0, 2, v8);
      goto LABEL_9;
    }
  }

  v10 = sub_10003E1B4();
  if (v10)
  {
    sub_10003F6AC(PDAccountInfo, v10, 1, completionCopy);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 2, v8);
  }

LABEL_9:
}

- (void)remote_addAuthorizationStatus:(unint64_t)status forContextAtPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  sub_100023888(self, a2);
  v16 = 0;
  v11 = [(PDEndpointServer *)self isInternalWithError:&v16];
  v12 = v16;
  if (v11)
  {
    database = [(PDEndpointServer *)self database];
    v14 = sub_10014B4D4(database, status, pathCopy);

    if ((v14 & 1) == 0)
    {
      pathCopy = [NSError cls_createErrorWithCode:100 format:@"failed to add authorization at path: %@", pathCopy];

      v12 = pathCopy;
    }

    completionCopy[2](completionCopy, v14, v12);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)remote_authorizationStatusForContextAtPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  sub_100023888(self, a2);
  v14 = 0;
  v9 = [(PDEndpointServer *)self isInternalWithError:&v14];
  v10 = v14;
  if (v9)
  {
    database = [(PDEndpointServer *)self database];
    v12 = sub_10014C17C(database, pathCopy);

    v13 = [NSNumber numberWithInteger:v12];
    completionCopy[2](completionCopy, v13, v10);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)remote_authorizationStatusForHandoutAssignedItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  sub_100023888(self, a2);
  v14 = 0;
  v9 = [(PDEndpointServer *)self isInternalWithError:&v14];
  v10 = v14;
  if (v9)
  {
    database = [(PDEndpointServer *)self database];
    v12 = sub_100015328(database, itemCopy);

    v13 = [NSNumber numberWithInteger:v12];
    completionCopy[2](completionCopy, v13, v10);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)remote_removeAuthorizationStatus:(unint64_t)status forContextAtPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  sub_100023888(self, a2);
  v16 = 0;
  v11 = [(PDEndpointServer *)self isInternalWithError:&v16];
  v12 = v16;
  if (v11)
  {
    database = [(PDEndpointServer *)self database];
    v14 = sub_10014B7E8(database, status, pathCopy);

    if ((v14 & 1) == 0)
    {
      pathCopy = [NSError cls_createErrorWithCode:100 format:@"failed to remove authorization at path: %@", pathCopy];

      v12 = pathCopy;
    }

    completionCopy[2](completionCopy, v14, v12);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)remote_recreateDevelopmentDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  v9 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v9];
  v7 = v9;
  if (v6)
  {
    daemon = [(PDEndpointServer *)self daemon];
    [daemon recreateDevelopmentDatabases];

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v7);
  }
}

- (void)remote_setDevMode:(int)mode completion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  v13 = 0;
  v8 = [(PDEndpointServer *)self isInternalWithError:&v13];
  v9 = v13;
  v10 = v9;
  if (v8)
  {
    if (mode == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = mode == 1;
    }

    daemon = [(PDEndpointServer *)self daemon];
    [daemon setMode:v11];

    v10 = 0;
  }

  (completionCopy)[2](completionCopy, v10);
}

- (void)remote_getDevModeWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  v13 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v13];
  v7 = v13;
  if (v6)
  {
    daemon = [(PDEndpointServer *)self daemon];
    mode = [daemon mode];

    switch(mode)
    {
      case 2u:
        v10 = completionCopy[2];
        v11 = completionCopy;
        v12 = 2;
        goto LABEL_9;
      case 1u:
        v10 = completionCopy[2];
        v11 = completionCopy;
        v12 = 1;
        goto LABEL_9;
      case 0u:
        v10 = completionCopy[2];
        v11 = completionCopy;
        v12 = 0;
LABEL_9:
        v10(v11, v12, 0);
        break;
    }
  }

  else
  {
    (completionCopy[2])(completionCopy, 0, v7);
  }
}

- (void)remote_getBootstrapMode:(id)mode
{
  modeCopy = mode;
  sub_100023888(self, a2);
  v13 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v13];
  v7 = v13;
  if (v6)
  {
    database = [(PDEndpointServer *)self database];
    v9 = [database select:objc_opt_class() identity:@"bootstrap"];
    v10 = sub_10016A160(database, @"bootstrapMode");
    if (v10 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2 * (v10 == 2);
    }

    v12 = sub_1000E9BC0(v9);
    modeCopy[2](modeCopy, v11, v12, 0);
  }

  else
  {
    (modeCopy)[2](modeCopy, 0, 0, v7);
  }
}

- (void)remote_setBootstrapMode:(int)mode url:(id)url completion:(id)completion
{
  urlCopy = url;
  completionCopy = completion;
  sub_100023888(self, a2);
  v23 = 0;
  v11 = [(PDEndpointServer *)self isInternalWithError:&v23];
  v12 = v23;
  if (v11)
  {
    if (mode == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (mode == 2);
    }

    database = [(PDEndpointServer *)self database];
    v15 = [database select:objc_opt_class() identity:@"bootstrap"];
    if (v13)
    {
      if (v13 == 2)
      {
        absoluteString = [urlCopy absoluteString];
      }

      else
      {
        absoluteString = @"https://pg-bootstrap.classkit.apple.com/v1/config";
      }
    }

    else
    {
      absoluteString = @"https://pg-bootstrap.itunes.apple.com/v1/config";
    }

    sub_10003F69C(v15, absoluteString);
    if ([database updateObject:v15])
    {
      if (mode == 2)
      {
        v17 = [PDAllowedHost alloc];
        host = [urlCopy host];
        v19 = sub_10006F334(v17, host);

        if (([database insertOrUpdateObject:v19] & 1) == 0)
        {
          v22 = [NSError cls_createErrorWithCode:100 description:@"Failed to set allowed host in database.  The endpoint itself was updated"];
          completionCopy[2](completionCopy, v22);

          goto LABEL_20;
        }
      }

      if (sub_10016A0C8(database, v13, @"bootstrapMode"))
      {
        completionCopy[2](completionCopy, 0);
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
    completionCopy[2](completionCopy, v21);

    goto LABEL_20;
  }

  completionCopy[2](completionCopy, v12);
LABEL_21:
}

- (void)remote_setClassKitCatalogEnvironment:(int64_t)environment completion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  v12 = 0;
  v8 = [(PDEndpointServer *)self isInternalWithError:&v12];
  v9 = v12;
  v10 = v9;
  if (v8)
  {
    database = [(PDEndpointServer *)self database];
    sub_10015E1AC(database, environment);

    v10 = 0;
  }

  (completionCopy)[2](completionCopy, v10);
}

- (void)remote_getClassKitCatalogEnvironmentWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  v10 = 0;
  v6 = [(PDEndpointServer *)self isInternalWithError:&v10];
  v7 = v10;
  if (v6)
  {
    database = [(PDEndpointServer *)self database];
    v9 = sub_10015E198(database);
    completionCopy[2](completionCopy, v9, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v7);
  }
}

- (void)remote_shouldSyncTeacherBrowsedContextsWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v7 = client[26], client, (v7 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v12 = [database select:objc_opt_class() identity:@"syncTeacherContexts"];

    if (v12)
    {
      v9 = v12[16];
    }

    else
    {
      database2 = [(PDEndpointServer *)self database];
      v9 = 1;
      sub_100169F38(database2, 1, @"syncTeacherContexts");
    }

    v11 = [NSNumber numberWithBool:v9 & 1];
    completionCopy[2](completionCopy, v11, 0);

    completionCopy = v11;
  }

  else
  {
    v12 = [NSError cls_createErrorWithCode:1 description:@"Could not read sync teacher browse."];
    (completionCopy[2])(completionCopy, 0);
  }
}

- (void)remote_setShouldSyncTeacherBrowsedContexts:(BOOL)contexts completion:(id)completion
{
  contextsCopy = contexts;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v8 = client[26], client, (v8 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    sub_100169F38(database, contextsCopy, @"syncTeacherContexts");

    if (contextsCopy)
    {
      daemon = [(PDEndpointServer *)self daemon];
      operationsManager = [daemon operationsManager];
      sub_100122748(operationsManager, 0);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v12 = [NSError cls_createErrorWithCode:1 description:@"Could not write sync teacher browse."];
    (completionCopy)[2](completionCopy, v12);
  }
}

- (void)remote_fetchTransparencyMessageInfoForAttachmentID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v9 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v11 = client[31], client, (v11 & 1) != 0))
  {
    v12 = sub_100025B40(self, dCopy);
    completionCopy[2](completionCopy, v12, 0);
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
    (completionCopy)[2](completionCopy, 0, v12);
  }

  objc_autoreleasePoolPop(v9);
}

- (void)remote_fetchTransparencyMessageInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v8 = client[31], client, (v8 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    if (sub_10007116C(database))
    {
      v42 = sub_100169FD0(database, @"shownModalTransparency");
      client2 = [(PDEndpointServer *)self client];
      v46 = sub_1000B2528(client2);

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
      v11 = sub_1000711FC(database);
      objectID = [v11 objectID];

      v88[0] = &off_10021B558;
      v88[1] = v46;
      v45 = [NSArray arrayWithObjects:v88 count:2];
      v13 = objc_opt_class();
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100026A80;
      v59[3] = &unk_1002022E8;
      database = database;
      v60 = database;
      v14 = objectID;
      v61 = v14;
      v62 = buf;
      v63 = &v65;
      v64 = &v71;
      [database selectAll:v13 where:@"type = ? and bundleIdentifier = ?" bindings:v45 block:v59];
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

            if (sub_10014C17C(database, *(*(&v55 + 1) + 8 * v20)) == 1)
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

        allObjects = [(__CFString *)v22 allObjects];
        v26 = [PDDatabase whereSQLForArray:allObjects prefix:@"parentObjectID in "];
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_100026BA4;
        v48[3] = &unk_100202310;
        v48[4] = &v49;
        [database selectAll:objc_opt_class() where:v26 bindings:allObjects block:v48];
      }

      if ([v50[5] count])
      {
        allObjects2 = [v50[5] allObjects];
        v43 = [PDDatabase whereSQLForArray:allObjects2 prefix:@"objectID in "];
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
        [database selectAll:objc_opt_class() where:v43 bindings:allObjects2 block:v47];
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
            sub_100169F38(database, 1, @"shownModalTransparency");
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

      completionCopy[2](completionCopy, v34, 0);
      _Block_object_dispose(&v49, 8);

      _Block_object_dispose(&v65, 8);
      _Block_object_dispose(&v71, 8);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      completionCopy[2](completionCopy, 0, 0);
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

    database = [NSError cls_createErrorWithCode:4 format:@"Not Authorized"];
    (completionCopy)[2](completionCopy, 0, database);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)remote_fetchHandoutAttachmentForDocumentURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v10 = client[31], client, (v10 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v12 = sub_1000BA854(database);
    v13 = v12;
    if (v12 && (*(v12 + 9) & 1) != 0)
    {
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_100027B74;
      v63[3] = &unk_100202388;
      v14 = lCopy;
      v64 = v14;
      v65 = completionCopy;
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
        zoneID = [v20 zoneID];
        zoneName = [zoneID zoneName];

        database2 = [(PDEndpointServer *)self database];
        v23 = objc_opt_class();
        v71[0] = v52[5];
        v71[1] = zoneName;
        v24 = [NSArray arrayWithObjects:v71 count:2];
        v25 = [database2 select:v23 where:@"brItemID = ? and brZoneName = ?" bindings:v24];

        CLSInitLog();
        v26 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
        {
          v40 = v52[5];
          *v67 = 138412546;
          v68 = v40;
          v69 = 2112;
          v70 = zoneName;
          _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Looking up asset matching brItemID = %@ and brZoneName = %@", v67, 0x16u);
        }

        parentObjectID = [v25 parentObjectID];
        v28 = parentObjectID == 0;

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
            v70 = zoneName;
            _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "failed to find asset matching brItemID = %@ and brZoneName = %@", v67, 0x16u);
          }

          [*(v58 + 5) cls_log:CLSLogHandout];
          (v15[2])(v15, 0, *(v58 + 5));
        }

        else
        {
          database3 = [(PDEndpointServer *)self database];
          v30 = objc_opt_class();
          parentObjectID2 = [v25 parentObjectID];
          v66 = parentObjectID2;
          v32 = [NSArray arrayWithObjects:&v66 count:1];
          v33 = [database3 select:v30 where:@"objectID = ?" bindings:v32];

          if (!v33)
          {
            objectID = [v25 objectID];
            v35 = [NSError cls_createErrorWithCode:100 format:@"failed to find attachment for asset with id: %@", objectID];
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
      (*(completionCopy + 2))(completionCopy, 0, v38);
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

    database = [NSError cls_createErrorWithCode:4 format:@"Not Authorized"];
    (*(completionCopy + 2))(completionCopy, 0, database);
  }
}

- (void)remote_validateAndCreateHandoutAssignedItem:(id)item withCompletion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v10 = client[31], client, (v10 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v12 = database;
    if (database)
    {
      v13 = (sub_1000717E8(database) >> 1) & 1;
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
      completionCopy[2](completionCopy, 0, v19);
    }

    else
    {
      database2 = [(PDEndpointServer *)self database];
      v15 = objc_opt_class();
      v41 = itemCopy;
      v16 = [NSArray arrayWithObjects:&v41 count:1];
      v17 = [database2 select:v15 where:@"parentObjectID = ?" bindings:v16];

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
          completionCopy[2](completionCopy, 0, v19);
        }

        else
        {
          (completionCopy)[2](completionCopy, v17, 0);
          v19 = 0;
        }
      }

      else
      {
        database3 = [(PDEndpointServer *)self database];
        v22 = objc_opt_class();
        v40 = itemCopy;
        v23 = [NSArray arrayWithObjects:&v40 count:1];
        v24 = [database3 select:v22 where:@"objectID = ?" bindings:v23];

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

            completionCopy[2](completionCopy, 0, v26);
            v17 = 0;
            v19 = v26;
          }

          else
          {
            database4 = [(PDEndpointServer *)self database];
            v29 = objc_opt_class();
            objectID = [v25 objectID];
            v39 = objectID;
            v31 = [NSArray arrayWithObjects:&v39 count:1];
            v17 = [database4 select:v29 where:@"objectID = ?" bindings:v31];

            (completionCopy)[2](completionCopy, v17, v19);
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
          completionCopy[2](completionCopy, 0, v19);
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
    completionCopy[2](completionCopy, 0, v19);
  }
}

- (id)_createHandoutAssignedItemFrom:(id)from withError:(id *)error
{
  fromCopy = from;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100026A68;
  v23 = sub_100026A78;
  v24 = 0;
  client = [(PDEndpointServer *)self client];
  v8 = sub_1000B2528(client);
  if ([v8 length])
  {
    database = [(PDEndpointServer *)self database];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100028500;
    v13[3] = &unk_100202400;
    v14 = client;
    v15 = fromCopy;
    v16 = v8;
    selfCopy = self;
    v18 = &v19;
    v10 = [database withSyncEnabled:v13];

    if (v10)
    {
      v11 = v20[5];
    }

    else
    {
      [NSError cls_assignError:error code:100 description:@"Unable to create CLSHandoutAssignedItem."];
      v11 = 0;
    }
  }

  else
  {
    [NSError cls_assignError:error code:2 description:@"Unable to determine bundle identifier."];
    v11 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v11;
}

- (void)remote_fetchAndCompleteActiveAssignedActivitiesForContextPath:(id)path withCompletion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (!client || (v10 = client[31], client, (v10 & 1) == 0))
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
    completionCopy[2](completionCopy, 0, v12);
    goto LABEL_21;
  }

  database = [(PDEndpointServer *)self database];
  v12 = database;
  if (database)
  {
    v13 = (sub_1000717E8(database) >> 1) & 1;
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

    completionCopy[2](completionCopy, 0, v16);
  }

  else
  {
    v14 = sub_100026D00(self, pathCopy);
    v15 = objc_opt_new();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100028C10;
    v21[3] = &unk_100202428;
    v21[4] = self;
    v16 = v14;
    v22 = v16;
    v23 = completionCopy;
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

- (id)_createMainAppContext:(id *)context
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100026A68;
  v23 = sub_100026A78;
  v24 = 0;
  client = [(PDEndpointServer *)self client];
  v6 = sub_1000B2528(client);
  if ([v6 length])
  {
    database = [(PDEndpointServer *)self database];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000295FC;
    v14 = &unk_100202470;
    v18 = &v19;
    v15 = v6;
    selfCopy = self;
    v17 = client;
    v8 = [database withSyncEnabled:&v11];

    if (v8)
    {
      v9 = v20[5];
    }

    else
    {
      [NSError cls_assignError:context code:100 description:@"Unable to create main app context.", v11, v12, v13, v14, v15, selfCopy];
      v9 = 0;
    }
  }

  else
  {
    [NSError cls_assignError:context code:2 description:@"Unable to determine bundle identifier."];
    v9 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v9;
}

- (void)remote_addAdminRequestor:(id)requestor completion:(id)completion
{
  requestorCopy = requestor;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v9 = client[30], client, (v9 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v11 = [database insertOrUpdateObject:requestorCopy];

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      email = [requestorCopy email];
      v12 = [NSError cls_createErrorWithCode:100 format:@"Failed to create requestor: %@", email];
    }

    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = requestorCopy;
    }

    (completionCopy)[2](completionCopy, v14, v12);
  }

  else
  {
    v12 = [NSError cls_createErrorWithCode:4 description:@"Use pdtool"];
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)remote_addOrganization:(id)organization withLocations:(id)locations completion:(id)completion
{
  organizationCopy = organization;
  locationsCopy = locations;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v12 = client[30], client, (v12 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v14 = [database insertOrUpdateObject:organizationCopy];

    if (v14)
    {
      if ([locationsCopy count] && (-[PDEndpointServer database](self, "database"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "insertOrUpdateObjects:", locationsCopy), v15, (v16 & 1) == 0))
      {
        locationsCopy = [NSError cls_createErrorWithCode:100 format:@"Failed to create locations: %@", locationsCopy];
      }

      else
      {
        locationsCopy = 0;
      }
    }

    else
    {
      objectID = [organizationCopy objectID];
      locationsCopy = [NSError cls_createErrorWithCode:100 format:@"Failed to create organization: %@", objectID];
    }

    if (locationsCopy)
    {
      v19 = 0;
    }

    else
    {
      v19 = organizationCopy;
    }

    (completionCopy)[2](completionCopy, v19, locationsCopy);
  }

  else
  {
    locationsCopy = [NSError cls_createErrorWithCode:4 description:@"Use pdtool"];
    completionCopy[2](completionCopy, 0, locationsCopy);
  }
}

- (void)remote_deleteOrganization:(id)organization completion:(id)completion
{
  organizationCopy = organization;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v10 = client[30], client, (v10 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v12 = objc_opt_class();
    v17 = organizationCopy;
    v13 = [NSArray arrayWithObjects:&v17 count:1];
    v14 = [database deleteAll:v12 where:@"objectID = ?" bindings:v13];

    if (v14)
    {
      organizationCopy = 0;
    }

    else
    {
      organizationCopy = [NSError cls_createErrorWithCode:100 format:@"Failed to delete organization with identifier: %@", organizationCopy];
    }

    completionCopy[2](completionCopy, v14, organizationCopy);
  }

  else
  {
    v16 = [NSError cls_createErrorWithCode:4 description:@"Use pdtool"];
    completionCopy[2](completionCopy, 0, v16);
  }
}

- (void)remote_mainAppContextWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  v9 = 0;
  v7 = [(PDEndpointServer *)self _createMainAppContext:&v9];
  v8 = v9;
  completionCopy[2](completionCopy, v7, v8);

  objc_autoreleasePoolPop(v6);
}

- (void)_performQuery:(id)query querySpecification:(id)specification issueServerRequest:(BOOL)request completion:(id)completion
{
  requestCopy = request;
  queryCopy = query;
  specificationCopy = specification;
  completionCopy = completion;
  v14 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  entityName = [specificationCopy entityName];
  v16 = NSClassFromString(entityName);

  v41 = 0;
  LOBYTE(entityName) = sub_10002A284(self, v16, &v41);
  v17 = v41;
  v18 = v17;
  if (entityName)
  {
    v29 = requestCopy;
    v27 = v17;
    v28 = v14;
    v30 = [queryCopy synchronousRemoteObjectProxyWithErrorHandler:&stru_100202490];

    predicate = [specificationCopy predicate];
    v31 = [(PDEndpointServer *)self _clientScopedPredicate:predicate forEntityClass:v16];

    v20 = [[NSMutableArray alloc] initWithCapacity:50];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    offset = [specificationCopy offset];
    database = [(PDEndpointServer *)self database];
    sortDescriptors = [specificationCopy sortDescriptors];
    limit = [specificationCopy limit];
    offset2 = [specificationCopy offset];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10002A52C;
    v32[3] = &unk_1002024B8;
    v35 = &v37;
    v25 = v20;
    v33 = v25;
    v36 = 50;
    queryCopy = v30;
    v34 = queryCopy;
    sub_1000429A0(database, v16, v31, sortDescriptors, limit, offset2, v32);

    if ([v25 count])
    {
      [queryCopy clientRemote_deliverObject:v25];
    }

    if (v29 && [(objc_class *)v16 conformsToProtocol:&OBJC_PROTOCOL___PDEndpointServerEntityHooks])
    {
      predicate2 = [specificationCopy predicate];
      [(objc_class *)v16 endpointServer:self willQueryForObjectWithPredicate:predicate2];
    }

    [queryCopy clientRemote_finishWithOffset:v38[3] error:0];
    completionCopy[2](completionCopy);

    _Block_object_dispose(&v37, 8);
    v18 = v27;
    v14 = v28;
  }

  else
  {
    [queryCopy clientRemote_finishWithOffset:0 error:v17];
    completionCopy[2](completionCopy);
  }

  objc_autoreleasePoolPop(v14);
}

- (void)remote_executeRosterQuery:(id)query executeQuery:(id)executeQuery completion:(id)completion
{
  queryCopy = query;
  executeQueryCopy = executeQuery;
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (client)
  {
    v11 = client[31];

    if (v11)
    {
      context = objc_autoreleasePoolPush();
      database = [(PDEndpointServer *)self database];
      v13 = [queryCopy synchronousRemoteObjectProxyWithErrorHandler:&stru_1002024D8];

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
      queryCopy = v13;
      v49 = queryCopy;
      v15 = database;
      v50 = v15;
      v16 = executeQueryCopy;
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

        [queryCopy clientRemote_deliverObject:v14];
        [v14 removeAllObjects];
      }

      keyword = [v16 keyword];
      v22 = [keyword length] > 1;

      if (v22)
      {
        daemon = +[PDASMSearchStringCache shared];
        keyword2 = [v16 keyword];
        v25 = [daemon isCached:keyword2];

        if (v25)
        {
          CLSInitLog();
          v26 = CLSLogSearch;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            keyword3 = [v16 keyword];
            *buf = 138412290;
            v59 = keyword3;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "String: '%@' appears in search string cache.  Returning.", buf, 0xCu);
          }

          [queryCopy clientRemote_finishWithOffset:*(v55 + 3) error:0];
          completionCopy[2](completionCopy);
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
          daemon = [(PDEndpointServer *)self daemon];
          mode = [daemon mode];
          operationsManager = [daemon operationsManager];
          v32 = sub_100121714(operationsManager);

          if (v32)
          {
            v33 = [(PDEndpointServer *)self asmRosterSearchFinishBlock:v16 query:queryCopy asmConfig:v18 buffer:v14 buffSize:50 nextOffset:*(v55 + 3)];
            v34 = sub_10017BFC4(v15, v16, v45, v33);
            v35 = v34;
            if (mode || !v34 || ![v34 needsToMakeNetworkRequest] || (objc_msgSend(daemon, "operationsManager"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v36 == 0, v36, v37))
            {
              CLSInitLog();
              v40 = CLSLogSearch;
              if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Finishing query (local).", buf, 2u);
              }

              [queryCopy clientRemote_finishWithOffset:*(v55 + 3) error:0];
            }

            else
            {
              operationsManager2 = [daemon operationsManager];
              sub_1001232E0(operationsManager2, v35);
            }

            completionCopy[2](completionCopy);
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

            [queryCopy clientRemote_finishWithOffset:*(v55 + 3) error:0];
            completionCopy[2](completionCopy);
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

      [queryCopy clientRemote_finishWithOffset:*(v55 + 3) error:0];
      completionCopy[2](completionCopy);
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

  [queryCopy clientRemote_finishWithOffset:0 error:0];
  completionCopy[2](completionCopy);
LABEL_47:
}

- (void)remote_contextsMatchingIdentifierPath:(id)path parentContextID:(id)d completion:(id)completion
{
  pathCopy = path;
  dCopy = d;
  completionCopy = completion;
  sub_100023888(self, a2);
  database = [(PDEndpointServer *)self database];
  v13 = [database select:objc_opt_class() identity:dCopy];

  database2 = [(PDEndpointServer *)self database];
  v15 = sub_10014C7CC(database2, pathCopy, v13);

  client = [(PDEndpointServer *)self client];
  if (client)
  {
    v17 = client[24];
  }

  else
  {
    v17 = 0;
  }

  client2 = [(PDEndpointServer *)self client];
  v19 = sub_1000B2528(client2);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v15;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v21)
  {
    v30 = v13;
    v31 = dCopy;
    v32 = pathCopy;
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
          appIdentifier = [v24 appIdentifier];
          v26 = appIdentifier;
          if (v19)
          {
            if (!appIdentifier)
            {
              goto LABEL_19;
            }

            appIdentifier2 = [v24 appIdentifier];
            v28 = [v19 isEqualToString:appIdentifier2];

            if ((v28 & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          else if (appIdentifier)
          {

LABEL_19:
            pathCopy = v32;
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
    pathCopy = v32;
LABEL_20:
    v13 = v30;
    dCopy = v31;
  }

  else
  {
    v29 = v20;
  }

  completionCopy[2](completionCopy, v29, v21);
}

- (void)remote_fetchThumbnailBlobForContextID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  sub_100023888(self, a2);
  database = [(PDEndpointServer *)self database];
  v10 = objc_opt_class();
  v13 = dCopy;
  v11 = [NSArray arrayWithObjects:&v13 count:1];

  v12 = [database select:v10 where:@"parentObjectID = ?" bindings:v11];

  completionCopy[2](completionCopy, v12, 0);
}

- (void)remote_deleteThumbnailBlobForContextID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  sub_100023888(self, a2);
  database = [(PDEndpointServer *)self database];
  v10 = objc_opt_class();
  v13 = dCopy;
  v11 = [NSArray arrayWithObjects:&v13 count:1];

  v12 = [database deleteAll:v10 where:@"parentObjectID = ?" bindings:v11];
  completionCopy[2](completionCopy, v12, 0);
}

- (void)remote_fetchProgressReportingCapabilitiesForContextID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  sub_100023888(self, a2);
  v9 = objc_opt_new();
  database = [(PDEndpointServer *)self database];
  v11 = objc_opt_class();
  v16 = dCopy;
  v12 = [NSArray arrayWithObjects:&v16 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002C178;
  v14[3] = &unk_100202548;
  v15 = v9;
  v13 = v9;
  [database selectAll:v11 where:@"parentObjectID = ?" bindings:v12 block:v14];

  completionCopy[2](completionCopy, v13, 0);
}

- (void)remote_deleteProgressReportingCapabilitiesForContextID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  sub_100023888(self, a2);
  database = [(PDEndpointServer *)self database];
  v10 = objc_opt_class();
  v13 = dCopy;
  v11 = [NSArray arrayWithObjects:&v13 count:1];

  v12 = [database deleteAll:v10 where:@"parentObjectID = ?" bindings:v11];
  completionCopy[2](completionCopy, v12, 0);
}

- (void)remote_fetchContextsForContextIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  sub_100023888(self, a2);
  v9 = objc_opt_new();
  v10 = [PDDatabase whereSQLForArray:dsCopy prefix:@"objectID in "];
  database = [(PDEndpointServer *)self database];
  v12 = objc_opt_class();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002C3D8;
  v14[3] = &unk_1002022C0;
  v15 = v9;
  v13 = v9;
  [database selectAll:v12 where:v10 bindings:dsCopy block:v14];

  completionCopy[2](completionCopy, v13, 0);
}

- (void)remote_getServerSyncStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v7 = client[26], client, (v7 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v9 = sub_1000507D8(database);
    if (sub_100050844(database))
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = 0;
    if (sub_1000508B0(database))
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
    database = v11;
  }

  v13 = [NSNumber numberWithUnsignedInteger:v12];
  completionCopy[2](completionCopy, v13, v11);

  objc_autoreleasePoolPop(v5);
}

- (void)remote_getServerInternalStateInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v7 = client[26], client, (v7 & 1) != 0))
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    database = [(PDEndpointServer *)self database];
    v10 = CLSSyncInitialRosterSyncDateKey;
    v11 = sub_10016A65C(database, CLSSyncInitialRosterSyncDateKey);
    [v8 setObject:v11 forKeyedSubscript:v10];

    v12 = CLSSyncInitialHandoutSyncDateKey;
    v13 = sub_10016A65C(database, CLSSyncInitialHandoutSyncDateKey);
    [v8 setObject:v13 forKeyedSubscript:v12];

    v14 = CLSSyncLatestRosterSyncDateKey;
    v15 = sub_10016A65C(database, CLSSyncLatestRosterSyncDateKey);
    [v8 setObject:v15 forKeyedSubscript:v14];

    v16 = CLSSyncLatestHandoutSyncDateKey;
    v17 = sub_10016A65C(database, CLSSyncLatestHandoutSyncDateKey);
    [v8 setObject:v17 forKeyedSubscript:v16];

    v18 = CLSSyncLatestRosterSyncFailureDateKey;
    v19 = sub_10016A65C(database, CLSSyncLatestRosterSyncFailureDateKey);
    [v8 setObject:v19 forKeyedSubscript:v18];

    v20 = CLSSyncLatestHandoutSyncFailureDateKey;
    v21 = sub_10016A65C(database, CLSSyncLatestHandoutSyncFailureDateKey);
    [v8 setObject:v21 forKeyedSubscript:v20];

    v22 = [v8 copy];
    completionCopy[2](completionCopy, v22, 0);
  }

  else
  {
    v8 = [NSError cls_createErrorWithCode:4 description:@"Not Authorized"];
    (completionCopy)[2](completionCopy, 0, v8);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)remote_fetchCountOfActivitiesForContextID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  sub_100023888(self, a2);
  database = [(PDEndpointServer *)self database];
  v10 = objc_opt_class();
  v14 = dCopy;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [database count:v10 where:@"parentObjectID = ?" bindings:v11];

  v13 = [NSNumber numberWithUnsignedInteger:v12];

  completionCopy[2](completionCopy, v13, 0);
}

- (void)remote_authTreeWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_autoreleasePoolPush();
  database = [(PDEndpointServer *)self database];
  v6 = database;
  if (database && (sub_1000717E8(database) & 2) != 0)
  {
    v11 = [CLSAuthTree alloc];
    v12 = 0;
  }

  else
  {
    if (sub_10007116C(v6))
    {
      client = [(PDEndpointServer *)self client];
      v8 = sub_1000B2528(client);

      v9 = sub_10014CAF0(v6, v8);
      v10 = 0;

      goto LABEL_8;
    }

    v11 = [CLSAuthTree alloc];
    v12 = 2;
  }

  v9 = [v11 initWithOverridingStatus:{v12, completionCopy}];
  v10 = 0;
LABEL_8:
  completionCopy[2](completionCopy, v9, v10);

  objc_autoreleasePoolPop(v4);
}

- (void)remote_authTreeForAttachment:(id)attachment withCompletion:(id)completion
{
  attachmentCopy = attachment;
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  database = [(PDEndpointServer *)self database];
  v9 = database;
  if (database && (sub_1000717E8(database) & 2) != 0)
  {
    v12 = [CLSAuthTree alloc];
    v13 = 0;
  }

  else
  {
    if (sub_10007116C(v9))
    {
      v10 = sub_100016CF0(v9, attachmentCopy);
      v11 = 0;
      goto LABEL_8;
    }

    v12 = [CLSAuthTree alloc];
    v13 = 2;
  }

  v10 = [v12 initWithOverridingStatus:{v13, attachmentCopy}];
  v11 = 0;
LABEL_8:
  completionCopy[2](completionCopy, v10, v11);

  objc_autoreleasePoolPop(v7);
}

- (void)remote_saveObjects:(id)objects saveResponse:(id)response completion:(id)completion
{
  objectsCopy = objects;
  responseCopy = response;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  [(PDEndpointServer *)self saveObjects:objectsCopy saveResponse:responseCopy isRemoteClient:1 completion:completionCopy];
  objc_autoreleasePoolPop(v10);
}

- (void)saveObjects:(id)objects saveResponse:(id)response isRemoteClient:(BOOL)client completion:(id)completion
{
  clientCopy = client;
  objectsCopy = objects;
  responseCopy = response;
  completionCopy = completion;
  sub_100023888(self, a2);
  v11 = [(PDEndpointServer *)self _createMainAppContext:0];
  client = [(PDEndpointServer *)self client];
  v47 = sub_1000B2528(client);

  database = [(PDEndpointServer *)self database];
  v14 = database;
  if (database)
  {
    v15 = (sub_1000717E8(database) >> 1) & 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  v16 = sub_1000711FC(v14);
  objectID = [v16 objectID];

  client2 = [(PDEndpointServer *)self client];
  if (client2)
  {
    v18 = client2[25];
  }

  else
  {
    v18 = 0;
  }

  if (clientCopy)
  {
    client3 = [(PDEndpointServer *)self client];
    v20 = client3;
    if (client3 && (*(client3 + 26) & 1) != 0)
    {
      v21 = 1;
    }

    else
    {
      client4 = [(PDEndpointServer *)self client];
      if (client4)
      {
        v21 = client4[27];
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
  if (clientCopy)
  {
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_10002D3A0;
    v71[3] = &unk_100202970;
    v72 = completionCopy;
    v23 = [responseCopy synchronousRemoteObjectProxyWithErrorHandler:v71];

    responseCopy = v23;
  }

  client5 = [(PDEndpointServer *)self client];
  if (client5)
  {
    v25 = client5[31];

    if (v25)
    {
      v26 = objc_opt_new();
      v27 = [PDSchoolworkCollaborationStateChangeManager alloc];
      client6 = [(PDEndpointServer *)self client];
      v29 = sub_1000B2528(client6);
      database2 = [(PDEndpointServer *)self database];
      v31 = sub_1001111CC(&v27->super.isa, v29, database2);

      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_10002D3B0;
      v57[3] = &unk_100202590;
      v58 = v14;
      v32 = objectsCopy;
      v59 = v32;
      v33 = v26;
      v67 = v75;
      v60 = v33;
      selfCopy = self;
      v68 = v21 & 1;
      v69 = v18 & 1;
      v62 = v47;
      v66 = v44;
      v70 = v15;
      v63 = objectID;
      v34 = v31;
      v64 = v34;
      v35 = responseCopy;
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

        firstObject = [v33 firstObject];
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

        firstObject = [NSError cls_createErrorWithCode:3 description:@"Save failed!"];
      }

      v39 = firstObject;
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
        client7 = [(PDEndpointServer *)self client];
        v81 = sub_1000B2528(client7);

        objc_initWeak(&location, self);
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_10002DE50;
        v50[3] = &unk_1002025E0;
        objc_copyWeak(&v55, &location);
        p_buf = &buf;
        v51 = v34;
        selfCopy2 = self;
        v53 = completionCopy;
        [(PDEndpointServer *)self entitled_publishCollaborationStateChanges:v41 completion:v50];

        objc_destroyWeak(&v55);
        objc_destroyWeak(&location);
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        completionCopy[2]();
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

  [responseCopy clientRemote_saveDone:0];
LABEL_38:

  _Block_object_dispose(v75, 8);
}

- (void)remote_currentUserWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = objc_autoreleasePoolPush();
  CLSInitLog();
  v7 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "PDEndpointServer remote_currentUserWithCompletion", buf, 2u);
  }

  v8 = +[PDUserDefaults sharedDefaults];
  enableVerboseLogging = [v8 enableVerboseLogging];

  if (enableVerboseLogging)
  {
    CLSLogDebugCurrentPersona();
  }

  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v11 = client[26], client, (v11 & 1) != 0))
  {
    client2 = [(PDEndpointServer *)self client];
    v13 = sub_1000B2528(client2);

    client3 = [(PDEndpointServer *)self client];
    if (client3)
    {
      v15 = client3[25];
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

    client4 = [(PDEndpointServer *)self client];
    if (client4)
    {
      v49 = (client4[30] & v15);
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
      database = [(PDEndpointServer *)self database];
      v37 = @"yes";
      if (!database)
      {
        v37 = @"no";
      }

      *buf = 138412290;
      *&buf[4] = v37;
      _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "PDEndpointServer remote_currentUserWithCompletioncalled self.database is not nil: %@. About to synchronously fetch currentUser from the DB", buf, 0xCu);
    }

    daemon = [(PDEndpointServer *)self daemon];
    database2 = [(PDEndpointServer *)self database];
    v24 = sub_1000DA28C(daemon, database2);

    CLSInitLog();
    v25 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v24;
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "PDEndpointServer remote_currentUserWithCompletioncalled finished fetching currentUser from DB: %@", buf, 0xCu);
    }

    devMode = [v24 devMode];
    v6 = v17;
    v27 = v19;
    if ((([v24 requiresPersonaMatch] ^ 1 | HIDWORD(v47) | v47 | HIDWORD(v48) | v20 | v48 | v50 | v49) & 1) != 0 || devMode - 1 < 2)
    {
      [v24 setClientPersonaUniqueIdentifier:v19];
      [v24 setHasMatchingPersona:v20];
      schoolworkUbiquitousContainerURL = [v24 schoolworkUbiquitousContainerURL];
      if (schoolworkUbiquitousContainerURL)
      {
        client5 = [(PDEndpointServer *)self client];
        v32 = client5;
        if (client5 && (v33 = *(client5 + 32)) != 0)
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

        v38 = [schoolworkUbiquitousContainerURL sandboxExtensionTokenForProcess:buf];

        [v24 setSchoolworkUbiquitousContainerURLSandboxExtension:v38];
      }

      multimediaCacheDirectoryURL = [v24 multimediaCacheDirectoryURL];

      if (multimediaCacheDirectoryURL)
      {
        client6 = [(PDEndpointServer *)self client];
        v41 = client6;
        if (client6 && (v42 = *(client6 + 32)) != 0)
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

        v44 = [multimediaCacheDirectoryURL sandboxExtensionTokenForProcess:buf];

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

      completionCopy[2](completionCopy, v24, 0);

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
      (completionCopy)[2](completionCopy, 0, v51);
    }
  }

  else
  {
    v13 = [NSError cls_createErrorWithCode:4 description:@"Not Authorized"];
    (completionCopy)[2](completionCopy, 0, v13);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)remote_getCurrentUseriCloudQuotaInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  v6 = +[PDUserDefaults sharedDefaults];
  enableVerboseLogging = [v6 enableVerboseLogging];

  if (enableVerboseLogging)
  {
    CLSLogDebugCurrentPersona();
  }

  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v9 = client[26], client, (v9 & 1) != 0))
  {
    sub_10004010C(PDAccountInfo, completionCopy);
  }

  else
  {
    v10 = [NSError cls_createErrorWithCode:4 description:@"Not Authorized"];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v10);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)remote_registerDataObserver:(id)observer withID:(id)d querySpecification:(id)specification oldChangeTag:(unint64_t)tag completion:(id)completion
{
  observerCopy = observer;
  dCopy = d;
  specificationCopy = specification;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v18 = client[31], client, (v18 & 1) != 0))
  {
    entityName = [specificationCopy entityName];
    v20 = NSClassFromString(entityName);

    v33 = 0;
    LOBYTE(entityName) = sub_10002A284(self, v20, &v33);
    v21 = v33;
    if (entityName)
    {
      v22 = sub_1000E3BF8([PDDataObserver alloc], observerCopy, v20, [specificationCopy observerOptions]);
      database = [(PDEndpointServer *)self database];
      v32 = v21;
      v24 = sub_1000E3D20(v22, database, specificationCopy, tag, &v32);
      v25 = v32;

      if (v24)
      {
        queue = self->_queue;
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10002EE98;
        v28[3] = &unk_1002028D0;
        v28[4] = self;
        v29 = dCopy;
        v30 = v22;
        v31 = database;
        dispatch_sync(queue, v28);
        completionCopy[2](completionCopy, 0);
      }

      else
      {
        if (v22 && (v22[6] & 1) == 0)
        {
          [v22 setInvalidated:1];
          [v22[8] clientRemote_invalidate];
        }

        (completionCopy)[2](completionCopy, v25);
      }
    }

    else
    {
      [observerCopy clientRemote_invalidate];
      (completionCopy)[2](completionCopy, v21);
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

    [observerCopy clientRemote_invalidate];
    v25 = [NSError cls_createErrorWithCode:4 format:@"Not Authorized"];
    (completionCopy)[2](completionCopy, v25);
  }
}

- (void)remote_deregisterDataObserverWithID:(id)d completion:(id)completion
{
  dCopy = d;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002F028;
  v10[3] = &unk_1002029E8;
  v10[4] = self;
  v11 = dCopy;
  v8 = dCopy;
  completionCopy = completion;
  dispatch_sync(queue, v10);
  completionCopy[2](completionCopy);
}

- (void)_invalidateObserver:(id)observer
{
  if (observer && (*(observer + 48) & 1) == 0)
  {
    [observer setInvalidated:1];
    v4 = *(observer + 8);

    [v4 clientRemote_invalidate];
  }
}

- (void)remote_featureIsEnabled:(int)enabled completion:(id)completion
{
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (!client || (v8 = client[31], client, (v8 & 1) == 0))
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

  if (enabled)
  {
    v9 = [NSError errorWithDomain:CLSErrorCodeDomain code:314 userInfo:0];
LABEL_9:
    v13 = v9;
    completionCopy[2](completionCopy, 0, v9);

    goto LABEL_10;
  }

  database = [(PDEndpointServer *)self database];
  v11 = [database entityExistsByClass:objc_opt_class() identity:@"ee.publishClass"];

  (completionCopy)[2](completionCopy, v11, 0);
LABEL_10:
}

- (void)remote_getUserDefaultsConfigurationDictionaryWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = 0;
  v5 = [(PDEndpointServer *)self isInternalWithError:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[PDUserDefaults configurationDictionary];
    completionCopy[2](completionCopy, v7, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

- (void)remote_getUserDefaultForDefaultNamed:(id)named completion:(id)completion
{
  namedCopy = named;
  completionCopy = completion;
  v12 = 0;
  v8 = [(PDEndpointServer *)self isInternalWithError:&v12];
  v9 = v12;
  if (v8)
  {
    v10 = +[PDUserDefaults sharedDefaults];
    v11 = [v10 valueForDefaultNamed:namedCopy];
    completionCopy[2](completionCopy, v11, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v9);
  }
}

- (void)remote_setUserDefaultValue:(id)value forDefaultNamed:(id)named completion:(id)completion
{
  valueCopy = value;
  namedCopy = named;
  completionCopy = completion;
  v17 = 0;
  v11 = [(PDEndpointServer *)self isInternalWithError:&v17];
  v12 = v17;
  if (v11)
  {
    v13 = +[PDUserDefaults sharedDefaults];
    v16 = v12;
    v14 = [v13 setValue:valueCopy forDefaultNamed:namedCopy error:&v16];
    v15 = v16;

    completionCopy[2](completionCopy, v14, v15);
    v12 = v15;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)remote_addAuthorizationStatus:(unint64_t)status forHandoutAssignedItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  sub_100023888(self, a2);
  v16 = 0;
  v11 = [(PDEndpointServer *)self isInternalWithError:&v16];
  v12 = v16;
  if (v11)
  {
    database = [(PDEndpointServer *)self database];
    v14 = sub_1000160C4(database, status, itemCopy);

    if ((v14 & 1) == 0)
    {
      itemCopy = [NSError cls_createErrorWithCode:100 format:@"failed to add authorization at objectID: %@", itemCopy];

      v12 = itemCopy;
    }

    completionCopy[2](completionCopy, v14, v12);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)remote_removeAuthorizationStatus:(unint64_t)status forHandoutAssignedItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  sub_100023888(self, a2);
  v16 = 0;
  v11 = [(PDEndpointServer *)self isInternalWithError:&v16];
  v12 = v16;
  if (v11)
  {
    database = [(PDEndpointServer *)self database];
    v14 = sub_10001639C(database, status, itemCopy);

    if ((v14 & 1) == 0)
    {
      itemCopy = [NSError cls_createErrorWithCode:100 format:@"failed to remove authorization at objectID: %@", itemCopy];

      v12 = itemCopy;
    }

    completionCopy[2](completionCopy, v14, v12);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)remote_urlSuitableForOpeningForExpectedURL:(id)l itemID:(id)d ownerName:(id)name zoneName:(id)zoneName completion:(id)completion
{
  lCopy = l;
  dCopy = d;
  nameCopy = name;
  zoneNameCopy = zoneName;
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (client && (v18 = client[26], client, (v18 & 1) != 0))
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
    v26 = lCopy;
    v27 = v19;
    v28 = dCopy;
    v29 = nameCopy;
    v30 = zoneNameCopy;
    v31 = completionCopy;
    v24 = v19;
    CLSPerformWithPersona();
  }

  else
  {
    v25 = [NSError cls_createErrorWithCode:4 description:@"Fetching URL for asset not allowed."];
    (*(completionCopy + 2))(completionCopy, 0, v25);
  }
}

- (void)remote_cloudKitThumbnailUrlSuitableForOpeningForAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (client && (v9 = client[26], client, (v9 & 1) != 0))
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
    v15 = assetCopy;
    v16 = completionCopy;
    CLSPerformWithPersona();
  }

  else
  {
    v14 = [NSError cls_createErrorWithCode:4 description:@"Fetching thumbnail URL for asset not allowed."];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

- (void)remote_cloudKitUrlSuitableForOpeningForAsset:(id)asset downloadObserver:(id)observer completion:(id)completion
{
  assetCopy = asset;
  observerCopy = observer;
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (client && (v12 = client[26], client, (v12 & 1) != 0))
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
    v18 = assetCopy;
    v19 = observerCopy;
    v20 = completionCopy;
    CLSPerformWithPersona();
  }

  else
  {
    v17 = [NSError cls_createErrorWithCode:4 description:@"Fetching URL for asset not allowed."];
    (*(completionCopy + 2))(completionCopy, 0, v17);
  }
}

- (void)remote_cloudKitUrlSuitableForStreamingAsset:(id)asset downloadObserver:(id)observer completion:(id)completion
{
  assetCopy = asset;
  observerCopy = observer;
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (client && (v12 = client[26], client, (v12 & 1) != 0))
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
    v18 = assetCopy;
    v19 = observerCopy;
    v20 = completionCopy;
    CLSPerformWithPersona();
  }

  else
  {
    v17 = [NSError cls_createErrorWithCode:4 description:@"Fetching streaming URL for asset not allowed."];
    (*(completionCopy + 2))(completionCopy, 0, 0, v17);
  }
}

- (void)remote_deleteBackingStoreForAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (client && (v9 = client[26], client, (v9 & 1) != 0))
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
    v15 = assetCopy;
    v16 = completionCopy;
    CLSPerformWithPersona();
  }

  else
  {
    v14 = [NSError cls_createErrorWithCode:4 description:@"Deleting backing store for asset not allowed."];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

- (void)remote_createShareIfNeededForURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (!client || (v9 = client[26], client, (v9 & 1) == 0))
  {
    v10 = [NSError cls_createErrorWithCode:4 description:@"Creating share not allowed."];
    (*(completionCopy + 2))(completionCopy, 1, 0, 0, v10);
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
        v18 = lCopy;
        v11 = v11;
        v13 = v13;
        v19 = completionCopy;
        CLSPerformWithPersona();
      }

      else
      {
        v17 = *(v10 + 120);
        (*(completionCopy + 2))(completionCopy, 1, 0, 0, v17);

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
  (*(completionCopy + 2))(completionCopy, 1, 0, 0, v16);

  v11 = 0;
LABEL_10:

LABEL_12:
}

- (void)remote_uploadAsset:(id)asset createThumbnailIfNeeded:(BOOL)needed uploadObserver:(id)observer completion:(id)completion
{
  assetCopy = asset;
  observerCopy = observer;
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (client && (v13 = client[26], client, (v13 & 1) != 0))
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
    v19 = assetCopy;
    v20 = observerCopy;
    v21 = completionCopy;
    CLSPerformWithPersona();
  }

  else
  {
    v18 = [NSError cls_createErrorWithCode:4 description:@"Uploading asset not allowed."];
    (*(completionCopy + 2))(completionCopy, v18);
  }
}

- (void)remote_topLevelContentStoreCacheDirectoryURLWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  v10 = 0;
  LOBYTE(self) = [(PDEndpointServer *)self isInternalWithError:&v10];
  v6 = v10;
  if (self)
  {
    v9 = v6;
    v7 = sub_1000E0D58(PDFileManager, &v9);
    v8 = v9;

    completionCopy[2](completionCopy, v7, v8);
    v6 = v8;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v6);
  }
}

- (void)remote_currentUserContentStoreCacheDirectoryURLWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  v10 = 0;
  LOBYTE(self) = [(PDEndpointServer *)self isInternalWithError:&v10];
  v6 = v10;
  if (self)
  {
    v9 = v6;
    v7 = sub_10012D068(PDFileSyncManager, &v9);
    v8 = v9;

    completionCopy[2](completionCopy, v7, v8);
    v6 = v8;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v6);
  }
}

- (void)remote_canSearchRostersWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  database = [(PDEndpointServer *)self database];
  v7 = sub_10003E1B4();
  if (sub_10004054C(v7))
  {
    v8 = sub_1000711FC(database);

    if (v8)
    {
      v9 = sub_1000BA854(database);
      if (v9)
      {
        v10 = [NSNumber numberWithBool:v9[8]];
        completionCopy[2](completionCopy, v10, 0);
      }

      else
      {
        v16 = [NSError cls_createErrorWithCode:100 format:@"Cannot search roster because ASMConfig is not available"];
        (completionCopy)[2](completionCopy, 0, v16);

        v10 = &__kCFBooleanFalse;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  client = [(PDEndpointServer *)self client];
  if (client)
  {
    v12 = client[26];
  }

  else
  {
    v12 = 0;
  }

  v13 = +[PDUserDefaults sharedDefaults];
  enableVerboseLogging = [v13 enableVerboseLogging];

  if (enableVerboseLogging)
  {
    CLSInitLog();
    v15 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      v17 = v15;
      client2 = [(PDEndpointServer *)self client];
      v19 = sub_1000B2528(client2);
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
  completionCopy[2](completionCopy, v9, 0);
LABEL_13:
}

- (void)remote_studentActivityForAttachmentsWithIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  v10 = client;
  if (!client || *(client + 26) != 1 || ([(PDEndpointServer *)self database], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_23;
  }

  v12 = v11;
  v13 = sub_1000717E8(v11);

  if ((v13 & 1) == 0)
  {
LABEL_23:
    v33 = [NSError cls_createErrorWithCode:4 description:@"Fetching student activity is not allowed."];
    completionCopy[2](completionCopy, 0, v33);

    goto LABEL_24;
  }

  v34 = completionCopy;
  v36 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v35 = dsCopy;
  obj = dsCopy;
  v14 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    v17 = &CLSLogAsset_ptr;
    selfCopy = self;
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
        database = [(PDEndpointServer *)self database];
        v22 = v17[90];
        v23 = [database select:objc_opt_class() identity:v19];

        if (v23)
        {
          contextPath = [v23 contextPath];

          if (contextPath)
          {
            v25 = v17;
            contextPath2 = [v23 contextPath];
            v27 = [CLSContext objectIDForIdentifierPath:contextPath2];

            if (v27)
            {
              database2 = [(PDEndpointServer *)self database];
              v29 = objc_opt_class();
              v47 = v27;
              v30 = [NSArray arrayWithObjects:&v47 count:1];
              v31 = [database2 select:v29 where:@"parentObjectID = ?" bindings:v30];

              if (v31)
              {
                [v36 setObject:v31 forKeyedSubscript:v19];
              }

              self = selfCopy;
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

  completionCopy = v34;
  (v34)[2](v34, v36, 0);

  dsCopy = v35;
LABEL_24:
}

- (void)remote_startAppActivity:(id)activity bundleID:(id)d activityType:(unint64_t)type completion:(id)completion
{
  activityCopy = activity;
  dCopy = d;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (!client || (v15 = client[26], client, (v15 & 1) == 0))
  {
    v17 = [NSError cls_createErrorWithCode:4 description:@"Action not allowed."];
    completionCopy[2](completionCopy, 0, v17);
    goto LABEL_46;
  }

  database = [(PDEndpointServer *)self database];
  v17 = database;
  if (type == 3)
  {
    v55 = [database select:objc_opt_class() identity:activityCopy];
    v21 = objc_opt_class();
    v60 = activityCopy;
    v22 = [NSArray arrayWithObjects:&v60 count:1];
    v23 = [v17 select:v21 where:@"parentObjectID = ?" bindings:v22];

    if (!v23)
    {
      v23 = [[CLSActivity alloc] _initWithTargetClass:objc_opt_class()];
      client2 = [(PDEndpointServer *)self client];
      v25 = sub_1000B2528(client2);
      [v23 setAppIdentifier:v25];

      [v23 setParentObjectID:activityCopy];
      objectID = [v23 objectID];
      [v55 setCurrentActivityID:objectID];

      v27 = +[NSDate now];
      [v55 setDateLastModified:v27];

      v59[0] = v55;
      v59[1] = v23;
      v28 = [NSArray arrayWithObjects:v59 count:2];
      [v17 saveAndSyncObjects:v28];
    }

    objectID2 = [v23 objectID];
    sub_100088880(v17);
    v30 = objc_opt_class();
    v58 = objectID2;
    v31 = [NSArray arrayWithObjects:&v58 count:1];
    v32 = [v17 select:v30 where:@"activityID = ?" bindings:v31];

    if (!v32)
    {
      v32 = sub_1000877D8([PDAppUsage alloc], objectID2, dCopy);
    }

    v33 = v55;
    parentObjectID = [v55 parentObjectID];
    if (parentObjectID)
    {
      if (sub_1000881B0(v17, parentObjectID))
      {
        v53 = [v17 select:objc_opt_class() identity:parentObjectID];
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
          completionCopy[2](completionCopy, 0, v39);
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
              typeCopy = v51;
              _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Failed to update AppUsage. AppUsageID: %{public}@", buf, 0xCu);
            }

            v39 = [NSError cls_createErrorWithCode:8 description:@"Failed to update AppUsage.", v51];
            v38 = v52;
          }

          completionCopy[2](completionCopy, v38, v39);
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
        objectID3 = [v55 objectID];
        *buf = 138543362;
        typeCopy = objectID3;
        _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Missing parent object Attachment. CLSAssignedItemID: %{public}@", buf, 0xCu);
      }

      v42 = @"Missing attachment";
      v43 = 100;
    }

    v45 = [NSError cls_createErrorWithCode:v43 description:v42];
    completionCopy[2](completionCopy, 0, v45);

LABEL_40:
LABEL_41:

    goto LABEL_46;
  }

  if (type != 1)
  {
    CLSInitLog();
    v40 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      typeCopy = type;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Invoke start activity on un-supported attachment type - %lu", buf, 0xCu);
    }

    v33 = [NSError cls_createErrorWithCode:2 description:@"Start activity on un-supported attachment type."];
    completionCopy[2](completionCopy, 0, v33);
    goto LABEL_41;
  }

  sub_100088880(database);
  v18 = sub_1000879B4(v17, dCopy);
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

  completionCopy[2](completionCopy, v20, v19);

LABEL_46:
}

- (void)remote_startActivityFailed:(id)failed completion:(id)completion
{
  failedCopy = failed;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v9 = client[26], client, (v9 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v11 = sub_100087F3C(database, failedCopy);
    if (v11)
    {
      v12 = [database select:objc_opt_class() identity:v11];
      v13 = v12;
      if (v12)
      {
        *(v12 + 8) = 0;
      }

      v14 = [database insertOrUpdateObject:v12];
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = [NSError cls_createErrorWithCode:8 description:@"Failed to update AppUsage"];
      }

      completionCopy[2](completionCopy, v14, v15);
    }

    else
    {
      v13 = [NSError cls_createErrorWithCode:0 description:@"AppUsage not found"];
      completionCopy[2](completionCopy, 0, v13);
    }
  }

  else
  {
    database = [NSError cls_createErrorWithCode:4 description:@"Action not allowed."];
    completionCopy[2](completionCopy, 0, database);
  }
}

- (void)remote_fetchAppBasedAssignmentUsage:(id)usage completion:(id)completion
{
  usageCopy = usage;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v9 = client[26], client, (v9 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v11 = [NSNumber numberWithDouble:sub_100088364(database, usageCopy, 0)];
    completionCopy[2](completionCopy, v11, 0);

    completionCopy = v11;
  }

  else
  {
    database = [NSError cls_createErrorWithCode:4 description:@"Action not allowed."];
    (completionCopy)[2](completionCopy, 0, database);
  }
}

- (void)remote_submittableURLByCurrentUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v10 = client[27], client, (v10 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v12 = sub_1000BA854(database);
    v13 = v12;
    if (v12 && (*(v12 + 9) & 1) != 0)
    {
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_100031F54;
      v64[3] = &unk_100202680;
      v14 = userCopy;
      v65 = v14;
      v66 = completionCopy;
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
          zoneID = [v21 zoneID];
          zoneName = [zoneID zoneName];

          v24 = objc_opt_class();
          v72[0] = v53[5];
          v72[1] = zoneName;
          v25 = [NSArray arrayWithObjects:v72 count:2];
          v26 = [database select:v24 where:@"brItemID = ? and brZoneName = ?" bindings:v25];

          CLSInitLog();
          v27 = CLSLogDefault;
          if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
          {
            v41 = v53[5];
            *v68 = 138412546;
            v69 = v41;
            v70 = 2112;
            v71 = zoneName;
            _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Looking up asset matching brItemID = %@ and brZoneName = %@", v68, 0x16u);
          }

          parentObjectID = [v26 parentObjectID];
          v29 = parentObjectID == 0;

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
              v71 = zoneName;
              _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "failed to find asset matching brItemID = %@ and brZoneName = %@", v68, 0x16u);
            }

            [*(v59 + 5) cls_log:CLSLogHandout];
            (v15[2])(v15, 0, *(v59 + 5));
          }

          else
          {
            v30 = objc_opt_class();
            parentObjectID2 = [v26 parentObjectID];
            v67 = parentObjectID2;
            v32 = [NSArray arrayWithObjects:&v67 count:1];
            v33 = [database select:v30 where:@"objectID = ?" bindings:v32];

            if (v33)
            {
              v34 = 0;
            }

            else
            {
              objectID = [v26 objectID];
              v39 = [NSError cls_createErrorWithCode:100 format:@"failed to find attachment for asset with id: %@", objectID, _NSConcreteStackBlock, 3221225472, sub_100032040, &unk_1002023B0, v44, &v52, buf, &v46];
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
      (*(completionCopy + 2))(completionCopy, 0, v36);
    }
  }

  else
  {
    v43 = [NSError cls_createErrorWithCode:4 description:@"Action not allowed."];
    (*(completionCopy + 2))(completionCopy, 0, v43);
  }
}

- (void)remote_currentUserIsStudent:(id)student
{
  studentCopy = student;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v7 = client[27], client, (v7 & 1) != 0))
  {
    v11 = 0;
    v8 = [(PDEndpointServer *)self isCurrentUserStudent:&v11];
    v9 = v11;
    studentCopy[2](studentCopy, v8, v9);
  }

  else
  {
    v10 = [NSError cls_createErrorWithCode:4 description:@"Action not allowed."];
    studentCopy[2](studentCopy, 0, v10);
  }
}

- (void)remote_publishHandoutGraph:(id)graph completion:(id)completion
{
  graphCopy = graph;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  v10 = client;
  if (!client || *(client + 26) != 1 || ([(PDEndpointServer *)self database], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_25;
  }

  v12 = v11;
  v13 = sub_1000717E8(v11);

  if ((v13 & 2) == 0)
  {
LABEL_25:
    v15 = [NSError cls_createErrorWithCode:4 description:@"Publishing handouts not allowed."];
    completionCopy[2](completionCopy, 0, v15);
    goto LABEL_26;
  }

  client2 = [(PDEndpointServer *)self client];
  v15 = sub_1000B2528(client2);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v32 = graphCopy;
  v16 = graphCopy;
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
        appIdentifier = [v21 appIdentifier];

        if (!appIdentifier)
        {
          [v21 setAppIdentifier:v15];
        }

        if ([v21 conformsToProtocol:&OBJC_PROTOCOL___PDEndpointServerEntityHooks] && (objc_msgSend(v21, "willBeProcessedByEndpointServer:", self) & 1) == 0)
        {
          completionCopy[2](completionCopy, 0, 0);
          daemon = v16;
          graphCopy = v32;
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

  daemon = [(PDEndpointServer *)self daemon];
  operationsManager = [daemon operationsManager];

  if (operationsManager)
  {
    v25 = [PDHandoutPublish alloc];
    database = [(PDEndpointServer *)self database];
    v27 = sub_10012BEB8(v25, database, v16);

    client3 = [(PDEndpointServer *)self client];
    v29 = sub_1000B2528(client3);
    [v27 setSourceApplicationBundleIdentifier:v29];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100032658;
    v33[3] = &unk_1002026A8;
    v34 = completionCopy;
    [v27 addOnFinishBlock:v33];
    operationsManager2 = [daemon operationsManager];
    sub_1001232E0(operationsManager2, v27);
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
    completionCopy[2](completionCopy, 0, v27);
  }

  graphCopy = v32;

LABEL_23:
LABEL_26:
}

- (void)remote_fetchDeletedObjectIDsNewerThanDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  v8 = objc_opt_new();
  database = [(PDEndpointServer *)self database];
  v10 = objc_opt_class();
  v15 = dateCopy;
  v11 = [NSArray arrayWithObjects:&v15 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100032858;
  v13[3] = &unk_100202A30;
  v14 = v8;
  v12 = v8;
  [database selectAll:v10 where:@"deletedAtDate >= ?" bindings:v11 block:v13];

  completionCopy[2](completionCopy, v12);
}

- (void)remote_repairHandoutAttachments:(id)attachments completion:(id)completion
{
  attachmentsCopy = attachments;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v10 = client[26], client, (v10 & 1) != 0))
  {
    daemon = [(PDEndpointServer *)self daemon];
    operationsManager = [daemon operationsManager];

    if (operationsManager)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = attachmentsCopy;
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
      database = [(PDEndpointServer *)self database];
      v20 = sub_10012BEB8(v18, database, v13);

      client2 = [(PDEndpointServer *)self client];
      v22 = sub_1000B2528(client2);
      [v20 setSourceApplicationBundleIdentifier:v22];

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100032BD4;
      v25[3] = &unk_1002026A8;
      v26 = completionCopy;
      [v20 addOnFinishBlock:v25];
      operationsManager2 = [daemon operationsManager];
      sub_1001232E0(operationsManager2, v20);
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
      (*(completionCopy + 2))(completionCopy, 0, v20);
    }
  }

  else
  {
    daemon = [NSError cls_createErrorWithCode:4 description:@"Repairing handout attachments not allowed."];
    (*(completionCopy + 2))(completionCopy, 0, daemon);
  }
}

- (void)remote_fetchCollectionsWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v7 = client[26], client, (v7 & 1) != 0))
  {
    daemon = [(PDEndpointServer *)self daemon];
    operationsManager = [daemon operationsManager];

    if (operationsManager)
    {
      v10 = [PDCollectionSearchOperation alloc];
      database = [(PDEndpointServer *)self database];
      v12 = [(PDCollectionSearchOperation *)v10 initForCollectionsWithDatabase:database];

      operationsManager2 = [daemon operationsManager];
      sub_1001232E0(operationsManager2, v12);

      completionCopy[2](completionCopy, 1, 0);
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
      (completionCopy)[2](completionCopy, 0, v15);
    }
  }

  else
  {
    daemon = [NSError cls_createErrorWithCode:4 description:@"Fetching Collections not allowed. Not a Dashboard Client."];
    (completionCopy)[2](completionCopy, 0, daemon);
  }
}

- (void)remote_fetchCollectionItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v7 = client[26], client, (v7 & 1) != 0))
  {
    daemon = [(PDEndpointServer *)self daemon];
    operationsManager = [daemon operationsManager];

    if (operationsManager)
    {
      v10 = [PDCollectionSearchOperation alloc];
      database = [(PDEndpointServer *)self database];
      v12 = [(PDCollectionSearchOperation *)v10 initForCollectionItemsWithDatabase:database];

      client2 = [(PDEndpointServer *)self client];
      v14 = sub_1000B2528(client2);
      [v12 setSourceApplicationBundleIdentifier:v14];

      operationsManager2 = [daemon operationsManager];
      sub_1001232E0(operationsManager2, v12);

      completionCopy[2](completionCopy, 1, 0);
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
      (completionCopy)[2](completionCopy, 0, v17);
    }
  }

  else
  {
    daemon = [NSError cls_createErrorWithCode:4 description:@"Fetching Collection Items not allowed. Not a Dashboard Client."];
    (completionCopy)[2](completionCopy, 0, daemon);
  }
}

- (void)remote_deleteCollectionRelatedObjectsWithCompletion:(id)completion completion:(id)a4
{
  completionCopy = completion;
  v8 = a4;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v10 = client[26], client, (v10 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v12 = sub_1000711FC(database);

    if (v12)
    {
      daemon = [(PDEndpointServer *)self daemon];
      operationsManager = [daemon operationsManager];

      if (operationsManager)
      {
        v15 = [PDCollectionPublishOperation alloc];
        database2 = [(PDEndpointServer *)self database];
        v17 = [(PDCollectionPublishOperation *)v15 initWithDatabase:database2 andObjectsToDelete:completionCopy];

        client2 = [(PDEndpointServer *)self client];
        v19 = sub_1000B2528(client2);
        [(PDOperation *)v17 setSourceApplicationBundleIdentifier:v19];

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100033338;
        v23[3] = &unk_1002026D0;
        v24 = v8;
        [(PDOperation *)v17 addOnFinishBlock:v23];
        operationsManager2 = [daemon operationsManager];
        sub_1001232E0(operationsManager2, v17);
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

      daemon = [NSError cls_createErrorWithCode:2 description:@"Must be signed in to delete collections."];
      (*(v8 + 2))(v8, 0, daemon);
    }
  }

  else
  {
    database = [NSError cls_createErrorWithCode:4 description:@"Deleting Collections not allowed. Not a Dashboard Client."];
    (*(v8 + 2))(v8, 0, database);
  }
}

- (void)remote_collaborationStatesForObjectWithID:(id)d ownerPersonID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v12 = client[26], client, (v12 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v14 = sub_100163860(database, dCopy, iDCopy);

    completionCopy[2](completionCopy, v14, 0);
  }

  else
  {
    v14 = [NSError cls_createErrorWithCode:4 description:@"Fetching assignment states not allowed. Not a Dashboard Client."];
    (completionCopy)[2](completionCopy, 0, v14);
  }
}

- (void)remote_collaborationStatesForObjectWithID:(id)d classID:(id)iD forOwnersWithRole:(unint64_t)role completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v14 = client[26], client, (v14 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v16 = sub_100163A80(database, dCopy, iDCopy, role);

    completionCopy[2](completionCopy, v16, 0);
  }

  else
  {
    v16 = [NSError cls_createErrorWithCode:4 description:@"Fetching assignment states not allowed. Not a Dashboard Client."];
    (completionCopy)[2](completionCopy, 0, v16);
  }
}

- (void)remote_publishCollaborationStateChanges:(id)changes completion:(id)completion
{
  changesCopy = changes;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v9 = client[26], client, (v9 & 1) != 0))
  {
    [(PDEndpointServer *)self entitled_publishCollaborationStateChanges:changesCopy completion:completionCopy];
  }

  else
  {
    v10 = [NSError cls_createErrorWithCode:4 description:@"Changing assignment state not allowed. Not a Dashboard Client."];
    (*(completionCopy + 2))(completionCopy, 0, 0, v10);
  }
}

- (void)entitled_publishCollaborationStateChanges:(id)changes completion:(id)completion
{
  changesCopy = changes;
  completionCopy = completion;
  database = [(PDEndpointServer *)self database];
  v9 = sub_1000711FC(database);

  if (v9)
  {
    v10 = sub_1000711FC(database);
    objectID = [v10 objectID];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = changesCopy;
    v12 = changesCopy;
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
          senderPersonID = [v17 senderPersonID];

          if (!senderPersonID)
          {
            [v17 setSenderPersonID:objectID];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v14);
    }

    daemon = [(PDEndpointServer *)self daemon];
    operationsManager = [daemon operationsManager];

    if (operationsManager)
    {
      v21 = [PDCollaborationStateChangePublish alloc];
      database2 = [(PDEndpointServer *)self database];
      v23 = sub_1001596A4(v21, database2, v12);

      client = [(PDEndpointServer *)self client];
      v25 = sub_1000B2528(client);
      [v23 setSourceApplicationBundleIdentifier:v25];

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100033AD8;
      v30[3] = &unk_1002026F8;
      v31 = completionCopy;
      [v23 addOnFinishBlock:v30];
      operationsManager2 = [daemon operationsManager];
      sub_1001232E0(operationsManager2, v23);
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
      (*(completionCopy + 2))(completionCopy, 0, 0, v23);
    }

    changesCopy = v29;
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

    objectID = [NSError cls_createErrorWithCode:2 description:@"Must be signed in to publish state changes."];
    (*(completionCopy + 2))(completionCopy, 0, 0, objectID);
  }
}

- (void)remote_triggerUserNotificationReviewDueHandoutsWithReferenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v9 = client[30], client, (v9 & 1) != 0))
  {
    daemon = [(PDEndpointServer *)self daemon];
    userNotificationManager = [daemon userNotificationManager];

    reviewDueHandoutsTrigger = [userNotificationManager reviewDueHandoutsTrigger];
    v13 = [reviewDueHandoutsTrigger fetchHandoutsDueYesterdayFromDate:dateCopy];
    v14 = [reviewDueHandoutsTrigger dueYesterdayUserNotificationDataFromHandouts:v13];
    [reviewDueHandoutsTrigger fireTriggerWithNotificationData:v14];
    completionCopy[2](completionCopy, 0);

    completionCopy = reviewDueHandoutsTrigger;
  }

  else
  {
    userNotificationManager = [NSError cls_createErrorWithCode:4 description:@"Triggering notifications not allowed. Use pdtool"];
    (completionCopy)[2](completionCopy, userNotificationManager);
  }
}

- (void)remote_triggerUserNotificationHandoutDueSoonWithReferenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v9 = client[30], client, (v9 & 1) != 0))
  {
    daemon = [(PDEndpointServer *)self daemon];
    userNotificationManager = [daemon userNotificationManager];

    handoutDueSoonTrigger = [userNotificationManager handoutDueSoonTrigger];
    v13 = [handoutDueSoonTrigger fetchHandoutsDueNextDayFromDate:dateCopy];
    v14 = [handoutDueSoonTrigger dueTomorrowUserNotificationDataFromHandouts:v13];
    [handoutDueSoonTrigger fireTriggerWithNotificationData:v14];
    completionCopy[2](completionCopy, 0);

    completionCopy = handoutDueSoonTrigger;
  }

  else
  {
    userNotificationManager = [NSError cls_createErrorWithCode:4 description:@"Triggering notifications not allowed.  Use pdtool"];
    (completionCopy)[2](completionCopy, userNotificationManager);
  }
}

- (void)remote_triggerUserNotificationHandoutPastDueSummaryWithReferenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v9 = client[30], client, (v9 & 1) != 0))
  {
    daemon = [(PDEndpointServer *)self daemon];
    userNotificationManager = [daemon userNotificationManager];

    handoutPastDueTrigger = [userNotificationManager handoutPastDueTrigger];
    v13 = [handoutPastDueTrigger fetchActiveHandoutsPastDueFromDate:dateCopy];
    v14 = [handoutPastDueTrigger pastDueUserNotificationDataFromHandouts:v13];
    [handoutPastDueTrigger fireTriggerWithNotificationData:v14];
    completionCopy[2](completionCopy, 0);

    completionCopy = handoutPastDueTrigger;
  }

  else
  {
    userNotificationManager = [NSError cls_createErrorWithCode:4 description:@"Triggering notifications not allowed.  Use pdtool"];
    (completionCopy)[2](completionCopy, userNotificationManager);
  }
}

- (void)remote_triggerUserNotificationRevisionRequestedWithAttachmentID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v10 = client[30], client, (v10 & 1) != 0))
  {
    daemon = [(PDEndpointServer *)self daemon];
    userNotificationManager = [daemon userNotificationManager];

    revisionNeededTrigger = [userNotificationManager revisionNeededTrigger];
    if (revisionNeededTrigger)
    {
      database = [(PDEndpointServer *)self database];
      v15 = [database select:objc_opt_class() identity:dCopy];

      if (v15)
      {
        database2 = [(PDEndpointServer *)self database];
        v17 = objc_opt_class();
        parentObjectID = [v15 parentObjectID];
        v19 = [database2 select:v17 identity:parentObjectID];

        if (v19)
        {
          database3 = [(PDEndpointServer *)self database];
          v21 = objc_opt_class();
          v30 = v19;
          objectID = [v19 objectID];
          v31 = objectID;
          v23 = [NSArray arrayWithObjects:&v31 count:1];
          v24 = [database3 select:v21 where:@"parentObjectID = ?" bindings:v23];

          if (v24)
          {
            database4 = [(PDEndpointServer *)self database];
            v26 = [revisionNeededTrigger notificationDataWithDatabase:database4 recipient:v24 attachmentID:dCopy];

            [revisionNeededTrigger fireTriggerWithNotificationData:v26];
            v27 = 0;
          }

          else
          {
            v27 = [NSError cls_createErrorWithCode:2 description:@"Handout recipient does not exist"];
            v26 = v27;
          }

          completionCopy[2](completionCopy, v27);

          v19 = v30;
        }

        else
        {
          v29 = [NSError cls_createErrorWithCode:2 description:@"Handout does not exist"];
          completionCopy[2](completionCopy, v29);
        }
      }

      else
      {
        v28 = [NSError cls_createErrorWithCode:2 description:@"Handout attachment does not exist"];
        completionCopy[2](completionCopy, v28);
      }
    }

    else
    {
      v15 = [NSError cls_createErrorWithCode:2 description:@"Revision requested notification trigger does not exist. Are you signed in as a student?"];
      completionCopy[2](completionCopy, v15);
    }
  }

  else
  {
    userNotificationManager = [NSError cls_createErrorWithCode:4 description:@"Triggering notifications not allowed.  Use pdtool"];
    completionCopy[2](completionCopy, userNotificationManager);
  }
}

- (void)remote_triggerUserNotificationRevisedSubmissionWithAttachmentID:(id)d studentName:(id)name completion:(id)completion
{
  dCopy = d;
  nameCopy = name;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v13 = client[30], client, (v13 & 1) != 0))
  {
    daemon = [(PDEndpointServer *)self daemon];
    userNotificationManager = [daemon userNotificationManager];

    revisedSubmissionTrigger = [userNotificationManager revisedSubmissionTrigger];
    if (revisedSubmissionTrigger)
    {
      database = [(PDEndpointServer *)self database];
      v18 = [database select:objc_opt_class() identity:dCopy];

      if (v18)
      {
        database2 = [(PDEndpointServer *)self database];
        v20 = objc_opt_class();
        parentObjectID = [v18 parentObjectID];
        v22 = [database2 select:v20 identity:parentObjectID];

        if (v22)
        {
          v23 = objc_opt_class();
          objectID = [v22 objectID];
          v47 = objectID;
          v25 = [NSArray arrayWithObjects:&v47 count:1];
          v26 = database2;
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
            v44 = [NSString stringWithFormat:v30, nameCopy, v32];

            v22 = v31;
            v33 = [NSBundle bundleForClass:objc_opt_class()];
            v34 = [v33 localizedStringForKey:@"NOTIFICATION_TEACHER_REVIEW_REVISED_WORK_TITLE" value:&stru_100206880 table:@"ClassKit"];

            v43 = v34;
            v35 = sub_10012F04C([PDUserNotificationData alloc], 5, v34, v44);
            objectID2 = [v22 objectID];
            if (v35)
            {
              objc_setProperty_nonatomic_copy(v35, v36, objectID2, 24);
            }

            classID = [v45 classID];
            database2 = v46;
            if (v35)
            {
              objc_setProperty_nonatomic_copy(v35, v38, classID, 32);
            }

            objectID3 = [v18 objectID];
            if (v35)
            {
              objc_setProperty_nonatomic_copy(v35, v40, objectID3, 48);
            }

            [revisedSubmissionTrigger fireTriggerWithNotificationData:v35];
            completionCopy[2](completionCopy, 0);

            v42 = v44;
            v28 = v45;
          }

          else
          {
            v42 = [NSError cls_createErrorWithCode:2 description:@"Handout recipient does not exist"];
            (completionCopy)[2](completionCopy, v42);
            database2 = v46;
          }
        }

        else
        {
          v28 = [NSError cls_createErrorWithCode:2 description:@"Handout does not exist"];
          (completionCopy)[2](completionCopy, v28);
        }
      }

      else
      {
        database2 = [NSError cls_createErrorWithCode:2 description:@"Handout attachment does not exist"];
        (completionCopy)[2](completionCopy, database2);
      }
    }

    else
    {
      v18 = [NSError cls_createErrorWithCode:2 description:@"Revised submission notification trigger does not exist. Are you signed in as a teacher?"];
      (completionCopy)[2](completionCopy, v18);
    }
  }

  else
  {
    userNotificationManager = [NSError cls_createErrorWithCode:4 description:@"Triggering notifications not allowed.  Use pdtool"];
    (completionCopy)[2](completionCopy, userNotificationManager);
  }
}

- (void)remote_triggerUserNotificationHandoutAssignedWithHandoutID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v10 = client[30], client, (v10 & 1) != 0))
  {
    daemon = [(PDEndpointServer *)self daemon];
    userNotificationManager = [daemon userNotificationManager];

    handoutAssignedTrigger = [userNotificationManager handoutAssignedTrigger];
    if (handoutAssignedTrigger)
    {
      database = [(PDEndpointServer *)self database];
      v15 = [database select:objc_opt_class() identity:dCopy];
      if (v15)
      {
        v16 = objc_opt_class();
        v23 = dCopy;
        v17 = [NSArray arrayWithObjects:&v23 count:1];
        v18 = [database select:v16 where:@"parentObjectID = ?" bindings:v17];

        if (v18)
        {
          objectID = [v15 objectID];
          title = [v15 title];
          v21 = [handoutAssignedTrigger notificationDataWithDatabase:database recipient:v18 handoutID:objectID handoutTitle:title];

          [handoutAssignedTrigger fireTriggerWithNotificationData:v21];
          v22 = 0;
        }

        else
        {
          v22 = [NSError cls_createErrorWithCode:2 description:@"Handout recipient does not exist"];
          v21 = v22;
        }

        completionCopy[2](completionCopy, v22);
      }

      else
      {
        v18 = [NSError cls_createErrorWithCode:2 description:@"Handout does not exist"];
        completionCopy[2](completionCopy, v18);
      }
    }

    else
    {
      database = [NSError cls_createErrorWithCode:2 description:@"Handout notification trigger does not exist.  Are you signed in as a student?"];
      completionCopy[2](completionCopy, database);
    }
  }

  else
  {
    userNotificationManager = [NSError cls_createErrorWithCode:4 description:@"Triggering notifications not allowed.  Use pdtool"];
    completionCopy[2](completionCopy, userNotificationManager);
  }
}

- (void)remote_triggerUserNotificationWithTitle:(id)title message:(id)message wrappedImageURL:(id)l
{
  lCopy = l;
  messageCopy = message;
  titleCopy = title;
  sub_100023888(self, a2);
  v12 = [lCopy url];

  sub_100043340(PDPrivateUserNotificationManager, titleCopy, messageCopy, v12);
}

- (void)remote_publishClass:(id)class membersToInsert:(id)insert membersToDelete:(id)delete completion:(id)completion
{
  classCopy = class;
  insertCopy = insert;
  deleteCopy = delete;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v16 = client[26], client, (v16 & 1) != 0))
  {
    client2 = [(PDEndpointServer *)self client];
    v18 = sub_1000B2528(client2);

    v47 = classCopy;
    v48 = deleteCopy;
    if ([classCopy isDeleted])
    {
      v19 = 3;
    }

    else if ([classCopy isTemporary])
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
    v46 = insertCopy;
    v20 = insertCopy;
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
          appIdentifier = [v25 appIdentifier];

          if (!appIdentifier)
          {
            [v25 setAppIdentifier:v18];
          }

          if ([v25 conformsToProtocol:&OBJC_PROTOCOL___PDEndpointServerEntityHooks] && (objc_msgSend(v25, "willBeProcessedByEndpointServer:", self) & 1) == 0)
          {
            (*(completionCopy + 2))(completionCopy, 0, 0);
            daemon = v20;
LABEL_34:
            insertCopy = v46;
            classCopy = v47;
            deleteCopy = v48;
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

    v44 = completionCopy;

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
          appIdentifier2 = [v32 appIdentifier];

          if (!appIdentifier2)
          {
            [v32 setAppIdentifier:v18];
          }

          if ([v32 conformsToProtocol:&OBJC_PROTOCOL___PDEndpointServerEntityHooks] && (objc_msgSend(v32, "willBeProcessedByEndpointServer:", self) & 1) == 0)
          {
            completionCopy = v44;
            v44[2](v44, 0, 0);
            daemon = v27;
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

    daemon = [(PDEndpointServer *)self daemon];
    operationsManager = [daemon operationsManager];

    if (operationsManager)
    {
      v36 = [PDClassPublish alloc];
      database = [(PDEndpointServer *)self database];
      v38 = v20;
      classCopy = v47;
      v39 = sub_10007F73C(v36, database, v47, v38, v27, v45);

      client3 = [(PDEndpointServer *)self client];
      v41 = sub_1000B2528(client3);
      [v39 setSourceApplicationBundleIdentifier:v41];

      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100035234;
      v49[3] = &unk_100202720;
      completionCopy = v44;
      v50 = v44;
      [v39 addOnFinishBlock:v49];
      operationsManager2 = [daemon operationsManager];
      sub_1001232E0(operationsManager2, v39);
    }

    else
    {
      CLSInitLog();
      v43 = CLSLogDefault;
      completionCopy = v44;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Operations manager is nil!", buf, 2u);
      }

      v39 = [NSError cls_createErrorWithCode:100 description:@"Operations manager is nil.", v44];
      (*(completionCopy + 2))(completionCopy, 0, v39);
      classCopy = v47;
    }

    insertCopy = v46;
    deleteCopy = v48;

LABEL_35:
  }

  else
  {
    v18 = [NSError cls_createErrorWithCode:4 description:@"Creating classes not allowed. Not a Dashboard Client."];
    (*(completionCopy + 2))(completionCopy, 0, v18);
  }
}

- (void)remote_publishSurveyAnswers:(id)answers completion:(id)completion
{
  answersCopy = answers;
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (client && (v9 = client[26], client, (v9 & 1) != 0))
  {
    daemon = [(PDEndpointServer *)self daemon];
    operationsManager = [daemon operationsManager];

    if (operationsManager)
    {
      v12 = objc_opt_new();
      v13 = objc_opt_new();
      database = [(PDEndpointServer *)self database];
      v15 = objc_opt_class();
      objectID = [answersCopy objectID];
      v41[0] = objectID;
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
      [database selectAll:v15 where:@"surveyID = ? and state = ?" bindings:v17 block:v37];

      v20 = objc_opt_new();
      if ([v19 count])
      {
        v21 = [PDDatabase whereSQLForArray:v19 prefix:@"parentObjectID in "];
        database2 = [(PDEndpointServer *)self database];
        v23 = objc_opt_class();
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100035938;
        v35[3] = &unk_100202770;
        v36 = v20;
        [database2 selectAll:v23 where:v21 bindings:v19 block:v35];
      }

      v24 = [PDPublishSurveyAnswersOperation alloc];
      database3 = [(PDEndpointServer *)self database];
      v26 = sub_100082BC0(v24, database3, answersCopy, v18, v20);

      v30 = _NSConcreteStackBlock;
      v31 = 3221225472;
      v32 = sub_10003594C;
      v33 = &unk_100202798;
      v34 = completionCopy;
      [v26 addOnFinishBlock:&v30];
      operationsManager2 = [daemon operationsManager];
      sub_1001232E0(operationsManager2, v26);
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
      (*(completionCopy + 2))(completionCopy, 0, v18);
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

    daemon = [NSError cls_createErrorWithCode:4 description:@"Not authorized."];
    (*(completionCopy + 2))(completionCopy, 0, daemon);
  }
}

- (void)remote_fetchSurveyAnswer:(id)answer responderIDs:(id)ds completion:(id)completion
{
  answerCopy = answer;
  dsCopy = ds;
  completionCopy = completion;
  sub_100023888(self, a2);
  client = [(PDEndpointServer *)self client];
  if (client && (v13 = client[26], client, (v13 & 1) != 0))
  {
    daemon = [(PDEndpointServer *)self daemon];
    operationsManager = [daemon operationsManager];

    if (operationsManager)
    {
      v16 = [PDFetchSurveyAnswerOperation alloc];
      database = [(PDEndpointServer *)self database];
      v18 = sub_1000A5C10(v16, database, answerCopy, dsCopy);

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100035C74;
      v22[3] = &unk_1002027C0;
      v23 = completionCopy;
      [v18 addOnFinishBlock:v22];
      operationsManager2 = [daemon operationsManager];
      sub_1001232E0(operationsManager2, v18);
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
      (*(completionCopy + 2))(completionCopy, 0, v18);
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

    daemon = [NSError cls_createErrorWithCode:4 description:@"Not authorized."];
    (*(completionCopy + 2))(completionCopy, 0, daemon);
  }
}

- (void)remote_publishAdminRequests:(id)requests withRequestor:(id)requestor adminRequestAccounts:(id)accounts completion:(id)completion
{
  requestsCopy = requests;
  requestorCopy = requestor;
  accountsCopy = accounts;
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (client && (v15 = client[26], client, (v15 & 1) != 0))
  {
    v35 = accountsCopy;
    v36 = requestorCopy;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v16 = requestsCopy;
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
          client2 = [(PDEndpointServer *)self client];
          v23 = sub_1000B2528(client2);
          [v21 setBundleIdentifier:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v18);
    }

    daemon = [(PDEndpointServer *)self daemon];
    operationsManager = [daemon operationsManager];

    if (operationsManager)
    {
      operationsManager2 = [daemon operationsManager];
      v27 = sub_100121714(operationsManager2);

      accountsCopy = v35;
      if (v27)
      {
        v28 = [PDASMPublishAccountOperation alloc];
        database = [(PDEndpointServer *)self database];
        v30 = sub_1000DF7CC(v28, database, v16);
        requestorCopy = v36;
      }

      else
      {
        v32 = [PDPublishAdminRequest alloc];
        database = [(PDEndpointServer *)self database];
        v33 = v32;
        requestorCopy = v36;
        v30 = [(PDPublishAdminRequest *)v33 initWithDatabase:database adminRequests:v16 requestor:v36];
      }

      [(PDPublishAdminRequest *)v30 setAdminRequestAccounts:v35];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000360BC;
      v37[3] = &unk_1002027E8;
      v38 = completionCopy;
      [(PDOperation *)v30 addOnFinishBlock:v37];
      operationsManager3 = [daemon operationsManager];
      sub_1001232E0(operationsManager3, v30);
    }

    else
    {
      CLSInitLog();
      v31 = CLSLogDefault;
      accountsCopy = v35;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Operations manager is nil!", buf, 2u);
      }

      v30 = [NSError cls_createErrorWithCode:100 description:@"Operations manager is nil."];
      (*(completionCopy + 2))(completionCopy, 0, v30);
      requestorCopy = v36;
    }
  }

  else
  {
    daemon = [NSError cls_createErrorWithCode:4 description:@"Not authorized."];
    (*(completionCopy + 2))(completionCopy, 0, daemon);
  }
}

- (void)remote_deleteAdminRequestID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (client && (v9 = client[26], client, (v9 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v11 = objc_opt_class();
    v15 = dCopy;
    v12 = [NSArray arrayWithObjects:&v15 count:1];
    v13 = [database deleteAll:v11 where:@"objectID = ?" bindings:v12];

    completionCopy[2](completionCopy, v13, 0);
  }

  else
  {
    v14 = [NSError cls_createErrorWithCode:4 description:@"Not authorized."];
    (completionCopy)[2](completionCopy, 0, v14);
  }
}

- (void)remote_fetchOrphanedAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (client && (v6 = client[26], client, (v6 & 1) != 0))
  {
    database = [(PDEndpointServer *)self database];
    v8 = sub_10015D1E8(database);

    completionCopy[2](completionCopy, v8, 0);
  }

  else
  {
    v8 = [NSError cls_createErrorWithCode:4 description:@"Not authorized."];
    (completionCopy)[2](completionCopy, 0, v8);
  }
}

- (void)remote_relayRequestWithData:(id)data requestType:(unint64_t)type fileHandle:(id)handle completion:(id)completion
{
  dataCopy = data;
  handleCopy = handle;
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (!client || (v14 = client[26], client, (v14 & 1) == 0))
  {
    v16 = [NSError cls_createErrorWithCode:4 description:@"Not authorized."];
    goto LABEL_11;
  }

  v27 = 0;
  v28 = 0;
  v15 = [handleCopy seekToEndReturningOffset:&v28 error:&v27];
  v16 = v27;
  if ((v15 & 1) == 0)
  {
LABEL_11:
    completionCopy[2](completionCopy, 0, v16);
    goto LABEL_12;
  }

  daemon = [(PDEndpointServer *)self daemon];
  operationsManager = [daemon operationsManager];

  if (operationsManager)
  {
    v19 = [PDRelayRequestOperation alloc];
    database = [(PDEndpointServer *)self database];
    v21 = [(PDRelayRequestOperation *)v19 initWithDatabase:database data:dataCopy fileHandle:handleCopy requestType:type];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100036790;
    v24[3] = &unk_100202810;
    v25 = completionCopy;
    [(PDOperation *)v21 addOnFinishBlock:v24];
    operationsManager2 = [daemon operationsManager];
    sub_1001232E0(operationsManager2, v21);
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
    completionCopy[2](completionCopy, 0, v21);
  }

LABEL_12:
}

- (void)remote_saveInsightEvents:(id)events completion:(id)completion
{
  eventsCopy = events;
  completionCopy = completion;
  client = [(PDEndpointServer *)self client];
  if (!client || (v8 = client[26], client, (v8 & 1) == 0))
  {
    v18 = @"Not authorized.";
    goto LABEL_9;
  }

  database = [(PDEndpointServer *)self database];
  v10 = [PDEndpointRequestOperation isEndpointAvailable:@"uploadEvents" inDatabase:database];

  if ((v10 & 1) == 0)
  {
    v18 = @"Not enabled.";
LABEL_9:
    eventsCopy = [NSError cls_createErrorWithCode:4 description:v18];
    goto LABEL_10;
  }

  database2 = [(PDEndpointServer *)self database];
  v12 = [database2 insertOrUpdateObjects:eventsCopy];

  if (v12)
  {
    daemon = [(PDEndpointServer *)self daemon];
    v14 = [PDUploadEventsOperation alloc];
    database3 = [(PDEndpointServer *)self database];
    v16 = [(PDURLRequestOperation *)v14 initWithDatabase:database3];

    operationsManager = [daemon operationsManager];
    sub_100123A84(operationsManager, v16);

    completionCopy[2](completionCopy, 1, 0);
    goto LABEL_11;
  }

  eventsCopy = [NSError cls_createErrorWithCode:100 format:@"Failed to save events: %@", eventsCopy];
LABEL_10:
  daemon = eventsCopy;
  completionCopy[2](completionCopy, 0, eventsCopy);
LABEL_11:
}

- (id)asmRosterSearchFinishBlock:(id)block query:(id)query asmConfig:(id)config buffer:(id)buffer buffSize:(unint64_t)size nextOffset:(unint64_t)offset
{
  blockCopy = block;
  queryCopy = query;
  configCopy = config;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100036FBC;
  v22[3] = &unk_100202860;
  bufferCopy = buffer;
  v24 = queryCopy;
  v25 = blockCopy;
  v26 = configCopy;
  offsetCopy = offset;
  v15 = configCopy;
  v16 = blockCopy;
  v17 = queryCopy;
  v18 = bufferCopy;
  v19 = objc_retainBlock(v22);
  v20 = objc_retainBlock(v19);

  return v20;
}

- (int64_t)_authorizationStatusActivityWithID:(id)d
{
  dCopy = d;
  database = [(PDEndpointServer *)self database];
  v6 = [database select:objc_opt_class() identity:dCopy];

  if (v6)
  {
    parentObjectID = [v6 parentObjectID];
    v8 = [(PDEndpointServer *)self _authorizationStatusForHandoutAssignedItem:parentObjectID];

    if (v8 == 1)
    {
      v9 = 1;
    }

    else
    {
      parentObjectID2 = [v6 parentObjectID];
      v9 = [(PDEndpointServer *)self _authorizationStatusForContextWithObjectID:parentObjectID2];
    }
  }

  else
  {
    v9 = 2;
  }

  return v9;
}

- (int64_t)_authorizationStatusForContextWithObjectID:(id)d
{
  dCopy = d;
  database = [(PDEndpointServer *)self database];
  v6 = objc_opt_class();
  v11 = dCopy;
  v7 = [NSArray arrayWithObjects:&v11 count:1];

  v8 = [database select:v6 where:@"objectID = ?" bindings:v7];

  v9 = [(PDEndpointServer *)self _authorizationStatusForContext:v8];
  return v9;
}

- (int64_t)_authorizationStatusForContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 2;
    database = [(PDEndpointServer *)self database];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100037594;
    v8[3] = &unk_100202888;
    v10 = &v11;
    v8[4] = self;
    v9 = contextCopy;
    sub_10010BE68(database, v8);

    v6 = v12[3];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

- (int64_t)_authorizationStatusForHandoutAssignedItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    database = [(PDEndpointServer *)self database];
    v6 = [database select:objc_opt_class() identity:itemCopy];

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 2;
    database2 = [(PDEndpointServer *)self database];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000377B8;
    v11[3] = &unk_100202888;
    v13 = &v14;
    v11[4] = self;
    v8 = v6;
    v12 = v8;
    sub_10010BE68(database2, v11);

    v9 = v15[3];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = 2;
  }

  return v9;
}

- (int64_t)_authorizationStatusForObject:(id)object
{
  objectCopy = object;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 2;
  database = [(PDEndpointServer *)self database];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100037988;
  v9[3] = &unk_100202270;
  v6 = objectCopy;
  selfCopy = self;
  v12 = &v13;
  v10 = v6;
  sub_10010BE68(database, v9);
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

- (id)_clientScopedPredicate:(id)predicate forEntityClass:(Class)class
{
  predicateCopy = predicate;
  client = [(PDEndpointServer *)self client];
  v8 = client;
  if (client && client[24] == 1)
  {
  }

  else
  {
    database = [(PDEndpointServer *)self database];
    v10 = [database entityClass:class containsColumnNamed:@"appIdentifier"];

    if (v10)
    {
      client2 = [(PDEndpointServer *)self client];
      v12 = sub_1000B2528(client2);

      v13 = [predicateCopy pd_scopeToKeyPath:@"appIdentifier" value:v12];

      goto LABEL_7;
    }
  }

  v13 = predicateCopy;
LABEL_7:

  return v13;
}

- (NSMutableDictionary)statusReport
{
  client = [(PDEndpointServer *)self client];
  v4 = sub_1000B2560(client);
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

- (BOOL)isCurrentUserStudent:(id *)student
{
  database = [(PDEndpointServer *)self database];
  v6 = sub_10003E1B4();
  v7 = CLSCurrentPersonaUniqueIdentifier();
  LODWORD(v8) = sub_10003FF10(PDAccountInfo, v6, v7, student);
  daemon = [(PDEndpointServer *)self daemon];
  v10 = sub_1000DA28C(daemon, database);

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