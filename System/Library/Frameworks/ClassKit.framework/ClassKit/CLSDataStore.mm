@interface CLSDataStore
+ (BOOL)isDashboardApp;
+ (BOOL)isPDTool;
+ (BOOL)isPrivateSearchAPIEnabled;
+ (BOOL)isSearchAPIEnabled;
+ (BOOL)isUIClient;
+ (CLSCurrentUser)currentUser;
+ (CLSDataStore)shared;
+ (id)handoutGraphFromHandout:(id)handout;
+ (id)handoutSubgraphContainingAsset:(id)asset;
+ (id)newDatastore;
- (BOOL)isAllowedToInsertObject:(id)object;
- (BOOL)isAppClient;
- (BOOL)isDashboardAPIEnabled;
- (BOOL)isPrivateSearchAPIEnabled;
- (BOOL)isRemovedObject:(id)object;
- (BOOL)isSearchAPIEnabled;
- (BOOL)isUIClient;
- (CLSActivity)runningActivity;
- (CLSAuthTree)authTree;
- (CLSAuthTree)handoutAssignedItemsAuthTree;
- (CLSContext)activeContext;
- (CLSContext)mainAppContext;
- (CLSCurrentUser)cachedCurrentUser;
- (CLSDataStore)init;
- (CLSDataStore)initWithEndpoint:(id)endpoint;
- (id)_addObject:(id)object;
- (id)_arrangeObjectsIfNeeded:(id)needed;
- (id)_filterObjectsBeingSavedFromObjects:(id)objects;
- (id)_modifiedObjects;
- (id)_validateObjects:(id)objects;
- (id)addObject:(id)object;
- (id)allContexts;
- (id)appIdentifier;
- (id)cachedMainAppContext;
- (id)currentUser;
- (id)dataServer:(id)server;
- (id)delegate;
- (id)objectWithObjectID:(id)d;
- (id)orphanedAssets:(id *)assets;
- (id)runningActivities;
- (id)serverInternalState:(unint64_t)state error:(id *)error;
- (id)syncDataServer:(id)server;
- (id)syncFetchContextsForContextIDs:(id)ds;
- (id)syncFetchProgressReportingCapabilitiesForContextID:(id)d;
- (id)syncFetchThumbnailBlobForContext:(id)context;
- (id)syncUtilityServer:(id)server;
- (id)uploadAsset:(id)asset;
- (id)utilityServer:(id)server;
- (unint64_t)serverSyncStatus;
- (void)_classesForCurrentUserWithRole:(unint64_t)role completion:(id)completion;
- (void)_createMainAppContext;
- (void)_fetchHandoutAttachmentForDocumentURL:(id)l completion:(id)completion;
- (void)_generatePartialTimeIntervalsForRunningActivities;
- (void)_reconnect;
- (void)_reenableObservers;
- (void)_refreshMainAppContext;
- (void)_registerForAccountChangedDarwinNotification;
- (void)_save;
- (void)_saveObjects:(id)objects completion:(id)completion;
- (void)_validateAndCreateHandoutAssignedItemFor:(id)for completion:(id)completion;
- (void)addRunningActivitiesObject:(id)object;
- (void)addSurveyAnswerItem:(id)item;
- (void)adminRequestorForEmail:(id)email completion:(id)completion;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationWillResignActive:(id)active;
- (void)awaitExecuteQuery:(id)query completion:(id)completion;
- (void)canSearchRostersWithCompletion:(id)completion;
- (void)childrenOfAdminRequestID:(id)d completion:(id)completion;
- (void)classesForPersonID:(id)d role:(unint64_t)role completion:(id)completion;
- (void)cloudKitThumbnailUrlSuitableForOpeningForAsset:(id)asset completion:(id)completion;
- (void)cloudKitUrlSuitableForOpeningForAsset:(id)asset completion:(id)completion;
- (void)cloudKitUrlSuitableForStreamingAsset:(id)asset completion:(id)completion;
- (void)collaborationStatesForObjectWithID:(id)d classID:(id)iD forOwnersWithRole:(unint64_t)role completion:(id)completion;
- (void)collaborationStatesForObjectWithID:(id)d ownerPersonID:(id)iD completion:(id)completion;
- (void)completeAllAssignedActivitiesMatching:(NSArray *)contextPath;
- (void)contextsMatchingIdentifier:(id)identifier completion:(id)completion;
- (void)contextsMatchingIdentifierPath:(NSArray *)identifierPath completion:(void *)completion;
- (void)contextsMatchingIdentifierPath:(id)path parentContext:(id)context completion:(id)completion;
- (void)contextsMatchingPredicate:(NSPredicate *)predicate completion:(void *)completion;
- (void)createShareIfNeededForURL:(id)l completion:(id)completion;
- (void)currentUserIsStudent:(id)student;
- (void)currentUserWithCompletion:(id)completion;
- (void)currentUserWithServer:(id)server completion:(id)completion;
- (void)dealloc;
- (void)deleteAdminRequestID:(id)d completion:(id)completion;
- (void)deleteArchivedCollectionObjects:(id)objects withCompletion:(id)completion;
- (void)deleteBackingStoreForAsset:(id)asset completion:(id)completion;
- (void)deregisterDataObserver:(id)observer;
- (void)developerModeChanged:(id)changed;
- (void)faultMainAppContext;
- (void)fetchActivityForURL:(NSURL *)url completion:(void *)completion;
- (void)fetchAndCompleteAllAssignedActivitiesForContextPath:(id)path withCompletion:(id)completion;
- (void)fetchAppBasedAssignmentUsage:(id)usage completion:(id)completion;
- (void)fetchAssignedItemFor:(id)for completion:(id)completion;
- (void)fetchCollectionItemsWithCompletion:(id)completion;
- (void)fetchCollectionsWithCompletion:(id)completion;
- (void)fetchReportsWithPredicate:(id)predicate completion:(id)completion;
- (void)fetchSurveyAnswers:(id)answers responderIDs:(id)ds completion:(id)completion;
- (void)fetchTransparencyMessageInfoForAttachmentID:(id)d withCompletion:(id)completion;
- (void)fetchTransparencyMessageInfoWithCompletion:(id)completion;
- (void)getCurrentUseriCloudQuotaInfoWithCompletion:(id)completion;
- (void)handoutAttachmentForDocumentURL:(id)l completion:(id)completion;
- (void)instructedClassesWithCompletion:(id)completion;
- (void)markObjectAsDeleted:(id)deleted;
- (void)membersOfGroupWithIdentifier:(id)identifier completion:(id)completion;
- (void)objectsMatching:(id)matching completion:(id)completion;
- (void)personsInClassWithClassID:(id)d role:(unint64_t)role completion:(id)completion;
- (void)presentTransparencyMessageForHandoutAssignedItemInfo:(id)info;
- (void)presentTransparencyMessageInfo:(id)info;
- (void)pruneDeletedObjectsWithCompletion:(id)completion;
- (void)publishAdminRequests:(id)requests withRequestor:(id)requestor adminRequestAccounts:(id)accounts completion:(id)completion;
- (void)publishAnswersForSurvey:(id)survey completion:(id)completion;
- (void)publishCollaborationStateChanges:(id)changes completion:(id)completion;
- (void)publishHandout:(id)handout completion:(id)completion;
- (void)refreshAuthTreeForAttachment:(id)attachment withCompletion:(id)completion;
- (void)refreshAuthTreeWithCompletion:(id)completion;
- (void)refreshMainAppContext;
- (void)registerDataObserver:(id)observer;
- (void)relayRequestWithData:(id)data requestType:(unint64_t)type completion:(id)completion;
- (void)removeActivityWithObjectID:(id)d;
- (void)removeAsset:(id)asset;
- (void)removeClass:(id)class completion:(id)completion;
- (void)removeCollection:(id)collection;
- (void)removeContextWithObjectID:(id)d;
- (void)removeObject:(id)object;
- (void)removeObjectWithObjectID:(id)d class:(Class)class;
- (void)removeRunningActivitiesObject:(id)object;
- (void)removeSurveyAnswerItem:(id)item;
- (void)renewCredentialsWithCompletion:(id)completion;
- (void)repairHandoutAttachments:(id)attachments completion:(id)completion;
- (void)reset;
- (void)saveClass:(id)class completion:(id)completion;
- (void)saveInsightEvents:(id)events completion:(id)completion;
- (void)saveObjects:(id)objects completion:(id)completion;
- (void)saveWithCompletion:(void *)completion;
- (void)setCachedCurrentUser:(id)user;
- (void)shouldPerformSearchAPIOperation:(id)operation completion:(id)completion;
- (void)shouldSyncTeacherBrowsedContextsWithCompletion:(id)completion;
- (void)startActivity:(id)activity activityType:(int)type bundleID:(id)d completion:(id)completion;
- (void)startActivityFailed:(id)failed activityType:(int)type completion:(id)completion;
- (void)studentActivityForAttachmentsWithIDs:(id)ds completion:(id)completion;
- (void)submittableURLByCurrentUser:(id)user completion:(id)completion;
- (void)syncDeleteProgressReportingCapabilitiesForContextID:(id)d;
- (void)syncDeleteThumbnailBlobForContext:(id)context;
- (void)syncFetchWithCompletion:(id)completion;
- (void)syncServerConfigWithCompletion:(id)completion;
- (void)triggerProgressTransparencyMessageForAttachmentID:(id)d;
- (void)triggerUserNotificationHandoutAssigned:(id)assigned completion:(id)completion;
- (void)triggerUserNotificationHandoutDueSoonWithReferenceDate:(id)date completion:(id)completion;
- (void)triggerUserNotificationHandoutPastDueSummaryWithReferenceDate:(id)date completion:(id)completion;
- (void)triggerUserNotificationReviewDueHandoutsWithReferenceDate:(id)date completion:(id)completion;
- (void)triggerUserNotificationRevisedSubmissionWithAttachmentID:(id)d studentName:(id)name completion:(id)completion;
- (void)triggerUserNotificationRevisionRequested:(id)requested completion:(id)completion;
- (void)urlSuitableForOpeningForExpectedURL:(id)l itemID:(id)d ownerName:(id)name zoneName:(id)zoneName completion:(id)completion;
@end

@implementation CLSDataStore

- (id)runningActivities
{
  objc_msgSend_lock(self, a2, v2);
  v6 = objc_msgSend_copy(self->_runningActivities, v4, v5);
  objc_msgSend_unlock(self, v7, v8);
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  return v9;
}

+ (CLSDataStore)shared
{
  if (CurrentProcessNameMatches(@"progressd"))
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v3 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_236F71000, v3, OS_LOG_TYPE_FAULT, "ERROR: CLSDataStore is not available to progressd", buf, 2u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FADDB0;
  block[3] = &unk_278A17960;
  block[4] = self;
  if (qword_280B2A3F8 != -1)
  {
    dispatch_once(&qword_280B2A3F8, block);
  }

  v4 = qword_280B2A3F0;

  return v4;
}

+ (id)newDatastore
{
  v2 = [self alloc];

  return objc_msgSend_initWithEndpoint_(v2, v3, 0);
}

+ (BOOL)isPDTool
{
  if (qword_280B2A400 != -1)
  {
    dispatch_once(&qword_280B2A400, &unk_284A07908);
  }

  return byte_280B2A3E8;
}

- (BOOL)isDashboardAPIEnabled
{
  v2 = objc_opt_class();

  return objc_msgSend_isDashboardApp(v2, v3, v4);
}

- (BOOL)isSearchAPIEnabled
{
  v2 = objc_opt_class();

  return objc_msgSend_isSearchAPIEnabled(v2, v3, v4);
}

- (BOOL)isPrivateSearchAPIEnabled
{
  v2 = objc_opt_class();

  return objc_msgSend_isPrivateSearchAPIEnabled(v2, v3, v4);
}

- (BOOL)isUIClient
{
  v2 = objc_opt_class();

  return objc_msgSend_isUIClient(v2, v3, v4);
}

- (BOOL)isAllowedToInsertObject:(id)object
{
  objectCopy = object;
  v5 = CLSDashboardClasses();
  v6 = objc_opt_class();
  v8 = objc_msgSend_containsObject_(v5, v7, v6);

  v9 = CLSSearchClasses();
  v10 = objc_opt_class();

  v12 = objc_msgSend_containsObject_(v9, v11, v10);
  return (objc_msgSend_isDashboardAPIEnabled(self, v13, v14) & 1) != 0 || !v8 || (objc_msgSend_isSearchAPIEnabled(self, v15, v16) & 1) != 0 || v12 != 1;
}

