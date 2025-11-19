@interface PHRecentsController
+ (id)indexPathsToInsertIntoCachedRecentCalls:(id)a3 fromBackingRecentCalls:(id)a4;
- (BOOL)canLoadOlderRecentCalls;
- (BOOL)isInitializationBlockQueued;
- (BOOL)isLocalizedSubtitleUnknown:(id)a3;
- (CNContactFormatter)contactFormatter;
- (CNContactStore)contactStore;
- (CNContactStore)suggestedContactStore;
- (NSArray)recentCalls;
- (NSCache)callProviderCache;
- (NSDictionary)blockedStatusCache;
- (NSMutableDictionary)contactCache;
- (NSMutableDictionary)itemCache;
- (NSNumberFormatter)numberFormatter;
- (PHRecentsController)init;
- (PHRecentsController)initWithCallHistoryController:(id)a3 callProviderManager:(id)a4 contactStore:(id)a5 suggestedContactStore:(id)a6 metadataCache:(id)a7;
- (TUCallProviderManager)callProviderManager;
- (TUMetadataCache)metadataCache;
- (id)coalesceRecentCall:(id)a3 withRecentCall:(id)a4;
- (id)contactByHandleForRecentCall:(id)a3 keyDescriptors:(id)a4;
- (id)contactForHandle:(id)a3;
- (id)contactForRecentCall:(id)a3 keyDescriptors:(id)a4;
- (id)contactHandlesForHandle:(id)a3;
- (id)contactHandlesForRecentCalls:(id)a3;
- (id)contactsByHandleForRecentCall:(id)a3 keyDescriptors:(id)a4;
- (id)dialRequestForRecentCall:(id)a3;
- (id)fetchCallProviderForRecentCall:(id)a3;
- (id)fetchContactForContactCardDisplay:(id)a3;
- (id)fetchContactFormatter;
- (id)fetchImageForRecentCall:(id)a3;
- (id)fetchMutableItemForRecentCall:(id)a3;
- (id)fetchMutableItemForRecentCall:(id)a3 numberOfOccurences:(unint64_t)a4;
- (id)fetchNumberFormatter;
- (id)fetchRecentCalls;
- (id)fetchUnifiedContactForID:(id)a3 withDescriptors:(id)a4;
- (id)formattedNameForHandle:(id)a3 countryCode:(id)a4;
- (id)itemForRecentCall:(id)a3 numberOfOccurences:(unint64_t)a4;
- (id)itemForRecentCall:(id)a3 presentationStyle:(int64_t)a4;
- (id)localizedSubtitleForRecentCall:(id)a3;
- (id)localizedSubtitleForRecentEmergencyCall:(id)a3;
- (id)metadataItemsForRecentCall:(id)a3;
- (id)recentCallsChangedFromCachedRecentCalls:(id)a3 callHistoryControllerRecentCalls:(id)a4;
- (id)subtitleForRecentEmergencyCall:(id)a3;
- (id)unknownLabel;
- (id)updatedTitleForTempHandles:(id)a3 countOfExcludedHandles:(int64_t)a4;
- (unint64_t)callHistoryControllerCoalescingStrategy;
- (unint64_t)callHistoryControllerOptions;
- (unint64_t)unreadCallCount;
- (void)addAcceptedIntroductionsNotifier;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)cancelSearchFetchOperations;
- (void)checkRecentMissedCallCount;
- (void)continuousScrollingReachedIndexPath:(int64_t)a3;
- (void)dealloc;
- (void)deleteAllRecentCalls;
- (void)deleteRecentCalls:(id)a3;
- (void)fetchBlockedStatusForRecentCalls:(id)a3;
- (void)fetchContactsForHandles:(id)a3;
- (void)fetchContactsForRecentCalls:(id)a3;
- (void)fetchMetadataForRecentCalls:(id)a3;
- (void)handleCNContactStoreDidChangeNotification:(id)a3;
- (void)handleIDSServiceAvailabilityDidChangeNotification:(id)a3;
- (void)handleNSCurrentLocaleDidChangeNotification:(id)a3;
- (void)handleTUCallHistoryControllerRecentCallsDidChangeNotification:(id)a3;
- (void)handleTUCallHistoryControllerUnreadCallCountDidChangeNotification:(id)a3;
- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)a3;
- (void)handleUIApplicationDidBecomeActiveNotification:(id)a3;
- (void)handleUIApplicationSignificantTimeChangeNotification:(id)a3;
- (void)handleUpdatedContacts;
- (void)loadOlderCallsIfNecessaryForRemainingRowCount:(int64_t)a3;
- (void)logRecentsScrollingEvent:(int64_t)a3;
- (void)markRecentAudioCallsAsRead;
- (void)markRecentCallsAsRead;
- (void)markRecentVideoCallsAsRead;
- (void)notifyDelegatesRecentsController:(id)a3 didChangeCalls:(id)a4;
- (void)notifyDelegatesRecentsController:(id)a3 didChangeUnreadCallCount:(unint64_t)a4;
- (void)notifyDelegatesRecentsController:(id)a3 didCompleteFetchingCalls:(id)a4;
- (void)notifyDelegatesRecentsController:(id)a3 didUpdateCalls:(id)a4;
- (void)notifyDelegatesRecentsControllerDidChangeMessages:(id)a3;
- (void)performDialRequest:(id)a3;
- (void)performDialRequestForRecentCall:(id)a3;
- (void)performJoinRequestForRecentCall:(id)a3 overrideProvider:(id)a4;
- (void)performSynchronousBlock:(id)a3;
- (void)populateCachesForRecentCalls:(id)a3;
- (void)populateItemCacheForRecentCalls:(id)a3;
- (void)providersChangedForProviderManager:(id)a3;
- (void)queryCommTrustBlockedForCalls:(id)a3 completion:(id)a4;
- (void)recentCallsWillShow;
- (void)removeDelegate:(id)a3;
- (void)setContactFormatter:(id)a3;
- (void)setInitializationBlockQueued:(BOOL)a3;
- (void)setNumberFormatter:(id)a3;
- (void)setPreFetchingPredicate:(id)a3;
- (void)setRecentCalls:(id)a3;
- (void)setUnreadCallCount:(unint64_t)a3;
- (void)updateRecentCalls;
- (void)updateReminderUUID:(id)a3 forRecentCall:(id)a4;
@end

@implementation PHRecentsController

+ (id)indexPathsToInsertIntoCachedRecentCalls:(id)a3 fromBackingRecentCalls:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v8 = 0;
  if ([v6 count])
  {
    v9 = 0;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:v9];
      if (v8 >= [v5 count])
      {
        v11 = 0;
      }

      else
      {
        v11 = [v5 objectAtIndexedSubscript:v8];
      }

      if ([v11 isEqual:v10])
      {
        ++v8;
      }

      else
      {
        v12 = [NSIndexPath indexPathForRow:v9 inSection:0];
        [v7 addObject:v12];
      }

      ++v9;
    }

    while (v9 < [v6 count]);
  }

  if (v8 == [v5 count])
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (PHRecentsController)init
{
  [(PHRecentsController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHRecentsController)initWithCallHistoryController:(id)a3 callProviderManager:(id)a4 contactStore:(id)a5 suggestedContactStore:(id)a6 metadataCache:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v45 = a6;
  v16 = a7;
  v48.receiver = self;
  v48.super_class = PHRecentsController;
  v17 = [(PHRecentsController *)&v48 init];
  v18 = v17;
  if (v17)
  {
    v17->_accessorLock._os_unfair_lock_opaque = 0;
    v19 = +[NSMapTable weakToStrongObjectsMapTable];
    delegateToQueue = v18->_delegateToQueue;
    v18->_delegateToQueue = v19;

    v18->_initializationBlockQueued = 1;
    v44 = v13;
    v21 = [NSString stringWithFormat:@"com.apple.calls.queue.%@.%p", objc_opt_class(), v18];
    dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v22 = v43 = v15;
    v23 = dispatch_queue_create([v21 UTF8String], v22);
    serialQueue = v18->_serialQueue;
    v18->_serialQueue = v23;

    dispatch_queue_set_specific(v18->_serialQueue, PHRecentsControllerSerialQueueContextKey, v18, 0);
    objc_storeStrong(&v18->_completionDispatchQueue, &_dispatch_main_q);
    objc_storeStrong(&v18->_callHistoryController, a3);
    v25 = objc_alloc_init(NSCache);
    callProviderCache = v18->_callProviderCache;
    v18->_callProviderCache = v25;

    objc_storeStrong(&v18->_callProviderManager, a4);
    callProviderManager = v18->_callProviderManager;
    v28 = [(PHRecentsController *)v18 serialQueue];
    [(TUCallProviderManager *)callProviderManager addDelegate:v18 queue:v28];

    v29 = objc_alloc_init(NSMutableDictionary);
    contactCache = v18->_contactCache;
    v18->_contactCache = v29;

    objc_storeStrong(&v18->_contactStore, a5);
    objc_storeStrong(&v18->_suggestedContactStore, a6);
    objc_storeStrong(&v18->_metadataCache, a7);
    v31 = [[TUSubtitleProvider alloc] initWithMetadataCache:v16 callProviderManager:v14];
    subtitleProvider = v18->_subtitleProvider;
    v18->_subtitleProvider = v31;

    v33 = objc_alloc_init(NSDictionary);
    blockedStatusCache = v18->_blockedStatusCache;
    v18->_blockedStatusCache = v33;

    v35 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v18->_featureFlags;
    v18->_featureFlags = v35;

    v37 = objc_opt_new();
    analyticsLogger = v18->_analyticsLogger;
    v18->_analyticsLogger = v37;

    v39 = objc_alloc_init(NSMutableDictionary);
    localizedSubtitleCache = v18->_localizedSubtitleCache;
    v18->_localizedSubtitleCache = v39;

    v18->_startedLoadingOlderCalls = 0;
    v41 = v18->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __122__PHRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke;
    block[3] = &unk_100284FD0;
    v47 = v18;
    dispatch_async(v41, block);

    v15 = v43;
    v13 = v44;
  }

  return v18;
}

void __122__PHRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchContactFormatter];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  v5 = [*(a1 + 32) fetchNumberFormatter];
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = *(a1 + 32);
  v10 = *(v9 + 88);
  *(v9 + 88) = v8;

  [*(a1 + 32) updateRecentCalls];
  [*(a1 + 32) setUnreadCallCount:{objc_msgSend(*(*(a1 + 32) + 24), "unreadCallCount")}];
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:*(a1 + 32) selector:"handleCNContactStoreDidChangeNotification:" name:CNContactStoreDidChangeNotification object:0];
  [*(a1 + 32) addAcceptedIntroductionsNotifier];
  [v11 addObserver:*(a1 + 32) selector:"handleIDSServiceAvailabilityDidChangeNotification:" name:IDSServiceAvailabilityDidChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleNSCurrentLocaleDidChangeNotification:" name:NSCurrentLocaleDidChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleTUCallHistoryControllerRecentCallsDidChangeNotification:" name:TUCallHistoryControllerRecentCallsDidChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleTUCallHistoryControllerUnreadCallCountDidChangeNotification:" name:TUCallHistoryControllerUnreadCallCountDidChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleTUMetadataCacheDidFinishUpdatingNotification:" name:TUMetadataCacheDidFinishUpdatingNotification object:*(*(a1 + 32) + 112)];
  [v11 addObserver:*(a1 + 32) selector:"handleUIApplicationSignificantTimeChangeNotification:" name:UIApplicationSignificantTimeChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleUIApplicationDidBecomeActiveNotification:" name:UIApplicationDidBecomeActiveNotification object:0];
  objc_initWeak(&location, *(a1 + 32));
  if (__CUTWeakCXCallDirectoryManagerIdentificationEntriesChangedNotification__pred_CXCallDirectoryManagerIdentificationEntriesChangedNotificationCallKit != -1)
  {
    __122__PHRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_cold_1();
  }

  v12 = __CUTStaticWeak_CXCallDirectoryManagerIdentificationEntriesChangedNotification;
  v13 = *(a1 + 32);
  v14 = *(v13 + 56);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __122__PHRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_2;
  handler[3] = &unk_100286E00;
  objc_copyWeak(&v17, &location);
  v16 = *(a1 + 32);
  notify_register_dispatch(v12, (v13 + 16), v14, handler);
  [*(a1 + 32) setInitializationBlockQueued:0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __122__PHRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (__CUTWeakCXCallDirectoryManagerIdentificationEntriesChangedNotification__pred_CXCallDirectoryManagerIdentificationEntriesChangedNotificationCallKit != -1)
      {
        __122__PHRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_2_cold_1();
      }

      *buf = 136315138;
      v10 = __CUTStaticWeak_CXCallDirectoryManagerIdentificationEntriesChangedNotification;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handling %s by fetching metadata for recent calls", buf, 0xCu);
    }

    v4 = [*(a1 + 32) recentCalls];
    if ([v4 count])
    {
      v5 = [*(a1 + 32) serialQueue];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = __122__PHRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_129;
      v6[3] = &unk_1002852E0;
      v7 = *(a1 + 32);
      v8 = v4;
      dispatch_async(v5, v6);
    }
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  notify_cancel([(PHRecentsController *)self callDirectoryManagerIdentificationEntriesChangedNotificationToken]);
  v4.receiver = self;
  v4.super_class = PHRecentsController;
  [(PHRecentsController *)&v4 dealloc];
}

