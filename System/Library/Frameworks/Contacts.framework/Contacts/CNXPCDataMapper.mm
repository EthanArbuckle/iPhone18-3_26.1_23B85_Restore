@interface CNXPCDataMapper
+ (id)contactBuffersDecoderForFetchRequest:(id)request posterDataStore:(id)store;
+ (id)cursorProtocolInterface;
+ (id)os_log;
+ (id)serviceProtocolInterface;
- (BOOL)analyzeDatabaseWithError:(id *)error;
- (BOOL)executeChangeHistoryClearRequest:(id)request error:(id *)error;
- (BOOL)executeSaveRequest:(id)request response:(id *)response authorizationContext:(id)context error:(id *)error;
- (BOOL)registerChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier error:(id *)error;
- (BOOL)requestAccessForEntityType:(int64_t)type error:(id *)error;
- (BOOL)setBestMeIfNeededForGivenName:(id)name familyName:(id)familyName email:(id)email error:(id *)error;
- (BOOL)setMeContact:(id)contact error:(id *)error;
- (BOOL)setMeContact:(id)contact forContainer:(id)container error:(id *)error;
- (BOOL)shouldAnalyzeDatabaseWithError:(id *)error;
- (BOOL)unregisterChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier error:(id *)error;
- (BOOL)writeFavoritesPropertyListData:(id)data toPath:(id)path error:(id *)error;
- (CNXPCDataMapper)init;
- (CNXPCDataMapper)initWithConfiguration:(id)configuration;
- (CNXPCDataMapper)initWithConfiguration:(id)configuration connection:(id)connection;
- (id)_sharedPhotoPreferenceChange:(uint64_t)change;
- (id)_zeroedPhoneAndEmailCountsForUpdatedContact:(void *)contact;
- (id)accountsMatchingPredicate:(id)predicate error:(id *)error;
- (id)authorizedKeysForContactKeys:(id)keys error:(id *)error;
- (id)changeHistoryWithFetchRequest:(id)request error:(id *)error;
- (id)contactCountForFetchRequest:(id)request error:(id *)error;
- (id)contactObservableForFetchRequest:(id)request;
- (id)contactWithUserActivityUserInfo:(id)info keysToFetch:(id)fetch;
- (id)containersMatchingPredicate:(id)predicate error:(id *)error;
- (id)currentHistoryAnchor;
- (id)currentHistoryToken;
- (id)defaultContainerIdentifier;
- (id)executeFetchRequest:(id)request progressiveResults:(id)results completion:(id)completion;
- (id)favoritesEntryDictionariesAtPath:(id)path error:(id *)error;
- (id)fetchLimitedAccessContactIdentifiersForBundle:(id)bundle;
- (id)getBackgroundColorOnImageData:(id)data bitmapFormat:(id)format error:(id *)error;
- (id)getLimitedAccessLastSyncSequenceNumber:(id *)number;
- (id)getWatchLimitedAccessSyncDataStartingAtSequenceNumber:(id)number;
- (id)groupsMatchingPredicate:(id)predicate error:(id *)error;
- (id)identifierWithError:(id *)error;
- (id)meContactIdentifiers:(id *)identifiers;
- (id)policyForContainerWithIdentifier:(id)identifier error:(id *)error;
- (id)policyWithDescription:(id)description error:(id *)error;
- (id)populateSyncTableForLimitedAccessAboveSequenceNumber:(id)number;
- (id)sectionListOffsetsForSortOrder:(int64_t)order error:(id *)error;
- (id)serverSearchContainersMatchingPredicate:(id)predicate error:(id *)error;
- (id)subgroupsOfGroupWithIdentifier:(id)identifier error:(id *)error;
- (id)unifiedContactCountWithError:(id *)error;
- (id)unitTestPathFromEnvironment:(uint64_t)environment;
- (id)userActivityUserInfoForContact:(id)contact;
- (uint64_t)fetchAndDecodeEncodedContactsForFetchRequest:(void *)request error:(void *)error cancelationToken:(void *)token batchHandler:;
- (uint64_t)fetchContactsForFetchRequest:(void *)request error:(void *)error batchHandler:;
- (uint64_t)fetchEncodedContactsForFetchRequest:(void *)request error:(void *)error cancelationToken:(void *)token batchHandler:;
- (void)_logAnyUpdatesZeroingPhoneAndEmailForSaveRequest:(uint64_t)request;
- (void)_logUpdatesChangingSharedPhotoPrefForSaveRequest:(uint64_t)request;
- (void)addLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier;
- (void)addLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers;
- (void)applyLimitedAccessSyncEvents:(id)events;
- (void)dropAllLimitedAccessRows;
- (void)dropAllLimitedAccessRowsAndSyncNotify;
- (void)purgeLimitedAccessRecordsForBundle:(id)bundle;
- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier;
- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers;
- (void)requestAccessForEntityType:(int64_t)type completionHandler:(id)handler;
- (void)setLimitedAccessTableCurrentSequenceNumber:(id)number;
- (void)updateLimitedAccessTable:(id)table;
@end

@implementation CNXPCDataMapper