- (CLSDataStore)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v8, @"The method [%@ %@] is not available.", v6, v7);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v3, v10, v4, v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (CLSDataStore)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v83.receiver = self;
  v83.super_class = CLSDataStore;
  v5 = [(CLSDataStore *)&v83 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock = 0;
    v7 = objc_opt_new();
    deletedObjectsByID = v6->_deletedObjectsByID;
    v6->_deletedObjectsByID = v7;

    v9 = objc_opt_new();
    objectGenerationsByID = v6->_objectGenerationsByID;
    v6->_objectGenerationsByID = v9;

    v11 = objc_opt_new();
    graph = v6->_graph;
    v6->_graph = v11;

    v15 = objc_msgSend_date(MEMORY[0x277CBEAA8], v13, v14);
    lastPruneDate = v6->_lastPruneDate;
    v6->_lastPruneDate = v15;

    v19 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v17, v18);
    objc_msgSend_addObserver_selector_name_object_(v19, v20, v6, sel_applicationWillResignActive_, @"UIApplicationWillResignActiveNotification", 0);
    objc_msgSend_addObserver_selector_name_object_(v19, v21, v6, sel_applicationDidBecomeActive_, @"UIApplicationDidBecomeActiveNotification", 0);
    objc_msgSend_addObserver_selector_name_object_(v19, v22, v6, sel_developerModeChanged_, @"CLSDeveloperModeDidChangeNotification", 0);
    objc_msgSend_addObserver_selector_name_object_(v19, v23, v6, sel_reset, @"CLSSignificantBackingStoreChangeNotification", 0);
    v24 = objc_opt_new();
    dataObservers = v6->_dataObservers;
    v6->_dataObservers = v24;

    v26 = objc_opt_class();
    v29 = objc_msgSend_endpointClass(v26, v27, v28);
    v31 = objc_msgSend_instanceForEndpoint_(v29, v30, endpointCopy);
    endpointConnection = v6->_endpointConnection;
    v6->_endpointConnection = v31;

    objc_initWeak(&location, v6);
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = sub_236FAE5A8;
    v80[3] = &unk_278A184B8;
    objc_copyWeak(&v81, &location);
    objc_msgSend_setOnInterupt_(v6->_endpointConnection, v33, v80);
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = sub_236FAE5EC;
    v78[3] = &unk_278A184B8;
    objc_copyWeak(&v79, &location);
    objc_msgSend_setOnConnect_(v6->_endpointConnection, v34, v78);
    if (objc_msgSend_isDashboardAPIEnabled(v6, v35, v36))
    {
      objc_msgSend__registerForAccountChangedDarwinNotification(v6, v37, v38);
    }

    v39 = objc_opt_new();
    pendingSaves = v6->_pendingSaves;
    v6->_pendingSaves = v39;

    v41 = objc_autoreleasePoolPush();
    v44 = objc_msgSend_bundleRecordForCurrentProcess(MEMORY[0x277CC1E90], v42, v43);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v44;
      v50 = objc_msgSend_containingBundleRecord(v47, v48, v49);
      v53 = objc_msgSend_bundleIdentifier(v50, v51, v52);
      appBundleIdentifier = v6->_appBundleIdentifier;
      v6->_appBundleIdentifier = v53;

      v57 = objc_msgSend_localizedName(v50, v55, v56);
      appName = v6->_appName;
      v6->_appName = v57;

      if (!objc_msgSend_length(v6->_appName, v59, v60))
      {
        objc_storeStrong(&v6->_appName, v6->_appBundleIdentifier);
      }
    }

    else
    {
      v61 = objc_msgSend_bundleIdentifier(v44, v45, v46);
      v62 = v6->_appBundleIdentifier;
      v6->_appBundleIdentifier = v61;

      v65 = objc_msgSend_localizedName(v44, v63, v64);
      v47 = v6->_appName;
      v6->_appName = v65;
    }

    objc_autoreleasePoolPop(v41);
    if (!objc_msgSend_length(v6->_appBundleIdentifier, v66, v67))
    {
      v70 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v68, v69);
      v73 = objc_msgSend_UUIDString(v70, v71, v72);
      v75 = objc_msgSend_stringByAppendingString_(@"com.apple.", v74, v73);
      v76 = v6->_appBundleIdentifier;
      v6->_appBundleIdentifier = v75;
    }

    if (!objc_msgSend_length(v6->_appName, v68, v69))
    {
      objc_storeStrong(&v6->_appName, v6->_appBundleIdentifier);
    }

    objc_destroyWeak(&v79);
    objc_destroyWeak(&v81);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  v8 = objc_msgSend_defaultCenter(CLSDarwinNotificationCenter, v6, v7);
  objc_msgSend_removeObserver_notificationName_(v8, v9, self, @"com.apple.progressd.accountChanged");

  v10.receiver = self;
  v10.super_class = CLSDataStore;
  [(CLSDataStore *)&v10 dealloc];
}

+ (BOOL)isDashboardApp
{
  if (qword_280B2A408 != -1)
  {
    dispatch_once(&qword_280B2A408, &unk_284A07DA8);
  }

  return byte_280B2A3E9;
}

+ (BOOL)isPrivateSearchAPIEnabled
{
  if (qword_280B2A410 != -1)
  {
    dispatch_once(&qword_280B2A410, &unk_284A07DC8);
  }

  return byte_280B2A3EA;
}

+ (BOOL)isSearchAPIEnabled
{
  if (qword_280B2A418 != -1)
  {
    dispatch_once(&qword_280B2A418, &unk_284A07DE8);
  }

  return byte_280B2A3EB;
}

+ (BOOL)isUIClient
{
  if (qword_280B2A420 != -1)
  {
    dispatch_once(&qword_280B2A420, &unk_284A07E08);
  }

  return byte_280B2A3EC;
}

- (void)_registerForAccountChangedDarwinNotification
{
  objc_initWeak(&location, self);
  v5 = objc_msgSend_defaultCenter(CLSDarwinNotificationCenter, v3, v4);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_236FAEC44;
  v7[3] = &unk_278A18500;
  objc_copyWeak(&v8, &location);
  objc_msgSend_addObserver_notificationName_block_(v5, v6, self, @"com.apple.progressd.accountChanged", v7);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_reenableObservers
{
  v27 = *MEMORY[0x277D85DE8];
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_dataObservers;
  v5 = objc_opt_new();
  dataObservers = self->_dataObservers;
  self->_dataObservers = v5;

  objc_msgSend_unlock(self, v7, v8);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = objc_msgSend_objectEnumerator(v4, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v22, v26, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        if ((objc_msgSend_isInvalidated(v19, v14, v15) & 1) == 0)
        {
          objc_msgSend_setDataStore_(v19, v14, 0);
          objc_msgSend_registerDataObserver_(self, v20, v19);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v22, v26, 16);
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_reconnect
{
  objc_msgSend_connect(self->_endpointConnection, a2, v2);
  objc_msgSend_refreshMainAppContext(self, v4, v5);
  v6 = objc_opt_class();
  if (objc_msgSend_isDashboardApp(v6, v7, v8))
  {

    objc_msgSend_currentUserWithCompletion_(self, v9, &unk_284A07E48);
  }
}

- (CLSCurrentUser)cachedCurrentUser
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_cachedCurrentUser;
  objc_msgSend_unlock(self, v5, v6);

  return v4;
}

- (void)setCachedCurrentUser:(id)user
{
  userCopy = user;
  objc_msgSend_lock(self, v5, v6);
  cachedCurrentUser = self->_cachedCurrentUser;
  self->_cachedCurrentUser = userCopy;

  objc_msgSend_unlock(self, v8, v9);
}

- (void)awaitExecuteQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &unk_284A07E88);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_236FAF658;
  v19[3] = &unk_278A18550;
  v20 = completionCopy;
  v21 = v8;
  v9 = v8;
  v10 = completionCopy;
  objc_msgSend_setCompletion_(queryCopy, v11, v19);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_236FAF6A4;
  v17[3] = &unk_278A18528;
  v18 = queryCopy;
  v12 = queryCopy;
  v14 = objc_msgSend_syncDataServer_(self, v13, v17);
  objc_msgSend_dataServer_executeQuery_issueServerRequest_(self, v15, v14, v12, 1);
  v16 = dispatch_time(0, 60000000000);
  dispatch_block_wait(v9, v16);
}

- (void)fetchCollectionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FAF7B8;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_dataServer_(self, v6, v9);
  objc_msgSend_remote_fetchCollectionsWithCompletion_(v7, v8, v5);
}

- (void)fetchCollectionItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FAF878;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_dataServer_(self, v6, v9);
  objc_msgSend_remote_fetchCollectionItemsWithCompletion_(v7, v8, v5);
}

- (void)deleteArchivedCollectionObjects:(id)objects withCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FAF954;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v7 = completionCopy;
  objectsCopy = objects;
  v10 = objc_msgSend_dataServer_(self, v9, v12);
  objc_msgSend_remote_deleteCollectionRelatedObjectsWithCompletion_completion_(v10, v11, objectsCopy, v7);
}

- (id)cachedMainAppContext
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_mainAppContext;
  objc_msgSend_unlock(self, v5, v6);

  return v4;
}

- (CLSContext)mainAppContext
{
  v4 = objc_msgSend_cachedMainAppContext(self, a2, v2);
  if (!v4)
  {
    objc_msgSend__createMainAppContext(self, v5, v6);
    v4 = objc_msgSend_cachedMainAppContext(self, v7, v8);
  }

  v9 = v4;

  return v9;
}

- (void)_createMainAppContext
{
  v26[1] = *MEMORY[0x277D85DE8];
  objc_msgSend_lock(self, a2, v2);
  v6 = objc_msgSend_appIdentifier(self, v4, v5);
  v7 = self->_appName;
  v8 = [CLSContext alloc];
  v10 = objc_msgSend_initWithInternalType_identifier_title_(v8, v9, 1, v6, v7);
  objc_msgSend_setTemporary_(v10, v11, 0);
  isClassKitEnabled = objc_msgSend_isClassKitEnabled(CLSEndpointConnection, v12, v13);
  v26[0] = v6;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v26, 1);
  objc_msgSend_setIdentifierPathAndGenerateObjectID_(v10, v17, v16);

  v19 = objc_msgSend_addObject_(self, v18, v10);
  mainAppContext = self->_mainAppContext;
  self->_mainAppContext = v19;

  objc_msgSend_unlock(self, v21, v22);
  if (isClassKitEnabled)
  {
    objc_msgSend__refreshMainAppContext(self, v23, v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)refreshMainAppContext
{
  objc_msgSend_lock(self, a2, v2);
  if (self->_mainAppContext)
  {
    objc_msgSend__refreshMainAppContext(self, v4, v5);
  }

  objc_msgSend_unlock(self, v4, v5);
}

- (void)faultMainAppContext
{
  objc_msgSend_lock(self, a2, v2);
  if (self->_mainAppContext || (v6 = objc_opt_class(), !objc_msgSend_isDashboardApp(v6, v7, v8)) || (v9 = objc_opt_class(), (objc_msgSend_isPDTool(v9, v10, v11) & 1) != 0))
  {
    objc_msgSend_unlock(self, v4, v5);
    v12 = [CLSFaultProcessor alloc];
    v14 = objc_msgSend_initWithDelegate_(v12, v13, self);
    v17 = objc_msgSend_mainAppContext(self, v15, v16);
    objc_msgSend_faultObject_(v14, v18, v17);

    if (v14)
    {
      objc_msgSend_waitUntilDone_(v14, v19, v20, 60.0);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_236FAFCBC;
      v22[3] = &unk_278A181E8;
      v22[4] = self;
      objc_msgSend_enumerate_(v14, v21, v22);
    }
  }

  else
  {

    objc_msgSend_unlock(self, v4, v5);
  }
}

- (void)_refreshMainAppContext
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_mainAppContext;
  objc_msgSend_unlock(self, v5, v6);
  v9 = objc_msgSend_endpointConnection(self, v7, v8);
  v11 = objc_msgSend_dataServer_(v9, v10, &unk_284A07EA8);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_236FAFDE0;
  v14[3] = &unk_278A18578;
  v15 = v4;
  v16 = &unk_284A07EA8;
  v12 = v4;
  objc_msgSend_remote_mainAppContextWithCompletion_(v11, v13, v14);
}

- (id)appIdentifier
{
  v4 = objc_msgSend_endpointConnection(self, a2, v2);
  v7 = objc_msgSend_overrideBundleIdentifier(v4, v5, v6);

  if (!objc_msgSend_length(v7, v8, v9))
  {
    v10 = self->_appBundleIdentifier;

    v7 = v10;
  }

  return v7;
}

- (id)allContexts
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_236FB0028;
  v20 = sub_236FB0038;
  v21 = 0;
  v4 = objc_msgSend_appIdentifier(self, a2, v2);
  v5 = objc_opt_class();
  v7 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v6, @"appIdentifier = %@", v4);
  v15 = 0;
  v9 = objc_msgSend_queryWithObjectType_predicate_error_(CLSQuery, v8, v5, v7, &v15);
  v10 = v15;

  if (v9)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_236FB0040;
    v14[3] = &unk_278A185A0;
    v14[4] = &v16;
    objc_msgSend_awaitExecuteQuery_completion_(self, v11, v9, v14);
  }

  v12 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v12;
}

- (void)contextsMatchingIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (objc_msgSend_length(identifierCopy, v8, v9))
  {
    v11 = objc_opt_class();
    v13 = objc_msgSend_predicateForObjectsWithIdentifier_(CLSQuery, v12, identifierCopy);
    v20 = 0;
    v15 = objc_msgSend_queryWithObjectType_predicate_error_(CLSQuery, v14, v11, v13, &v20);
    v16 = v20;

    if (v15)
    {
      objc_msgSend_setCompletion_(v15, v17, completionCopy);
      objc_msgSend_executeQuery_(self, v18, v15);
    }

    else
    {
      completionCopy[2](completionCopy, 0, v16);
    }
  }

  else
  {
    v19 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v10, 2, @"No identifier specified.");
    completionCopy[2](completionCopy, 0, v19);
  }
}

- (void)contextsMatchingPredicate:(NSPredicate *)predicate completion:(void *)completion
{
  v6 = completion;
  v7 = predicate;
  v8 = objc_opt_class();
  v14 = 0;
  v10 = objc_msgSend_queryWithObjectType_predicate_error_(CLSQuery, v9, v8, v7, &v14);

  v12 = v14;
  if (v10)
  {
    objc_msgSend_setCompletion_(v10, v11, v6);

    objc_msgSend_executeQuery_(self, v13, v10);
  }

  else
  {
    (*(v6 + 2))(v6, 0, v12);
  }
}