- (TUCallProviderManager)callProviderManager
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_callProviderManager;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (CNContactStore)contactStore
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_contactStore;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (CNContactStore)suggestedContactStore
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_suggestedContactStore;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (TUMetadataCache)metadataCache
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_metadataCache;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (NSArray)recentCalls
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __34__PHRecentsController_recentCalls__block_invoke;
  v15[3] = &unk_100286E28;
  v15[4] = self;
  v3 = objc_retainBlock(v15);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__7;
  v13 = __Block_byref_object_dispose__7;
  v14 = (v3[2])();
  if (!v10[5] && [(PHRecentsController *)self isInitializationBlockQueued])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __34__PHRecentsController_recentCalls__block_invoke_135;
    v6[3] = &unk_100285048;
    v8 = &v9;
    v7 = v3;
    [(PHRecentsController *)self performSynchronousBlock:v6];
  }

  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

id __34__PHRecentsController_recentCalls__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 120);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t __34__PHRecentsController_recentCalls__block_invoke_135(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

- (unint64_t)unreadCallCount
{
  os_unfair_lock_lock(&self->_accessorLock);
  unreadCallCount = self->_unreadCallCount;
  os_unfair_lock_unlock(&self->_accessorLock);
  return unreadCallCount;
}

- (id)itemForRecentCall:(id)a3 presentationStyle:(int64_t)a4
{
  v6 = a3;
  v7 = -[PHRecentsController itemForRecentCall:numberOfOccurences:](self, "itemForRecentCall:numberOfOccurences:", v6, [v6 numberOfOccurrences]);
  v8 = [v6 serviceProvider];
  if ([v8 isEqualToString:kCHServiceProviderTelephony])
  {
    v9 = [v6 remoteParticipantHandles];
    v10 = [v9 count];
    v11 = v10 != 1;

    if (!a4)
    {
      if (v10 == 1)
      {
        goto LABEL_11;
      }

LABEL_10:
      self = v7;
      goto LABEL_19;
    }
  }

  else
  {

    if (!a4)
    {
      goto LABEL_10;
    }

    v11 = 1;
  }

  v12 = [v6 imageURL];
  if (v12)
  {

    goto LABEL_10;
  }

  if (v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  v13 = [v6 remoteParticipantHandles];
  v14 = [v13 anyObject];

  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = [v6 name];
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = v15;
  v17 = [v6 name];
  v18 = [v17 length];

  if (!v18)
  {
    goto LABEL_17;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __59__PHRecentsController_itemForRecentCall_presentationStyle___block_invoke;
  v23[3] = &unk_1002853C0;
  v25 = &v26;
  v23[4] = self;
  v24 = v14;
  [(PHRecentsController *)self performSynchronousBlock:v23];
  v19 = v27[5];
  if (!v19)
  {
    v20 = [v7 mutableCopy];
    v21 = [v6 name];
    [v20 setLocalizedSubtitle:v21];

    self = [v20 copy];
  }

  _Block_object_dispose(&v26, 8);
  if (v19)
  {
LABEL_17:
    self = v7;
  }

LABEL_19:

  return self;
}

uint64_t __59__PHRecentsController_itemForRecentCall_presentationStyle___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) contactForHandle:*(a1 + 40)];

  return _objc_release_x1();
}

- (id)itemForRecentCall:(id)a3 numberOfOccurences:(unint64_t)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __60__PHRecentsController_itemForRecentCall_numberOfOccurences___block_invoke;
  v7[3] = &unk_1002853C0;
  v10 = &v11;
  v8 = self;
  v4 = a3;
  v9 = v4;
  [(PHRecentsController *)v8 performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __60__PHRecentsController_itemForRecentCall_numberOfOccurences___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) itemCache];
  v2 = [*(a1 + 40) uniqueId];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)coalesceRecentCall:(id)a3 withRecentCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v8 = [(PHRecentsController *)self serialQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __57__PHRecentsController_coalesceRecentCall_withRecentCall___block_invoke;
  v13[3] = &unk_100286130;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __57__PHRecentsController_coalesceRecentCall_withRecentCall___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  v3 = [v2 coalescingStrategy];

  if (v3 == 2)
  {
    v4 = &kCHCoalescingStrategyCollapseIfEqual;
  }

  else
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = &kCHCoalescingStrategyRecents;
  }

  v5 = *v4;
  if (v5)
  {
    v9 = v5;
    v6 = [*(a1 + 40) coalescedCallWithCall:*(a1 + 48) usingStrategy:v5];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)deleteAllRecentCalls
{
  v3 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __43__PHRecentsController_deleteAllRecentCalls__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __43__PHRecentsController_deleteAllRecentCalls__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 deleteAllRecentCalls];
}

- (void)deleteRecentCalls:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __41__PHRecentsController_deleteRecentCalls___block_invoke;
  v7[3] = &unk_1002852E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __41__PHRecentsController_deleteRecentCalls___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  [v2 deleteRecentCalls:*(a1 + 40)];
}

- (void)markRecentCallsAsRead
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Mark recent calls as read", buf, 2u);
  }

  v4 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __44__PHRecentsController_markRecentCallsAsRead__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(v4, block);
}

void __44__PHRecentsController_markRecentCallsAsRead__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 markRecentCallsAsRead];
}

- (void)markRecentAudioCallsAsRead
{
  v3 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__PHRecentsController_markRecentAudioCallsAsRead__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __49__PHRecentsController_markRecentAudioCallsAsRead__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 markRecentAudioCallsAsRead];
}

- (void)markRecentVideoCallsAsRead
{
  v3 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__PHRecentsController_markRecentVideoCallsAsRead__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __49__PHRecentsController_markRecentVideoCallsAsRead__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 markRecentVideoCallsAsRead];
}

- (void)updateReminderUUID:(id)a3 forRecentCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating reminderUUID: %@, for recent call: %@", buf, 0x16u);
  }

  v9 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __56__PHRecentsController_updateReminderUUID_forRecentCall___block_invoke;
  block[3] = &unk_1002853E8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __56__PHRecentsController_updateReminderUUID_forRecentCall___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  [v2 updateReminderUUID:*(a1 + 40) forRecentCall:*(a1 + 48)];
}

- (id)contactForRecentCall:(id)a3 keyDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7;
  v25 = __Block_byref_object_dispose__7;
  v26 = 0;
  v8 = [v6 validRemoteParticipantHandles];
  v9 = [v8 count];

  if (v9 == 1)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __59__PHRecentsController_contactForRecentCall_keyDescriptors___block_invoke;
    v17[3] = &unk_100286E50;
    v17[4] = self;
    v18 = v6;
    v19 = v7;
    v20 = &v21;
    [(PHRecentsController *)self performSynchronousBlock:v17];
  }

  v10 = v22[5];
  if (!v10)
  {
    v11 = [(PHRecentsController *)self metadataCache];
    v12 = [CNMutableContact contactForRecentCall:v6 metadataCache:v11];
    v13 = [v12 copy];
    v14 = v22[5];
    v22[5] = v13;

    v10 = v22[5];
  }

  v15 = v10;
  _Block_object_dispose(&v21, 8);

  return v15;
}

void __59__PHRecentsController_contactForRecentCall_keyDescriptors___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) contactsByHandleForRecentCall:*(a1 + 40) keyDescriptors:*(a1 + 48)];
  v2 = [v7 allValues];
  v3 = [v2 firstObject];
  v4 = [v3 firstObject];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)contactByHandleForRecentCall:(id)a3 keyDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = __67__PHRecentsController_contactByHandleForRecentCall_keyDescriptors___block_invoke;
  v15 = &unk_100286E50;
  v16 = self;
  v8 = v6;
  v17 = v8;
  v9 = v7;
  v18 = v9;
  v19 = &v20;
  [(PHRecentsController *)self performSynchronousBlock:&v12];
  v10 = [v21[5] copy];

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __67__PHRecentsController_contactByHandleForRecentCall_keyDescriptors___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactsByHandleForRecentCall:*(a1 + 40) keyDescriptors:*(a1 + 48)];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v2 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v2 objectForKeyedSubscript:v11];
          v13 = [v12 firstObject];
          [*(*(*(a1 + 56) + 8) + 40) setObject:v13 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)addAcceptedIntroductionsNotifier
{
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = __55__PHRecentsController_addAcceptedIntroductionsNotifier__block_invoke;
  v8 = &unk_1002857A8;
  objc_copyWeak(&v9, &location);
  v3 = [CNCoreRecentsChangeNotifier acceptedIntroductionsNotifierWithBlock:&v5];
  acceptedIntroductionsNotifier = self->_acceptedIntroductionsNotifier;
  self->_acceptedIntroductionsNotifier = v3;

  [(CNCoreRecentsChangeNotifier *)self->_acceptedIntroductionsNotifier startObserving:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__PHRecentsController_addAcceptedIntroductionsNotifier__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUpdatedContacts];
}

- (id)dialRequestForRecentCall:(id)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __48__PHRecentsController_dialRequestForRecentCall___block_invoke;
  v7[3] = &unk_1002856E0;
  v4 = a3;
  v9 = self;
  v10 = &v11;
  v8 = v4;
  [(PHRecentsController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __48__PHRecentsController_dialRequestForRecentCall___block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempting to create a dial request for recent call %@", &v12, 0xCu);
  }

  v4 = [*(a1 + 40) callProviderManager];
  v5 = [v4 dialRequestForRecentCall:*(a1 + 32)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = [*(a1 + 32) validRemoteParticipantHandles];
    v9 = [v8 anyObject];

    if (v9)
    {
      v10 = [*(a1 + 40) contactForHandle:v9];
      v11 = [v10 identifier];
      [*(*(*(a1 + 48) + 8) + 40) setContactIdentifier:v11];
    }

    [*(*(*(a1 + 48) + 8) + 40) setOriginatingUIType:8];
  }

  else
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __48__PHRecentsController_dialRequestForRecentCall___block_invoke_cold_1((a1 + 32), v9);
    }
  }
}