+ (id)serviceProtocolInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09BC188];
  v218 = +[CNXPCDataMapper cursorProtocolInterface];
  v3 = MEMORY[0x1E695DFA8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v217 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v217 _cn_addNonNilObject:getPABridgedTCCIdentityClass[0]()];
  [v2 setClasses:v217 forSelector:sel_configureServiceWithOptions_ argumentIndex:0 ofReply:0];
  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_identifierWithReply_ argumentIndex:0 ofReply:1];

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_identifierWithReply_ argumentIndex:1 ofReply:1];

  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_unifiedContactCountWithReply_ argumentIndex:0 ofReply:1];

  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v9 forSelector:sel_unifiedContactCountWithReply_ argumentIndex:1 ofReply:1];

  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v10 forSelector:sel_contactCountForFetchRequest_withReply_ argumentIndex:0 ofReply:0];

  v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_contactCountForFetchRequest_withReply_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_contactCountForFetchRequest_withReply_ argumentIndex:1 ofReply:1];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
  [v2 setClasses:v19 forSelector:sel_sectionListOffsetsForSortOrder_reply_ argumentIndex:0 ofReply:1];

  v20 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v20 forSelector:sel_sectionListOffsetsForSortOrder_reply_ argumentIndex:1 ofReply:1];

  v21 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v21 forSelector:sel_contactsForFetchRequest_withMatchInfoReply_ argumentIndex:0 ofReply:0];

  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  [v2 setClasses:v24 forSelector:sel_contactsForFetchRequest_withMatchInfoReply_ argumentIndex:0 ofReply:1];

  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = [v25 setWithObjects:{v26, v27, objc_opt_class(), 0}];
  [v2 setClasses:v28 forSelector:sel_contactsForFetchRequest_withMatchInfoReply_ argumentIndex:1 ofReply:1];

  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
  [v2 setClasses:v31 forSelector:sel_contactsForFetchRequest_withMatchInfoReply_ argumentIndex:2 ofReply:1];

  v32 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v32 forSelector:sel_encodedContactsAndCursorForFetchRequest_withReply_ argumentIndex:0 ofReply:0];

  v33 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v33 forSelector:sel_encodedContactsAndCursorForFetchRequest_withReply_ argumentIndex:0 ofReply:1];

  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = [v34 setWithObjects:{v35, v36, v37, objc_opt_class(), 0}];
  [v2 setClasses:v38 forSelector:sel_encodedContactsAndCursorForFetchRequest_withReply_ argumentIndex:1 ofReply:1];

  [v2 setInterface:v218 forSelector:sel_encodedContactsAndCursorForFetchRequest_withReply_ argumentIndex:2 ofReply:1];
  v39 = MEMORY[0x1E695DFD8];
  v40 = objc_opt_class();
  v41 = [v39 setWithObjects:{v40, objc_opt_class(), 0}];
  [v2 setClasses:v41 forSelector:sel_encodedContactsAndCursorForFetchRequest_withReply_ argumentIndex:4 ofReply:1];

  v42 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0991350];
  v216 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09BC1E8];
  v43 = MEMORY[0x1E695DFD8];
  v44 = objc_opt_class();
  v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
  [v42 setClasses:v45 forSelector:sel_receiveProgressiveContacts_matchInfos_ argumentIndex:0 ofReply:0];

  v46 = MEMORY[0x1E695DFD8];
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = [v46 setWithObjects:{v47, v48, objc_opt_class(), 0}];
  [v42 setClasses:v49 forSelector:sel_receiveProgressiveContacts_matchInfos_ argumentIndex:1 ofReply:0];

  v50 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v50 forSelector:sel_progressiveContactsForFetchRequest_progressHandler_reply_ argumentIndex:0 ofReply:0];

  [v2 setInterface:v42 forSelector:sel_progressiveContactsForFetchRequest_progressHandler_reply_ argumentIndex:1 ofReply:0];
  [v2 setInterface:v216 forSelector:sel_progressiveContactsForFetchRequest_progressHandler_reply_ argumentIndex:0 ofReply:1];
  v51 = MEMORY[0x1E695DFD8];
  v52 = objc_opt_class();
  v53 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
  [v2 setClasses:v53 forSelector:sel_meContactIdentifiersWithReply_ argumentIndex:0 ofReply:1];

  v54 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v54 forSelector:sel_meContactIdentifiersWithReply_ argumentIndex:1 ofReply:1];

  v55 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v55 forSelector:sel_executeSaveRequest_withReply_ argumentIndex:0 ofReply:0];

  v56 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v56 forSelector:sel_executeSaveRequest_withReply_ argumentIndex:1 ofReply:1];

  v57 = MEMORY[0x1E695DFD8];
  v58 = objc_opt_class();
  v59 = objc_opt_class();
  v60 = objc_opt_class();
  v61 = objc_opt_class();
  v62 = objc_opt_class();
  v63 = [v57 setWithObjects:{v58, v59, v60, v61, v62, objc_opt_class(), 0}];
  [v2 setClasses:v63 forSelector:sel_executeSaveRequest_withReply_ argumentIndex:2 ofReply:1];

  v64 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v64 forSelector:sel_containersMatchingPredicate_withReply_ argumentIndex:0 ofReply:0];

  v65 = MEMORY[0x1E695DFD8];
  v66 = objc_opt_class();
  v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
  [v2 setClasses:v67 forSelector:sel_containersMatchingPredicate_withReply_ argumentIndex:0 ofReply:1];

  v68 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v68 forSelector:sel_containersMatchingPredicate_withReply_ argumentIndex:1 ofReply:1];

  v69 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v69 forSelector:sel_serverSearchContainersMatchingPredicate_withReply_ argumentIndex:0 ofReply:0];

  v70 = MEMORY[0x1E695DFD8];
  v71 = objc_opt_class();
  v72 = [v70 setWithObjects:{v71, objc_opt_class(), 0}];
  [v2 setClasses:v72 forSelector:sel_serverSearchContainersMatchingPredicate_withReply_ argumentIndex:0 ofReply:1];

  v73 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v73 forSelector:sel_serverSearchContainersMatchingPredicate_withReply_ argumentIndex:1 ofReply:1];

  v74 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v74 forSelector:sel_policyForContainerWithIdentifier_withReply_ argumentIndex:0 ofReply:0];

  v75 = MEMORY[0x1E695DFD8];
  v76 = objc_opt_class();
  v77 = [v75 setWithObjects:{v76, objc_opt_class(), 0}];
  [v2 setClasses:v77 forSelector:sel_policyForContainerWithIdentifier_withReply_ argumentIndex:0 ofReply:1];

  v78 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v78 forSelector:sel_policyForContainerWithIdentifier_withReply_ argumentIndex:1 ofReply:1];

  v79 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v79 forSelector:sel_accountsMatchingPredicate_withReply_ argumentIndex:0 ofReply:0];

  v80 = MEMORY[0x1E695DFD8];
  v81 = objc_opt_class();
  v82 = [v80 setWithObjects:{v81, objc_opt_class(), 0}];
  [v2 setClasses:v82 forSelector:sel_accountsMatchingPredicate_withReply_ argumentIndex:0 ofReply:1];

  v83 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v83 forSelector:sel_accountsMatchingPredicate_withReply_ argumentIndex:1 ofReply:1];

  v84 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v84 forSelector:sel_groupsMatchingPredicate_withReply_ argumentIndex:0 ofReply:0];

  v85 = MEMORY[0x1E695DFD8];
  v86 = objc_opt_class();
  v87 = [v85 setWithObjects:{v86, objc_opt_class(), 0}];
  [v2 setClasses:v87 forSelector:sel_groupsMatchingPredicate_withReply_ argumentIndex:0 ofReply:1];

  v88 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v88 forSelector:sel_groupsMatchingPredicate_withReply_ argumentIndex:1 ofReply:1];

  v89 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v89 forSelector:sel_subgroupsOfGroupWithIdentifier_withReply_ argumentIndex:0 ofReply:0];

  v90 = MEMORY[0x1E695DFD8];
  v91 = objc_opt_class();
  v92 = [v90 setWithObjects:{v91, objc_opt_class(), 0}];
  [v2 setClasses:v92 forSelector:sel_subgroupsOfGroupWithIdentifier_withReply_ argumentIndex:0 ofReply:1];

  v93 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v93 forSelector:sel_subgroupsOfGroupWithIdentifier_withReply_ argumentIndex:1 ofReply:1];

  v94 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v94 forSelector:sel_defaultContainerIdentifierWithReply_ argumentIndex:0 ofReply:0];

  v95 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v95 forSelector:sel_defaultContainerIdentifierWithReply_ argumentIndex:0 ofReply:1];

  v96 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v96 forSelector:sel_defaultContainerIdentifierWithReply_ argumentIndex:1 ofReply:1];

  v97 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v97 forSelector:sel_setDefaultAccountIdentifier_withReply_ argumentIndex:0 ofReply:0];

  v98 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v98 forSelector:sel_setDefaultAccountIdentifier_withReply_ argumentIndex:0 ofReply:1];

  v99 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v99 forSelector:sel_setDefaultAccountIdentifier_withReply_ argumentIndex:1 ofReply:1];

  v100 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v100 forSelector:sel_setMeContact_withReply_ argumentIndex:0 ofReply:0];

  v101 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v101 forSelector:sel_setMeContact_withReply_ argumentIndex:0 ofReply:1];

  v102 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v102 forSelector:sel_setMeContact_withReply_ argumentIndex:1 ofReply:1];

  v103 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v103 forSelector:sel_setMeContact_forContainer_withReply_ argumentIndex:0 ofReply:0];

  v104 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v104 forSelector:sel_setMeContact_forContainer_withReply_ argumentIndex:1 ofReply:0];

  v105 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v105 forSelector:sel_setMeContact_forContainer_withReply_ argumentIndex:0 ofReply:1];

  v106 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v106 forSelector:sel_setMeContact_forContainer_withReply_ argumentIndex:1 ofReply:1];

  v107 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v107 forSelector:sel_setBestMeIfNeededForGivenName_familyName_email_withReply_ argumentIndex:0 ofReply:0];

  v108 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v108 forSelector:sel_setBestMeIfNeededForGivenName_familyName_email_withReply_ argumentIndex:1 ofReply:0];

  v109 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v109 forSelector:sel_setBestMeIfNeededForGivenName_familyName_email_withReply_ argumentIndex:2 ofReply:0];

  v110 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v110 forSelector:sel_setBestMeIfNeededForGivenName_familyName_email_withReply_ argumentIndex:0 ofReply:1];

  v111 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v111 forSelector:sel_setBestMeIfNeededForGivenName_familyName_email_withReply_ argumentIndex:1 ofReply:1];

  v112 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v112 forSelector:sel_favoritesEntryDictionariesAtPath_withReply_ argumentIndex:0 ofReply:0];

  v113 = MEMORY[0x1E695DFD8];
  v114 = objc_opt_class();
  v115 = objc_opt_class();
  v116 = objc_opt_class();
  v117 = [v113 setWithObjects:{v114, v115, v116, objc_opt_class(), 0}];
  [v2 setClasses:v117 forSelector:sel_favoritesEntryDictionariesAtPath_withReply_ argumentIndex:0 ofReply:1];

  v118 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v118 forSelector:sel_favoritesEntryDictionariesAtPath_withReply_ argumentIndex:1 ofReply:1];

  v119 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v119 forSelector:sel_writeFavoritesPropertyListData_toPath_withReply_ argumentIndex:0 ofReply:0];

  v120 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v120 forSelector:sel_writeFavoritesPropertyListData_toPath_withReply_ argumentIndex:1 ofReply:0];

  v121 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v121 forSelector:sel_writeFavoritesPropertyListData_toPath_withReply_ argumentIndex:0 ofReply:1];

  v122 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v122 forSelector:sel_writeFavoritesPropertyListData_toPath_withReply_ argumentIndex:1 ofReply:1];

  v123 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v123 forSelector:sel_registerChangeHistoryClientIdentifier_forContainerIdentifier_withReply_ argumentIndex:0 ofReply:0];

  v124 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v124 forSelector:sel_registerChangeHistoryClientIdentifier_forContainerIdentifier_withReply_ argumentIndex:1 ofReply:0];

  v125 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v125 forSelector:sel_registerChangeHistoryClientIdentifier_forContainerIdentifier_withReply_ argumentIndex:0 ofReply:1];

  v126 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v126 forSelector:sel_registerChangeHistoryClientIdentifier_forContainerIdentifier_withReply_ argumentIndex:1 ofReply:1];

  v127 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v127 forSelector:sel_unregisterChangeHistoryClientIdentifier_forContainerIdentifier_withReply_ argumentIndex:0 ofReply:0];

  v128 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v128 forSelector:sel_unregisterChangeHistoryClientIdentifier_forContainerIdentifier_withReply_ argumentIndex:1 ofReply:0];

  v129 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v129 forSelector:sel_unregisterChangeHistoryClientIdentifier_forContainerIdentifier_withReply_ argumentIndex:0 ofReply:1];

  v130 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v130 forSelector:sel_unregisterChangeHistoryClientIdentifier_forContainerIdentifier_withReply_ argumentIndex:1 ofReply:1];

  v131 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v131 forSelector:sel_changeHistoryWithFetchRequest_withReply_ argumentIndex:0 ofReply:0];

  v132 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v132 forSelector:sel_changeHistoryWithFetchRequest_withReply_ argumentIndex:0 ofReply:1];

  v133 = MEMORY[0x1E695DFD8];
  v134 = objc_opt_class();
  v135 = [v133 setWithObjects:{v134, objc_opt_class(), 0}];
  [v2 setClasses:v135 forSelector:sel_changeHistoryWithFetchRequest_withReply_ argumentIndex:1 ofReply:1];

  v136 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v136 forSelector:sel_currentHistoryTokenWithReply_ argumentIndex:0 ofReply:1];

  v137 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v137 forSelector:sel_currentHistoryTokenWithReply_ argumentIndex:1 ofReply:1];

  v138 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v138 forSelector:sel_currentHistoryAnchorWithReply_ argumentIndex:0 ofReply:1];

  v139 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v139 forSelector:sel_currentHistoryAnchorWithReply_ argumentIndex:1 ofReply:1];

  v140 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v140 forSelector:sel_executeChangeHistoryClearRequest_withReply_ argumentIndex:0 ofReply:0];

  v141 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v141 forSelector:sel_executeChangeHistoryClearRequest_withReply_ argumentIndex:0 ofReply:1];

  v142 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v142 forSelector:sel_executeChangeHistoryClearRequest_withReply_ argumentIndex:1 ofReply:1];

  v143 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v143 forSelector:sel_geminiResultForContact_substituteDefaultForDangling_withReply_ argumentIndex:0 ofReply:0];

  v144 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v144 forSelector:sel_geminiResultForContact_substituteDefaultForDangling_withReply_ argumentIndex:0 ofReply:1];

  v145 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v145 forSelector:sel_geminiResultForContact_substituteDefaultForDangling_withReply_ argumentIndex:1 ofReply:1];

  v146 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v146 forSelector:sel_bestSenderIdentityForHandle_withReply_ argumentIndex:0 ofReply:0];

  v147 = [MEMORY[0x1E695DFD8] setWithObjects:{getTUSenderIdentityClass(), 0}];
  [v2 setClasses:v147 forSelector:sel_bestSenderIdentityForHandle_withReply_ argumentIndex:0 ofReply:1];

  v148 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v148 forSelector:sel_bestSenderIdentityForHandle_withReply_ argumentIndex:1 ofReply:1];

  v149 = +[CNSecureCodingClassSets keyDescriptorClasses];
  [v2 setClasses:v149 forSelector:sel_authorizedKeysForContactKeys_withReply_ argumentIndex:0 ofReply:0];

  v150 = +[CNSecureCodingClassSets keyDescriptorClasses];
  [v2 setClasses:v150 forSelector:sel_authorizedKeysForContactKeys_withReply_ argumentIndex:0 ofReply:1];

  v151 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v151 forSelector:sel_authorizedKeysForContactKeys_withReply_ argumentIndex:1 ofReply:1];

  v152 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v152 forSelector:sel_getBackgroundColorOnImageData_bitmapFormat_withReply_ argumentIndex:0 ofReply:0];

  v153 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v153 forSelector:sel_getBackgroundColorOnImageData_bitmapFormat_withReply_ argumentIndex:1 ofReply:0];

  v154 = MEMORY[0x1E695DFD8];
  v155 = objc_opt_class();
  v156 = objc_opt_class();
  v157 = objc_opt_class();
  v158 = [v154 setWithObjects:{v155, v156, v157, objc_opt_class(), 0}];
  [v2 setClasses:v158 forSelector:sel_getBackgroundColorOnImageData_bitmapFormat_withReply_ argumentIndex:0 ofReply:1];

  v159 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v159 forSelector:sel_addLimitedAccessForBundle_contactIdentifier_withReply_ argumentIndex:0 ofReply:0];

  v160 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v160 forSelector:sel_addLimitedAccessForBundle_contactIdentifier_withReply_ argumentIndex:1 ofReply:0];

  v161 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v161 forSelector:sel_addLimitedAccessForBundle_contactIdentifier_withReply_ argumentIndex:0 ofReply:1];

  v162 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v162 forSelector:sel_addLimitedAccessForBundle_contactIdentifier_withReply_ argumentIndex:1 ofReply:1];

  v163 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v163 forSelector:sel_addLimitedAccessForBundle_contactIdentifiers_withReply_ argumentIndex:0 ofReply:0];

  v164 = MEMORY[0x1E695DFD8];
  v165 = objc_opt_class();
  v166 = [v164 setWithObjects:{v165, objc_opt_class(), 0}];
  [v2 setClasses:v166 forSelector:sel_addLimitedAccessForBundle_contactIdentifiers_withReply_ argumentIndex:1 ofReply:0];

  v167 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v167 forSelector:sel_addLimitedAccessForBundle_contactIdentifiers_withReply_ argumentIndex:0 ofReply:1];

  v168 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v168 forSelector:sel_addLimitedAccessForBundle_contactIdentifiers_withReply_ argumentIndex:1 ofReply:1];

  v169 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v169 forSelector:sel_getLimitedAccessContactsCountForBundle_withReply_ argumentIndex:0 ofReply:0];

  v170 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v170 forSelector:sel_getLimitedAccessContactsCountForBundle_withReply_ argumentIndex:0 ofReply:1];

  v171 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v171 forSelector:sel_removeLimitedAccessForBundle_contactIdentifier_withReply_ argumentIndex:0 ofReply:0];

  v172 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v172 forSelector:sel_removeLimitedAccessForBundle_contactIdentifier_withReply_ argumentIndex:1 ofReply:0];

  v173 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v173 forSelector:sel_removeLimitedAccessForBundle_contactIdentifier_withReply_ argumentIndex:0 ofReply:1];

  v174 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v174 forSelector:sel_removeLimitedAccessForBundle_contactIdentifier_withReply_ argumentIndex:1 ofReply:1];

  v175 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v175 forSelector:sel_removeLimitedAccessForBundle_contactIdentifiers_withReply_ argumentIndex:0 ofReply:0];

  v176 = MEMORY[0x1E695DFD8];
  v177 = objc_opt_class();
  v178 = [v176 setWithObjects:{v177, objc_opt_class(), 0}];
  [v2 setClasses:v178 forSelector:sel_removeLimitedAccessForBundle_contactIdentifiers_withReply_ argumentIndex:1 ofReply:0];

  v179 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v179 forSelector:sel_removeLimitedAccessForBundle_contactIdentifiers_withReply_ argumentIndex:0 ofReply:1];

  v180 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v180 forSelector:sel_removeLimitedAccessForBundle_contactIdentifiers_withReply_ argumentIndex:1 ofReply:1];

  v181 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v181 forSelector:sel_fetchLimitedAccessContactIdentifiersForBundle_withReply_ argumentIndex:0 ofReply:0];

  v182 = MEMORY[0x1E695DFD8];
  v183 = objc_opt_class();
  v184 = [v182 setWithObjects:{v183, objc_opt_class(), 0}];
  [v2 setClasses:v184 forSelector:sel_fetchLimitedAccessContactIdentifiersForBundle_withReply_ argumentIndex:0 ofReply:1];

  v185 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v185 forSelector:sel_fetchLimitedAccessContactIdentifiersForBundle_withReply_ argumentIndex:1 ofReply:1];

  v186 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v186 forSelector:sel_populateSyncTableForLimitedAccessAboveSequenceNumber_withReply_ argumentIndex:0 ofReply:0];

  v187 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v187 forSelector:sel_populateSyncTableForLimitedAccessAboveSequenceNumber_withReply_ argumentIndex:0 ofReply:1];

  v188 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v188 forSelector:sel_populateSyncTableForLimitedAccessAboveSequenceNumber_withReply_ argumentIndex:1 ofReply:1];

  v189 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v189 forSelector:sel_updateLimitedAccessTable_withReply_ argumentIndex:0 ofReply:0];

  v190 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v190 forSelector:sel_updateLimitedAccessTable_withReply_ argumentIndex:0 ofReply:1];

  v191 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v191 forSelector:sel_updateLimitedAccessTable_withReply_ argumentIndex:1 ofReply:1];

  v192 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v192 forSelector:sel_getLimitedAccessLastSyncSequenceNumberWithReply_ argumentIndex:0 ofReply:1];

  v193 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v193 forSelector:sel_getLimitedAccessLastSyncSequenceNumberWithReply_ argumentIndex:1 ofReply:1];

  v194 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v194 forSelector:sel_purgeLimitedAccessRecordsForBundle_withReply_ argumentIndex:0 ofReply:0];

  v195 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v195 forSelector:sel_purgeLimitedAccessRecordsForBundle_withReply_ argumentIndex:0 ofReply:1];

  v196 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v196 forSelector:sel_purgeLimitedAccessRecordsForBundle_withReply_ argumentIndex:1 ofReply:1];

  v197 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v197 forSelector:sel_getWatchLimitedAccessSyncDataStartingAtSequenceNumber_withReply_ argumentIndex:0 ofReply:0];

  v198 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v198 forSelector:sel_getWatchLimitedAccessSyncDataStartingAtSequenceNumber_withReply_ argumentIndex:0 ofReply:1];

  v199 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v199 forSelector:sel_getWatchLimitedAccessSyncDataStartingAtSequenceNumber_withReply_ argumentIndex:1 ofReply:1];

  v200 = MEMORY[0x1E695DFD8];
  v201 = objc_opt_class();
  v202 = [v200 setWithObjects:{v201, objc_opt_class(), 0}];
  [v2 setClasses:v202 forSelector:sel_applyLimitedAccessSyncEvents_withReply_ argumentIndex:0 ofReply:0];

  v203 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v203 forSelector:sel_applyLimitedAccessSyncEvents_withReply_ argumentIndex:0 ofReply:1];

  v204 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v204 forSelector:sel_applyLimitedAccessSyncEvents_withReply_ argumentIndex:1 ofReply:1];

  v205 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v205 forSelector:sel_dropAllLimitedAccessRowsWithReply_ argumentIndex:0 ofReply:1];

  v206 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v206 forSelector:sel_dropAllLimitedAccessRowsWithReply_ argumentIndex:1 ofReply:1];

  v207 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v207 forSelector:sel_dropAllLimitedAccessRowsAndSyncNotifyWithReply_ argumentIndex:0 ofReply:1];

  v208 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v208 forSelector:sel_dropAllLimitedAccessRowsAndSyncNotifyWithReply_ argumentIndex:1 ofReply:1];

  v209 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v209 forSelector:sel_setLimitedAccessTableCurrentSequenceNumber_withReply_ argumentIndex:0 ofReply:0];

  v210 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v210 forSelector:sel_setLimitedAccessTableCurrentSequenceNumber_withReply_ argumentIndex:0 ofReply:1];

  v211 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v211 forSelector:sel_setLimitedAccessTableCurrentSequenceNumber_withReply_ argumentIndex:1 ofReply:1];

  v212 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v212 forSelector:sel_shouldAnalyzeDatabaseWithReply_ argumentIndex:1 ofReply:1];

  v213 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v213 forSelector:sel_analyzeDatabaseWithReply_ argumentIndex:0 ofReply:1];

  v214 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v214 forSelector:sel_analyzeDatabaseWithReply_ argumentIndex:1 ofReply:1];

  return v2;
}