- (id)syncFetchContextsForContextIDs:(id)ds
{
  dsCopy = ds;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_236FB0028;
  v18 = sub_236FB0038;
  v19 = 0;
  v6 = objc_msgSend_syncDataServer_(self, v5, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_236FB03B0;
  v11[3] = &unk_278A185C8;
  v7 = dsCopy;
  v12 = v7;
  v13 = &v14;
  objc_msgSend_remote_fetchContextsForContextIDs_completion_(v6, v8, v7, v11);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)syncFetchThumbnailBlobForContext:(id)context
{
  contextCopy = context;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_236FB0028;
  v18 = sub_236FB0038;
  v19 = 0;
  v6 = objc_msgSend_syncDataServer_(self, v5, 0);
  v9 = objc_msgSend_objectID(contextCopy, v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_236FB0618;
  v13[3] = &unk_278A185F0;
  v13[4] = &v14;
  objc_msgSend_remote_fetchThumbnailBlobForContextID_completion_(v6, v10, v9, v13);

  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (void)syncDeleteThumbnailBlobForContext:(id)context
{
  contextCopy = context;
  v6 = objc_msgSend_syncDataServer_(self, v5, 0);
  v9 = objc_msgSend_objectID(contextCopy, v7, v8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FB06F8;
  v12[3] = &unk_278A18618;
  v13 = contextCopy;
  v10 = contextCopy;
  objc_msgSend_remote_deleteThumbnailBlobForContextID_completion_(v6, v11, v9, v12);
}

- (id)syncFetchProgressReportingCapabilitiesForContextID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_236FB0028;
  v15 = sub_236FB0038;
  v16 = 0;
  v6 = objc_msgSend_syncDataServer_(self, v5, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_236FB0948;
  v10[3] = &unk_278A185A0;
  v10[4] = &v11;
  objc_msgSend_remote_fetchProgressReportingCapabilitiesForContextID_completion_(v6, v7, dCopy, v10);
  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)syncDeleteProgressReportingCapabilitiesForContextID:(id)d
{
  dCopy = d;
  v6 = objc_msgSend_syncDataServer_(self, v5, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FB0A0C;
  v9[3] = &unk_278A18618;
  v10 = dCopy;
  v7 = dCopy;
  objc_msgSend_remote_deleteProgressReportingCapabilitiesForContextID_completion_(v6, v8, v7, v9);
}

- (unint64_t)serverSyncStatus
{
  v2 = objc_msgSend_syncDataServer_(self, a2, 0);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_236FB0BD8;
  v6[3] = &unk_278A17C08;
  v6[4] = &v7;
  objc_msgSend_remote_getServerSyncStatusWithCompletion_(v2, v3, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)serverInternalState:(unint64_t)state error:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_236FB0028;
  v24 = sub_236FB0038;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (state)
  {
    v8 = objc_msgSend_syncDataServer_(self, v7, 0);
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_236FB0028;
    v18 = sub_236FB0038;
    v19 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_236FB0ED0;
    v13[3] = &unk_278A18640;
    v13[4] = &v14;
    v13[5] = &v20;
    v13[6] = state;
    objc_msgSend_remote_getServerInternalStateInfoWithCompletion_(v8, v9, v13);
    if (v15[5])
    {
      objc_msgSend_cls_assignError_fromError_(MEMORY[0x277CCA9B8], v10, error);
      v11 = 0;
    }

    else
    {
      v11 = v21[5];
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    objc_msgSend_cls_assignError_code_format_(MEMORY[0x277CCA9B8], v7, error, 2, @"options cannot equal CLSServerInternalStateInfoNone");
    v11 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v11;
}

- (void)completeAllAssignedActivitiesMatching:(NSArray *)contextPath
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = contextPath;
  v7 = v4;
  if (v4 && objc_msgSend_count(v4, v5, v6))
  {
    if (objc_msgSend_isAppClient(self, v8, v9) & 1) != 0 || (v12 = objc_opt_class(), (objc_msgSend_isPDTool(v12, v13, v14)))
    {
      objc_msgSend_lock(self, v10, v11);
      self->_saveInProgress = 1;
      objc_msgSend_unlock(self, v15, v16);
      objc_initWeak(location, self);
      v17 = v7;
      v20 = objc_msgSend_mainAppContext(self, v18, v19);
      v23 = objc_msgSend_identifier(v20, v21, v22);

      if (v23)
      {
        v26 = objc_msgSend_firstObject(v17, v24, v25);
        if (objc_msgSend_isEqualToString_(v26, v27, v23))
        {
          v28 = v17;
        }

        else
        {
          v37 = objc_alloc(MEMORY[0x277CBEB18]);
          v28 = objc_msgSend_initWithArray_(v37, v38, v17);
          objc_msgSend_insertObject_atIndex_(v28, v39, v23, 0);
        }
      }

      else
      {
        v28 = v17;
      }

      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_236FB1478;
      v42[3] = &unk_278A18668;
      objc_copyWeak(&v43, location);
      objc_msgSend_fetchAndCompleteAllAssignedActivitiesForContextPath_withCompletion_(self, v40, v28, v42);
      objc_destroyWeak(&v43);

      objc_destroyWeak(location);
    }

    else
    {
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v30 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
      {
        v31 = v30;
        v32 = objc_opt_class();
        LODWORD(location[0]) = 67109376;
        HIDWORD(location[0]) = objc_msgSend_isPDTool(v32, v33, v34);
        LOWORD(location[1]) = 1024;
        *(&location[1] + 2) = objc_msgSend_isAppClient(self, v35, v36);
        _os_log_debug_impl(&dword_236F71000, v31, OS_LOG_TYPE_DEBUG, "CLSDataStore completeAllAssignedActivitiesMatching isPDTool: %d, is an app or app extension client: %d", location, 0xEu);
      }
    }
  }

  else
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v29 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v7;
      _os_log_debug_impl(&dword_236F71000, v29, OS_LOG_TYPE_DEBUG, "CLSDataStore completeAllAssignedActivitiesMatching must provide a contextPath: %@", location, 0xCu);
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)fetchAndCompleteAllAssignedActivitiesForContextPath:(id)path withCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  completionCopy = completion;
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v8 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = pathCopy;
    _os_log_impl(&dword_236F71000, v8, OS_LOG_TYPE_DEFAULT, "CLSDataStore fetchAllAssignedActivitiesForContextPath called for contextpath: %@", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_236FB1780;
  v14[3] = &unk_278A17BC0;
  v15 = completionCopy;
  v9 = completionCopy;
  v11 = objc_msgSend_dataServer_(self, v10, v14);
  objc_msgSend_remote_fetchAndCompleteActiveAssignedActivitiesForContextPath_withCompletion_(v11, v12, pathCopy, v9);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)fetchActivityForURL:(NSURL *)url completion:(void *)completion
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = url;
  v9 = completion;
  if (!v6)
  {
    objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v7, 2, @"URL not valid.");
    v16 = LABEL_11:;
    v9[2](v9, 0, v16);

    goto LABEL_12;
  }

  if ((objc_msgSend_isAppClient(self, v7, v8) & 1) == 0)
  {
    v10 = objc_opt_class();
    if ((objc_msgSend_isPDTool(v10, v11, v12) & 1) == 0)
    {
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v14 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
      {
        v18 = v14;
        *buf = 67109120;
        isAppClient = objc_msgSend_isAppClient(self, v19, v20);
        _os_log_debug_impl(&dword_236F71000, v18, OS_LOG_TYPE_DEBUG, "CLSDataStore fetchAssignedItemFor: is not an app or app extension client: %d", buf, 8u);
      }

      objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v15, 4, @"Not Authorized");
      goto LABEL_11;
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_236FB197C;
  v21[3] = &unk_278A186B8;
  v21[4] = self;
  v22 = v9;
  objc_msgSend__fetchHandoutAttachmentForDocumentURL_completion_(self, v13, v6, v21);

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_fetchHandoutAttachmentForDocumentURL:(id)l completion:(id)completion
{
  location[3] = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v8 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = lCopy;
    _os_log_debug_impl(&dword_236F71000, v8, OS_LOG_TYPE_DEBUG, "CLSDataStore _fetchHandoutAttachmentForDocumentURL called for url: %@", location, 0xCu);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_236FB1E30;
  v18[3] = &unk_278A17BC0;
  v9 = completionCopy;
  v19 = v9;
  v11 = objc_msgSend_dataServer_(self, v10, v18);
  objc_initWeak(location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FB1E48;
  v15[3] = &unk_278A18730;
  v12 = v9;
  v16 = v12;
  objc_copyWeak(&v17, location);
  objc_msgSend_remote_fetchHandoutAttachmentForDocumentURL_withCompletion_(v11, v13, lCopy, v15);
  objc_destroyWeak(&v17);

  objc_destroyWeak(location);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)saveWithCompletion:(void *)completion
{
  v4 = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FB24AC;
  v15[3] = &unk_278A17BC0;
  v5 = v4;
  v16 = v5;
  v6 = MEMORY[0x2383C3E80](v15);
  objc_initWeak(&location, self);
  v7 = clsNotificationQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FB2588;
  block[3] = &unk_278A18758;
  objc_copyWeak(&v13, &location);
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_save
{
  objc_msgSend_lock(self, a2, v2);
  if (self->_saveInProgress || !objc_msgSend_count(self->_pendingSaves, v4, v5))
  {

    objc_msgSend_unlock(self, v4, v5);
  }

  else
  {
    self->_saveInProgress = 1;
    v6 = objc_msgSend_firstObject(self->_pendingSaves, v4, v5);
    objc_msgSend_removeObjectAtIndex_(self->_pendingSaves, v7, 0);
    objc_initWeak(&location, self);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_236FB28BC;
    v31[3] = &unk_278A18780;
    v8 = v6;
    v32 = v8;
    objc_copyWeak(&v33, &location);
    v9 = MEMORY[0x2383C3E80](v31);
    v12 = objc_msgSend__modifiedObjects(self, v10, v11);
    v16 = objc_msgSend__validateObjects_(self, v13, v12);
    if (v16)
    {
      objc_msgSend_unlock(self, v14, v15);
      (v9)[2](v9, v16);
    }

    else
    {
      v17 = objc_msgSend_objectEnumerator(self->_deletedObjectsByID, v14, v15);
      v20 = objc_msgSend_allObjects(v17, v18, v19);

      objc_msgSend_addObjectsFromArray_(v12, v21, v20);
      v23 = objc_msgSend__filterObjectsBeingSavedFromObjects_(self, v22, v12);

      v12 = objc_msgSend__arrangeObjectsIfNeeded_(self, v24, v23);

      if (objc_msgSend_count(v12, v25, v26))
      {
        objc_msgSend_saveObjects_completion_(self, v27, v12, v9);
        objc_msgSend_unlock(self, v29, v30);
      }

      else
      {
        objc_msgSend_unlock(self, v27, v28);
        v9[2](v9, 0);
      }
    }

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }
}

- (CLSAuthTree)authTree
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_authTree;
  objc_msgSend_unlock(self, v5, v6);

  return v4;
}

- (CLSAuthTree)handoutAssignedItemsAuthTree
{
  objc_msgSend_lock(self, a2, v2);
  v4 = self->_handoutAssignedItemsAuthTree;
  objc_msgSend_unlock(self, v5, v6);

  return v4;
}

- (void)refreshAuthTreeWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6 = objc_msgSend_dataServer_(self, v5, completionCopy);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FB2B30;
  v9[3] = &unk_278A187A8;
  v7 = completionCopy;
  v10 = v7;
  objc_copyWeak(&v11, &location);
  objc_msgSend_remote_authTreeWithCompletion_(v6, v8, v9);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)refreshAuthTreeForAttachment:(id)attachment withCompletion:(id)completion
{
  attachmentCopy = attachment;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v9 = objc_msgSend_dataServer_(self, v8, completionCopy);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FB2D48;
  v12[3] = &unk_278A187A8;
  v10 = completionCopy;
  v13 = v10;
  objc_copyWeak(&v14, &location);
  objc_msgSend_remote_authTreeForAttachment_withCompletion_(v9, v11, attachmentCopy, v12);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

- (void)saveObjects:(id)objects completion:(id)completion
{
  objectsCopy = objects;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_236FB2F50;
  v11[3] = &unk_278A187D0;
  v8 = completionCopy;
  v13 = v8;
  objc_copyWeak(&v14, &location);
  v9 = objectsCopy;
  v12 = v9;
  objc_msgSend_refreshAuthTreeWithCompletion_(self, v10, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_saveObjects:(id)objects completion:(id)completion
{
  v65 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  completionCopy = completion;
  v8 = objc_opt_new();
  val = self;
  v43 = objectsCopy;
  v10 = objc_msgSend__filterObjectsBeingSavedFromObjects_(self, v9, objectsCopy);
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3042000000;
  v62[3] = sub_236FB35C4;
  v62[4] = sub_236FB35D0;
  objc_initWeak(&v63, self);
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_236FB0028;
  v60 = sub_236FB0038;
  v61 = objc_opt_new();
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_236FB35D8;
  v50[3] = &unk_278A187F8;
  v54 = v62;
  v44 = completionCopy;
  v53 = v44;
  v55 = &v56;
  v11 = v10;
  v51 = v11;
  v12 = v8;
  v52 = v12;
  objc_msgSend_setCompletion_(v57[5], v13, v50);
  objc_msgSend_lock(self, v14, v15);
  v16 = self->_objectGenerationsByID;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v17 = v11;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v46, v64, 16);
  if (v21)
  {
    v22 = *v47;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v47 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = *(*(&v46 + 1) + 8 * i);
        v25 = objc_msgSend_objectID(v24, v19, v20);
        v26 = MEMORY[0x277CCABB0];
        v29 = objc_msgSend_generation(v24, v27, v28);
        v31 = objc_msgSend_numberWithUnsignedInt_(v26, v30, v29);
        objc_msgSend_setObject_forKeyedSubscript_(v16, v32, v31, v25);
        objc_msgSend_setObject_forKeyedSubscript_(v12, v33, v31, v25);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v46, v64, 16);
    }

    while (v21);
  }

  objc_msgSend_unlock(val, v34, v35);
  if (objc_msgSend_count(v17, v36, v37))
  {
    v40 = objc_msgSend_dataServer_(val, v38, v44);
    objc_msgSend_remote_saveObjects_saveResponse_completion_(v40, v41, v17, v57[5], &unk_284A07EC8);
  }

  else
  {
    v40 = objc_msgSend_completion(v57[5], v38, v39);
    v40[2](v40, 0);
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(v62, 8);
  objc_destroyWeak(&v63);

  v42 = *MEMORY[0x277D85DE8];
}

- (id)_filterObjectsBeingSavedFromObjects:(id)objects
{
  v40 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  objc_msgSend_lock(self, v5, v6);
  selfCopy = self;
  v7 = self->_objectGenerationsByID;
  v32 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = objectsCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v33, v39, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v34;
    do
    {
      v15 = 0;
      do
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v33 + 1) + 8 * v15);
        v17 = objc_msgSend_objectID(v16, v11, v12);
        v19 = objc_msgSend_objectForKeyedSubscript_(v7, v18, v17);
        v22 = objc_msgSend_generation(v16, v20, v21);
        if (!v19 || objc_msgSend_integerValue(v19, v23, v24) != v22)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (qword_280B2A720 != -1)
              {
                dispatch_once(&qword_280B2A720, &unk_284A07B28);
              }

              v25 = CLSLogDefault;
              if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v38 = v16;
                _os_log_debug_impl(&dword_236F71000, v25, OS_LOG_TYPE_DEBUG, "_filterObjectsBeingSavedFromObjects Adding %@.", buf, 0xCu);
              }

              objc_msgSend_addObject_(v32, v26, v16);
            }
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v33, v39, 16);
    }

    while (v13);
  }

  objc_msgSend_unlock(selfCopy, v27, v28);
  v29 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)_arrangeObjectsIfNeeded:(id)needed
{
  v48 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  objc_msgSend_lock(self, v5, v6);
  v7 = objc_opt_new();
  v34 = neededCopy;
  objc_msgSend__cls_filter_(neededCopy, v8, &unk_284A07EE8);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v40, v47, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    do
    {
      v13 = 0;
      do
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v40 + 1) + 8 * v13);
        if (qword_280B2A720 != -1)
        {
          dispatch_once(&qword_280B2A720, &unk_284A07B28);
        }

        v15 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v46 = v14;
          _os_log_debug_impl(&dword_236F71000, v15, OS_LOG_TYPE_DEBUG, "_arrangeObjectsIfNeeded Adding %@.", buf, 0xCu);
        }

        objc_msgSend_addObject_(v7, v16, v14);
        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v40, v47, 16);
    }

    while (v11);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = v34;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v36, v44, 16);
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    v23 = 0x278A17000uLL;
    do
    {
      v24 = 0;
      do
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v36 + 1) + 8 * v24);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v27 = *(v23 + 1336);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (qword_280B2A720 != -1)
              {
                dispatch_once(&qword_280B2A720, &unk_284A07B28);
              }

              v28 = CLSLogDefault;
              if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v46 = v25;
                _os_log_debug_impl(&dword_236F71000, v28, OS_LOG_TYPE_DEBUG, "_arrangeObjectsIfNeeded Adding %@.", buf, 0xCu);
              }

              objc_msgSend_addObject_(v7, v29, v25);
              v23 = 0x278A17000;
            }
          }
        }

        ++v24;
      }

      while (v21 != v24);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v26, &v36, v44, 16);
    }

    while (v21);
  }

  objc_msgSend_unlock(self, v30, v31);
  v32 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_modifiedObjects
{
  objc_msgSend_lock(self, a2, v2);
  v4 = objc_opt_new();
  v7 = objc_msgSend_graph(self, v5, v6);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_236FB421C;
  v13[3] = &unk_278A18860;
  v8 = v4;
  v14 = v8;
  objc_msgSend_traverseVerticesPassingTest_enumerationBlock_(v7, v9, &unk_284A07F08, v13);

  objc_msgSend_unlock(self, v10, v11);

  return v8;
}