- (void)performDialRequest:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self presentScreenTimeShield];
  if (v5 && (v6 = v5, +[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), [v7 callFilterController], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "shouldRestrictDialRequest:performSynchronously:", v4, 1), v8, v7, v6, v9))
  {
    v10 = [(PHRecentsController *)self presentScreenTimeShield];
    (v10)[2](v10, v4);
  }

  else
  {
    v11 = +[TUCallCenter sharedInstance];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __42__PHRecentsController_performDialRequest___block_invoke;
    v12[3] = &unk_100285568;
    v13 = v4;
    [v11 launchAppForDialRequest:v13 completion:v12];
  }
}

void __42__PHRecentsController_performDialRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__PHRecentsController_performDialRequest___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (void)performDialRequestForRecentCall:(id)a3
{
  v4 = [(PHRecentsController *)self dialRequestForRecentCall:a3];
  if (v4)
  {
    [(PHRecentsController *)self performDialRequest:v4];
  }

  _objc_release_x1();
}

- (void)performJoinRequestForRecentCall:(id)a3 overrideProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PHRecentsController -performJoinRequestForRecentCall", buf, 2u);
  }

  v9 = [(PHRecentsController *)self featureFlags];
  v10 = [v9 callHistorySearchEnabled];

  if (v10)
  {
    v11 = [(PHRecentsController *)self callProviderManager];
    v12 = [v11 joinConversationRequestForRecentCall:v6];

    if (v12)
    {
      [v12 setOriginatingUIType:8];
      if (v7)
      {
        [v12 setProvider:v7];
      }

      v13 = +[TUCallCenter sharedInstance];
      [v13 launchAppForJoinRequest:v12];
      goto LABEL_32;
    }

    v13 = PHDefaultLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    *buf = 138412290;
    v44 = v6;
LABEL_31:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Could not create join request for recent call: %@", buf, 0xCu);
    goto LABEL_32;
  }

  v36 = self;
  v14 = [v6 validRemoteParticipantHandles];
  v12 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v14 count]);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = v6;
  v15 = [v6 validRemoteParticipantHandles];
  v16 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v38 + 1) + 8 * i) tuHandle];
        if (v20)
        {
          v21 = [TUConversationMember alloc];
          v22 = [NSSet setWithObject:v20];
          v23 = [v21 initWithHandles:v22];

          [v12 addObject:v23];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v17);
  }

  if (![v12 count])
  {
    v13 = PHDefaultLog();
    v6 = v37;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    *buf = 138412290;
    v44 = v37;
    goto LABEL_31;
  }

  v13 = [[TUJoinConversationRequest alloc] initWithRemoteMembers:v12 originatingUIType:8];
  v6 = v37;
  -[NSObject setVideo:](v13, "setVideo:", [v37 mediaType] == 2);
  -[NSObject setVideoEnabled:](v13, "setVideoEnabled:", [v37 mediaType] == 2);
  [v13 setOriginatingUIType:8];
  if (v7)
  {
    [v13 setProvider:?];
  }

  v24 = [(PHRecentsController *)v36 callProviderManager];
  v25 = [v24 faceTimeProvider];
  v26 = [v37 outgoingLocalParticipantUUID];
  v27 = [v25 senderIdentityForAccountUUID:v26];

  if (v27)
  {
    v28 = [v27 handle];
    [v13 setCallerID:v28];
  }

  v29 = +[TUCallProviderManager invitationPreferencesForRecentCall];
  [v13 setInvitationPreferences:v29];

  v30 = [(PHRecentsController *)v36 presentScreenTimeShield];
  if (v30 && (v31 = v30, +[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v32 = objc_claimAutoreleasedReturnValue(), [v32 callFilterController], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "shouldRestrictJoinConversationRequest:performSynchronously:", v13, 1), v33, v6 = v37, v32, v31, v34))
  {
    v35 = [(PHRecentsController *)v36 presentScreenTimeShield];
    (v35)[2](v35, v13);
  }

  else
  {
    v35 = +[TUCallCenter sharedInstance];
    [v35 launchAppForJoinRequest:v13];
  }

LABEL_32:
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v9 = a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v7 = [(PHRecentsController *)self delegateToQueue];
  if (v9)
  {
    v8 = v9;
  }

  else
  {
    v8 = &_dispatch_main_q;
  }

  [v7 setObject:v8 forKey:v6];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = [(PHRecentsController *)self delegateToQueue];
  [v5 removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)notifyDelegatesRecentsController:(id)a3 didUpdateCalls:(id)a4
{
  v6 = a3;
  v18 = a4;
  v7 = [(PHRecentsController *)self featureFlags];
  v8 = [v7 phoneRecentsAvatarsEnabled];

  if (v8)
  {
    os_unfair_lock_assert_owner(&self->_accessorLock);
    v17 = self;
    v9 = [(PHRecentsController *)self delegateToQueue];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = v10;
    v12 = *v25;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v9 objectForKey:v14];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __71__PHRecentsController_notifyDelegatesRecentsController_didUpdateCalls___block_invoke;
          block[3] = &unk_1002853E8;
          block[4] = v14;
          v22 = v6;
          v23 = v18;
          dispatch_async(v15, block);

          v16 = &v22;
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }

          v15 = [v9 objectForKey:v14];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = __71__PHRecentsController_notifyDelegatesRecentsController_didUpdateCalls___block_invoke_2;
          v19[3] = &unk_1002853E8;
          v19[4] = v14;
          v20[0] = v6;
          v20[1] = v17;
          dispatch_async(v15, v19);
          v16 = v20;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v11)
      {
LABEL_14:

        break;
      }
    }
  }
}

- (void)notifyDelegatesRecentsController:(id)a3 didCompleteFetchingCalls:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PHRecentsController *)self featureFlags];
  v9 = [v8 callHistorySearchEnabled];

  if (v9)
  {
    os_unfair_lock_assert_owner(&self->_accessorLock);
    v10 = [(PHRecentsController *)self delegateToQueue];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            v16 = [v10 objectForKey:v15];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = __81__PHRecentsController_notifyDelegatesRecentsController_didCompleteFetchingCalls___block_invoke;
            block[3] = &unk_1002853E8;
            block[4] = v15;
            v18 = v6;
            v19 = v7;
            dispatch_async(v16, block);
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }
}

- (void)notifyDelegatesRecentsController:(id)a3 didChangeCalls:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  v8 = [(PHRecentsController *)self delegateToQueue];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v8 objectForKey:v13];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __71__PHRecentsController_notifyDelegatesRecentsController_didChangeCalls___block_invoke;
          block[3] = &unk_1002853E8;
          block[4] = v13;
          v16 = v6;
          v17 = v7;
          dispatch_async(v14, block);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)notifyDelegatesRecentsController:(id)a3 didChangeUnreadCallCount:(unint64_t)a4
{
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  v7 = [(PHRecentsController *)self delegateToQueue];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [v7 objectForKey:v12];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __81__PHRecentsController_notifyDelegatesRecentsController_didChangeUnreadCallCount___block_invoke;
          block[3] = &unk_100286180;
          block[4] = v12;
          v15 = v6;
          v16 = a4;
          dispatch_async(v13, block);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)notifyDelegatesRecentsControllerDidChangeMessages:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  v5 = [(PHRecentsController *)self delegateToQueue];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v5 objectForKey:v10];
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = __73__PHRecentsController_notifyDelegatesRecentsControllerDidChangeMessages___block_invoke;
          v12[3] = &unk_1002852E0;
          v12[4] = v10;
          v13 = v4;
          dispatch_async(v11, v12);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (NSCache)callProviderCache
{
  v3 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  callProviderCache = self->_callProviderCache;

  return callProviderCache;
}

- (NSDictionary)blockedStatusCache
{
  v3 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  blockedStatusCache = self->_blockedStatusCache;

  return blockedStatusCache;
}

- (NSMutableDictionary)contactCache
{
  v3 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  contactCache = self->_contactCache;

  return contactCache;
}

- (CNContactFormatter)contactFormatter
{
  v3 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  contactFormatter = self->_contactFormatter;

  return contactFormatter;
}

- (void)setContactFormatter:(id)a3
{
  v8 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  contactFormatter = self->_contactFormatter;
  p_contactFormatter = &self->_contactFormatter;
  if (contactFormatter != v8)
  {
    objc_storeStrong(p_contactFormatter, a3);
  }
}

- (BOOL)isInitializationBlockQueued
{
  os_unfair_lock_lock(&self->_accessorLock);
  initializationBlockQueued = self->_initializationBlockQueued;
  os_unfair_lock_unlock(&self->_accessorLock);
  return initializationBlockQueued;
}