+ (id)cursorProtocolInterface
{
  objc_opt_self();
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0996A28];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_fetchNextBatchWithReply_ argumentIndex:0 ofReply:1];

  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v2 forSelector:sel_fetchNextBatchWithReply_ argumentIndex:2 ofReply:1];

  return v0;
}

- (id)currentHistoryToken
{
  if (self)
  {
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    serviceConnection = 0;
  }

  v4 = serviceConnection;
  OUTLINED_FUNCTION_10_1();
  v6 = [v5 remoteResultForSelector:? error:?];
  v14 = OUTLINED_FUNCTION_14_0(v6, v7, v8, v9, v10, v11, v12, v13, v17, 0);

  v15 = (*(*MEMORY[0x1E6996590] + 16))();

  return v15;
}

+ (id)contactBuffersDecoderForFetchRequest:(id)request posterDataStore:(id)store
{
  storeCopy = store;
  requestCopy = request;
  v7 = [[CNiOSABContactBuffersDecoder alloc] initWithFetchRequest:requestCopy posterDataStore:storeCopy];

  return v7;
}

+ (id)os_log
{
  objc_opt_self();
  if (os_log_cn_once_token_2_2 != -1)
  {
    +[CNXPCDataMapper os_log];
  }

  v0 = os_log_cn_once_object_2_2;

  return v0;
}