- (id)_validateObjects:(id)objects
{
  v36 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  objc_msgSend_lock(self, v5, v6);
  v9 = objc_msgSend_appIdentifier(self, v7, v8);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = objectsCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v31, v35, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        objc_msgSend_setAppIdentifier_(v16, v18, v9);
        v30 = 0;
        v20 = objc_msgSend_validateObject_(v16, v19, &v30);
        v21 = v30;
        v24 = v21;
        if (!v20)
        {
          objc_msgSend_unlock(self, v22, v23);
          objc_autoreleasePoolPop(v17);

          goto LABEL_11;
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v25, &v31, v35, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  objc_msgSend_unlock(self, v26, v27);
  v24 = 0;
LABEL_11:

  v28 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)objectWithObjectID:(id)d
{
  dCopy = d;
  objc_msgSend_lock(self, v5, v6);
  v9 = objc_msgSend_graph(self, v7, v8);
  v11 = objc_msgSend_vertexWithVertexID_(v9, v10, dCopy);

  objc_msgSend_unlock(self, v12, v13);

  return v11;
}

- (id)addObject:(id)object
{
  objectCopy = object;
  objc_msgSend_lock(self, v5, v6);
  v8 = objc_msgSend__addObject_(self, v7, objectCopy);

  objc_msgSend_unlock(self, v9, v10);

  return v8;
}

- (id)_addObject:(id)object
{
  objectCopy = object;
  v7 = objc_msgSend_dataStore(objectCopy, v5, v6);
  v9 = v7;
  if (v7 == self)
  {
    v10 = objectCopy;
    goto LABEL_22;
  }

  if (v7)
  {
    objc_msgSend_cls_createErrorWithCode_errorObject_format_(MEMORY[0x277CCA9B8], v8, 3, objectCopy, @"Cannot add objects from other data stores.");
  }

  else
  {
    if (objc_msgSend_isAllowedToInsertObject_(self, v8, objectCopy))
    {
LABEL_9:
      v14 = objc_msgSend_objectID(objectCopy, v11, v12);
      v16 = objc_msgSend_objectForKey_(self->_deletedObjectsByID, v15, v14);
      if (v16)
      {
        v19 = v16;
        v10 = v19;
      }

      else
      {
        v20 = objc_msgSend_graph(self, v17, v18);
        v22 = objc_msgSend_vertexWithVertexID_(v20, v21, v14);
        v19 = v22;
        if (!v22 || v22 == objectCopy)
        {
          v29 = objc_msgSend_parentObjectID(objectCopy, v23, v24);
          if (v29 && (objc_msgSend_vertexWithVertexID_(v20, v28, v29), (v30 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v31 = v30;
            objc_msgSend_addChild_(v30, v28, objectCopy);
          }

          else
          {
            objc_msgSend_addVertex_(v20, v28, objectCopy);
          }

          objc_msgSend_setDataStore_(objectCopy, v32, self);
          v10 = objectCopy;
        }

        else
        {
          isModified = objc_msgSend_isModified(v22, v23, v24);
          objc_msgSend_mergeWithObject_(v19, v26, objectCopy);
          objc_msgSend_setModified_(v19, v27, isModified);
          v10 = v19;
        }
      }

      goto LABEL_21;
    }

    objc_msgSend_cls_createErrorWithCode_errorObject_format_(MEMORY[0x277CCA9B8], v11, 3, objectCopy, @"Not allowed to add objects of this kind to data store.");
  }
  v13 = ;
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  objc_msgSend_cls_log_(v13, v11, CLSLogDefault);
  v10 = 0;
LABEL_21:

LABEL_22:

  return v10;
}

- (void)removeObjectWithObjectID:(id)d class:(Class)class
{
  dCopy = d;
  v8 = objc_msgSend_objectWithObjectID_(self, v6, dCopy);
  if (!v8)
  {
    v9 = [class alloc];
    v8 = objc_msgSend_initWithDeletedObjectID_(v9, v10, dCopy);
  }

  objc_msgSend_removeObject_(self, v7, v8);
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  v7 = objc_msgSend_parent(objectCopy, v4, v5);
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_markObjectAsDeleted_(self, v8, v7);
    }

    else
    {
      objc_msgSend_removeChild_(v7, v8, objectCopy);
    }
  }

  else
  {
    objc_msgSend_markObjectAsDeleted_(self, v6, objectCopy);
  }
}

- (void)markObjectAsDeleted:(id)deleted
{
  v44 = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  objc_msgSend_lock(self, v5, v6);
  deletedObjectsByID = self->_deletedObjectsByID;
  v10 = objc_msgSend_objectID(deletedCopy, v8, v9);
  objc_msgSend_setObject_forKey_(deletedObjectsByID, v11, deletedCopy, v10);

  v12 = objc_alloc(MEMORY[0x277CBEB18]);
  v14 = objc_msgSend_initWithObjects_(v12, v13, deletedCopy, 0);
  v17 = objc_msgSend_graph(self, v15, v16);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_236FB4A08;
  v41[3] = &unk_278A18860;
  v18 = v14;
  v42 = v18;
  objc_msgSend_traverseStartingAtVertex_enumerationBlock_(v17, v19, deletedCopy, v41);

  objc_msgSend_setDeleted_(deletedCopy, v20, 1);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = v18;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v37, v43, 16);
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      v26 = 0;
      do
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v37 + 1) + 8 * v26);
        v28 = objc_autoreleasePoolPush();
        v31 = objc_msgSend_graph(self, v29, v30);
        objc_msgSend_removeVertex_(v31, v32, v27);

        objc_autoreleasePoolPop(v28);
        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v33, &v37, v43, 16);
    }

    while (v24);
  }

  objc_msgSend_unlock(self, v34, v35);
  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)isRemovedObject:(id)object
{
  objectCopy = object;
  objc_msgSend_lock(self, v5, v6);
  deletedObjectsByID = self->_deletedObjectsByID;
  v10 = objc_msgSend_objectID(objectCopy, v8, v9);

  v12 = objc_msgSend_objectForKey_(deletedObjectsByID, v11, v10);
  LOBYTE(objectCopy) = v12 != 0;

  objc_msgSend_unlock(self, v13, v14);
  return objectCopy;
}

- (void)_generatePartialTimeIntervalsForRunningActivities
{
  objc_msgSend_lock(self, a2, v2);
  v8 = objc_msgSend_runningActivity(self, v4, v5);
  if (v8)
  {
    objc_msgSend__generatePartialTimeOnSave(v8, v6, v7);
  }

  objc_msgSend_unlock(self, v6, v7);
}

+ (id)handoutGraphFromHandout:(id)handout
{
  v99 = *MEMORY[0x277D85DE8];
  handoutCopy = handout;
  v4 = objc_opt_new();
  objc_msgSend_addObject_(v4, v5, handoutCopy);
  v8 = objc_msgSend_recipients(handoutCopy, v6, v7);
  objc_msgSend_addObjectsFromArray_(v4, v9, v8);

  v12 = objc_msgSend_assets(handoutCopy, v10, v11);
  objc_msgSend_addObjectsFromArray_(v4, v13, v12);

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = objc_msgSend_attachments(handoutCopy, v14, v15);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v92, v98, 16);
  if (v17)
  {
    v19 = v17;
    v20 = *v93;
    v21 = &selRef_vertexCount;
    v75 = *v93;
    v76 = handoutCopy;
    do
    {
      v22 = 0;
      v77 = v19;
      do
      {
        if (*v93 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v92 + 1) + 8 * v22);
        objc_msgSend_addObject_(v4, v18, v23);
        if (objc_msgSend_type(v23, v24, v25) == 5)
        {
          v28 = objc_msgSend_survey(v23, v26, v27);

          if (v28)
          {
            v80 = v23;
            v81 = v22;
            v29 = objc_msgSend_survey(v23, v26, v27);
            objc_msgSend_addObject_(v4, v30, v29);
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v79 = v29;
            v33 = objc_msgSend_surveySteps(v29, v31, v32);
            v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v88, v97, 16);
            if (v35)
            {
              v37 = v35;
              v38 = *v89;
              v82 = *v89;
              v83 = v33;
              do
              {
                for (i = 0; i != v37; ++i)
                {
                  if (*v89 != v38)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v40 = *(*(&v88 + 1) + 8 * i);
                  objc_msgSend_addObject_(v4, v36, v40);
                  if (objc_msgSend_conformsToProtocol_(v40, v41, v21[319]))
                  {
                    v42 = v40;
                    v47 = objc_msgSend_answerFormat(v42, v43, v44);
                    if (v47)
                    {
                      objc_msgSend_addObject_(v4, v45, v47);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v48 = objc_msgSend_answerChoiceItems(v47, v45, v46);
                        objc_msgSend_addObjectsFromArray_(v4, v49, v48);

                        v86 = 0u;
                        v87 = 0u;
                        v84 = 0u;
                        v85 = 0u;
                        v52 = objc_msgSend_answerChoiceItems(v47, v50, v51);
                        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v84, v96, 16);
                        if (v54)
                        {
                          v57 = v54;
                          v58 = *v85;
                          do
                          {
                            for (j = 0; j != v57; ++j)
                            {
                              if (*v85 != v58)
                              {
                                objc_enumerationMutation(v52);
                              }

                              v60 = objc_msgSend_assets(*(*(&v84 + 1) + 8 * j), v55, v56);
                              objc_msgSend_addObjectsFromArray_(v4, v61, v60);
                            }

                            v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v55, &v84, v96, 16);
                          }

                          while (v57);
                        }

                        v21 = &selRef_vertexCount;
                        v38 = v82;
                        v33 = v83;
                      }
                    }

                    v62 = objc_msgSend_assets(v42, v45, v46);
                    objc_msgSend_addObjectsFromArray_(v4, v63, v62);
                  }
                }

                v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v88, v97, 16);
              }

              while (v37);
            }

            v20 = v75;
            handoutCopy = v76;
            v19 = v77;
            v23 = v80;
            v22 = v81;
          }
        }

        v64 = objc_msgSend_assets(v23, v26, v27);
        objc_msgSend_addObjectsFromArray_(v4, v65, v64);

        ++v22;
      }

      while (v22 != v19);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v92, v98, 16);
    }

    while (v19);
  }

  v68 = objc_msgSend_schedule(handoutCopy, v66, v67);

  if (v68)
  {
    v71 = objc_msgSend_schedule(handoutCopy, v69, v70);
    objc_msgSend_addObject_(v4, v72, v71);
  }

  v73 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)removeContextWithObjectID:(id)d
{
  dCopy = d;
  if (objc_msgSend_length(dCopy, v4, v5))
  {
    v6 = objc_opt_class();
    objc_msgSend_removeObjectWithObjectID_class_(self, v7, dCopy, v6);
  }
}

- (void)removeActivityWithObjectID:(id)d
{
  dCopy = d;
  if (objc_msgSend_length(dCopy, v4, v5))
  {
    v6 = objc_opt_class();
    objc_msgSend_removeObjectWithObjectID_class_(self, v7, dCopy, v6);
  }
}

- (void)contextsMatchingIdentifierPath:(NSArray *)identifierPath completion:(void *)completion
{
  v6 = identifierPath;
  v7 = completion;
  v10 = objc_msgSend_mainAppContext(self, v8, v9);
  v15 = objc_msgSend_identifier(v10, v11, v12);
  if (!v15)
  {
    v30 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_236FB5188;
    block[3] = &unk_278A179F8;
    v32 = v7;
    dispatch_async(v30, block);

    goto LABEL_8;
  }

  v16 = objc_msgSend_firstObject(v6, v13, v14);
  v19 = objc_msgSend_firstObject(v6, v17, v18);
  if (!v19)
  {
    goto LABEL_5;
  }

  v22 = v19;
  v23 = objc_msgSend_firstObject(v6, v20, v21);
  isEqualToString = objc_msgSend_isEqualToString_(v23, v24, v15);

  if (isEqualToString)
  {
    v28 = objc_msgSend_count(v6, v26, v27);
    objc_msgSend_subarrayWithRange_(v6, v29, 1, v28 - 1);
    v6 = v16 = v6;
LABEL_5:
  }

  objc_msgSend_contextsMatchingIdentifierPath_parentContext_completion_(self, v26, v6, v10, v7);
LABEL_8:
}