- (void)setInitializationBlockQueued:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_initializationBlockQueued != v3)
  {
    self->_initializationBlockQueued = v3;
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (NSMutableDictionary)itemCache
{
  v3 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  itemCache = self->_itemCache;

  return itemCache;
}

- (NSNumberFormatter)numberFormatter
{
  v3 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  numberFormatter = self->_numberFormatter;

  return numberFormatter;
}

- (void)setNumberFormatter:(id)a3
{
  v8 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  numberFormatter = self->_numberFormatter;
  p_numberFormatter = &self->_numberFormatter;
  if (numberFormatter != v8)
  {
    objc_storeStrong(p_numberFormatter, a3);
  }
}

- (void)setRecentCalls:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  recentCalls = self->_recentCalls;
  if (recentCalls != v7 && ![(NSArray *)recentCalls isEqualToArray:v7])
  {
    v5 = [(NSArray *)v7 copy];
    v6 = self->_recentCalls;
    self->_recentCalls = v5;

    [(PHRecentsController *)self notifyDelegatesRecentsController:self didChangeCalls:self->_recentCalls];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setUnreadCallCount:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_unreadCallCount != a3)
  {
    self->_unreadCallCount = a3;
    [(PHRecentsController *)self notifyDelegatesRecentsController:self didChangeUnreadCallCount:a3];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setPreFetchingPredicate:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_preFetchingPredicate != v6)
  {
    objc_storeStrong(&self->_preFetchingPredicate, a3);
    v5 = [(PHRecentsController *)self callHistoryController];
    [v5 setPreFetchingPredicate:v6];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (id)contactForHandle:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  [(PHRecentsController *)self contactHandlesForHandle:v4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(PHRecentsController *)self contactCache];
        v13 = [v12 objectForKeyedSubscript:v11];
        v14 = [v13 value];

        if (v14)
        {
          v15 = v6;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = PHDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Handle not found in cache: %@", buf, 0xCu);
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (id)contactsByHandleForRecentCall:(id)a3 keyDescriptors:(id)a4
{
  v6 = a3;
  v54 = a4;
  v7 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v7);

  v53 = objc_alloc_init(NSMutableOrderedSet);
  v48 = objc_alloc_init(NSMutableDictionary);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v44 = v6;
  obj = [v6 validRemoteParticipantHandles];
  v47 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v47)
  {
    v55 = 0;
    v46 = *v69;
    v8 = v53;
    do
    {
      v9 = 0;
      do
      {
        if (*v69 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v49 = v9;
        v51 = *(*(&v68 + 1) + 8 * v9);
        v10 = [(PHRecentsController *)self contactHandlesForHandle:?];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v64 objects:v74 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v65;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v65 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v64 + 1) + 8 * i);
              v16 = [(PHRecentsController *)self contactCache];
              v17 = [v16 objectForKeyedSubscript:v15];

              if (v17 && (([v17 value], (v18 = objc_claimAutoreleasedReturnValue()) == 0) || (v19 = v18, objc_msgSend(v17, "value"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "areKeysAvailable:", v54), v20, v8 = v53, v19, v21)))
              {
                v22 = [v17 value];
                if (v22)
                {
                  v23 = v55;
                  if (!v55)
                  {
                    v23 = objc_alloc_init(NSMutableDictionary);
                  }

                  v55 = v23;
                  v24 = [v23 objectForKeyedSubscript:v51];
                  if (!v24)
                  {
                    v24 = +[NSMutableArray array];
                    [v55 setObject:v24 forKeyedSubscript:v51];
                  }

                  [v24 addObject:v22];
                }
              }

              else
              {
                [v8 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v64 objects:v74 count:16];
          }

          while (v12);
        }

        [v48 setObject:v10 forKeyedSubscript:v51];

        v9 = v49 + 1;
      }

      while (v49 + 1 != v47);
      v47 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v47);
  }

  else
  {
    v55 = 0;
    v8 = v53;
  }

  if ([v8 count])
  {
    v25 = [(PHRecentsController *)self contactStore];
    v26 = [v8 array];
    v27 = [v25 contactsForHandles:v26 keyDescriptors:v54];

    if (v27)
    {
      v28 = v55;
      if (!v55)
      {
        v28 = objc_alloc_init(NSMutableDictionary);
      }

      v55 = v28;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v50 = [v48 allKeys];
      v29 = [v50 countByEnumeratingWithState:&v60 objects:v73 count:16];
      if (v29)
      {
        v30 = v29;
        v52 = *v61;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v61 != v52)
            {
              objc_enumerationMutation(v50);
            }

            v32 = *(*(&v60 + 1) + 8 * j);
            v33 = objc_alloc_init(NSMutableOrderedSet);
            v34 = [v48 objectForKeyedSubscript:v32];
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v35 = [v34 countByEnumeratingWithState:&v56 objects:v72 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v57;
              do
              {
                for (k = 0; k != v36; k = k + 1)
                {
                  if (*v57 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = [v27 objectForKeyedSubscript:*(*(&v56 + 1) + 8 * k)];
                  if ([v39 count])
                  {
                    [v33 addObjectsFromArray:v39];
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v56 objects:v72 count:16];
              }

              while (v36);
            }

            v40 = [v55 objectForKeyedSubscript:v32];
            if (!v40)
            {
              v40 = +[NSMutableArray array];
              [v55 setObject:v40 forKeyedSubscript:v32];
            }

            v41 = [v33 array];
            [v40 addObjectsFromArray:v41];
          }

          v30 = [v50 countByEnumeratingWithState:&v60 objects:v73 count:16];
        }

        while (v30);
      }
    }

    v8 = v53;
  }

  v42 = [v55 copy];

  return v42;
}

- (id)contactHandlesForHandle:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [v3 value];
  if ([v5 length])
  {
    [v4 addObject:v5];
    v6 = [v3 normalizedValue];
    if ([v6 length])
    {
      v7 = [v3 value];
      v8 = [v6 isEqualToString:v7];

      if ((v8 & 1) == 0)
      {
        [v4 addObject:v6];
      }
    }
  }

  v9 = [v4 copy];

  return v9;
}

- (id)contactHandlesForRecentCalls:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = [v10 validRemoteParticipantHandles];
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [(PHRecentsController *)self contactHandlesForHandle:*(*(&v20 + 1) + 8 * j)];
              [v5 addObjectsFromArray:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v17 = [v5 array];

  return v17;
}

- (id)formattedNameForHandle:(id)a3 countryCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 type];
  v8 = PHDefaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 == 2)
  {
    if (v9)
    {
      v10 = [v5 value];
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "     - we'll format the destinationID '%@' with the country code '%@'", &v16, 0x16u);
    }

    v11 = [v5 value];
    v12 = TUFormattedPhoneNumber();

    if (!v12)
    {
LABEL_9:
      v14 = +[NSBundle mainBundle];
      v12 = [v14 localizedStringForKey:@"UNKNOWN_CALLER" value:&stru_10028F310 table:@"PHRecents"];
    }
  }

  else
  {
    if (v9)
    {
      v13 = [v5 value];
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "     - handle can't/shouldn't be formatted as a phone number, so using the unmodified destination ID '%@'", &v16, 0xCu);
    }

    v12 = [v5 value];
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  return v12;
}

- (id)fetchCallProviderForRecentCall:(id)a3
{
  v5 = a3;
  v6 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v5 serviceProvider];
  v8 = [(PHRecentsController *)self callProviderManager];
  if (v7)
  {
    v9 = [(PHRecentsController *)self callProviderCache];
    v10 = [v9 objectForKey:v7];

    if (v10)
    {
      goto LABEL_11;
    }

    v11 = [v8 providerForRecentCall:v5];
    if (v11)
    {
      v10 = v11;
      v12 = [(PHRecentsController *)self callProviderCache];
      [v12 setObject:v10 forKey:v7];

      goto LABEL_11;
    }

    v15 = PHDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could not retrieve a call provider for the specified recent call: %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = [NSString stringWithFormat:@"Service provider is nil for the specified recent call: %@", v5];
    NSLog(@"** TUAssertion failure: %@", v13);

    if (_TUAssertShouldCrashApplication())
    {
      v14 = +[NSAssertionHandler currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PHRecentsController.m" lineNumber:1039 description:{@"Service provider is nil for the specified recent call: %@", v5}];
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)fetchContactsForRecentCalls:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PHRecentsController *)self contactHandlesForRecentCalls:v4];
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = [v4 count];
    v10 = 2048;
    v11 = [v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching contacts for %lu calls using %lu handles", &v8, 0x16u);
  }

  [(PHRecentsController *)self fetchContactsForHandles:v6];
}

- (id)fetchContactForContactCardDisplay:(id)a3
{
  v4 = a3;
  if ([v4 canExceedUnifyingThreshold])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__7;
    v16 = __Block_byref_object_dispose__7;
    v17 = 0;
    v5 = [(PHRecentsController *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __57__PHRecentsController_fetchContactForContactCardDisplay___block_invoke;
    block[3] = &unk_1002853C0;
    v10 = v4;
    v11 = &v12;
    block[4] = self;
    v6 = v4;
    dispatch_sync(v5, block);

    v7 = v13[5];
    if (!v7)
    {
      v7 = v6;
    }

    v4 = v7;

    _Block_object_dispose(&v12, 8);
  }

  return v4;
}

void __57__PHRecentsController_fetchContactForContactCardDisplay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = +[CNContactViewController descriptorForRequiredKeys];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  v6 = [v2 fetchUnifiedContactForID:v3 withDescriptors:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)fetchUnifiedContactForID:(id)a3 withDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(PHRecentsController *)self contactStore];
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138740227;
    v25 = v6;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fetching unified contact for handle %{sensitive}@ using contact store %@", buf, 0x16u);
  }

  v11 = v7;
  if (!v7)
  {
    if (_defaultContactsKeyDescriptors_onceToken != -1)
    {
      [PHRecentsController fetchUnifiedContactForID:withDescriptors:];
    }

    v11 = _defaultContactsKeyDescriptors_keyDescriptors;
  }

  v23 = 0;
  v12 = [v9 unifiedContactWithIdentifier:v6 keysToFetch:v11 error:&v23];
  v13 = v23;
  if (!v7)
  {
  }

  v14 = [TUOptionalObject alloc];
  if (v13)
  {
    v15 = [v14 initWithValue:0];
    v16 = [(PHRecentsController *)self contactCache];
    [v16 setObject:v15 forKeyedSubscript:v6];

    v17 = PHDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PHRecentsController fetchUnifiedContactForID:v6 withDescriptors:v17];
    }

    v18 = 0;
  }

  else
  {
    v19 = [v14 initWithValue:v12];
    v20 = [(PHRecentsController *)self contactCache];
    [v20 setObject:v19 forKeyedSubscript:v6];

    v21 = PHDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740227;
      v25 = v12;
      v26 = 2117;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found unified contact %{sensitive}@ for contact handle %{sensitive}@", buf, 0x16u);
    }

    v18 = v12;
  }

  return v18;
}

- (void)fetchContactsForHandles:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v13 = [(PHRecentsController *)self contactCache];
        v14 = [v13 objectForKeyedSubscript:v12];

        if (!v14)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v15 = [(PHRecentsController *)self contactStore];
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v6 count];
      *buf = 134218242;
      v44 = v17;
      v45 = 2112;
      v46 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fetching contacts for %lu handles using contact store %@", buf, 0x16u);
    }

    v18 = [v6 allObjects];
    v32 = v7;
    if (_defaultContactsKeyDescriptors_onceToken != -1)
    {
      [PHRecentsController fetchUnifiedContactForID:withDescriptors:];
    }

    v31 = v15;
    v19 = [v15 contactsForHandles:v18 keyDescriptors:_defaultContactsKeyDescriptors_keyDescriptors alwaysUnifyLabeledValues:0];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = v6;
    obj = v6;
    v20 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v35 + 1) + 8 * j);
          v25 = [v19 objectForKeyedSubscript:v24];
          v26 = [v25 firstObject];
          if ([v25 count] >= 2)
          {
            v27 = PHDefaultLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [v25 count];
              *buf = 134218499;
              v44 = v28;
              v45 = 2117;
              v46 = v24;
              v47 = 2117;
              v48 = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Found %lu contacts for contact handle %{sensitive}@; caching the first contact %{sensitive}@", buf, 0x20u);
            }
          }

          v29 = [[TUOptionalObject alloc] initWithValue:v26];
          v30 = [(PHRecentsController *)self contactCache];
          [v30 setObject:v29 forKeyedSubscript:v24];
        }

        v21 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
      }

      while (v21);
    }

    v7 = v32;
    v6 = v33;
  }
}

- (id)fetchContactFormatter
{
  v2 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v2);

  v3 = objc_alloc_init(CNContactFormatter);
  [v3 setStyle:0];

  return v3;
}

- (id)fetchImageForRecentCall:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 ttyType];
  if (v6 == 2)
  {
    v7 = +[UIImage recentsTTYRelayGlyphImage];
LABEL_5:
    v8 = v7;
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  if (v6 == 1)
  {
    v7 = +[UIImage recentsTTYDirectGlyphImage];
    goto LABEL_5;
  }

LABEL_6:
  v9 = [v4 callStatus];
  if (v9 != kCHCallStatusConnectedOutgoing)
  {
    v10 = [v4 callStatus];
    if (v10 != kCHCallStatusCancelled)
    {
      goto LABEL_11;
    }
  }

  v11 = [v4 mediaType];
  if (v11 == 2)
  {
    v12 = +[UIImage recentsOutgoingVideoCallGlyphImage];
    goto LABEL_13;
  }

  if (v11 != 1)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_14;
  }

  v12 = +[UIImage recentsOutgoingAudioCallGlyphImage];
LABEL_13:
  v8 = v12;
LABEL_14:

  return v8;
}

- (id)fetchMutableItemForRecentCall:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = -[PHRecentsController fetchMutableItemForRecentCall:numberOfOccurences:](self, "fetchMutableItemForRecentCall:numberOfOccurences:", v4, [v4 numberOfOccurrences]);

  return v6;
}