uint64_t __25__CNXPCDataMapper_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNXPCDataMapper");
  v1 = os_log_cn_once_object_2_2;
  os_log_cn_once_object_2_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNXPCDataMapper)init
{
  v3 = objc_alloc_init(CNDataMapperConfiguration);
  v4 = +[CNContactsEnvironment currentEnvironment];
  [(CNDataMapperConfiguration *)v3 setEnvironment:v4];

  v5 = [(CNXPCDataMapper *)self initWithConfiguration:v3];
  return v5;
}

- (CNXPCDataMapper)initWithConfiguration:(id)configuration
{
  v5 = @"com.apple.contactsd";
  configurationCopy = configuration;
  if ([configurationCopy isContactProvider])
  {
    v7 = @"com.apple.contactsd.contact-provider";

    v5 = v7;
  }

  v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v5 options:0];
  v9 = [(CNXPCDataMapper *)self initWithConfiguration:configurationCopy connection:v8];

  return v9;
}

- (CNXPCDataMapper)initWithConfiguration:(id)configuration connection:(id)connection
{
  configurationCopy = configuration;
  connectionCopy = connection;
  v38.receiver = self;
  v38.super_class = CNXPCDataMapper;
  v8 = [(CNXPCDataMapper *)&v38 init];
  if (v8)
  {
    environment = [configurationCopy environment];
    loggerProvider = [environment loggerProvider];
    contactsLogger = [loggerProvider contactsLogger];

    objc_storeStrong(&v8->_logger, contactsLogger);
    v12 = +[CNXPCDataMapper serviceProtocolInterface];
    v13 = [[CNXPCConnection alloc] initWithConnection:connectionCopy interface:v12 logger:contactsLogger];
    serviceConnection = v8->_serviceConnection;
    v8->_serviceConnection = v13;

    serviceProxy = [(CNXPCConnection *)v8->_serviceConnection serviceProxy];
    serviceProxy = v8->_serviceProxy;
    v8->_serviceProxy = serviceProxy;

    v17 = [CNAuthorization alloc];
    assumedIdentity = [configurationCopy assumedIdentity];
    v19 = [(CNAuthorization *)v17 initWithAssumedIdentity:assumedIdentity];
    authorization = v8->_authorization;
    v8->_authorization = v19;

    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    keyboardStateMonitor = [currentEnvironment keyboardStateMonitor];
    keyboardStateMonitor = v8->_keyboardStateMonitor;
    v8->_keyboardStateMonitor = keyboardStateMonitor;

    v24 = objc_opt_new();
    environment2 = [configurationCopy environment];
    useInMemoryStores = [environment2 useInMemoryStores];

    if (useInMemoryStores)
    {
      [v24 setObject:MEMORY[0x1E695E118] forKey:@"CNiOSAddressBookDataMapperUnitTestInMemoryStoreKey"];
    }

    else
    {
      environment3 = [configurationCopy environment];
      v37 = [(CNXPCDataMapper *)v8 unitTestPathFromEnvironment:environment3];

      if (v37 && [v37 length])
      {
        [v24 setObject:v37 forKey:@"CNiOSAddressBookDataMapperUnitTestPathKey"];
      }
    }

    assumedIdentity2 = [configurationCopy assumedIdentity];

    if (assumedIdentity2)
    {
      v28 = objc_alloc(getPABridgedTCCIdentityClass[0]());
      assumedIdentity3 = [configurationCopy assumedIdentity];
      v30 = [v28 initWithTCCIdentity:assumedIdentity3];

      if (v30)
      {
        [v24 setObject:v30 forKey:@"CNAssumedIdentity"];
      }
    }

    if (((*(*MEMORY[0x1E6996548] + 16))() & 1) == 0)
    {
      [(CNXPCDataMapperService *)v8->_serviceProxy configureServiceWithOptions:v24];
    }

    environment4 = [configurationCopy environment];
    posterDataStore = [environment4 posterDataStore];
    posterDataStore = v8->_posterDataStore;
    v8->_posterDataStore = posterDataStore;

    v34 = v8;
  }

  return v8;
}