- (void)contextsMatchingIdentifierPath:(id)path parentContext:(id)context completion:(id)completion
{
  v76 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  contextCopy = context;
  completionCopy = completion;
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = sub_236FB5618;
  v73[3] = &unk_278A18888;
  v54 = completionCopy;
  v74 = v54;
  v10 = MEMORY[0x2383C3E80](v73);
  if (objc_msgSend_count(pathCopy, v11, v12))
  {
    objc_msgSend_lock(self, v13, v14);
    v15 = objc_opt_new();
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v16 = pathCopy;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v69, v75, 16);
    if (v19)
    {
      v20 = *v70;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v70 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v23 = objc_msgSend_childContextWithIdentifier_(contextCopy, v18, *(*(&v69 + 1) + 8 * i));
          if (v23)
          {
            objc_msgSend_addObject_(v15, v22, v23);
            v24 = v23;

            contextCopy = v24;
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v69, v75, 16);
      }

      while (v19);
    }

    objc_msgSend_unlock(self, v25, v26);
    v29 = objc_msgSend_count(v15, v27, v28);
    if (v29 == objc_msgSend_count(v16, v30, v31))
    {
      (v10)[2](v10, v15, 0);
    }

    else
    {
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = sub_236FB571C;
      v67[3] = &unk_278A17BC0;
      v32 = v10;
      v68 = v32;
      v34 = objc_msgSend_dataServer_(self, v33, v67);
      v39 = objc_msgSend_count(v15, v35, v36);
      if (v39)
      {
        v40 = objc_msgSend_count(v16, v37, v38);
        v42 = objc_msgSend_subarrayWithRange_(v16, v41, v39, v40 - v39);
      }

      else
      {
        v42 = v16;
      }

      v43 = v42;
      v65[0] = 0;
      v65[1] = v65;
      v65[2] = 0x3042000000;
      v65[3] = sub_236FB35C4;
      v65[4] = sub_236FB35D0;
      objc_initWeak(&v66, self);
      v46 = objc_msgSend_delegate(self, v44, v45);
      v49 = objc_msgSend_objectID(contextCopy, v47, v48);
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = sub_236FB5734;
      v56[3] = &unk_278A188D8;
      v64 = v65;
      v63 = v32;
      v57 = contextCopy;
      v50 = v43;
      v58 = v50;
      v59 = v15;
      selfCopy = self;
      v61 = v16;
      v51 = v46;
      v62 = v51;
      objc_msgSend_remote_contextsMatchingIdentifierPath_parentContextID_completion_(v34, v52, v50, v49, v56);

      _Block_object_dispose(v65, 8);
      objc_destroyWeak(&v66);
    }
  }

  else
  {
    v10[2](v10, MEMORY[0x277CBEBF8], 0);
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (id)dataServer:(id)server
{
  serverCopy = server;
  v7 = objc_msgSend_endpointConnection(self, v5, v6);
  v9 = objc_msgSend_dataServer_(v7, v8, serverCopy);

  return v9;
}

- (id)syncDataServer:(id)server
{
  serverCopy = server;
  v7 = objc_msgSend_endpointConnection(self, v5, v6);
  v9 = objc_msgSend_syncDataServer_(v7, v8, serverCopy);

  return v9;
}

- (id)utilityServer:(id)server
{
  serverCopy = server;
  v7 = objc_msgSend_endpointConnection(self, v5, v6);
  v9 = objc_msgSend_utilityServer_(v7, v8, serverCopy);

  return v9;
}

- (id)syncUtilityServer:(id)server
{
  serverCopy = server;
  v7 = objc_msgSend_endpointConnection(self, v5, v6);
  v9 = objc_msgSend_syncUtilityServer_(v7, v8, serverCopy);

  return v9;
}

- (CLSContext)activeContext
{
  v4 = objc_msgSend_cachedMainAppContext(self, a2, v2);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_236FB0028;
  v20 = sub_236FB0038;
  v21 = 0;
  objc_msgSend_lock(self, v5, v6);
  v9 = objc_msgSend_graph(self, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FB62C4;
  v15[3] = &unk_278A18900;
  v15[4] = &v16;
  objc_msgSend_traverseStartingAtVertex_enumerationBlock_(v9, v10, v4, v15);

  objc_msgSend_unlock(self, v11, v12);
  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

- (CLSActivity)runningActivity
{
  v3 = objc_msgSend_runningActivities(self, a2, v2);
  v6 = objc_msgSend_lastObject(v3, v4, v5);

  return v6;
}

- (void)addRunningActivitiesObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v17 = objectCopy;
    objc_msgSend_lock(self, v5, v6);
    if ((objc_msgSend_containsObject_(self->_runningActivities, v7, v17) & 1) == 0)
    {
      objc_msgSend_willChangeValueForKey_(self, v8, @"runningActivity");
      objc_msgSend_willChangeValueForKey_(self, v10, @"runningActivities");
      runningActivities = self->_runningActivities;
      if (!runningActivities)
      {
        v13 = objc_opt_new();
        v14 = self->_runningActivities;
        self->_runningActivities = v13;

        runningActivities = self->_runningActivities;
      }

      objc_msgSend_addObject_(runningActivities, v11, v17);
      objc_msgSend_didChangeValueForKey_(self, v15, @"runningActivities");
      objc_msgSend_didChangeValueForKey_(self, v16, @"runningActivity");
    }

    objc_msgSend_unlock(self, v8, v9);
    objectCopy = v17;
  }
}

- (void)removeRunningActivitiesObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v14 = objectCopy;
    objc_msgSend_lock(self, v5, v6);
    if (objc_msgSend_containsObject_(self->_runningActivities, v7, v14))
    {
      objc_msgSend_willChangeValueForKey_(self, v8, @"runningActivity");
      objc_msgSend_willChangeValueForKey_(self, v10, @"runningActivities");
      objc_msgSend_removeObject_(self->_runningActivities, v11, v14);
      objc_msgSend_didChangeValueForKey_(self, v12, @"runningActivities");
      objc_msgSend_didChangeValueForKey_(self, v13, @"runningActivity");
    }

    objc_msgSend_unlock(self, v8, v9);
    objectCopy = v14;
  }
}

- (void)applicationWillResignActive:(id)active
{
  v23 = *MEMORY[0x277D85DE8];
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v4 = CLSLogApp;
  if (os_log_type_enabled(CLSLogApp, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_236F71000, v4, OS_LOG_TYPE_INFO, "App will resign active.", buf, 2u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = objc_msgSend_runningActivities(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v22, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ((objc_msgSend_isBackgroudTimeTrackingEnabled(v15, v10, v11) & 1) == 0)
        {
          objc_msgSend_pause(v15, v10, v11);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v17, v22, 16);
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)applicationDidBecomeActive:(id)active
{
  v23 = *MEMORY[0x277D85DE8];
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v4 = CLSLogApp;
  if (os_log_type_enabled(CLSLogApp, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_236F71000, v4, OS_LOG_TYPE_INFO, "App did become active.", buf, 2u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = objc_msgSend_runningActivities(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v22, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ((objc_msgSend_isBackgroudTimeTrackingEnabled(v15, v10, v11) & 1) == 0)
        {
          objc_msgSend_resume(v15, v10, v11);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v17, v22, 16);
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAppClient
{
  v3 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, v2);
  v6 = objc_msgSend_bundlePath(v3, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_pathExtension(v6, v7, v8);
    v12 = objc_msgSend_lowercaseString(v9, v10, v11);

    if (objc_msgSend_isEqualToString_(v12, v13, @"app"))
    {
      isEqualToString = 1;
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(v12, v14, @"appex");
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (void)triggerProgressTransparencyMessageForAttachmentID:(id)d
{
  dCopy = d;
  if (objc_msgSend_isAppClient(self, v5, v6))
  {
    if (objc_msgSend_length(dCopy, v7, v8))
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_236FB69C4;
      v11[3] = &unk_278A18928;
      v11[4] = self;
      objc_msgSend_fetchTransparencyMessageInfoForAttachmentID_withCompletion_(self, v9, dCopy, v11);
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_236FB69D8;
      v10[3] = &unk_278A18928;
      v10[4] = self;
      objc_msgSend_fetchTransparencyMessageInfoWithCompletion_(self, v9, v10);
    }
  }
}

- (void)presentTransparencyMessageInfo:(id)info
{
  v44 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v5, @"showModal");
  v9 = objc_msgSend_BOOLValue(v6, v7, v8);

  if (v9)
  {
    v11 = sub_236FB6C60();
    v14 = objc_msgSend_shared(v11, v12, v13);
    objc_msgSend_showPrivacyModalViewWithInfo_(v14, v15, infoCopy);
  }

  else
  {
    v14 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v10, @"classNames");
    v17 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v16, @"localizedTitle");
    v19 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v18, @"localizedMessageFormat");
    if (objc_msgSend_count(v14, v20, v21) && v17 && v19)
    {
      v23 = objc_msgSend_localizedStringByJoiningStrings_(MEMORY[0x277CCAAF0], v22, v14);
      v24 = objc_autoreleasePoolPush();
      v27 = objc_msgSend_bundleRecordForCurrentProcess(MEMORY[0x277CC1E90], v25, v26);
      v30 = objc_msgSend_localizedName(v27, v28, v29);

      objc_autoreleasePoolPop(v24);
      v39 = 0;
      v32 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v31, v19, @"%@ %@", &v39, v30, v23);
      v34 = v39;
      if (v34)
      {
        if (qword_280B2A720 != -1)
        {
          dispatch_once(&qword_280B2A720, &unk_284A07B28);
        }

        v35 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v41 = v19;
          v42 = 2112;
          v43 = v34;
          _os_log_error_impl(&dword_236F71000, v35, OS_LOG_TYPE_ERROR, "Failed to validate messageFormat: '%@', error: %@", buf, 0x16u);
        }
      }

      else
      {
        v36 = objc_msgSend_dataServer_(self, v33, &unk_284A07F28);
        objc_msgSend_remote_triggerUserNotificationWithTitle_message_wrappedImageURL_(v36, v37, v17, v32, 0);
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)presentTransparencyMessageForHandoutAssignedItemInfo:(id)info
{
  v38 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v5, @"showModal");
  v9 = objc_msgSend_BOOLValue(v6, v7, v8);

  if (v9)
  {
    v11 = sub_236FB6C60();
    v32 = objc_msgSend_shared(v11, v12, v13);
    objc_msgSend_showPrivacyModalViewWithInfo_(v32, v14, infoCopy);

    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v16 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v10, @"classNames");
    v18 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v17, @"attachmentTitle");
    v20 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v19, @"localizedTitle");
    v22 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v21, @"localizedMessageFormat");

    if (v16 && v18 && v20 && v22)
    {
      v33 = 0;
      v24 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v23, v22, @"%@ %@", &v33, v18, v16);
      v25 = v33;
      if (v25)
      {
        v27 = v25;
        if (qword_280B2A720 != -1)
        {
          dispatch_once(&qword_280B2A720, &unk_284A07B28);
        }

        v28 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v35 = v22;
          v36 = 2112;
          v37 = v27;
          _os_log_error_impl(&dword_236F71000, v28, OS_LOG_TYPE_ERROR, "Failed to validate messageFormat: '%@', error: %@", buf, 0x16u);
        }
      }

      else
      {
        v29 = objc_msgSend_dataServer_(self, v26, &unk_284A07F48);
        objc_msgSend_remote_triggerUserNotificationWithTitle_message_wrappedImageURL_(v29, v30, v20, v24, 0);
      }
    }

    v31 = *MEMORY[0x277D85DE8];
  }
}

- (void)fetchTransparencyMessageInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FB7218;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_dataServer_(self, v6, v9);
  objc_msgSend_remote_fetchTransparencyMessageInfoWithCompletion_(v7, v8, v5);
}

- (void)fetchTransparencyMessageInfoForAttachmentID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FB72F4;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v7 = completionCopy;
  dCopy = d;
  v10 = objc_msgSend_dataServer_(self, v9, v12);
  objc_msgSend_remote_fetchTransparencyMessageInfoForAttachmentID_withCompletion_(v10, v11, dCopy, v7);
}

- (void)shouldSyncTeacherBrowsedContextsWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FB73B4;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_dataServer_(self, v6, v9);
  objc_msgSend_remote_shouldSyncTeacherBrowsedContextsWithCompletion_(v7, v8, v5);
}

- (void)developerModeChanged:(id)changed
{
  v28 = *MEMORY[0x277D85DE8];
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v4 = CLSLogApp;
  if (os_log_type_enabled(CLSLogApp, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_236F71000, v4, OS_LOG_TYPE_INFO, "Developer mode changed;", buf, 2u);
  }

  objc_msgSend_reset(self, v5, v6);
  objc_msgSend_lock(self, v7, v8);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = objc_msgSend_objectEnumerator(self->_dataObservers, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v22, v27, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_reset(*(*(&v22 + 1) + 8 * i), v14, v15);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v22, v27, 16);
    }

    while (v16);
  }

  objc_msgSend_unlock(self, v19, v20);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  objc_msgSend_lock(self, a2, v2);
  objc_msgSend_removeAllObjects(self->_deletedObjectsByID, v4, v5);
  objc_msgSend_removeAllObjects(self->_objectGenerationsByID, v6, v7);
  v10 = objc_msgSend_graph(self, v8, v9);
  objc_msgSend_reset(v10, v11, v12);

  cachedCurrentUser = self->_cachedCurrentUser;
  self->_cachedCurrentUser = 0;

  mainAppContext = self->_mainAppContext;
  if (mainAppContext)
  {
    objc_msgSend_setDataStore_(mainAppContext, v14, 0);
    v17 = objc_msgSend__addObject_(self, v16, self->_mainAppContext);
    objc_msgSend_setDataStore_(self->_mainAppContext, v18, self);
  }

  v19 = objc_opt_class();
  if (!objc_msgSend_isDashboardApp(v19, v20, v21) || (v24 = objc_opt_class(), objc_msgSend_isPDTool(v24, v25, v26)))
  {
    objc_msgSend__createMainAppContext(self, v22, v23);
  }

  v27 = objc_msgSend_date(MEMORY[0x277CBEAA8], v22, v23);
  lastPruneDate = self->_lastPruneDate;
  self->_lastPruneDate = v27;

  objc_msgSend_unlock(self, v29, v30);

  MEMORY[0x2821F9670](self, sel_faultMainAppContext, v31);
}