- (id)updatedTitleForTempHandles:(id)a3 countOfExcludedHandles:(int64_t)a4
{
  v6 = a3;
  if (![v6 length])
  {
    goto LABEL_6;
  }

  if (a4 == 1)
  {
    v7 = TUBundle();
    v8 = [v7 localizedStringForKey:@"%@_AND_ONE_OTHER" value:&stru_10028F310 table:@"TelephonyUtilities"];
    v9 = [NSString stringWithFormat:v8, v6];

    goto LABEL_7;
  }

  if (a4 >= 2)
  {
    v10 = TUBundle();
    v11 = [v10 localizedStringForKey:@"%@_AND_%@_OTHERS" value:&stru_10028F310 table:@"TelephonyUtilities"];
    v12 = [(PHRecentsController *)self numberFormatter];
    v13 = [NSNumber numberWithInteger:a4];
    v14 = [v12 stringFromNumber:v13];
    v9 = [NSString stringWithFormat:v11, v6, v14];
  }

  else
  {
LABEL_6:
    v9 = v6;
  }

LABEL_7:

  return v9;
}

- (id)fetchMutableItemForRecentCall:(id)a3 numberOfOccurences:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_alloc_init(PKMutableRecentsItem);
  v9 = [v6 validRemoteParticipantHandles];
  v10 = [v9 count];
  v11 = [v6 countOfExcludedHandles];
  v12 = v11;
  v158 = v9;
  if (v10 || v11 < 1)
  {
    if (v10 > 1)
    {
      v150 = v11;
      v154 = v8;
      v156 = a4;
      v160 = v6;
      v23 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      v24 = v9;
      v25 = [v24 countByEnumeratingWithState:&v161 objects:v169 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v162;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v162 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v161 + 1) + 8 * i);
            v30 = [(PHRecentsController *)self contactForHandle:v29];
            if (v30)
            {
              v31 = [(PHRecentsController *)self contactFormatter];
              v32 = [v31 stringFromContact:v30];

              if (v32)
              {
                [v23 addObject:v32];
              }

              else
              {
                v34 = [v160 isoCountryCode];
                v35 = [(PHRecentsController *)self formattedNameForHandle:v29 countryCode:v34];
                [v23 addObject:v35];
              }
            }

            else
            {
              v32 = [v160 isoCountryCode];
              v33 = [(PHRecentsController *)self formattedNameForHandle:v29 countryCode:v32];
              [v23 addObject:v33];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v161 objects:v169 count:16];
        }

        while (v26);
      }

      v36 = +[NSMutableString string];
      v37 = [v23 count];
      switch(v37)
      {
        case 3:
          v53 = TUBundle();
          v54 = v53;
          v146 = v36;
          if (v150 == 1)
          {
            [v53 localizedStringForKey:@"%@_%@_%@_AND_ONE_OTHER" value:&stru_10028F310 table:@"TelephonyUtilities"];
            v93 = v92 = v36;
            v94 = [v23 objectAtIndexedSubscript:0];
            v95 = [v23 objectAtIndexedSubscript:1];
            v96 = [v23 objectAtIndexedSubscript:2];
            v97 = [NSString stringWithFormat:v93, v94, v95, v96];

            [v92 appendString:v97];
            v54 = v97;
          }

          else if (v150)
          {
            v143 = [v53 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHERS" value:&stru_10028F310 table:@"TelephonyUtilities"];
            v142 = [v23 objectAtIndexedSubscript:0];
            v108 = [v23 objectAtIndexedSubscript:1];
            v109 = [v23 objectAtIndexedSubscript:2];
            v110 = [(PHRecentsController *)self numberFormatter];
            v111 = [NSNumber numberWithInteger:v150];
            v112 = [v110 stringFromNumber:v111];
            v113 = [NSString stringWithFormat:v143, v142, v108, v109, v112];

            [v146 appendString:v113];
            v54 = v113;
          }

          else
          {
            v55 = [v53 localizedStringForKey:@"%@_%@_AND_%@" value:&stru_10028F310 table:@"TelephonyUtilities"];
            v56 = [v23 objectAtIndexedSubscript:0];
            v57 = [v23 objectAtIndexedSubscript:1];
            v58 = [v23 objectAtIndexedSubscript:2];
            v59 = [NSString stringWithFormat:v55, v56, v57, v58];
            [v146 appendString:v59];
          }

          v6 = v160;
          v8 = v154;

          v114 = TUBundle();
          v115 = [v114 localizedStringForKey:@"%@_%@_AND_%@" value:&stru_10028F310 table:@"TelephonyUtilities"];
          v116 = [v23 objectAtIndexedSubscript:0];
          v117 = [v23 objectAtIndexedSubscript:1];
          v118 = [v23 objectAtIndexedSubscript:2];
          v16 = [NSString stringWithFormat:v115, v116, v117, v118];

          v36 = v146;
          break;
        case 2:
          v48 = TUBundle();
          v144 = v48;
          if (v150 == 1)
          {
            v49 = [v48 localizedStringForKey:@"%@_%@_AND_ONE_OTHER" value:&stru_10028F310 table:@"TelephonyUtilities"];
            v50 = [v23 objectAtIndexedSubscript:0];
            v51 = [v23 objectAtIndexedSubscript:1];
            v52 = [NSString stringWithFormat:v49, v50, v51];
            v6 = v160;
            v8 = v154;
          }

          else
          {
            v6 = v160;
            v8 = v154;
            if (v150)
            {
              v49 = [v48 localizedStringForKey:@"%@_%@_AND_%@_OTHERS" value:&stru_10028F310 table:@"TelephonyUtilities"];
              v50 = [v23 objectAtIndexedSubscript:0];
              v51 = [v23 objectAtIndexedSubscript:1];
              v141 = [(PHRecentsController *)self numberFormatter];
              v102 = [NSNumber numberWithInteger:v150];
              [v141 stringFromNumber:v102];
              v103 = v148 = v36;
              v52 = [NSString stringWithFormat:v49, v50, v51, v103];

              v36 = v148;
            }

            else
            {
              v49 = [v48 localizedStringForKey:@"%@_AND_%@" value:&stru_10028F310 table:@"TelephonyUtilities"];
              v50 = [v23 objectAtIndexedSubscript:0];
              v51 = [v23 objectAtIndexedSubscript:1];
              v52 = [NSString stringWithFormat:v49, v50, v51];
            }
          }

          [v36 appendString:v52];
          v104 = TUBundle();
          v105 = [v104 localizedStringForKey:@"%@_AND_%@" value:&stru_10028F310 table:@"TelephonyUtilities"];
          v106 = [v23 objectAtIndexedSubscript:0];
          v107 = [v23 objectAtIndexedSubscript:1];
          v16 = [NSString stringWithFormat:v105, v106, v107];

          break;
        case 1:
          v6 = v160;
          v8 = v154;
          if (v150 == 1)
          {
            v98 = v36;
            v38 = TUBundle();
            v99 = [v38 localizedStringForKey:@"%@_AND_ONE_OTHER" value:&stru_10028F310 table:@"TelephonyUtilities"];
            v100 = [v23 objectAtIndexedSubscript:0];
            v101 = [NSString stringWithFormat:v99, v100];
            [v98 appendString:v101];

            v36 = v98;
          }

          else
          {
            if (v150)
            {
              v145 = TUBundle();
              v119 = [v145 localizedStringForKey:@"%@_AND_%@_OTHERS" value:&stru_10028F310 table:@"TelephonyUtilities"];
              v120 = [v23 objectAtIndexedSubscript:0];
              v121 = [(PHRecentsController *)self numberFormatter];
              [NSNumber numberWithInteger:v150];
              v122 = v149 = v36;
              v123 = [v121 stringFromNumber:v122];
              v124 = v119;
              v38 = [NSString stringWithFormat:v119, v120, v123];

              v36 = v149;
            }

            else
            {
              v38 = [v23 objectAtIndexedSubscript:0];
            }

            [v36 appendString:v38];
          }

          v16 = [v23 objectAtIndexedSubscript:0];
          break;
        default:
          if (v37 < 4)
          {
            v16 = 0;
          }

          else
          {
            v147 = v36;
            v60 = [v23 count] + v150 - 3;
            v151 = TUBundle();
            v61 = [v151 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHER" value:&stru_10028F310 table:@"TelephonyUtilities"];
            v62 = [v23 objectAtIndexedSubscript:0];
            v63 = [v23 objectAtIndexedSubscript:1];
            v64 = [v23 objectAtIndexedSubscript:2];
            v65 = [(PHRecentsController *)self numberFormatter];
            v66 = [NSNumber numberWithUnsignedInteger:v60];
            v67 = [v65 stringFromNumber:v66];
            v68 = v61;
            v69 = [NSString stringWithFormat:v61, v62, v63, v64, v67];
            [v147 appendString:v69];

            v152 = TUBundle();
            v70 = [v152 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHER" value:&stru_10028F310 table:@"TelephonyUtilities"];
            v71 = [v23 objectAtIndexedSubscript:0];
            v72 = [v23 objectAtIndexedSubscript:1];
            v73 = [v23 objectAtIndexedSubscript:2];
            v74 = [(PHRecentsController *)self numberFormatter];
            v75 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 count] - 3);
            v76 = [v74 stringFromNumber:v75];
            v16 = [NSString stringWithFormat:v70, v71, v72, v73, v76];

            v36 = v147;
          }

          v6 = v160;
          v8 = v154;
          break;
      }

      if ([v36 length])
      {
        v44 = [v36 copy];
      }

      else
      {
        v44 = 0;
      }

      a4 = v156;
    }

    else
    {
      v14 = [v9 anyObject];
      v155 = v14;
      if (v14)
      {
        [(PHRecentsController *)self contactHandlesForHandle:v14];
        v165 = 0u;
        v166 = 0u;
        v167 = 0u;
        v15 = v168 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v165 objects:v170 count:16];
        if (v16)
        {
          v153 = v8;
          v159 = v6;
          v17 = *v166;
          while (2)
          {
            for (j = 0; j != v16; j = j + 1)
            {
              if (*v166 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v165 + 1) + 8 * j);
              v20 = [(PHRecentsController *)self contactCache];
              v21 = [v20 objectForKeyedSubscript:v19];
              v22 = [v21 value];

              if (v22)
              {
                v45 = [(PHRecentsController *)self contactFormatter];
                v46 = [v45 stringFromContact:v22];
                v44 = [(PHRecentsController *)self updatedTitleForTempHandles:v46 countOfExcludedHandles:v12];

                v47 = [(PHRecentsController *)self contactFormatter];
                v16 = [v47 stringFromContact:v22];

                goto LABEL_37;
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v165 objects:v170 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }

          v44 = 0;
LABEL_37:
          v6 = v159;
          v8 = v153;
        }

        else
        {
          v44 = 0;
        }
      }

      else
      {
        v16 = 0;
        v44 = 0;
      }

      v77 = [(PHRecentsController *)self fetchCallProviderForRecentCall:v6];
      if (![v44 length] && (objc_msgSend(v77, "isTelephonyProvider") & 1) == 0)
      {
        v78 = [v6 name];
        v79 = [(PHRecentsController *)self updatedTitleForTempHandles:v78 countOfExcludedHandles:v12];

        v80 = [v6 name];

        v16 = v80;
        v44 = v79;
      }

      if (![v44 length])
      {
        v81 = [v6 callerIdForDisplay];
        v82 = [(PHRecentsController *)self updatedTitleForTempHandles:v81 countOfExcludedHandles:v12];

        v16 = v81;
        v44 = v82;
      }

      if (![v44 length])
      {
        v83 = [v6 callerIdIsBlocked];
        v84 = +[NSBundle mainBundle];
        v85 = v84;
        if (v83)
        {
          v86 = @"NO_CALLER_ID";
        }

        else
        {
          v86 = @"UNKNOWN_CALLER";
        }

        v87 = [v84 localizedStringForKey:v86 value:&stru_10028F310 table:@"PHRecents"];
        v88 = [(PHRecentsController *)self updatedTitleForTempHandles:v87 countOfExcludedHandles:v12];

        if ([v6 callerIdIsBlocked])
        {
          v89 = @"NO_CALLER_ID";
        }

        else
        {
          v89 = @"UNKNOWN_CALLER";
        }

        v90 = +[NSBundle mainBundle];
        v91 = [v90 localizedStringForKey:v89 value:&stru_10028F310 table:@"PHRecents"];

        v16 = v91;
        v44 = v88;
      }
    }
  }

  else
  {
    if (v11 == 1)
    {
      v13 = TUBundle();
      v44 = [v13 localizedStringForKey:@"ONE_OTHER" value:&stru_10028F310 table:@"TelephonyUtilities"];
    }

    else
    {
      v39 = TUBundle();
      [v39 localizedStringForKey:@"%@_OTHERS" value:&stru_10028F310 table:@"TelephonyUtilities"];
      v40 = v157 = a4;
      v41 = [(PHRecentsController *)self numberFormatter];
      v42 = [NSNumber numberWithInteger:v12];
      v43 = [v41 stringFromNumber:v42];
      v44 = [NSString stringWithFormat:v40, v43];

      a4 = v157;
    }

    v16 = 0;
  }

  v125 = [v6 date];
  [v8 setDate:v125];

  v126 = [v8 image];

  if (!v126)
  {
    v127 = [(PHRecentsController *)self fetchImageForRecentCall:v6];
    [v8 setImage:v127];
  }

  if (a4 <= 1)
  {
    [v8 setLocalizedCount:0];
  }

  else
  {
    v128 = [(PHRecentsController *)self numberFormatter];
    v129 = [NSNumber numberWithUnsignedInteger:a4];
    v130 = [v128 stringFromNumber:v129];
    v131 = [NSString stringWithFormat:@"(%@)", v130];
    [v8 setLocalizedCount:v131];
  }

  [v8 setLocalizedTitle:v44];
  [v8 setLocalizedValidHandlesTitle:v16];
  [v8 setVerified:{objc_msgSend(v6, "verificationStatus") == 1}];
  if (PHDeviceSupportsDualSim())
  {
    v132 = [(PHRecentsController *)self fetchCallProviderForRecentCall:v6];
    if ([v6 ph_supportsLocalParticipantBadge])
    {
      v133 = [v132 prioritizedSenderIdentities];
      v134 = [v133 count];

      if (v134 >= 2)
      {
        v135 = [(PHRecentsController *)self callProviderManager];
        v136 = [v135 telephonyProvider];
        v137 = [v6 localParticipantUUID];
        v138 = [v136 senderIdentityForAccountUUID:v137];

        v139 = [v138 localizedShortName];
        [v8 setLocalizedSenderIdentityTitle:v139];
      }
    }
  }

  return v8;
}