- (id)contactCountForFetchRequest:(id)request error:(id *)error
{
  if (self)
  {
    ensureFetchRequestHasKeyboardState(request, self->_keyboardStateMonitor);
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    [CNXPCDataMapper contactCountForFetchRequest:request error:?];
    serviceConnection = 0;
  }

  v8 = [(CNXPCConnection *)serviceConnection remoteResultForSelector:sel_contactCountForFetchRequest_withReply_ param1:request error:error];

  return v8;
}

void __56__CNXPCDataMapper_sectionListOffsetsForSortOrder_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id __52__CNXPCDataMapper_contactObservableForFetchRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E6996668]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__CNXPCDataMapper_contactObservableForFetchRequest___block_invoke_2;
  aBlock[3] = &unk_1E7412ED8;
  v5 = v3;
  v21 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [*(a1 + 32) effectivePredicate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 cn_supportsEncodedFetching])
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v19 = 0;
    v10 = [(CNXPCDataMapper *)v8 fetchAndDecodeEncodedContactsForFetchRequest:v9 error:&v19 cancelationToken:v4 batchHandler:v6];
    v11 = v19;
  }

  else
  {
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v18 = 0;
    v10 = [(CNXPCDataMapper *)v12 fetchContactsForFetchRequest:v13 error:&v18 batchHandler:v6];
    v11 = v18;
  }

  v14 = v11;
  v15 = v14;
  if (v10)
  {
    [v5 observerDidComplete];
  }

  else
  {
    if (!v14)
    {
      v16 = os_log_create("com.apple.contacts", "data-access-error");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __52__CNXPCDataMapper_contactObservableForFetchRequest___block_invoke_cold_1(v16);
      }

      v15 = [CNErrorFactory errorWithCode:2 userInfo:0];
    }

    [v5 observerDidFailWithError:v15];
  }

  return v4;
}

void __52__CNXPCDataMapper_contactObservableForFetchRequest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__CNXPCDataMapper_contactObservableForFetchRequest___block_invoke_3;
  v8[3] = &unk_1E7412EB0;
  v9 = v5;
  v6 = v5;
  v7 = [a2 _cn_map:v8];
  [*(a1 + 32) observerDidReceiveResult:v7];
}

id __52__CNXPCDataMapper_contactObservableForFetchRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69967A8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 identifier];
  v6 = [v3 objectForKeyedSubscript:v5];
  v7 = [v2 pairWithFirst:v4 second:v6];

  return v7;
}

- (uint64_t)fetchAndDecodeEncodedContactsForFetchRequest:(void *)request error:(void *)error cancelationToken:(void *)token batchHandler:
{
  v9 = a2;
  errorCopy = error;
  tokenCopy = token;
  if (!self)
  {
    v18 = 0;
    goto LABEL_12;
  }

  v12 = [CNXPCDataMapper contactBuffersDecoderForFetchRequest:v9 posterDataStore:*(self + 48)];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__6;
  v32 = __Block_byref_object_dispose__6;
  v33 = 0;
  v13 = *(self + 24);
  v14 = *(self + 40);
  ensureFetchRequestHasKeyboardState(v9, v14);

  v27 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __100__CNXPCDataMapper_fetchAndDecodeEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke;
  v21[3] = &unk_1E7412F78;
  v25 = &v34;
  v15 = v12;
  v22 = v15;
  v24 = tokenCopy;
  v16 = v13;
  v23 = v16;
  v26 = &v28;
  LOBYTE(v14) = [(CNXPCDataMapper *)self fetchEncodedContactsForFetchRequest:v9 error:&v27 cancelationToken:errorCopy batchHandler:v21];
  v17 = v27;
  if ((v14 & 1) == 0)
  {
    [v16 didFetchContacts:0 error:v17];
    v19 = v17;
    if (request)
    {
LABEL_9:
      v18 = 0;
      *request = v19;
      goto LABEL_11;
    }

LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  if ((v35[3] & 1) == 0)
  {
    [v16 didFetchContacts:0 error:v29[5]];
    if (request)
    {
      v19 = v29[5];
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v18 = 1;
LABEL_11:

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

LABEL_12:
  return v18;
}

- (uint64_t)fetchContactsForFetchRequest:(void *)request error:(void *)error batchHandler:
{
  v7 = a2;
  errorCopy = error;
  if (self)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__6;
    v27 = __Block_byref_object_dispose__6;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v9 = *(self + 40);
    ensureFetchRequestHasKeyboardState(v7, v9);

    v10 = *(self + 16);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__CNXPCDataMapper_fetchContactsForFetchRequest_error_batchHandler___block_invoke;
    v15[3] = &unk_1E7412F28;
    v17 = &v19;
    v18 = &v23;
    v16 = errorCopy;
    [v10 contactsForFetchRequest:v7 withMatchInfoReply:v15];

    if ((v20[3] & 1) == 0)
    {
      v11 = [CNErrorFactory errorWithCode:1 userInfo:0];
      v12 = v24[5];
      v24[5] = v11;
    }

    v13 = v24[5];
    self = v13 == 0;
    if (request && v13)
    {
      *request = v13;
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);
  }

  return self;
}

void __67__CNXPCDataMapper_fetchContactsForFetchRequest_error_batchHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  *(*(a1[5] + 8) + 24) = 1;
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a4);
  }

  else
  {
    (*(a1[4] + 16))();
  }
}

void __100__CNXPCDataMapper_fetchAndDecodeEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if ([v7 length])
  {
    v9 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __100__CNXPCDataMapper_fetchAndDecodeEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke_2;
    v13[3] = &unk_1E7412F50;
    v14 = v9;
    v15 = v8;
    v17 = *(a1 + 48);
    v16 = *(a1 + 40);
    v10 = *(*(a1 + 64) + 8);
    obj = *(v10 + 40);
    v11 = [v14 decodeContactsFromData:v7 moreComing:a4 ^ 1u replyHandler:v13 error:&obj];
    objc_storeStrong((v10 + 40), obj);
    *(*(*(a1 + 56) + 8) + 24) = v11;
  }
}

void __100__CNXPCDataMapper_fetchAndDecodeEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) contactMatchInfosFromABMatchInfos:*(a1 + 40) contacts:v4];
  if (v4)
  {
    (*(*(a1 + 56) + 16))();
    [*(a1 + 48) didFetchContacts:v4 error:0];
  }
}