+ (CLSCurrentUser)currentUser
{
  if (CurrentProcessNameMatches(@"progressd"))
  {
    v4 = objc_lookUpClass("PDDaemon");
    v7 = objc_msgSend_shared(v4, v5, v6);
    [v7 NSSelectorFromString(&cfstr_Currentuser.isa)];
  }

  else
  {
    v7 = objc_msgSend_shared(CLSDataStore, v2, v3);
    objc_msgSend_currentUser(v7, v8, v9);
  }
  v10 = ;

  return v10;
}

- (id)currentUser
{
  if (objc_msgSend_isDashboardAPIEnabled(self, a2, v2))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_236FB0028;
    v17 = sub_236FB0038;
    v18 = objc_msgSend_cachedCurrentUser(self, v4, v5);
    v7 = v14[5];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v9 = objc_msgSend_syncDataServer_(self, v6, 0);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_236FB789C;
      v12[3] = &unk_278A18950;
      v12[4] = &v13;
      objc_msgSend_currentUserWithServer_completion_(self, v10, v9, v12);
      v8 = v14[5];
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)currentUserWithCompletion:(id)completion
{
  completionCopy = completion;
  if (objc_msgSend_isDashboardAPIEnabled(self, v5, v6))
  {
    v9 = objc_msgSend_cachedCurrentUser(self, v7, v8);
    v12 = objc_msgSend_person(v9, v10, v11);

    if (v12)
    {
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v13 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_236F71000, v13, OS_LOG_TYPE_INFO, "Called CLSDataStore currentUserWithCompletion, localCurrentUser.person is not nil returning cached localCurrentUser", buf, 2u);
      }

      v14 = qos_class_self();
      v15 = dispatch_get_global_queue(v14, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_236FB7BD0;
      block[3] = &unk_278A17C80;
      v16 = &v25;
      v25 = completionCopy;
      v24 = v9;
      dispatch_async(v15, block);

      v17 = v24;
    }

    else
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_236FB7BE8;
      v21[3] = &unk_278A17BC0;
      v16 = &v22;
      v18 = completionCopy;
      v22 = v18;
      v17 = objc_msgSend_dataServer_(self, v19, v21);
      objc_msgSend_currentUserWithServer_completion_(self, v20, v17, v18);
    }
  }

  else
  {
    v9 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v7, 4, @"Not Authorized");
    (*(completionCopy + 2))(completionCopy, 0, v9);
  }
}

- (void)currentUserWithServer:(id)server completion:(id)completion
{
  serverCopy = server;
  completionCopy = completion;
  objc_initWeak(&location, self);
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v8 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_236F71000, v8, OS_LOG_TYPE_INFO, "Calling CLSDataStore currentUserWithServer", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_236FB7D60;
  v11[3] = &unk_278A18978;
  v9 = completionCopy;
  v12 = v9;
  objc_copyWeak(&v13, &location);
  objc_msgSend_remote_currentUserWithCompletion_(serverCopy, v10, v11);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

- (void)getCurrentUseriCloudQuotaInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (objc_msgSend_isDashboardAPIEnabled(self, v5, v6))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_236FB804C;
    v15[3] = &unk_278A17BC0;
    v8 = completionCopy;
    v16 = v8;
    v10 = objc_msgSend_dataServer_(self, v9, v15);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_236FB806C;
    v13[3] = &unk_278A189A0;
    v14 = v8;
    objc_msgSend_remote_getCurrentUseriCloudQuotaInfoWithCompletion_(v10, v11, v13);
  }

  else
  {
    v12 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v7, 4, @"Not Authorized");
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v12);
  }
}

- (void)registerDataObserver:(id)observer
{
  v35 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v7 = objc_msgSend_dataStore(observerCopy, v5, v6);
  v10 = v7;
  if (v7 != self)
  {
    if (v7)
    {
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v11 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v34 = observerCopy;
        _os_log_impl(&dword_236F71000, v11, OS_LOG_TYPE_INFO, "Refusing to register observer belonging to different data store; %@", buf, 0xCu);
      }
    }

    else
    {
      objc_msgSend_lock(self, v8, v9);
      objc_msgSend_addObject_(self->_dataObservers, v12, observerCopy);
      objc_msgSend_setDataStore_(observerCopy, v13, self);
      objc_msgSend_unlock(self, v14, v15);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_236FB8280;
      v31[3] = &unk_278A18528;
      v16 = observerCopy;
      v32 = v16;
      v17 = MEMORY[0x2383C3E80](v31);
      v19 = objc_msgSend_dataServer_(self, v18, v17);
      v22 = objc_msgSend_observerID(v16, v20, v21);
      v25 = objc_msgSend_querySpec(v16, v23, v24);
      v28 = objc_msgSend_changeTag(v16, v26, v27);
      objc_msgSend_remote_registerDataObserver_withID_querySpecification_oldChangeTag_completion_(v19, v29, v16, v22, v25, v28, v17);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)deregisterDataObserver:(id)observer
{
  v31 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = self->_dataObservers;
  v10 = objc_msgSend_dataStore(observerCopy, v6, v7);
  if (!v10)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v11 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = observerCopy;
      _os_log_impl(&dword_236F71000, v11, OS_LOG_TYPE_INFO, "Refusing to deregister non registered observer: %@;", buf, 0xCu);
    }
  }

  if (v10 == self)
  {
    objc_msgSend_lock(self, v8, v9);
    objc_msgSend_setDataStore_(observerCopy, v13, 0);
    objc_msgSend_removeObject_(v5, v14, observerCopy);
    objc_msgSend_unlock(self, v15, v16);
    v19 = objc_msgSend_observerID(observerCopy, v17, v18);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_236FB86A4;
    v27[3] = &unk_278A18528;
    v20 = observerCopy;
    v28 = v20;
    v22 = objc_msgSend_dataServer_(self, v21, v27);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_236FB8794;
    v25[3] = &unk_278A18210;
    v26 = v20;
    objc_msgSend_remote_deregisterDataObserverWithID_completion_(v22, v23, v19, v25);
  }

  else
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v12 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = observerCopy;
      _os_log_impl(&dword_236F71000, v12, OS_LOG_TYPE_INFO, "Refusing to deregister observer belonging to different data store; %@", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)pruneDeletedObjectsWithCompletion:(id)completion
{
  completionCopy = completion;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_236FB8A1C;
  v20[3] = &unk_278A17BC0;
  v5 = completionCopy;
  v21 = v5;
  v7 = objc_msgSend_dataServer_(self, v6, v20);
  objc_msgSend_lock(self, v8, v9);
  v10 = self->_lastPruneDate;
  objc_msgSend_unlock(self, v11, v12);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3042000000;
  v18[3] = sub_236FB35C4;
  v18[4] = sub_236FB35D0;
  objc_initWeak(&v19, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FB8A2C;
  v15[3] = &unk_278A189C8;
  v17 = v18;
  v13 = v5;
  v16 = v13;
  objc_msgSend_remote_fetchDeletedObjectIDsNewerThanDate_completion_(v7, v14, v10, v15);

  _Block_object_dispose(v18, 8);
  objc_destroyWeak(&v19);
}

- (void)syncFetchWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FB8CD8;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_syncFetchWithCompletion_(v7, v8, v5);
}

- (void)syncServerConfigWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FB8D98;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_syncBootstrapWithCompletion_(v7, v8, v5);
}

- (void)fetchReportsWithPredicate:(id)predicate completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FB8E74;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v7 = completionCopy;
  predicateCopy = predicate;
  v10 = objc_msgSend_utilityServer_(self, v9, v12);
  objc_msgSend_remote_fetchReportsWithPredicate_completion_(v10, v11, predicateCopy, v7);
}

- (void)triggerUserNotificationReviewDueHandoutsWithReferenceDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  v9 = objc_msgSend_dataServer_(self, v8, completionCopy);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FB9028;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v10 = completionCopy;
  objc_msgSend_remote_triggerUserNotificationReviewDueHandoutsWithReferenceDate_completion_(v9, v11, dateCopy, v12);
}

- (void)triggerUserNotificationHandoutPastDueSummaryWithReferenceDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  v9 = objc_msgSend_dataServer_(self, v8, completionCopy);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FB9104;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v10 = completionCopy;
  objc_msgSend_remote_triggerUserNotificationHandoutPastDueSummaryWithReferenceDate_completion_(v9, v11, dateCopy, v12);
}

- (void)triggerUserNotificationHandoutDueSoonWithReferenceDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  v9 = objc_msgSend_dataServer_(self, v8, completionCopy);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FB91E0;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v10 = completionCopy;
  objc_msgSend_remote_triggerUserNotificationHandoutDueSoonWithReferenceDate_completion_(v9, v11, dateCopy, v12);
}

- (void)triggerUserNotificationRevisionRequested:(id)requested completion:(id)completion
{
  completionCopy = completion;
  requestedCopy = requested;
  v9 = objc_msgSend_dataServer_(self, v8, completionCopy);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FB92BC;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v10 = completionCopy;
  objc_msgSend_remote_triggerUserNotificationRevisionRequestedWithAttachmentID_completion_(v9, v11, requestedCopy, v12);
}

- (void)triggerUserNotificationRevisedSubmissionWithAttachmentID:(id)d studentName:(id)name completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  dCopy = d;
  v12 = objc_msgSend_dataServer_(self, v11, completionCopy);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FB93B4;
  v15[3] = &unk_278A17BC0;
  v16 = completionCopy;
  v13 = completionCopy;
  objc_msgSend_remote_triggerUserNotificationRevisedSubmissionWithAttachmentID_studentName_completion_(v12, v14, dCopy, nameCopy, v15);
}

- (void)triggerUserNotificationHandoutAssigned:(id)assigned completion:(id)completion
{
  completionCopy = completion;
  assignedCopy = assigned;
  v9 = objc_msgSend_dataServer_(self, v8, completionCopy);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FB9490;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v10 = completionCopy;
  objc_msgSend_remote_triggerUserNotificationHandoutAssignedWithHandoutID_completion_(v9, v11, assignedCopy, v12);
}

- (void)renewCredentialsWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_236FB9560;
  v10[3] = &unk_278A17BC0;
  v11 = completionCopy;
  v5 = completionCopy;
  v6 = MEMORY[0x2383C3E80](v10);
  v8 = objc_msgSend_utilityServer_(self, v7, v6);
  objc_msgSend_remote_renewCredentialsWithCompletion_(v8, v9, v5);
}

+ (id)handoutSubgraphContainingAsset:(id)asset
{
  assetCopy = asset;
  v6 = objc_msgSend_parent(assetCopy, v4, v5);
  v10 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v7, assetCopy);
  if (v6)
  {
    do
    {
      objc_msgSend_insertObject_atIndex_(v10, v8, v6, 0);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v13 = objc_msgSend_parent(v6, v11, v12);

      v6 = v13;
    }

    while (v13);
  }

  v14 = objc_msgSend_copy(v10, v8, v9);

  return v14;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fetchAssignedItemFor:(id)for completion:(id)completion
{
  v33[2] = *MEMORY[0x277D85DE8];
  forCopy = for;
  completionCopy = completion;
  if (!forCopy || !objc_msgSend_length(forCopy, v7, v8))
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v16 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_236F71000, v16, OS_LOG_TYPE_DEBUG, "CLSDataStore -fetchAssignedItemFor, invalid handout attachment id", buf, 2u);
    }

    goto LABEL_10;
  }

  if ((objc_msgSend_isAppClient(self, v10, v11) & 1) == 0)
  {
    v12 = objc_opt_class();
    if ((objc_msgSend_isPDTool(v12, v13, v14) & 1) == 0)
    {
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v20 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
      {
        v21 = v20;
        *buf = 67109120;
        *&buf[4] = objc_msgSend_isAppClient(self, v22, v23);
        _os_log_debug_impl(&dword_236F71000, v21, OS_LOG_TYPE_DEBUG, "CLSDataStore fetchAssignedItemFor: is not an app or app extension client: %d", buf, 8u);
      }

LABEL_10:
      v18 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v17, 4, @"Not Authorized");
      completionCopy[2](completionCopy, 0, v18);

      goto LABEL_11;
    }
  }

  *buf = 0;
  v29 = buf;
  v30 = 0x3042000000;
  v31 = sub_236FB35C4;
  v32 = sub_236FB35D0;
  objc_initWeak(v33, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_236FB9AB0;
  v24[3] = &unk_278A18A68;
  v27 = buf;
  v26 = completionCopy;
  v25 = forCopy;
  objc_msgSend_refreshAuthTreeForAttachment_withCompletion_(self, v15, v25, v24);

  _Block_object_dispose(buf, 8);
  objc_destroyWeak(v33);
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_validateAndCreateHandoutAssignedItemFor:(id)for completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  forCopy = for;
  completionCopy = completion;
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v8 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = forCopy;
    _os_log_debug_impl(&dword_236F71000, v8, OS_LOG_TYPE_DEBUG, "CLSDataStore _validateAndCreateHandoutAssignedItemFor called for handoutAttachmentID: %@", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_236FBA1CC;
  v14[3] = &unk_278A17BC0;
  v15 = completionCopy;
  v9 = completionCopy;
  v11 = objc_msgSend_dataServer_(self, v10, v14);
  objc_msgSend_remote_validateAndCreateHandoutAssignedItem_withCompletion_(v11, v12, forCopy, v9);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)publishHandout:(id)handout completion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  handoutCopy = handout;
  completionCopy = completion;
  objc_msgSend_handoutGraphFromHandout_(CLSDataStore, v6, handoutCopy);
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_236FB0028;
  v49 = sub_236FB0038;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = v40 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v37, v51, 16);
  if (v9)
  {
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v12;
          v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &unk_284A07F68);
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = sub_236FBA5E0;
          v32[3] = &unk_278A18A90;
          v33 = v7;
          v35 = &v41;
          v36 = &v45;
          v16 = v15;
          v34 = v16;
          objc_msgSend_createShareIfNeeded_(v14, v17, v32);
          dispatch_block_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v13, &v37, v51, 16);
    }

    while (v9);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_236FBA698;
  v30[3] = &unk_278A18AB8;
  v18 = completionCopy;
  v31 = v18;
  v19 = MEMORY[0x2383C3E80](v30);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_236FBA7C0;
  v28[3] = &unk_278A17BC0;
  v20 = v19;
  v29 = v20;
  v22 = objc_msgSend_dataServer_(self, v21, v28);
  v24 = v22;
  if (*(v42 + 24) == 1)
  {
    (*(v20 + 2))(v20, 0, v46[5]);
  }

  else
  {
    objc_msgSend_remote_publishHandoutGraph_completion_(v22, v23, v7, v20);
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)repairHandoutAttachments:(id)attachments completion:(id)completion
{
  completionCopy = completion;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_236FBA9C8;
  v25[3] = &unk_278A18AB8;
  v7 = completionCopy;
  v26 = v7;
  attachmentsCopy = attachments;
  v9 = MEMORY[0x2383C3E80](v25);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_236FBAAF0;
  v23[3] = &unk_278A17BC0;
  v10 = v9;
  v24 = v10;
  v12 = objc_msgSend_dataServer_(self, v11, v23);
  v14 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v13, @"type = %d OR type = %d", 2, 4);
  v16 = objc_msgSend_filteredArrayUsingPredicate_(attachmentsCopy, v15, v14);

  if (objc_msgSend_count(v16, v17, v18))
  {
    objc_msgSend_remote_repairHandoutAttachments_completion_(v12, v19, v16, v10);
  }

  else
  {
    v20 = clsNotificationQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_236FBAB08;
    block[3] = &unk_278A179F8;
    v22 = v7;
    dispatch_async(v20, block);
  }
}

- (void)handoutAttachmentForDocumentURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (objc_msgSend_isUIClient(self, v8, v9) & 1) != 0 || (objc_msgSend_isDashboardAPIEnabled(self, v10, v11))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_236FBAC84;
    v15[3] = &unk_278A18AE0;
    v16 = completionCopy;
    objc_msgSend__fetchHandoutAttachmentForDocumentURL_completion_(self, v13, lCopy, v15);
  }

  else
  {
    v14 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v12, 4, @"Use of API not allowed.");
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

- (void)removeCollection:(id)collection
{
  v12[1] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  if (objc_msgSend_type(collectionCopy, v5, v6) == 2 || objc_msgSend_type(collectionCopy, v7, v8) == 5)
  {
    v12[0] = collectionCopy;
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v12, 1);
    objc_msgSend_deleteArchivedCollectionObjects_withCompletion_(self, v10, v9, &unk_284A07F88);
  }

  else
  {
    objc_msgSend_removeObject_(self, v7, collectionCopy);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_classesForCurrentUserWithRole:(unint64_t)role completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FBAE44;
  v9[3] = &unk_278A18B28;
  v9[4] = self;
  v10 = completionCopy;
  roleCopy = role;
  v7 = completionCopy;
  objc_msgSend_currentUserWithCompletion_(self, v8, v9);
}

- (void)instructedClassesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (objc_msgSend_isDashboardAPIEnabled(self, v4, v5))
  {
    objc_msgSend__classesForCurrentUserWithRole_completion_(self, v6, 2, completionCopy);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)personsInClassWithClassID:(id)d role:(unint64_t)role completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_236FBB0AC;
  v13[3] = &unk_278A18B78;
  v10 = completionCopy;
  v15 = v10;
  v16[1] = role;
  v11 = dCopy;
  v14 = v11;
  objc_copyWeak(v16, &location);
  objc_msgSend_currentUserWithCompletion_(self, v12, v13);
  objc_destroyWeak(v16);

  objc_destroyWeak(&location);
}

- (void)classesForPersonID:(id)d role:(unint64_t)role completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10 = objc_opt_class();
  v11 = MEMORY[0x277CCAC30];
  v13 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v12, role);
  v15 = objc_msgSend_predicateWithFormat_(v11, v14, @"personID == %@ && %K = %@", dCopy, @"roles", v13);
  v24 = 0;
  v17 = objc_msgSend_queryWithObjectType_predicate_error_(CLSQuery, v16, v10, v15, &v24);
  v18 = v24;

  if (v18)
  {
    completionCopy[2](completionCopy, 0, v18);
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_236FBB6B4;
    v21[3] = &unk_278A18BA0;
    v22 = completionCopy;
    objc_copyWeak(&v23, &location);
    objc_msgSend_setCompletion_(v17, v19, v21);
    objc_msgSend_executeQuery_(self, v20, v17);
    objc_destroyWeak(&v23);
  }

  objc_destroyWeak(&location);
}

- (void)saveClass:(id)class completion:(id)completion
{
  classCopy = class;
  completionCopy = completion;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_236FBBC7C;
  v38[3] = &unk_278A18BC8;
  v8 = classCopy;
  v39 = v8;
  v9 = completionCopy;
  v40 = v9;
  v10 = MEMORY[0x2383C3E80](v38);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_236FBBDC4;
  v36[3] = &unk_278A17BC0;
  v11 = v10;
  v37 = v11;
  v13 = objc_msgSend_dataServer_(self, v12, v36);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_236FB0028;
  v34[4] = sub_236FB0038;
  v14 = objc_opt_class();
  v35 = objc_msgSend_childrenOfClass_(v8, v15, v14);
  v16 = MEMORY[0x277CCAC30];
  v19 = objc_msgSend_objectID(v8, v17, v18);
  v21 = objc_msgSend_predicateWithFormat_(v16, v20, @"parentObjectID = %@", v19);

  v22 = objc_opt_class();
  v33 = 0;
  v24 = objc_msgSend_queryWithObjectType_predicate_error_(CLSQuery, v23, v22, v21, &v33);
  v25 = v33;
  if (v24)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_236FBBDDC;
    v27[3] = &unk_278A18BF0;
    v30 = v9;
    v32 = v34;
    v28 = v13;
    v29 = v8;
    v31 = v11;
    objc_msgSend_awaitExecuteQuery_completion_(self, v26, v24, v27);
  }

  else
  {
    (*(v9 + 2))(v9, 0, v25);
  }

  _Block_object_dispose(v34, 8);
}

- (void)removeClass:(id)class completion:(id)completion
{
  classCopy = class;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_236FBC2E4;
  v18[3] = &unk_278A18BC8;
  v19 = classCopy;
  v20 = completionCopy;
  v8 = completionCopy;
  v9 = classCopy;
  v10 = MEMORY[0x2383C3E80](v18);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_236FBC42C;
  v16[3] = &unk_278A17BC0;
  v17 = v10;
  v11 = v10;
  v13 = objc_msgSend_dataServer_(self, v12, v16);
  objc_msgSend_setDeleted_(v9, v14, 1);
  objc_msgSend_remote_publishClass_membersToInsert_membersToDelete_completion_(v13, v15, v9, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8], v11);
}

- (id)orphanedAssets:(id *)assets
{
  v4 = objc_msgSend_syncDataServer_(self, a2, 0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_236FB0028;
  v21 = sub_236FB0038;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_236FB0028;
  v15 = sub_236FB0038;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_236FBC5E4;
  v10[3] = &unk_278A18C18;
  v10[4] = &v17;
  v10[5] = &v11;
  objc_msgSend_remote_fetchOrphanedAssetsWithCompletion_(v4, v5, v10);
  v6 = v12[5];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    if (assets)
    {
      *assets = v7;
    }
  }

  else
  {
    v8 = v18[5];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

- (void)removeAsset:(id)asset
{
  assetCopy = asset;
  if (objc_msgSend_isDashboardAPIEnabled(self, v4, v5))
  {
    objc_msgSend_removeObject_(self, v6, assetCopy);
  }
}

- (void)studentActivityForAttachmentsWithIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FBC798;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v7 = completionCopy;
  dsCopy = ds;
  v10 = objc_msgSend_dataServer_(self, v9, v12);
  objc_msgSend_remote_studentActivityForAttachmentsWithIDs_completion_(v10, v11, dsCopy, v7);
}

- (void)addSurveyAnswerItem:(id)item
{
  itemCopy = item;
  objc_msgSend_setAction_(itemCopy, v4, 1);
  v6 = objc_msgSend_addObject_(self, v5, itemCopy);
}

- (void)removeSurveyAnswerItem:(id)item
{
  itemCopy = item;
  objc_msgSend_setState_(itemCopy, v4, 1);
  objc_msgSend_setAction_(itemCopy, v5, 3);
  objc_msgSend_removeObject_(self, v6, itemCopy);
}

- (void)startActivity:(id)activity activityType:(int)type bundleID:(id)d completion:(id)completion
{
  activityCopy = activity;
  dCopy = d;
  completionCopy = completion;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_236FBCA84;
  v32[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v33 = v13;
  v15 = objc_msgSend_dataServer_(self, v14, v32);
  v18 = objc_msgSend_currentUser(self, v16, v17);
  isInstructor = objc_msgSend_isInstructor(v18, v19, v20);

  if (isInstructor)
  {
    objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v22, 0, @"API only applicable for student.");
    v26 = LABEL_10:;
    (*(v13 + 2))(v13, 0, v26);
    goto LABEL_11;
  }

  if ((objc_msgSend_isDashboardAPIEnabled(self, v22, v23) & 1) == 0)
  {
    objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v24, 4, @"Use of API not allowed.");
    goto LABEL_10;
  }

  if (!dCopy || !activityCopy || (type & 0xFFFFFFFD) != 1)
  {
    objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v24, 307, @"Invalid input");
    goto LABEL_10;
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_236FBCA9C;
  v27[3] = &unk_278A18C40;
  v30 = v13;
  v28 = v15;
  v29 = dCopy;
  typeCopy = type;
  objc_msgSend_fetchAssignedItemFor_completion_(self, v25, activityCopy, v27);

  v26 = v30;
LABEL_11:
}

- (void)startActivityFailed:(id)failed activityType:(int)type completion:(id)completion
{
  failedCopy = failed;
  completionCopy = completion;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_236FBCE44;
  v23[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v24 = v10;
  v12 = objc_msgSend_dataServer_(self, v11, v23);
  v15 = objc_msgSend_currentUser(self, v13, v14);
  isInstructor = objc_msgSend_isInstructor(v15, v16, v17);

  if (isInstructor)
  {
    objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v19, 0, @"API only applicable for student.");
    v22 = LABEL_9:;
    (*(v10 + 2))(v10, 0, v22);

    goto LABEL_10;
  }

  if ((objc_msgSend_isDashboardAPIEnabled(self, v19, v20) & 1) == 0)
  {
    objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v21, 4, @"Use of API not allowed.");
    goto LABEL_9;
  }

  if (!failedCopy || type != 3)
  {
    objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v21, 2, @"Invalid argument, nil attachmentID or incorrect attachment type");
    goto LABEL_9;
  }

  objc_msgSend_remote_startActivityFailed_completion_(v12, v21, failedCopy, v10);
LABEL_10:
}

- (void)fetchAppBasedAssignmentUsage:(id)usage completion:(id)completion
{
  usageCopy = usage;
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FBCF70;
  v15[3] = &unk_278A17BC0;
  v8 = completionCopy;
  v16 = v8;
  v10 = objc_msgSend_dataServer_(self, v9, v15);
  if (objc_msgSend_isDashboardAPIEnabled(self, v11, v12))
  {
    objc_msgSend_remote_fetchAppBasedAssignmentUsage_completion_(v10, v13, usageCopy, v8);
  }

  else
  {
    v14 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v13, 4, @"Use of API not allowed.");
    (*(v8 + 2))(v8, 0, v14);
  }
}

- (void)submittableURLByCurrentUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FBD09C;
  v15[3] = &unk_278A17BC0;
  v8 = completionCopy;
  v16 = v8;
  v10 = objc_msgSend_dataServer_(self, v9, v15);
  if (objc_msgSend_isUIClient(self, v11, v12))
  {
    objc_msgSend_remote_submittableURLByCurrentUser_completion_(v10, v13, userCopy, v8);
  }

  else
  {
    v14 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v13, 4, @"Use of API not allowed.");
    (*(v8 + 2))(v8, 0, v14);
  }
}

- (void)currentUserIsStudent:(id)student
{
  studentCopy = student;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FBD1B4;
  v12[3] = &unk_278A17BC0;
  v5 = studentCopy;
  v13 = v5;
  v7 = objc_msgSend_dataServer_(self, v6, v12);
  if (objc_msgSend_isUIClient(self, v8, v9))
  {
    objc_msgSend_remote_currentUserIsStudent_(v7, v10, v5);
  }

  else
  {
    v11 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v10, 4, @"Use of API not allowed.");
    (*(v5 + 2))(v5, 0, v11);
  }
}

- (void)canSearchRostersWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FBD274;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_dataServer_(self, v6, v9);
  objc_msgSend_remote_canSearchRostersWithCompletion_(v7, v8, v5);
}

- (void)shouldPerformSearchAPIOperation:(id)operation completion:(id)completion
{
  operationCopy = operation;
  completionCopy = completion;
  v8 = sub_236FBD360();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FBD3B4;
  block[3] = &unk_278A18C68;
  v12 = operationCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = operationCopy;
  v10 = completionCopy;
  dispatch_async(v8, block);
}

- (void)objectsMatching:(id)matching completion:(id)completion
{
  matchingCopy = matching;
  completionCopy = completion;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 1;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_236FB0028;
  v29[4] = sub_236FB0038;
  v30 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_236FBD76C;
  v26[3] = &unk_278A18C90;
  v26[4] = self;
  v28 = v31;
  v8 = completionCopy;
  v27 = v8;
  v9 = MEMORY[0x2383C3E80](v26);
  v10 = dispatch_time(0, 2700000000);
  v11 = sub_236FBD360();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FBDA58;
  block[3] = &unk_278A18CB8;
  v24 = v31;
  v25 = v29;
  v12 = v9;
  v23 = v12;
  dispatch_after(v10, v11, block);

  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_236FBDB58;
  v16[3] = &unk_278A18CE0;
  objc_copyWeak(&v20, &location);
  v13 = v12;
  v18 = v13;
  v14 = matchingCopy;
  v17 = v14;
  v19 = v29;
  objc_msgSend_shouldPerformSearchAPIOperation_completion_(self, v15, v14, v16);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

- (void)membersOfGroupWithIdentifier:(id)identifier completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v8 = CLSLogSearch;
  if (os_log_type_enabled(CLSLogSearch, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v19 = identifierCopy;
    _os_log_debug_impl(&dword_236F71000, v8, OS_LOG_TYPE_DEBUG, "Query for members of CLSClass/CLSGroup: %@", buf, 0xCu);
  }

  v9 = [CLSSearchSpecification alloc];
  v11 = objc_msgSend_initWithOptions_behaviors_(v9, v10, 1, 1);
  v17 = identifierCopy;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v17, 1);
  objc_msgSend_requireClassMemberRole_forClassIDs_(v11, v14, 3, v13);

  objc_msgSend_objectsMatching_completion_(self, v15, v11, completionCopy);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)collaborationStatesForObjectWithID:(id)d ownerPersonID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_236FBDFAC;
  v16[3] = &unk_278A17BC0;
  v11 = completionCopy;
  v17 = v11;
  v13 = objc_msgSend_dataServer_(self, v12, v16);
  v15 = v13;
  if (v13)
  {
    objc_msgSend_remote_collaborationStatesForObjectWithID_ownerPersonID_completion_(v13, v14, dCopy, iDCopy, v11);
  }
}