- (void)fetchMetadataForRecentCalls:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PHRecentsController *)self metadataCache];

  if (v6)
  {
    v7 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCalls:v4];
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v16 = [v4 count];
      v17 = 2048;
      v18 = [v7 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching metadata for %lu recent calls using %lu handles", buf, 0x16u);
    }

    v9 = [(PHRecentsController *)self featureFlags];
    v10 = [v9 phoneRecentsAvatarsEnabled];

    v11 = [(PHRecentsController *)self metadataCache];
    v12 = v11;
    if (v10)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = __51__PHRecentsController_fetchMetadataForRecentCalls___block_invoke;
      v13[3] = &unk_1002852E0;
      v13[4] = self;
      v14 = v4;
      [v12 updateCacheWithDestinationIDs:v7 completion:v13];
    }

    else
    {
      [v11 updateCacheWithDestinationIDs:v7];
    }
  }
}

void __51__PHRecentsController_fetchMetadataForRecentCalls___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 phoneRecentsAvatarsEnabled];

  if (v3)
  {
    v4 = [*(a1 + 32) serialQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __51__PHRecentsController_fetchMetadataForRecentCalls___block_invoke_2;
    v7[3] = &unk_1002852E0;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(v4, v7);
  }
}

void __51__PHRecentsController_fetchMetadataForRecentCalls___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          v8 = [v7 uniqueId];
          v9 = [*(a1 + 40) itemCache];
          v10 = [v9 objectForKeyedSubscript:v8];
          v11 = [v10 mutableCopy];

          if (v11)
          {
            v12 = [*(a1 + 40) localizedSubtitleForRecentCall:v7];
            [v11 setLocalizedSubtitle:v12];

            v13 = [v11 copy];
            v14 = [*(a1 + 40) itemCache];
            [v14 setObject:v13 forKeyedSubscript:v8];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v4);
    }

    os_unfair_lock_lock((*(a1 + 40) + 12));
    [*(a1 + 40) notifyDelegatesRecentsController:*(a1 + 40) didUpdateCalls:*(a1 + 32)];
    os_unfair_lock_unlock((*(a1 + 40) + 12));
  }
}

- (void)fetchBlockedStatusForRecentCalls:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 count])
  {
    v6 = [(PHRecentsController *)self blockedStatusCache];

    if (v6)
    {
      v7 = [(PHRecentsController *)self featureFlags];
      v8 = [v7 betterBlockingEnabled];

      if (v8)
      {
        v9 = PHDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v15 = [v4 count];
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetching blocked status for %lu recent calls", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = __56__PHRecentsController_fetchBlockedStatusForRecentCalls___block_invoke;
        v10[3] = &unk_100286E78;
        objc_copyWeak(&v13, buf);
        v11 = v4;
        v12 = self;
        [(PHRecentsController *)self queryCommTrustBlockedForCalls:v11 completion:v10];

        objc_destroyWeak(&v13);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __56__PHRecentsController_fetchBlockedStatusForRecentCalls___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained serialQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __56__PHRecentsController_fetchBlockedStatusForRecentCalls___block_invoke_2;
  v9[3] = &unk_100285308;
  v9[4] = WeakRetained;
  v10 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v8 = v3;
  dispatch_async(v5, v9);
}

void __56__PHRecentsController_fetchBlockedStatusForRecentCalls___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setBlockedStatusCache:*(a1 + 40)];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 48);
  v2 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v28;
    v20 = *v28;
    do
    {
      v5 = 0;
      v21 = v3;
      do
      {
        if (*v28 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * v5);
        v7 = [v6 uniqueId];
        v8 = [*(a1 + 32) itemCache];
        v9 = [v8 objectForKeyedSubscript:v7];
        v10 = [v9 mutableCopy];

        if (v10)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v11 = [v6 remoteParticipantHandles];
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = *v24;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v24 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v23 + 1) + 8 * i);
                v16 = [*(a1 + 32) blockedStatusCache];
                v17 = [v16 objectForKeyedSubscript:v15];

                if (v17 && [v17 intValue] == 1)
                {

                  v12 = 1;
                  goto LABEL_18;
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }

LABEL_18:
            v4 = v20;
            v3 = v21;
          }

          [v10 setIsBlocked:v12];
          v18 = [v10 copy];
          v19 = [*(a1 + 32) itemCache];
          [v19 setObject:v18 forKeyedSubscript:v7];
        }

        v5 = v5 + 1;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v3);
  }

  os_unfair_lock_lock((*(a1 + 56) + 12));
  [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didUpdateCalls:*(a1 + 48)];
  os_unfair_lock_unlock((*(a1 + 56) + 12));
}

- (id)fetchNumberFormatter
{
  v2 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v2);

  v3 = objc_alloc_init(NSNumberFormatter);

  return v3;
}

- (BOOL)canLoadOlderRecentCalls
{
  v3 = [(PHRecentsController *)self featureFlags];
  if ([v3 increaseCallHistoryEnabled])
  {
    v4 = [(PHRecentsController *)self callHistoryController];
    v5 = [v4 canLoadOlderRecentCalls];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)continuousScrollingReachedIndexPath:(int64_t)a3
{
  v5 = [(PHRecentsController *)self featureFlags];
  v6 = [v5 increaseCallHistoryEnabled];

  if (v6)
  {
    v7 = [(PHRecentsController *)self recentCalls];
    v8 = [v7 count] - a3;

    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v13 = a3;
      v14 = 2048;
      v15 = v8;
      v16 = 1024;
      v17 = [(PHRecentsController *)self startedLoadingOlderCalls];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_continuousScrollingReachedIndexPath %ld, remaining rows: %ld startedLoadingOlderCalls: %d", buf, 0x1Cu);
    }

    [(PHRecentsController *)self loadOlderCallsIfNecessaryForRemainingRowCount:v8];
    serialQueue = self->_serialQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __59__PHRecentsController_continuousScrollingReachedIndexPath___block_invoke;
    v11[3] = &unk_1002852B8;
    v11[4] = self;
    v11[5] = a3;
    dispatch_async(serialQueue, v11);
  }
}

- (void)loadOlderCallsIfNecessaryForRemainingRowCount:(int64_t)a3
{
  v5 = [(PHRecentsController *)self featureFlags];
  v6 = [v5 increaseCallHistoryEnabled];

  if (v6 && ![(PHRecentsController *)self startedLoadingOlderCalls])
  {
    v13 = [(PHRecentsController *)self recentCalls];
    v7 = [v13 count];
    v8 = [(PHRecentsController *)self callHistoryController];
    v9 = [v8 callHistoryControllerCallHistoryFetchLimit];
    if (a3 > 50 || v7 >= v9)
    {
    }

    else
    {
      v10 = [(PHRecentsController *)self canLoadOlderRecentCalls];

      if (v10)
      {
        v11 = PHDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Loading older recent calls", buf, 2u);
        }

        [(PHRecentsController *)self setStartedLoadingOlderCalls:1];
        v12 = [(PHRecentsController *)self callHistoryController];
        [v12 loadOlderRecentCalls];
      }
    }
  }
}

- (void)checkRecentMissedCallCount
{
  v3 = [(PHRecentsController *)self featureFlags];
  v4 = [v3 increaseCallHistoryEnabled];

  if (v4)
  {
    v5 = [(PHRecentsController *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __49__PHRecentsController_checkRecentMissedCallCount__block_invoke;
    block[3] = &unk_100284FD0;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

void __49__PHRecentsController_checkRecentMissedCallCount__block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Checking for missed calls count", buf, 2u);
  }

  v3 = [*(a1 + 32) recentCalls];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    v8 = kCHCallStatusMissed;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if ((v8 & [*(*(&v10 + 1) + 8 * i) callStatus]) != 0)
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) loadOlderCallsIfNecessaryForRemainingRowCount:v6];
}