- (uint64_t)fetchEncodedContactsForFetchRequest:(void *)request error:(void *)error cancelationToken:(void *)token batchHandler:
{
  v8 = a2;
  errorCopy = error;
  tokenCopy = token;
  if (self)
  {
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__6;
    v52 = __Block_byref_object_dispose__6;
    v53 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__6;
    v42 = __Block_byref_object_dispose__6;
    v43 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v10 = *(self + 40);
    ensureFetchRequestHasKeyboardState(v8, v10);

    v11 = *(self + 16);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __91__CNXPCDataMapper_fetchEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke;
    v27[3] = &unk_1E7412FC8;
    v30 = &v54;
    v31 = &v48;
    v29 = &v44;
    v27[4] = self;
    v32 = &v38;
    v12 = tokenCopy;
    v28 = v12;
    v33 = &v34;
    [v11 encodedContactsAndCursorForFetchRequest:v8 withReply:v27];

    if ((v35[3] & 1) == 0)
    {
      do
      {
        if (v49[5] || ([errorCopy isCanceled] & 1) != 0)
        {
          break;
        }

        *(v45 + 24) = 0;
        v13 = v39[5];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __91__CNXPCDataMapper_fetchEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke_3;
        v21[3] = &unk_1E7412FF0;
        v23 = &v44;
        v24 = &v54;
        v25 = &v48;
        v22 = v12;
        v26 = &v34;
        [v13 fetchNextBatchWithReply:v21];
        if ((v45[3] & 1) == 0)
        {
          *(v35 + 24) = 1;
        }
      }

      while (*(v35 + 24) != 1);
    }

    if ((v45[3] & 1) == 0)
    {
      v14 = [CNErrorFactory errorWithCode:1 userInfo:0];
      v15 = v49[5];
      v49[5] = v14;

      *(v55 + 24) = 0;
    }

    if (request)
    {
      v16 = v49[5];
      if (v16)
      {
        *request = v16;
      }
    }

    v17 = *(v55 + 24);

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v48, 8);

    _Block_object_dispose(&v54, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void __91__CNXPCDataMapper_fetchEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke(void *a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  *(*(a1[6] + 8) + 24) = 1;
  *(*(a1[7] + 8) + 24) = v13 == 0;
  if (*(*(a1[7] + 8) + 24))
  {
    v14 = a1[4];
    if (v14)
    {
      v14 = v14[3];
    }

    v15 = v14;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__CNXPCDataMapper_fetchEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke_2;
    v20[3] = &unk_1E7412FA0;
    v21 = v15;
    v16 = v15;
    v17 = [a4 synchronousRemoteObjectProxyWithErrorHandler:v20];
    v18 = *(a1[9] + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    (*(a1[5] + 16))();
    *(*(a1[10] + 8) + 24) = a5;
  }

  else
  {
    objc_storeStrong((*(a1[8] + 8) + 40), a6);
  }
}

void __91__CNXPCDataMapper_fetchEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke_3(void *a1, void *a2, uint64_t a3, void *a4)
{
  v14 = a2;
  v7 = a4;
  v8 = v7;
  *(*(a1[5] + 8) + 24) = 1;
  if (v7)
  {
    *(*(a1[6] + 8) + 24) = 0;
    v9 = *(a1[7] + 8);
    v10 = v7;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    v12 = a1[4];
    v11 = [v14 data];
    v13 = [v14 matchInfo];
    (*(v12 + 16))(v12, v11, v13, a3);
  }

  *(*(a1[8] + 8) + 24) = a3;
}

void __74__CNXPCDataMapper_executeSaveRequest_response_authorizationContext_error___block_invoke(void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = 1;
  objc_storeStrong((*(a1[6] + 8) + 40), a4);
  v10 = a4;
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)policyForContainerWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = objc_alloc_init(CNPolicyDescription);
  [(CNPolicyDescription *)v7 setContainerIdentifier:identifierCopy];

  v8 = [(CNXPCDataMapper *)self policyWithDescription:v7 error:error];

  return v8;
}

- (id)unitTestPathFromEnvironment:(uint64_t)environment
{
  if (environment)
  {
    baseURL = [a2 baseURL];
    path = [baseURL path];
  }

  else
  {
    path = 0;
  }

  return path;
}

- (id)unifiedContactCountWithError:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  return [(CNXPCDataMapper *)self remoteResultForSelector:sel_unifiedContactCountWithReply_ error:error];
}

- (id)sectionListOffsetsForSortOrder:(int64_t)order error:(id *)error
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_3();
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  OUTLINED_FUNCTION_2();
  v18[1] = 3221225472;
  v18[2] = __56__CNXPCDataMapper_sectionListOffsetsForSortOrder_error___block_invoke;
  v18[3] = &unk_1E7412E88;
  v18[4] = &v23;
  v18[5] = &v19;
  [v9 sectionListOffsetsForSortOrder:order reply:v18];

  v10 = v24[5];
  if (error && !v10)
  {
    *error = v20[5];
    v10 = v24[5];
  }

  v11 = v10;
  OUTLINED_FUNCTION_11(v11, v12, v13, v14, v15, v16);

  _Block_object_dispose(&v23, 8);

  return error;
}

- (id)contactObservableForFetchRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy;
  if (self && self->_serviceConnection)
  {
    if (self->_serviceProxy)
    {
      ensureFetchRequestHasKeyboardState(requestCopy, self->_keyboardStateMonitor);
      v6 = MEMORY[0x1E6996798];
      OUTLINED_FUNCTION_2();
      v12[1] = 3221225472;
      v12[2] = __52__CNXPCDataMapper_contactObservableForFetchRequest___block_invoke;
      v12[3] = &unk_1E7412F00;
      v13 = v5;
      selfCopy = self;
      v7 = [v6 observableWithBlock:v12];

      goto LABEL_8;
    }

    v8 = MEMORY[0x1E6996798];
    v9 = 1;
  }

  else
  {
    v8 = MEMORY[0x1E6996798];
    v9 = 100;
  }

  v10 = [CNErrorFactory errorWithCode:v9 userInfo:0];
  v7 = [v8 observableWithError:v10];

LABEL_8:

  return v7;
}

- (id)identifierWithError:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  return [(CNXPCDataMapper *)self remoteResultForSelector:sel_identifierWithReply_ error:error];
}

- (id)meContactIdentifiers:(id *)identifiers
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  return [(CNXPCDataMapper *)self remoteResultForSelector:sel_meContactIdentifiersWithReply_ error:identifiers];
}

- (BOOL)executeSaveRequest:(id)request response:(id *)response authorizationContext:(id)context error:(id *)error
{
  requestCopy = request;
  contextCopy = context;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  OUTLINED_FUNCTION_8_1();
  v33 = v11;
  OUTLINED_FUNCTION_7_1();
  v34 = v12;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = v13;
  OUTLINED_FUNCTION_8_1();
  v27 = v14;
  OUTLINED_FUNCTION_7_1();
  v28 = v15;
  v29 = 0;
  if (self && self->_serviceConnection)
  {
    OUTLINED_FUNCTION_2();
    v23[1] = 3221225472;
    v23[2] = __74__CNXPCDataMapper_executeSaveRequest_response_authorizationContext_error___block_invoke;
    v23[3] = &unk_1E7413018;
    v23[4] = &v40;
    v23[5] = &v36;
    v23[6] = &v30;
    v23[7] = &v24;
    v16 = _Block_copy(v23);
    [(CNXPCDataMapper *)self _logAnyUpdatesZeroingPhoneAndEmailForSaveRequest:requestCopy];
    [(CNXPCDataMapper *)self _logUpdatesChangingSharedPhotoPrefForSaveRequest:requestCopy];
    v17 = self->_serviceProxy;
    [(CNXPCDataMapperService *)v17 executeSaveRequest:requestCopy withReply:v16];

    if (v37[3])
    {
      if (v41[3])
      {
        [v25[5] applySnapshotsToSaveRequest:requestCopy];
      }
    }

    else
    {
      v18 = [CNErrorFactory errorWithCode:1 userInfo:0];
      v19 = v31[5];
      v31[5] = v18;

      *(v41 + 24) = 0;
    }
  }

  else
  {
    v20 = [CNErrorFactory errorWithCode:100 userInfo:0];
    v16 = v31[5];
    v31[5] = v20;
  }

  v21 = *(v41 + 24);
  if (error && (v41[3] & 1) == 0)
  {
    *error = v31[5];
  }

  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v21;
}

- (void)_logAnyUpdatesZeroingPhoneAndEmailForSaveRequest:(uint64_t)request
{
  if (request)
  {
    v3 = [OUTLINED_FUNCTION_12_0(request a2)];
    OUTLINED_FUNCTION_16();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [(CNXPCDataMapper *)v2 _zeroedPhoneAndEmailCountsForUpdatedContact:?];
          if (v9)
          {
            [v2[3] saveRequestedZeroingHandleCounts:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        OUTLINED_FUNCTION_16();
        v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }
  }
}

- (void)_logUpdatesChangingSharedPhotoPrefForSaveRequest:(uint64_t)request
{
  if (request)
  {
    v3 = [OUTLINED_FUNCTION_12_0(request a2)];
    OUTLINED_FUNCTION_16();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [(CNXPCDataMapper *)v2 _sharedPhotoPreferenceChange:?];
          if (v9)
          {
            v10 = *(v2 + 24);
            first = [v9 first];
            second = [v9 second];
            [v10 saveUpdatedSharedPhotoDisplayPreferenceFrom:first to:second];
          }

          ++v8;
        }

        while (v6 != v8);
        OUTLINED_FUNCTION_16();
        v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }
  }
}

- (id)_zeroedPhoneAndEmailCountsForUpdatedContact:(void *)contact
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (contact)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v24[0] = @"phoneNumbers";
    v24[1] = @"emailAddresses";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v21;
      v9 = *MEMORY[0x1E6996558];
      v19 = *MEMORY[0x1E6996558];
      v18 = v4;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          if ([v3 isKeyAvailable:v11])
          {
            v12 = [v3 valueForKey:v11];
            if ([v12 count])
            {

              contact = 0;
              goto LABEL_28;
            }

            snapshot = [v3 snapshot];
            if (snapshot && !(*(v9 + 16))(v9, snapshot))
            {
              if ([snapshot isKeyAvailable:v11])
              {
                v14 = [snapshot valueForKey:v11];
                if ([v14 count])
                {
                  if (!v7)
                  {
                    v7 = objc_opt_new();
                  }

                  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
                  [v7 setObject:v15 forKeyedSubscript:v11];

                  v4 = v18;
                }

                v9 = v19;
              }
            }

            else
            {
              if (!v7)
              {
                v7 = objc_opt_new();
              }

              [v7 setObject:&unk_1F0987090 forKeyedSubscript:v11];
            }
          }

          ++v10;
        }

        while (v6 != v10);
        v16 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
        v6 = v16;
      }

      while (v16);
    }

    else
    {
      v7 = 0;
    }

    v7 = v7;
    contact = v7;