- (void)collaborationStatesForObjectWithID:(id)d classID:(id)iD forOwnersWithRole:(unint64_t)role completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_236FBE0B4;
  v18[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v19 = v13;
  v15 = objc_msgSend_dataServer_(self, v14, v18);
  v17 = v15;
  if (v15)
  {
    objc_msgSend_remote_collaborationStatesForObjectWithID_classID_forOwnersWithRole_completion_(v15, v16, dCopy, iDCopy, role, v13);
  }
}

- (void)publishCollaborationStateChanges:(id)changes completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  completionCopy = completion;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_236FBE2DC;
  v31[3] = &unk_278A17BC0;
  v8 = completionCopy;
  v32 = v8;
  v10 = objc_msgSend_dataServer_(self, v9, v31);
  if (objc_msgSend_count(changesCopy, v11, v12))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = changesCopy;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v27, v33, 16);
    if (v15)
    {
      v17 = v15;
      v18 = *v28;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          v26 = 0;
          v21 = objc_msgSend_validateObject_(v20, v16, &v26);
          v22 = v26;
          v23 = v22;
          if ((v21 & 1) == 0)
          {
            (*(v8 + 2))(v8, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8], v22);

            goto LABEL_13;
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v27, v33, 16);
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    objc_msgSend_remote_publishCollaborationStateChanges_completion_(v10, v24, v13, v8);
  }

  else
  {
    (*(v8 + 2))(v8, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8], 0);
  }

LABEL_13:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)publishAdminRequests:(id)requests withRequestor:(id)requestor adminRequestAccounts:(id)accounts completion:(id)completion
{
  v71 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  requestorCopy = requestor;
  accountsCopy = accounts;
  completionCopy = completion;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = sub_236FBE688;
  v68[3] = &unk_278A17BC0;
  v14 = completionCopy;
  v69 = v14;
  v16 = objc_msgSend_dataServer_(self, v15, v68);
  if (objc_msgSend_count(requestsCopy, v17, v18))
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = requestsCopy;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v64, v70, 16);
    if (v21)
    {
      v24 = v21;
      v63 = *v65;
      v59 = accountsCopy;
      v60 = requestsCopy;
      v57 = v16;
      v58 = v14;
      do
      {
        v25 = 0;
        do
        {
          if (*v65 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v64 + 1) + 8 * v25);
          v27 = objc_msgSend_requestorID(v26, v22, v23);
          if (v27 || (objc_msgSend_objectID(requestorCopy, v22, v23), (v62 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v28 = objc_msgSend_requestorID(v26, v22, v23);
            if (!v28)
            {
              goto LABEL_22;
            }

            v31 = v28;
            v32 = objc_msgSend_objectID(requestorCopy, v29, v30);
            if (!v32)
            {

LABEL_22:
              if (!v27)
              {
                v27 = v62;
              }

LABEL_25:
              v46 = MEMORY[0x277CCA9B8];
              v47 = MEMORY[0x277CCACA8];
              v48 = objc_msgSend_requestorID(v26, v22, v23);
              v51 = objc_msgSend_objectID(requestorCopy, v49, v50);
              v53 = objc_msgSend_stringWithFormat_(v47, v52, @"Invalid RequestorID. (got:%@, expected:%@)", v48, v51);
              v55 = objc_msgSend_cls_createErrorWithCode_description_(v46, v54, 2, v53);

              v14 = v58;
              (*(v58 + 2))(v58, 0, v55);

              accountsCopy = v59;
              requestsCopy = v60;
              v16 = v57;
              goto LABEL_26;
            }

            v35 = v32;
            v36 = objc_msgSend_requestorID(v26, v33, v34);
            v37 = requestorCopy;
            v40 = objc_msgSend_objectID(requestorCopy, v38, v39);
            isEqualToString = objc_msgSend_isEqualToString_(v36, v41, v40);

            if (v27)
            {
            }

            else
            {
            }

            requestorCopy = v37;
            if ((isEqualToString & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v62 = 0;
          }

          ++v25;
        }

        while (v24 != v25);
        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v64, v70, 16);
        v24 = v43;
        accountsCopy = v59;
        requestsCopy = v60;
        v16 = v57;
        v14 = v58;
      }

      while (v43);
    }

    objc_msgSend_remote_publishAdminRequests_withRequestor_adminRequestAccounts_completion_(v16, v44, obj, requestorCopy, accountsCopy, v14);
  }

  else
  {
    v45 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v19, 2, @"Empty adminRequests.");
    (*(v14 + 2))(v14, 0, v45);
  }

LABEL_26:

  v56 = *MEMORY[0x277D85DE8];
}

- (void)adminRequestorForEmail:(id)email completion:(id)completion
{
  emailCopy = email;
  completionCopy = completion;
  v8 = objc_opt_class();
  v10 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v9, @"email == %@", emailCopy);
  v19 = 0;
  v12 = objc_msgSend_queryWithObjectType_predicate_error_(CLSQuery, v11, v8, v10, &v19);
  v13 = v19;

  if (v13)
  {
    completionCopy[2](completionCopy, 0, v13);
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_236FBE800;
    v16[3] = &unk_278A18B50;
    v18 = completionCopy;
    v17 = emailCopy;
    objc_msgSend_setCompletion_(v12, v14, v16);
    objc_msgSend_executeQuery_(self, v15, v12);
  }
}

- (void)childrenOfAdminRequestID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = objc_opt_class();
  v10 = objc_msgSend_predicateForObjectsWithParentObjectID_(CLSDataObserver, v9, dCopy);
  v23 = 0;
  v12 = objc_msgSend_queryWithObjectType_predicate_error_(CLSQuery, v11, v8, v10, &v23);
  v13 = v23;

  if (v13)
  {
    completionCopy[2](completionCopy, 0, v13);
  }

  else
  {
    objc_initWeak(&location, self);
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = sub_236FB0028;
    v20[4] = sub_236FB0038;
    v21 = objc_opt_new();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_236FBEAC4;
    v16[3] = &unk_278A18D30;
    v17 = completionCopy;
    objc_copyWeak(&v19, &location);
    v18 = v20;
    objc_msgSend_setCompletion_(v12, v14, v16);
    objc_msgSend_executeQuery_(self, v15, v12);
    objc_destroyWeak(&v19);

    _Block_object_dispose(v20, 8);
    objc_destroyWeak(&location);
  }
}

- (void)deleteAdminRequestID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FBEF14;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v7 = completionCopy;
  dCopy = d;
  v10 = objc_msgSend_dataServer_(self, v9, v12);
  objc_msgSend_remote_deleteAdminRequestID_completion_(v10, v11, dCopy, v7);
}

- (void)publishAnswersForSurvey:(id)survey completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FBEFF0;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v7 = completionCopy;
  surveyCopy = survey;
  v10 = objc_msgSend_dataServer_(self, v9, v12);
  objc_msgSend_remote_publishSurveyAnswers_completion_(v10, v11, surveyCopy, v7);
}

- (void)fetchSurveyAnswers:(id)answers responderIDs:(id)ds completion:(id)completion
{
  answersCopy = answers;
  dsCopy = ds;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_236FBF120;
  v16[3] = &unk_278A17BC0;
  v11 = completionCopy;
  v17 = v11;
  v15 = objc_msgSend_dataServer_(self, v12, v16);
  if (answersCopy && objc_msgSend_count(answersCopy, v13, v14) || dsCopy && objc_msgSend_count(dsCopy, v13, v14))
  {
    objc_msgSend_remote_fetchSurveyAnswer_responderIDs_completion_(v15, v13, answersCopy, dsCopy, v11);
  }

  else
  {
    (*(v11 + 2))(v11, 1, 0);
  }
}

- (void)relayRequestWithData:(id)data requestType:(unint64_t)type completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v11 = completionCopy;
  if (type == 1)
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_236FBF448;
    v47[3] = &unk_278A17BC0;
    v12 = completionCopy;
    v48 = v12;
    v14 = objc_msgSend_dataServer_(self, v13, v47);
    v15 = MEMORY[0x277CBEBC0];
    v16 = NSTemporaryDirectory();
    v18 = objc_msgSend_fileURLWithPath_isDirectory_(v15, v17, v16, 1);

    v21 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v19, v20);
    v24 = objc_msgSend_UUIDString(v21, v22, v23);
    v26 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v18, v25, v24, 0);

    v29 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v27, v28);
    v32 = objc_msgSend_path(v26, v30, v31);
    FileAtPath_contents_attributes = objc_msgSend_createFileAtPath_contents_attributes_(v29, v33, v32, 0, 0);

    if (FileAtPath_contents_attributes)
    {
      v46 = 0;
      v36 = objc_msgSend_fileHandleForUpdatingURL_error_(MEMORY[0x277CCA9F8], v35, v26, &v46);
      v37 = v46;
      if (v36)
      {
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = sub_236FBF460;
        v42[3] = &unk_278A18D58;
        v45 = v12;
        v38 = v36;
        v43 = v38;
        v44 = v26;
        v39 = MEMORY[0x2383C3E80](v42);
        objc_msgSend_remote_relayRequestWithData_requestType_fileHandle_completion_(v14, v40, dataCopy, 1, v38, v39);
      }

      else
      {
        (*(v12 + 2))(v12, 0, v37);
      }
    }

    else
    {
      v37 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v35, 100, @"failed to create file");
      (*(v12 + 2))(v12, 0, v37);
    }
  }

  else
  {
    v41 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v10, 2, @"Invalid requestType");
    (v11)[2](v11, 0, v41);
  }
}

- (void)saveInsightEvents:(id)events completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FBF794;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v7 = completionCopy;
  eventsCopy = events;
  v10 = objc_msgSend_dataServer_(self, v9, v12);
  objc_msgSend_remote_saveInsightEvents_completion_(v10, v11, eventsCopy, v7);
}

- (void)urlSuitableForOpeningForExpectedURL:(id)l itemID:(id)d ownerName:(id)name zoneName:(id)zoneName completion:(id)completion
{
  completionCopy = completion;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_236FC1284;
  v24[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v25 = v13;
  zoneNameCopy = zoneName;
  nameCopy = name;
  dCopy = d;
  lCopy = l;
  v19 = objc_msgSend_utilityServer_(self, v18, v24);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_236FC129C;
  v22[3] = &unk_278A18DC0;
  v23 = v13;
  v20 = v13;
  objc_msgSend_remote_urlSuitableForOpeningForExpectedURL_itemID_ownerName_zoneName_completion_(v19, v21, lCopy, dCopy, nameCopy, zoneNameCopy, v22);
}

- (void)cloudKitUrlSuitableForOpeningForAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FC1458;
  v15[3] = &unk_278A17BC0;
  v7 = completionCopy;
  v16 = v7;
  assetCopy = asset;
  v10 = objc_msgSend_utilityServer_(self, v9, v15);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_236FC1470;
  v13[3] = &unk_278A18DC0;
  v14 = v7;
  v11 = v7;
  objc_msgSend_remote_cloudKitUrlSuitableForOpeningForAsset_downloadObserver_completion_(v10, v12, assetCopy, assetCopy, v13);
}

- (void)cloudKitThumbnailUrlSuitableForOpeningForAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FC1628;
  v15[3] = &unk_278A17BC0;
  v7 = completionCopy;
  v16 = v7;
  assetCopy = asset;
  v10 = objc_msgSend_utilityServer_(self, v9, v15);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_236FC1640;
  v13[3] = &unk_278A18DC0;
  v14 = v7;
  v11 = v7;
  objc_msgSend_remote_cloudKitThumbnailUrlSuitableForOpeningForAsset_completion_(v10, v12, assetCopy, v13);
}

- (void)cloudKitUrlSuitableForStreamingAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FC17FC;
  v15[3] = &unk_278A17BC0;
  v7 = completionCopy;
  v16 = v7;
  assetCopy = asset;
  v10 = objc_msgSend_utilityServer_(self, v9, v15);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_236FC1818;
  v13[3] = &unk_278A18DE8;
  v14 = v7;
  v11 = v7;
  objc_msgSend_remote_cloudKitUrlSuitableForStreamingAsset_downloadObserver_completion_(v10, v12, assetCopy, assetCopy, v13);
}

- (void)deleteBackingStoreForAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FC1948;
  v15[3] = &unk_278A17BC0;
  v7 = completionCopy;
  v16 = v7;
  assetCopy = asset;
  v10 = objc_msgSend_utilityServer_(self, v9, v15);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_236FC1960;
  v13[3] = &unk_278A18AB8;
  v14 = v7;
  v11 = v7;
  objc_msgSend_remote_deleteBackingStoreForAsset_completion_(v10, v12, assetCopy, v13);
}

- (void)createShareIfNeededForURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FC1A3C;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v7 = completionCopy;
  lCopy = l;
  v10 = objc_msgSend_utilityServer_(self, v9, v12);
  objc_msgSend_remote_createShareIfNeededForURL_completion_(v10, v11, lCopy, v7);
}

- (id)uploadAsset:(id)asset
{
  assetCopy = asset;
  v6 = objc_msgSend_syncUtilityServer_(self, v5, &unk_284A07928);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_236FC1C7C;
  v16 = sub_236FC1C8C;
  v17 = 0;
  v7 = CLSExecutableLinkedOnOrAfter_iOS16_2_macOS_13_1();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_236FC1C94;
  v11[3] = &unk_278A18E10;
  v11[4] = &v12;
  objc_msgSend_remote_uploadAsset_createThumbnailIfNeeded_uploadObserver_completion_(v6, v8, assetCopy, v7 ^ 1u, assetCopy, v11);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

@end