- (id)recentCallsChangedFromCachedRecentCalls:(id)a3 callHistoryControllerRecentCalls:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableDictionary);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = [v14 uniqueId];
        [v8 setObject:v14 forKeyedSubscript:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        v22 = [v21 uniqueId];
        v23 = [v8 objectForKey:v22];

        if (!v23 || ([v23 isEqual:v21] & 1) == 0)
        {
          [v7 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  return v7;
}

- (id)fetchRecentCalls
{
  v3 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(PHRecentsController *)self recentCalls];
  v5 = [(PHRecentsController *)self callHistoryController];
  v6 = [v5 recentCalls];

  if ([v4 isEqualToArray:v6])
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Recent calls array has not changed. Ignoring", &v20, 2u);
    }

    v8 = [(PHRecentsController *)self featureFlags];
    v9 = [v8 callHistorySearchEnabled];

    if (v9)
    {
      os_unfair_lock_lock(&self->_accessorLock);
      [(PHRecentsController *)self notifyDelegatesRecentsController:self didCompleteFetchingCalls:v4];
      os_unfair_lock_unlock(&self->_accessorLock);
    }

    v10 = v4;
    goto LABEL_16;
  }

  v11 = [(PHRecentsController *)self featureFlags];
  v12 = [v11 increaseCallHistoryEnabled];

  if (!v12)
  {
    v18 = [(PHRecentsController *)self itemCache];
    [v18 removeAllObjects];

    [(PHRecentsController *)self populateCachesForRecentCalls:v6];
    v10 = v6;
LABEL_16:
    v17 = v10;
    goto LABEL_17;
  }

  v13 = PHDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Recent calls array has changed. Find the changed objects and only update their cache", &v20, 2u);
  }

  v14 = [(PHRecentsController *)self recentCallsChangedFromCachedRecentCalls:v4 callHistoryControllerRecentCalls:v6];
  v15 = PHDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 count];
    v20 = 134217984;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found %lu changed objects", &v20, 0xCu);
  }

  if ([v14 count])
  {
    [(PHRecentsController *)self populateCachesForRecentCalls:v14];
  }

  v17 = v6;

LABEL_17:

  return v17;
}

- (void)populateCachesForRecentCalls:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 count];
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting contacts for %lu calls", &v11, 0xCu);
  }

  [(PHRecentsController *)self fetchContactsForRecentCalls:v4];
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting metadata for %lu recent calls.", &v11, 0xCu);
  }

  [(PHRecentsController *)self fetchMetadataForRecentCalls:v4];
  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Requesting blocked status with %lu recent calls", &v11, 0xCu);
  }

  [(PHRecentsController *)self fetchBlockedStatusForRecentCalls:v4];
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Populating item cache with %lu recent calls", &v11, 0xCu);
  }

  [(PHRecentsController *)self populateItemCacheForRecentCalls:v4];
}

- (void)populateItemCacheForRecentCalls:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PHRecentsController *)self itemCache];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(PHRecentsController *)self fetchMutableItemForRecentCall:v12, v17];
        v14 = [(PHRecentsController *)self localizedSubtitleForRecentCall:v12];
        [v13 setLocalizedSubtitle:v14];

        v15 = [v13 copy];
        v16 = [v12 uniqueId];
        [v6 setObject:v15 forKeyedSubscript:v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)updateRecentCalls
{
  v3 = [(PHRecentsController *)self fetchRecentCalls];
  [(PHRecentsController *)self setRecentCalls:v3];

  v4 = [(PHRecentsController *)self featureFlags];
  v5 = [v4 callHistorySearchEnabled];

  if ((v5 & 1) == 0)
  {

    [(PHRecentsController *)self checkRecentMissedCallCount];
  }
}

- (void)recentCallsWillShow
{
  v2 = [(PHRecentsController *)self callHistoryController];
  [v2 boostQualityOfService];
}

- (id)metadataItemsForRecentCall:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCall:v4];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(PHRecentsController *)self metadataCache];
        v13 = [v12 metadataForDestinationID:v11];

        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (void)handleUpdatedContacts
{
  v3 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __44__PHRecentsController_handleUpdatedContacts__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __44__PHRecentsController_handleUpdatedContacts__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) recentCalls];
  if ([v6 count])
  {
    v2 = [*(a1 + 32) contactCache];
    [v2 removeAllObjects];

    v3 = *(a1 + 32);
    v4 = [v3 recentCalls];
    [v3 fetchContactsForRecentCalls:v4];

    v5 = [*(a1 + 32) itemCache];
    [v5 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v6];
    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v6];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

- (void)handleCNContactStoreDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412802;
    v10 = v6;
    v11 = 2048;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", &v9, 0x20u);
  }

  [(PHRecentsController *)self handleUpdatedContacts];
}

- (void)handleIDSServiceAvailabilityDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  v9 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __73__PHRecentsController_handleIDSServiceAvailabilityDidChangeNotification___block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(v9, block);
}

- (void)handleNSCurrentLocaleDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  v9 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __66__PHRecentsController_handleNSCurrentLocaleDidChangeNotification___block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(v9, block);
}

void __66__PHRecentsController_handleNSCurrentLocaleDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchContactFormatter];
  [*(a1 + 32) setContactFormatter:v2];

  v3 = [*(a1 + 32) fetchNumberFormatter];
  [*(a1 + 32) setNumberFormatter:v3];

  v8 = [*(a1 + 32) recentCalls];
  if ([v8 count])
  {
    v4 = [*(a1 + 32) itemCache];
    [v4 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v8];
    v5 = [*(a1 + 32) featureFlags];
    v6 = [v5 phoneRecentsAvatarsEnabled];

    os_unfair_lock_lock((*(a1 + 32) + 12));
    v7 = *(a1 + 32);
    if (v6)
    {
      [v7 notifyDelegatesRecentsController:v7 didUpdateCalls:v8];
    }

    else
    {
      [v7 notifyDelegatesRecentsController:v7 didChangeCalls:v8];
    }

    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

- (void)handleTUCallHistoryControllerRecentCallsDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [(PHRecentsController *)self callHistoryController];
  v7 = [v5 isEqual:v6];

  v8 = PHDefaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [v4 name];
      *buf = 138412802;
      v15 = v10;
      v16 = 2048;
      v17 = self;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
    }

    v8 = [(PHRecentsController *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __85__PHRecentsController_handleTUCallHistoryControllerRecentCallsDidChangeNotification___block_invoke;
    block[3] = &unk_100284FD0;
    block[4] = self;
    dispatch_async(v8, block);
  }

  else if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring calls change notification from different callHistoryController", buf, 2u);
  }
}

id __85__PHRecentsController_handleTUCallHistoryControllerRecentCallsDidChangeNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStartedLoadingOlderCalls:0];
  v2 = *(a1 + 32);

  return [v2 updateRecentCalls];
}

- (void)handleTUCallHistoryControllerUnreadCallCountDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [(PHRecentsController *)self callHistoryController];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [v4 name];
      v14 = 138412802;
      v15 = v9;
      v16 = 2048;
      v17 = self;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", &v14, 0x20u);
    }

    v12 = [v4 object];
    v13 = v12;
    if (v12)
    {
      -[PHRecentsController setUnreadCallCount:](self, "setUnreadCallCount:", [v12 unreadCallCount]);
    }
  }
}

- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self featureFlags];
  v6 = [v5 phoneRecentsAvatarsEnabled];

  if ((v6 & 1) == 0)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [v4 name];
      *buf = 138412802;
      v14 = v8;
      v15 = 2048;
      v16 = self;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
    }

    v11 = [(PHRecentsController *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __74__PHRecentsController_handleTUMetadataCacheDidFinishUpdatingNotification___block_invoke;
    block[3] = &unk_100284FD0;
    block[4] = self;
    dispatch_async(v11, block);
  }
}

void __74__PHRecentsController_handleTUMetadataCacheDidFinishUpdatingNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentCalls];
  if ([v2 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v2;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v8 uniqueId];
          v10 = [*(a1 + 32) itemCache];
          v11 = [v10 objectForKeyedSubscript:v9];
          v12 = [v11 mutableCopy];

          if (v12)
          {
            v13 = [*(a1 + 32) localizedSubtitleForRecentCall:v8];
            [v12 setLocalizedSubtitle:v13];

            v14 = [v12 copy];
            v15 = [*(a1 + 32) itemCache];
            [v15 setObject:v14 forKeyedSubscript:v9];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v3];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
    v2 = v16;
  }
}

- (void)handleUIApplicationSignificantTimeChangeNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  v9 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __76__PHRecentsController_handleUIApplicationSignificantTimeChangeNotification___block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(v9, block);
}

void __76__PHRecentsController_handleUIApplicationSignificantTimeChangeNotification___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) recentCalls];
  if ([v3 count])
  {
    v2 = [*(a1 + 32) itemCache];
    [v2 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v3];
    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v3];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

- (void)handleUIApplicationDidBecomeActiveNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  v9 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __70__PHRecentsController_handleUIApplicationDidBecomeActiveNotification___block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(v9, block);
}

- (void)performSynchronousBlock:(id)a3
{
  if (dispatch_get_specific(PHRecentsControllerSerialQueueContextKey) == self)
  {
    v6 = *(a3 + 2);
    v7 = a3;
    v6();
  }

  else
  {
    v5 = a3;
    v7 = [(PHRecentsController *)self serialQueue];
    dispatch_sync(v7, v5);
  }
}

- (void)providersChangedForProviderManager:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling providersChangedForProviderManager %@", &v10, 0x20u);
  }

  v8 = [(PHRecentsController *)self recentCalls];
  if ([v8 count])
  {
    v9 = [(PHRecentsController *)self itemCache];
    [v9 removeAllObjects];

    [(PHRecentsController *)self populateItemCacheForRecentCalls:v8];
    os_unfair_lock_lock(&self->_accessorLock);
    [(PHRecentsController *)self notifyDelegatesRecentsController:self didChangeCalls:v8];
    os_unfair_lock_unlock(&self->_accessorLock);
  }
}

- (id)subtitleForRecentEmergencyCall:(id)a3
{
  v4 = [a3 callOccurrences];
  v5 = [(PHRecentsController *)self localizedSubtitleForRecentEmergencyCall:v4];

  return v5;
}

- (id)localizedSubtitleForRecentEmergencyCall:(id)a3
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v3)
  {
LABEL_33:
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    v19 = @"Emergency call";
    goto LABEL_34;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = *v25;
  v8 = kCHCallOccurrenceEmergencyVideosCountKey;
  v9 = kCHCallOccurrenceEmergencyImagesCountKey;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v24 + 1) + 8 * i);
      v12 = [v11 objectForKeyedSubscript:v8];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 += [v12 integerValue];
      }

      v13 = [v11 objectForKeyedSubscript:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 += [v13 integerValue];
      }
    }

    v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v4);
  if (v6 && !v5)
  {
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    v16 = @"Shared videos coalesced";
    v17 = @"Shared video coalesced";
    v18 = v6 == 1;
    goto LABEL_18;
  }

  if (v6 || !v5)
  {
    if (v6 == 1 && v5 == 1)
    {
      v14 = +[NSBundle mainBundle];
      v15 = v14;
      v19 = @"Shared video and photo coalesced";
      goto LABEL_34;
    }

    if (v6 == 1 && v5 >= 2)
    {
      v14 = +[NSBundle mainBundle];
      v15 = v14;
      v19 = @"Shared video and photos coalesced";
      goto LABEL_34;
    }

    if (v6 >= 2 && v5 == 1)
    {
      v14 = +[NSBundle mainBundle];
      v15 = v14;
      v19 = @"Shared videos and photo coalesced";
      goto LABEL_34;
    }

    if (v6 >= 2 && v5 >= 2)
    {
      v14 = +[NSBundle mainBundle];
      v15 = v14;
      v19 = @"Shared videos and photos coalesced";
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v14 = +[NSBundle mainBundle];
  v15 = v14;
  v16 = @"Shared photos coalesced";
  v17 = @"Shared photo coalesced";
  v18 = v5 == 1;
LABEL_18:
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v16;
  }

LABEL_34:
  v20 = [v14 localizedStringForKey:v19 value:&stru_10028F310 table:@"PHRecents"];
  v21 = [NSString stringWithFormat:v20];

  return v21;
}