LABEL_28:
  }

  return contact;
}

- (id)_sharedPhotoPreferenceChange:(uint64_t)change
{
  v3 = a2;
  v4 = v3;
  if (!change || ![v3 isKeyAvailable:@"sharedPhotoDisplayPreference"])
  {
    v8 = 0;
    goto LABEL_12;
  }

  snapshot = [v4 snapshot];
  if (!snapshot || ((*(*MEMORY[0x1E6996558] + 16))() & 1) != 0 || ([snapshot isKeyAvailable:@"sharedPhotoDisplayPreference"] & 1) == 0)
  {
    v9 = MEMORY[0x1E69967A8];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "sharedPhotoDisplayPreference")}];
    v8 = [v9 pairWithFirst:&unk_1F0987090 second:v10];
LABEL_10:

    goto LABEL_11;
  }

  sharedPhotoDisplayPreference = [snapshot sharedPhotoDisplayPreference];
  sharedPhotoDisplayPreference2 = [v4 sharedPhotoDisplayPreference];
  if (sharedPhotoDisplayPreference != sharedPhotoDisplayPreference2)
  {
    v12 = sharedPhotoDisplayPreference2;
    v13 = MEMORY[0x1E69967A8];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:sharedPhotoDisplayPreference];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
    v8 = [v13 pairWithFirst:v10 second:v14];

    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

LABEL_12:

  return v8;
}

- (id)executeFetchRequest:(id)request progressiveResults:(id)results completion:(id)completion
{
  requestCopy = request;
  resultsCopy = results;
  completionCopy = completion;
  if (self)
  {
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    serviceConnection = 0;
  }

  if (!serviceConnection)
  {
    v12 = [CNErrorFactory errorWithCode:100 userInfo:0];
    completionCopy[2](completionCopy, v12);
  }

  if (self)
  {
    keyboardStateMonitor = self->_keyboardStateMonitor;
  }

  else
  {
    keyboardStateMonitor = 0;
  }

  ensureFetchRequestHasKeyboardState(requestCopy, keyboardStateMonitor);
  v14 = [[CNXPCDataMapperProgressiveHandler alloc] initWithProgressBlock:resultsCopy completionBlock:completionCopy];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = 0;
  if (self)
  {
    serviceProxy = self->_serviceProxy;
  }

  else
  {
    serviceProxy = 0;
  }

  v16 = serviceProxy;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __69__CNXPCDataMapper_executeFetchRequest_progressiveResults_completion___block_invoke;
  v22[3] = &unk_1E7413040;
  v22[4] = &v23;
  [(CNXPCDataMapperService *)v16 progressiveContactsForFetchRequest:requestCopy progressHandler:v14 reply:v22];

  if (v24[5])
  {
    v17 = [MEMORY[0x1E6996668] tokenWrappingCancelable:?];
    OUTLINED_FUNCTION_2();
    v20[1] = 3221225472;
    v20[2] = __69__CNXPCDataMapper_executeFetchRequest_progressiveResults_completion___block_invoke_2;
    v20[3] = &unk_1E7412A88;
    v21 = v14;
    [v17 addCancelationBlock:v20];
  }

  else
  {
    if (completionCopy)
    {
      v18 = [CNErrorFactory errorWithCode:1 userInfo:0];
      completionCopy[2](completionCopy, v18);
    }

    v17 = objc_alloc_init(MEMORY[0x1E6996668]);
  }

  _Block_object_dispose(&v23, 8);

  return v17;
}

- (id)containersMatchingPredicate:(id)predicate error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  return [(CNXPCDataMapper *)self remoteResultForSelector:sel_containersMatchingPredicate_withReply_ param1:predicate error:error];
}

- (id)serverSearchContainersMatchingPredicate:(id)predicate error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  return [(CNXPCDataMapper *)self remoteResultForSelector:sel_serverSearchContainersMatchingPredicate_withReply_ param1:predicate error:error];
}

- (id)policyWithDescription:(id)description error:(id *)error
{
  if (self)
  {
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    serviceConnection = 0;
  }

  v7 = serviceConnection;
  containerIdentifier = [description containerIdentifier];
  v9 = [(CNXPCConnection *)v7 remoteResultForSelector:sel_policyForContainerWithIdentifier_withReply_ param1:containerIdentifier error:error];

  return v9;
}

- (id)accountsMatchingPredicate:(id)predicate error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  return [(CNXPCDataMapper *)self remoteResultForSelector:sel_accountsMatchingPredicate_withReply_ param1:predicate error:error];
}

- (id)groupsMatchingPredicate:(id)predicate error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  return [(CNXPCDataMapper *)self remoteResultForSelector:sel_groupsMatchingPredicate_withReply_ param1:predicate error:error];
}

- (id)subgroupsOfGroupWithIdentifier:(id)identifier error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  return [(CNXPCDataMapper *)self remoteResultForSelector:sel_subgroupsOfGroupWithIdentifier_withReply_ param1:identifier error:error];
}

- (id)defaultContainerIdentifier
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  return [(CNXPCDataMapper *)self remoteResultForSelector:sel_defaultContainerIdentifierWithReply_ error:0];
}

- (BOOL)setMeContact:(id)contact error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  v4 = [(CNXPCDataMapper *)self remoteResultForSelector:sel_setMeContact_withReply_ param1:contact error:error];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)setMeContact:(id)contact forContainer:(id)container error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  v5 = [(CNXPCDataMapper *)self remoteResultForSelector:sel_setMeContact_forContainer_withReply_ param1:contact param2:container error:error];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)setBestMeIfNeededForGivenName:(id)name familyName:(id)familyName email:(id)email error:(id *)error
{
  v10 = MEMORY[0x1E696AE08];
  emailCopy = email;
  familyNameCopy = familyName;
  nameCopy = name;
  weakObjectsPointerArray = [v10 weakObjectsPointerArray];
  [weakObjectsPointerArray addPointer:nameCopy];

  [weakObjectsPointerArray addPointer:familyNameCopy];
  [weakObjectsPointerArray addPointer:emailCopy];

  if (self)
  {
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    serviceConnection = 0;
  }

  v16 = [(CNXPCConnection *)serviceConnection remoteResultForSelector:sel_setBestMeIfNeededForGivenName_familyName_email_withReply_ parameters:weakObjectsPointerArray error:error];
  bOOLValue = [v16 BOOLValue];

  return bOOLValue;
}

- (id)contactWithUserActivityUserInfo:(id)info keysToFetch:(id)fetch
{
  infoCopy = info;
  fetchCopy = fetch;
  if (self && self->_serviceConnection)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_2_3();
    v8 = self->_serviceProxy;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_12();
    v13 = __63__CNXPCDataMapper_contactWithUserActivityUserInfo_keysToFetch___block_invoke;
    v14 = &unk_1E7413068;
    v15 = &v16;
    [v9 contactWithUserActivityUserInfo:infoCopy keysToFetch:fetchCopy withReply:v12];

    v10 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)userActivityUserInfoForContact:(id)contact
{
  contactCopy = contact;
  if (self && self->_serviceConnection)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_2_3();
    v5 = self->_serviceProxy;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_12();
    v10 = __50__CNXPCDataMapper_userActivityUserInfoForContact___block_invoke;
    v11 = &unk_1E7413090;
    v12 = &v13;
    [v6 userActivityForContact:contactCopy withReply:v9];

    v7 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)registerChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  v5 = [(CNXPCDataMapper *)self remoteResultForSelector:sel_registerChangeHistoryClientIdentifier_forContainerIdentifier_withReply_ param1:identifier param2:containerIdentifier error:error];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)unregisterChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  v5 = [(CNXPCDataMapper *)self remoteResultForSelector:sel_unregisterChangeHistoryClientIdentifier_forContainerIdentifier_withReply_ param1:identifier param2:containerIdentifier error:error];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (id)changeHistoryWithFetchRequest:(id)request error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  return [(CNXPCDataMapper *)self remoteResultForSelector:sel_changeHistoryWithFetchRequest_withReply_ param1:request error:error];
}

- (BOOL)executeChangeHistoryClearRequest:(id)request error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  v4 = [(CNXPCDataMapper *)self remoteResultForSelector:sel_executeChangeHistoryClearRequest_withReply_ param1:request error:error];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)currentHistoryAnchor
{
  if (self)
  {
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    serviceConnection = 0;
  }

  v4 = serviceConnection;
  OUTLINED_FUNCTION_10_1();
  v6 = [v5 remoteResultForSelector:? error:?];
  v14 = OUTLINED_FUNCTION_14_0(v6, v7, v8, v9, v10, v11, v12, v13, v17, 0);

  v15 = [MEMORY[0x1E6996810] resultWithValue:sel_currentHistoryAnchorWithReply_ orError:v14];

  return v15;
}

- (id)favoritesEntryDictionariesAtPath:(id)path error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  return [(CNXPCDataMapper *)self remoteResultForSelector:sel_favoritesEntryDictionariesAtPath_withReply_ param1:path error:error];
}

- (BOOL)writeFavoritesPropertyListData:(id)data toPath:(id)path error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  v5 = [(CNXPCDataMapper *)self remoteResultForSelector:sel_writeFavoritesPropertyListData_toPath_withReply_ param1:data param2:path error:error];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)requestAccessForEntityType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    self = self->_authorization;
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v10 = __64__CNXPCDataMapper_requestAccessForEntityType_completionHandler___block_invoke;
  v11 = &unk_1E74130B8;
  v12 = v7;
  v8 = v7;
  [(CNXPCDataMapper *)self requestAccessForEntityType:type completionHandler:v9];
}

- (BOOL)requestAccessForEntityType:(int64_t)type error:(id *)error
{
  if (self)
  {
    self = self->_authorization;
  }

  return [(CNXPCDataMapper *)self requestAccessForEntityType:0 error:error];
}

- (id)authorizedKeysForContactKeys:(id)keys error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  return [(CNXPCDataMapper *)self remoteResultForSelector:sel_authorizedKeysForContactKeys_withReply_ param1:keys error:error];
}

- (id)getBackgroundColorOnImageData:(id)data bitmapFormat:(id)format error:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  return [(CNXPCDataMapper *)self remoteResultForSelector:sel_getBackgroundColorOnImageData_bitmapFormat_withReply_ param1:data param2:format error:error];
}

- (id)fetchLimitedAccessContactIdentifiersForBundle:(id)bundle
{
  if (self)
  {
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    serviceConnection = 0;
  }

  v6 = serviceConnection;
  OUTLINED_FUNCTION_4_1();
  v8 = [v7 remoteResultForSelector:? param1:? error:?];
  v16 = OUTLINED_FUNCTION_14_0(v8, v9, v10, v11, v12, v13, v14, v15, v18, 0);

  return bundle;
}

- (void)addLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier
{
  OUTLINED_FUNCTION_9_1();
  if (v6)
  {
    v7 = v4[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  OUTLINED_FUNCTION_5_0();
  v10 = [v9 remoteResultForSelector:? param1:? param2:? error:?];
  v11 = 0;

  if (v11)
  {
    objc_opt_class();
    v12 = +[CNXPCDataMapper os_log];
    if (OUTLINED_FUNCTION_15(v12))
    {
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_6_1(&dword_1954A0000, v13, v14, "addLimitedAccessForBundle error: %@", v15, v16, v17, v18, v19, 0, v20);
    }
  }
}

- (void)addLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers
{
  OUTLINED_FUNCTION_9_1();
  if (v6)
  {
    v7 = v4[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  OUTLINED_FUNCTION_5_0();
  v10 = [v9 remoteResultForSelector:? param1:? param2:? error:?];
  v11 = 0;

  if (v11)
  {
    objc_opt_class();
    v12 = +[CNXPCDataMapper os_log];
    if (OUTLINED_FUNCTION_15(v12))
    {
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_6_1(&dword_1954A0000, v13, v14, "addLimitedAccessForBundle error: %@", v15, v16, v17, v18, v19, 0, v20);
    }
  }
}

- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier
{
  OUTLINED_FUNCTION_9_1();
  if (v6)
  {
    v7 = v4[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  OUTLINED_FUNCTION_5_0();
  v10 = [v9 remoteResultForSelector:? param1:? param2:? error:?];
  v11 = 0;

  if (v11)
  {
    objc_opt_class();
    v12 = +[CNXPCDataMapper os_log];
    if (OUTLINED_FUNCTION_15(v12))
    {
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_6_1(&dword_1954A0000, v13, v14, "removeLimitedAccessForBundle error: %@", v15, v16, v17, v18, v19, 0, v20);
    }
  }
}

- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers
{
  OUTLINED_FUNCTION_9_1();
  if (v6)
  {
    v7 = v4[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  OUTLINED_FUNCTION_5_0();
  v10 = [v9 remoteResultForSelector:? param1:? param2:? error:?];
  v11 = 0;

  if (v11)
  {
    objc_opt_class();
    v12 = +[CNXPCDataMapper os_log];
    if (OUTLINED_FUNCTION_15(v12))
    {
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_6_1(&dword_1954A0000, v13, v14, "removeLimitedAccessForBundle error: %@", v15, v16, v17, v18, v19, 0, v20);
    }
  }
}

- (void)purgeLimitedAccessRecordsForBundle:(id)bundle
{
  v19 = *MEMORY[0x1E69E9840];
  if (self)
  {
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    serviceConnection = 0;
  }

  v17 = 0;
  v6 = serviceConnection;
  v7 = [(CNXPCConnection *)v6 remoteResultForSelector:sel_purgeLimitedAccessRecordsForBundle_withReply_ param1:bundle error:&v17];
  v8 = v17;

  if (v8)
  {
    objc_opt_class();
    v9 = +[CNXPCDataMapper os_log];
    if (OUTLINED_FUNCTION_15(v9))
    {
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_6_1(&dword_1954A0000, v10, v11, "purgeLimitedAccessRecordsForBundle error: %@", v12, v13, v14, v15, v16, v17, v18);
    }
  }
}

- (id)populateSyncTableForLimitedAccessAboveSequenceNumber:(id)number
{
  if (self)
  {
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    serviceConnection = 0;
  }

  v6 = serviceConnection;
  OUTLINED_FUNCTION_4_1();
  v8 = [v7 remoteResultForSelector:? param1:? error:?];
  v16 = OUTLINED_FUNCTION_14_0(v8, v9, v10, v11, v12, v13, v14, v15, v18, 0);

  return number;
}

- (void)updateLimitedAccessTable:(id)table
{
  if (self)
  {
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    serviceConnection = 0;
  }

  v5 = serviceConnection;
  OUTLINED_FUNCTION_4_1();
  v7 = [v6 remoteResultForSelector:? param1:? error:?];
  v8 = 0;
}

- (id)getLimitedAccessLastSyncSequenceNumber:(id *)number
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  return [(CNXPCDataMapper *)self remoteResultForSelector:sel_getLimitedAccessLastSyncSequenceNumber_ error:number];
}

- (id)getWatchLimitedAccessSyncDataStartingAtSequenceNumber:(id)number
{
  if (self)
  {
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    serviceConnection = 0;
  }

  v6 = serviceConnection;
  OUTLINED_FUNCTION_4_1();
  v8 = [v7 remoteResultForSelector:? param1:? error:?];
  v16 = OUTLINED_FUNCTION_14_0(v8, v9, v10, v11, v12, v13, v14, v15, v18, 0);

  return number;
}

- (void)applyLimitedAccessSyncEvents:(id)events
{
  if (self)
  {
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    serviceConnection = 0;
  }

  v5 = serviceConnection;
  OUTLINED_FUNCTION_4_1();
  v7 = [v6 remoteResultForSelector:? param1:? error:?];
  v8 = 0;
}

- (void)dropAllLimitedAccessRows
{
  if (self)
  {
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    serviceConnection = 0;
  }

  v4 = serviceConnection;
  OUTLINED_FUNCTION_10_1();
  v6 = [v5 remoteResultForSelector:? error:?];
  v7 = 0;
}

- (void)dropAllLimitedAccessRowsAndSyncNotify
{
  if (self)
  {
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    serviceConnection = 0;
  }

  v4 = serviceConnection;
  OUTLINED_FUNCTION_10_1();
  v6 = [v5 remoteResultForSelector:? error:?];
  v7 = 0;
}

- (void)setLimitedAccessTableCurrentSequenceNumber:(id)number
{
  if (self)
  {
    serviceConnection = self->_serviceConnection;
  }

  else
  {
    serviceConnection = 0;
  }

  v5 = serviceConnection;
  OUTLINED_FUNCTION_4_1();
  v7 = [v6 remoteResultForSelector:? param1:? error:?];
  v8 = 0;
}

- (BOOL)shouldAnalyzeDatabaseWithError:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  v3 = [(CNXPCDataMapper *)self remoteResultForSelector:sel_shouldAnalyzeDatabaseWithReply_ error:error];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)analyzeDatabaseWithError:(id *)error
{
  if (self)
  {
    self = self->_serviceConnection;
  }

  v3 = [(CNXPCDataMapper *)self remoteResultForSelector:sel_analyzeDatabaseWithReply_ error:error];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)contactCountForFetchRequest:(void *)a1 error:.cold.1(void *a1)
{
  v1 = a1;

  ensureFetchRequestHasKeyboardState(v1, 0);
}

@end