- (id)localizedSubtitleForRecentCall:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 wasEmergencyCall])
  {
    v6 = [(PHRecentsController *)self subtitleForRecentEmergencyCall:v4];
    goto LABEL_95;
  }

  v7 = [v4 blockedByExtension];

  if (v7)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"%@_BLOCKED_BY" value:&stru_10028F310 table:@"PHRecents"];
    v10 = [v4 localizedBlockedByExtensionName];
    v6 = [NSString stringWithFormat:v9, v10];

    goto LABEL_95;
  }

  v11 = [v4 uniqueId];
  v12 = [(PHRecentsController *)self featureFlags];
  v13 = [v12 increaseCallHistoryEnabled];

  if (!v13)
  {
    v15 = 0;
LABEL_9:
    v16 = [(PHRecentsController *)self featureFlags];
    v17 = [v16 callHistorySearchEnabled];

    if (v17)
    {
      v18 = [v4 remoteParticipantHandles];
      v19 = [v18 anyObject];

      if (v19)
      {
        [(PHRecentsController *)self contactHandlesForHandle:v19];
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v20 = v92 = 0u;
        v21 = [v20 countByEnumeratingWithState:&v89 objects:v94 count:16];
        if (v21)
        {
          v79 = v19;
          v81 = v15;
          v83 = v11;
          v22 = *v90;
          while (2)
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v90 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v89 + 1) + 8 * i);
              v25 = [(PHRecentsController *)self contactCache];
              v26 = [v25 objectForKeyedSubscript:v24];
              v27 = [v26 value];

              if (v27)
              {
                v21 = v24;
                goto LABEL_25;
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v89 objects:v94 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }

          v27 = 0;
LABEL_25:
          v15 = v81;
          v11 = v83;
          v19 = v79;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v21 = 0;
        v27 = 0;
      }

      v45 = [(PHRecentsController *)self subtitleProvider];
      v46 = [v45 localizedSubtitleForRecentCall:v4 handle:v21 contact:v27];

      if (![v46 length])
      {
        v47 = [(PHRecentsController *)self unknownLabel];

        v46 = v47;
      }

      if (v11)
      {
        v48 = [(PHRecentsController *)self localizedSubtitleCache];
        [v48 setObject:v46 forKey:v11];
      }

      v6 = v46;

      goto LABEL_94;
    }

    v28 = [(PHRecentsController *)self fetchCallProviderForRecentCall:v4];
    v29 = v28;
    if (!v28)
    {
      goto LABEL_88;
    }

    if ([v28 isFaceTimeProvider])
    {
      v30 = [v4 mediaType];
      v31 = +[NSBundle mainBundle];
      v32 = v31;
      if (v30 == 2)
      {
        v33 = @"RECENTS_FACETIME_VIDEO";
      }

      else
      {
        v33 = @"RECENTS_FACETIME_AUDIO";
      }

      v49 = [v31 localizedStringForKey:v33 value:&stru_10028F310 table:@"PHRecents"];

      goto LABEL_57;
    }

    if (![v29 isTelephonyProvider])
    {
      v50 = [v4 mediaType];
      if (v50 == 1)
      {
        v51 = @"RECENTS_CALL_PROVIDER_NAME_%@_CALL_CATEGORY_AUDIO";
      }

      else
      {
        if (v50 != 2)
        {
LABEL_88:
          if (![v15 length])
          {
            v73 = [(PHRecentsController *)self unknownLabel];

            v15 = v73;
          }

          v74 = [(PHRecentsController *)self featureFlags];
          v75 = [v74 increaseCallHistoryEnabled];

          if (v75 && v11)
          {
            v76 = [(PHRecentsController *)self localizedSubtitleCache];
            [v76 setObject:v15 forKey:v11];
          }

          v6 = v15;

          goto LABEL_94;
        }

        v51 = @"RECENTS_CALL_PROVIDER_NAME_%@_CALL_CATEGORY_VIDEO";
      }

      v56 = +[NSBundle mainBundle];
      v57 = [v56 localizedStringForKey:v51 value:&stru_10028F310 table:@"PHRecents"];
      v58 = [v29 localizedName];
      v49 = [NSString stringWithFormat:v57, v58];

LABEL_57:
      v15 = v49;
      goto LABEL_88;
    }

    v34 = [v4 remoteParticipantHandles];
    v35 = [v34 anyObject];

    if (v35)
    {
      v80 = v35;
      [(PHRecentsController *)self contactHandlesForHandle:v35];
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v36 = v88 = 0u;
      v37 = [v36 countByEnumeratingWithState:&v85 objects:v93 count:16];
      if (v37)
      {
        v38 = v37;
        v78 = v29;
        v82 = v15;
        v84 = v11;
        v39 = *v86;
LABEL_31:
        v40 = 0;
        while (1)
        {
          if (*v86 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v85 + 1) + 8 * v40);
          v42 = [(PHRecentsController *)self contactCache];
          v43 = [v42 objectForKeyedSubscript:v41];
          v44 = [v43 value];

          if (v44)
          {
            break;
          }

          if (v38 == ++v40)
          {
            v38 = [v36 countByEnumeratingWithState:&v85 objects:v93 count:16];
            if (v38)
            {
              goto LABEL_31;
            }

            v15 = v82;
            v11 = v84;
            v29 = v78;
            goto LABEL_38;
          }
        }

        v35 = v80;
        v52 = [v80 type];
        if (v52 == 3)
        {
          v53 = [v44 labeledValueForEmailAddress:v41];
          v54 = [v53 label];
          v55 = [CNLabeledValue localizedDisplayStringForLabel:v54 propertyName:CNContactEmailAddressesKey];
          v15 = v82;
          v29 = v78;
        }

        else
        {
          v15 = v82;
          v29 = v78;
          if (v52 == 2)
          {
            v59 = [v4 isoCountryCode];
            v54 = [CNPhoneNumber phoneNumberWithDigits:v41 countryCode:v59];

            if (v54)
            {
              v53 = [v44 labeledValueForPhoneNumber:v54];
            }

            else
            {
              v53 = 0;
            }

            v60 = [v53 label];
            v55 = [CNLabeledValue localizedDisplayStringForLabel:v60 propertyName:CNContactPhoneNumbersKey];

            v15 = v60;
          }

          else
          {
            if (v52 != 1)
            {
LABEL_64:

              v11 = v84;
              goto LABEL_65;
            }

            v53 = [v44 labeledValueForSocialProfileWithUsername:v41];
            v54 = [v53 label];
            v55 = [CNLabeledValue localizedDisplayStringForLabel:v54 propertyName:CNContactSocialProfilesKey];
          }
        }

        v15 = v55;
        v35 = v80;
        goto LABEL_64;
      }

LABEL_38:
      v35 = v80;
LABEL_65:
    }

    if (-[PHRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v15) && [v4 isJunk])
    {
      v61 = [v4 junkIdentificationCategory];
      if (v61)
      {
        v62 = [v4 junkIdentificationCategory];
      }

      else
      {
        v62 = @"MAYBE_JUNK";
      }

      v63 = +[NSBundle mainBundle];
      v64 = [v63 localizedStringForKey:v62 value:&stru_10028F310 table:@"PHRecents"];

      v15 = v64;
    }

    if ([(PHRecentsController *)self isLocalizedSubtitleUnknown:v15])
    {
      v65 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCall:v4];
      v66 = [v65 firstObject];

      if (v66)
      {
        v67 = [(PHRecentsController *)self metadataCache];
        v68 = [v67 metadataForDestinationID:v66];

        if (v68)
        {
          if (-[PHRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v15) && ([v4 callerIdIsBlocked] & 1) == 0)
          {
            v69 = [v68 metadataForProvider:objc_opt_class()];

            v15 = v69;
          }

          if (-[PHRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v15) && ([v4 callerIdIsBlocked] & 1) == 0)
          {
            v70 = [v68 metadataForProvider:objc_opt_class()];

            v15 = v70;
          }

          if ([(PHRecentsController *)self isLocalizedSubtitleUnknown:v15])
          {
            v71 = [v68 metadataForProvider:objc_opt_class()];

            v15 = v71;
          }

          if ([(PHRecentsController *)self isLocalizedSubtitleUnknown:v15])
          {
            v72 = [v68 metadataForProvider:objc_opt_class()];

            v15 = v72;
          }
        }
      }

      else
      {
        v68 = 0;
      }
    }

    goto LABEL_88;
  }

  v14 = [(PHRecentsController *)self localizedSubtitleCache];
  v15 = [v14 objectForKey:v11];

  if ([(PHRecentsController *)self isLocalizedSubtitleUnknown:v15])
  {
    goto LABEL_9;
  }

  v6 = v15;
LABEL_94:

LABEL_95:

  return v6;
}

- (BOOL)isLocalizedSubtitleUnknown:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self featureFlags];
  v6 = [v5 increaseCallHistoryEnabled];

  v7 = [v4 length];
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  if (v6 && v7)
  {
    v9 = [(PHRecentsController *)self unknownLabel];
    v8 = [v4 isEqualToString:v9];
  }

  return v8;
}

- (id)unknownLabel
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __35__PHRecentsController_unknownLabel__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  if (unknownLabel_onceToken != -1)
  {
    dispatch_once(&unknownLabel_onceToken, block);
  }

  return unknownLabel_unknownLabel;
}

void __35__PHRecentsController_unknownLabel__block_invoke(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"UNKNOWN_LABEL" value:&stru_10028F310 table:@"PHRecents"];
  v4 = unknownLabel_unknownLabel;
  unknownLabel_unknownLabel = v3;

  v5 = [*(a1 + 32) featureFlags];
  LODWORD(v2) = [v5 callHistorySearchEnabled];

  if (v2)
  {
    v8 = TUBundle();
    v6 = [v8 localizedStringForKey:@"UNKNOWN_LABEL" value:&stru_10028F310 table:@"TelephonyUtilities"];
    v7 = unknownLabel_unknownLabel;
    unknownLabel_unknownLabel = v6;
  }
}

- (void)logRecentsScrollingEvent:(int64_t)a3
{
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  if (!(a3 % 100))
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v6 = [NSNumber numberWithInteger:a3 / 100];
    [v9 setObject:v6 forKey:@"BucketedScrollingIndex"];

    [v9 setObject:&off_100295438 forKey:@"AppName"];
    v7 = [(PHRecentsController *)self analyticsLogger];
    v8 = [v9 copy];
    [v7 logEvent:@"com.apple.MobilePhone.RecentsScrollingIndex" withCoreAnalyticsDictionary:v8];
  }
}

- (unint64_t)callHistoryControllerOptions
{
  v2 = [(PHRecentsController *)self callHistoryController];
  v3 = [v2 options];

  return v3;
}

- (unint64_t)callHistoryControllerCoalescingStrategy
{
  v2 = [(PHRecentsController *)self callHistoryController];
  v3 = [v2 coalescingStrategy];

  return v3;
}

- (void)cancelSearchFetchOperations
{
  v2 = [(PHRecentsController *)self callHistoryController];
  [v2 cancelSearchFetchOperations];
}

- (void)queryCommTrustBlockedForCalls:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  specialized PHRecentsController.queryCommTrustBlocked(for:completion:)(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

void __48__PHRecentsController_dialRequestForRecentCall___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create a dial request for the recent call (%@).", &v3, 0xCu);
}

void __42__PHRecentsController_performDialRequest___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error initiating dial request %@: %@", &v4, 0x16u);
}

- (void)fetchUnifiedContactForID:(uint64_t)a1 withDescriptors:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch unified contact for identifier: %{sensitive}@", &v2, 0xCu);
}

@end