@interface EKEventStore
+ (BOOL)_isConfirmedSuggestedEvent:(id)a3 uniqueKey:(id *)a4;
+ (BOOL)_shouldRefreshSource:(id)a3;
+ (BOOL)_shouldUseInProcessXPCWithInitOptions:(unint64_t)a3;
+ (BOOL)_staticAccessFlagSaysDeniedForEntityType:(unint64_t)a3;
+ (Class)classForEntityName:(id)a3;
+ (EKAuthorizationStatus)authorizationStatusForEntityType:(EKEntityType)entityType;
+ (double)_defaultDelayForThrottledNotificationsWithInitializationOptions:(id)a3;
+ (double)_throttleDelayForEventStoreChangedNotificationWithLastFiredTime:(unint64_t)a3 delay:(double)a4;
+ (id)_contextForNotificationWithChangeType:(unint64_t)a3 changedObjectIDs:(id)a4;
+ (id)_filteredArrayWithIdentifiers:(id)a3 fromObjects:(id)a4 excludingObjects:(id)a5;
+ (id)_filteredObjectsWithIdentifiers:(id)a3 fromObjects:(id)a4 excludingObjects:(id)a5;
+ (id)calendarObjectIDsForPredicate:(id)a3;
+ (id)eventDraftsPath;
+ (id)reminderStoreContainerTokenProvider;
+ (int64_t)authorizationStatusWithAuditToken:(id *)a3 entityType:(unint64_t)a4;
+ (int64_t)realAuthorizationStatusForEntityType:(unint64_t)a3;
+ (void)EKObjectIDsFromData:(id)a3 deletedObjectIDOffsets:(id)a4 outChangedIDs:(id *)a5 outDeletedIDs:(id *)a6;
+ (void)_addDaysSpannedByEvent:(id)a3 toCountedSet:(id)a4 inRange:(id)a5 withNSCalendar:(id)a6;
+ (void)setReminderStoreContainerTokenProvider:(id)a3;
- (BOOL)_calendar:(id)a3 supportsEntityType:(unint64_t)a4;
- (BOOL)_commit:(id *)a3;
- (BOOL)_commitObjectsWithIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)_isRegisteredObject:(id)a3;
- (BOOL)_parseURI:(id)a3 expectedScheme:(id)a4 identifier:(id *)a5 options:(id *)a6;
- (BOOL)_removeCalendar:(id)a3 commit:(BOOL)a4 error:(id *)a5;
- (BOOL)_removeEvent:(id)a3 span:(int64_t)a4 commit:(BOOL)a5 error:(id *)a6;
- (BOOL)_removeEventCalendar:(id)a3 commit:(BOOL)a4 error:(id *)a5;
- (BOOL)_removeReminder:(id)a3 commit:(BOOL)a4 error:(id *)a5;
- (BOOL)_saveCalendar:(id)a3 commit:(BOOL)a4 error:(id *)a5;
- (BOOL)_saveCalendar:(id)a3 error:(id *)a4;
- (BOOL)_saveDraftOfEvent:(id)a3 toDirectory:(id)a4 withVersion:(id)a5;
- (BOOL)_saveEvent:(id)a3 span:(int64_t)a4 commit:(BOOL)a5 error:(id *)a6;
- (BOOL)_saveReminder:(id)a3 commit:(BOOL)a4 error:(id *)a5;
- (BOOL)accessGrantedForEntityType:(unint64_t)a3;
- (BOOL)acknowledgeNotifications:(id)a3 error:(id *)a4;
- (BOOL)allowAccessToEventsOnly;
- (BOOL)backupDatabaseToDestination:(id)a3 withFormat:(unint64_t)a4 error:(id *)a5;
- (BOOL)birthdayCalendarEnabled;
- (BOOL)canModifySuggestedEventCalendar;
- (BOOL)clientCanModifySources;
- (BOOL)commit:(NSError *)error;
- (BOOL)commitObjects:(id)a3 error:(id *)a4;
- (BOOL)commitWithRollback:(id *)a3;
- (BOOL)commitWithRollbackForNewClients:(id *)a3;
- (BOOL)consumeAllChangesUpToToken:(id)a3 except:(id)a4 error:(id *)a5;
- (BOOL)deleteCalendar:(id)a3 forEntityType:(unint64_t)a4 error:(id *)a5;
- (BOOL)eventWithUUID:(id)a3 isInCalendars:(id)a4;
- (BOOL)eventsExistOnCalendar:(id)a3;
- (BOOL)eventsMarkedScheduleAgentClientExistOnCalendar:(id)a3;
- (BOOL)futureScheduledEventsExistOnCalendar:(id)a3;
- (BOOL)hasImmediatelyEligibleTravelEvents;
- (BOOL)hideCalendarsFromNotificationCenter:(id)a3 error:(id *)a4;
- (BOOL)isCurrentProcessCreatorOfEvent:(id)a3;
- (BOOL)isDataProtected;
- (BOOL)isObjectInserted:(id)a3;
- (BOOL)isPendingIntegrationEvent:(id)a3;
- (BOOL)isSourceManaged:(id)a3;
- (BOOL)markIndividualChangesConsumed:(id)a3 error:(id *)a4;
- (BOOL)markResourceChangeAlertedAndSave:(id)a3 error:(id *)a4;
- (BOOL)needsGeocodingForEvent:(id)a3;
- (BOOL)objectWithIDExists:(id)a3;
- (BOOL)objectsHaveChangesToCommit:(id)a3;
- (BOOL)removeInviteReplyNotification:(id)a3 error:(id *)a4;
- (BOOL)removeInviteReplyNotifications:(id)a3 error:(id *)a4;
- (BOOL)removeResourceChange:(id)a3 error:(id *)a4;
- (BOOL)removeResourceChanges:(id)a3 error:(id *)a4;
- (BOOL)removeResourceChangesForCalendarItem:(id)a3 error:(id *)a4;
- (BOOL)removeSource:(id)a3 commit:(BOOL)a4 error:(id *)a5;
- (BOOL)restoreDatabaseFromBackup:(id)a3 withFormat:(unint64_t)a4 error:(id *)a5;
- (BOOL)restoreGenerationChanged;
- (BOOL)returnEventResults;
- (BOOL)returnReminderResults;
- (BOOL)save:(id *)a3;
- (BOOL)saveAttachment:(id)a3 commit:(BOOL)a4 error:(id *)a5;
- (BOOL)saveColor:(id)a3 commit:(BOOL)a4 error:(id *)a5;
- (BOOL)saveDraftOfEvent:(id)a3;
- (BOOL)saveNotification:(id)a3 commit:(BOOL)a4 error:(id *)a5;
- (BOOL)saveNotificationCollection:(id)a3 commit:(BOOL)a4 error:(id *)a5;
- (BOOL)saveSource:(id)a3 commit:(BOOL)a4 error:(id *)a5;
- (BOOL)setInvitationStatus:(unint64_t)a3 forEvent:(id)a4 error:(id *)a5;
- (BOOL)setInvitationStatus:(unint64_t)a3 forEvents:(id)a4 error:(id *)a5;
- (BOOL)setRestoreGenerationChangedAndGetPreviousValue:(BOOL)a3;
- (BOOL)shouldPermitOrganizerEmailFromJunkChecks:(id)a3;
- (BOOL)shouldPermitOrganizerPhoneNumberFromJunkChecks:(id)a3;
- (BOOL)shouldSaveCalendarAsEventCalendar:(id)a3;
- (BOOL)shouldSaveCalendarAsReminderCalendar:(id)a3;
- (BOOL)showCompletedReminders;
- (BOOL)showDeclinedEvents;
- (BOOL)unregisterForDetailedChangeTracking:(id *)a3;
- (CADInMemoryChangeTimestamp)lastDatabaseTimestamp;
- (CGColor)copyCGColorForNewCalendar;
- (EKCalendar)calendarWithIdentifier:(NSString *)identifier;
- (EKCalendar)defaultCalendarForNewReminders;
- (EKCalendar)naturalLanguageSuggestedEventCalendar;
- (EKCalendar)suggestedEventCalendar;
- (EKCalendarItem)calendarItemWithIdentifier:(NSString *)identifier;
- (EKEvent)eventWithIdentifier:(NSString *)identifier;
- (EKEventStore)initWithBirthdayCalendarModifications;
- (EKEventStore)initWithEKOptions:(unint64_t)a3 path:(id)a4 sources:(id)a5;
- (EKImageCache)imageCache;
- (EKSource)sourceWithIdentifier:(NSString *)identifier;
- (NSArray)calendarItemsWithExternalIdentifier:(NSString *)externalIdentifier;
- (NSArray)calendars;
- (NSArray)calendarsForEntityType:(EKEntityType)entityType;
- (NSArray)delegateSources;
- (NSArray)eventsMatchingPredicate:(NSPredicate *)predicate;
- (NSArray)inboxRepliedSectionItems;
- (NSArray)objectsPendingCommit;
- (NSNumber)defaultAllDayAlarmOffset;
- (NSNumber)defaultTimedAlarmOffset;
- (NSPredicate)predicateForEventsWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate calendars:(NSArray *)calendars;
- (NSSet)deletedObjectIDsPendingCommit;
- (NSString)databasePath;
- (NSString)eventStoreIdentifier;
- (NSTimeZone)timeZone;
- (double)_throttleDelayForEventStoreChangedNotificationWithTags:(id)a3 context:(id)a4;
- (double)sumOfDurationCalendarFromStartDate:(id)a3 toEndDate:(id)a4 ByCalendars:(id)a5;
- (id)ICSDataForCalendarItems:(id)a3 options:(unint64_t)a4;
- (id)ICSDataForCalendarItems:(id)a3 preventLineFolding:(BOOL)a4;
- (id)_addFetchedObjectWithID:(id)a3;
- (id)_allCalendars;
- (id)_calendarItemsMatchingPredicate:(id)a3;
- (id)_calendarItemsWithExternalIdentifier:(id)a3 inCalendars:(id)a4 entityTypes:(unint64_t)a5;
- (id)_checkPendingIntegrationEvents:(id)a3 changedIDsValid:(BOOL)a4;
- (id)_combineEventSources:(id)a3 withReminderSources:(id)a4;
- (id)_deletableCalendars;
- (id)_deletableSources;
- (id)_draftPathForEventWithOccurrenceID:(id)a3 draftDirectory:(id)a4;
- (id)_entityWrappersForEventUUIDs:(id)a3 inCalendars:(id)a4 propertiesToLoad:(id)a5;
- (id)_eventCalendarWithIdentifier:(id)a3;
- (id)_eventOccurrenceWithURI:(id)a3;
- (id)_eventWithEventIdentifier:(id)a3;
- (id)_eventWithURI:(id)a3 checkValid:(BOOL)a4;
- (id)_fetchConstraintsForObjectWithCADObjectID:(id)a3;
- (id)_fetchPersistentNotificationCollectionForSourceWithCADObjectID:(id)a3;
- (id)_imageCache;
- (id)_invalidCADObjectIDs:(id)a3;
- (id)_loadDraftOfEventWithOccurrenceID:(id)a3 fromDirectory:(id)a4 withVersion:(id)a5;
- (id)_markObjectsWithIdentifiersAsCommitted:(id)a3 excludingObjects:(id)a4;
- (id)_nextEventsWithFetchBlock:(id)a3 steps:(id)a4 limit:(unint64_t)a5;
- (id)_sourceWithID:(id)a3;
- (id)alarmOccurrencesFromAlarmCache;
- (id)alarmWithExternalID:(id)a3;
- (id)alarmWithUUID:(id)a3;
- (id)allEventsWithUniqueId:(id)a3 occurrenceDate:(id)a4;
- (id)attachmentWithUUID:(id)a3;
- (id)beginCalDAVServerSimulationWithHostname:(id)a3;
- (id)blockList;
- (id)cachedConstraintsForCalendar:(id)a3;
- (id)cachedConstraintsForEvent:(id)a3;
- (id)cachedConstraintsForEventOrSourceWithCADObjectID:(id)a3;
- (id)cachedConstraintsForReminder:(id)a3;
- (id)cachedConstraintsForSource:(id)a3;
- (id)calendarItemsWithUniqueIdentifier:(id)a3 inCalendar:(id)a4;
- (id)calendarWithCADID:(id)a3;
- (id)calendarWithExternalID:(id)a3;
- (id)calendarWithExternalURI:(id)a3;
- (id)calendarWithID:(id)a3;
- (id)calendarWithUniqueID:(id)a3;
- (id)calendarsForEntityType:(unint64_t)a3 inSource:(id)a4;
- (id)calendarsWithIdentifiers:(id)a3;
- (id)calendarsWithObjectIDs:(id)a3;
- (id)colorStringForNewCalendar;
- (id)colorWithProviderIdentifier:(id)a3 externalIdentifier:(id)a4;
- (id)combineEventCalendars:(id)a3 withReminderCalendars:(id)a4;
- (id)combinedReminderAndEventSources;
- (id)creatorTeamIdentifierForEvent:(id)a3;
- (id)dbStatsBySource;
- (id)defaultCalendarForNewEventsInDelegateSource:(id)a3;
- (id)defaultLocalCalendar;
- (id)delegateSourcesForSource:(id)a3;
- (id)deletedObjectIDs;
- (id)doEvents:(id)a3 haveOccurrencesAfterDate:(id)a4;
- (id)eventForObjectID:(id)a3 occurrenceDate:(id)a4 checkValid:(BOOL)a5;
- (id)eventForUID:(id)a3 occurrenceDate:(id)a4 checkValid:(BOOL)a5;
- (id)eventObjectIDsMatchingPredicate:(id)a3;
- (id)eventSourceForReminderSource:(id)a3;
- (id)eventSourceIDForReminderSourceID:(id)a3;
- (id)eventSourceMap;
- (id)eventSources;
- (id)eventWithAppEntityIdentifier:(id)a3;
- (id)eventWithRecurrenceIdentifier:(id)a3 isAppEntityID:(BOOL)a4;
- (id)eventWithUUID:(id)a3 occurrenceDate:(id)a4;
- (id)eventWithUniqueId:(id)a3 occurrenceDate:(id)a4;
- (id)eventsWithErrorsPerSourceID;
- (id)eventsWithIdentifiers:(id)a3;
- (id)eventsWithSameRecurrenceSetAsEvent:(id)a3;
- (id)eventsWithUUIDToOccurrenceDateMap:(id)a3 inCalendars:(id)a4;
- (id)fetchEventsMatchingPredicate:(id)a3 resultHandler:(id)a4;
- (id)fetchRemindersMatchingPredicate:(NSPredicate *)predicate completion:(void *)completion;
- (id)fetchStorageUsage;
- (id)getSubscribedCalendarsSourceCreateIfNeededWithError:(id *)a3;
- (id)importICS:(id)a3 intoCalendar:(id)a4 options:(unint64_t)a5;
- (id)importICSData:(id)a3 intoCalendar:(id)a4 options:(unint64_t)a5;
- (id)importICSData:(id)a3 intoCalendars:(id)a4 options:(unint64_t)a5;
- (id)importVCSData:(id)a3 intoCalendars:(id)a4 error:(id *)a5;
- (id)insertedObjectIDs;
- (id)insertedPersistentObjectWithEntityName:(id)a3;
- (id)lastCommitTempToPermanentObjectIDMap;
- (id)loadDraftOfEventWithOccurrenceID:(id)a3;
- (id)localBirthdayCalendarCreateIfNeededWithError:(id *)a3;
- (id)localBirthdayCalendarSource;
- (id)mimicSaveAndCommitEvent:(id)a3 oldToNewObjectIDMap:(id)a4 insertedObjectIDs:(id)a5 updatedObjectIDs:(id)a6 deletedObjectIDs:(id)a7;
- (id)nextEventWithCalendarIdentifiers:(id)a3 exclusionOptions:(int64_t)a4;
- (id)nextEventWithCalendars:(id)a3 exclusionOptions:(int64_t)a4;
- (id)nextEventsWithCalendars:(id)a3 limit:(unint64_t)a4 exclusionOptions:(int64_t)a5;
- (id)notificationCollectionForSource:(id)a3;
- (id)objectWithObjectID:(id)a3;
- (id)objectsMatchingPredicate:(id)a3;
- (id)occurrenceCacheGetOccurrenceCountsForCalendars:(id)a3;
- (id)occurrenceCacheGetOccurrencesForCalendars:(id)a3 onDay:(id)a4;
- (id)parentSourceForDelegateSource:(id)a3;
- (id)persistentObjectWithEntityName:(id)a3;
- (id)personaIdentifierForDatabaseID:(int)a3;
- (id)predicateForAssistantEventSearchWithTimeZone:(id)a3 startDate:(id)a4 endDate:(id)a5 title:(id)a6 location:(id)a7 notes:(id)a8 participants:(id)a9 calendars:(id)a10 limit:(int64_t)a11;
- (id)predicateForCalendarItemsOfType:(unint64_t)a3 inCalendar:(id)a4;
- (id)predicateForCalendarItemsOfType:(unint64_t)a3 withExternalID:(id)a4 inCalendar:(id)a5;
- (id)predicateForCalendarItemsOfType:(unint64_t)a3 withExternalID:(id)a4 inSource:(id)a5;
- (id)predicateForCalendarItemsOfType:(unint64_t)a3 withUniqueIdentifier:(id)a4 inCalendar:(id)a5;
- (id)predicateForCalendarItemsOfType:(unint64_t)a3 withUniqueIdentifier:(id)a4 inSource:(id)a5;
- (id)predicateForEventCreatedFromSuggestionWithOpaqueKey:(id)a3;
- (id)predicateForEventsCreatedFromSuggestionWithExtractionGroupIdentifier:(id)a3;
- (id)predicateForEventsInSubscribedCalendar:(id)a3;
- (id)predicateForEventsWithAttendeesInCalendar:(id)a3;
- (id)predicateForEventsWithConferenceURL:(id)a3 limit:(int64_t)a4;
- (id)predicateForEventsWithStartDate:(id)a3 endDate:(id)a4 calendars:(id)a5 loadDefaultProperties:(BOOL)a6;
- (id)predicateForEventsWithStartDate:(id)a3 endDate:(id)a4 calendars:(id)a5 matchingContacts:(id)a6;
- (id)predicateForEventsWithStartDate:(id)a3 endDate:(id)a4 uniqueID:(id)a5 calendars:(id)a6;
- (id)predicateForMasterEventsInCalendar:(id)a3;
- (id)predicateForMasterEventsInCalendars:(id)a3;
- (id)predicateForMasterEventsWithExternalTrackingStatusInCalendar:(id)a3;
- (id)predicateForMasterEventsWithInvitationsAndOccurrencesAfter:(id)a3 inCalendar:(id)a4;
- (id)predicateForMasterEventsWithOccurrencesWithStartDate:(id)a3 endDate:(id)a4 inCalendar:(id)a5;
- (id)predicateForMasterEventsWithStartDate:(id)a3 title:(id)a4 inCalendar:(id)a5;
- (id)predicateForNaturalLanguageSuggestedEventsWithSearchString:(id)a3;
- (id)predicateForNaturalLanguageSuggestedEventsWithSearchString:(id)a3 startDate:(id)a4;
- (id)predicateForNonrecurringEventsWithStartDate:(id)a3 endDate:(id)a4 calendars:(id)a5;
- (id)predicateForPotentialTravelEventsInCalendars:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (id)predicateForRandomMasterEventsWithStartDate:(id)a3 endDate:(id)a4 needToHaveAttendee:(BOOL)a5 needToHaveLocation:(BOOL)a6 allDay:(BOOL)a7 filteredOutTitles:(id)a8 limit:(int64_t)a9 calendars:(id)a10;
- (id)predicateForScheduleAgentClientEventsInCalendar:(id)a3;
- (id)predicateForUpNextEventsInCalendars:(id)a3 startDate:(id)a4 endDate:(id)a5 startDateRestrictionThreshold:(double)a6;
- (id)primaryAppleAccountSource;
- (id)publicObjectWithFetchedObjectID:(id)a3;
- (id)publicObjectWithObjectID:(id)a3;
- (id)publicObjectWithPersistentObject:(id)a3;
- (id)readWriteCalendarsForEntityType:(unint64_t)a3;
- (id)redactedMimicSaveEvent:(id)a3 oldToNewObjectIDMap:(id)a4 serializedDictionary:(id)a5 objectIDToChangeSetDictionaryMap:(id)a6 objectIDToPersistentDictionaryMap:(id)a7;
- (id)registerFetchedObjectWithID:(id)a3 withDefaultLoadedPropertyKeys:(id)a4 values:(id)a5;
- (id)reminderIntegrationCalendar;
- (id)reminderSourceForEventSource:(id)a3;
- (id)reminderSourceMap;
- (id)reminderSources;
- (id)reminderWithExternalURI:(id)a3;
- (id)reminderWithUniqueId:(id)a3;
- (id)resourceChangesForEntityTypes:(unint64_t)a3;
- (id)sequenceToken;
- (id)sharedCalendarInvitationsForEntityTypes:(unint64_t)a3;
- (id)sourceIdentifierForEvent:(id)a3;
- (id)sourceWithExternalID:(id)a3;
- (id)sourcesEnabledForEntityType:(unint64_t)a3;
- (id)travelEligibleEventsInCalendars:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (id)uniqueIdentifiersForAllObjectsWithChangesRelatedToObjects:(id)a3;
- (id)uniqueIdentifiersForEventsWithObjectIDs:(id)a3;
- (id)updatedObjectIDs;
- (id)validatedNonDeletedPersistentObjectWithObjectID:(id)a3;
- (id)validatedNonDeletedPublicObjectWithObjectID:(id)a3;
- (int)birthdayCalendarVersion;
- (int)countOfEventsCalendarFromStartDate:(id)a3 toEndDate:(id)a4 ByCalendars:(id)a5;
- (int)countOfEventsFromStartDate:(id)a3 toEndDate:(id)a4;
- (int)readWriteCalendarCountForEntityType:(unint64_t)a3;
- (int)sequenceNumber;
- (int)syncErrorCount;
- (int64_t)registerForDetailedChangeTrackingInSource:(id)a3 error:(id *)a4;
- (unint64_t)addressValidationStatus:(id)a3;
- (unint64_t)countOfEventsInSource:(id)a3;
- (unint64_t)lastConfirmedSplashScreenVersion;
- (unint64_t)timeToLeaveLocationAuthorizationStatus;
- (void)_accessStatusChanged;
- (void)_addObjectToPendingCommits:(id)a3;
- (void)_addPendingIntegrationEvent:(id)a3 toArrayOfHashTables:(id)a4;
- (void)_addRemovedObjectToPendingCommits:(id)a3;
- (void)_cacheCalendarWithCADObjectID:(id)a3 withDefaultLoadedPropertyValues:(id)a4 forKeys:(id)a5;
- (void)_cacheDeletedEventIdentifierIfNeededForObject:(id)a3;
- (void)_cacheSourceWithCADObjectID:(id)a3 withDefaultLoadedPropertyValues:(id)a4 forKeys:(id)a5;
- (void)_clearAllCachedConstraints;
- (void)_clearAllCaches;
- (void)_clearCachedCalendars;
- (void)_clearCachedConstraintsForObjectWithCADObjectID:(id)a3;
- (void)_clearCachedSources;
- (void)_clearImageCache;
- (void)_clearPendingChangesForObjectsWithOwner:(id)a3;
- (void)_databaseChangedExternally:(unint64_t)a3 processSynchronously:(BOOL)a4;
- (void)_defaultAlarmChangedExternally;
- (void)_defaultCalendarChangedExternally;
- (void)_deleteDraft:(id)a3;
- (void)_deleteDraftOfEventWithOccurrenceID:(id)a3 fromDirectory:(id)a4;
- (void)_deleteObject:(id)a3;
- (void)_detachObject:(id)a3;
- (void)_fetchAndClearEventsNeedingGeocoding:(id *)a3 withCommittedObjects:(id)a4;
- (void)_fetchProperties:(id)a3 forObjects:(id)a4;
- (void)_forgetRegisteredObjects;
- (void)_implicitUpgradeToFullAccessIfNeededWithReason:(int64_t)a3;
- (void)_implicitlyRequestEventAccessForOlderApps;
- (void)_insertObject:(id)a3;
- (void)_loadCalendarsIfNeeded;
- (void)_loadSourcesIfNeeded;
- (void)_markObjectUncommittable:(id)a3;
- (void)_mimicCommitWithOldToNewObjectIDMap:(id)a3 insertedObjectsToCommit:(id)a4 updatedObjectsToCommit:(id)a5 deletedObjectsToCommit:(id)a6;
- (void)_objectDidReset:(id)a3;
- (void)_populateCalendarsByIdentifierIfNeeded;
- (void)_postEventStoreChangedNotificationWithChangeType:(unint64_t)a3 changedObjectIDs:(id)a4 forceImmediate:(BOOL)a5;
- (void)_postEventStoreChangedNotificationWithTags:(id)a3 context:(id)a4;
- (void)_processChangedObjectIDsWithErrorCode:(int)a3 changesTruncated:(BOOL)a4 latestToken:(id)a5 changeData:(id)a6 resultHandler:(id)a7;
- (void)_processExternalChangesWithLatestTimestamp:(id)a3 changedObjectIDsData:(id)a4 deletedObjectIDOffsets:(id)a5 changesWereSyncStatusOnly:(BOOL)a6 forceImmediateNotification:(BOOL)a7;
- (void)_rebuildSourceMapsWithEventSources:(id)a3 reminderSources:(id)a4;
- (void)_registerObject:(id)a3;
- (void)_registerObjectImmediate:(id)a3;
- (void)_removeCachedCalendarFromSource:(id)a3;
- (void)_removeCachedCalendarWithCADID:(id)a3;
- (void)_reregisterObject:(id)a3 oldID:(id)a4;
- (void)_resetAndApplyChangesForRedactedMimicCommitOnObject:(id)a3 usingModifiedObject:(id)a4;
- (void)_resetAndNotifyAfterDatabaseRestoreGenerationChanged;
- (void)_resetCachedPersonaIdentifiers;
- (void)_resetForMimicCommitOnObject:(id)a3 oldToNewObjectIDMap:(id)a4;
- (void)_setIsUnitTesting:(BOOL)a3;
- (void)_setMockPermissions:(id)a3;
- (void)_simulateDaemonCrashForUnitTests;
- (void)_trackModifiedObject:(id)a3;
- (void)_uncacheImage:(id)a3;
- (void)_unregisterObject:(id)a3;
- (void)_validateEventPredicate:(id)a3;
- (void)acceptSuggestedEvent:(id)a3;
- (void)acceptSuggestedEvent:(id)a3 placeOnCalendar:(id)a4;
- (void)addExchangeDelegateWithName:(id)a3 emailAddress:(id)a4 toSource:(id)a5 completion:(id)a6;
- (void)addPendingIntegrationEvent:(id)a3;
- (void)analyticsSendEvent:(id)a3 appendingClientBundleIDToPayload:(id)a4;
- (void)cacheConstraints:(id)a3 forObjectWithCADObjectID:(id)a4;
- (void)cacheValidationStatusForAddress:(id)a3 status:(unint64_t)a4;
- (void)cancelFetchRequest:(id)fetchIdentifier;
- (void)changedObjectIDsSinceToken:(int64_t)a3 resultHandler:(id)a4;
- (void)changesSinceSequenceToken:(id)a3 completion:(id)a4;
- (void)clearSuperfluousChanges;
- (void)confirmSuggestedEvent:(id)a3;
- (void)consumeAllChangesUpToToken:(id)a3;
- (void)daemonRestarted;
- (void)dealloc;
- (void)deleteAllDrafts;
- (void)deleteDraftOfEventWithOccurrenceID:(id)a3;
- (void)deleteSuggestedEvent:(id)a3;
- (void)endCalDAVServerSimulation:(id)a3;
- (void)ensureLoadedProperties:(id)a3 forObjects:(id)a4;
- (void)enumerateEventsMatchingPredicate:(NSPredicate *)predicate usingBlock:(EKEventSearchCallback)block;
- (void)familyCalendarsWithCompletion:(id)a3;
- (void)fetchChangedObjectIDs:(id)a3;
- (void)fetchChangedObjectIDsSinceToken:(int64_t)a3 resultHandler:(id)a4;
- (void)fetchEventCountsInRange:(id)a3 inCalendars:(id)a4 exclusionOptions:(int64_t)a5 completion:(id)a6;
- (void)fetchGrantedDelegatesForSource:(id)a3 results:(id)a4;
- (void)getMapsWithReminderSourceMap:(id *)a3 eventSourceMap:(id *)a4;
- (void)insertSuggestedEventCalendar;
- (void)invalidateReminderSourceMaps;
- (void)loadEventIDs:(id *)a3 uniqueIDs:(id *)a4 calendar:(id)a5;
- (void)markChangedObjectIDsConsumedUpToToken:(int64_t)a3;
- (void)pendingIntegrationEventChangedIdentifierFrom:(id)a3 to:(id)a4;
- (void)performHoldingReminderSourceMapLock:(id)a3;
- (void)postSyntheticRouteHypothesis:(id)a3 forEventWithExternalURL:(id)a4;
- (void)purgeChangelog;
- (void)rebuildOccurrenceCache;
- (void)recordObjectRebaseWithOldObjectID:(id)a3 newObjectID:(id)a4;
- (void)reminderStoreChanged;
- (void)removeEmptyTablesInArray:(id)a3;
- (void)removeExchangeDelegate:(id)a3 completion:(id)a4;
- (void)removePendingIntegrationEvent:(id)a3;
- (void)removeSuggestedEventCalendar;
- (void)requestIntegrationCatchupSync;
- (void)reset;
- (void)respondToSharedCalendarInvitation:(id)a3 withStatus:(unint64_t)a4;
- (void)rollbackObjectsWithIdentifiers:(id)a3;
- (void)setCachedDefaultAlarmOffsetsToNSNotFound;
- (void)setCachedEKSourceConstraintObject:(id)a3 forKey:(id)a4;
- (void)setDefaultCalendar:(id)a3 forNewEventsInDelegateSource:(id)a4;
- (void)setDefaultCalendarForNewReminders:(id)a3;
- (void)setNeedsGeocoding:(BOOL)a3 forEvent:(id)a4;
- (void)setPrivacyClientIdentity:(id)a3;
- (void)setRemoteClientIdentity:(id)a3;
- (void)setRestoreGenerationChanged:(BOOL)a3;
- (void)setTimeZone:(id)a3;
- (void)showCompletedRemindersChanged:(id)a3;
- (void)showDeclinedEventsChanged:(id)a3;
- (void)startRecordingObjectIDChangeMap;
- (void)stopRecordingObjectIDChangeMap;
- (void)updateGrantedDelegate:(id)a3 action:(int64_t)a4 source:(id)a5 completion:(id)a6;
- (void)waitUntilDatabaseUpdatedToTimestamp:(id)a3 completion:(id)a4;
@end

@implementation EKEventStore

- (void)reminderStoreChanged
{
  [(EKEventStore *)self invalidateReminderSourceMaps];
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__EKEventStore_reminderStoreChanged__block_invoke;
  v3[3] = &unk_1E77FD3F0;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)invalidateReminderSourceMaps
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__EKEventStore_Reminders__invalidateReminderSourceMaps__block_invoke;
  v2[3] = &unk_1E77FD418;
  v2[4] = self;
  [(EKEventStore *)self performHoldingReminderSourceMapLock:v2];
}

uint64_t __55__EKEventStore_Reminders__invalidateReminderSourceMaps__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setReminderSourceIDToEventSourceIDMapping:0];
  v2 = *(a1 + 32);

  return [v2 setEventSourceIDToReminderSourceIDMapping:0];
}

void __36__EKEventStore_reminderStoreChanged__block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = @"EKEventStoreRemindersDataChangedUserInfoKey";
    v5[1] = @"EKEventStoreCalendarDataChangedUserInfoKey";
    v6[0] = MEMORY[0x1E695E118];
    v6[1] = MEMORY[0x1E695E110];
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"EKEventStoreChangedNotification" object:WeakRetained userInfo:v2];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)_allCalendars
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__24;
  v16 = __Block_byref_object_dispose__24;
  v17 = 0;
  if ([(EKEventStore *)self returnEventResults])
  {
    calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __29__EKEventStore__allCalendars__block_invoke;
    v11[3] = &unk_1E77FD440;
    v11[4] = self;
    v11[5] = &v12;
    dispatch_sync(calendarSourcesAndDefaultsQueue, v11);
  }

  v4 = [(EKEventStore *)self returnReminderResults];
  v5 = v13[5];
  if (v4)
  {
    [(EKReminderStore *)self->_reminderStore calendars];
    if (v5)
      v6 = {;
      [v5 addObjectsFromArray:v6];

      v7 = [v13[5] copy];
    }

    else
      v7 = {;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

- (BOOL)returnEventResults
{
  if (!CalIsReminderBridgeEnabled())
  {
    return 1;
  }

  return [(EKEventStore *)self accessGrantedForEntityType:0];
}

void __29__EKEventStore__allCalendars__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _loadCalendarsIfNeeded];
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    v3 = [v2 allValues];
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = [EKCalendar alloc];
          v14 = [(EKObject *)v13 initWithPersistentObject:v12, v16];
          [*(*(*(a1 + 40) + 8) + 40) addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_loadCalendarsIfNeeded
{
  if (!self->_calendars)
  {
    v3 = +[EKPersistentCalendar defaultPropertiesToLoad];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__24;
    v24 = __Block_byref_object_dispose__24;
    v25 = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__24;
    v18[4] = __Block_byref_object_dispose__24;
    v19 = 0;
    v4 = [(EKEventStore *)self connection];
    v5 = [v4 CADOperationProxySync];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __38__EKEventStore__loadCalendarsIfNeeded__block_invoke;
    v17[3] = &unk_1E78008A8;
    v17[4] = &v20;
    v17[5] = v18;
    [v5 CADDatabaseGetCalendarsWithFaultedProperties:v3 reply:v17];

    if (v21[5])
    {
      v6 = [(EKEventStore *)self database];
      v7 = [v6 databaseRestoreGeneration];

      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v21[5], "count")}];
      calendars = self->_calendars;
      self->_calendars = v8;

      v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v21[5], "count")}];
      calendarsByIdentifier = self->_calendarsByIdentifier;
      self->_calendarsByIdentifier = v10;

      v12 = v21[5];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __38__EKEventStore__loadCalendarsIfNeeded__block_invoke_314;
      v13[3] = &unk_1E78008D0;
      v16 = v7;
      v13[4] = self;
      v15 = v18;
      v14 = v3;
      [v12 enumerateObjectsUsingBlock:v13];
    }

    _Block_object_dispose(v18, 8);

    _Block_object_dispose(&v20, 8);
  }
}

- (NSTimeZone)timeZone
{
  timeZone = self->_timeZone;
  if (timeZone)
  {
    v3 = [(NSTimeZone *)timeZone copy];
  }

  else
  {
    v3 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  return v3;
}

- (BOOL)returnReminderResults
{
  IsReminderBridgeEnabled = CalIsReminderBridgeEnabled();
  if (IsReminderBridgeEnabled)
  {

    LOBYTE(IsReminderBridgeEnabled) = [(EKEventStore *)self accessGrantedForEntityType:1];
  }

  return IsReminderBridgeEnabled;
}

- (BOOL)allowAccessToEventsOnly
{
  if (self->_options & 0x80) != 0 || ([MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp] & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessIsCalendarDaemon"))
  {
    return 1;
  }

  v3 = MEMORY[0x1E6992FA0];

  return [v3 currentProcessIsDataAccess];
}

- (void)_loadSourcesIfNeeded
{
  if (!self->_sources)
  {
    v3 = +[EKPersistentSource defaultPropertiesToLoad];
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__24;
    v22 = __Block_byref_object_dispose__24;
    v23 = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__24;
    v16[4] = __Block_byref_object_dispose__24;
    v17 = 0;
    v4 = [(EKEventStore *)self connection];
    v5 = [v4 CADOperationProxySync];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __36__EKEventStore__loadSourcesIfNeeded__block_invoke;
    v15[3] = &unk_1E78008A8;
    v15[4] = &v18;
    v15[5] = v16;
    [v5 CADDatabaseGetSourcesWithFaultedProperties:v3 reply:v15];

    if (v19[5])
    {
      v6 = [(EKEventStore *)self database];
      v7 = [v6 databaseRestoreGeneration];

      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v19[5], "count")}];
      sources = self->_sources;
      self->_sources = v8;

      v10 = v19[5];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __36__EKEventStore__loadSourcesIfNeeded__block_invoke_264;
      v11[3] = &unk_1E78008D0;
      v14 = v7;
      v11[4] = self;
      v13 = v16;
      v12 = v3;
      [v10 enumerateObjectsUsingBlock:v11];
    }

    _Block_object_dispose(v16, 8);

    _Block_object_dispose(&v18, 8);
  }
}

- (id)eventSources
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  if ([(EKEventStore *)self returnEventResults])
  {
    calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __28__EKEventStore_eventSources__block_invoke;
    v6[3] = &unk_1E77FD440;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(calendarSourcesAndDefaultsQueue, v6);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __28__EKEventStore_eventSources__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _loadSourcesIfNeeded];
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    v3 = [v2 allValues];
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * v9);
          v11 = [EKSource alloc];
          v12 = [(EKObject *)v11 initWithPersistentObject:v10, v17];
          [v4 addObject:v12];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v13 = [v4 copy];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)combinedReminderAndEventSources
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__EKEventStore_Reminders__combinedReminderAndEventSources__block_invoke;
  v5[3] = &unk_1E77FD440;
  v5[4] = self;
  v5[5] = &v6;
  [(EKEventStore *)self performHoldingReminderSourceMapLock:v5];
  v2 = v7[5];
  if (!v2)
  {
    v7[5] = MEMORY[0x1E695E0F0];

    v2 = v7[5];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__EKEventStore_Reminders__combinedReminderAndEventSources__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventSources];
  if ([*(a1 + 32) returnEventResults])
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __58__EKEventStore_Reminders__combinedReminderAndEventSources__block_invoke_cold_2(v9);
    }
  }

  else
  {
    v4 = [*(a1 + 32) reminderSources];
    if ([*(a1 + 32) returnReminderResults])
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v10 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        __58__EKEventStore_Reminders__combinedReminderAndEventSources__block_invoke_cold_1(v10);
      }
    }

    else
    {
      v6 = [*(a1 + 32) _combineEventSources:v2 withReminderSources:v4];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }
}

- (NSArray)delegateSources
{
  v2 = [(EKEventStore *)self eventSources];
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_271_0];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

void __36__EKEventStore__loadSourcesIfNeeded__block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  if (a2)
  {
    v10 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __36__EKEventStore__loadSourcesIfNeeded__block_invoke_cold_1(v10);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }
}

- (void)insertSuggestedEventCalendar
{
  calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__EKEventStore_insertSuggestedEventCalendar__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(calendarSourcesAndDefaultsQueue, block);
}

void __44__EKEventStore_insertSuggestedEventCalendar__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v1 = [v2 CADOperationProxySync];
  [v1 CADDatabaseInsertSuggestedEventCalendarWithReply:&__block_literal_global_428];
}

void __44__EKEventStore_insertSuggestedEventCalendar__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1020)
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        __44__EKEventStore_insertSuggestedEventCalendar__block_invoke_2_cold_1();
      }
    }

    else
    {
      v2 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        __44__EKEventStore_insertSuggestedEventCalendar__block_invoke_2_cold_2(v2);
      }
    }
  }
}

void __44__EKEventStore_insertSuggestedEventCalendar__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(EKDaemonConnection *)self->_database setDelegate:0];
  if ([(CADDatabaseInitializationOptions *)self->_initializationOptions unitTesting])
  {
    v3 = [(EKDaemonConnection *)self->_database CADOperationProxySync];
    [v3 CADTestingCloseDatabase:&__block_literal_global_203];
  }

  [(EKDaemonConnection *)self->_database disconnect];
  v4.receiver = self;
  v4.super_class = EKEventStore;
  [(EKEventStore *)&v4 dealloc];
}

- (NSArray)objectsPendingCommit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__EKEventStore_objectsPendingCommit__block_invoke;
  v5[3] = &unk_1E77FD530;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(unsavedChangesQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__EKEventStore_objectsPendingCommit__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSSet)deletedObjectIDsPendingCommit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__EKEventStore_deletedObjectIDsPendingCommit__block_invoke;
  v5[3] = &unk_1E77FD530;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(unsavedChangesQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __45__EKEventStore_deletedObjectIDsPendingCommit__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 312) valueForKey:@"objectID"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)reminderSources
{
  if ([(EKEventStore *)self returnReminderResults])
  {
    v3 = [(EKReminderStore *)self->_reminderStore sources];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __38__EKEventStore__loadCalendarsIfNeeded__block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  if (a2)
  {
    v10 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __38__EKEventStore__loadCalendarsIfNeeded__block_invoke_cold_1(v10);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }
}

- (BOOL)showDeclinedEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__EKEventStore_showDeclinedEvents__block_invoke;
  v5[3] = &unk_1E77FD440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(calendarSourcesAndDefaultsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__EKEventStore_showDeclinedEvents__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[23];
  if (!v3)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v4 = [v2 connection];
    v5 = [v4 CADOperationProxySync];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __34__EKEventStore_showDeclinedEvents__block_invoke_2;
    v10[3] = &unk_1E77FFEA0;
    v10[4] = &v11;
    [v5 CADDatabaseShowsDeclinedEventsWithReply:v10];

    v6 = [MEMORY[0x1E696AD98] numberWithBool:*(v12 + 24)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 184);
    *(v7 + 184) = v6;

    _Block_object_dispose(&v11, 8);
    v3 = *(*(a1 + 32) + 184);
  }

  result = [v3 BOOLValue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)_combineEventSources:(id)a3 withReminderSources:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(EKEventStore *)self _rebuildSourceMapsWithEventSources:v6 reminderSources:v7];
  v8 = [(EKEventStore *)self reminderSourceIDToEventSourceIDMapping];
  if (![v7 count])
  {
    v18 = v6;
LABEL_15:
    v9 = v18;
    goto LABEL_16;
  }

  if (![v6 count])
  {
    v18 = v7;
    goto LABEL_15;
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count") + objc_msgSend(v7, "count")}];
  v21 = v6;
  [v9 addObjectsFromArray:v6];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 sourceIdentifier];
        v17 = [v8 objectForKeyedSubscript:v16];

        if (!v17)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v6 = v21;
LABEL_16:

  v19 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_rebuildSourceMapsWithEventSources:(id)a3 reminderSources:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 count] && objc_msgSend(v6, "count"))
  {
    v36 = self;
    v38 = v7;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v37 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (v10)
    {
      v11 = v10;
      v41 = 0;
      v12 = *v47;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v46 + 1) + 8 * i);
          v15 = [v14 externalID];
          if (v15)
          {
            [v8 setObject:v14 forKeyedSubscript:v15];
          }

          else if ([v14 isPrimaryLocalSource] && objc_msgSend(v14, "isWritable"))
          {
            v16 = v14;

            v41 = v16;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v11);
    }

    else
    {
      v41 = 0;
    }

    v18 = [v7 count];
    v19 = [v9 count];
    if (v18 >= v19)
    {
      v18 = v19;
    }

    v40 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v18];
    v39 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v18];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v20 = v7;
    v21 = [v20 countByEnumeratingWithState:&v42 objects:v58 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v43;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v43 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v42 + 1) + 8 * j);
          v26 = [v25 externalID];
          v27 = [v8 objectForKeyedSubscript:v26];

          if (v27)
          {
            v28 = [v25 externalID];
            [v8 removeObjectForKey:v28];

LABEL_27:
            v29 = [v27 sourceIdentifier];
            v30 = [v25 sourceIdentifier];
            v31 = v30;
            if (v29)
            {
              v32 = v30 == 0;
            }

            else
            {
              v32 = 1;
            }

            if (v32)
            {
              v33 = EKLogHandle;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138413058;
                v51 = v29;
                v52 = 2112;
                v53 = v31;
                v54 = 2112;
                v55 = v27;
                v56 = 2112;
                v57 = v25;
                _os_log_error_impl(&dword_1A805E000, v33, OS_LOG_TYPE_ERROR, "Event or reminder source without ID: eventSourceID=%@, reminderSourceID=%@, eventSource=%@, reminderSource=%@", buf, 0x2Au);
              }
            }

            else
            {
              [v40 setObject:v29 forKeyedSubscript:v30];
              [v39 setObject:v31 forKeyedSubscript:v29];
            }

            continue;
          }

          if (![v25 sourceType])
          {
            v27 = v41;
            if ([v25 isWritable] && v41 != 0)
            {
              v41 = 0;
              goto LABEL_27;
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v42 objects:v58 count:16];
      }

      while (v22);
    }

    [(EKEventStore *)v36 setReminderSourceIDToEventSourceIDMapping:v40];
    [(EKEventStore *)v36 setEventSourceIDToReminderSourceIDMapping:v39];

    v6 = v37;
    v7 = v38;
  }

  else
  {
    v17 = MEMORY[0x1E695E0F8];
    [(EKEventStore *)self setReminderSourceIDToEventSourceIDMapping:MEMORY[0x1E695E0F8]];
    [(EKEventStore *)self setEventSourceIDToReminderSourceIDMapping:v17];
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (id)combineEventCalendars:(id)a3 withReminderCalendars:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    if ([v5 count])
    {
      v7 = [v5 arrayByAddingObjectsFromArray:v6];
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (id)eventSourceForReminderSource:(id)a3
{
  v4 = [a3 sourceIdentifier];
  v5 = [(EKEventStore *)self eventSourceIDForReminderSourceID:v4];

  if (v5)
  {
    v6 = [(EKEventStore *)self sourceWithIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)eventSourceIDForReminderSourceID:(id)a3
{
  v4 = a3;
  v5 = [(EKEventStore *)self reminderSourceMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)reminderSourceForEventSource:(id)a3
{
  v4 = a3;
  v5 = [(EKEventStore *)self reminderStore];
  v6 = [(EKEventStore *)self eventSourceMap];
  v7 = [v4 valueForKey:*MEMORY[0x1E6992B08]];

  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [v5 sourceWithIdentifier:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)getMapsWithReminderSourceMap:(id *)a3 eventSourceMap:(id *)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__EKEventStore_Reminders__getMapsWithReminderSourceMap_eventSourceMap___block_invoke;
  v6[3] = &unk_1E77FD728;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  [(EKEventStore *)self performHoldingReminderSourceMapLock:v6];
  if (a3)
  {
    *a3 = v14[5];
  }

  if (a4)
  {
    *a4 = v8[5];
  }

  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

uint64_t __71__EKEventStore_Reminders__getMapsWithReminderSourceMap_eventSourceMap___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reminderSourceIDToEventSourceIDMapping];

  if (!v2)
  {
    v3 = [*(a1 + 32) eventSources];
    v4 = [*(a1 + 32) reminderSources];
    [*(a1 + 32) _rebuildSourceMapsWithEventSources:v3 reminderSources:v4];
  }

  v5 = [*(a1 + 32) reminderSourceIDToEventSourceIDMapping];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) eventSourceIDToReminderSourceIDMapping];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return MEMORY[0x1EEE66BB8]();
}

- (id)reminderSourceMap
{
  v4 = 0;
  [(EKEventStore *)self getMapsWithReminderSourceMap:&v4 eventSourceMap:0];
  v2 = v4;

  return v2;
}

- (id)eventSourceMap
{
  v4 = 0;
  [(EKEventStore *)self getMapsWithReminderSourceMap:0 eventSourceMap:&v4];
  v2 = v4;

  return v2;
}

- (void)performHoldingReminderSourceMapLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock([(EKEventStore *)self reminderSourceMapLock]);
  v4[2](v4);

  v5 = [(EKEventStore *)self reminderSourceMapLock];

  os_unfair_lock_unlock(v5);
}

- (BOOL)restoreGenerationChanged
{
  os_unfair_lock_lock(&self->_flagsLock);
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_flagsLock);
  return flags & 1;
}

- (void)setRestoreGenerationChanged:(BOOL)a3
{
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags = *&self->_flags & 0xFE | a3;

  os_unfair_lock_unlock(&self->_flagsLock);
}

- (BOOL)setRestoreGenerationChangedAndGetPreviousValue:(BOOL)a3
{
  os_unfair_lock_lock(&self->_flagsLock);
  flags = self->_flags;
  *&self->_flags = flags & 0xFE | a3;
  os_unfair_lock_unlock(&self->_flagsLock);
  return flags & 1;
}

+ (Class)classForEntityName:(id)a3
{
  v3 = classForEntityName__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[EKEventStore classForEntityName:];
  }

  v5 = [classForEntityName__sClassMap objectForKey:v4];

  return v5;
}

uint64_t __35__EKEventStore_classForEntityName___block_invoke()
{
  v19 = objc_alloc(MEMORY[0x1E695DF20]);
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  classForEntityName__sClassMap = [v19 initWithObjectsAndKeys:{v18, @"Source", v17, @"Calendar", v16, @"Event", v15, @"Alarm", v14, @"Attachment", v13, @"Attendee", v12, @"Organizer", v11, @"RecurrenceRule", v0, @"ExceptionDate", v1, @"EventAction", v2, @"Location", v3, @"Sharee", v4, @"ResourceChange", v5, @"SuggestionNotification", v6, @"InviteReplyNotification", v7, @"SuggestedEventInfo", v8, @"Error", v9, @"Image", objc_opt_class(), @"Color", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)reminderStoreContainerTokenProvider
{
  v2 = _Block_copy(_reminderStoreContainerTokenProvider);

  return v2;
}

+ (void)setReminderStoreContainerTokenProvider:(id)a3
{
  _reminderStoreContainerTokenProvider = _Block_copy(a3);

  MEMORY[0x1EEE66BB8]();
}

- (EKEventStore)initWithEKOptions:(unint64_t)a3 path:(id)a4 sources:(id)a5
{
  v8 = a4;
  v9 = [a5 valueForKey:@"sourceIdentifier"];
  v10 = [(EKEventStore *)self initWithEKOptions:a3 path:v8 changeTrackingClientId:0 enablePropertyModificationLogging:1 allowDelegateSources:1 allowedSourceIdentifiers:v9];

  return v10;
}

- (EKEventStore)initWithBirthdayCalendarModifications
{
  result = [(EKEventStore *)self initWithEKOptions:4 path:0 changeTrackingClientId:0 enablePropertyModificationLogging:0 allowDelegateSources:1];
  if (result)
  {
    result->_allowsBirthdayCalendarModifications = 1;
  }

  return result;
}

void __181__EKEventStore_initWithEKOptions_path_containerProvider_tccPermissionChecker_changeTrackingClientId_enablePropertyModificationLogging_allowDelegateSources_allowedSourceIdentifiers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained dataProtectionObserver];
    v4 = [v3 dataIsAccessible];

    v5 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v5)
      {
        __181__EKEventStore_initWithEKOptions_path_containerProvider_tccPermissionChecker_changeTrackingClientId_enablePropertyModificationLogging_allowDelegateSources_allowedSourceIdentifiers___block_invoke_cold_2();
      }

      [v2 _accessStatusChanged];
    }

    else if (v5)
    {
      __181__EKEventStore_initWithEKOptions_path_containerProvider_tccPermissionChecker_changeTrackingClientId_enablePropertyModificationLogging_allowDelegateSources_allowedSourceIdentifiers___block_invoke_cold_1();
    }
  }
}

void __181__EKEventStore_initWithEKOptions_path_containerProvider_tccPermissionChecker_changeTrackingClientId_enablePropertyModificationLogging_allowDelegateSources_allowedSourceIdentifiers___block_invoke_183(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _postEventStoreChangedNotificationWithTags:v6 context:v5];
}

double __181__EKEventStore_initWithEKOptions_path_containerProvider_tccPermissionChecker_changeTrackingClientId_enablePropertyModificationLogging_allowDelegateSources_allowedSourceIdentifiers___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _throttleDelayForEventStoreChangedNotificationWithTags:v6 context:v5];
  v9 = v8;

  return v9;
}

void __23__EKEventStore_dealloc__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __23__EKEventStore_dealloc__block_invoke_cold_1(v2);
    }
  }
}

+ (BOOL)_shouldUseInProcessXPCWithInitOptions:(unint64_t)a3
{
  if ((a3 & 0x800) != 0)
  {
    return 0;
  }

  if ((a3 & 0x400) != 0)
  {
    return 1;
  }

  return [a1 shouldUseInProcessXPCByDefault];
}

- (id)blockList
{
  v3 = [(EKEventStore *)self blockListOverride];

  if (v3)
  {
    [(EKEventStore *)self blockListOverride];
  }

  else
  {
    [MEMORY[0x1E6992F18] sharedBlockList];
  }
  v4 = ;

  return v4;
}

+ (EKAuthorizationStatus)authorizationStatusForEntityType:(EKEntityType)entityType
{
  v3 = [a1 realAuthorizationStatusForEntityType:entityType];
  if (v3 == EKAuthorizationStatusWriteOnly && (_shouldUseLegacyAccessBehavior() & 1) != 0)
  {
    return 3;
  }

  return v3;
}

+ (BOOL)_staticAccessFlagSaysDeniedForEntityType:(unint64_t)a3
{
  if (a3 == 1)
  {
    if (denyAccessToReminders)
    {
      return 1;
    }
  }

  else if (!a3 && (denyAccessToEvents & 1) != 0)
  {
    return 1;
  }

  return 0;
}

+ (int64_t)realAuthorizationStatusForEntityType:(unint64_t)a3
{
  v5 = +[EKDaemonConnection anyAvailableDaemonConnection];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    v6 = [v7 connection];
  }

  if (a3 == 1)
  {
    v8 = [v6 remindersAuthorization];
    goto LABEL_8;
  }

  if (!a3)
  {
    v8 = [v6 eventAuthorization];
LABEL_8:
    v9 = v8;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:
  if ([a1 _staticAccessFlagSaysDeniedForEntityType:a3])
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

+ (int64_t)authorizationStatusWithAuditToken:(id *)a3 entityType:(unint64_t)a4
{
  if (a4)
  {
    if (a4 != 1)
    {
      return 0;
    }

    v4 = MEMORY[0x1E69D55D8];
  }

  else
  {
    v4 = MEMORY[0x1E69D5518];
  }

  if (!*v4)
  {
    return 0;
  }

  v7 = *a3;
  v5 = tcc_authorization_check_audit_token();
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      return 3;
    }

    if (v5 == 4)
    {
      return 4;
    }
  }

  else
  {
    if (!v5)
    {
      if (TCCAccessRestricted())
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    if (v5 == 1)
    {
      return TCCAccessRestricted() != 0;
    }
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKEventStore authorizationStatusWithAuditToken:entityType:];
  }

  return 2;
}

- (void)_implicitlyRequestEventAccessForOlderApps
{
  if ([EKEventStore realAuthorizationStatusForEntityType:0]<= 2)
  {

    [(EKEventStore *)self requestWriteOnlyAccessToEventsWithCompletion:&__block_literal_global_211];
  }
}

void __98__EKEventStore_requestAccessToEntityType_desiredFullAccess_testing_synchronous_reason_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 67109376;
    v13 = a3;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&dword_1A805E000, v6, OS_LOG_TYPE_DEFAULT, "Access request result: %d, error = %d", &v12, 0xEu);
  }

  if ([EKEventStore _staticAccessFlagSaysDeniedForEntityType:*(a1 + 48)])
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      a3 = 2;
      _os_log_impl(&dword_1A805E000, v7, OS_LOG_TYPE_DEFAULT, "Coercing access request result to denied due to static access flags", &v12, 2u);
    }

    else
    {
      a3 = 2;
    }
  }

  if (*(a1 + 56) != a3)
  {
    [*(a1 + 32) _accessStatusChanged];
  }

  if (*(a1 + 64) == 1 && (_shouldUseLegacyAccessBehavior() & 1) == 0)
  {
    v8 = a3 == 3;
  }

  else
  {
    v8 = a3 > 2;
  }

  if (*(a1 + 40))
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      v13 = v8;
      _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_DEFAULT, "Calling request access completion handler with result: %{BOOL}d", &v12, 8u);
    }

    if (a2)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    }

    else
    {
      v10 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)isDataProtected
{
  v2 = [(EKEventStore *)self dataProtectionObserver];
  v3 = [v2 dataIsAccessible];

  return v3 ^ 1;
}

- (void)_accessStatusChanged
{
  [(EKEventStore *)self reset];
  [(EKAuthStatusChecker *)self->_authStatusChecker clearCachedAuthStatus];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EKEventStore__accessStatusChanged__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __36__EKEventStore__accessStatusChanged__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"EKEventStoreChangedNotification" object:*(a1 + 32) userInfo:0];
}

- (NSString)databasePath
{
  v2 = [(CADDatabaseInitializationOptions *)self->_initializationOptions databaseDirectory];
  v3 = [v2 path];

  return v3;
}

- (void)setTimeZone:(id)a3
{
  if (self->_timeZone != a3)
  {
    v5 = [a3 copy];
    timeZone = self->_timeZone;
    self->_timeZone = v5;

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setRemoteClientIdentity:(id)a3
{
  [(CADDatabaseInitializationOptions *)self->_initializationOptions setRemoteClientIdentity:a3];
  initializationOptions = self->_initializationOptions;
  v5 = [(EKEventStore *)self connection];
  [v5 setInitializationOptions:initializationOptions];
}

- (void)_setIsUnitTesting:(BOOL)a3
{
  v4 = 4096;
  if (!a3)
  {
    v4 = 0;
  }

  self->_options = self->_options & 0xFFFFFFFFFFFFEFFFLL | v4;
  [(CADDatabaseInitializationOptions *)self->_initializationOptions setUnitTesting:?];
  initializationOptions = self->_initializationOptions;
  v6 = [(EKEventStore *)self connection];
  [v6 setInitializationOptions:initializationOptions];

  [(EKEventStore *)self _updateDefaultDelayForThrottleEventStoreChangedNotifications];
}

- (void)setPrivacyClientIdentity:(id)a3
{
  [(CADDatabaseInitializationOptions *)self->_initializationOptions setPrivacyClientIdentity:a3];
  initializationOptions = self->_initializationOptions;
  v5 = [(EKEventStore *)self connection];
  [v5 setInitializationOptions:initializationOptions];
}

- (void)_simulateDaemonCrashForUnitTests
{
  v3 = [(EKEventStore *)self connection];
  v2 = [v3 CADOperationProxySync];
  [v2 CADTestingSimulateDaemonCrash];
}

- (void)_setMockPermissions:(id)a3
{
  v8 = a3;
  v4 = [(CADDatabaseInitializationOptions *)self->_initializationOptions mockPermissions];

  v5 = v8;
  if (v4 != v8)
  {
    [(CADDatabaseInitializationOptions *)self->_initializationOptions setMockPermissions:v8];
    initializationOptions = self->_initializationOptions;
    v7 = [(EKEventStore *)self connection];
    [v7 setInitializationOptions:initializationOptions];

    v5 = v8;
  }
}

- (int)sequenceNumber
{
  v2 = [(EKEventStore *)self sequenceToken];
  v3 = [v2 sequenceForDatabaseID:*MEMORY[0x1E6992E18]];

  return v3;
}

- (id)sequenceToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  v2 = [(EKEventStore *)self connection];
  v3 = [v2 CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__EKEventStore_sequenceToken__block_invoke;
  v6[3] = &unk_1E7800748;
  v6[4] = &v7;
  [v3 CADDatabaseGetSequenceToken:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __29__EKEventStore_sequenceToken__block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __29__EKEventStore_sequenceToken__block_invoke_cold_1(v7);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (void)changesSinceSequenceToken:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EKEventStore *)self connection];
  v9 = [v8 CADOperationProxySync];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__EKEventStore_changesSinceSequenceToken_completion___block_invoke;
  v11[3] = &unk_1E7800770;
  v12 = v6;
  v10 = v6;
  [v9 CADDatabaseGetChangesSinceSequenceToken:v7 reply:v11];
}

void __53__EKEventStore_changesSinceSequenceToken_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __53__EKEventStore_changesSinceSequenceToken_completion___block_invoke_cold_1(v9);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_invalidCADObjectIDs:(id)a3
{
  v4 = a3;
  v5 = v4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__24;
  v17 = __Block_byref_object_dispose__24;
  v18 = 0;
  if (v4 && [v4 count])
  {
    v6 = [(EKEventStore *)self connection];
    v7 = [v6 CADOperationProxySync];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__EKEventStore__invalidCADObjectIDs___block_invoke;
    v10[3] = &unk_1E7800798;
    v12 = &v13;
    v11 = v5;
    [v7 CADObjectsExist:v11 reply:v10];
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKEventStore _invalidCADObjectIDs:];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __37__EKEventStore__invalidCADObjectIDs___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (a2 == 1010)
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        __37__EKEventStore__invalidCADObjectIDs___block_invoke_cold_1();
      }

      v7 = [*(a1 + 32) copy];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    else
    {
      v10 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        __37__EKEventStore__invalidCADObjectIDs___block_invoke_cold_2(v10);
      }
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

void __72__EKEventStore__handleExternalDatabaseChangeNotification_synchronously___block_invoke()
{
  v7[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992E10];
  v6[0] = *MEMORY[0x1E6992E00];
  v6[1] = v0;
  v7[0] = &__block_literal_global_232;
  v7[1] = &__block_literal_global_234;
  v1 = *MEMORY[0x1E6992E40];
  v6[2] = *MEMORY[0x1E6992E08];
  v6[3] = v1;
  v7[2] = &__block_literal_global_236;
  v7[3] = &__block_literal_global_238;
  v2 = *MEMORY[0x1E6992430];
  v6[4] = @"com.apple.calendar.defaultAlarmChangedNotification";
  v6[5] = v2;
  v7[4] = &__block_literal_global_240;
  v7[5] = &__block_literal_global_242;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:6];
  v4 = _handleExternalDatabaseChangeNotification_synchronously__notificationToAction;
  _handleExternalDatabaseChangeNotification_synchronously__notificationToAction = v3;

  v5 = *MEMORY[0x1E69E9840];
}

void __72__EKEventStore__handleExternalDatabaseChangeNotification_synchronously___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD88];
  v3 = a2;
  v4 = [v2 defaultCenter];
  [v4 postNotificationName:@"EKEventStoreIdleChangeTrackingClientWasPurgedNotification" object:v3];
}

- (void)_databaseChangedExternally:(unint64_t)a3 processSynchronously:(BOOL)a4
{
  v4 = a4;
  if (([(CADDatabaseInitializationOptions *)self->_initializationOptions databaseInitOptions]& 4) == 0 && [(EKEventStore *)self eventAccessLevel]== 2)
  {
    v7 = [(EKEventStore *)self connection];
    v8 = [v7 hasEverConnected];

    if (v8)
    {
      if ([(EKEventStore *)self returnEventResults])
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __64__EKEventStore__databaseChangedExternally_processSynchronously___block_invoke;
        aBlock[3] = &unk_1E77FD418;
        aBlock[4] = self;
        v9 = _Block_copy(aBlock);
        dbChangedQueue = self->_dbChangedQueue;
        if (v4)
        {
          dispatch_sync(dbChangedQueue, v9);
        }

        else
        {
          dispatch_async(dbChangedQueue, v9);
        }
      }
    }

    else
    {

      [(EKEventStore *)self _postEventStoreChangedNotificationWithChangeType:a3 changedObjectIDs:0 forceImmediate:0];
    }
  }
}

void __64__EKEventStore__databaseChangedExternally_processSynchronously___block_invoke(uint64_t a1)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__24;
  v27 = __Block_byref_object_dispose__24;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__24;
  v21 = __Block_byref_object_dispose__24;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__24;
  v15 = __Block_byref_object_dispose__24;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [*(a1 + 32) connection];
  v3 = [v2 CADOperationProxySync];
  v4 = *(a1 + 32);
  v5 = *(v4 + 352);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__EKEventStore__databaseChangedExternally_processSynchronously___block_invoke_2;
  v6[3] = &unk_1E78007E0;
  v6[4] = v4;
  v6[5] = &v17;
  v6[6] = &v11;
  v6[7] = &v23;
  v6[8] = &v7;
  [v3 CADDatabaseGetChangedEntityIDsSinceTimestamp:v5 reply:v6];

  [*(a1 + 32) _processExternalChangesWithLatestTimestamp:v24[5] changedObjectIDsData:v18[5] deletedObjectIDOffsets:v12[5] changesWereSyncStatusOnly:*(v8 + 24) forceImmediateNotification:0];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

void __64__EKEventStore__databaseChangedExternally_processSynchronously___block_invoke_2(void *a1, int a2, void *a3, void *a4, void *a5, char a6)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a2)
  {
    v15 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __64__EKEventStore__databaseChangedExternally_processSynchronously___block_invoke_2_cold_1(a1, v15);
    }
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    objc_storeStrong((*(a1[6] + 8) + 40), a4);
    objc_storeStrong((*(a1[7] + 8) + 40), a5);
    *(*(a1[8] + 8) + 24) = a6;
  }
}

+ (void)EKObjectIDsFromData:(id)a3 deletedObjectIDOffsets:(id)a4 outChangedIDs:(id *)a5 outDeletedIDs:(id *)a6
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v52 objects:v57 count:16];
  v39 = a5;
  v40 = a6;
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *v53;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v52 + 1) + 8 * i);
        v18 = [v9 objectForKeyedSubscript:v17];
        v19 = [v10 objectForKeyedSubscript:v17];
        v20 = [v19 unsignedIntegerValue];
        v14 += v20;
        v13 = v13 - v20 + ([v18 length] >> 3);
      }

      v12 = [v9 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14];
  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:v13];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v9;
  v43 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v43)
  {
    v41 = *v49;
    v42 = v10;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v49 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v48 + 1) + 8 * j);
        v25 = [obj objectForKeyedSubscript:v24];
        v46 = [v10 objectForKeyedSubscript:v24];
        v26 = [v46 unsignedIntegerValue];
        v45 = [v25 length];
        v27 = [v24 intValue];
        v47 = v25;
        v28 = [v25 bytes];
        v29 = v28;
        if (v26)
        {
          v30 = (v28 + 4);
          v31 = v26;
          do
          {
            v32 = [EKObjectID objectIDWithEntityType:*(v30 - 1) rowID:*v30 databaseID:v27];
            [v21 addObject:v32];

            v30 += 2;
            --v31;
          }

          while (v31);
        }

        v33 = (v45 >> 3) - v26;
        if (v45 >> 3 > v26)
        {
          v34 = (v29 + 8 * v26 + 4);
          do
          {
            v35 = [EKObjectID objectIDWithEntityType:*(v34 - 1) rowID:*v34 databaseID:v27];
            [v22 addObject:v35];

            v34 += 2;
            --v33;
          }

          while (v33);
        }

        v10 = v42;
      }

      v43 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v43);
  }

  v36 = v21;
  *v39 = v21;
  v37 = v22;
  *v40 = v22;

  v38 = *MEMORY[0x1E69E9840];
}

- (void)_processExternalChangesWithLatestTimestamp:(id)a3 changedObjectIDsData:(id)a4 deletedObjectIDOffsets:(id)a5 changesWereSyncStatusOnly:(BOOL)a6 forceImmediateNotification:(BOOL)a7
{
  v65 = a7;
  v66 = a6;
  v126 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v69 = a4;
  v68 = a5;
  dispatch_assert_queue_V2(self->_dbChangedQueue);
  v67 = v11;
  if (v11)
  {
    objc_storeStrong(&self->_lastDatabaseNotificationTimestamp, a3);
  }

  if ([(EKEventStore *)self setRestoreGenerationChangedAndGetPreviousValue:0])
  {
    [(EKEventStore *)self _resetAndNotifyAfterDatabaseRestoreGenerationChanged];
  }

  else
  {
    if (v69)
    {
      v118 = 0;
      v117 = 0;
      [EKEventStore EKObjectIDsFromData:"EKObjectIDsFromData:deletedObjectIDOffsets:outChangedIDs:outDeletedIDs:" deletedObjectIDOffsets:? outChangedIDs:? outDeletedIDs:?];
      v12 = 0;
      v13 = 0;
      v73 = v12;
      if (!(v12 | v13))
      {
        goto LABEL_70;
      }

      v14 = v13;
    }

    else
    {
      v111 = 0;
      v112 = &v111;
      v113 = 0x3032000000;
      v114 = __Block_byref_object_copy__24;
      v115 = __Block_byref_object_dispose__24;
      v116 = 0;
      registeredQueue = self->_registeredQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke;
      block[3] = &unk_1E77FD530;
      block[5] = &v111;
      block[4] = self;
      dispatch_sync(registeredQueue, block);
      v16 = [v112[5] valueForKey:@"CADObjectID"];
      v74 = [(EKEventStore *)self _invalidCADObjectIDs:v16];
      v17 = [MEMORY[0x1E695DFA8] setWithArray:?];
      v73 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v16, "count") - objc_msgSend(v74, "count")}];
      v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v74, "count")}];
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v106 objects:v125 count:16];
      if (v19)
      {
        v20 = *v107;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v107 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v106 + 1) + 8 * i);
            v23 = [EKObjectID objectIDWithCADObjectID:v22];
            if ([v17 containsObject:v22])
            {
              v24 = v14;
            }

            else
            {
              v24 = v73;
            }

            [v24 addObject:v23];
          }

          v19 = [v18 countByEnumeratingWithState:&v106 objects:v125 count:16];
        }

        while (v19);
      }

      _Block_object_dispose(&v111, 8);
    }

    v75 = [(EKEventStore *)self eventAccessLevel];
    v102 = 0;
    v103 = &v102;
    v104 = 0x2020000000;
    v105 = 0;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = v14;
    v25 = [obj countByEnumeratingWithState:&v98 objects:v124 count:16];
    if (v25)
    {
      v26 = *v99;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v99 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v98 + 1) + 8 * j);
          v111 = 0;
          v112 = &v111;
          v113 = 0x3032000000;
          v114 = __Block_byref_object_copy__24;
          v115 = __Block_byref_object_dispose__24;
          v116 = 0;
          v29 = self->_registeredQueue;
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke_2;
          v97[3] = &unk_1E77FD688;
          v97[6] = &v111;
          v97[4] = self;
          v97[5] = v28;
          dispatch_sync(v29, v97);
          v30 = v112[5];
          if (v30 && ([v30 isNew] & 1) == 0)
          {
            [(EKEventStore *)self _cacheDeletedEventIdentifierIfNeededForObject:v112[5]];
            calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
            v95[0] = MEMORY[0x1E69E9820];
            v95[1] = 3221225472;
            v95[2] = __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke_3;
            v95[3] = &unk_1E7800808;
            v95[4] = self;
            v95[5] = &v111;
            v96 = v75;
            v95[6] = &v102;
            dispatch_sync(calendarSourcesAndDefaultsQueue, v95);
            unsavedChangesQueue = self->_unsavedChangesQueue;
            v94[0] = MEMORY[0x1E69E9820];
            v94[1] = 3221225472;
            v94[2] = __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke_4;
            v94[3] = &unk_1E77FD440;
            v94[4] = self;
            v94[5] = &v111;
            dispatch_sync(unsavedChangesQueue, v94);
            v33 = v112[5];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v35 = v112[5];
            if (isKindOfClass)
            {
              [(EKEventStore *)self _detachObject:v35];
            }

            else
            {
              [(EKEventStore *)self _unregisterObject:v35];
            }
          }

          _Block_object_dispose(&v111, 8);
        }

        v25 = [obj countByEnumeratingWithState:&v98 objects:v124 count:16];
      }

      while (v25);
    }

    v36 = self->_unsavedChangesQueue;
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke_5;
    v91[3] = &unk_1E77FD580;
    v71 = obj;
    v92 = v71;
    v93 = self;
    dispatch_sync(v36, v91);
    v111 = 0;
    v112 = &v111;
    v113 = 0x3032000000;
    v114 = __Block_byref_object_copy__24;
    v115 = __Block_byref_object_dispose__24;
    v116 = 0;
    v37 = self->_registeredQueue;
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke_6;
    v87[3] = &unk_1E77FD7F0;
    v90 = v69 != 0;
    v89 = &v111;
    v87[4] = self;
    v38 = v73;
    v88 = v38;
    dispatch_sync(v37, v87);
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v39 = v112[5];
    v40 = [v39 countByEnumeratingWithState:&v83 objects:v123 count:16];
    if (v40)
    {
      v41 = *v84;
      do
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v84 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v43 = *(*(&v83 + 1) + 8 * k);
          v44 = objc_autoreleasePoolPush();
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 && ([v43 isNew] & 1) == 0)
          {
            [v43 refresh];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & (v75 != 1)) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & (v75 == 1)) == 1))
            {
              v45 = [v43 CADObjectID];
              [(EKEventStore *)self _clearCachedConstraintsForObjectWithCADObjectID:v45];
            }
          }

          objc_autoreleasePoolPop(v44);
        }

        v40 = [v39 countByEnumeratingWithState:&v83 objects:v123 count:16];
      }

      while (v40);
    }

    v46 = self->_calendarSourcesAndDefaultsQueue;
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke_7;
    v79[3] = &unk_1E7800830;
    v82 = v69 != 0;
    v79[4] = self;
    v76 = v38;
    v80 = v76;
    v81 = &v102;
    dispatch_sync(v46, v79);
    if (*(v103 + 24) == 1)
    {
      [(EKEventStore *)self invalidateReminderSourceMaps];
    }

    v70 = [(EKEventStore *)self _checkPendingIntegrationEvents:v76 changedIDsValid:v69 != 0];
    databaseWaitCallbacks = self->_databaseWaitCallbacks;
    if (databaseWaitCallbacks && [(NSMutableArray *)databaseWaitCallbacks count])
    {
      v48 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A805E000, v48, OS_LOG_TYPE_DEFAULT, "EKEventStore - Should loop _databaseWaitCallbacks", buf, 2u);
      }

      v49 = [(NSMutableArray *)self->_databaseWaitCallbacks copy];
      v50 = [(NSMutableArray *)self->_databaseWaitTimestamps copy];
      for (m = 0; m < [v49 count]; ++m)
      {
        v52 = [v49 objectAtIndexedSubscript:m];
        v53 = [v50 objectAtIndexedSubscript:m];
        v54 = [MEMORY[0x1E6992368] doesTimestamp:self->_lastDatabaseNotificationTimestamp includeAllChangesVisibleToTimestamp:v53];
        v55 = EKLogHandle;
        v56 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT);
        if (v54)
        {
          if (v56)
          {
            *buf = 138412290;
            v120 = v53;
            _os_log_impl(&dword_1A805E000, v55, OS_LOG_TYPE_DEFAULT, "Triggering database wait callback for timestamp: %@", buf, 0xCu);
          }

          v57 = self->_databaseWaitCallbacks;
          v58 = _Block_copy(v52);
          [(NSMutableArray *)v57 removeObject:v58];

          [(NSMutableArray *)self->_databaseWaitTimestamps removeObject:v53];
          v77[0] = MEMORY[0x1E69E9820];
          v77[1] = 3221225472;
          v77[2] = __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke_252;
          v77[3] = &unk_1E77FEB38;
          v78 = v52;
          dispatch_async(MEMORY[0x1E69E96A0], v77);
        }

        else if (v56)
        {
          lastDatabaseNotificationTimestamp = self->_lastDatabaseNotificationTimestamp;
          *buf = 138412546;
          v120 = lastDatabaseNotificationTimestamp;
          v121 = 2112;
          v122 = v53;
          _os_log_impl(&dword_1A805E000, v55, OS_LOG_TYPE_DEFAULT, "Timestamp after DB refresh is still older than timestamp it's waiting on. This is might be an error unless there are multiple waiting callbacks. currTimestamp: %@. waitOnTimestamp: %@", buf, 0x16u);
        }
      }
    }

    if (!v66 || [(EKEventStore *)self enableSourceSyncStatusChanges])
    {
      if (v69)
      {
        v60 = [v76 arrayByAddingObjectsFromArray:v71];
        v61 = v60;
        if (v70)
        {
          v62 = [v60 arrayByAddingObjectsFromArray:?];

          v61 = v62;
        }
      }

      else
      {
        v61 = 0;
      }

      if (v66)
      {
        v63 = 2;
      }

      else
      {
        v63 = 1;
      }

      [(EKEventStore *)self _postEventStoreChangedNotificationWithChangeType:v63 changedObjectIDs:v61 forceImmediate:v65];
    }

    _Block_object_dispose(&v111, 8);
    _Block_object_dispose(&v102, 8);
  }

LABEL_70:

  v64 = *MEMORY[0x1E69E9840];
}

uint64_t __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 440) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 440) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke_3(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v7 = [*(*(*(a1 + 40) + 8) + 40) CADObjectID];
    [v3 _removeCachedCalendarWithCADID:v7];
  }

  else
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) _clearCachedSources];
      v5 = *(a1 + 32);
      if (*(a1 + 56) == 1)
      {
        [*(a1 + 32) _clearAllCachedConstraints];
      }

      else
      {
        v6 = [*(*(*(a1 + 40) + 8) + 40) CADObjectID];
        [v5 _clearCachedConstraintsForObjectWithCADObjectID:v6];
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

uint64_t __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 304) removeObject:*(*(*(a1 + 40) + 8) + 40)];
  [*(*(a1 + 32) + 320) removeObject:*(*(*(a1 + 40) + 8) + 40)];
  [*(*(a1 + 32) + 312) removeObject:*(*(*(a1 + 40) + 8) + 40)];
  [*(*(a1 + 32) + 328) removeObject:*(*(*(a1 + 40) + 8) + 40)];
  [*(*(*(a1 + 40) + 8) + 40) _setPendingInsert:0];
  [*(*(*(a1 + 40) + 8) + 40) _setPendingUpdate:0];
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 _setPendingDelete:0];
}

void __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke_5(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count] && objc_msgSend(*(*(a1 + 40) + 112), "count"))
  {
    v2 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 32)];
    v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = *(*(a1 + 40) + 112);
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [*(*(&v13 + 1) + 8 * v9) objectID];
          v11 = [v2 containsObject:v10];

          if (v11)
          {
            [v3 addIndex:v7];
          }

          ++v7;
          ++v9;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    [*(*(a1 + 40) + 112) removeObjectsAtIndexes:v3];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke_6(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 440);
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 40);
    [MEMORY[0x1E695DFB0] null];
    v4 = [v2 objectsForKeys:v3 notFoundMarker:objc_claimAutoreleasedReturnValue()];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = [*(*(a1 + 32) + 440) allValues];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  return MEMORY[0x1EEE66BB8]();
}

void __156__EKEventStore__processExternalChangesWithLatestTimestamp_changedObjectIDsData_deletedObjectIDOffsets_changesWereSyncStatusOnly_forceImmediateNotification___block_invoke_7(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 != 1 || !v3[7] && !v3[8])
  {
    [v3 _clearCachedSources];
    [*(a1 + 32) _clearCachedCalendars];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_24;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = v5;
  v7 = *v21;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v20 + 1) + 8 * i);
      v10 = [v9 entityType];
      v11 = *(a1 + 32);
      if (v10 == 6)
      {
        [v11 _clearCachedCalendars];
        *(*(*(a1 + 48) + 8) + 24) = 1;
        v12 = *(a1 + 32);
        if (!v12[8])
        {
          continue;
        }

        v13 = [v12 database];
        v14 = [v9 CADObjectIDWithGeneration:{objc_msgSend(v13, "databaseRestoreGeneration")}];

        v15 = [*(*(a1 + 32) + 64) objectForKey:v14];

        if (!v15)
        {
          [*(a1 + 32) _clearCachedSources];
        }

        goto LABEL_19;
      }

      if (v10 == 1 && v11[7] != 0)
      {
        v17 = [v11 database];
        v14 = [v9 CADObjectIDWithGeneration:{objc_msgSend(v17, "databaseRestoreGeneration")}];

        v18 = [*(*(a1 + 32) + 56) objectForKey:v14];

        if (!v18)
        {
          [*(a1 + 32) _cacheCalendarWithCADObjectID:v14 withDefaultLoadedPropertyValues:0 forKeys:0];
        }

LABEL_19:

        continue;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v6);
LABEL_22:

LABEL_24:
  v19 = *MEMORY[0x1E69E9840];
}

- (id)_checkPendingIntegrationEvents:(id)a3 changedIDsValid:(BOOL)a4
{
  v4 = a4;
  v108 = *MEMORY[0x1E69E9840];
  v47 = a3;
  dispatch_assert_queue_V2(self->_dbChangedQueue);
  if (v4)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v6 = v47;
    v7 = [v6 countByEnumeratingWithState:&v96 objects:v107 count:16];
    if (v7)
    {
      v8 = *v97;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v97 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v96 + 1) + 8 * i) entityType] == 2)
          {

            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v96 objects:v107 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_83;
  }

LABEL_12:
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = self->_pendingIntegrationEvents;
  v51 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v92 objects:v106 count:16];
  if (!v51)
  {

    v6 = 0;
LABEL_83:
    v56 = 0;
    goto LABEL_84;
  }

  v56 = 0;
  v49 = *v93;
  v50 = 0;
  do
  {
    for (j = 0; j != v51; ++j)
    {
      if (*v93 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v54 = *(*(&v92 + 1) + 8 * j);
      v53 = [(NSMutableDictionary *)self->_pendingIntegrationEvents objectForKeyedSubscript:?];
      [(EKEventStore *)self removeEmptyTablesInArray:v53];
      if ([v53 count])
      {
        v86 = 0;
        v87 = &v86;
        v88 = 0x3032000000;
        v89 = __Block_byref_object_copy__24;
        v90 = __Block_byref_object_dispose__24;
        v91 = 0;
        v10 = [(EKEventStore *)self connection];
        v11 = [v10 CADOperationProxySync];
        v80 = MEMORY[0x1E69E9820];
        v81 = 3221225472;
        v82 = __63__EKEventStore__checkPendingIntegrationEvents_changedIDsValid___block_invoke;
        v83 = &unk_1E77FED28;
        v84 = v54;
        v85 = &v86;
        [v11 CADDatabaseGetAllEventsWithUniqueID:? reply:?];

        v12 = [v87[5] count];
        if (v12)
        {
          v62 = [MEMORY[0x1E695DF70] arrayWithCapacity:v12];
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v13 = v87[5];
          v14 = [v13 countByEnumeratingWithState:&v76 objects:v105 count:16];
          if (v14)
          {
            v15 = *v77;
            do
            {
              for (k = 0; k != v14; ++k)
              {
                if (*v77 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = [EKObjectID objectIDWithCADObjectID:*(*(&v76 + 1) + 8 * k)];
                v18 = [(EKEventStore *)self publicObjectWithFetchedObjectID:v17];

                if (v18)
                {
                  [v62 addObject:v18];
                }
              }

              v14 = [v13 countByEnumeratingWithState:&v76 objects:v105 count:16];
            }

            while (v14);
          }

          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v55 = v53;
          v59 = [v55 countByEnumeratingWithState:&v72 objects:v104 count:16];
          if (v59)
          {
            v61 = 0;
            v57 = *v73;
            do
            {
              for (m = 0; m != v59; ++m)
              {
                if (*v73 != v57)
                {
                  objc_enumerationMutation(v55);
                }

                v19 = *(*(&v72 + 1) + 8 * m);
                v20 = [v19 anyObject];
                if (v20)
                {
                  v58 = v19;
                  v70 = 0u;
                  v71 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v21 = v62;
                  v22 = [v21 countByEnumeratingWithState:&v68 objects:v103 count:16];
                  if (v22)
                  {
                    v23 = *v69;
                    while (2)
                    {
                      for (n = 0; n != v22; ++n)
                      {
                        if (*v69 != v23)
                        {
                          objc_enumerationMutation(v21);
                        }

                        v25 = *(*(&v68 + 1) + 8 * n);
                        v26 = [v25 calendar];
                        v27 = [v20 calendar];
                        v28 = [v26 isEqual:v27];

                        if (v28)
                        {
                          v29 = EKLogHandle;
                          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                          {
                            v30 = [v20 privacySafeIntegrationEventDescription];
                            *buf = 138543362;
                            v102 = v30;
                            _os_log_impl(&dword_1A805E000, v29, OS_LOG_TYPE_INFO, "Pending integration event has been matched; removing it: %{public}@", buf, 0xCu);
                          }

                          v60 = [v20 objectID];
                          v66 = 0u;
                          v67 = 0u;
                          v64 = 0u;
                          v65 = 0u;
                          v31 = v58;
                          v32 = [v31 countByEnumeratingWithState:&v64 objects:v100 count:16];
                          if (v32)
                          {
                            v33 = *v65;
                            do
                            {
                              for (ii = 0; ii != v32; ++ii)
                              {
                                if (*v65 != v33)
                                {
                                  objc_enumerationMutation(v31);
                                }

                                v35 = *(*(&v64 + 1) + 8 * ii);
                                v36 = [v35 backingObject];
                                [(EKEventStore *)self _objectDidReset:v36];

                                v37 = [v25 backingObject];
                                [v35 setBackingObject:v37];

                                [v35 _resetAfterUpdatingChangeSetOrBackingObject];
                              }

                              v32 = [v31 countByEnumeratingWithState:&v64 objects:v100 count:16];
                            }

                            while (v32);
                          }

                          v38 = v56;
                          if (!v56)
                          {
                            v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
                          }

                          v56 = v38;
                          [v38 addObject:v60];
                          v39 = v61;
                          if (!v61)
                          {
                            v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
                          }

                          v61 = v39;
                          [v39 addObject:v31];

                          goto LABEL_57;
                        }
                      }

                      v22 = [v21 countByEnumeratingWithState:&v68 objects:v103 count:16];
                      if (v22)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_57:
                }

                else
                {
                  v40 = EKLogHandle;
                  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543362;
                    v102 = v54;
                    _os_log_impl(&dword_1A805E000, v40, OS_LOG_TYPE_INFO, "Discarding empty pending integration event table for: %{public}@", buf, 0xCu);
                  }

                  v41 = v61;
                  if (!v61)
                  {
                    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  }

                  v61 = v41;
                  [v41 addObject:v19];
                }
              }

              v59 = [v55 countByEnumeratingWithState:&v72 objects:v104 count:16];
            }

            while (v59);
          }

          else
          {
            v61 = 0;
          }

          v43 = v50;
          v44 = [v61 count];
          if (v44 == [v55 count])
          {
            if (!v50)
            {
              v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v43 addObject:v54];
          }

          else if (v61)
          {
            [v55 removeObjectsInArray:?];
          }

          v50 = v43;
        }

        _Block_object_dispose(&v86, 8);
      }

      else
      {
        v42 = v50;
        if (!v50)
        {
          v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v50 = v42;
        [v42 addObject:v54];
      }
    }

    v51 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v92 objects:v106 count:16];
  }

  while (v51);

  if (v50)
  {
    [(NSMutableDictionary *)self->_pendingIntegrationEvents removeObjectsForKeys:?];
    v6 = v50;
  }

  else
  {
    v6 = 0;
  }

LABEL_84:

  v45 = *MEMORY[0x1E69E9840];

  return v56;
}

void __63__EKEventStore__checkPendingIntegrationEvents_changedIDsValid___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __63__EKEventStore__checkPendingIntegrationEvents_changedIDsValid___block_invoke_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (void)removeEmptyTablesInArray:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) anyObject];

        if (!v10)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
          }

          [v7 addIndex:v6];
        }

        ++v6;
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
    if (v7)
    {
      [v3 removeObjectsAtIndexes:v7];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_cacheDeletedEventIdentifierIfNeededForObject:(id)a3
{
  v4 = a3;
  if (self->_deletedEventUniqueIdentifiersCache)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [objc_opt_class() propertyKeyForUniqueIdentifier];
      v10 = 0;
      v6 = [v4 loadedOrUpdatedPropertyValue:v5 wasAvailable:&v10];
      v7 = v6;
      if (v10 == 1 && v6)
      {
        deletedEventUniqueIdentifiersCache = self->_deletedEventUniqueIdentifiersCache;
        v9 = [v4 objectID];
        [(NSCache *)deletedEventUniqueIdentifiersCache setObject:v7 forKey:v9];
      }
    }
  }
}

+ (id)_contextForNotificationWithChangeType:(unint64_t)a3 changedObjectIDs:(id)a4
{
  v5 = a4;
  if (_contextForNotificationWithChangeType_changedObjectIDs__onceToken != -1)
  {
    +[EKEventStore _contextForNotificationWithChangeType:changedObjectIDs:];
  }

  if (a3 == 2)
  {
    if (v5)
    {
      v6 = 0;
      goto LABEL_11;
    }

    v7 = &_contextForNotificationWithChangeType_changedObjectIDs__contextForSyncOnlyWithUnknownChanges;
  }

  else
  {
    v7 = &_contextForNotificationWithChangeType_changedObjectIDs__contextForNonSyncOnlyWithKnownChanges;
    if (!v5)
    {
      v7 = &_contextForNotificationWithChangeType_changedObjectIDs__contextForNonSyncOnlyWithUnknownChanges;
    }
  }

  v6 = *v7;
LABEL_11:

  return v6;
}

void __71__EKEventStore__contextForNotificationWithChangeType_changedObjectIDs___block_invoke()
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = @"EKEventStoreUnknownChangeKey";
  v0 = MEMORY[0x1E695E118];
  v13[0] = MEMORY[0x1E695E118];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v2 = _contextForNotificationWithChangeType_changedObjectIDs__contextForSyncOnlyWithUnknownChanges;
  _contextForNotificationWithChangeType_changedObjectIDs__contextForSyncOnlyWithUnknownChanges = v1;

  v10 = @"EKEventStoreNonSyncOnlyChangeKey";
  v11 = v0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v4 = _contextForNotificationWithChangeType_changedObjectIDs__contextForNonSyncOnlyWithKnownChanges;
  _contextForNotificationWithChangeType_changedObjectIDs__contextForNonSyncOnlyWithKnownChanges = v3;

  v8[0] = @"EKEventStoreUnknownChangeKey";
  v8[1] = @"EKEventStoreNonSyncOnlyChangeKey";
  v9[0] = v0;
  v9[1] = v0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = _contextForNotificationWithChangeType_changedObjectIDs__contextForNonSyncOnlyWithUnknownChanges;
  _contextForNotificationWithChangeType_changedObjectIDs__contextForNonSyncOnlyWithUnknownChanges = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_postEventStoreChangedNotificationWithChangeType:(unint64_t)a3 changedObjectIDs:(id)a4 forceImmediate:(BOOL)a5
{
  v5 = a5;
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [objc_opt_class() _contextForNotificationWithChangeType:a3 changedObjectIDs:v8];
  v10 = v9;
  if (v5)
  {
    if (v9)
    {
      v11 = [v9 mutableCopy];
      [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"EKEventStoreForceImmediateChangeKey"];

      v10 = v11;
    }

    else
    {
      v13 = @"EKEventStoreForceImmediateChangeKey";
      v14[0] = MEMORY[0x1E695E118];
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }
  }

  [(CalAccumulatingQueue *)self->_notificationAccumulatingQueue updateTagsAndExecuteBlock:v8 withContext:v10];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_postEventStoreChangedNotificationWithTags:(id)a3 context:(id)a4
{
  v27[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = CalMonotonicTime();
  self->_lastFiredEventStoreChangedNotificationTime = v8;
  v9 = v6;
  v10 = [v7 objectForKeyedSubscript:@"EKEventStoreUnknownChangeKey"];
  v11 = [v10 BOOLValue];

  v12 = v9;
  if (v11)
  {

    v12 = 0;
  }

  v13 = [v7 objectForKeyedSubscript:@"EKEventStoreNonSyncOnlyChangeKey"];
  v14 = [v13 BOOLValue];

  if (!v14)
  {
    v15 = 2;
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_7:
    v24[0] = @"EKEventStoreChangeTypeUserInfoKey";
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    v25[0] = v16;
    v25[1] = MEMORY[0x1E695E118];
    v24[1] = @"EKEventStoreCalendarDataChangedUserInfoKey";
    v24[2] = @"EKEventStoreRemindersDataChangedUserInfoKey";
    v25[2] = MEMORY[0x1E695E110];
    v17 = MEMORY[0x1E695DF20];
    v18 = v25;
    v19 = v24;
    v20 = 3;
    goto LABEL_8;
  }

  self->_lastFiredNonSyncOnlyEventStoreChangedNotificationTime = v8;
  v15 = 1;
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_5:
  v27[0] = v12;
  v26[0] = @"EKEventStoreChangedObjectIDsUserInfoKey";
  v26[1] = @"EKEventStoreChangeTypeUserInfoKey";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
  v27[1] = v16;
  v27[2] = MEMORY[0x1E695E118];
  v26[2] = @"EKEventStoreCalendarDataChangedUserInfoKey";
  v26[3] = @"EKEventStoreRemindersDataChangedUserInfoKey";
  v27[3] = MEMORY[0x1E695E110];
  v17 = MEMORY[0x1E695DF20];
  v18 = v27;
  v19 = v26;
  v20 = 4;
LABEL_8:
  v21 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];

  v22 = [MEMORY[0x1E696AD88] defaultCenter];
  [v22 postNotificationName:@"EKEventStoreChangedNotification" object:self userInfo:v21];

  v23 = *MEMORY[0x1E69E9840];
}

+ (double)_defaultDelayForThrottledNotificationsWithInitializationOptions:(id)a3
{
  v3 = 0.0;
  if (([a3 unitTesting] & 1) == 0 && (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessIsCalendarDaemon") & 1) == 0)
  {
    if ([MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement])
    {
      return 0.0;
    }

    else
    {
      return 1.0;
    }
  }

  return v3;
}

- (double)_throttleDelayForEventStoreChangedNotificationWithTags:(id)a3 context:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = 0.0;
  if (self->_defaultDelayForThrottledNotifications != 0.0)
  {
    v7 = [v5 objectForKeyedSubscript:@"EKEventStoreForceImmediateChangeKey"];
    v8 = [v7 BOOLValue];

    if ((v8 & 1) == 0)
    {
      v9 = [v5 objectForKeyedSubscript:@"EKEventStoreNonSyncOnlyChangeKey"];
      v10 = [v9 BOOLValue];

      v11 = 256;
      if (v10)
      {
        v11 = 264;
      }

      [objc_opt_class() _throttleDelayForEventStoreChangedNotificationWithLastFiredTime:*(&self->super.isa + v11) delay:self->_defaultDelayForThrottledNotifications];
      v6 = v12;
    }
  }

  return v6;
}

+ (double)_throttleDelayForEventStoreChangedNotificationWithLastFiredTime:(unint64_t)a3 delay:(double)a4
{
  if (!a3)
  {
    return 0.0;
  }

  info = 0;
  mach_timebase_info(&info);
  v6 = CalMonotonicTime();
  result = 0.0;
  if (((v6 - a3) * info.numer / info.denom / 0x3B9ACA00) <= a4)
  {
    return a4;
  }

  return result;
}

- (void)_defaultCalendarChangedExternally
{
  v3 = [(EKEventStore *)self calendarSourcesAndDefaultsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EKEventStore__defaultCalendarChangedExternally__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(v3, block);

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"EKEventStoreCalendarsChangedNotification" object:self];
}

void __49__EKEventStore__defaultCalendarChangedExternally__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (void)_defaultAlarmChangedExternally
{
  v3 = [(EKEventStore *)self calendarSourcesAndDefaultsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EKEventStore__defaultAlarmChangedExternally__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __46__EKEventStore__defaultAlarmChangedExternally__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 160);
  *(v2 + 160) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 168);
  *(v4 + 168) = 0;
}

- (void)daemonRestarted
{
  v3 = [(EKEventStore *)self dataProtectionObserver];
  v4 = [v3 dataIsAccessible];

  if (v4)
  {

    [(EKEventStore *)self _databaseChangedExternally:0 processSynchronously:0];
  }
}

void __59__EKEventStore_databaseRestoreGenerationChangedExternally___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_DEFAULT, 0);

  v1 = dispatch_queue_create("com.apple.eventkit.autoreset", attr);
  v2 = databaseRestoreGenerationChangedExternally__autoResetQueue;
  databaseRestoreGenerationChangedExternally__autoResetQueue = v1;
}

- (NSString)eventStoreIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  v2 = [(EKEventStore *)self connection];
  v3 = [v2 CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__EKEventStore_eventStoreIdentifier__block_invoke;
  v6[3] = &unk_1E7800858;
  v6[4] = &v7;
  [v3 CADDatabaseGetUUID:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__EKEventStore_eventStoreIdentifier__block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __36__EKEventStore_eventStoreIdentifier__block_invoke_cold_1(v7);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (unint64_t)lastConfirmedSplashScreenVersion
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(EKEventStore *)self connection];
  v3 = [v2 CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__EKEventStore_lastConfirmedSplashScreenVersion__block_invoke;
  v6[3] = &unk_1E7800880;
  v6[4] = &v7;
  [v3 CADDatabaseLastConfirmedSplashScreenVersion:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)clientCanModifySources
{
  if (-[EKEventStore skipModificationValidation](self, "skipModificationValidation") || ([MEMORY[0x1E6992FA0] currentProcessHasTestingEntitlement] & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessHasSyncClientEntitlement") & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessIsFirstPartyCalendarApp") & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessIsCalendarDaemon") & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessIsPreferences") & 1) != 0)
  {
    return 1;
  }

  v3 = MEMORY[0x1E6992FA0];

  return [v3 currentProcessIsAutomator];
}

- (id)_sourceWithID:(id)a3
{
  v3 = [(EKEventStore *)self objectWithObjectID:a3];
  if (v3)
  {
    v4 = [(EKObject *)[EKSource alloc] initWithPersistentObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_cacheSourceWithCADObjectID:(id)a3 withDefaultLoadedPropertyValues:(id)a4 forKeys:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sources = self->_sources;
  if (sources)
  {
    v12 = [(NSMutableDictionary *)sources objectForKey:v8];
    v13 = v12;
    if (v9 || !v12)
    {
      v14 = [EKObjectID objectIDWithCADObjectID:v8];
      v15 = [(EKEventStore *)self registerFetchedObjectWithID:v14 withDefaultLoadedPropertyKeys:v10 values:v9];

      if (v15)
      {
        [(NSMutableDictionary *)self->_sources setObject:v15 forKey:v8];
        v13 = v15;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore _cacheSourceWithCADObjectID:withDefaultLoadedPropertyValues:forKeys:];
  }
}

void __36__EKEventStore__loadSourcesIfNeeded__block_invoke_264(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [a2 stampedCopyWithGeneration:*(a1 + 56)];
  v5 = *(a1 + 32);
  v6 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:a3];
  [v5 _cacheSourceWithCADObjectID:v7 withDefaultLoadedPropertyValues:v6 forKeys:*(a1 + 40)];
}

- (id)sourcesEnabledForEntityType:(unint64_t)a3
{
  v4 = [(EKEventStore *)self sources];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__EKEventStore_sourcesEnabledForEntityType___block_invoke;
  v8[3] = &__block_descriptor_40_e35_B24__0__EKSource_8__NSDictionary_16l;
  v8[4] = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:v8];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  return v6;
}

uint64_t __44__EKEventStore_sourcesEnabledForEntityType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = *(a1 + 32);
  v8 = (a1 + 32);
  v7 = v9;
  if (v9 == 1)
  {
    v10 = [v5 allowsTasks];
    goto LABEL_5;
  }

  if (!v7)
  {
    v10 = [v5 allowsEvents];
LABEL_5:
    v11 = v10;
    goto LABEL_9;
  }

  v12 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __44__EKEventStore_sourcesEnabledForEntityType___block_invoke_cold_1(v8, v12);
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (id)_deletableSources
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = objc_opt_new();
  calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__EKEventStore__deletableSources__block_invoke;
  v6[3] = &unk_1E77FD440;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(calendarSourcesAndDefaultsQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__EKEventStore__deletableSources__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__24;
  v21 = __Block_byref_object_dispose__24;
  v22 = 0;
  v2 = [*(a1 + 32) connection];
  v3 = [v2 CADOperationProxySync];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __33__EKEventStore__deletableSources__block_invoke_2;
  v16[3] = &unk_1E7800918;
  v16[4] = &v17;
  [v3 CADDatabaseGetDeletableSources:v16];

  v4 = v18[5];
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v23 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [EKObjectID objectIDWithCADObjectID:*(*(&v12 + 1) + 8 * v8), v12];
          v10 = [*(a1 + 32) _sourceWithID:v9];
          if (v10)
          {
            [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v12 objects:v23 count:16];
      }

      while (v6);
    }
  }

  _Block_object_dispose(&v17, 8);

  v11 = *MEMORY[0x1E69E9840];
}

void __33__EKEventStore__deletableSources__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __33__EKEventStore__deletableSources__block_invoke_2_cold_1(v7);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (id)getSubscribedCalendarsSourceCreateIfNeededWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__24;
  v19 = __Block_byref_object_dispose__24;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__24;
  v13 = __Block_byref_object_dispose__24;
  v14 = 0;
  calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__EKEventStore_getSubscribedCalendarsSourceCreateIfNeededWithError___block_invoke;
  block[3] = &unk_1E77FD728;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v15;
  dispatch_sync(calendarSourcesAndDefaultsQueue, block);
  if (v16[5])
  {
    v6 = [(EKEventStore *)self publicObjectWithFetchedObjectID:?];
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      *a3 = v10[5];
    }
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __68__EKEventStore_getSubscribedCalendarsSourceCreateIfNeededWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[6])
  {
    goto LABEL_3;
  }

  v3 = [v2 connection];
  v4 = [v3 CADOperationProxySync];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__EKEventStore_getSubscribedCalendarsSourceCreateIfNeededWithError___block_invoke_2;
  v8[3] = &unk_1E77FFEC8;
  v9 = *(a1 + 32);
  [v4 CADDatabaseGetOrCreateSubscribedCalendarsSource:v8];

  if (*(*(a1 + 32) + 48))
  {
LABEL_3:
    v5 = [EKObjectID objectIDWithCADObjectID:?];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __68__EKEventStore_getSubscribedCalendarsSourceCreateIfNeededWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v8 = *(a1 + 40);
    v7 = a1 + 40;
    v9 = *(v8 + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v6;

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __68__EKEventStore_getSubscribedCalendarsSourceCreateIfNeededWithError___block_invoke_2_cold_1(v7);
    }
  }

  else
  {
    v11 = [*(a1 + 32) database];
    v12 = [v5 stampedCopyWithGeneration:{objc_msgSend(v11, "databaseRestoreGeneration")}];
    v13 = *(a1 + 32);
    v14 = *(v13 + 48);
    *(v13 + 48) = v12;
  }
}

- (id)localBirthdayCalendarCreateIfNeededWithError:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__24;
  v23 = __Block_byref_object_dispose__24;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__24;
  v17 = __Block_byref_object_dispose__24;
  v18 = 0;
  v5 = [(EKEventStore *)self connection];
  v6 = [v5 CADOperationProxySync];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__EKEventStore_localBirthdayCalendarCreateIfNeededWithError___block_invoke;
  v12[3] = &unk_1E7800940;
  v12[5] = &v19;
  v12[6] = &v13;
  v12[4] = self;
  [v6 CADDatabaseGetOrCreateBirthdayCalendar:v12];

  if (v14[5])
  {
    calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__EKEventStore_localBirthdayCalendarCreateIfNeededWithError___block_invoke_269;
    block[3] = &unk_1E77FD440;
    block[4] = self;
    block[5] = &v13;
    dispatch_sync(calendarSourcesAndDefaultsQueue, block);
    v8 = [EKObjectID objectIDWithCADObjectID:v14[5]];
    v9 = [(EKEventStore *)self publicObjectWithFetchedObjectID:v8];
  }

  else
  {
    v9 = 0;
    if (a3)
    {
      *a3 = v20[5];
    }
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __61__EKEventStore_localBirthdayCalendarCreateIfNeededWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v8 = *(a1 + 40);
    v7 = a1 + 40;
    v9 = *(v8 + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v6;

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __61__EKEventStore_localBirthdayCalendarCreateIfNeededWithError___block_invoke_cold_1(v7);
    }
  }

  else
  {
    v11 = [*(a1 + 32) database];
    v12 = [v5 stampedCopyWithGeneration:{objc_msgSend(v11, "databaseRestoreGeneration")}];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (id)delegateSourcesForSource:(id)a3
{
  v4 = a3;
  v5 = [(EKEventStore *)self eventSources];
  v6 = MEMORY[0x1E696AE18];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__EKEventStore_delegateSourcesForSource___block_invoke;
  v11[3] = &unk_1E7800988;
  v12 = v4;
  v7 = v4;
  v8 = [v6 predicateWithBlock:v11];
  v9 = [v5 filteredArrayUsingPredicate:v8];

  return v9;
}

uint64_t __41__EKEventStore_delegateSourcesForSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isDelegate])
  {
    v4 = [v3 delegatedAccountOwnerStoreID];
    v5 = [*(a1 + 32) externalID];
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)parentSourceForDelegateSource:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a3 delegatedAccountOwnerStoreID];
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(EKEventStore *)self eventSources];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 externalID];
          v11 = [v10 isEqual:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore parentSourceForDelegateSource:];
    }

    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)fetchGrantedDelegatesForSource:(id)a3 results:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EKEventStore *)self connection];
  v9 = [v8 CADOperationProxy];
  v10 = [v7 CADObjectID];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__EKEventStore_fetchGrantedDelegatesForSource_results___block_invoke;
  v12[3] = &unk_1E78009B0;
  v13 = v6;
  v11 = v6;
  [v9 CADSourceGetGrantedDelegatesList:v10 reply:v12];
}

void __55__EKEventStore_fetchGrantedDelegatesForSource_results___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __55__EKEventStore_fetchGrantedDelegatesForSource_results___block_invoke_cold_1(v6);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_8:
      v8();
    }
  }

  else
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v8 = *(v9 + 16);
      goto LABEL_8;
    }
  }
}

- (void)updateGrantedDelegate:(id)a3 action:(int64_t)a4 source:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(EKEventStore *)self connection];
  v14 = [v13 CADOperationProxy];
  v15 = [v11 CADObjectID];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__EKEventStore_updateGrantedDelegate_action_source_completion___block_invoke;
  v17[3] = &unk_1E78009D8;
  v18 = v10;
  v16 = v10;
  [v14 CADSourceUpdateGrantedDelegate:v12 action:a4 sourceID:v15 reply:v17];
}

void __63__EKEventStore_updateGrantedDelegate_action_source_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __63__EKEventStore_updateGrantedDelegate_action_source_completion___block_invoke_cold_1(v4);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
      (*(v5 + 16))(v5, v6);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }
}

- (void)addExchangeDelegateWithName:(id)a3 emailAddress:(id)a4 toSource:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &__block_literal_global_274;
  }

  if (!v11)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = @"No emailAddress given";
LABEL_11:
    v20 = [v18 errorWithEKErrorCode:63 description:v19];
    v14[2](v14, 0, -1, v20);

    goto LABEL_12;
  }

  if (!v12)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = @"No source given";
    goto LABEL_11;
  }

  if ([v12 sourceType] != 1)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = @"Given source is not an Exchange source";
    goto LABEL_11;
  }

  v15 = [(EKEventStore *)self connection];
  v16 = [v15 CADOperationProxy];
  v17 = [v12 CADObjectID];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__EKEventStore_addExchangeDelegateWithName_emailAddress_toSource_completion___block_invoke_2;
  v21[3] = &unk_1E7800A20;
  v21[4] = self;
  v22 = v14;
  [v16 CADSourceAddExchangeDelegateWithName:v10 emailAddress:v11 toSourceWithID:v17 reply:v21];

LABEL_12:
}

void __77__EKEventStore_addExchangeDelegateWithName_emailAddress_toSource_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v12 = v5;
  if (a2)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v5)
    {
      v8 = [*(a1 + 32) database];
      v9 = [v12 stampedCopyWithGeneration:{objc_msgSend(v8, "databaseRestoreGeneration")}];

      [*(a1 + 32) _cacheSourceWithCADObjectID:v9 withDefaultLoadedPropertyValues:0 forKeys:0];
      v10 = *(a1 + 32);
      v11 = [EKObjectID objectIDWithCADObjectID:v12];
      v6 = [v10 _sourceWithID:v11];
    }

    else
    {
      v6 = 0;
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

- (void)removeExchangeDelegate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &__block_literal_global_286;
  }

  if (!v6)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = @"No delegate given";
LABEL_11:
    v12 = [v13 errorWithEKErrorCode:63 description:v14];
    v8[2](v8, 0, v12);
    goto LABEL_12;
  }

  if (([v6 isDelegate] & 1) == 0)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = @"Given source is not a delegate";
    goto LABEL_11;
  }

  if ([v6 sourceType] != 1)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = @"Given delegate is not an Exchange source";
    goto LABEL_11;
  }

  v9 = [v6 CADObjectID];
  v10 = [(EKEventStore *)self connection];
  v11 = [v10 CADOperationProxy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__EKEventStore_removeExchangeDelegate_completion___block_invoke_2;
  v15[3] = &unk_1E7800A48;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v12 = v9;
  [v11 CADSourceRemoveExchangeDelegateWithID:v12 reply:v15];

LABEL_12:
}

void __50__EKEventStore_removeExchangeDelegate_completion___block_invoke_2(void *a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
  }

  else
  {
    v8 = a1[4];
    v7 = a1[5];
    v9 = *(v8 + 360);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__EKEventStore_removeExchangeDelegate_completion___block_invoke_3;
    v10[3] = &unk_1E77FD580;
    v10[4] = v8;
    v11 = v7;
    dispatch_sync(v9, v10);

    v6 = 0;
  }

  (*(a1[6] + 16))(a1[6], v2 == 0, v6, v4, v5);
}

uint64_t __50__EKEventStore_removeExchangeDelegate_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _clearCachedSources];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _clearCachedConstraintsForObjectWithCADObjectID:v3];
}

void __47__EKEventStore__localSourceWithEnableIfNeeded___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __36__EKEventStore__loadSourcesIfNeeded__block_invoke_cold_1(v6);
    }
  }

  else
  {
    v7 = [EKObjectID objectIDWithCADObjectID:v5];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (id)localBirthdayCalendarSource
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__EKEventStore_localBirthdayCalendarSource__block_invoke;
  v6[3] = &unk_1E77FD440;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(calendarSourcesAndDefaultsQueue, v6);
  if (v8[5])
  {
    v4 = [(EKEventStore *)self _sourceWithID:?];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __43__EKEventStore_localBirthdayCalendarSource__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[2])
  {
    goto LABEL_3;
  }

  v3 = [v2 connection];
  v4 = [v3 CADOperationProxySync];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__EKEventStore_localBirthdayCalendarSource__block_invoke_2;
  v8[3] = &unk_1E7800A98;
  v8[4] = *(a1 + 32);
  [v4 CADDatabaseGetLocalBirthdaySource:v8];

  if (*(*(a1 + 32) + 16))
  {
LABEL_3:
    v5 = [EKObjectID objectIDWithCADObjectID:?];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __43__EKEventStore_localBirthdayCalendarSource__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __36__EKEventStore__loadSourcesIfNeeded__block_invoke_cold_1(v6);
    }
  }

  else
  {
    v7 = [*(a1 + 32) database];
    v8 = [v5 stampedCopyWithGeneration:{objc_msgSend(v7, "databaseRestoreGeneration")}];
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    *(v9 + 16) = v8;
  }
}

- (EKSource)sourceWithIdentifier:(NSString *)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = identifier;
  if ([(EKEventStore *)self returnEventResults])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(EKEventStore *)self sources];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 sourceIdentifier];
          v12 = [v11 isEqualToString:v4];

          if (v12)
          {
            v13 = v10;

            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  if ([(EKEventStore *)self returnReminderResults])
  {
    v13 = [(EKReminderStore *)self->_reminderStore sourceWithIdentifier:v4];
  }

  else
  {
    v13 = 0;
  }

LABEL_15:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)sourceWithExternalID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(EKEventStore *)self sources];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 externalID];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)primaryAppleAccountSource
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(EKEventStore *)self eventSources];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isPrimaryAppleAccount])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)saveSource:(id)a3 commit:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    *a5 = 0;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = [v8 eventStore];

  if (v10 != self)
  {
    if (a5)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
      *a5 = LOBYTE(v11) = 0;
      goto LABEL_13;
    }

LABEL_12:
    LOBYTE(v11) = 0;
    goto LABEL_13;
  }

  if (![v9 validate:a5] || !objc_msgSend(v9, "save:", a5))
  {
    goto LABEL_12;
  }

  [(EKEventStore *)self _addObjectToPendingCommits:v9];
  v11 = [(EKEventStore *)self save:a5];
  if (v11 && v6)
  {
    LOBYTE(v11) = [(EKEventStore *)self commitWithRollback:a5];
  }

LABEL_13:

  return v11;
}

- (BOOL)removeSource:(id)a3 commit:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    *a5 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v10 = [v8 eventStore];

  if (v10 != self)
  {
    if (a5)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
      *a5 = v11 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if (![v9 remove:a5])
  {
    goto LABEL_11;
  }

  [(EKEventStore *)self _addObjectToPendingCommits:v9];
  if (![(EKEventStore *)self save:a5])
  {
    goto LABEL_11;
  }

  [v9 markAsDeleted];
  v11 = !v6 || [(EKEventStore *)self commitWithRollback:a5];
LABEL_12:

  return v11;
}

- (void)_clearCachedSources
{
  sources = self->_sources;
  self->_sources = 0;
  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isSourceManaged:(id)a3
{
  v4 = a3;
  if (-[EKEventStore returnEventResults](self, "returnEventResults") && [v4 allowsEvents])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v5 = [v4 externalID];
    if (v5)
    {
      os_unfair_lock_lock(&isSourceManaged__cacheLock);
      v6 = [isSourceManaged__kIsManagedCache objectForKey:v5];
      if (!v6)
      {
        v7 = [(EKEventStore *)self connection];
        v8 = [v7 CADOperationProxySync];
        v9 = [v4 CADObjectID];
        v15 = MEMORY[0x1E69E9820];
        v16 = 3221225472;
        v17 = __32__EKEventStore_isSourceManaged___block_invoke;
        v18 = &unk_1E77FED00;
        v19 = v4;
        v20 = &v21;
        [v8 CADObjectIsManaged:v9 reply:&v15];

        if (!isSourceManaged__kIsManagedCache)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
          v11 = isSourceManaged__kIsManagedCache;
          isSourceManaged__kIsManagedCache = v10;
        }

        v6 = [MEMORY[0x1E696AD98] numberWithBool:{*(v22 + 24), v15, v16, v17, v18}];
        [isSourceManaged__kIsManagedCache setObject:v6 forKey:v5];
      }

      os_unfair_lock_unlock(&isSourceManaged__cacheLock);
      v12 = [v6 BOOLValue];
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(&v21, 8);
  }

  else if (-[EKEventStore returnReminderResults](self, "returnReminderResults") && [v4 allowsTasks])
  {
    v12 = [(EKReminderStore *)self->_reminderStore isSourceManaged:v4];
  }

  else
  {
    v13 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKEventStore *)v13 isSourceManaged:v4];
    }

    v12 = 0;
  }

  return v12;
}

void __32__EKEventStore_isSourceManaged___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __32__EKEventStore_isSourceManaged___block_invoke_cold_1(a1, v5, a2);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

- (id)dbStatsBySource
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  v2 = [(EKEventStore *)self connection];
  v3 = [v2 CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__EKEventStore_dbStatsBySource__block_invoke;
  v6[3] = &unk_1E7800918;
  v6[4] = &v7;
  [v3 CADDatabaseStatsBySource:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __31__EKEventStore_dbStatsBySource__block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __31__EKEventStore_dbStatsBySource__block_invoke_cold_1(v7);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (id)personaIdentifierForDatabaseID:(int)a3
{
  if (a3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__24;
    v12 = __Block_byref_object_dispose__24;
    v13 = 0;
    calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__EKEventStore_personaIdentifierForDatabaseID___block_invoke;
    block[3] = &unk_1E77FD508;
    block[4] = self;
    block[5] = &v8;
    v7 = a3;
    dispatch_sync(calendarSourcesAndDefaultsQueue, block);
    v4 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __47__EKEventStore_personaIdentifierForDatabaseID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = [*(a1 + 32) connection];
    v8 = [v7 CADOperationProxySync];
    v9 = *(a1 + 48);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __47__EKEventStore_personaIdentifierForDatabaseID___block_invoke_2;
    v19 = &unk_1E7800AD8;
    LODWORD(v21) = v9;
    v20 = *(a1 + 40);
    [v8 CADPersonaIdentifierForDatabaseID:MEMORY[0x1E69E9820] reply:{3221225472, __47__EKEventStore_personaIdentifierForDatabaseID___block_invoke_2, &unk_1E7800AD8, v20, v21}];

    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (v10)
    {
      v11 = *(*(a1 + 32) + 72);
      if (!v11)
      {
        v12 = objc_opt_new();
        v13 = *(a1 + 32);
        v14 = *(v13 + 72);
        *(v13 + 72) = v12;

        v10 = *(*(*(a1 + 40) + 8) + 40);
        v11 = *(*(a1 + 32) + 72);
      }

      v15 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
      [v11 setObject:v10 forKeyedSubscript:v15];
    }
  }
}

void __47__EKEventStore_personaIdentifierForDatabaseID___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __47__EKEventStore_personaIdentifierForDatabaseID___block_invoke_2_cold_1(a1, v7);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (void)_resetCachedPersonaIdentifiers
{
  dispatch_assert_queue_V2(self->_calendarSourcesAndDefaultsQueue);
  personaIDByDatabaseID = self->_personaIDByDatabaseID;
  self->_personaIDByDatabaseID = 0;
}

- (NSArray)calendars
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(EKEventStore *)self _allCalendars];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 allowedEntityTypes])
        {
          v10 = [v9 source];
          v11 = [v10 allowsEvents];

          if (v11)
          {
            [v3 addObject:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)hideCalendarsFromNotificationCenter:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count])
  {
    if (a4)
    {
      *a4 = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v7)
    {
      v8 = *v34;
LABEL_6:
      v9 = 0;
      while (1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        if (!v10)
        {
          break;
        }

        v11 = [*(*(&v33 + 1) + 8 * v9) eventStore];
        v12 = v11 == 0;

        if (v12)
        {
          goto LABEL_22;
        }

        v13 = [v10 eventStore];
        v14 = v13 == self;

        if (!v14)
        {
          if (a4)
          {
            [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
            *a4 = LOBYTE(v10) = 0;
            break;
          }

LABEL_22:
          LOBYTE(v10) = 0;
          break;
        }

        v29 = 0;
        v30 = &v29;
        v31 = 0x2020000000;
        v32 = 0;
        v23 = 0;
        v24 = &v23;
        v25 = 0x3032000000;
        v26 = __Block_byref_object_copy__24;
        v27 = __Block_byref_object_dispose__24;
        v28 = 0;
        v15 = [(EKEventStore *)self connection];
        v16 = [v15 CADOperationProxySync];
        v17 = [v10 CADObjectID];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __58__EKEventStore_hideCalendarsFromNotificationCenter_error___block_invoke;
        v22[3] = &unk_1E7800B00;
        v22[4] = v10;
        v22[5] = &v23;
        v22[6] = &v29;
        [v16 CADCalendarSetClearedFromNotificationCenter:v17 error:v22];

        if (a4)
        {
          *a4 = v24[5];
        }

        v18 = *(v30 + 24) == 0;
        _Block_object_dispose(&v23, 8);

        _Block_object_dispose(&v29, 8);
        if (v18)
        {
          goto LABEL_22;
        }

        if (v7 == ++v9)
        {
          v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
          LOBYTE(v10) = 1;
          if (v7)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

void __58__EKEventStore_hideCalendarsFromNotificationCenter_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __58__EKEventStore_hideCalendarsFromNotificationCenter_error___block_invoke_cold_1(a1, v4, a2);
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (NSArray)calendarsForEntityType:(EKEntityType)entityType
{
  v24 = *MEMORY[0x1E69E9840];
  if (entityType >= 2)
  {
    [EKEventStore calendarsForEntityType:];
  }

  v5 = [(EKEventStore *)self _allCalendars];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (entityType == EKEntityTypeReminder)
        {
          if (([*(*(&v19 + 1) + 8 * i) allowedEntityTypes] & 2) != 0)
          {
            v15 = [v12 source];
            v16 = [v15 allowsTasks];

            if (v16)
            {
LABEL_15:
              [v6 addObject:{v12, v19}];
              continue;
            }
          }
        }

        else if (entityType == EKEntityTypeEvent && ([*(*(&v19 + 1) + 8 * i) allowedEntityTypes] & 1) != 0)
        {
          v13 = [v12 source];
          v14 = [v13 allowsEvents];

          if (v14)
          {
            goto LABEL_15;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)calendarsForEntityType:(unint64_t)a3 inSource:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (a3 >= 2)
  {
    [EKEventStore calendarsForEntityType:inSource:];
  }

  else if (!a3)
  {
    if ([v6 allowsEvents])
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      if (![(EKEventStore *)self returnEventResults])
      {
        goto LABEL_21;
      }

      v17 = [v7 backingObject];
      calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48__EKEventStore_calendarsForEntityType_inSource___block_invoke;
      block[3] = &unk_1E77FD7C8;
      block[4] = self;
      v26 = v17;
      v8 = v8;
      v27 = v8;
      v9 = v17;
      dispatch_sync(calendarSourcesAndDefaultsQueue, block);

      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (([v7 allowsTasks] & 1) == 0)
  {
LABEL_20:
    v8 = [MEMORY[0x1E695DFD8] set];
    goto LABEL_21;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (a3 == 1 && [(EKEventStore *)self returnReminderResults])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [(EKReminderStore *)self->_reminderStore calendars];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 source];
          v16 = [v15 isEqual:v7];

          if (v16)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v11);
    }

LABEL_19:
  }

LABEL_21:

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

void __48__EKEventStore_calendarsForEntityType_inSource___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _loadCalendarsIfNeeded];
  v2 = [*(*(a1 + 32) + 56) allValues];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = *MEMORY[0x1E6992870];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 valueForKey:v6];
        if ([v9 isEqual:*(a1 + 40)])
        {
          v10 = [(EKObject *)[EKCalendar alloc] initWithPersistentObject:v8];
          if (([(EKCalendar *)v10 allowedEntityTypes]& 1) != 0)
          {
            [*(a1 + 48) addObject:v10];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_cacheCalendarWithCADObjectID:(id)a3 withDefaultLoadedPropertyValues:(id)a4 forKeys:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  calendars = self->_calendars;
  if (calendars)
  {
    v12 = [(NSMutableDictionary *)calendars objectForKey:v8];
    v13 = v12;
    if (v9 || !v12)
    {
      v14 = [EKObjectID objectIDWithCADObjectID:v8];
      v15 = [(EKEventStore *)self registerFetchedObjectWithID:v14 withDefaultLoadedPropertyKeys:v10 values:v9];

      v16 = [(EKObject *)[EKCalendar alloc] initWithPersistentObject:v15];
      v17 = v16;
      if (!v13 && ![(EKCalendar *)v16 isHidden])
      {
        [(NSMutableDictionary *)self->_calendars setObject:v15 forKey:v8];
        v18 = [(EKCalendar *)v17 calendarIdentifier];
        if (v18)
        {
          [(NSMutableDictionary *)self->_calendarsByIdentifier setObject:v15 forKey:v18];
        }

        else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          [EKEventStore _cacheCalendarWithCADObjectID:withDefaultLoadedPropertyValues:forKeys:];
        }
      }
    }
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore _cacheCalendarWithCADObjectID:withDefaultLoadedPropertyValues:forKeys:];
  }
}

void __38__EKEventStore__loadCalendarsIfNeeded__block_invoke_314(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [a2 stampedCopyWithGeneration:*(a1 + 56)];
  v5 = *(a1 + 32);
  v6 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:a3];
  [v5 _cacheCalendarWithCADObjectID:v7 withDefaultLoadedPropertyValues:v6 forKeys:*(a1 + 40)];
}

- (id)_deletableCalendars
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = objc_opt_new();
  calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__EKEventStore__deletableCalendars__block_invoke;
  v6[3] = &unk_1E77FD440;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(calendarSourcesAndDefaultsQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__EKEventStore__deletableCalendars__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__24;
  v21 = __Block_byref_object_dispose__24;
  v22 = 0;
  v2 = [*(a1 + 32) connection];
  v3 = [v2 CADOperationProxySync];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35__EKEventStore__deletableCalendars__block_invoke_2;
  v16[3] = &unk_1E7800918;
  v16[4] = &v17;
  [v3 CADDatabaseGetDeletableCalendars:v16];

  v4 = v18[5];
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v23 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [EKObjectID objectIDWithCADObjectID:*(*(&v12 + 1) + 8 * v8), v12];
          v10 = [*(a1 + 32) calendarWithID:v9];
          if (v10)
          {
            [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v12 objects:v23 count:16];
      }

      while (v6);
    }
  }

  _Block_object_dispose(&v17, 8);

  v11 = *MEMORY[0x1E69E9840];
}

void __35__EKEventStore__deletableCalendars__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __35__EKEventStore__deletableCalendars__block_invoke_2_cold_1(v7);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (BOOL)_calendar:(id)a3 supportsEntityType:(unint64_t)a4
{
  v5 = a3;
  if (a4 >= 2)
  {
    [EKEventStore _calendar:supportsEntityType:];
  }

  if (([v5 allowedEntityTypes] & (1 << a4)) != 0)
  {
    if (a4 == 1)
    {
      v6 = [v5 source];
      v7 = [v6 allowsTasks];
      goto LABEL_9;
    }

    if (!a4)
    {
      v6 = [v5 source];
      v7 = [v6 allowsEvents];
LABEL_9:
      v8 = v7;

      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (int)readWriteCalendarCountForEntityType:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(EKEventStore *)self _allCalendars];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(EKEventStore *)self _calendar:v11 supportsEntityType:a3])
        {
          v8 += [v11 allowsContentModifications];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)readWriteCalendarsForEntityType:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(EKEventStore *)self _allCalendars];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (-[EKEventStore _calendar:supportsEntityType:](self, "_calendar:supportsEntityType:", v11, a3) && [v11 allowsContentModifications])
        {
          if (!v8)
          {
            v8 = [MEMORY[0x1E695DF70] array];
          }

          [v8 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)calendarWithID:(id)a3
{
  v3 = [(EKEventStore *)self objectWithObjectID:a3];
  if (v3)
  {
    v4 = [(EKObject *)[EKCalendar alloc] initWithPersistentObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)calendarWithCADID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 restoreGeneration] == -1 || (v6 = objc_msgSend(v5, "restoreGeneration"), -[EKEventStore database](self, "database"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "databaseRestoreGeneration"), v7, v6 == v8)))
  {
    v9 = [EKObjectID objectIDWithCADObjectID:v5];
    v10 = [(EKEventStore *)self calendarWithID:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_addRemovedObjectToPendingCommits:(id)a3
{
  v6 = a3;
  v4 = [v6 persistentObject];
  v5 = [v4 isNew];

  if ((v5 & 1) == 0)
  {
    [(EKEventStore *)self _addObjectToPendingCommits:v6];
  }
}

- (void)_addObjectToPendingCommits:(id)a3
{
  v4 = a3;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__EKEventStore__addObjectToPendingCommits___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(unsavedChangesQueue, v7);
}

uint64_t __43__EKEventStore__addObjectToPendingCommits___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 112))
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = v3;

    v2 = *(a1 + 32);
  }

  if (!*(v2 + 336))
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v7 = *(a1 + 32);
    v8 = *(v7 + 336);
    *(v7 + 336) = v6;

    v2 = *(a1 + 32);
  }

  [*(v2 + 112) addObject:*(a1 + 40)];
  v9 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 336);

  return [v10 addObject:v9];
}

- (BOOL)_saveCalendar:(id)a3 commit:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  if ([(EKEventStore *)self shouldSaveCalendarAsEventCalendar:v8]&& ![(EKEventStore *)self _saveCalendar:v8 error:a5])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    if ([(EKEventStore *)self shouldSaveCalendarAsReminderCalendar:v8])
    {
      v9 = [(EKReminderStore *)self->_reminderStore saveCalendar:v8 error:a5];
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      LOBYTE(v9) = 1;
    }

    if (v6)
    {
      LOBYTE(v9) = [(EKEventStore *)self commitWithRollbackForNewClients:a5];
    }
  }

LABEL_10:

  return v9;
}

- (BOOL)_saveCalendar:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!a4)
  {
    if (![(EKEventStore *)self canModifyCalendarDatabase])
    {
      goto LABEL_14;
    }

LABEL_5:
    if (-[EKEventStore eventAccessLevel](self, "eventAccessLevel") == 1 && [v6 isNew])
    {
      if (a4)
      {
        v7 = MEMORY[0x1E696ABC0];
        v8 = 17;
        goto LABEL_13;
      }

LABEL_14:
      LOBYTE(v10) = 0;
      goto LABEL_15;
    }

    if (!v6)
    {
      goto LABEL_14;
    }

    v9 = [v6 eventStore];

    if (v9 != self)
    {
      if (a4)
      {
        v7 = MEMORY[0x1E696ABC0];
        v8 = 11;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v12 = [v6 source];
    if ([v6 allowEvents] && objc_msgSend(v12, "isPrimaryLocalSource") && (objc_msgSend(v12, "isEnabledForEvents") & 1) == 0 && -[EKEventStore clientCanModifySources](self, "clientCanModifySources"))
    {
      [v12 setAllowsEvents:1];
      v18 = 0;
      v13 = [(EKEventStore *)self saveSource:v12 commit:0 error:&v18];
      v10 = v18;
      if (!v13)
      {
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          [EKEventStore _saveCalendar:error:];
          if (!a4)
          {
            goto LABEL_29;
          }
        }

        else if (!a4)
        {
          goto LABEL_29;
        }

        v17 = v10;
        *a4 = v10;
        goto LABEL_29;
      }

      v14 = [v6 constraints];
      [v14 setAllowsEvents:1];

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    if ([v6 validate:a4] && objc_msgSend(v6, "save:", a4))
    {
      [(EKEventStore *)self _addObjectToPendingCommits:v6];
      LODWORD(v10) = [(EKEventStore *)self save:a4];
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if ((v15 | v10))
    {
      goto LABEL_30;
    }

    v16 = [MEMORY[0x1E695DFD8] setWithObject:v12];
    [(EKEventStore *)self rollbackObjectsWithIdentifiers:v16];

    v10 = [v12 CADObjectID];
    [(EKEventStore *)self _clearCachedConstraintsForObjectWithCADObjectID:v10];
LABEL_29:

    LOBYTE(v10) = 0;
LABEL_30:

    goto LABEL_15;
  }

  *a4 = 0;
  if ([(EKEventStore *)self canModifyCalendarDatabase])
  {
    goto LABEL_5;
  }

  v7 = MEMORY[0x1E696ABC0];
  v8 = 30;
LABEL_13:
  [v7 errorWithEKErrorCode:v8];
  *a4 = LOBYTE(v10) = 0;
LABEL_15:

  return v10;
}

- (BOOL)_removeCalendar:(id)a3 commit:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  if (![(EKEventStore *)self shouldSaveCalendarAsEventCalendar:v8]|| (LOBYTE(v9) = 0, [(EKEventStore *)self _removeEventCalendar:v8 commit:0 error:a5]))
  {
    if ([(EKEventStore *)self shouldSaveCalendarAsReminderCalendar:v8])
    {
      v9 = [(EKReminderStore *)self->_reminderStore removeCalendar:v8 error:a5];
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      LOBYTE(v9) = 1;
    }

    if (v6)
    {
      LOBYTE(v9) = [(EKEventStore *)self commitWithRollbackForNewClients:a5];
    }
  }

LABEL_9:

  return v9;
}

- (BOOL)_removeEventCalendar:(id)a3 commit:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  if (a5)
  {
    *a5 = 0;
    if (![(EKEventStore *)self canModifyCalendarDatabase])
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = 30;
LABEL_11:
      [v12 errorWithEKErrorCode:v13];
      *a5 = v10 = 0;
      goto LABEL_17;
    }

    if (!v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = [(EKEventStore *)self canModifyCalendarDatabase];
    v10 = 0;
    if (!v8 || !v9)
    {
      goto LABEL_17;
    }
  }

  v11 = [v8 eventStore];

  if (v11 != self)
  {
    if (!a5)
    {
LABEL_16:
      v10 = 0;
      goto LABEL_17;
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = 11;
    goto LABEL_11;
  }

  if (![v8 remove:a5])
  {
    goto LABEL_16;
  }

  [(EKEventStore *)self _addRemovedObjectToPendingCommits:v8];
  if (![(EKEventStore *)self save:a5])
  {
    goto LABEL_16;
  }

  [v8 markAsDeleted];
  v10 = !v6 || [(EKEventStore *)self commitWithRollbackForNewClients:a5];
LABEL_17:

  return v10;
}

- (BOOL)deleteCalendar:(id)a3 forEntityType:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (a5)
  {
    *a5 = 0;
    if (![(EKEventStore *)self canModifyCalendarDatabase])
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = 30;
LABEL_11:
      [v12 errorWithEKErrorCode:v13];
      *a5 = v10 = 0;
      goto LABEL_17;
    }

    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = [(EKEventStore *)self canModifyCalendarDatabase];
    v10 = 0;
    if (!v8 || !v9)
    {
      goto LABEL_17;
    }
  }

  v11 = [v8 eventStore];

  if (v11 != self)
  {
    if (!a5)
    {
LABEL_12:
      v10 = 0;
      goto LABEL_17;
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = 11;
    goto LABEL_11;
  }

  v14 = [v8 allowedEntityTypes] & ~a4;
  if (v14)
  {
    [v8 setAllowedEntityTypes:v14];
    v15 = [(EKEventStore *)self saveCalendar:v8 commit:1 error:a5];
  }

  else
  {
    v15 = [(EKEventStore *)self removeCalendar:v8 commit:1 error:a5];
  }

  v10 = v15;
LABEL_17:

  return v10;
}

- (BOOL)eventsExistOnCalendar:(id)a3
{
  v4 = [(EKEventStore *)self predicateForCalendarItemsOfType:1 inCalendar:a3];
  v5 = [(EKEventStore *)self eventsMatchingPredicate:v4];
  v6 = [v5 count] != 0;

  return v6;
}

- (BOOL)futureScheduledEventsExistOnCalendar:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [(EKEventStore *)self predicateForEventsWithAttendeesInCalendar:a3];
  v23 = self;
  v5 = [(EKEventStore *)self eventsMatchingPredicate:v4];
  v6 = [MEMORY[0x1E695DF00] now];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v7)
  {
    v18 = 0;
    goto LABEL_19;
  }

  v8 = v7;
  v21 = v4;
  v9 = *v25;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v24 + 1) + 8 * i);
      v12 = [v11 endDateUnadjustedForLegacyClients];
      if ([v6 compare:v12] == -1)
      {
      }

      else
      {
        v13 = [MEMORY[0x1E695DEC8] arrayWithObject:v11];
        v14 = [(EKEventStore *)v23 doEvents:v13 haveOccurrencesAfterDate:v6];
        v15 = [v14 firstObject];
        v16 = [v15 integerValue];

        if (v16 != 1)
        {
          continue;
        }
      }

      v17 = [v11 selfAttendee];
      if (v17)
      {

LABEL_17:
        v18 = 1;
        goto LABEL_18;
      }

      if ([v11 isSelfOrganized])
      {
        goto LABEL_17;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  v18 = 0;
LABEL_18:
  v4 = v21;
LABEL_19:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)eventsMarkedScheduleAgentClientExistOnCalendar:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [(EKEventStore *)self predicateForScheduleAgentClientEventsInCalendar:a3];
  v5 = [(EKEventStore *)self eventsMatchingPredicate:v4];
  v6 = [MEMORY[0x1E695DF00] now];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v20 = v4;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if (([v12 suppressNotificationForChanges] & 1) == 0)
        {
          v13 = [MEMORY[0x1E695DEC8] arrayWithObject:v12];
          v14 = [(EKEventStore *)self doEvents:v13 haveOccurrencesAfterDate:v6];
          v15 = [v14 firstObject];
          v16 = [v15 integerValue];

          if (v16 == 1)
          {
            v17 = 1;
            goto LABEL_12;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v17 = 0;
LABEL_12:
    v4 = v20;
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)eventsWithIdentifiers:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(EKEventStore *)self eventWithIdentifier:*(*(&v15 + 1) + 8 * i), v15];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)eventWithAppEntityIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [EKRecurrenceIdentifier recurrenceIdentifierWithString:v4];
  v6 = [(EKEventStore *)self eventWithRecurrenceIdentifier:v5 isAppEntityID:1];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 appEntityIdentifier];
    if (([v8 isEqualToString:v4] & 1) == 0)
    {
      v9 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543618;
        v13 = v8;
        v14 = 2114;
        v15 = v4;
        _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_DEFAULT, "Found event that should have had the identifier %{public}@ using the identifier %{public}@ instead. Pretending that these are the same thing.", &v12, 0x16u);
      }

      [v7 setAppEntityIdentifierOverride:v4];
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)eventWithRecurrenceIdentifier:(id)a3 isAppEntityID:(BOOL)a4
{
  v4 = a4;
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 localUID];
  v8 = [(EKEventStore *)self calendarItemWithIdentifier:v7];
  if (!v8)
  {
    v12 = 0;
    goto LABEL_27;
  }

  v9 = [v6 recurrenceDate];
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = [v8 startTimeZone];
  v11 = +[EKEvent uniqueIDForDetachedOccurrenceOfEvent:withOriginalStartDate:timeZone:allDay:](EKEvent, "uniqueIDForDetachedOccurrenceOfEvent:withOriginalStartDate:timeZone:allDay:", v8, v9, v10, [v8 isAllDay]);

  v12 = [(EKEventStore *)self eventWithUniqueId:v11];

  if (!v12)
  {
    if ([v8 hasRecurrenceRules])
    {
      v13 = [v8 exceptionDates];
      v14 = [v13 containsObject:v9];

      if (v14)
      {
        v12 = 0;
        goto LABEL_26;
      }

      v15 = [v8 timeZone];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
      }

      v18 = v17;

      v56 = v18;
      v58 = [MEMORY[0x1E69930C8] calendarDateWithDate:v9 timeZone:v18];
      v57 = objc_alloc_init(EKRecurrenceGenerator);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v19 = [v8 recurrenceRules];
      v20 = [v19 countByEnumeratingWithState:&v65 objects:v71 count:16];
      if (v20)
      {
        v21 = v20;
        v59 = v9;
        v22 = v6;
        v23 = *v66;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v66 != v23)
            {
              objc_enumerationMutation(v19);
            }

            v25 = [(EKRecurrenceGenerator *)v57 occurrenceDate:v58 matchesRecurrenceRule:*(*(&v65 + 1) + 8 * i) forEvent:v8 includeDetachedEventsInSeries:0];
            if (v25)
            {

              v6 = v22;
              v9 = v59;
              goto LABEL_22;
            }
          }

          v26 = v25;
          v21 = [v19 countByEnumeratingWithState:&v65 objects:v71 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }

        v6 = v22;
        v9 = v59;
        if (v26 || !v4)
        {
          goto LABEL_43;
        }
      }

      else
      {

        if (!v4)
        {
          goto LABEL_43;
        }
      }

      if ([v8 isFloating])
      {
        v55 = v6;
        v34 = [v9 dateByAddingTimeInterval:-100800.0];
        v60 = v9;
        v35 = [v9 dateByAddingTimeInterval:100800.0];
        v36 = [v8 calendar];
        v70 = v36;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
        v53 = v35;
        v54 = v34;
        v38 = [(EKEventStore *)self predicateForEventsWithStartDate:v34 endDate:v35 calendars:v37];

        v52 = v38;
        v39 = [(EKEventStore *)self eventsMatchingPredicate:v38];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v40 = [v39 countByEnumeratingWithState:&v61 objects:v69 count:16];
        if (v40)
        {
          v41 = v40;
          v12 = 0;
          v42 = *v62;
          v43 = 1.79769313e308;
          do
          {
            for (j = 0; j != v41; ++j)
            {
              if (*v62 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v45 = *(*(&v61 + 1) + 8 * j);
              v46 = [v45 localUID];
              v47 = [v46 isEqualToString:v7];

              if (v47)
              {
                v48 = [v45 startDate];
                [v48 timeIntervalSinceDate:v60];
                v50 = fabs(v49);

                if (v50 < v43)
                {
                  v51 = v45;

                  v12 = v51;
                  v43 = v50;
                }
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v61 objects:v69 count:16];
          }

          while (v41);
        }

        else
        {
          v12 = 0;
        }

        v6 = v55;
        v31 = v56;
        v9 = v60;
        goto LABEL_25;
      }

LABEL_43:

      v12 = 0;
      v31 = v56;
LABEL_25:

      goto LABEL_26;
    }

LABEL_22:
    v27 = [v8 timeZone];

    if (!v27)
    {
      v28 = [(EKEventStore *)self timeZone];
      v29 = [v9 dateInTimeZone:v28 fromTimeZone:0];

      v9 = v29;
    }

    v30 = [EKEvent alloc];
    v31 = [v8 persistentObject];
    v12 = [(EKEvent *)v30 initWithPersistentObject:v31 occurrenceDate:v9];
    goto LABEL_25;
  }

LABEL_26:

LABEL_27:
  v32 = *MEMORY[0x1E69E9840];

  return v12;
}

- (EKEvent)eventWithIdentifier:(NSString *)identifier
{
  v4 = identifier;
  if (v4)
  {
    [(EKEventStore *)self _implicitUpgradeToFullAccessIfNeededWithReason:6];
    [(NSString *)v4 rangeOfString:*MEMORY[0x1E6993180]];
    if (v5)
    {
      v6 = [(EKEventStore *)self _eventWithEventIdentifier:v4];
    }

    else
    {
      v8 = [EKRecurrenceIdentifier recurrenceIdentifierWithString:v4];
      v6 = [(EKEventStore *)self eventWithRecurrenceIdentifier:v8];
    }

    v7 = [(EKEventStore *)self _apiExpectedEventForEvent:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)validatedNonDeletedPersistentObjectWithObjectID:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_17;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(EKEventStore *)self objectsPendingCommit];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v27 + 1) + 8 * v9);
      v11 = [v10 objectID];
      v12 = [v11 isEqual:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v7)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v13 = [v10 persistentObject];

    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_10:
  }

  v14 = [(EKEventStore *)self registerFetchedObjectWithID:v4];
  if (v14)
  {
    v13 = v14;
LABEL_14:
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    unsavedChangesQueue = self->_unsavedChangesQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__EKEventStore_validatedNonDeletedPersistentObjectWithObjectID___block_invoke;
    block[3] = &unk_1E77FD688;
    v22 = &v23;
    block[4] = self;
    v16 = v13;
    v21 = v16;
    dispatch_sync(unsavedChangesQueue, block);
    v17 = 0;
    if ((v24[3] & 1) == 0)
    {
      v17 = v16;
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
LABEL_17:
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

uint64_t __64__EKEventStore_validatedNonDeletedPersistentObjectWithObjectID___block_invoke(void *a1)
{
  result = [*(a1[4] + 312) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)validatedNonDeletedPublicObjectWithObjectID:(id)a3
{
  if (a3)
  {
    v4 = [(EKEventStore *)self validatedNonDeletedPersistentObjectWithObjectID:?];
    if (v4)
    {
      v5 = [(EKEventStore *)self publicObjectWithPersistentObject:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_eventWithEventIdentifier:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__24;
    v34 = __Block_byref_object_dispose__24;
    v35 = 0;
    if ([(EKEventStore *)self eventAccessLevel]== 2)
    {
      [(EKEventStore *)self objectsPendingCommit];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v5 = v27 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v26 objects:v36 count:16];
      if (v6)
      {
        v7 = *v27;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v27 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v26 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = [v9 eventIdentifier];
              v11 = [v4 isEqual:v10];

              if (v11)
              {
                v13 = [v9 objectID];
                v14 = v31[5];
                v31[5] = v13;

                goto LABEL_15;
              }
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v26 objects:v36 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    v15 = v31[5];
    if (!v15)
    {
      v16 = [(EKEventStore *)self connection];
      v17 = [v16 CADOperationProxySync];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __42__EKEventStore__eventWithEventIdentifier___block_invoke;
      v23 = &unk_1E7800B28;
      v24 = v4;
      v25 = &v30;
      [v17 CADDatabaseGetEventWithEventIdentifier:v24 reply:&v20];

      v15 = v31[5];
    }

    v12 = [(EKEventStore *)self validatedNonDeletedPublicObjectWithObjectID:v15, v20, v21, v22, v23];
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v12 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

void __42__EKEventStore__eventWithEventIdentifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __42__EKEventStore__eventWithEventIdentifier___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v6 = [EKObjectID objectIDWithCADObjectID:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (BOOL)_parseURI:(id)a3 expectedScheme:(id)a4 identifier:(id *)a5 options:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 scheme];
  if ([v11 isEqualToString:v10])
  {
    v12 = [v9 absoluteString];
    v13 = [v12 substringFromIndex:{objc_msgSend(v11, "length") + 3}];

    v14 = [v13 componentsSeparatedByString:@"?"];
    if (![v14 count])
    {
      v39 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v52 = a6;
    v15 = [v14 objectAtIndex:0];

    v16 = [v15 pathComponents];
    if ([v11 isEqualToString:@"x-apple-calevent"])
    {
      if ([v16 count] == 2)
      {
        v17 = MEMORY[0x1E696AEC0];
        v18 = [v16 objectAtIndex:0];
        [v18 stringByRemovingPercentEncoding];
        v47 = v15;
        v19 = v49 = v16;
        v20 = [v16 objectAtIndex:1];
        v21 = [v20 stringByRemovingPercentEncoding];
        v22 = [v17 stringWithFormat:@"%@:%@", v19, v21];

        v15 = v47;
        v23 = v22;
        if (v22)
        {
LABEL_6:
          if (a5)
          {
            v23 = v23;
            *a5 = v23;
          }

          v16 = v49;
          if (v52)
          {
            v46 = v23;
            *v52 = 0;
            v24 = [v9 query];
            v25 = v24;
            if (v24)
            {
              v48 = v15;
              v45 = v14;
              v26 = [v24 componentsSeparatedByString:@"&"];
              v51 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
              if ([v26 count])
              {
                v27 = 0;
                v28 = @"=";
                v50 = v25;
                do
                {
                  v29 = [v25 componentsSeparatedByString:v28];
                  if ([v29 count] == 2)
                  {
                    v30 = [v29 objectAtIndex:0];
                    [v29 objectAtIndex:1];
                    v31 = v11;
                    v32 = v9;
                    v33 = v10;
                    v34 = v26;
                    v36 = v35 = v28;
                    v37 = [v36 stringByRemovingPercentEncoding];

                    v28 = v35;
                    v26 = v34;
                    v10 = v33;
                    v9 = v32;
                    v11 = v31;
                    [v51 setObject:v37 forKey:v30];

                    v25 = v50;
                  }

                  ++v27;
                }

                while (v27 < [v26 count]);
              }

              v38 = v51;
              *v52 = v38;

              v14 = v45;
              v15 = v48;
              v16 = v49;
            }

            v39 = 1;
            v23 = v46;
          }

          else
          {
            v39 = 1;
          }

          goto LABEL_29;
        }

        goto LABEL_23;
      }

LABEL_28:
      v23 = 0;
      v39 = 0;
      goto LABEL_29;
    }

    if ([v11 isEqualToString:@"x-apple-calendar"])
    {
      if ([v16 count] != 1)
      {
        goto LABEL_28;
      }

      v49 = v16;
      v40 = v16;
      v41 = 0;
    }

    else
    {
      if (![v11 isEqualToString:@"x-apple-reminderkit"])
      {
        goto LABEL_28;
      }

      if ([v16 count] != 2)
      {
        goto LABEL_28;
      }

      v42 = [v16 firstObject];
      v43 = [v42 isEqualToString:@"REMCDReminder"];

      if (!v43)
      {
        goto LABEL_28;
      }

      v49 = v16;
      v40 = v16;
      v41 = 1;
    }

    v23 = [v40 objectAtIndex:v41];
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_23:
    v39 = 0;
    v16 = v49;
LABEL_29:

    v13 = v15;
    goto LABEL_30;
  }

  v39 = 0;
LABEL_31:

  return v39;
}

- (id)_eventWithURI:(id)a3 checkValid:(BOOL)a4
{
  v6 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__24;
  v34 = __Block_byref_object_dispose__24;
  v35 = 0;
  if (!v6)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"EKEventStore.m" lineNumber:3500 description:@"Nil URI passed"];
  }

  v28 = 0;
  v29 = 0;
  v7 = [(EKEventStore *)self _parseURI:v6 expectedScheme:@"x-apple-calevent" identifier:&v29 options:&v28];
  v8 = v29;
  v9 = v28;
  v10 = v9;
  if (v7)
  {
    if (v9)
    {
      v11 = [v9 objectForKey:@"o"];
      v12 = v11;
      if (v11)
      {
        v13 = MEMORY[0x1E695DF00];
        [v11 doubleValue];
        v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = [(EKEventStore *)self connection];
    v17 = [v16 CADOperationProxySync];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __41__EKEventStore__eventWithURI_checkValid___block_invoke;
    v25 = &unk_1E7800B28;
    v26 = v6;
    v27 = &v30;
    [v17 CADDatabaseGetEventWithEventIdentifier:v8 reply:&v22];

    if (v31[5])
    {
      v18 = [(EKEventStore *)self registerFetchedObjectWithID:v22, v23, v24, v25];
      if (v18)
      {
        v19 = [[EKEvent alloc] initWithPersistentObject:v18 occurrenceDate:v14];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v15 = v19;
  }

  else
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore _eventWithURI:checkValid:];
    }

    v15 = 0;
  }

  _Block_object_dispose(&v30, 8);

  return v15;
}

void __41__EKEventStore__eventWithURI_checkValid___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __41__EKEventStore__eventWithURI_checkValid___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v6 = [EKObjectID objectIDWithCADObjectID:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)_eventOccurrenceWithURI:(id)a3
{
  v4 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__24;
  v32 = __Block_byref_object_dispose__24;
  v33 = 0;
  v26 = 0;
  v27 = 0;
  v5 = [(EKEventStore *)self _parseURI:v4 expectedScheme:@"x-apple-calevent" identifier:&v27 options:&v26];
  v6 = v27;
  v7 = v26;
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v9 = [v7 objectForKey:@"o"];
    v10 = v9;
    if (!v9)
    {
      goto LABEL_11;
    }

    v11 = MEMORY[0x1E695DF00];
    [v9 doubleValue];
    v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];

    if (v12)
    {
      v13 = [(EKEventStore *)self connection];
      v14 = [v13 CADOperationProxySync];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __40__EKEventStore__eventOccurrenceWithURI___block_invoke;
      v23 = &unk_1E7800B28;
      v24 = v4;
      v25 = &v28;
      [v14 CADDatabaseGetEventWithEventIdentifier:v6 reply:&v20];

      if (v29[5])
      {
        [v12 timeIntervalSinceReferenceDate];
        v15 = [(EKEventStore *)self closestCachedOccurrenceToDate:v29[5] forEventObjectID:?];
        v16 = [v15 startDate];
        v17 = [v16 isEqualToDate:v12];

        if (v17)
        {
          v18 = v15;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
LABEL_11:
      v18 = [(EKEventStore *)self _eventWithURI:v4 checkValid:1];
    }
  }

  else
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore _eventWithURI:checkValid:];
    }

    v18 = 0;
  }

  _Block_object_dispose(&v28, 8);

  return v18;
}

void __40__EKEventStore__eventOccurrenceWithURI___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __41__EKEventStore__eventWithURI_checkValid___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v6 = [EKObjectID objectIDWithCADObjectID:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)eventForUID:(id)a3 occurrenceDate:(id)a4 checkValid:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v15 = 0;
    goto LABEL_12;
  }

  if (v5)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v10 = [objc_alloc(MEMORY[0x1E6992DE0]) initWithEntityType:2 entityID:{objc_msgSend(v8, "intValue")}];
    v11 = [(EKEventStore *)self connection];
    v12 = [v11 CADOperationProxySync];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __54__EKEventStore_eventForUID_occurrenceDate_checkValid___block_invoke;
    v20[3] = &unk_1E77FFEA0;
    v20[4] = &v21;
    [v12 CADObjectExists:v10 reply:v20];

    if (*(v22 + 24) == 1)
    {
      v13 = [EKObjectID objectIDWithCADObjectID:v10];
      v14 = [(EKEventStore *)self registerFetchedObjectWithID:v13];
    }

    else
    {
      v14 = 0;
    }

    _Block_object_dispose(&v21, 8);
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v16 = [v8 intValue];
    v17 = [EKObjectID objectIDWithEntityType:2 rowID:v16 databaseID:*MEMORY[0x1E6992E18]];
    v14 = [(EKEventStore *)self registerFetchedObjectWithID:v17];

    if (!v14)
    {
LABEL_10:
      v18 = 0;
      goto LABEL_11;
    }
  }

  v18 = [[EKEvent alloc] initWithPersistentObject:v14 occurrenceDate:v9];
LABEL_11:
  v15 = v18;

LABEL_12:

  return v15;
}

void __54__EKEventStore_eventForUID_occurrenceDate_checkValid___block_invoke(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __54__EKEventStore_eventForUID_occurrenceDate_checkValid___block_invoke_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

- (id)eventForObjectID:(id)a3 occurrenceDate:(id)a4 checkValid:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v8 && [v8 entityType] == 2)
  {
    if (v5)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v10 = [(EKEventStore *)self database];
      v11 = [v8 CADObjectIDWithGeneration:{objc_msgSend(v10, "databaseRestoreGeneration")}];

      v12 = [(EKEventStore *)self connection];
      v13 = [v12 CADOperationProxySync];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __59__EKEventStore_eventForObjectID_occurrenceDate_checkValid___block_invoke;
      v18[3] = &unk_1E77FFEA0;
      v18[4] = &v19;
      [v13 CADObjectExists:v11 reply:v18];

      if (*(v20 + 24) == 1)
      {
        v14 = [(EKEventStore *)self registerFetchedObjectWithID:v8];
      }

      else
      {
        v14 = 0;
      }

      _Block_object_dispose(&v19, 8);
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = [(EKEventStore *)self registerFetchedObjectWithID:v8];
      if (!v14)
      {
LABEL_13:
        v16 = 0;
        goto LABEL_14;
      }
    }

    v16 = [[EKEvent alloc] initWithPersistentObject:v14 occurrenceDate:v9];
LABEL_14:
    v15 = v16;

    goto LABEL_15;
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore eventForObjectID:occurrenceDate:checkValid:];
  }

  v15 = 0;
LABEL_15:

  return v15;
}

void __59__EKEventStore_eventForObjectID_occurrenceDate_checkValid___block_invoke(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __59__EKEventStore_eventForObjectID_occurrenceDate_checkValid___block_invoke_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

- (id)eventWithUniqueId:(id)a3 occurrenceDate:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__24;
  v35 = __Block_byref_object_dispose__24;
  v36 = 0;
  if (v6)
  {
    [(EKEventStore *)self objectsPendingCommit];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v7 = v28 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v8)
    {
      v9 = *v28;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 uniqueIdentifier];
            v13 = [v6 isEqual:v12];

            if (v13)
            {
              v15 = [v11 objectID];
              v16 = v32[5];
              v32[5] = v15;

              goto LABEL_14;
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v17 = v32[5];
    if (!v17)
    {
      v18 = [(EKEventStore *)self connection];
      v19 = [v18 CADOperationProxySync];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __49__EKEventStore_eventWithUniqueId_occurrenceDate___block_invoke;
      v24[3] = &unk_1E7800B28;
      v25 = v6;
      v26 = &v31;
      [v19 CADDatabaseGetEventWithUniqueID:v25 reply:v24];

      v17 = v32[5];
    }

    v20 = [(EKEventStore *)self validatedNonDeletedPersistentObjectWithObjectID:v17];
    if (v20)
    {
      v14 = [[EKEvent alloc] initWithPersistentObject:v20 occurrenceDate:v23];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v31, 8);

  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

void __49__EKEventStore_eventWithUniqueId_occurrenceDate___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __49__EKEventStore_eventWithUniqueId_occurrenceDate___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v6 = [EKObjectID objectIDWithCADObjectID:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)eventWithUUID:(id)a3 occurrenceDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__24;
    v25 = __Block_byref_object_dispose__24;
    v26 = 0;
    v8 = [(EKEventStore *)self connection];
    v9 = [v8 CADOperationProxySync];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __45__EKEventStore_eventWithUUID_occurrenceDate___block_invoke;
    v18 = &unk_1E7800B28;
    v19 = v6;
    v20 = &v21;
    [v9 CADDatabaseGetCalendarItemWithUUID:v19 reply:&v15];

    if (v22[5])
    {
      v10 = [EKObjectID objectIDWithCADObjectID:v15, v16, v17, v18];
      v11 = [(EKEventStore *)self registerFetchedObjectWithID:v10];

      if (v11)
      {
        v12 = [[EKEvent alloc] initWithPersistentObject:v11 occurrenceDate:v7];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __45__EKEventStore_eventWithUUID_occurrenceDate___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __45__EKEventStore_eventWithUUID_occurrenceDate___block_invoke_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (id)_entityWrappersForEventUUIDs:(id)a3 inCalendars:(id)a4 propertiesToLoad:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 valueForKey:@"CADObjectID"];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__24;
  v24 = __Block_byref_object_dispose__24;
  v25 = 0;
  v12 = [(EKEventStore *)self connection];
  v13 = [v12 CADOperationProxySync];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__EKEventStore__entityWrappersForEventUUIDs_inCalendars_propertiesToLoad___block_invoke;
  v17[3] = &unk_1E77FED28;
  v14 = v8;
  v18 = v14;
  v19 = &v20;
  [v13 CADDatabaseGetCalendarItemsWithUUIDs:v14 inCalendars:v11 propertiesToLoad:v10 reply:v17];

  v15 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v15;
}

void __74__EKEventStore__entityWrappersForEventUUIDs_inCalendars_propertiesToLoad___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __74__EKEventStore__entityWrappersForEventUUIDs_inCalendars_propertiesToLoad___block_invoke_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (BOOL)eventWithUUID:(id)a3 isInCalendars:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v13 count:1];

  v10 = [(EKEventStore *)self _entityWrappersForEventUUIDs:v9 inCalendars:v7 propertiesToLoad:MEMORY[0x1E695E0F0], v13, v14];

  LOBYTE(v8) = [v10 count] != 0;
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)eventsWithUUIDToOccurrenceDateMap:(id)a3 inCalendars:(id)a4
{
  v48[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = *MEMORY[0x1E6992600];
    v48[0] = *MEMORY[0x1E6992B08];
    v48[1] = v8;
    v9 = *MEMORY[0x1E6992968];
    v48[2] = *MEMORY[0x1E69926C8];
    v48[3] = v9;
    v48[4] = *MEMORY[0x1E6992658];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:5];
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v12 = [v6 allKeys];
    v36 = v10;
    v13 = [(EKEventStore *)self _entityWrappersForEventUUIDs:v12 inCalendars:v7 propertiesToLoad:v10];

    if (v13)
    {
      v30 = v13;
      v31 = v7;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = v13;
      v37 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v37)
      {
        v34 = v6;
        v35 = *v43;
        v33 = self;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v43 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v42 + 1) + 8 * i);
            v16 = [v15 loadedValues];
            v17 = [v16 firstObject];

            v18 = [v15 objectID];
            v19 = [EKObjectID objectIDWithCADObjectID:v18];
            v20 = [v15 loadedValues];
            v21 = [(EKEventStore *)self registerFetchedObjectWithID:v19 withDefaultLoadedPropertyKeys:v36 values:v20];

            if (v21)
            {
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v22 = [v6 objectForKeyedSubscript:v17];
              v23 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v39;
                do
                {
                  for (j = 0; j != v24; ++j)
                  {
                    if (*v39 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = [[EKEvent alloc] initWithPersistentObject:v21 occurrenceDate:*(*(&v38 + 1) + 8 * j)];
                    [v11 addObject:v27];
                  }

                  v24 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
                }

                while (v24);
              }

              self = v33;
              v6 = v34;
            }
          }

          v37 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v37);
      }

      v13 = v30;
      v7 = v31;
    }
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v28 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)allEventsWithUniqueId:(id)a3 occurrenceDate:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v19 = objc_opt_new();
  if (v6)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__24;
    v31 = __Block_byref_object_dispose__24;
    v32 = 0;
    v8 = [(EKEventStore *)self connection];
    v9 = [v8 CADOperationProxySync];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __53__EKEventStore_allEventsWithUniqueId_occurrenceDate___block_invoke;
    v24[3] = &unk_1E77FED28;
    v25 = v6;
    v26 = &v27;
    [v9 CADDatabaseGetAllEventsWithUniqueID:v25 reply:v24];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v28[5];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v33 count:16];
    if (v11)
    {
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v10);
          }

          if (*(*(&v20 + 1) + 8 * i))
          {
            v14 = [EKObjectID objectIDWithCADObjectID:?];
            v15 = [(EKEventStore *)self registerFetchedObjectWithID:v14];

            if (v15)
            {
              v16 = [[EKEvent alloc] initWithPersistentObject:v15 occurrenceDate:v7];
              [v19 addObject:v16];
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v20 objects:v33 count:16];
      }

      while (v11);
    }

    _Block_object_dispose(&v27, 8);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v19;
}

void __53__EKEventStore_allEventsWithUniqueId_occurrenceDate___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __53__EKEventStore_allEventsWithUniqueId_occurrenceDate___block_invoke_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (BOOL)_saveEvent:(id)a3 span:(int64_t)a4 commit:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  if (a6)
  {
    *a6 = 0;
    if (![(EKEventStore *)self canModifyCalendarDatabase])
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = 30;
      goto LABEL_11;
    }

    if (!v10)
    {
      goto LABEL_29;
    }

LABEL_7:
    v13 = [v10 eventStore];

    if (v13 != self)
    {
      if (a6)
      {
        v14 = MEMORY[0x1E696ABC0];
        v15 = 11;
LABEL_11:
        v16 = [v14 errorWithEKErrorCode:v15];
LABEL_12:
        v12 = 0;
        *a6 = v16;
        goto LABEL_30;
      }

LABEL_29:
      v12 = 0;
      goto LABEL_30;
    }

    if (([v10 isNew] & 1) == 0)
    {
      v17 = [v10 persistentObject];
      if ([v17 _isPendingInsert])
      {
      }

      else
      {
        v18 = [v10 persistentObject];
        v19 = [(EKEventStore *)self _isRegisteredObject:v18];

        if (!v19)
        {
          if (a6)
          {
            v16 = [MEMORY[0x1E696ABC0] errorWithCADResult:1010];
            goto LABEL_12;
          }

          goto LABEL_29;
        }
      }
    }

    if (![v10 validateWithSpan:a4 error:a6])
    {
      goto LABEL_29;
    }

    v20 = [v10 hasChanges];
    if ([v10 saveWithSpan:a4 error:a6])
    {
      if ((v20 & 1) != 0 || ([v10 persistentObject], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "_isPendingInsert"), v21, v22))
      {
        [(EKEventStore *)self _addObjectToPendingCommits:v10];
      }

      v23 = [(EKEventStore *)self save:a6];
      if (v23 && v7)
      {
        if (![(EKEventStore *)self commitWithRollbackForNewClients:a6])
        {
          goto LABEL_25;
        }

LABEL_32:
        v12 = 1;
        goto LABEL_30;
      }

      if (v23)
      {
        goto LABEL_32;
      }
    }

LABEL_25:
    v24 = [v10 persistentObject];
    v25 = [v24 _isPendingInsert];

    if (v25)
    {
      v26 = [v10 persistentObject];
      [(EKEventStore *)self _deleteObject:v26];
    }

    goto LABEL_29;
  }

  v11 = [(EKEventStore *)self canModifyCalendarDatabase];
  v12 = 0;
  if (v10 && v11)
  {
    goto LABEL_7;
  }

LABEL_30:

  return v12;
}

- (BOOL)_removeEvent:(id)a3 span:(int64_t)a4 commit:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v51 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (a6)
  {
    *a6 = 0;
    if (![(EKEventStore *)self canModifyCalendarDatabase])
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = 30;
      goto LABEL_13;
    }

    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = [(EKEventStore *)self canModifyCalendarDatabase];
    LOBYTE(v12) = 0;
    if (!v10 || !v11)
    {
      goto LABEL_14;
    }
  }

  v13 = [v10 eventStore];

  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = [v10 eventStore];

  if (v14 != self)
  {
    if (a6)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = 11;
LABEL_13:
      [v15 errorWithEKErrorCode:v16];
      *a6 = LOBYTE(v12) = 0;
      goto LABEL_14;
    }

LABEL_11:
    LOBYTE(v12) = 0;
    goto LABEL_14;
  }

  v19 = objc_alloc(objc_opt_class());
  v20 = [v10 persistentObject];
  v21 = [v19 initWithPersistentObject:v20 objectForCopy:v10];

  if ([v10 _hasChangesForKey:*MEMORY[0x1E6992620]] && (objc_msgSend(v10, "virtualConference"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "virtualConference"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqual:", v23), v23, v22, (v24 & 1) == 0))
  {
    v39 = [v10 virtualConference];
  }

  else
  {
    v39 = 0;
  }

  v40 = v21;
  [v21 virtualConference];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v38 = v48 = 0u;
  v25 = [v38 joinMethods];
  v26 = [v25 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v46;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v46 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v45 + 1) + 8 * i) URL];
        [v10 invalidateVirtualConferenceURLIfNeededOnCommit:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v27);
  }

  if ([v40 removeWithSpan:a4 error:a6])
  {
    [(EKEventStore *)self _addRemovedObjectToPendingCommits:v10];
    v31 = v39;
    if ([(EKEventStore *)self save:a6])
    {
      [v10 markAsDeleted];
      v12 = !v7 || [(EKEventStore *)self commitWithRollbackForNewClients:a6];
      if (v12 && v39)
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v32 = [v39 joinMethods];
        v33 = [v32 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v42;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v42 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = [*(*(&v41 + 1) + 8 * j) URL];
              [EKConferenceUtils invalidateConferenceURL:v37];
            }

            v34 = [v32 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v34);
        }

        LOBYTE(v12) = 1;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
    v31 = v39;
  }

LABEL_14:
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)setInvitationStatus:(unint64_t)a3 forEvent:(id)a4 error:(id *)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = v8;
  if (a5)
  {
    *a5 = 0;
  }

  if (v8)
  {
    v14[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v11 = [(EKEventStore *)self setInvitationStatus:a3 forEvents:v10 error:a5];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)setInvitationStatus:(unint64_t)a3 forEvents:(id)a4 error:(id *)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__24;
  v46 = __Block_byref_object_dispose__24;
  v47 = 0;
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v11)
  {
    v12 = *v39;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [v14 eventStore];
        v16 = v15 == 0;

        if (v16)
        {
          goto LABEL_26;
        }

        v17 = [v14 eventStore];
        v18 = v17 == self;

        if (!v18)
        {
          if (a5)
          {
            *a5 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
          }

LABEL_26:

          v26 = 0;
          goto LABEL_27;
        }

        v19 = [v14 CADObjectID];
        [v9 addObject:v19];
      }

      v11 = [v10 countByEnumeratingWithState:&v38 objects:v49 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v20 = [(EKEventStore *)self connection];
  v21 = [v20 CADOperationProxySync];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __52__EKEventStore_setInvitationStatus_forEvents_error___block_invoke;
  v33[3] = &unk_1E7800B50;
  v33[4] = &v42;
  v33[5] = &v34;
  [v21 CADEventSetInvitationStatus:a3 forEvents:v9 error:v33];

  if (a5)
  {
    *a5 = v43[5];
  }

  if (*(v35 + 24) == 1)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v10;
    v23 = [v22 countByEnumeratingWithState:&v29 objects:v48 count:16];
    if (v23)
    {
      v24 = *v30;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v29 + 1) + 8 * j) clearInvitationStatus];
        }

        v23 = [v22 countByEnumeratingWithState:&v29 objects:v48 count:16];
      }

      while (v23);
    }
  }

  _Block_object_dispose(&v34, 8);
  v26 = 1;
LABEL_27:

  _Block_object_dispose(&v42, 8);
  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

void __52__EKEventStore_setInvitationStatus_forEvents_error___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __52__EKEventStore_setInvitationStatus_forEvents_error___block_invoke_cold_1(v3);
    }

    v4 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:5];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (id)creatorTeamIdentifierForEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 CADObjectID];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__24;
  v15 = __Block_byref_object_dispose__24;
  v16 = 0;
  v6 = [(EKEventStore *)self connection];
  v7 = [v6 CADOperationProxySync];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__EKEventStore_creatorTeamIdentifierForEvent___block_invoke;
  v10[3] = &unk_1E7800858;
  v10[4] = &v11;
  [v7 CADDatabaseGetCreatorTeamIdentifierForEventWithObjectID:v5 reply:v10];

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __46__EKEventStore_creatorTeamIdentifierForEvent___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __52__EKEventStore_setInvitationStatus_forEvents_error___block_invoke_cold_1(v6);
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

- (BOOL)isCurrentProcessCreatorOfEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 CADObjectID];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = [(EKEventStore *)self connection];
  v7 = [v6 CADOperationProxySync];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__EKEventStore_isCurrentProcessCreatorOfEvent___block_invoke;
  v9[3] = &unk_1E7800B78;
  v9[4] = &v10;
  [v7 CADDatabaseIsCurrentProcessCreatorOfEventWithObjectID:v5 reply:v9];

  LOBYTE(v6) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)importICS:(id)a3 intoCalendar:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8 || ![v8 length])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = _NSMethodExceptionProem();
    [v10 raise:v11 format:{@"%@: path is empty or nil", v12}];
  }

  v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v8];
  if (v13)
  {
    v14 = [(EKEventStore *)self importICSData:v13 intoCalendar:v9 options:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)importICSData:(id)a3 intoCalendars:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = [a4 valueForKey:@"CADObjectID"];
  v10 = [(EKEventStore *)self _importEventsWithExternalIDs:0 fromICSData:v8 intoCalendarsWithIDs:v9 options:a5 batchSize:0];

  return v10;
}

void __96__EKEventStore__importEventsWithExternalIDs_fromICSData_intoCalendarsWithIDs_options_batchSize___block_invoke(uint64_t a1, int a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __96__EKEventStore__importEventsWithExternalIDs_fromICSData_intoCalendarsWithIDs_options_batchSize___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = v6;
    obj = v6;
    v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v24)
    {
      v23 = *v31;
      do
      {
        v10 = 0;
        do
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = v10;
          v11 = *(*(&v30 + 1) + 8 * v10);
          v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
          [*(*(*(a1 + 48) + 8) + 40) addObject:v12];
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = [EKObjectID EKObjectIDsFromCADObjectIDs:v11];
          v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            do
            {
              v17 = 0;
              do
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [*(a1 + 40) registerFetchedObjectWithID:*(*(&v26 + 1) + 8 * v17)];
                if (v18)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v19 = [[EKEvent alloc] initWithPersistentObject:v18];
                    [v12 addObject:v19];
                  }
                }

                ++v17;
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v15);
          }

          v10 = v25 + 1;
        }

        while (v25 + 1 != v24);
        v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v24);
    }

    v6 = v21;
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)importICSData:(id)a3 intoCalendar:(id)a4 options:(unint64_t)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      [v9 CADObjectID];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v12 = ;
    v19[0] = v8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v18 = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v15 = [(EKEventStore *)self _importEventsWithExternalIDs:0 fromICSData:v13 intoCalendarsWithIDs:v14 options:a5 batchSize:0];
    v11 = [v15 firstObject];
  }

  else
  {
    v11 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)ICSDataForCalendarItems:(id)a3 options:(unint64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__24;
  v27 = __Block_byref_object_dispose__24;
  v28 = 0;
  v7 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v19 + 1) + 8 * i) CADObjectID];
        [v7 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v9);
  }

  v13 = [(EKEventStore *)self connection];
  v14 = [v13 CADOperationProxySync];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__EKEventStore_ICSDataForCalendarItems_options___block_invoke;
  v18[3] = &unk_1E77FDD00;
  v18[4] = &v23;
  [v14 CADDatabaseExportICSDataForCalendarItems:v7 options:a4 reply:v18];

  v15 = v24[5];
  _Block_object_dispose(&v23, 8);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)ICSDataForCalendarItems:(id)a3 preventLineFolding:(BOOL)a4
{
  if (a4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return [(EKEventStore *)self ICSDataForCalendarItems:a3 options:v4];
}

- (id)importVCSData:(id)a3 intoCalendars:(id)a4 error:(id *)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = 0x1E695D000uLL;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  if (v9 && (v12 = [v9 count], v12 == objc_msgSend(v8, "count")))
  {
    v36 = v11;
    if ([v8 count])
    {
      v13 = 0;
      v33 = a5;
      v34 = v9;
      v35 = v8;
      while (1)
      {
        v14 = [v8 objectAtIndexedSubscript:v13];
        v15 = [v9 objectAtIndexedSubscript:v13];
        [*(v10 + 3952) array];
        v17 = v16 = v8;
        v40 = v14;
        v18 = [MEMORY[0x1E69E3D18] parseVCSData:v14];
        v19 = [v18 count];
        v20 = v19;
        v39 = v18;
        if (v19)
        {
          v37 = v19;
          v38 = v13;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          obj = v18;
          v43 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
          if (v43)
          {
            v42 = *v50;
            do
            {
              v21 = 0;
              do
              {
                if (*v50 != v42)
                {
                  objc_enumerationMutation(obj);
                }

                v44 = v21;
                v22 = *(*(&v49 + 1) + 8 * v21);
                v45 = 0u;
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                v23 = [v22 children];
                v24 = [v23 countByEnumeratingWithState:&v45 objects:v53 count:16];
                if (v24)
                {
                  v25 = v24;
                  v26 = *v46;
                  do
                  {
                    for (i = 0; i != v25; ++i)
                    {
                      if (*v46 != v26)
                      {
                        objc_enumerationMutation(v23);
                      }

                      v28 = *(*(&v45 + 1) + 8 * i);
                      if ([v28 entityType] == 2)
                      {
                        v29 = [EKEvent eventWithEventStore:self];
                        [v29 updateWithVCSEntity:v28 inCalendar:v15];
                        [v17 addObject:v29];
                      }
                    }

                    v25 = [v23 countByEnumeratingWithState:&v45 objects:v53 count:16];
                  }

                  while (v25);
                }

                v21 = v44 + 1;
              }

              while (v44 + 1 != v43);
              v43 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
            }

            while (v43);
          }

          [v36 addObject:v17];
          v9 = v34;
          v8 = v35;
          a5 = v33;
          v10 = 0x1E695D000;
          v20 = v37;
          v13 = v38;
        }

        else
        {
          v8 = v16;
          v10 = 0x1E695D000;
          if (a5)
          {
            *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:0 userInfo:0];
          }
        }

        if (!v20)
        {
          break;
        }

        if ([v8 count] <= ++v13)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      if ([(EKEventStore *)self commitWithRollback:a5])
      {
        v11 = v36;
        v30 = v36;
        goto LABEL_33;
      }
    }

    v30 = 0;
    v11 = v36;
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:3 userInfo:0];
    *a5 = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

LABEL_33:

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (CGColor)copyCGColorForNewCalendar
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(EKEventStore *)self colorStringForNewCalendar];
  v3 = v2;
  if (v2)
  {
    v9 = 0;
    v8 = 0;
    CFStringGetCString(v2, buffer, 100, 0x8000100u);
    sscanf(buffer, "#%02X%02X%02X", &v9 + 4, &v9, &v8);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *components = vcvtq_f64_f32(vdiv_f32(vcvt_f32_s32(__PAIR64__(v9, HIDWORD(v9))), vdup_n_s32(0x437F0000u)));
    v11 = (v8 / 255.0);
    v12 = 0x3FF0000000000000;
    v5 = CGColorCreate(DeviceRGB, components);
    CFRelease(DeviceRGB);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)colorStringForNewCalendar
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [(EKEventStore *)self calendarsForEntityType:0];
  v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        if (([v9 isHidden] & 1) == 0)
        {
          v10 = [v9 colorString];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  v11 = EKGetDefaultCalendarColors();
  v12 = [v11 firstObject];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    v17 = -1;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v25 + 1) + 8 * j);
        v20 = [v3 countForObject:{v19, v25}];
        if (v20 < v17)
        {
          v21 = v20;
          v22 = v19;

          v17 = v21;
          v12 = v22;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)defaultLocalCalendar
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__24;
  v13 = __Block_byref_object_dispose__24;
  v14 = 0;
  v3 = [(EKEventStore *)self connection];
  v4 = [v3 CADOperationProxySync];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__EKEventStore_defaultLocalCalendar__block_invoke;
  v8[3] = &unk_1E7800A70;
  v8[4] = &v9;
  [v4 CADDatabaseGetDefaultLocalCalendarWithReply:v8];

  if (v10[5])
  {
    v5 = [EKObjectID objectIDWithCADObjectID:?];
    v6 = [(EKEventStore *)self calendarWithID:v5];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __36__EKEventStore_defaultLocalCalendar__block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __36__EKEventStore_defaultLocalCalendar__block_invoke_cold_1(v7);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (id)defaultCalendarForNewEventsInDelegateSource:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isDelegate] & 1) == 0)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore defaultCalendarForNewEventsInDelegateSource:];
    }

    v9 = 0;
  }

  else
  {
    v6 = [v5 CADObjectID];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__24;
    v26 = __Block_byref_object_dispose__24;
    v27 = 0;
    calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __60__EKEventStore_defaultCalendarForNewEventsInDelegateSource___block_invoke;
    v17 = &unk_1E77FF860;
    v18 = self;
    v11 = v8;
    v19 = v11;
    v12 = v7;
    v20 = v12;
    v21 = &v22;
    dispatch_sync(calendarSourcesAndDefaultsQueue, &v14);
    v9 = [(EKEventStore *)self calendarWithCADID:v23[5], v14, v15, v16, v17, v18];

    _Block_object_dispose(&v22, 8);
  }

  return v9;
}

void __60__EKEventStore_defaultCalendarForNewEventsInDelegateSource___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v6)
  {
    v7 = [*(a1 + 32) connection];
    v8 = [v7 CADOperationProxySync];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __60__EKEventStore_defaultCalendarForNewEventsInDelegateSource___block_invoke_2;
    v17 = &unk_1E7800BC8;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v18 = *(a1 + 32);
    v19 = v9;
    [v8 CADDatabaseGetDefaultCalendarForNewEventsInDelegateSource:v10 withReply:&v14];
  }

  v11 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:{*(a1 + 40), v14, v15, v16, v17, v18}];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void __60__EKEventStore_defaultCalendarForNewEventsInDelegateSource___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __60__EKEventStore_defaultCalendarForNewEventsInDelegateSource___block_invoke_2_cold_1(v7);
    }
  }

  else if (v5)
  {
    v8 = [*(a1 + 32) database];
    v9 = [v6 stampedCopyWithGeneration:{objc_msgSend(v8, "databaseRestoreGeneration")}];
    [*(*(a1 + 32) + 24) setObject:v9 forKeyedSubscript:*(a1 + 40)];
  }
}

- (void)setDefaultCalendar:(id)a3 forNewEventsInDelegateSource:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 6)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore setDefaultCalendar:forNewEventsInDelegateSource:];
    }

    goto LABEL_17;
  }

  if (!v7)
  {
    v17 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v17;
      v12 = [v6 objectID];
      v13 = [v6 title];
      *buf = 138543618;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEFAULT, "Setting default calendar for new events to %{public}@ (%@)", buf, 0x16u);
      goto LABEL_11;
    }

LABEL_12:
    calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__EKEventStore_setDefaultCalendar_forNewEventsInDelegateSource___block_invoke;
    block[3] = &unk_1E77FD7C8;
    block[4] = self;
    v19 = v7;
    v27 = v19;
    v20 = v6;
    v28 = v20;
    dispatch_sync(calendarSourcesAndDefaultsQueue, block);
    v21 = [(EKEventStore *)self connection];
    v22 = [v21 CADOperationProxySync];
    v23 = [v20 CADObjectID];
    v24 = [v19 CADObjectID];
    [v22 CADDatabaseSetDefaultCalendarForNewEvents:v23 delegateSource:v24 reply:&__block_literal_global_359];

    goto LABEL_17;
  }

  if ([v7 isDelegate])
  {
    v8 = [v6 source];
    v9 = [v7 isEqual:v8];

    v10 = EKLogHandle;
    if (v9)
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [v6 objectID];
        v13 = [v6 title];
        v14 = [v7 objectID];
        v15 = [v7 externalID];
        v16 = [v7 title];
        *buf = 138544386;
        v30 = v12;
        v31 = 2112;
        v32 = v13;
        v33 = 2114;
        v34 = v14;
        v35 = 2114;
        v36 = v15;
        v37 = 2112;
        v38 = v16;
        _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEFAULT, "Setting default calendar for new events to %{public}@ (%@) in source %{public}@ (%{public}@ - %@)", buf, 0x34u);

LABEL_11:
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore setDefaultCalendar:forNewEventsInDelegateSource:];
    }
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore setDefaultCalendar:forNewEventsInDelegateSource:];
  }

LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
}

void __64__EKEventStore_setDefaultCalendar_forNewEventsInDelegateSource___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 48) CADObjectID];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  if (v2)
  {
    [v2 CADObjectID];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v4 = ;
  [v3 setObject:v5 forKeyedSubscript:v4];
}

void __64__EKEventStore_setDefaultCalendar_forNewEventsInDelegateSource___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __64__EKEventStore_setDefaultCalendar_forNewEventsInDelegateSource___block_invoke_2_cold_1(v2);
    }
  }
}

- (EKCalendar)defaultCalendarForNewReminders
{
  if ([(EKEventStore *)self returnReminderResults])
  {
    v3 = [(EKReminderStore *)self->_reminderStore defaultCalendarForNewReminders];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_clearCachedCalendars
{
  calendars = self->_calendars;
  self->_calendars = 0;

  calendarsByIdentifier = self->_calendarsByIdentifier;
  self->_calendarsByIdentifier = 0;

  defaultCalendarsForNewEventsIDBySourceID = self->_defaultCalendarsForNewEventsIDBySourceID;
  self->_defaultCalendarsForNewEventsIDBySourceID = 0;

  suggestedEventCalendarID = self->_suggestedEventCalendarID;
  self->_suggestedEventCalendarID = 0;

  naturalLanguageSuggestedEventCalendarID = self->_naturalLanguageSuggestedEventCalendarID;
  self->_naturalLanguageSuggestedEventCalendarID = 0;
}

- (void)_removeCachedCalendarFromSource:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = a3;
  if (self->_defaultCalendarsForNewEventsIDBySourceID)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v4 = [MEMORY[0x1E695DFB0] null];
    v34[0] = v4;
    v5 = [v29 CADObjectID];
    v34[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];

    obj = v6;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_defaultCalendarsForNewEventsIDBySourceID objectForKeyedSubscript:v11];
          if (v12)
          {
            v13 = [(EKEventStore *)self calendarWithCADID:v12];
            v14 = [v13 source];
            v15 = [v14 persistentObject];
            v16 = [v15 isEqual:v29];

            if (v16)
            {
              [(NSMutableDictionary *)self->_defaultCalendarsForNewEventsIDBySourceID removeObjectForKey:v11];
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }
  }

  if (self->_suggestedEventCalendarID)
  {
    v17 = [(EKEventStore *)self calendarWithCADID:?];
    v18 = [v17 source];
    v19 = [v18 persistentObject];
    v20 = [v19 isEqual:v29];

    if (v20)
    {
      suggestedEventCalendarID = self->_suggestedEventCalendarID;
      self->_suggestedEventCalendarID = 0;
    }
  }

  if (self->_naturalLanguageSuggestedEventCalendarID)
  {
    v22 = [(EKEventStore *)self calendarWithCADID:?];
    v23 = [v22 source];
    v24 = [v23 persistentObject];
    v25 = [v24 isEqual:v29];

    if (v25)
    {
      naturalLanguageSuggestedEventCalendarID = self->_naturalLanguageSuggestedEventCalendarID;
      self->_naturalLanguageSuggestedEventCalendarID = 0;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_removeCachedCalendarWithCADID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSMutableDictionary *)self->_calendars removeObjectForKey:v4];
  calendarsByIdentifier = self->_calendarsByIdentifier;
  self->_calendarsByIdentifier = 0;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSMutableDictionary *)self->_defaultCalendarsForNewEventsIDBySourceID allKeys];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_defaultCalendarsForNewEventsIDBySourceID objectForKeyedSubscript:v11];
        if ([v12 isEqual:v4])
        {
          [(NSMutableDictionary *)self->_defaultCalendarsForNewEventsIDBySourceID removeObjectForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([(CADGenerationStampedObjectID *)self->_suggestedEventCalendarID isEqual:v4])
  {
    suggestedEventCalendarID = self->_suggestedEventCalendarID;
    self->_suggestedEventCalendarID = 0;
  }

  if ([(CADGenerationStampedObjectID *)self->_naturalLanguageSuggestedEventCalendarID isEqual:v4])
  {
    naturalLanguageSuggestedEventCalendarID = self->_naturalLanguageSuggestedEventCalendarID;
    self->_naturalLanguageSuggestedEventCalendarID = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)eventDraftsPath
{
  v2 = CalDatabaseCopyDirectoryPath();
  v3 = [v2 stringByAppendingPathComponent:@"Pending Events"];

  return v3;
}

- (BOOL)saveDraftOfEvent:(id)a3
{
  v4 = a3;
  v5 = +[EKEventStore eventDraftsPath];
  LOBYTE(self) = [(EKEventStore *)self _saveDraftOfEvent:v4 toDirectory:v5];

  return self;
}

- (BOOL)_saveDraftOfEvent:(id)a3 toDirectory:(id)a4 withVersion:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 eventOccurrenceID];
  if ([v8 hasChanges] && (objc_msgSend(v8, "isDeleted") & 1) == 0)
  {
    v16 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v41 = "[EKEventStore _saveDraftOfEvent:toDirectory:withVersion:]";
      v42 = 2114;
      v43 = v11;
      v44 = 2112;
      v45 = v9;
      v46 = 2112;
      v47 = self;
      _os_log_impl(&dword_1A805E000, v16, OS_LOG_TYPE_DEFAULT, "%s: Serializing %{public}@ to path %@ for event store %@", buf, 0x2Au);
    }

    v17 = [MEMORY[0x1E696AC08] defaultManager];
    if (([v17 fileExistsAtPath:v9 isDirectory:0] & 1) == 0)
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
      {
        [EKEventStore _saveDraftOfEvent:toDirectory:withVersion:];
      }

      v39 = 0;
      v18 = [v17 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v39];
      v19 = v39;
      v20 = v19;
      if ((v18 & 1) == 0)
      {
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          [EKEventStore _saveDraftOfEvent:toDirectory:withVersion:];
        }

        goto LABEL_30;
      }
    }

    v21 = [v8 eventOccurrenceID];
    v36 = [(EKEventStore *)self _draftPathForEventWithOccurrenceID:v21 draftDirectory:v9];

    v22 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [v8 attendees];
      v25 = [v8 changeSet];
      v26 = [v25 summary];
      *buf = 136316162;
      v41 = "[EKEventStore _saveDraftOfEvent:toDirectory:withVersion:]";
      v42 = 2114;
      v43 = v11;
      v44 = 2112;
      v45 = v24;
      v46 = 2112;
      v47 = v26;
      v48 = 2112;
      v49 = v36;
      _os_log_impl(&dword_1A805E000, v23, OS_LOG_TYPE_DEFAULT, "%s: Serializing event %{public}@ with attendees %@ and with changeset %@ to file %@", buf, 0x34u);
    }

    v27 = [EKDefaultSerializerFactory createSerializerWithEventStore:self withVersion:v10];
    v38 = 0;
    v28 = [v27 serializeEvent:v8 error:&v38];
    v29 = v38;
    v30 = v29;
    if (v28)
    {

      v37 = 0;
      v31 = [v28 writeToFile:v36 options:1 error:&v37];
      v30 = v37;
      v32 = EKLogHandle;
      if (!v31)
      {
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          v33 = v32;
          v35 = [v8 changeSet];
          v34 = [v35 summary];
          *buf = 136316162;
          v41 = "[EKEventStore _saveDraftOfEvent:toDirectory:withVersion:]";
          v42 = 2114;
          v43 = v11;
          v44 = 2112;
          v45 = v34;
          v46 = 2112;
          v47 = v36;
          v48 = 2112;
          v49 = v30;
          _os_log_error_impl(&dword_1A805E000, v33, OS_LOG_TYPE_ERROR, "%s: Failed to serialize changeset event %{public}@ with changeset %@ to file %@: %@", buf, 0x34u);
        }

        v13 = 0;
LABEL_29:

        if (v28)
        {
          goto LABEL_6;
        }

LABEL_30:
        v13 = 0;
        goto LABEL_6;
      }

      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v41 = "[EKEventStore _saveDraftOfEvent:toDirectory:withVersion:]";
        _os_log_impl(&dword_1A805E000, v32, OS_LOG_TYPE_DEFAULT, "%s: Serialization successful", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore _saveDraftOfEvent:toDirectory:withVersion:];
    }

    v13 = 1;
    goto LABEL_29;
  }

  v12 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = "[EKEventStore _saveDraftOfEvent:toDirectory:withVersion:]";
    v42 = 2114;
    v43 = v11;
    _os_log_impl(&dword_1A805E000, v12, OS_LOG_TYPE_DEFAULT, "%s: Event %{public}@ has no changes (or was deleted).  Not serializing", buf, 0x16u);
  }

  v13 = 1;
LABEL_6:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)loadDraftOfEventWithOccurrenceID:(id)a3
{
  v4 = a3;
  v5 = +[EKEventStore eventDraftsPath];
  v6 = [(EKEventStore *)self _loadDraftOfEventWithOccurrenceID:v4 fromDirectory:v5];

  return v6;
}

- (id)_loadDraftOfEventWithOccurrenceID:(id)a3 fromDirectory:(id)a4 withVersion:(id)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v59 = "[EKEventStore _loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:]";
    v60 = 2114;
    v61 = v8;
    v62 = 2112;
    v63 = v9;
    v64 = 2112;
    v65 = self;
    _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEFAULT, "%s: Loading event with occurrenceID %{public}@ from path %@ for event store %@", buf, 0x2Au);
  }

  v12 = [(EKEventStore *)self _draftPathForEventWithOccurrenceID:v8 draftDirectory:v9];
  v13 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v13 fileExistsAtPath:v12 isDirectory:0])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v12];
    if (v14)
    {
      v15 = [EKDefaultSerializerFactory createSerializerWithEventStore:self withVersion:@"3.0"];
      v16 = v15;
      if (v10)
      {
        v17 = v10;
      }

      else
      {
        v17 = [v15 version];
      }

      v55 = v17;
      if ([v17 isEqualToString:@"3.0"])
      {
        v56 = 0;
        v57 = 0;
        v52 = v16;
        v20 = [v16 deserializeData:v14 isNew:&v57 error:&v56];
        v53 = v57;
        v51 = v56;
        v54 = v20;
        if (v20)
        {
          [(EKEventStore *)self _deleteDraft:v12];
          v21 = [v20 calendar];

          if (v21)
          {
            v22 = [(EKEventStore *)self eventWithIdentifier:v8];
            v50 = v22;
            if (v22)
            {
              v23 = v22;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
              {
                [EKEventStore _loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:];
              }

              v24 = [v23 diffWithObject:v20];
              v25 = EKLogHandle;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
              {
                [EKEventStore _loadDraftOfEventWithOccurrenceID:v25 fromDirectory:? withVersion:?];
              }

              v48 = v24;
              v49 = [v24 changeSetForDiff];
              v26 = [v49 changedKeys];
              v27 = [v26 mutableCopy];

              v28 = [v54 changeSet];
              v29 = [v28 changedKeys];
              [v27 minusSet:v29];

              v47 = v27;
              v30 = [v27 allObjects];
              [v49 rollbackChangesForKeys:v30];

              v31 = EKLogHandle;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
              {
                [EKEventStore _loadDraftOfEventWithOccurrenceID:v31 fromDirectory:? withVersion:?];
              }

              v32 = v50;
              [v50 applyChanges:v49];
              v33 = EKLogHandle;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v34 = v33;
                v35 = [v50 changeSet];
                v36 = [v35 summary];
                *buf = 136315394;
                v59 = "[EKEventStore _loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:]";
                v60 = 2112;
                v61 = v36;
                _os_log_impl(&dword_1A805E000, v34, OS_LOG_TYPE_DEFAULT, "%s: Applied changes to event: %@", buf, 0x16u);

                v32 = v50;
              }

              v19 = v32;

              v37 = v32;
              v16 = v52;
              v38 = v53;
              v39 = v51;
            }

            else
            {
              v38 = v53;
              if (v53 && ![v53 BOOLValue])
              {
                v44 = EKLogHandle;
                v16 = v52;
                if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v59 = v8;
                  _os_log_impl(&dword_1A805E000, v44, OS_LOG_TYPE_DEFAULT, "Discarding draft for event %{public}@ because the draft was for an event that has been deleted.", buf, 0xCu);
                }

                v19 = 0;
              }

              else
              {
                v41 = EKLogHandle;
                if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = v41;
                  v43 = [v20 attendees];
                  *buf = 136315650;
                  v59 = "[EKEventStore _loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:]";
                  v60 = 2112;
                  v61 = v20;
                  v62 = 2112;
                  v63 = v43;
                  _os_log_impl(&dword_1A805E000, v42, OS_LOG_TYPE_DEFAULT, "%s: Return deserialized event %@ with attendees %@", buf, 0x20u);
                }

                [v20 markAsNew];
                v19 = v20;
                v16 = v52;
                v38 = v53;
              }

              v37 = 0;
              v39 = v51;
            }
          }

          else
          {
            v40 = EKLogHandle;
            if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v59 = v8;
              _os_log_impl(&dword_1A805E000, v40, OS_LOG_TYPE_DEFAULT, "Discarding draft for event %{public}@ because the draft was on a calendar that has been deleted.", buf, 0xCu);
            }

            v19 = 0;
            v16 = v52;
            v38 = v53;
            v39 = v51;
          }
        }

        else
        {
          v39 = v51;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            [EKEventStore _loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:];
          }

          [(EKEventStore *)self _deleteDraft:v12];
          v19 = 0;
          v16 = v52;
          v38 = v53;
        }
      }

      else
      {
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          [EKEventStore _loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:];
        }

        [(EKEventStore *)self _deleteDraft:v12];
        v19 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [EKEventStore _loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:];
      }

      v19 = 0;
    }
  }

  else
  {
    v18 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v59 = "[EKEventStore _loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:]";
      v60 = 2112;
      v61 = v12;
      _os_log_impl(&dword_1A805E000, v18, OS_LOG_TYPE_DEFAULT, "%s: No file exists at path %@", buf, 0x16u);
    }

    v19 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)deleteDraftOfEventWithOccurrenceID:(id)a3
{
  v4 = a3;
  v5 = +[EKEventStore eventDraftsPath];
  [(EKEventStore *)self _deleteDraftOfEventWithOccurrenceID:v4 fromDirectory:v5];
}

- (void)deleteAllDrafts
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_deleteDraftOfEventWithOccurrenceID:(id)a3 fromDirectory:(id)a4
{
  v5 = [(EKEventStore *)self _draftPathForEventWithOccurrenceID:a3 draftDirectory:a4];
  [(EKEventStore *)self _deleteDraft:v5];
}

- (void)_deleteDraft:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = 0;
  v5 = [v4 removeItemAtPath:v3 error:&v7];
  v6 = v7;
  if (v5)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKEventStore _deleteDraft:];
    }
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore _deleteDraft:];
  }
}

- (id)_draftPathForEventWithOccurrenceID:(id)a3 draftDirectory:(id)a4
{
  v5 = a4;
  v6 = [a3 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", v6];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v5, v7];

  return v8;
}

- (BOOL)_saveReminder:(id)a3 commit:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [v8 eventStore];

  if (v9 != self)
  {
    if (a5)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = 11;
LABEL_11:
      [v10 errorWithEKErrorCode:v11];
      *a5 = LOBYTE(v12) = 0;
      goto LABEL_14;
    }

LABEL_13:
    LOBYTE(v12) = 0;
    goto LABEL_14;
  }

  if (![(EKEventStore *)self returnReminderResults])
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore _saveReminder:commit:error:];
      if (!a5)
      {
        goto LABEL_13;
      }
    }

    else if (!a5)
    {
      goto LABEL_13;
    }

    v10 = MEMORY[0x1E696ABC0];
    v11 = 29;
    goto LABEL_11;
  }

  v12 = [(EKReminderStore *)self->_reminderStore saveReminder:v8 error:a5];
  if (v12 && v6)
  {
    LOBYTE(v12) = [(EKEventStore *)self commit:a5];
  }

LABEL_14:

  return v12;
}

- (BOOL)_removeReminder:(id)a3 commit:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  if ([(EKEventStore *)self returnReminderResults])
  {
    v9 = [(EKReminderStore *)self->_reminderStore removeReminder:v8 error:a5];
    if (v9 && v6)
    {
      LOBYTE(v9) = [(EKEventStore *)self commitWithRollbackForNewClients:a5];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)reminderWithExternalURI:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [EKEventStore reminderWithExternalURI:];
  }

  v9 = 0;
  v5 = [(EKEventStore *)self _parseURI:v4 expectedScheme:@"x-apple-reminderkit" identifier:&v9 options:0];
  v6 = v9;
  if (v5)
  {
    if ([0 isEqualToString:@"Reminder"])
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [EKEventStore reminderWithExternalURI:];
      }
    }

    else
    {
      v7 = [(EKEventStore *)self calendarItemWithIdentifier:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_12;
      }
    }
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore reminderWithExternalURI:];
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (id)reminderWithUniqueId:(id)a3
{
  if (a3)
  {
    v4 = [(EKReminderStore *)self->_reminderStore reminderWithUniqueId:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)eventsWithSameRecurrenceSetAsEvent:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isDetached])
  {
    v5 = [v4 originalItem];
    v19 = [v5 recurrenceSet];
  }

  else
  {
    v19 = [v4 recurrenceSet];
  }

  if (v19)
  {
    v6 = objc_opt_new();
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__24;
    v31 = __Block_byref_object_dispose__24;
    v32 = 0;
    v7 = [(EKEventStore *)self connection];
    v8 = [v7 CADOperationProxySync];
    v9 = [v4 calendar];
    v10 = [v9 CADObjectID];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __51__EKEventStore_eventsWithSameRecurrenceSetAsEvent___block_invoke;
    v24[3] = &unk_1E77FED28;
    v25 = v19;
    v26 = &v27;
    [v8 CADDatabaseGetCalendarItemsWithRecurrenceSet:v25 inCalendar:v10 reply:v24];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v28[5];
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v33 count:16];
    if (v12)
    {
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [EKObjectID objectIDWithCADObjectID:*(*(&v20 + 1) + 8 * i)];
          v16 = [(EKEventStore *)self publicObjectWithFetchedObjectID:v15];

          if (v16)
          {
            [v6 addObject:v16];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v20 objects:v33 count:16];
      }

      while (v12);
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v6 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

void __51__EKEventStore_eventsWithSameRecurrenceSetAsEvent___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __51__EKEventStore_eventsWithSameRecurrenceSetAsEvent___block_invoke_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (id)calendarItemsWithUniqueIdentifier:(id)a3 inCalendar:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20 = a4;
  v7 = objc_opt_new();
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__24;
  v32 = __Block_byref_object_dispose__24;
  v33 = 0;
  v8 = [(EKEventStore *)self connection];
  v9 = [v8 CADOperationProxySync];
  v10 = [v20 CADObjectID];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __61__EKEventStore_calendarItemsWithUniqueIdentifier_inCalendar___block_invoke;
  v25[3] = &unk_1E77FED28;
  v11 = v6;
  v26 = v11;
  v27 = &v28;
  [v9 CADDatabaseGetCalendarItemsWithUniqueIdentifier:v11 inCalendar:v10 reply:v25];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v29[5];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v34 count:16];
  if (v13)
  {
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [EKObjectID objectIDWithCADObjectID:*(*(&v21 + 1) + 8 * i)];
        v17 = [(EKEventStore *)self publicObjectWithFetchedObjectID:v16];

        if (v17)
        {
          [v7 addObject:v17];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v21 objects:v34 count:16];
    }

    while (v13);
  }

  _Block_object_dispose(&v28, 8);
  v18 = *MEMORY[0x1E69E9840];

  return v7;
}

void __61__EKEventStore_calendarItemsWithUniqueIdentifier_inCalendar___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __61__EKEventStore_calendarItemsWithUniqueIdentifier_inCalendar___block_invoke_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (EKCalendarItem)calendarItemWithIdentifier:(NSString *)identifier
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = identifier;
  if (![(EKEventStore *)self returnReminderResults]|| ([(EKReminderStore *)self->_reminderStore reminderWithIdentifier:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([(EKEventStore *)self returnEventResults])
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__24;
      v35 = __Block_byref_object_dispose__24;
      v36 = 0;
      [(EKEventStore *)self objectsPendingCommit];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v6 = v28 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v7)
      {
        v8 = *v28;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v28 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v27 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [v10 uniqueIdentifier];
              v12 = [(NSString *)v4 isEqual:v11];

              if (v12)
              {
                v13 = [v10 objectID];
                v14 = v32[5];
                v32[5] = v13;

                goto LABEL_16;
              }
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:

      v15 = v32[5];
      if (!v15)
      {
        [(EKEventStore *)self _implicitUpgradeToFullAccessIfNeededWithReason:4];
        v16 = [(EKEventStore *)self connection];
        v17 = [v16 CADOperationProxySync];
        v21 = MEMORY[0x1E69E9820];
        v22 = 3221225472;
        v23 = __43__EKEventStore_calendarItemWithIdentifier___block_invoke;
        v24 = &unk_1E7800B28;
        v25 = v4;
        v26 = &v31;
        [v17 CADDatabaseGetCalendarItemWithUUID:v25 reply:&v21];

        v15 = v32[5];
      }

      v18 = [(EKEventStore *)self validatedNonDeletedPublicObjectWithObjectID:v15, v21, v22, v23, v24];
      if (v18)
      {
        v5 = [(EKEventStore *)self _apiExpectedEventForEvent:v18];
      }

      else
      {
        v5 = 0;
      }

      _Block_object_dispose(&v31, 8);
    }

    else
    {
      v5 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v5;
}

void __43__EKEventStore_calendarItemWithIdentifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __45__EKEventStore_eventWithUUID_occurrenceDate___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v6 = [EKObjectID objectIDWithCADObjectID:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)_calendarItemsWithExternalIdentifier:(id)a3 inCalendars:(id)a4 entityTypes:(unint64_t)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"externalIdentifier must be an instance of NSString"];
  }

  if ([v8 length])
  {
    if (v9)
    {
LABEL_6:
      v10 = [EKEventStore calendarObjectIDsForPredicate:v9];
      goto LABEL_10;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"externalIdentifier is empty"];
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_10:
  v11 = objc_opt_new();
  if ((v5 & 2) != 0 && [(EKEventStore *)self returnReminderResults])
  {
    v12 = [(EKReminderStore *)self->_reminderStore remindersWithExternalIdentifier:v8];
    [v11 addObjectsFromArray:v12];
  }

  if ((v5 & 1) != 0 && [(EKEventStore *)self returnEventResults])
  {
    v13 = [objc_alloc(MEMORY[0x1E6992308]) initWithExternalIdentifier:v8 entityType:2];
    [v13 setCalendars:v10];
    v14 = [(EKEventStore *)self _calendarItemsMatchingPredicate:v13];
    v15 = [(EKEventStore *)self _apiExpectedEventsForEvents:v14];

    [v11 addObjectsFromArray:v15];
  }

  if (![v11 count])
  {
    v16 = [(EKEventStore *)self calendarItemWithIdentifier:v8];
    v17 = v16;
    if (v16)
    {
      if (!v9 || ([v16 calendar], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "CADObjectID"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v10, "containsObject:", v19), v19, v18, v20))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [(EKEventStore *)self _apiExpectedEventForEvent:v17];

          v17 = v21;
        }

        [v11 addObject:v17];
      }
    }
  }

LABEL_25:

  return v11;
}

- (NSArray)calendarItemsWithExternalIdentifier:(NSString *)externalIdentifier
{
  v4 = externalIdentifier;
  [(EKEventStore *)self _implicitUpgradeToFullAccessIfNeededWithReason:5];
  v5 = [(EKEventStore *)self calendarItemsWithExternalIdentifier:v4 inCalendars:0];

  return v5;
}

- (id)_calendarItemsMatchingPredicate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"predicate is nil"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"predicate is not a calendar item predicate created through EKEventStore"];
  }

  v5 = [EKPredicateSearch searchWithEntityClass:objc_opt_class() predicate:v4 store:self];
  v6 = [v5 runSynchronously];

  return v6;
}

- (id)fetchRemindersMatchingPredicate:(NSPredicate *)predicate completion:(void *)completion
{
  v6 = predicate;
  v7 = completion;
  if ([(EKEventStore *)self returnReminderResults])
  {
    reminderStore = self->_reminderStore;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__EKEventStore_fetchRemindersMatchingPredicate_completion___block_invoke;
    v11[3] = &unk_1E7800BF0;
    v11[4] = self;
    v12 = v7;
    v9 = [(EKReminderStore *)reminderStore fetchRemindersMatchingPredicate:v6 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, MEMORY[0x1E695E0F0]);
    v9 = +[EKNullFetchRequestToken sharedToken];
  }

  return v9;
}

- (BOOL)accessGrantedForEntityType:(unint64_t)a3
{
  if (a3 != 1)
  {
    if (a3)
    {
      v3 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR);
      if (!v3)
      {
        return v3;
      }

      [EKEventStore accessGrantedForEntityType:];
    }

    else if ((denyAccessToEvents & 1) == 0)
    {
      LOBYTE(v3) = [(EKAuthStatusChecker *)self->_authStatusChecker eventAccessLevel]!= 0;
      return v3;
    }

LABEL_6:
    LOBYTE(v3) = 0;
    return v3;
  }

  if (denyAccessToReminders)
  {
    goto LABEL_6;
  }

  authStatusChecker = self->_authStatusChecker;

  LOBYTE(v3) = [(EKAuthStatusChecker *)authStatusChecker hasAccessToReminders];
  return v3;
}

- (BOOL)shouldSaveCalendarAsEventCalendar:(id)a3
{
  v3 = a3;
  if (CalIsReminderBridgeEnabled())
  {
    v4 = [v3 allowedEntityTypes] & 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (BOOL)shouldSaveCalendarAsReminderCalendar:(id)a3
{
  v3 = a3;
  if (CalIsReminderBridgeEnabled())
  {
    v4 = ([v3 allowedEntityTypes] >> 1) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

void __84__EKEventStore_closestCachedOccurrenceToDate_forEventObjectID_prefersForwardSearch___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __84__EKEventStore_closestCachedOccurrenceToDate_forEventObjectID_prefersForwardSearch___block_invoke_cold_1(a1, v7, a2);
    }
  }

  else
  {
    v8 = [*(a1 + 40) registerFetchedObjectWithID:*(a1 + 32)];
    if (v8)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    }
  }
}

- (int)countOfEventsFromStartDate:(id)a3 toEndDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = [(EKEventStore *)self connection];
  v9 = [v8 CADOperationProxySync];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__EKEventStore_countOfEventsFromStartDate_toEndDate___block_invoke;
  v11[3] = &unk_1E7800C40;
  v11[4] = &v12;
  [v9 CADOccurrenceCacheGetOccurrenceCountWithStartDate:v6 endDate:v7 reply:v11];

  LODWORD(v8) = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __53__EKEventStore_countOfEventsFromStartDate_toEndDate___block_invoke(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __53__EKEventStore_countOfEventsFromStartDate_toEndDate___block_invoke_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

- (int)countOfEventsCalendarFromStartDate:(id)a3 toEndDate:(id)a4 ByCalendars:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v11 = [v10 valueForKey:@"CADObjectID"];
  v12 = [(EKEventStore *)self connection];
  v13 = [v12 CADOperationProxySync];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__EKEventStore_countOfEventsCalendarFromStartDate_toEndDate_ByCalendars___block_invoke;
  v15[3] = &unk_1E7800C40;
  v15[4] = &v16;
  [v13 CADOccurrenceCacheGetOccurrenceCountOrSumDurationWithStartDate:v8 endDate:v9 calendarIDs:v11 sumDuration:0 reply:v15];

  LODWORD(v12) = *(v17 + 6);
  _Block_object_dispose(&v16, 8);

  return v12;
}

void __73__EKEventStore_countOfEventsCalendarFromStartDate_toEndDate_ByCalendars___block_invoke(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __53__EKEventStore_countOfEventsFromStartDate_toEndDate___block_invoke_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

- (double)sumOfDurationCalendarFromStartDate:(id)a3 toEndDate:(id)a4 ByCalendars:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = [v10 valueForKey:@"CADObjectID"];
  v12 = [(EKEventStore *)self connection];
  v13 = [v12 CADOperationProxySync];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__EKEventStore_sumOfDurationCalendarFromStartDate_toEndDate_ByCalendars___block_invoke;
  v16[3] = &unk_1E7800C40;
  v16[4] = &v17;
  [v13 CADOccurrenceCacheGetOccurrenceCountOrSumDurationWithStartDate:v8 endDate:v9 calendarIDs:v11 sumDuration:1 reply:v16];

  v14 = v18[6];
  _Block_object_dispose(&v17, 8);

  return v14;
}

void __73__EKEventStore_sumOfDurationCalendarFromStartDate_toEndDate_ByCalendars___block_invoke(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __73__EKEventStore_sumOfDurationCalendarFromStartDate_toEndDate_ByCalendars___block_invoke_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

- (unint64_t)countOfEventsInSource:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (v4)
  {
    v5 = [(EKEventStore *)self connection];
    v6 = [v5 CADOperationProxySync];
    v7 = [v4 CADObjectID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__EKEventStore_countOfEventsInSource___block_invoke;
    v11[3] = &unk_1E7800C68;
    v12 = v4;
    v13 = &v15;
    [v6 CADCountOriginalCalendarItemsBySource:v7 reply:v11];

    v8 = v16[3];
  }

  else
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_INFO, "Called countOfEventsInSource with null event", buf, 2u);
    }

    v8 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __38__EKEventStore_countOfEventsInSource___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __38__EKEventStore_countOfEventsInSource___block_invoke_cold_1(a1, v5, a2);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

- (id)doEvents:(id)a3 haveOccurrencesAfterDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__24;
  v18 = __Block_byref_object_dispose__24;
  v19 = 0;
  v8 = [v6 valueForKey:@"CADObjectID"];
  v9 = [(EKEventStore *)self connection];
  v10 = [v9 CADOperationProxySync];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__EKEventStore_doEvents_haveOccurrencesAfterDate___block_invoke;
  v13[3] = &unk_1E7800918;
  v13[4] = &v14;
  [v10 CADOccurrenceCacheDoEvents:v8 haveOccurrencesAfterDate:v7 reply:v13];

  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __50__EKEventStore_doEvents_haveOccurrencesAfterDate___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __50__EKEventStore_doEvents_haveOccurrencesAfterDate___block_invoke_cold_1(v7);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (id)calendarWithUniqueID:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DFA8]);
  v6 = [(EKEventStore *)self _allCalendars];
  v7 = [v5 initWithArray:v6];

  v8 = [(EKEventStore *)self sharedCalendarInvitationsForEntityTypes:3];
  [v7 addObjectsFromArray:v8];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 uniqueIdentifier];
        v15 = [v14 isEqualToString:v4];

        if (v15)
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)calendarWithExternalID:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(EKEventStore *)self returnEventResults])
  {
    v5 = objc_alloc(MEMORY[0x1E695DFA8]);
    v6 = [(EKEventStore *)self _allCalendars];
    v7 = [v5 initWithArray:v6];

    v8 = [(EKEventStore *)self sharedCalendarInvitationsForEntityTypes:3];
    [v7 addObjectsFromArray:v8];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 externalID];
          v15 = [v14 isEqualToString:v4];

          if (v15)
          {
            v10 = v13;
            goto LABEL_13;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v10 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_populateCalendarsByIdentifierIfNeeded
{
  v7 = a2;
  v8 = [a3 CADObjectID];
  *a1 = 138543362;
  *a4 = v8;
  _os_log_error_impl(&dword_1A805E000, v7, OS_LOG_TYPE_ERROR, "Cached calendar has no calendarIdentifier: %{public}@", a1, 0xCu);
}

- (id)_eventCalendarWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__24;
    v17 = __Block_byref_object_dispose__24;
    v18 = 0;
    calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__EKEventStore__eventCalendarWithIdentifier___block_invoke;
    block[3] = &unk_1E77FD4B8;
    block[4] = self;
    v12 = &v13;
    v11 = v4;
    dispatch_sync(calendarSourcesAndDefaultsQueue, block);
    if (v14[5])
    {
      v7 = [EKCalendar alloc];
      v8 = [(EKObject *)v7 initWithPersistentObject:v14[5]];
    }

    else
    {
      v8 = 0;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __45__EKEventStore__eventCalendarWithIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _populateCalendarsByIdentifierIfNeeded];
  v2 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (EKCalendar)calendarWithIdentifier:(NSString *)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = identifier;
  if ([(EKEventStore *)self returnEventResults])
  {
    v5 = [(EKEventStore *)self _eventCalendarWithIdentifier:v4];
    if (v5)
    {
      goto LABEL_16;
    }

    [(EKEventStore *)self sharedCalendarInvitationsForEntityTypes:3];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v19 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 calendarIdentifier];
          v13 = [v12 isEqualToString:v4];

          if (v13)
          {
            v5 = v11;

            goto LABEL_16;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  if ([(EKEventStore *)self returnReminderResults])
  {
    v5 = [(EKReminderStore *)self->_reminderStore calendarWithIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

LABEL_16:

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)calendarsWithIdentifiers:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(EKEventStore *)self calendarWithIdentifier:*(*(&v15 + 1) + 8 * i), v15];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)calendarsWithObjectIDs:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(EKEventStore *)self publicObjectWithObjectID:*(*(&v15 + 1) + 8 * i), v15];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)familyCalendarsWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__EKEventStore_familyCalendarsWithCompletion___block_invoke;
  v6[3] = &unk_1E7800C90;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [EKFamilyCircleManager requestFamilyShareesWithCompletion:v6];
}

void __46__EKEventStore_familyCalendarsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [*(a1 + 32) calendarsForEntityType:0];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([EKFamilyCircleManager isFamilyCalendar:v10 givenFamilySharees:v3])
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)calendarWithExternalURI:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [EKEventStore calendarWithExternalURI:];
  }

  v9 = 0;
  v5 = [(EKEventStore *)self _parseURI:v4 expectedScheme:@"x-apple-calendar" identifier:&v9 options:0];
  v6 = v9;
  if (v5)
  {
    v7 = [(EKEventStore *)self calendarWithIdentifier:v6];
  }

  else
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore calendarWithExternalURI:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)uniqueIdentifiersForEventsWithObjectIDs:(id)a3
{
  v88 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v49 = v3;
  if (![v3 count])
  {
    v44 = [MEMORY[0x1E695DFD8] set];
    goto LABEL_54;
  }

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  registeredQueue = self->_registeredQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__EKEventStore_uniqueIdentifiersForEventsWithObjectIDs___block_invoke;
  block[3] = &unk_1E77FD7C8;
  v6 = v49;
  v79 = v6;
  v80 = self;
  v7 = v4;
  v81 = v7;
  dispatch_sync(registeredQueue, block);
  v8 = [v6 mutableCopy];
  v9 = +[(EKPersistentCalendarItem *)EKPersistentEvent];
  v10 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v7, "count")}];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v74 objects:v87 count:16];
  if (v12)
  {
    v13 = *v75;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v75 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v74 + 1) + 8 * i);
        v16 = [v15 loadedOrUpdatedPropertyValue:v9 wasAvailable:0];
        if (v16)
        {
          [v10 addObject:v16];
          v17 = [v15 objectID];
          [v8 removeObject:v17];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v74 objects:v87 count:16];
    }

    while (v12);
  }

  if ([v8 count])
  {
    if (!self->_deletedEventUniqueIdentifiersCache)
    {
      goto LABEL_23;
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v18 = [v8 allObjects];
    v19 = [v18 countByEnumeratingWithState:&v70 objects:v86 count:16];
    if (v19)
    {
      v20 = *v71;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v71 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v70 + 1) + 8 * j);
          v23 = [(NSCache *)self->_deletedEventUniqueIdentifiersCache objectForKey:v22];
          if (v23)
          {
            [v10 addObject:v23];
            [v8 removeObject:v22];
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v70 objects:v86 count:16];
      }

      while (v19);
    }

    if ([v8 count])
    {
LABEL_23:
      v53 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      v24 = [(EKEventStore *)self database];
      v25 = [v24 databaseRestoreGeneration];

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v26 = v8;
      v27 = [v26 countByEnumeratingWithState:&v66 objects:v85 count:16];
      if (v27)
      {
        v28 = *v67;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v67 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v66 + 1) + 8 * k);
            if (([v30 isTemporary] & 1) == 0 && objc_msgSend(v30, "entityType") == 2)
            {
              v31 = [v30 CADObjectIDWithGeneration:v25];
              [v53 addObject:v31];
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v66 objects:v85 count:16];
        }

        while (v27);
      }

      if (v53)
      {
        v60 = 0;
        v61 = &v60;
        v62 = 0x3032000000;
        v63 = __Block_byref_object_copy__24;
        v64 = __Block_byref_object_dispose__24;
        v65 = 0;
        v32 = [(EKEventStore *)self database];
        v33 = [v32 CADOperationProxySync];
        v84 = v9;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __56__EKEventStore_uniqueIdentifiersForEventsWithObjectIDs___block_invoke_2;
        v59[3] = &unk_1E7800918;
        v59[4] = &v60;
        [v33 CADObjects:v53 getPropertiesWithNames:v34 reply:v59];

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        obj = v61[5];
        v51 = [obj countByEnumeratingWithState:&v55 objects:v83 count:16];
        if (v51)
        {
          v50 = *v56;
          while (2)
          {
            for (m = 0; m != v51; ++m)
            {
              if (*v56 != v50)
              {
                objc_enumerationMutation(obj);
              }

              v36 = *(*(&v55 + 1) + 8 * m);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                v44 = 0;
                goto LABEL_48;
              }

              v37 = v36;
              v38 = [v37 loadedValues];
              v39 = [v38 firstObject];

              if (v39)
              {
                v52 = [v37 objectID];
                v40 = [EKObjectID objectIDWithCADObjectID:v52];
                v82 = v9;
                v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
                v42 = [v37 loadedValues];
                v43 = [(EKEventStore *)self registerFetchedObjectWithID:v40 withDefaultLoadedPropertyKeys:v41 values:v42];

                [v10 addObject:v39];
              }
            }

            v51 = [obj countByEnumeratingWithState:&v55 objects:v83 count:16];
            if (v51)
            {
              continue;
            }

            break;
          }
        }

        v44 = [v10 copy];
LABEL_48:
        _Block_object_dispose(&v60, 8);
      }

      else
      {
        v44 = [v10 copy];
      }

      goto LABEL_53;
    }

    v45 = [v10 copy];
  }

  else
  {
    v45 = [v10 copy];
  }

  v44 = v45;
LABEL_53:

LABEL_54:
  v46 = *MEMORY[0x1E69E9840];

  return v44;
}

void __56__EKEventStore_uniqueIdentifiersForEventsWithObjectIDs___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 entityType] == 2)
        {
          v8 = [*(*(a1 + 40) + 440) objectForKeyedSubscript:v7];
          if (v8)
          {
            [*(a1 + 48) addObject:v8];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __56__EKEventStore_uniqueIdentifiersForEventsWithObjectIDs___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __56__EKEventStore_uniqueIdentifiersForEventsWithObjectIDs___block_invoke_2_cold_1();
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)uniqueIdentifiersForAllObjectsWithChangesRelatedToObjects:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) frozenObject];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [EKPersistentObject allObjectsWithChangesRelatedToObjects:v4];
  v12 = [v11 valueForKey:@"uniqueIdentifier"];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (int)syncErrorCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(EKEventStore *)self connection];
  v3 = [v2 CADOperationProxySync];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__EKEventStore_syncErrorCount__block_invoke;
  v5[3] = &unk_1E7800C40;
  v5[4] = &v6;
  [v3 CADDatabaseGetErrorCount:v5];

  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __30__EKEventStore_syncErrorCount__block_invoke(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __30__EKEventStore_syncErrorCount__block_invoke_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

- (id)eventsWithErrorsPerSourceID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__24;
  v12 = __Block_byref_object_dispose__24;
  v13 = 0;
  v3 = [(EKEventStore *)self connection];
  v4 = [v3 CADOperationProxySync];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__EKEventStore_eventsWithErrorsPerSourceID__block_invoke;
  v7[3] = &unk_1E7800798;
  v7[4] = self;
  v7[5] = &v8;
  [v4 CADDatabaseGetEventsWithErrorsPerSource:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __43__EKEventStore_eventsWithErrorsPerSourceID__block_invoke(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __43__EKEventStore_eventsWithErrorsPerSourceID__block_invoke_cold_1(v7);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count") >> 1}];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [EKObjectID objectIDWithCADObjectID:*(*(&v21 + 1) + 8 * i), v21];
          v18 = v17;
          if (v14)
          {
            v19 = [*(a1 + 32) publicObjectWithFetchedObjectID:v17];
            [*(*(*(a1 + 40) + 8) + 40) setObject:v19 forKeyedSubscript:v14];

            v14 = 0;
          }

          else
          {
            v14 = v17;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (EKImageCache)imageCache
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  registeredQueue = self->_registeredQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__EKEventStore_imageCache__block_invoke;
  v5[3] = &unk_1E77FD530;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(registeredQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __26__EKEventStore_imageCache__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageCache];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)_imageCache
{
  dispatch_assert_queue_V2(self->_registeredQueue);
  imageCache = self->_imageCache;
  if (!imageCache)
  {
    v4 = objc_alloc_init(EKImageCache);
    v5 = self->_imageCache;
    self->_imageCache = v4;

    imageCache = self->_imageCache;
  }

  return imageCache;
}

- (void)_uncacheImage:(id)a3
{
  v5 = a3;
  if ([v5 entityType] == 28)
  {
    v4 = [(EKEventStore *)self _imageCache];
    [v4 uncacheImage:v5];
  }
}

- (void)_clearImageCache
{
  dispatch_assert_queue_V2(self->_registeredQueue);
  imageCache = self->_imageCache;
  self->_imageCache = 0;
}

- (id)colorWithProviderIdentifier:(id)a3 externalIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__24;
  v17 = __Block_byref_object_dispose__24;
  v18 = 0;
  v8 = [(EKEventStore *)self connection];
  v9 = [v8 CADOperationProxySync];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__EKEventStore_colorWithProviderIdentifier_externalIdentifier___block_invoke;
  v12[3] = &unk_1E7800A70;
  v12[4] = &v13;
  [v9 CADDatabaseGetColorWithProviderIdentifier:v6 externalID:v7 reply:v12];

  if (v14[5])
  {
    v10 = [(EKEventStore *)self publicObjectWithFetchedObjectID:?];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

void __63__EKEventStore_colorWithProviderIdentifier_externalIdentifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __63__EKEventStore_colorWithProviderIdentifier_externalIdentifier___block_invoke_cold_1(v6);
      if (!v5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  if (v5)
  {
LABEL_4:
    v7 = [EKObjectID objectIDWithCADObjectID:v5];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

LABEL_5:
}

- (BOOL)saveColor:(id)a3 commit:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    *a5 = 0;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = [v8 eventStore];

  if (v10 != self)
  {
    if (a5)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
      *a5 = LOBYTE(v11) = 0;
      goto LABEL_13;
    }

LABEL_12:
    LOBYTE(v11) = 0;
    goto LABEL_13;
  }

  if (![v9 validate:a5] || !objc_msgSend(v9, "save:", a5))
  {
    goto LABEL_12;
  }

  [(EKEventStore *)self _addObjectToPendingCommits:v9];
  v11 = [(EKEventStore *)self save:a5];
  if (v11 && v6)
  {
    LOBYTE(v11) = [(EKEventStore *)self commitWithRollback:a5];
  }

LABEL_13:

  return v11;
}

- (id)occurrenceCacheGetOccurrencesForCalendars:(id)a3 onDay:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__24;
  v31 = __Block_byref_object_dispose__24;
  v32 = 0;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v23 + 1) + 8 * i) CADObjectID];
        [v8 addObject:v13];
      }

      v10 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v10);
  }

  v14 = [(EKEventStore *)self connection];
  v15 = [v14 CADOperationProxySync];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__EKEventStore_occurrenceCacheGetOccurrencesForCalendars_onDay___block_invoke;
  v20[3] = &unk_1E77FED28;
  v16 = v8;
  v21 = v16;
  v22 = &v27;
  [v15 CADOccurrenceCacheGetOccurrencesForCalendars:v16 onDay:v7 reply:v20];

  v17 = v28[5];
  _Block_object_dispose(&v27, 8);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __64__EKEventStore_occurrenceCacheGetOccurrencesForCalendars_onDay___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __64__EKEventStore_occurrenceCacheGetOccurrencesForCalendars_onDay___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v7 = [v5 CalMap:&__block_literal_global_414];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

id __64__EKEventStore_occurrenceCacheGetOccurrencesForCalendars_onDay___block_invoke_411(uint64_t a1, void *a2)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"nextReminderDate"];
  v4 = [v2 objectForKeyedSubscript:@"objectID"];
  v5 = [EKObjectID objectIDWithCADObjectID:v4];

  v6 = [v2 objectForKeyedSubscript:@"occurrenceDate"];

  if (v3)
  {
    v16[0] = @"occurrenceDate";
    v16[1] = @"objectID";
    v17[0] = v6;
    v17[1] = v5;
    v16[2] = @"nextReminderDate";
    v17[2] = v3;
    v7 = MEMORY[0x1E695DF20];
    v8 = v17;
    v9 = v16;
    v10 = 3;
  }

  else
  {
    v14[0] = @"occurrenceDate";
    v14[1] = @"objectID";
    v15[0] = v6;
    v15[1] = v5;
    v7 = MEMORY[0x1E695DF20];
    v8 = v15;
    v9 = v14;
    v10 = 2;
  }

  v11 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)occurrenceCacheGetOccurrenceCountsForCalendars:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__24;
  v28 = __Block_byref_object_dispose__24;
  v29 = 0;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v20 + 1) + 8 * i) CADObjectID];
        [v5 addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v7);
  }

  v11 = [(EKEventStore *)self connection];
  v12 = [v11 CADOperationProxySync];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__EKEventStore_occurrenceCacheGetOccurrenceCountsForCalendars___block_invoke;
  v17[3] = &unk_1E77FED28;
  v13 = v5;
  v18 = v13;
  v19 = &v24;
  [v12 CADOccurrenceCacheGetOccurrenceCountsForCalendars:v13 reply:v17];

  v14 = v25[5];
  _Block_object_dispose(&v24, 8);

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void __63__EKEventStore_occurrenceCacheGetOccurrenceCountsForCalendars___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __63__EKEventStore_occurrenceCacheGetOccurrenceCountsForCalendars___block_invoke_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

void __38__EKEventStore_setShowDeclinedEvents___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __38__EKEventStore_setShowDeclinedEvents___block_invoke_cold_1(a1, v3);
    }
  }
}

void __34__EKEventStore_showDeclinedEvents__block_invoke_2(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __34__EKEventStore_showDeclinedEvents__block_invoke_2_cold_1(v5);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a3;
}

- (void)showDeclinedEventsChanged:(id)a3
{
  calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EKEventStore_showDeclinedEventsChanged___block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(calendarSourcesAndDefaultsQueue, block);
}

void __42__EKEventStore_showDeclinedEventsChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 184);
  *(v1 + 184) = 0;
}

void __42__EKEventStore_setShowCompletedReminders___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __42__EKEventStore_setShowCompletedReminders___block_invoke_cold_1(a1, v3);
    }
  }
}

- (BOOL)showCompletedReminders
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__EKEventStore_showCompletedReminders__block_invoke;
  v5[3] = &unk_1E77FD440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(calendarSourcesAndDefaultsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__EKEventStore_showCompletedReminders__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 192);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:CalShowCompletedReminders()];
    v4 = *(a1 + 32);
    v5 = *(v4 + 192);
    *(v4 + 192) = v3;

    v2 = *(*(a1 + 32) + 192);
  }

  result = [v2 BOOLValue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)showCompletedRemindersChanged:(id)a3
{
  calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EKEventStore_showCompletedRemindersChanged___block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(calendarSourcesAndDefaultsQueue, block);
}

void __46__EKEventStore_showCompletedRemindersChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 192);
  *(v1 + 192) = 0;
}

- (void)rebuildOccurrenceCache
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__EKEventStore_rebuildOccurrenceCache__block_invoke(uint64_t a1, int a2)
{
  v3 = EKLogHandle;
  v4 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v4)
    {
      __38__EKEventStore_rebuildOccurrenceCache__block_invoke_cold_1(v3);
    }
  }

  else if (v4)
  {
    __38__EKEventStore_rebuildOccurrenceCache__block_invoke_cold_2();
  }
}

- (BOOL)birthdayCalendarEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(EKEventStore *)self connection];
  v3 = [v2 CADOperationProxySync];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__EKEventStore_birthdayCalendarEnabled__block_invoke;
  v5[3] = &unk_1E77FFEA0;
  v5[4] = &v6;
  [v3 CADDatabaseGetBirthdayCalendarEnabledWithReply:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __39__EKEventStore_birthdayCalendarEnabled__block_invoke(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __39__EKEventStore_birthdayCalendarEnabled__block_invoke_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

void __43__EKEventStore_setBirthdayCalendarEnabled___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __43__EKEventStore_setBirthdayCalendarEnabled___block_invoke_cold_1(v2);
    }
  }
}

- (int)birthdayCalendarVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  v2 = [(EKEventStore *)self connection];
  v3 = [v2 CADOperationProxySync];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__EKEventStore_birthdayCalendarVersion__block_invoke;
  v5[3] = &unk_1E7800C40;
  v5[4] = &v6;
  [v3 CADDatabaseGetBirthdayCalendarVersionWithReply:v5];

  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __39__EKEventStore_birthdayCalendarVersion__block_invoke(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __39__EKEventStore_birthdayCalendarVersion__block_invoke_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

void __43__EKEventStore_setBirthdayCalendarVersion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __43__EKEventStore_setBirthdayCalendarVersion___block_invoke_cold_1(a1, v3);
    }
  }
}

- (EKCalendar)suggestedEventCalendar
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__EKEventStore_suggestedEventCalendar__block_invoke;
  v6[3] = &unk_1E77FD440;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(calendarSourcesAndDefaultsQueue, v6);
  if (v8[5])
  {
    v4 = [(EKEventStore *)self calendarWithID:?];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __38__EKEventStore_suggestedEventCalendar__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[4])
  {
    goto LABEL_5;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__24;
  v14 = __Block_byref_object_dispose__24;
  v15 = 0;
  v3 = [v2 connection];
  v4 = [v3 CADOperationProxySync];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__EKEventStore_suggestedEventCalendar__block_invoke_2;
  v9[3] = &unk_1E77FFEC8;
  v9[4] = *(a1 + 32);
  v9[5] = &v10;
  [v4 CADDatabaseGetSuggestedEventCalendarWithReply:v9];

  v5 = v11[5];
  if (v5)
  {
    objc_storeStrong((*(a1 + 32) + 32), v5);
  }

  _Block_object_dispose(&v10, 8);

  if (*(*(a1 + 32) + 32))
  {
LABEL_5:
    v6 = [EKObjectID objectIDWithCADObjectID:?];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void __38__EKEventStore_suggestedEventCalendar__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __38__EKEventStore_suggestedEventCalendar__block_invoke_2_cold_1(v6);
    }
  }

  else
  {
    v7 = [*(a1 + 32) database];
    v8 = [v5 stampedCopyWithGeneration:{objc_msgSend(v7, "databaseRestoreGeneration")}];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (void)removeSuggestedEventCalendar
{
  calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__EKEventStore_removeSuggestedEventCalendar__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(calendarSourcesAndDefaultsQueue, block);
}

void __44__EKEventStore_removeSuggestedEventCalendar__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v1 = [v2 CADOperationProxySync];
  [v1 CADDatabaseRemoveSuggestedEventCalendarWithReply:&__block_literal_global_431];
}

void __44__EKEventStore_removeSuggestedEventCalendar__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __44__EKEventStore_removeSuggestedEventCalendar__block_invoke_2_cold_1(v2);
    }
  }
}

- (void)confirmSuggestedEvent:(id)a3
{
  v4 = [a3 suggestionInfo];
  v5 = [v4 uniqueKey];

  if (v5)
  {
    v6 = [(objc_class *)[(EKEventStore *)self _SGSuggestionsServiceClass] serviceForEvents];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__EKEventStore_confirmSuggestedEvent___block_invoke;
    v8[3] = &unk_1E7800D38;
    v9 = v6;
    v7 = v6;
    [v7 eventFromUniqueId:v5 withCompletion:v8];
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore confirmSuggestedEvent:];
  }
}

uint64_t __38__EKEventStore_confirmSuggestedEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 recordId];
  v6 = v5;
  if (!a3 && v5)
  {
    v8 = v5;
    v5 = [*(a1 + 32) confirmEventByRecordId:v5 withCompletion:&__block_literal_global_434];
    v6 = v8;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

void __38__EKEventStore_confirmSuggestedEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __38__EKEventStore_confirmSuggestedEvent___block_invoke_2_cold_1();
  }
}

- (void)acceptSuggestedEvent:(id)a3
{
  v4 = a3;
  v5 = [(EKEventStore *)self defaultCalendarForNewEvents];
  [(EKEventStore *)self acceptSuggestedEvent:v4 placeOnCalendar:v5];
}

- (void)acceptSuggestedEvent:(id)a3 placeOnCalendar:(id)a4
{
  v6 = a3;
  [v6 setCalendar:a4];
  v10 = 0;
  v7 = [(EKEventStore *)self saveEvent:v6 span:0 error:&v10];
  v8 = v10;
  v9 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [(EKEventStore *)v7 acceptSuggestedEvent:v8 placeOnCalendar:v9];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v7)
  {
LABEL_3:
    [(EKEventStore *)self confirmSuggestedEvent:v6];
  }

LABEL_4:
}

- (void)deleteSuggestedEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 suggestionInfo];
  v6 = [v5 uniqueKey];
  v7 = [v6 copy];

  v16 = 0;
  v8 = [(EKEventStore *)self removeEvent:v4 span:2 error:&v16];
  v9 = v16;
  v10 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [(EKEventStore *)v8 deleteSuggestedEvent:v9, v10];
  }

  if (v7)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKEventStore deleteSuggestedEvent:];
    }

    v12 = [(objc_class *)[(EKEventStore *)self _SGSuggestionsServiceClass] serviceForEvents];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __37__EKEventStore_deleteSuggestedEvent___block_invoke;
    v14[3] = &unk_1E7800D38;
    v15 = v12;
    v13 = v12;
    [v13 eventFromUniqueId:v7 withCompletion:v14];
  }

  else if (!v7 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore deleteSuggestedEvent:];
  }
}

uint64_t __37__EKEventStore_deleteSuggestedEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 recordId];
  v6 = v5;
  if (!a3 && v5)
  {
    v8 = v5;
    v5 = [*(a1 + 32) rejectEventByRecordId:v5 withCompletion:&__block_literal_global_443];
    v6 = v8;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

void __37__EKEventStore_deleteSuggestedEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __37__EKEventStore_deleteSuggestedEvent___block_invoke_2_cold_1();
  }
}

- (BOOL)canModifySuggestedEventCalendar
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EKEventStore_canModifySuggestedEventCalendar__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  if (canModifySuggestedEventCalendar_onceToken != -1)
  {
    dispatch_once(&canModifySuggestedEventCalendar_onceToken, block);
  }

  return canModifySuggestedEventCalendar_canModifySuggestedEventCalendar;
}

void __47__EKEventStore_canModifySuggestedEventCalendar__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 360);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EKEventStore_canModifySuggestedEventCalendar__block_invoke_2;
  block[3] = &unk_1E77FD418;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void __47__EKEventStore_canModifySuggestedEventCalendar__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v1 = [v2 CADOperationProxySync];
  [v1 CADDatabaseCanModifySuggestedEventCalendar:&__block_literal_global_448];
}

void __47__EKEventStore_canModifySuggestedEventCalendar__block_invoke_3(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __47__EKEventStore_canModifySuggestedEventCalendar__block_invoke_3_cold_1(v3);
    }
  }

  else
  {
    canModifySuggestedEventCalendar_canModifySuggestedEventCalendar = a3;
  }
}

- (EKCalendar)naturalLanguageSuggestedEventCalendar
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__EKEventStore_naturalLanguageSuggestedEventCalendar__block_invoke;
  v6[3] = &unk_1E77FD440;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(calendarSourcesAndDefaultsQueue, v6);
  if (v8[5])
  {
    v4 = [(EKEventStore *)self calendarWithCADID:?];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __53__EKEventStore_naturalLanguageSuggestedEventCalendar__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[5];
  if (v3)
  {
    v4 = (*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v5 = [v2 connection];
    v6 = [v5 CADOperationProxySync];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__EKEventStore_naturalLanguageSuggestedEventCalendar__block_invoke_2;
    v7[3] = &unk_1E77FFEC8;
    v8 = *(a1 + 32);
    [v6 CADDatabaseGetNaturalLanguageSuggestedEventCalendarWithReply:v7];

    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = (*(a1 + 32) + 40);
  }

  objc_storeStrong(v4, v3);
}

void __53__EKEventStore_naturalLanguageSuggestedEventCalendar__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __53__EKEventStore_naturalLanguageSuggestedEventCalendar__block_invoke_2_cold_1(v6);
    }
  }

  else
  {
    v7 = [*(a1 + 32) database];
    v8 = [v5 stampedCopyWithGeneration:{objc_msgSend(v7, "databaseRestoreGeneration")}];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (BOOL)saveNotification:(id)a3 commit:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    *a5 = 0;
  }

  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil notification passed in to [EKEventStore saveNotification:commit:error:]"];
    goto LABEL_13;
  }

  v10 = [v8 eventStore];

  if (v10 != self)
  {
    if (a5)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
      *a5 = LOBYTE(v11) = 0;
      goto LABEL_14;
    }

LABEL_13:
    LOBYTE(v11) = 0;
    goto LABEL_14;
  }

  if (![v9 validate:a5] || !objc_msgSend(v9, "save:", a5))
  {
    goto LABEL_13;
  }

  [(EKEventStore *)self _addObjectToPendingCommits:v9];
  v11 = [(EKEventStore *)self save:a5];
  if (v11 && v6)
  {
    LOBYTE(v11) = [(EKEventStore *)self commitWithRollback:a5];
  }

LABEL_14:

  return v11;
}

- (BOOL)saveNotificationCollection:(id)a3 commit:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  if (a5)
  {
    *a5 = 0;
    if (![(EKEventStore *)self canModifyCalendarDatabase])
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = 30;
LABEL_9:
      [v9 errorWithEKErrorCode:v10];
      *a5 = LOBYTE(v12) = 0;
      goto LABEL_17;
    }
  }

  else if (![(EKEventStore *)self canModifyCalendarDatabase])
  {
    goto LABEL_16;
  }

  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Nil notification collection passed in to [EKEventStore saveNotificationCollection:commit:error:]"];
    goto LABEL_16;
  }

  v11 = [v8 eventStore];

  if (v11 != self)
  {
    if (a5)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = 11;
      goto LABEL_9;
    }

LABEL_16:
    LOBYTE(v12) = 0;
    goto LABEL_17;
  }

  if (![v8 validate:a5] || !objc_msgSend(v8, "save:", a5))
  {
    goto LABEL_16;
  }

  [(EKEventStore *)self _addObjectToPendingCommits:v8];
  v12 = [(EKEventStore *)self save:a5];
  if (v12 && v6)
  {
    LOBYTE(v12) = [(EKEventStore *)self commitWithRollback:a5];
  }

LABEL_17:

  return v12;
}

- (id)sharedCalendarInvitationsForEntityTypes:(unint64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E6992FA0] currentProcessIsCalendarDaemon] & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessHasSyncClientEntitlement") & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessHasCalendarToolEntitlement") & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessIsFirstPartyCalendarApp") & 1) != 0 || objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessHasTestingEntitlement"))
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__24;
    v27 = __Block_byref_object_dispose__24;
    v28 = 0;
    v4 = [(EKEventStore *)self connection];
    v5 = [v4 CADOperationProxySync];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__EKEventStore_sharedCalendarInvitationsForEntityTypes___block_invoke;
    v22[3] = &unk_1E7800D80;
    v22[4] = &v23;
    v22[5] = a3;
    [v5 CADDatabaseGetSharedCalendarInvitationsWithReply:v22];

    v16 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v24[5];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v29 count:16];
    if (v7)
    {
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [EKObjectID objectIDWithCADObjectID:*(*(&v18 + 1) + 8 * i), v16];
          v11 = [(EKEventStore *)self registerFetchedObjectWithID:v10];
          if (v11)
          {
            v12 = [(EKObject *)[EKCalendar alloc] initWithPersistentObject:v11];
            if (([(EKCalendar *)v12 allowedEntityTypes]& a3) != 0)
            {
              [v16 addObject:v12];
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v18 objects:v29 count:16];
      }

      while (v7);
    }

    v13 = [v16 copy];
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __56__EKEventStore_sharedCalendarInvitationsForEntityTypes___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __56__EKEventStore_sharedCalendarInvitationsForEntityTypes___block_invoke_cold_1(a1, v7);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (void)respondToSharedCalendarInvitation:(id)a3 withStatus:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 objectID];
  v8 = [(EKEventStore *)self calendarWithID:v7];

  v9 = [v6 source];

  if (v8)
  {
    if (a4 <= 2)
    {
      if (a4)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v11 = 2;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if (a4 - 3 > 3)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unsupported status for responding to shared calendar invitation. Only accept and decline are supported" userInfo:0];
    [v10 raise];

LABEL_5:
    v11 = 1;
LABEL_6:
    v12 = [MEMORY[0x1E69998A8] sharedConnection];
    v13 = [v8 calendarIdentifier];
    v14 = [v9 externalID];
    [v12 respondToSharedCalendarInvite:v11 forCalendarWithID:v13 accountID:v14 queue:MEMORY[0x1E69E96A0] completionBlock:&__block_literal_global_461];

    goto LABEL_9;
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore respondToSharedCalendarInvitation:withStatus:];
  }

LABEL_9:
}

void __61__EKEventStore_respondToSharedCalendarInvitation_withStatus___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543874;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&dword_1A805E000, v9, OS_LOG_TYPE_ERROR, "Failed to respond to shared calendar invitation with calendar ID %{public}@, account ID %{public}@: %@", &v11, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)resourceChangesForEntityTypes:(unint64_t)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__24;
  v28 = __Block_byref_object_dispose__24;
  v29 = 0;
  v5 = [(EKEventStore *)self connection];
  v6 = [v5 CADOperationProxySync];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __46__EKEventStore_resourceChangesForEntityTypes___block_invoke;
  v23[3] = &unk_1E7800918;
  v23[4] = &v24;
  [v6 CADDatabaseGetResourceChanges:v23];

  if (v25[5])
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v25[5];
    v7 = [obj countByEnumeratingWithState:&v19 objects:v30 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [EKObjectID objectIDWithCADObjectID:*(*(&v19 + 1) + 8 * i), v17];
          v11 = [(EKEventStore *)self registerFetchedObjectWithID:v10];
          if (v11)
          {
            v12 = [(EKEventStore *)self publicObjectWithPersistentObject:v11];
            v13 = [v12 calendarItem];
            v14 = [v12 calendar];
            if (a3 & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) || (a3 & 2) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) || !v13 && ([v14 allowedEntityTypes] & a3) != 0)
            {
              [v17 addObject:v12];
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v19 objects:v30 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v24, 8);

  v15 = *MEMORY[0x1E69E9840];

  return v17;
}

void __46__EKEventStore_resourceChangesForEntityTypes___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __46__EKEventStore_resourceChangesForEntityTypes___block_invoke_cold_1(v7);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (BOOL)markResourceChangeAlertedAndSave:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = [v6 eventStore];

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [v7 eventStore];

  if (v9 != self)
  {
    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
      *a4 = v10 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__24;
  v20 = __Block_byref_object_dispose__24;
  v21 = 0;
  v12 = [(EKEventStore *)self connection];
  v13 = [v12 CADOperationProxySync];
  v14 = [v7 CADObjectID];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__EKEventStore_markResourceChangeAlertedAndSave_error___block_invoke;
  v15[3] = &unk_1E7800B50;
  v15[4] = &v16;
  v15[5] = &v22;
  [v13 CADResourceChange:v14 setAlertedWithError:v15];

  if (a4)
  {
    *a4 = v17[5];
  }

  if (*(v23 + 24) == 1)
  {
    [v7 clearAlertedStatus];
    v10 = *(v23 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
LABEL_9:

  return v10 & 1;
}

void __55__EKEventStore_markResourceChangeAlertedAndSave_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __55__EKEventStore_markResourceChangeAlertedAndSave_error___block_invoke_cold_1();
    }

    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)removeResourceChange:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x1E695DEC8] arrayWithObject:v6];
    v8 = [(EKEventStore *)self removeResourceChanges:v7 error:a4];
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithEKErrorCode:5];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)removeResourceChanges:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  if (!v6)
  {
    goto LABEL_17;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 eventStore];

        if (v14 != self)
        {
          if (a4)
          {
            *a4 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
          }

          goto LABEL_17;
        }

        v15 = [v13 persistentObject];
        [(EKEventStore *)self _deleteObject:v15];

        [(EKEventStore *)self _addRemovedObjectToPendingCommits:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if ([(EKEventStore *)self save:a4])
  {
    v16 = [(EKEventStore *)self commitWithRollback:a4];
  }

  else
  {
LABEL_17:
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)removeResourceChangesForCalendarItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(EKEventStore *)self resourceChangesForEntityTypes:3];
  v8 = MEMORY[0x1E696AE18];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__EKEventStore_removeResourceChangesForCalendarItem_error___block_invoke;
  v13[3] = &unk_1E7800DA8;
  v14 = v6;
  v9 = v6;
  v10 = [v8 predicateWithBlock:v13];
  v11 = [v7 filteredArrayUsingPredicate:v10];

  LOBYTE(a4) = [(EKEventStore *)self removeResourceChanges:v11 error:a4];
  return a4;
}

uint64_t __59__EKEventStore_removeResourceChangesForCalendarItem_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 calendarItem];
  v4 = [v3 calendarItemIdentifier];
  v5 = [*(a1 + 32) calendarItemIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

void __134__EKEventStore_eventNotificationsAfterDate_excludingUncheckedCalendars_filteredByShowsNotificationsFlag_earliestExpiringNotification___block_invoke(void *a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v39 = a5;
  v13 = a6;
  v14 = v13;
  if (a2)
  {
    v15 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __134__EKEventStore_eventNotificationsAfterDate_excludingUncheckedCalendars_filteredByShowsNotificationsFlag_earliestExpiringNotification___block_invoke_cold_1(v15);
    }
  }

  else
  {
    v36 = v13;
    obj = a6;
    v16 = [v12 count];
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v16];
    v18 = *(a1[5] + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    if (v16)
    {
      v20 = 0;
      v21 = 0x1E77FB000uLL;
      v22 = 0x1E77FB000uLL;
      v38 = v16;
      do
      {
        v23 = [v11 objectAtIndexedSubscript:v20];
        v24 = [v23 intValue];

        v25 = [v12 objectAtIndexedSubscript:v20];
        v26 = [*(v21 + 2560) objectIDWithCADObjectID:v25];
        if (v24 > 1)
        {
          v35 = [objc_alloc(*(v22 + 2136)) initWithType:v24 objectID:v26 eventStore:a1[4]];
        }

        else
        {
          v27 = objc_alloc(MEMORY[0x1E695DF00]);
          [v39 objectAtIndexedSubscript:v20];
          v40 = v25;
          v28 = v22;
          v29 = a1;
          v30 = v12;
          v31 = v11;
          v33 = v32 = v21;
          [v33 doubleValue];
          v34 = [v27 initWithTimeIntervalSinceReferenceDate:?];

          v21 = v32;
          v11 = v31;
          v12 = v30;
          a1 = v29;
          v22 = v28;
          v25 = v40;
          v35 = [objc_alloc(*(v22 + 2136)) initWithType:v24 objectID:v26 date:v34 eventStore:a1[4]];

          v16 = v38;
        }

        [*(*(a1[5] + 8) + 40) addObject:v35];

        ++v20;
      }

      while (v16 != v20);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), obj);
    v14 = v36;
  }
}

void __75__EKEventStore_eventNotificationCountExcludingUncheckedCalendars_expanded___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __75__EKEventStore_eventNotificationCountExcludingUncheckedCalendars_expanded___block_invoke_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

void __132__EKEventStore_eventNotificationCountForSource_excludingDelegateSources_filteredByShowsNotificationsFlag_excludeObjectIDs_expanded___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a2)
  {
    v8 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __75__EKEventStore_eventNotificationCountExcludingUncheckedCalendars_expanded___block_invoke_cold_1(v8);
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (!a3)
        {
          break;
        }

        a3 -= [v7 containsObject:{*(*(&v15 + 1) + 8 * v13++), v15}];
        if (v11 == v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v11)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)acknowledgeNotifications:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![*(*(&v14 + 1) + 8 * i) acknowledgeWithEventStore:self error:{a4, v14}])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (NSArray)inboxRepliedSectionItems
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  v2 = [(EKEventStore *)self connection];
  v3 = [v2 CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__EKEventStore_inboxRepliedSectionItems__block_invoke;
  v6[3] = &unk_1E7800E20;
  v6[4] = &v7;
  [v3 CADDatabaseGetInboxRepliedSectionItems:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __40__EKEventStore_inboxRepliedSectionItems__block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __40__EKEventStore_inboxRepliedSectionItems__block_invoke_cold_1(v9);
    }
  }

  else
  {
    v10 = [v7 count];
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        v15 = [v7 objectAtIndexedSubscript:i];
        v16 = [v8 objectAtIndexedSubscript:i];
        [v16 timeIntervalSinceReferenceDate];
        v18 = v17;

        v19 = [EKObjectID objectIDWithCADObjectID:v15];
        v20 = [[EKEventOccurrenceInfo alloc] initWithObjectID:v19 date:v18];
        [*(*(*(a1 + 32) + 8) + 40) addObject:v20];
      }
    }
  }
}

- (BOOL)removeInviteReplyNotification:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695DEC8] arrayWithObject:a3];
  LOBYTE(a4) = [(EKEventStore *)self removeInviteReplyNotifications:v6 error:a4];

  return a4;
}

- (BOOL)removeInviteReplyNotifications:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  if (!v6)
  {
    goto LABEL_17;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 eventStore];

        if (v14 != self)
        {
          if (a4)
          {
            *a4 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
          }

          goto LABEL_17;
        }

        v15 = [v13 persistentObject];
        [(EKEventStore *)self _deleteObject:v15];

        [(EKEventStore *)self _addRemovedObjectToPendingCommits:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if ([(EKEventStore *)self save:a4])
  {
    v16 = [(EKEventStore *)self commitWithRollback:a4];
  }

  else
  {
LABEL_17:
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)attachmentWithUUID:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__24;
  v18 = __Block_byref_object_dispose__24;
  v19 = 0;
  v5 = [(EKEventStore *)self connection];
  v6 = [v5 CADOperationProxySync];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__EKEventStore_attachmentWithUUID___block_invoke;
  v10[3] = &unk_1E7800E48;
  v7 = v4;
  v11 = v7;
  v12 = self;
  v13 = &v14;
  [v6 CADDatabaseGetAttachmentWithUUID:v7 reply:v10];

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __35__EKEventStore_attachmentWithUUID___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __35__EKEventStore_attachmentWithUUID___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [EKObjectID objectIDWithCADObjectID:v5];
    v8 = [v6 registerFetchedObjectWithID:v7];

    if (v8)
    {
      v9 = [(EKObject *)[EKAttachment alloc] initWithPersistentObject:v8];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }
}

- (BOOL)saveAttachment:(id)a3 commit:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    *a5 = 0;
  }

  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil attachment passed in to [EKEventStore saveAttachment:commit:error:]"];
    goto LABEL_9;
  }

  if (![v8 validateWithOwner:0 error:a5])
  {
LABEL_9:
    LOBYTE(v11) = 0;
    goto LABEL_10;
  }

  v10 = [v9 eventStore];

  if (v10 != self)
  {
    if (a5)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
      *a5 = LOBYTE(v11) = 0;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (![v9 save:a5])
  {
    goto LABEL_9;
  }

  [(EKEventStore *)self _addObjectToPendingCommits:v9];
  v11 = [(EKEventStore *)self save:a5];
  if (v11 && v6)
  {
    LOBYTE(v11) = [(EKEventStore *)self commitWithRollback:a5];
  }

LABEL_10:

  return v11;
}

void __49__EKEventStore__refreshDASource_isUserRequested___block_invoke(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __49__EKEventStore__refreshDASource_isUserRequested___block_invoke_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

+ (BOOL)_shouldRefreshSource:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 isEnabled] && objc_msgSend(v4, "sourceType"))
  {
    v5 = [v4 externalID];
    v6 = [v5 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_registerObjectImmediate:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [EKEventStore _registerObjectImmediate:];
  }

  v4 = [v8 objectID];

  if (!v4)
  {
    v5 = +[EKObjectID temporaryObjectIDWithEntityType:](EKObjectID, "temporaryObjectIDWithEntityType:", [v8 entityType]);
    [v8 _setObjectID:v5 inDatabaseRestoreGeneration:0xFFFFFFFFLL];
  }

  registeredObjects = self->_registeredObjects;
  v7 = [v8 objectID];
  [(NSMutableDictionary *)registeredObjects setObject:v8 forKey:v7];

  [v8 _setEventStore:self];
}

- (void)_registerObject:(id)a3
{
  v4 = a3;
  registeredQueue = self->_registeredQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__EKEventStore__registerObject___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(registeredQueue, v7);
}

- (void)_unregisterObject:(id)a3
{
  v4 = a3;
  registeredQueue = self->_registeredQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__EKEventStore__unregisterObject___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(registeredQueue, v7);
}

uint64_t __34__EKEventStore__unregisterObject___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 440);
  if (v1)
  {
    v2 = result;
    v3 = [*(result + 40) objectID];
    [v1 removeObjectForKey:v3];

    v4 = *(v2 + 32);
    v5 = *(v2 + 40);

    return [v4 _uncacheImage:v5];
  }

  return result;
}

- (void)_detachObject:(id)a3
{
  v4 = a3;
  registeredQueue = self->_registeredQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__EKEventStore__detachObject___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(registeredQueue, v7);
}

uint64_t __30__EKEventStore__detachObject___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 440);
  if (v1)
  {
    v2 = result;
    v3 = [*(result + 40) objectID];
    [v1 removeObjectForKey:v3];

    v4 = *(v2 + 32);
    v5 = *(v2 + 40);

    return [v4 _uncacheImage:v5];
  }

  return result;
}

- (void)_reregisterObject:(id)a3 oldID:(id)a4
{
  v6 = a3;
  v7 = a4;
  registeredQueue = self->_registeredQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EKEventStore__reregisterObject_oldID___block_invoke;
  block[3] = &unk_1E77FD7C8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(registeredQueue, block);
}

void __40__EKEventStore__reregisterObject_oldID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 440) objectForKey:a1[5]];
  if (v2)
  {
    v6 = v2;
    [*(a1[4] + 440) removeObjectForKey:a1[5]];
    v3 = *(a1[4] + 440);
    v4 = a1[6];
    v5 = [v4 objectID];
    [v3 setObject:v4 forKey:v5];

    v2 = v6;
  }
}

- (void)_forgetRegisteredObjects
{
  registeredQueue = self->_registeredQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EKEventStore__forgetRegisteredObjects__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(registeredQueue, block);
}

void __40__EKEventStore__forgetRegisteredObjects__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 440) allValues];
  [v3 makeObjectsPerformSelector:sel__setEventStore_ withObject:0];

  [*(*(a1 + 32) + 440) removeAllObjects];
  [*(a1 + 32) _clearImageCache];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)_isRegisteredObject:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  registeredQueue = self->_registeredQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EKEventStore__isRegisteredObject___block_invoke;
  block[3] = &unk_1E77FD4B8;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(registeredQueue, block);
  LOBYTE(registeredQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return registeredQueue;
}

void __36__EKEventStore__isRegisteredObject___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 440);
  if (v1)
  {
    v4 = [*(a1 + 40) objectID];
    v3 = [v1 objectForKey:v4];
    *(*(*(a1 + 48) + 8) + 24) = v3 != 0;
  }
}

- (id)persistentObjectWithEntityName:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() classForEntityName:v4];

  v6 = objc_alloc_init(v5);
  [v6 _setEventStore:self];

  return v6;
}

- (id)insertedPersistentObjectWithEntityName:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() classForEntityName:v4];

  v6 = objc_alloc_init(v5);
  [(EKEventStore *)self _insertObject:v6];

  return v6;
}

- (id)_addFetchedObjectWithID:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v5 entityName];
  v8 = [v6 classForEntityName:v7];

  if (!v8)
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
    {
      [(EKEventStore *)v9 _addFetchedObjectWithID:v5];
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [v5 entityName];
    [v10 handleFailureInMethod:a2 object:self file:@"EKEventStore.m" lineNumber:6781 description:{@"Unknown entity name %@ for objectID: %@ with entity type: %d", v11, v5, objc_msgSend(v5, "entityType")}];
  }

  v12 = objc_alloc_init(v8);
  v13 = [(EKEventStore *)self database];
  [v12 _setObjectID:v5 inDatabaseRestoreGeneration:{objc_msgSend(v13, "databaseRestoreGeneration")}];

  [(EKEventStore *)self _registerObjectImmediate:v12];

  return v12;
}

- (id)registerFetchedObjectWithID:(id)a3 withDefaultLoadedPropertyKeys:(id)a4 values:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__24;
  v22 = __Block_byref_object_dispose__24;
  v23 = 0;
  registeredQueue = self->_registeredQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__EKEventStore_registerFetchedObjectWithID_withDefaultLoadedPropertyKeys_values___block_invoke;
  block[3] = &unk_1E77FD688;
  v17 = &v18;
  block[4] = self;
  v12 = v8;
  v16 = v12;
  dispatch_sync(registeredQueue, block);
  if (v9 && v10)
  {
    [v19[5] takeValuesForDefaultPropertyKeys:v9 values:v10];
  }

  v13 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v13;
}

void __81__EKEventStore_registerFetchedObjectWithID_withDefaultLoadedPropertyKeys_values___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 440) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [*(a1 + 32) _addFetchedObjectWithID:*(a1 + 40)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    MEMORY[0x1EEE66BB8](v5, v7);
  }
}

- (BOOL)objectWithIDExists:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (v4)
  {
    v5 = [(EKEventStore *)self connection];
    v6 = [v5 CADOperationProxySync];
    v7 = [v4 CADObjectIDWithGeneration:0xFFFFFFFFLL];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __35__EKEventStore_objectWithIDExists___block_invoke;
    v10[3] = &unk_1E77FED00;
    v11 = v4;
    v12 = &v13;
    [v6 CADObjectExists:v7 reply:v10];
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore objectWithIDExists:];
  }

  v8 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __35__EKEventStore_objectWithIDExists___block_invoke(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __35__EKEventStore_objectWithIDExists___block_invoke_cold_1(a1);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

- (id)objectWithObjectID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__24;
  v16 = __Block_byref_object_dispose__24;
  v17 = 0;
  registeredQueue = self->_registeredQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__EKEventStore_objectWithObjectID___block_invoke;
  block[3] = &unk_1E77FD688;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(registeredQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __35__EKEventStore_objectWithObjectID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 440) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40) && [*(a1 + 32) objectWithIDExists:*(a1 + 40)])
  {
    v5 = [*(a1 + 32) _addFetchedObjectWithID:*(a1 + 40)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    MEMORY[0x1EEE66BB8](v5, v7);
  }
}

- (id)publicObjectWithPersistentObject:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_msgSend(objc_opt_class() "meltedClass"))];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [EKEventStore publicObjectWithPersistentObject:];
  }

  return v4;
}

- (id)publicObjectWithObjectID:(id)a3
{
  v4 = [(EKEventStore *)self objectWithObjectID:a3];
  if (v4)
  {
    v5 = [(EKEventStore *)self publicObjectWithPersistentObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)publicObjectWithFetchedObjectID:(id)a3
{
  v4 = [(EKEventStore *)self registerFetchedObjectWithID:a3];
  v5 = [(EKEventStore *)self publicObjectWithPersistentObject:v4];

  return v5;
}

- (void)_trackModifiedObject:(id)a3
{
  v5 = a3;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EKEventStore__trackModifiedObject___block_invoke;
  block[3] = &unk_1E7800E70;
  v10 = self;
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_sync(unsavedChangesQueue, block);
}

uint64_t __37__EKEventStore__trackModifiedObject___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _isPendingInsert] & 1) != 0 || objc_msgSend(*(a1 + 32), "_isPendingDelete"))
  {
    __37__EKEventStore__trackModifiedObject___block_invoke_cold_1(a1);
  }

  v2 = *(*(a1 + 40) + 320);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v4 = *(a1 + 40);
    v5 = *(v4 + 320);
    *(v4 + 320) = v3;

    v2 = *(*(a1 + 40) + 320);
  }

  [v2 addObject:*(a1 + 32)];
  v6 = *(a1 + 32);

  return [v6 _setPendingUpdate:1];
}

- (void)_objectDidReset:(id)a3
{
  v4 = a3;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__EKEventStore__objectDidReset___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(unsavedChangesQueue, v7);
}

void __32__EKEventStore__objectDidReset___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 320) removeObject:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 112);
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = *(a1 + 32);
  v5 = *(v4 + 112);
  *(v4 + 112) = v3;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v2;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [*(a1 + 40) objectID];
        v13 = [v11 objectID];
        v14 = [v12 isEqual:v13];

        if ((v14 & 1) == 0)
        {
          [*(*(a1 + 32) + 112) addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [*(*(a1 + 32) + 304) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 320) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 312) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 328) removeObject:*(a1 + 40)];
  [*(a1 + 40) _setPendingDelete:0];
  [*(a1 + 40) _setPendingUpdate:0];
  [*(a1 + 40) _setPendingInsert:0];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_insertObject:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Attempt to insert a nil object.";
    goto LABEL_12;
  }

  v5 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Attempt to insert something that is not a EKPersistentObject.";
LABEL_12:
    v15 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
    objc_exception_throw(v15);
  }

  v6 = [v5 eventStore];

  if (v6)
  {
    v7 = [v5 eventStore];

    if (v7 != self)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = @"Attempt to insert an object that belongs to a different event store.";
      goto LABEL_12;
    }
  }

  else
  {
    [v5 _setEventStore:self];
  }

  v11 = [v5 objectID];

  if (!v11)
  {
    v12 = +[EKObjectID temporaryObjectIDWithEntityType:](EKObjectID, "temporaryObjectIDWithEntityType:", [v5 entityType]);
    [v5 _setObjectID:v12 inDatabaseRestoreGeneration:0xFFFFFFFFLL];
  }

  unsavedChangesQueue = self->_unsavedChangesQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __30__EKEventStore__insertObject___block_invoke;
  v16[3] = &unk_1E77FD580;
  v16[4] = self;
  v17 = v5;
  v14 = v5;
  dispatch_sync(unsavedChangesQueue, v16);
}

void __30__EKEventStore__insertObject___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 304))
  {
    v2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v3 = *(a1 + 32);
    v4 = *(v3 + 304);
    *(v3 + 304) = v2;
  }

  if ([*(a1 + 40) _isPendingDelete])
  {
    [*(*(a1 + 32) + 312) removeObject:*(a1 + 40)];
    [*(a1 + 40) _setPendingDelete:0];
    v5 = [*(a1 + 40) objectID];
    v6 = [v5 isTemporary];

    if ((v6 & 1) == 0)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);

      [v7 _unregisterObject:v8];
    }
  }

  else if ([*(a1 + 40) _isPendingUpdate])
  {
    v9 = *(*(a1 + 32) + 320);
    if (!v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
      v11 = *(a1 + 32);
      v12 = *(v11 + 320);
      *(v11 + 320) = v10;

      v9 = *(*(a1 + 32) + 320);
    }

    v13 = *(a1 + 40);

    [v9 addObject:v13];
  }

  else if (([*(a1 + 40) _isPendingInsert] & 1) == 0)
  {
    [*(*(a1 + 32) + 304) addObject:*(a1 + 40)];
    v14 = *(a1 + 40);

    [v14 _setPendingInsert:1];
  }
}

- (void)_markObjectUncommittable:(id)a3
{
  v4 = a3;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__EKEventStore__markObjectUncommittable___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(unsavedChangesQueue, v7);
}

uint64_t __41__EKEventStore__markObjectUncommittable___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 328);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 328);
    *(v4 + 328) = v3;

    v2 = *(*(a1 + 32) + 328);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (BOOL)isObjectInserted:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__EKEventStore_isObjectInserted___block_invoke;
  block[3] = &unk_1E77FD688;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(unsavedChangesQueue, block);
  LOBYTE(unsavedChangesQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return unsavedChangesQueue;
}

uint64_t __33__EKEventStore_isObjectInserted___block_invoke(void *a1)
{
  result = [*(a1[4] + 304) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)_deleteObject:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Attempt to delete a nil object.";
    goto LABEL_9;
  }

  v5 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Attempt to delete something that is not a EKPersistentObject.";
LABEL_9:
    v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
    objc_exception_throw(v12);
  }

  v6 = [v5 eventStore];

  if (v6 == self && [v5 allowsDeletion])
  {
    [(EKEventStore *)self _cacheDeletedEventIdentifierIfNeededForObject:v5];
    unsavedChangesQueue = self->_unsavedChangesQueue;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __30__EKEventStore__deleteObject___block_invoke;
    v16 = &unk_1E77FD580;
    v17 = self;
    v8 = v5;
    v18 = v8;
    dispatch_sync(unsavedChangesQueue, &v13);
    [(EKEventStore *)self _clearPendingChangesForObjectsWithOwner:v8, v13, v14, v15, v16, v17];
  }
}

void __30__EKEventStore__deleteObject___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 312))
  {
    v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 312);
    *(v3 + 312) = v2;
  }

  v5 = [*(a1 + 40) _isPendingInsert];
  v6 = *(a1 + 40);
  if (v5)
  {
    [v6 _setPendingInsert:0];
    [*(*(a1 + 32) + 304) removeObject:*(a1 + 40)];
LABEL_5:
    [*(*(a1 + 32) + 328) removeObject:*(a1 + 40)];
    goto LABEL_11;
  }

  v7 = [v6 _isPendingUpdate];
  v8 = *(a1 + 40);
  if (v7)
  {
    [v8 _setPendingUpdate:0];
    [*(a1 + 40) _setPendingDelete:1];
    [*(*(a1 + 32) + 320) removeObject:*(a1 + 40)];
  }

  else
  {
    if ([v8 isNew])
    {
      goto LABEL_5;
    }

    [*(a1 + 40) _setPendingDelete:1];
  }

  [*(*(a1 + 32) + 312) addObject:*(a1 + 40)];
LABEL_11:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [*(*(a1 + 32) + 112) copy];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v14 objectID];
        v16 = [*(a1 + 40) objectID];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          [*(*(a1 + 32) + 112) removeObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)rollbackObjectsWithIdentifiers:(id)a3
{
  v4 = a3;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__EKEventStore_rollbackObjectsWithIdentifiers___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(unsavedChangesQueue, v7);
}

void __47__EKEventStore_rollbackObjectsWithIdentifiers___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 40);
  v5 = [*(*(a1 + 32) + 304) allObjects];
  v6 = [v3 _filteredObjectsWithIdentifiers:v4 fromObjects:v5 excludingObjects:0];

  v7 = *(a1 + 32);
  v8 = objc_opt_class();
  v9 = *(a1 + 40);
  v10 = [*(*(a1 + 32) + 320) allObjects];
  v11 = [v8 _filteredObjectsWithIdentifiers:v9 fromObjects:v10 excludingObjects:0];

  v12 = *(a1 + 32);
  v13 = objc_opt_class();
  v14 = *(a1 + 40);
  v15 = [*(*(a1 + 32) + 312) allObjects];
  v16 = [v13 _filteredObjectsWithIdentifiers:v14 fromObjects:v15 excludingObjects:0];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v58;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v58 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v57 + 1) + 8 * i) _setPendingInsert:0];
      }

      v19 = [v17 countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v19);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v22 = v11;
  v23 = [v22 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v54;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v54 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v53 + 1) + 8 * j);
        [v27 rollback];
        [v27 _setPendingUpdate:0];
      }

      v24 = [v22 countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v24);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v28 = v16;
  v29 = [v28 countByEnumeratingWithState:&v49 objects:v62 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v50;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v50 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v49 + 1) + 8 * k);
        [v33 rollback];
        [v33 _setPendingDelete:0];
      }

      v30 = [v28 countByEnumeratingWithState:&v49 objects:v62 count:16];
    }

    while (v30);
  }

  v35 = *(a1 + 32);
  v34 = *(a1 + 40);
  v36 = *(v35 + 112);
  if (v34)
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __47__EKEventStore_rollbackObjectsWithIdentifiers___block_invoke_2;
    v47[3] = &unk_1E7800E98;
    v48 = v34;
    [v36 CalFilterUsingBlock:v47];
  }

  else
  {
    [*(v35 + 112) removeAllObjects];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v37 = v17;
  v38 = [v37 countByEnumeratingWithState:&v43 objects:v61 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v44;
    do
    {
      for (m = 0; m != v39; ++m)
      {
        if (*v44 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [*(*(a1 + 32) + 304) removeObject:{*(*(&v43 + 1) + 8 * m), v43}];
      }

      v39 = [v37 countByEnumeratingWithState:&v43 objects:v61 count:16];
    }

    while (v39);
  }

  [*(*(a1 + 32) + 312) minusSet:v28];
  [*(*(a1 + 32) + 320) minusSet:v22];
  [*(*(a1 + 32) + 328) minusSet:v37];
  [*(*(a1 + 32) + 328) minusSet:v22];
  [*(*(a1 + 32) + 328) minusSet:v28];

  v42 = *MEMORY[0x1E69E9840];
}

uint64_t __47__EKEventStore_rollbackObjectsWithIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)_clearAllCaches
{
  [(NSCache *)self->_deletedEventUniqueIdentifiersCache removeAllObjects];
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EKEventStore__clearAllCaches__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(unsavedChangesQueue, block);
  [(EKEventStore *)self _forgetRegisteredObjects];
  calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__EKEventStore__clearAllCaches__block_invoke_2;
  v5[3] = &unk_1E77FD418;
  v5[4] = self;
  dispatch_sync(calendarSourcesAndDefaultsQueue, v5);
  [(EKEventStore *)self invalidateReminderSourceMaps];
}

uint64_t __31__EKEventStore__clearAllCaches__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v2 = *(*(a1 + 32) + 304);
  v3 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v31;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        [v7 _setPendingInsert:0];
        [v7 _setEventStore:0];
      }

      v4 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v4);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = *(*(a1 + 32) + 320);
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * j);
        [v13 _setPendingUpdate:0];
        [v13 _setEventStore:0];
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = *(*(a1 + 32) + 312);
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * k);
        [v19 _setPendingDelete:{0, v22}];
        [v19 _setEventStore:0];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v16);
  }

  [*(*(a1 + 32) + 304) removeAllObjects];
  [*(*(a1 + 32) + 312) removeAllObjects];
  [*(*(a1 + 32) + 320) removeAllObjects];
  [*(*(a1 + 32) + 328) removeAllObjects];
  result = [*(*(a1 + 32) + 112) removeAllObjects];
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void __31__EKEventStore__clearAllCaches__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _clearCachedCalendars];
  [*(a1 + 32) _clearCachedSources];
  [*(a1 + 32) _resetCachedPersonaIdentifiers];
  [*(*(a1 + 32) + 200) clearCachedAuthStatus];
  v2 = *(a1 + 32);
  v3 = *(v2 + 184);
  *(v2 + 184) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  *(v4 + 192) = 0;
}

- (void)reset
{
  if ([(EKEventStore *)self returnReminderResults])
  {
    [(EKReminderStore *)self->_reminderStore reset];
  }

  [(EKEventStore *)self _clearAllCaches];
  v3 = [(EKDaemonConnection *)self->_database CADOperationProxySync];
  [v3 CADDatabaseResetWithReply:&__block_literal_global_503];
}

- (BOOL)save:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__24;
  v19 = __Block_byref_object_dispose__24;
  v20 = 0;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__EKEventStore_save___block_invoke;
  block[3] = &unk_1E77FD440;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(unsavedChangesQueue, block);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v16[5];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v21 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v7++) markAsSaved];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v21 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v15, 8);
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

void __21__EKEventStore_save___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(*(a1 + 32) + 336), "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(*(a1 + 32) + 336);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 persistentObject];
        if (![v9 isNew] || objc_msgSend(*(*(a1 + 32) + 304), "containsObject:", v9))
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v2;
  v12 = v2;

  [*(*(a1 + 32) + 336) removeAllObjects];
  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)commit:(NSError *)error
{
  v11 = 0;
  v4 = [(EKEventStore *)self _commit:&v11];
  v5 = v11;
  v6 = v5;
  if (error)
  {
    v7 = v5;
    *error = v6;
  }

  v8 = EKLogHandle;
  if (v4)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEFAULT, "Committed successfully", &v10, 2u);
    }
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore commit:];
  }

  return v4;
}

- (BOOL)_commit:(id *)a3
{
  v5 = [(EKEventStore *)self returnEventResults];
  if (v5 && ![(EKEventStore *)self _commitObjectsWithIdentifiers:0 error:a3])
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  if (![(EKEventStore *)self returnReminderResults])
  {
    if (a3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:29];
      *a3 = LOBYTE(v5) = 0;
    }

    return v5;
  }

  reminderStore = self->_reminderStore;

  return [(EKReminderStore *)reminderStore commit:a3];
}

- (BOOL)commitWithRollback:(id *)a3
{
  v10 = 0;
  v5 = [(EKEventStore *)self commit:&v10];
  v6 = v10;
  v7 = v6;
  if (!v5)
  {
    if (a3)
    {
      v8 = v6;
      *a3 = v7;
    }

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore commitWithRollback:];
    }

    [(EKEventStore *)self rollback];
  }

  return v5;
}

- (BOOL)commitWithRollbackForNewClients:(id *)a3
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E60901FFFFFFFFLL])
  {

    return [(EKEventStore *)self commitWithRollback:a3];
  }

  else
  {

    return [(EKEventStore *)self commit:a3];
  }
}

- (BOOL)commitObjects:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = [v6 valueForKey:@"persistentObject"];
    v8 = [EKPersistentObject allObjectsWithChangesRelatedToObjects:v7];
    v9 = [v8 setByAddingObjectsFromSet:v7];
    v10 = [v9 valueForKey:@"objectID"];
    v19 = 0;
    v11 = [(EKEventStore *)self _commitObjectsWithIdentifiers:v10 error:&v19];
    v12 = v19;
    v13 = v12;
    if (a4)
    {
      v14 = v12;
      *a4 = v13;
    }

    v15 = EKLogHandle;
    if (v11)
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1A805E000, v15, OS_LOG_TYPE_DEFAULT, "Committed successfully", v18, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [EKEventStore commitWithRollback:];
      }

      [(EKEventStore *)self rollbackObjectsWithIdentifiers:v10];
    }
  }

  else
  {
    v16 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A805E000, v16, OS_LOG_TYPE_DEFAULT, "Committing no objects. Calling it a success and bailing early.", buf, 2u);
    }

    LOBYTE(v11) = 1;
  }

  return v11;
}

- (BOOL)objectsHaveChangesToCommit:(id)a3
{
  v3 = [a3 valueForKey:@"persistentObject"];
  v4 = [EKPersistentObject allObjectsWithChangesRelatedToObjects:v3];
  v5 = [v4 count] != 0;

  return v5;
}

+ (id)_filteredObjectsWithIdentifiers:(id)a3 fromObjects:(id)a4 excludingObjects:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    v11 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v8, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [v17 objectID];
          if ([v7 containsObject:v18])
          {
            v19 = [v10 containsObject:v17];

            if ((v19 & 1) == 0)
            {
              [v11 addObject:v17];
            }
          }

          else
          {
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    v20 = [v11 copy];
    v8 = v23;
  }

  else if ([v9 count])
  {
    v20 = [MEMORY[0x1E695DFA8] setWithArray:v8];
    [v20 minusSet:v10];
  }

  else
  {
    v20 = [MEMORY[0x1E695DFD8] setWithArray:v8];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)_filteredArrayWithIdentifiers:(id)a3 fromObjects:(id)a4 excludingObjects:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v22 = v8;
    v23 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v15 objectID];
          if ([v7 containsObject:v16])
          {
            v17 = [v15 frozenObject];
            v18 = [v9 containsObject:v17];

            if ((v18 & 1) == 0)
            {
              [v23 addObject:v15];
            }
          }

          else
          {
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    v19 = [v23 copy];
    v8 = v22;
  }

  else
  {
    v19 = [v8 copy];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (BOOL)_isConfirmedSuggestedEvent:(id)a3 uniqueKey:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[EKEvent alloc] initWithPersistentObject:v5];
    v7 = [(EKEvent *)v6 suggestionInfo];

    if (v7 && (-[EKCalendarItem calendar](v6, "calendar"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isSuggestedEventCalendar], v8, (v9 & 1) == 0))
    {
      if (a4)
      {
        v11 = [(EKEvent *)v6 suggestionInfo];
        *a4 = [v11 uniqueKey];
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_clearPendingChangesForObjectsWithOwner:(id)a3
{
  v4 = [a3 ownedObjects];
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__EKEventStore__clearPendingChangesForObjectsWithOwner___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(unsavedChangesQueue, v7);
}

uint64_t __56__EKEventStore__clearPendingChangesForObjectsWithOwner___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 320) minusSet:*(a1 + 40)];
  [*(*(a1 + 32) + 312) minusSet:*(a1 + 40)];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 40);
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

        [*(*(a1 + 32) + 304) removeObject:{*(*(&v9 + 1) + 8 * v6++), v9}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = [*(*(a1 + 32) + 328) minusSet:*(a1 + 40)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_commitObjectsWithIdentifiers:(id)a3 error:(id *)a4
{
  v164 = *MEMORY[0x1E69E9840];
  v59 = a3;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKEventStore _commitObjectsWithIdentifiers:error:];
  }

  if (a4)
  {
    *a4 = 0;
  }

  v145 = 0;
  v146 = &v145;
  v147 = 0x2020000000;
  v148 = 0;
  if ([(EKEventStore *)self canModifyCalendarDatabase])
  {
    v139 = 0;
    v140 = &v139;
    v141 = 0x3032000000;
    v142 = __Block_byref_object_copy__24;
    v143 = __Block_byref_object_dispose__24;
    v144 = 0;
    v133 = 0;
    v134 = &v133;
    v135 = 0x3032000000;
    v136 = __Block_byref_object_copy__24;
    v137 = __Block_byref_object_dispose__24;
    v138 = 0;
    v127 = 0;
    v128 = &v127;
    v129 = 0x3032000000;
    v130 = __Block_byref_object_copy__24;
    v131 = __Block_byref_object_dispose__24;
    v132 = 0;
    v125[0] = 0;
    v125[1] = v125;
    v125[2] = 0x3032000000;
    v125[3] = __Block_byref_object_copy__24;
    v125[4] = __Block_byref_object_dispose__24;
    v126 = 0;
    unsavedChangesQueue = self->_unsavedChangesQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke;
    block[3] = &unk_1E7800EC0;
    v121 = v125;
    block[4] = self;
    v122 = &v139;
    v6 = v59;
    v120 = v6;
    v123 = &v133;
    v124 = &v127;
    dispatch_sync(unsavedChangesQueue, block);
    if ([v140[5] count] || objc_msgSend(v134[5], "count") || objc_msgSend(v128[5], "count"))
    {
      v57 = v6;
      v58 = a4;
      v7 = EKLogHandle;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v140[5] count];
        v9 = [v134[5] count];
        v10 = [v128[5] count];
        *buf = 67109632;
        *&buf[4] = v8;
        LOWORD(v159) = 1024;
        *(&v159 + 2) = v9;
        HIWORD(v159) = 1024;
        LODWORD(v160) = v10;
        _os_log_impl(&dword_1A805E000, v7, OS_LOG_TYPE_INFO, "Committing with %d insertions, %d updates, %d deletions", buf, 0x14u);
      }

      *buf = 0;
      v159 = buf;
      v160 = 0x3032000000;
      v161 = __Block_byref_object_copy__24;
      v162 = __Block_byref_object_dispose__24;
      v163 = objc_opt_new();
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v11 = v128[5];
      v12 = 0;
      v13 = [v11 countByEnumeratingWithState:&v111 objects:v157 count:16];
      if (v13)
      {
        v14 = *v112;
        v60 = 136315394;
        do
        {
          v15 = 0;
          do
          {
            if (*v112 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v111 + 1) + 8 * v15);
            v17 = objc_opt_class();
            v110 = 0;
            v18 = [v17 _isConfirmedSuggestedEvent:v16 uniqueKey:&v110];
            v19 = v110;
            if (v18)
            {
              v20 = EKLogHandle;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
              {
                *v151 = 136315394;
                *&v151[4] = "[EKEventStore _commitObjectsWithIdentifiers:error:]";
                *&v151[12] = 2112;
                *&v151[14] = v16;
                _os_log_debug_impl(&dword_1A805E000, v20, OS_LOG_TYPE_DEBUG, "%s - Notifying suggestions we have deleted previously confirmed event %@", v151, 0x16u);
              }

              v21 = [(objc_class *)[(EKEventStore *)self _SGSuggestionsServiceClass] serviceForEvents];
              v108[0] = MEMORY[0x1E69E9820];
              v108[1] = 3221225472;
              v108[2] = __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_509;
              v108[3] = &unk_1E7800D38;
              v22 = v21;
              v109 = v22;
              [v22 eventFromUniqueId:v19 withCompletion:v108];
            }

            v23 = [objc_opt_class() _iMIPScheduledEvent:v16];
            if (v23 && [EKiMIPCancel shouldSendEmailForEvent:v23 removedAttendees:0])
            {
              v24 = [EKiMIPCancel alloc];
              v25 = [v23 attendees];
              v26 = [(EKiMIPCancel *)v24 initWithEvent:v23 andAttendees:v25];

              [*(v159 + 5) addObject:v26];
            }

            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v12 |= isKindOfClass;
            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v111 objects:v157 count:16];
        }

        while (v13);
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_513;
      aBlock[3] = &unk_1E7800EE8;
      aBlock[4] = self;
      aBlock[5] = buf;
      v28 = _Block_copy(aBlock);
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v29 = v140[5];
      v30 = [v29 countByEnumeratingWithState:&v103 objects:v156 count:16];
      if (v30)
      {
        v31 = *v104;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v104 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v28[2](v28, *(*(&v103 + 1) + 8 * i));
          }

          v30 = [v29 countByEnumeratingWithState:&v103 objects:v156 count:16];
        }

        while (v30);
      }

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      obj = v134[5];
      v33 = [obj countByEnumeratingWithState:&v99 objects:v155 count:16];
      if (v33)
      {
        v34 = *v100;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v100 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v99 + 1) + 8 * j);
            if (v12)
            {
              v37 = [objc_opt_class() _iMIPScheduledEvent:v36];
              v98 = 0;
              v38 = [EKiMIPCancel shouldSendEmailForEvent:v37 removedAttendees:&v98];
              v39 = v98;
              if (v38)
              {
                v40 = [EKiMIPCancel alloc];
                v41 = v39;
                if (!v39)
                {
                  v60 = [v37 attendees];
                  v41 = v60;
                }

                v42 = [(EKiMIPCancel *)v40 initWithEvent:v37 andAttendees:v41];
                if (!v39)
                {
                }

                [*(v159 + 5) addObject:v42];
              }
            }

            v28[2](v28, v36);
          }

          v33 = [obj countByEnumeratingWithState:&v99 objects:v155 count:16];
        }

        while (v33);
      }

      *v151 = 0;
      *&v151[8] = v151;
      *&v151[16] = 0x3032000000;
      v152 = __Block_byref_object_copy__24;
      v153 = __Block_byref_object_dispose__24;
      v154 = 0;
      v92 = 0;
      v93 = &v92;
      v94 = 0x3032000000;
      v95 = __Block_byref_object_copy__24;
      v96 = __Block_byref_object_dispose__24;
      v97 = 0;
      v90[0] = 0;
      v90[1] = v90;
      v90[2] = 0x3032000000;
      v90[3] = __Block_byref_object_copy__24;
      v90[4] = __Block_byref_object_dispose__24;
      v91 = 0;
      v88[0] = 0;
      v88[1] = v88;
      v88[2] = 0x3032000000;
      v88[3] = __Block_byref_object_copy__24;
      v88[4] = __Block_byref_object_dispose__24;
      v89 = 0;
      v86[0] = 0;
      v86[1] = v86;
      v86[2] = 0x3032000000;
      v86[3] = __Block_byref_object_copy__24;
      v86[4] = __Block_byref_object_dispose__24;
      v87 = 0;
      v84[0] = 0;
      v84[1] = v84;
      v84[2] = 0x2020000000;
      v85 = 0;
      dbChangedQueue = self->_dbChangedQueue;
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_2_518;
      v71[3] = &unk_1E7800F88;
      v71[4] = self;
      v73 = &v139;
      v74 = &v133;
      v75 = &v127;
      v76 = &v92;
      v77 = v88;
      v78 = v86;
      v79 = v90;
      v80 = v84;
      v72 = v57;
      v81 = v125;
      v82 = v151;
      v83 = &v145;
      dispatch_sync(dbChangedQueue, v71);
      if (v58)
      {
        *v58 = v93[5];
      }

      if (*(v146 + 24) == 1)
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v44 = *(v159 + 5);
        v45 = [v44 countByEnumeratingWithState:&v67 objects:v150 count:16];
        if (v45)
        {
          v46 = *v68;
          do
          {
            for (k = 0; k != v45; ++k)
            {
              if (*v68 != v46)
              {
                objc_enumerationMutation(v44);
              }

              [*(*(&v67 + 1) + 8 * k) sendEmail];
            }

            v45 = [v44 countByEnumeratingWithState:&v67 objects:v150 count:16];
          }

          while (v45);
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v48 = *(*&v151[8] + 40);
        v49 = [v48 countByEnumeratingWithState:&v63 objects:v149 count:16];
        if (v49)
        {
          v50 = *v64;
          do
          {
            for (m = 0; m != v49; ++m)
            {
              if (*v64 != v50)
              {
                objc_enumerationMutation(v48);
              }

              [EKMapsUtilities geocodeEventIfNeeded:*(*(&v63 + 1) + 8 * m)];
            }

            v49 = [v48 countByEnumeratingWithState:&v63 objects:v149 count:16];
          }

          while (v49);
        }

        v52 = *(v146 + 24);
      }

      else
      {
        v52 = 0;
      }

      _Block_object_dispose(v84, 8);
      _Block_object_dispose(v86, 8);

      _Block_object_dispose(v88, 8);
      _Block_object_dispose(v90, 8);

      _Block_object_dispose(&v92, 8);
      _Block_object_dispose(v151, 8);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v55 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A805E000, v55, OS_LOG_TYPE_INFO, "Nothing to commit. Bailing early.", buf, 2u);
      }

      *buf = 0;
      v159 = buf;
      v160 = 0x3032000000;
      v161 = __Block_byref_object_copy__24;
      v162 = __Block_byref_object_dispose__24;
      v163 = 0;
      v56 = self->_unsavedChangesQueue;
      v115[0] = MEMORY[0x1E69E9820];
      v115[1] = 3221225472;
      v115[2] = __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_508;
      v115[3] = &unk_1E77FF5B8;
      v115[4] = self;
      v116 = v6;
      v117 = v125;
      v118 = buf;
      dispatch_sync(v56, v115);
      if ([*(v159 + 5) count])
      {
        [(EKEventStore *)self _postEventStoreChangedNotificationWithChangeType:1 changedObjectIDs:*(v159 + 5) forceImmediate:1];
      }

      _Block_object_dispose(buf, 8);
      v52 = 1;
    }

    _Block_object_dispose(v125, 8);
    _Block_object_dispose(&v127, 8);

    _Block_object_dispose(&v133, 8);
    _Block_object_dispose(&v139, 8);
  }

  else
  {
    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:30];
    }

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKEventStore _commitObjectsWithIdentifiers:error:];
    }

    v52 = 0;
  }

  _Block_object_dispose(&v145, 8);

  v53 = *MEMORY[0x1E69E9840];
  return v52 & 1;
}

void __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 328));
  if ([*(*(a1[6] + 8) + 40) count])
  {
    v2 = [EKPersistentObject allObjectsWithChangesRelatedToObjects:*(*(a1[6] + 8) + 40)];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = a1[4];
  v6 = objc_opt_class();
  v7 = a1[5];
  v8 = [*(a1[4] + 304) allObjects];
  v9 = [v6 _filteredObjectsWithIdentifiers:v7 fromObjects:v8 excludingObjects:*(*(a1[6] + 8) + 40)];
  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = a1[4];
  v13 = objc_opt_class();
  v14 = a1[5];
  v15 = [*(a1[4] + 320) allObjects];
  v16 = [v13 _filteredObjectsWithIdentifiers:v14 fromObjects:v15 excludingObjects:*(*(a1[6] + 8) + 40)];
  v17 = *(a1[8] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = a1[4];
  v20 = objc_opt_class();
  v21 = a1[5];
  v25 = [*(a1[4] + 312) allObjects];
  v22 = [v20 _filteredObjectsWithIdentifiers:v21 fromObjects:v25 excludingObjects:*(*(a1[6] + 8) + 40)];
  v23 = *(a1[9] + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;
}

void __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_508(uint64_t a1)
{
  v5 = [*(a1 + 32) _markObjectsWithIdentifiersAsCommitted:*(a1 + 40) excludingObjects:*(*(*(a1 + 48) + 8) + 40)];
  v2 = [v5 valueForKey:@"objectID"];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) _clearEventsNeedingGeocodingWithCommittedObjects:v5];
}

uint64_t __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_509(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 recordId];
  v6 = v5;
  if (!a3 && v5)
  {
    v8 = v5;
    v5 = [*(a1 + 32) deleteEventByRecordId:v5 withCompletion:&__block_literal_global_511];
    v6 = v8;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

void __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_2_cold_1();
  }
}

void __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_513(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v10 = [objc_opt_class() _iMIPScheduledEvent:v4];

  v5 = v10;
  if (v10)
  {
    v6 = [v10 diffFromCommitted];
    if ([EKiMIPInvitation shouldSendEmailForEvent:v10 withDiff:v6])
    {
      v7 = [[EKiMIPInvitation alloc] initWithEvent:v10 withDiff:v6];
    }

    else
    {
      if ([EKiMIPUpdate shouldSendEmailForEvent:v10 withDiff:v6])
      {
        v8 = EKiMIPUpdate;
      }

      else
      {
        if (![EKiMIPReply shouldSendEmailForEvent:v10 withDiff:v6])
        {
LABEL_10:

          v5 = v10;
          goto LABEL_11;
        }

        v8 = EKiMIPReply;
      }

      v7 = [[v8 alloc] initWithEvent:v10];
    }

    v9 = v7;
    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];

    goto LABEL_10;
  }

LABEL_11:
}

void __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_2_518(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 376);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_3;
  block[3] = &unk_1E7800F60;
  v4 = *(a1 + 56);
  block[4] = v2;
  v5 = *(a1 + 72);
  v10 = v4;
  v11 = v5;
  v12 = *(a1 + 88);
  v13 = *(a1 + 104);
  v7 = *(a1 + 40);
  v6 = v7;
  v9 = v7;
  v14 = *(a1 + 112);
  v15 = *(a1 + 128);
  dispatch_sync(v3, block);
  if (*(*(*(a1 + 128) + 8) + 24) == 1 && ([*(a1 + 32) ignoreExternalChanges] & 1) == 0)
  {
    [*(a1 + 32) _processExternalChangesWithLatestTimestamp:*(*(*(a1 + 96) + 8) + 40) changedObjectIDsData:*(*(*(a1 + 80) + 8) + 40) deletedObjectIDOffsets:*(*(*(a1 + 88) + 8) + 40) changesWereSyncStatusOnly:*(*(*(a1 + 104) + 8) + 24) forceImmediateNotification:1];
  }
}

void __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_3(uint64_t a1)
{
  v124 = *MEMORY[0x1E69E9840];
  v67 = [MEMORY[0x1E695DFA8] setWithSet:*(*(*(a1 + 48) + 8) + 40)];
  [v67 unionSet:*(*(*(a1 + 56) + 8) + 40)];
  if ([v67 count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v3 = v67;
    v4 = [v3 countByEnumeratingWithState:&v115 objects:v123 count:16];
    if (v4)
    {
      v5 = *v116;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v116 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v115 + 1) + 8 * i);
          v8 = [v7 dirtyPropertiesAndValues];
          if (v8)
          {
            v9 = [v7 CADObjectID];
            [v2 setObject:v8 forKeyedSubscript:v9];
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v115 objects:v123 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v2 = 0;
  }

  v10 = [*(*(*(a1 + 64) + 8) + 40) valueForKey:@"CADObjectID"];
  v11 = [v10 allObjects];

  v113[0] = 0;
  v113[1] = v113;
  v113[2] = 0x2020000000;
  v114 = 0;
  v109 = 0;
  v110 = &v109;
  v111 = 0x2020000000;
  v112 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = __Block_byref_object_copy__24;
  v107 = __Block_byref_object_dispose__24;
  v108 = 0;
  if (([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E70901FFFFFFFFLL] & 1) == 0)
  {
    v12 = [*(a1 + 32) eventAccessLevel] == 1;
  }

  v13 = [*(a1 + 32) database];
  v14 = [v13 CADOperationProxySync];
  v15 = *(*(a1 + 32) + 352);
  v91 = MEMORY[0x1E69E9820];
  v92 = 3221225472;
  v93 = __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_4;
  v94 = &unk_1E7800F10;
  v16 = *(a1 + 72);
  v97 = v113;
  v98 = v16;
  v95 = v11;
  v96 = v2;
  v99 = &v109;
  v100 = &v103;
  v17 = *(a1 + 96);
  v101 = *(a1 + 80);
  v102 = v17;
  v65 = v96;
  v66 = v95;
  [v14 CADDatabaseCommitDeletes:v95 updatesAndInserts:? options:? andFetchChangesSinceTimestamp:? withReply:?];

  if (*(v110 + 24) == 1)
  {
    if ([*(a1 + 32) shouldRecordObjectIDMap])
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v18 = v104[5];
      v19 = [v18 countByEnumeratingWithState:&v87 objects:v122 count:16];
      if (v19)
      {
        v20 = *v88;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v88 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v87 + 1) + 8 * j);
            v23 = [v104[5] objectForKeyedSubscript:v22];
            v24 = [EKObjectID objectIDWithCADObjectID:v22];
            v25 = [EKObjectID objectIDWithCADObjectID:v23];
            v26 = [*(*(a1 + 32) + 136) objectForKeyedSubscript:v24];
            v27 = *(*(a1 + 32) + 128);
            if (v26)
            {
              [v27 setObject:v25 forKeyedSubscript:v26];
            }

            else
            {
              [v27 setObject:v25 forKeyedSubscript:v24];
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v87 objects:v122 count:16];
        }

        while (v19);
      }
    }

    if ([*(*(*(a1 + 48) + 8) + 40) count])
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      obj = *(*(*(a1 + 48) + 8) + 40);
      v28 = [obj countByEnumeratingWithState:&v83 objects:v121 count:16];
      if (v28)
      {
        v29 = *v84;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v84 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v83 + 1) + 8 * k);
            [*(*(a1 + 32) + 304) removeObject:v31];
            v32 = v104[5];
            v33 = [v31 CADObjectID];
            v34 = [v32 objectForKey:v33];

            if (v34)
            {
              v35 = [EKObjectID objectIDWithCADObjectID:v34];
              v36 = [*(a1 + 32) database];
              [v31 _setObjectID:v35 inDatabaseRestoreGeneration:{objc_msgSend(v36, "databaseRestoreGeneration")}];

              [*(a1 + 32) _registerObject:v31];
            }

            [v31 _setPendingInsert:0];
            [v31 didCommit];
            v37 = *(a1 + 32);
            v38 = *(v37 + 360);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_520;
            block[3] = &unk_1E77FD580;
            block[4] = v37;
            block[5] = v31;
            dispatch_sync(v38, block);
          }

          v28 = [obj countByEnumeratingWithState:&v83 objects:v121 count:16];
        }

        while (v28);
      }
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v39 = *(*(*(a1 + 56) + 8) + 40);
    v40 = 0;
    v41 = 0;
    v42 = [v39 countByEnumeratingWithState:&v78 objects:v120 count:16];
    if (v42)
    {
      v43 = *v79;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v79 != v43)
          {
            objc_enumerationMutation(v39);
          }

          v45 = *(*(&v78 + 1) + 8 * m);
          [v45 _setPendingUpdate:0];
          [v45 didCommit];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v40 = 1;
          }

          else
          {
            objc_opt_class();
            v41 |= objc_opt_isKindOfClass();
          }
        }

        v42 = [v39 countByEnumeratingWithState:&v78 objects:v120 count:16];
      }

      while (v42);
    }

    if ((v40 | v41))
    {
      v46 = *(a1 + 32);
      v47 = *(v46 + 360);
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_2_521;
      v75[3] = &unk_1E7800F38;
      v76 = v40 & 1;
      v75[4] = v46;
      v77 = v41 & 1;
      dispatch_sync(v47, v75);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v48 = *(*(*(a1 + 64) + 8) + 40);
    v49 = [v48 countByEnumeratingWithState:&v71 objects:v119 count:16];
    if (v49)
    {
      v50 = *v72;
      do
      {
        for (n = 0; n != v49; ++n)
        {
          if (*v72 != v50)
          {
            objc_enumerationMutation(v48);
          }

          v52 = *(*(&v71 + 1) + 8 * n);
          [v52 _setPendingDelete:0];
          [*(a1 + 32) _unregisterObject:v52];
          v53 = *(a1 + 32);
          v54 = *(v53 + 360);
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = 3221225472;
          v70[2] = __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_3_522;
          v70[3] = &unk_1E77FD580;
          v70[4] = v52;
          v70[5] = v53;
          dispatch_sync(v54, v70);
        }

        v49 = [v48 countByEnumeratingWithState:&v71 objects:v119 count:16];
      }

      while (v49);
    }

    [*(*(a1 + 32) + 312) minusSet:*(*(*(a1 + 64) + 8) + 40)];
    [*(*(a1 + 32) + 320) minusSet:*(*(*(a1 + 56) + 8) + 40)];
    v55 = *(a1 + 40);
    if ([*(*(*(a1 + 48) + 8) + 40) count])
    {
      v56 = [*(*(*(a1 + 48) + 8) + 40) valueForKey:@"objectID"];
      v57 = [v55 setByAddingObjectsFromSet:v56];

      v55 = v57;
    }

    v58 = [*(a1 + 32) _markObjectsWithIdentifiersAsCommitted:v55 excludingObjects:*(*(*(a1 + 112) + 8) + 40)];
    v59 = *(a1 + 32);
    v69 = 0;
    [v59 _fetchAndClearEventsNeedingGeocoding:&v69 withCommittedObjects:v58];
    v60 = v69;
    v61 = *(*(a1 + 120) + 8);
    v62 = *(v61 + 40);
    *(v61 + 40) = v60;
    v63 = v60;

    *(*(*(a1 + 128) + 8) + 24) = 1;
  }

  _Block_object_dispose(&v103, 8);
  _Block_object_dispose(&v109, 8);
  _Block_object_dispose(v113, 8);

  v64 = *MEMORY[0x1E69E9840];
}

void __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  v21 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  *(*(a1[6] + 8) + 24) = a2;
  if (a2)
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v18 = *(a1[7] + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_4_cold_1((a1 + 7));
    }

    if (a2 == 1010 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_4_cold_2(a1);
    }

    v20 = 0;
  }

  else
  {
    objc_storeStrong((*(a1[9] + 8) + 40), a3);
    objc_storeStrong((*(a1[10] + 8) + 40), a4);
    objc_storeStrong((*(a1[11] + 8) + 40), a5);
    objc_storeStrong((*(a1[12] + 8) + 40), a6);
    *(*(a1[13] + 8) + 24) = a7;
    v20 = 1;
  }

  *(*(a1[8] + 8) + 24) = v20;
}

void __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_520(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[7] && (v3 = *(a1 + 40), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v2 = *(a1 + 32), (isKindOfClass & 1) != 0))
  {
    v7 = [*(a1 + 40) CADObjectID];
    [v2 _cacheCalendarWithCADObjectID:? withDefaultLoadedPropertyValues:? forKeys:?];
  }

  else
  {
    if (!v2[8])
    {
      return;
    }

    v5 = *(a1 + 40);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) CADObjectID];
    [v6 _cacheSourceWithCADObjectID:? withDefaultLoadedPropertyValues:? forKeys:?];
  }
}

uint64_t __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_2_521(uint64_t result)
{
  v1 = result;
  if (*(result + 40) == 1)
  {
    result = [*(result + 32) _clearCachedCalendars];
  }

  if (*(v1 + 41) == 1)
  {
    v2 = *(v1 + 32);

    return [v2 _clearCachedSources];
  }

  return result;
}

void __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_3_522(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 40);
    v7 = [*(a1 + 32) CADObjectID];
    [v3 _removeCachedCalendarWithCADID:?];
  }

  else
  {
    v4 = *(a1 + 32);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    [*(a1 + 40) _removeCachedCalendarFromSource:*(a1 + 32)];
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 64);
    v7 = [v5 CADObjectID];
    [v6 removeObjectForKey:?];
  }
}

- (id)_markObjectsWithIdentifiersAsCommitted:(id)a3 excludingObjects:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_unsavedChangesQueue);
  v8 = [objc_opt_class() _filteredArrayWithIdentifiers:v6 fromObjects:self->_objectsPendingCommit excludingObjects:v7];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v13 markAsCommitted];
        [(NSMutableArray *)self->_objectsPendingCommit removeObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)_fetchAndClearEventsNeedingGeocoding:(id *)a3 withCommittedObjects:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  dispatch_assert_queue_V2(self->_unsavedChangesQueue);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          if ([(NSHashTable *)self->_eventsNeedsGeocoding containsObject:v13, v16])
          {
            [(NSHashTable *)self->_eventsNeedsGeocoding removeObject:v13];
            if (a3)
            {
              v14 = *a3;
              if (!*a3)
              {
                v14 = objc_opt_new();
                *a3 = v14;
              }

              [v14 addObject:v13];
            }
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)ensureLoadedProperties:(id)a3 forObjects:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v6 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v20 = self;
    v9 = 0;
    v10 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = v21;
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if ([v12 isPropertyUnavailable:*(*(&v22 + 1) + 8 * j)])
              {
                if (!v9)
                {
                  if (objc_opt_respondsToSelector())
                  {
                    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
                  }

                  else
                  {
                    v18 = objc_opt_new();
                  }

                  v9 = v18;
                }

                [v9 addObject:v12];
                goto LABEL_21;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

LABEL_21:
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
    if (v9)
    {
      [(EKEventStore *)v20 _fetchProperties:v13 forObjects:v9];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_fetchProperties:(id)a3 forObjects:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v22 = a4;
  if ([v22 count])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__24;
    v32 = __Block_byref_object_dispose__24;
    v33 = 0;
    v20 = self;
    v6 = [(EKDaemonConnection *)self->_database CADOperationProxySync];
    v7 = [v22 valueForKey:@"CADObjectID"];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __44__EKEventStore__fetchProperties_forObjects___block_invoke;
    v27[3] = &unk_1E7800918;
    v27[4] = &v28;
    [v6 CADObjects:v7 getPropertiesWithNames:v21 reply:v27];

    v8 = [v29[5] count];
    if (v8 != [v22 count] && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore _fetchProperties:forObjects:];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v29[5];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v34 count:16];
    if (v10)
    {
      v11 = 0;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            v16 = [v22 objectAtIndexedSubscript:v11];
            v17 = [v16 frozenObjectInStore:v20];
            v18 = [v15 loadedValues];
            [v17 takeValuesForDefaultPropertyKeys:v21 values:v18];
          }

          ++v11;
          ++v13;
        }

        while (v10 != v13);
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v34 count:16];
      }

      while (v10);
    }

    _Block_object_dispose(&v28, 8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __44__EKEventStore__fetchProperties_forObjects___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __56__EKEventStore_uniqueIdentifiersForEventsWithObjectIDs___block_invoke_2_cold_1();
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)isPendingIntegrationEvent:(id)a3
{
  pendingIntegrationEvents = self->_pendingIntegrationEvents;
  v4 = [a3 uniqueID];
  v5 = [(NSMutableDictionary *)pendingIntegrationEvents objectForKeyedSubscript:v4];
  LOBYTE(pendingIntegrationEvents) = v5 != 0;

  return pendingIntegrationEvents;
}

- (void)addPendingIntegrationEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueID];
  v6 = EKLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKEventStore addPendingIntegrationEvent:v6];
    }

    dbChangedQueue = self->_dbChangedQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__EKEventStore_addPendingIntegrationEvent___block_invoke;
    block[3] = &unk_1E77FD7C8;
    block[4] = self;
    v9 = v5;
    v10 = v4;
    dispatch_sync(dbChangedQueue, block);
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore addPendingIntegrationEvent:];
  }
}

void __43__EKEventStore_addPendingIntegrationEvent___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 104);
    *(v4 + 104) = v3;

    v2 = *(*(a1 + 32) + 104);
  }

  v6 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(*(a1 + 32) + 104) setObject:v7 forKeyedSubscript:*(a1 + 40)];
    v6 = v7;
  }

  v8 = v6;
  [*(a1 + 32) _addPendingIntegrationEvent:*(a1 + 48) toArrayOfHashTables:v6];
}

- (void)_addPendingIntegrationEvent:(id)a3 toArrayOfHashTables:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v21 = [v5 objectID];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v8)
  {

LABEL_15:
    v10 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:1];
    [v7 addObject:v10];
    goto LABEL_16;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v23;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v22 + 1) + 8 * i);
      v14 = [v13 anyObject];
      v15 = v14;
      if (v5)
      {
        v16 = [v14 objectID];
        v17 = [v16 isEqual:v21];

        if (v17)
        {
          v19 = v13;

          v10 = v19;
          goto LABEL_12;
        }
      }

      else
      {
        v18 = v13;

        v10 = v18;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v9);
LABEL_12:

  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_16:
  [v10 addObject:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)pendingIntegrationEventChangedIdentifierFrom:(id)a3 to:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_INFO, "Updating pending integration event ID from %{public}@ to %{public}@", buf, 0x16u);
  }

  dbChangedQueue = self->_dbChangedQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__EKEventStore_pendingIntegrationEventChangedIdentifierFrom_to___block_invoke;
  block[3] = &unk_1E77FD7C8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(dbChangedQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __64__EKEventStore_pendingIntegrationEventChangedIdentifierFrom_to___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:*(a1 + 48)];
  v4 = v3;
  if (v3)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v21;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v21 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                [*(a1 + 32) _addPendingIntegrationEvent:*(*(&v20 + 1) + 8 * j) toArrayOfHashTables:v2];
              }

              v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v14);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v4 = v19;
  }

  if (v2)
  {
    v17 = v2;

    v4 = v17;
  }

  [*(*(a1 + 32) + 104) setObject:0 forKeyedSubscript:*(a1 + 40)];
  [*(*(a1 + 32) + 104) setObject:v4 forKeyedSubscript:*(a1 + 48)];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)removePendingIntegrationEvent:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 privacySafeIntegrationEventDescription];
    *buf = 138543362;
    v18 = v7;
    _os_log_impl(&dword_1A805E000, v6, OS_LOG_TYPE_INFO, "Removing pending integration event: %{public}@", buf, 0xCu);
  }

  dbChangedQueue = self->_dbChangedQueue;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __46__EKEventStore_removePendingIntegrationEvent___block_invoke;
  v14 = &unk_1E77FD580;
  v15 = v4;
  v16 = self;
  v9 = v4;
  dispatch_sync(dbChangedQueue, &v11);
  [v9 reset];

  v10 = *MEMORY[0x1E69E9840];
}

void __46__EKEventStore_removePendingIntegrationEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) uniqueID];
  v3 = [*(*(a1 + 40) + 104) objectForKeyedSubscript:v2];
  v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [v11 removeObject:{*(a1 + 32), v15}];
        v12 = [v11 anyObject];

        if (!v12)
        {
          [v4 addIndex:v8];
        }

        ++v8;
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 count];
  if (v13 == [v5 count])
  {
    [*(*(a1 + 40) + 104) setObject:0 forKeyedSubscript:v2];
  }

  else if ([v4 count])
  {
    [v5 removeObjectsAtIndexes:v4];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)reminderIntegrationCalendar
{
  v15 = *MEMORY[0x1E69E9840];
  [(EKEventStore *)self sources];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 sourceType] == 6)
        {
          v7 = [v6 allCalendars];
          v3 = [v7 anyObject];

          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)requestIntegrationCatchupSync
{
  v2 = [(EKDaemonConnection *)self->_database CADOperationProxy];
  [v2 CADCatchUpIntegrationSyncingIfBehind:&__block_literal_global_527];
}

void __45__EKEventStore_requestIntegrationCatchupSync__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __45__EKEventStore_requestIntegrationCatchupSync__block_invoke_cold_1(v2);
    }
  }
}

- (void)loadEventIDs:(id *)a3 uniqueIDs:(id *)a4 calendar:(id)a5
{
  v8 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__24;
  v22 = __Block_byref_object_dispose__24;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__24;
  v16 = __Block_byref_object_dispose__24;
  v17 = 0;
  v9 = [(EKDaemonConnection *)self->_database CADOperationProxySync];
  v10 = [v8 CADObjectID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__EKEventStore_loadEventIDs_uniqueIDs_calendar___block_invoke;
  v11[3] = &unk_1E78008A8;
  v11[4] = &v18;
  v11[5] = &v12;
  [v9 CADDatabaseLoadEventsInCalendar:v10 reply:v11];

  if (a3)
  {
    *a3 = [EKObjectID EKObjectIDsFromCADObjectIDs:v19[5]];
  }

  if (a4)
  {
    *a4 = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
}

void __48__EKEventStore_loadEventIDs_uniqueIDs_calendar___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __45__EKEventStore_requestIntegrationCatchupSync__block_invoke_cold_1(v9);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v8;
}

- (id)redactedMimicSaveEvent:(id)a3 oldToNewObjectIDMap:(id)a4 serializedDictionary:(id)a5 objectIDToChangeSetDictionaryMap:(id)a6 objectIDToPersistentDictionaryMap:(id)a7
{
  v58 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v43 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v40 = v12;
  if (!v12)
  {
    v40 = [EKEvent eventWithEventStore:self];
  }

  v36 = v15;
  v37 = objc_alloc_init(_TtC8EventKit26EKRemoteUIObjectSerializer);
  v39 = self;
  v41 = [(EKRemoteUIObjectSerializer *)v37 deserializedRepresentationWithSerializedDictionary:v13 objectIDToChangeSetDictionaryMap:v14 objectIDToPersistentDictionaryMap:v15 eventStore:self occurrenceDate:0];
  v38 = [v41 deserializedObject];
  v16 = [v41 tempObjectIDMap];
  [(EKEventStore *)self _resetAndApplyChangesForRedactedMimicCommitOnObject:v40 usingModifiedObject:v38];
  v42 = [MEMORY[0x1E695DF90] dictionary];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v18)
  {
    v19 = *v50;
    v20 = v13;
    v21 = v14;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v50 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v49 + 1) + 8 * i);
        v24 = [v17 objectForKeyedSubscript:v23];
        v25 = [v43 objectForKeyedSubscript:v23];
        if (v25)
        {
          [v42 setObject:v25 forKeyedSubscript:v24];
        }

        else
        {
          v26 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = v24;
            *&buf[12] = 2114;
            *&buf[14] = v23;
            _os_log_error_impl(&dword_1A805E000, v26, OS_LOG_TYPE_ERROR, "redactedMimicSaveEvent: could not find corresponding remoteUI user committed permanent objectID for hostTempID[%{public}@]. initialTempID[%{public}@]", buf, 0x16u);
          }
        }

        v13 = v20;
        v14 = v21;
      }

      v18 = [v17 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v18);
  }

  v27 = MEMORY[0x1E695DFD8];
  v28 = [v17 allValues];
  v29 = [v27 setWithArray:v28];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v54 = __Block_byref_object_copy__24;
  v55 = __Block_byref_object_dispose__24;
  v56 = 0;
  unsavedChangesQueue = v39->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __147__EKEventStore_redactedMimicSaveEvent_oldToNewObjectIDMap_serializedDictionary_objectIDToChangeSetDictionaryMap_objectIDToPersistentDictionaryMap___block_invoke;
  block[3] = &unk_1E77FD688;
  v48 = buf;
  block[4] = v39;
  v31 = v29;
  v47 = v31;
  dispatch_sync(unsavedChangesQueue, block);
  [(EKEventStore *)v39 _mimicCommitWithOldToNewObjectIDMap:v42 insertedObjectsToCommit:*(*&buf[8] + 40) updatedObjectsToCommit:0 deletedObjectsToCommit:0];
  v32 = v39->_unsavedChangesQueue;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __147__EKEventStore_redactedMimicSaveEvent_oldToNewObjectIDMap_serializedDictionary_objectIDToChangeSetDictionaryMap_objectIDToPersistentDictionaryMap___block_invoke_2;
  v44[3] = &unk_1E77FD580;
  v44[4] = v39;
  v45 = v31;
  v33 = v31;
  dispatch_sync(v32, v44);

  _Block_object_dispose(buf, 8);
  v34 = *MEMORY[0x1E69E9840];

  return v40;
}

void __147__EKEventStore_redactedMimicSaveEvent_oldToNewObjectIDMap_serializedDictionary_objectIDToChangeSetDictionaryMap_objectIDToPersistentDictionaryMap___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = a1[5];
  v8 = [*(a1[4] + 304) allObjects];
  v5 = [v3 _filteredObjectsWithIdentifiers:v4 fromObjects:v8 excludingObjects:0];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)_resetAndApplyChangesForRedactedMimicCommitOnObject:(id)a3 usingModifiedObject:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  [v5 setChangeSet:0];
  v7 = [v6 backingObject];
  [v5 setBackingObject:v7];

  [v5 _resetAfterUpdatingChangeSetOrBackingObjectWithForce:1];
  v8 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v61;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v61 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v60 + 1) + 8 * i);
        v14 = [v5 cachedMeltedObjectForSingleValueKey:v13];
        v15 = [v6 cachedMeltedObjectForSingleValueKey:v13];
        v16 = v15;
        if (v14)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17 && ([objc_opt_class() isWeakRelationObject:v14 forKey:v13] & 1) == 0)
        {
          [(EKEventStore *)self _resetAndApplyChangesForRedactedMimicCommitOnObject:v14 usingModifiedObject:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v10);
  }

  v35 = v8;
  [objc_opt_class() knownRelationshipMultiValueKeys];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v59 = 0u;
  v40 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v40)
  {
    v37 = *v57;
    v38 = v6;
    v39 = v5;
    do
    {
      v18 = 0;
      do
      {
        if (*v57 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v18;
        v19 = *(*(&v56 + 1) + 8 * v18);
        v20 = [v5 cachedMeltedObjectsForMultiValueKey:v19];
        v45 = [v6 cachedMeltedObjectsForMultiValueKey:v19];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v43 = v20;
        v47 = [v43 countByEnumeratingWithState:&v52 objects:v65 count:16];
        if (v47)
        {
          v44 = *v53;
          do
          {
            for (j = 0; j != v47; ++j)
            {
              if (*v53 != v44)
              {
                objc_enumerationMutation(v43);
              }

              v22 = *(*(&v52 + 1) + 8 * j);
              v23 = [v22 objectID];
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v24 = v45;
              v25 = [v24 countByEnumeratingWithState:&v48 objects:v64 count:16];
              if (!v25)
              {
                v27 = v24;
                goto LABEL_36;
              }

              v26 = v25;
              v46 = v22;
              v27 = 0;
              v28 = *v49;
              do
              {
                for (k = 0; k != v26; ++k)
                {
                  if (*v49 != v28)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v30 = *(*(&v48 + 1) + 8 * k);
                  v31 = [v30 objectID];
                  v32 = [v31 isEqual:v23];

                  if (v32)
                  {
                    v33 = v30;

                    v27 = v33;
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v48 objects:v64 count:16];
              }

              while (v26);

              if (v27)
              {
                [(EKEventStore *)self _resetAndApplyChangesForRedactedMimicCommitOnObject:v46 usingModifiedObject:v27];
LABEL_36:
              }
            }

            v47 = [v43 countByEnumeratingWithState:&v52 objects:v65 count:16];
          }

          while (v47);
        }

        v18 = v41 + 1;
        v6 = v38;
        v5 = v39;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v40);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (id)mimicSaveAndCommitEvent:(id)a3 oldToNewObjectIDMap:(id)a4 insertedObjectIDs:(id)a5 updatedObjectIDs:(id)a6 deletedObjectIDs:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    v12 = [EKEvent eventWithEventStore:self];
  }

  [(EKEventStore *)self _resetForMimicCommitOnObject:v12 oldToNewObjectIDMap:v13];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__24;
  v51 = __Block_byref_object_dispose__24;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__24;
  v45 = __Block_byref_object_dispose__24;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__24;
  v39 = __Block_byref_object_dispose__24;
  v40 = 0;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__EKEventStore_mimicSaveAndCommitEvent_oldToNewObjectIDMap_insertedObjectIDs_updatedObjectIDs_deletedObjectIDs___block_invoke;
  block[3] = &unk_1E7800FB0;
  v32 = &v47;
  block[4] = self;
  v18 = v14;
  v29 = v18;
  v33 = &v41;
  v19 = v15;
  v30 = v19;
  v34 = &v35;
  v20 = v16;
  v31 = v20;
  dispatch_sync(unsavedChangesQueue, block);
  [(EKEventStore *)self _mimicCommitWithOldToNewObjectIDMap:v13 insertedObjectsToCommit:v48[5] updatedObjectsToCommit:v42[5] deletedObjectsToCommit:v36[5]];
  v21 = [v18 setByAddingObjectsFromSet:v19];
  v22 = [v21 setByAddingObjectsFromSet:v20];

  v23 = self->_unsavedChangesQueue;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __112__EKEventStore_mimicSaveAndCommitEvent_oldToNewObjectIDMap_insertedObjectIDs_updatedObjectIDs_deletedObjectIDs___block_invoke_2;
  v26[3] = &unk_1E77FD580;
  v26[4] = self;
  v27 = v22;
  v24 = v22;
  dispatch_sync(v23, v26);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);

  return v12;
}

void __112__EKEventStore_mimicSaveAndCommitEvent_oldToNewObjectIDMap_insertedObjectIDs_updatedObjectIDs_deletedObjectIDs___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = a1[5];
  v5 = [*(a1[4] + 304) allObjects];
  v6 = [v3 _filteredObjectsWithIdentifiers:v4 fromObjects:v5 excludingObjects:0];
  v7 = *(a1[8] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = a1[4];
  v10 = objc_opt_class();
  v11 = a1[6];
  v12 = [*(a1[4] + 320) allObjects];
  v13 = [v10 _filteredObjectsWithIdentifiers:v11 fromObjects:v12 excludingObjects:0];
  v14 = *(a1[9] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = a1[4];
  v17 = objc_opt_class();
  v18 = a1[7];
  v22 = [*(a1[4] + 312) allObjects];
  v19 = [v17 _filteredObjectsWithIdentifiers:v18 fromObjects:v22 excludingObjects:0];
  v20 = *(a1[10] + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

- (void)_mimicCommitWithOldToNewObjectIDMap:(id)a3 insertedObjectsToCommit:(id)a4 updatedObjectsToCommit:(id)a5 deletedObjectsToCommit:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dbChangedQueue = self->_dbChangedQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__EKEventStore__mimicCommitWithOldToNewObjectIDMap_insertedObjectsToCommit_updatedObjectsToCommit_deletedObjectsToCommit___block_invoke;
  block[3] = &unk_1E77FDF98;
  block[4] = self;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  dispatch_sync(dbChangedQueue, block);
}

void __122__EKEventStore__mimicCommitWithOldToNewObjectIDMap_insertedObjectsToCommit_updatedObjectsToCommit_deletedObjectsToCommit___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 376);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__EKEventStore__mimicCommitWithOldToNewObjectIDMap_insertedObjectsToCommit_updatedObjectsToCommit_deletedObjectsToCommit___block_invoke_2;
  block[3] = &unk_1E77FDF98;
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  dispatch_sync(v3, block);
}

uint64_t __122__EKEventStore__mimicCommitWithOldToNewObjectIDMap_insertedObjectsToCommit_updatedObjectsToCommit_deletedObjectsToCommit___block_invoke_2(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v35;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v35 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v34 + 1) + 8 * i);
          [*(*(a1 + 40) + 304) removeObject:v7];
          v8 = *(a1 + 48);
          v9 = [v7 objectID];
          v10 = [v8 objectForKey:v9];

          if (v10)
          {
            v11 = [*(a1 + 40) database];
            [v7 _setObjectID:v10 inDatabaseRestoreGeneration:{objc_msgSend(v11, "databaseRestoreGeneration")}];

            [*(a1 + 40) _registerObject:v7];
          }

          [v7 _setPendingInsert:0];
          [v7 didCommit];
        }

        v4 = [v2 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v4);
    }
  }

  if ([*(a1 + 56) count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = *(a1 + 56);
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v30 + 1) + 8 * j);
          [v17 _setPendingUpdate:0];
          [v17 didCommit];
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v14);
    }

    [*(*(a1 + 40) + 320) minusSet:*(a1 + 56)];
  }

  result = [*(a1 + 64) count];
  if (result)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = *(a1 + 64);
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v26 + 1) + 8 * k);
          [v24 _setPendingDelete:{0, v26}];
          [*(a1 + 40) _unregisterObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v21);
    }

    result = [*(*(a1 + 40) + 312) minusSet:*(a1 + 64)];
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_resetForMimicCommitOnObject:(id)a3 oldToNewObjectIDMap:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 setChangeSet:0];
  v8 = [v6 backingObject];
  v9 = [v8 objectID];

  v10 = [v7 objectForKeyedSubscript:v9];
  v30 = v10;
  v31 = v9;
  if (v10)
  {
    v11 = [(EKEventStore *)self registerFetchedObjectWithID:v10];
    [v6 setBackingObject:v11];
  }

  else
  {
    v11 = [v6 backingObject];
    [v11 reset];
  }

  [v6 _resetAfterUpdatingChangeSetOrBackingObjectWithForce:1];
  v12 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        v18 = [v6 cachedMeltedObjectForSingleValueKey:v17];
        if (v18 && ([objc_opt_class() isWeakRelationObject:v18 forKey:v17] & 1) == 0)
        {
          [(EKEventStore *)self _resetForMimicCommitOnObject:v18 oldToNewObjectIDMap:v7];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v14);
  }

  v29 = v12;
  [objc_opt_class() knownRelationshipMultiValueKeys];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v19 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v38;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = [v6 cachedMeltedObjectsForMultiValueKey:{*(*(&v37 + 1) + 8 * j), v29, v30, v31}];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v24 = [v23 countByEnumeratingWithState:&v33 objects:v45 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v34;
          do
          {
            for (k = 0; k != v25; ++k)
            {
              if (*v34 != v26)
              {
                objc_enumerationMutation(v23);
              }

              [(EKEventStore *)self _resetForMimicCommitOnObject:*(*(&v33 + 1) + 8 * k) oldToNewObjectIDMap:v7];
            }

            v25 = [v23 countByEnumeratingWithState:&v33 objects:v45 count:16];
          }

          while (v25);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v20);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)insertedObjectIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__EKEventStore_insertedObjectIDs__block_invoke;
  v9[3] = &unk_1E77FD580;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(unsavedChangesQueue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

void __33__EKEventStore_insertedObjectIDs__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) insertedObjects];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) objectID];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)updatedObjectIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__EKEventStore_updatedObjectIDs__block_invoke;
  v9[3] = &unk_1E77FD580;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(unsavedChangesQueue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

void __32__EKEventStore_updatedObjectIDs__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) updatedObjects];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) objectID];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)deletedObjectIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__EKEventStore_deletedObjectIDs__block_invoke;
  v9[3] = &unk_1E77FD580;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(unsavedChangesQueue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

void __32__EKEventStore_deletedObjectIDs__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) deletedObjects];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) objectID];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)lastCommitTempToPermanentObjectIDMap
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__EKEventStore_lastCommitTempToPermanentObjectIDMap__block_invoke;
  v5[3] = &unk_1E77FD530;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(unsavedChangesQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)waitUntilDatabaseUpdatedToTimestamp:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    *buf = 0;
    v18 = buf;
    v19 = 0x2020000000;
    v20 = 1;
    dbChangedQueue = self->_dbChangedQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__EKEventStore_waitUntilDatabaseUpdatedToTimestamp_completion___block_invoke;
    block[3] = &unk_1E7800FD8;
    v16 = buf;
    block[4] = self;
    v14 = v6;
    v9 = v7;
    v15 = v9;
    dispatch_sync(dbChangedQueue, block);
    if (v18[24] == 1)
    {
      v10 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1A805E000, v10, OS_LOG_TYPE_DEFAULT, "Immediately triggering database wait callback because database timestamp is up to date", v12, 2u);
      }

      v9[2](v9);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEFAULT, "No timestamp given, immediately triggering database wait callback", buf, 2u);
    }

    v7[2](v7);
  }
}

uint64_t __63__EKEventStore_waitUntilDatabaseUpdatedToTimestamp_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  result = [MEMORY[0x1E6992368] doesTimestamp:*(*(a1 + 32) + 352) includeAllChangesVisibleToTimestamp:*(a1 + 40)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEFAULT, "database wait callback must wait until eventStore is refreshed. waitUntilTimestamp: %@", &v8, 0xCu);
    }

    v5 = *(*(a1 + 32) + 144);
    v6 = _Block_copy(*(a1 + 48));
    [v5 addObject:v6];

    result = [*(*(a1 + 32) + 152) addObject:*(a1 + 40)];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (CADInMemoryChangeTimestamp)lastDatabaseTimestamp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  dbChangedQueue = self->_dbChangedQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__EKEventStore_lastDatabaseTimestamp__block_invoke;
  v5[3] = &unk_1E77FD530;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbChangedQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)recordObjectRebaseWithOldObjectID:(id)a3 newObjectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__EKEventStore_recordObjectRebaseWithOldObjectID_newObjectID___block_invoke;
  block[3] = &unk_1E77FD7C8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(unsavedChangesQueue, block);
}

uint64_t __62__EKEventStore_recordObjectRebaseWithOldObjectID_newObjectID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldRecordObjectIDMap];
  if (result)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(*(a1 + 32) + 136);

    return [v5 setObject:v3 forKeyedSubscript:v4];
  }

  return result;
}

- (void)startRecordingObjectIDChangeMap
{
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EKEventStore_startRecordingObjectIDChangeMap__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(unsavedChangesQueue, block);
}

uint64_t __47__EKEventStore_startRecordingObjectIDChangeMap__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = *(a1 + 32);
  v7 = *(v6 + 136);
  *(v6 + 136) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (void)stopRecordingObjectIDChangeMap
{
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EKEventStore_stopRecordingObjectIDChangeMap__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(unsavedChangesQueue, block);
}

void __46__EKEventStore_stopRecordingObjectIDChangeMap__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  *(v2 + 128) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  *(v4 + 136) = 0;
}

- (void)_validateEventPredicate:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"predicate is nil"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"predicate was not created with EKEventStore methods"];
  }
}

- (void)_implicitUpgradeToFullAccessIfNeededWithReason:(int64_t)a3
{
  if ([(EKEventStore *)self eventAccessLevel]== 1 && _shouldUseLegacyAccessBehavior())
  {

    [(EKEventStore *)self requestAccessToEntityType:0 desiredFullAccess:1 testing:0 synchronous:1 reason:a3 completion:0];
  }
}

- (NSArray)eventsMatchingPredicate:(NSPredicate *)predicate
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = predicate;
  [(EKEventStore *)self _validateEventPredicate:v4];
  [(EKEventStore *)self _implicitUpgradeToFullAccessIfNeededWithReason:7];
  mach_absolute_time();
  v5 = [EKPredicateSearch searchWithEntityClass:objc_opt_class() predicate:v4 store:self];
  v6 = [v5 runSynchronously];
  mach_absolute_time();
  CalAnalyticsTimeIntervalFromMachTimes();
  v11 = @"duration";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  CalAnalyticsSendEvent();

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKEventStore eventsMatchingPredicate:];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)eventObjectIDsMatchingPredicate:(id)a3
{
  v4 = a3;
  [(EKEventStore *)self _validateEventPredicate:v4];
  v5 = [EKPredicateSearch searchWithEntityClass:objc_opt_class() predicate:v4 store:self];
  v6 = [v5 fetchObjectIDs];
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKEventStore eventsMatchingPredicate:];
  }

  return v6;
}

- (void)enumerateEventsMatchingPredicate:(NSPredicate *)predicate usingBlock:(EKEventSearchCallback)block
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = predicate;
  v7 = block;
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"block is nil"];
  }

  [(EKEventStore *)self eventsMatchingPredicate:v6];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      v15 = 0;
      v7[2](v7, v13, &v15);
      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKEventStore enumerateEventsMatchingPredicate:usingBlock:];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)fetchEventsMatchingPredicate:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(EKEventStore *)self _validateEventPredicate:v7];
  v8 = [EKPredicateSearch searchWithEntityClass:objc_opt_class() predicate:v7 store:self];

  v9 = _Block_copy(v6);
  v10 = [v8 startWithCompletion:v9 queue:self->_asynchronousSearchQueue];

  return v10;
}

- (id)objectsMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = [EKPredicateSearch searchWithEntityClass:objc_opt_class() predicate:v4 store:self];

  v6 = [v5 runSynchronously];

  return v6;
}

- (void)fetchEventCountsInRange:(id)a3 inCalendars:(id)a4 exclusionOptions:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = [v10 startDate];
  v14 = [v10 endDate];
  v15 = [(EKEventStore *)self predicateForEventsWithStartDate:v13 endDate:v14 calendars:v12 prefetchHint:0 exclusionOptions:a5];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__EKEventStore_fetchEventCountsInRange_inCalendars_exclusionOptions_completion___block_invoke;
  v19[3] = &unk_1E7801000;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v16 = v11;
  v17 = v10;
  v18 = [(EKEventStore *)self fetchEventsMatchingPredicate:v15 resultHandler:v19];
}

void __80__EKEventStore_fetchEventCountsInRange_inCalendars_exclusionOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AB50] set];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v5 copy];

  v7 = [*(a1 + 32) timeZone];
  [v6 setTimeZone:v7];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(a1 + 32);
        [objc_opt_class() _addDaysSpannedByEvent:*(*(&v15 + 1) + 8 * v12++) toCountedSet:v4 inRange:*(a1 + 40) withNSCalendar:{v6, v15}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 48) + 16))();
  v14 = *MEMORY[0x1E69E9840];
}

+ (void)_addDaysSpannedByEvent:(id)a3 toCountedSet:(id)a4 inRange:(id)a5 withNSCalendar:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [v12 startOfDayForStartDateInCalendar:v10];
  v14 = [v12 startOfDayForEndDateInCalendar:v10];

  v15 = [v11 startDate];
  v16 = [v10 timeZone];
  v17 = [v15 dateForDayInTimeZone:v16];

  v18 = [v11 endDate];

  v19 = [v10 timeZone];
  v20 = [v18 dateForDayInTimeZone:v19];

  v21 = [v13 laterDate:v17];
  v22 = [v14 earlierDate:v20];
  v23 = objc_opt_new();
  [v23 setHour:0];
  [v23 setMinute:0];
  [v23 setSecond:0];
  [v9 addObject:v21];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __75__EKEventStore__addDaysSpannedByEvent_toCountedSet_inRange_withNSCalendar___block_invoke;
  v26[3] = &unk_1E7801028;
  v27 = v22;
  v28 = v9;
  v24 = v9;
  v25 = v22;
  [v10 enumerateDatesStartingAfterDate:v21 matchingComponents:v23 options:1024 usingBlock:v26];
}

uint64_t __75__EKEventStore__addDaysSpannedByEvent_toCountedSet_inRange_withNSCalendar___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = v6;
  if (v6 && (v9 = v6, v6 = [v6 CalIsAfterDate:*(a1 + 32)], v7 = v9, !v6))
  {
    v6 = [*(a1 + 40) addObject:v9];
    v7 = v9;
  }

  else
  {
    *a4 = 1;
  }

  return MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)cancelFetchRequest:(id)fetchIdentifier
{
  v3 = fetchIdentifier;
  if ([v3 conformsToProtocol:&unk_1F1B77B48])
  {
    [v3 cancel];
  }

  else
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
    {
      [EKEventStore cancelFetchRequest:v4];
    }
  }
}

- (id)nextEventWithCalendarIdentifiers:(id)a3 exclusionOptions:(int64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(EKEventStore *)self calendarWithIdentifier:*(*(&v17 + 1) + 8 * i), v17];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [(EKEventStore *)self nextEventWithCalendars:v7 exclusionOptions:a4];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)nextEventWithCalendars:(id)a3 exclusionOptions:(int64_t)a4
{
  v4 = [(EKEventStore *)self nextEventsWithCalendars:a3 limit:1 exclusionOptions:a4];
  v5 = [v4 firstObject];

  return v5;
}

- (id)nextEventsWithCalendars:(id)a3 limit:(unint64_t)a4 exclusionOptions:(int64_t)a5
{
  v8 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__EKEventStore_nextEventsWithCalendars_limit_exclusionOptions___block_invoke;
  v12[3] = &unk_1E7801050;
  v12[4] = self;
  v13 = v8;
  v14 = a5;
  v9 = v8;
  v10 = [(EKEventStore *)self _nextEventsWithFetchBlock:v12 steps:&unk_1F1B6B248 limit:a4];

  return v10;
}

id __63__EKEventStore_nextEventsWithCalendars_limit_exclusionOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 startDate];
  v6 = [v4 endDate];

  v7 = [v3 predicateForEventsWithStartDate:v5 endDate:v6 calendars:*(a1 + 40) prefetchHint:0 exclusionOptions:*(a1 + 48)];

  v8 = [*(a1 + 32) eventsMatchingPredicate:v7];

  return v8;
}

- (id)_nextEventsWithFetchBlock:(id)a3 steps:(id)a4 limit:(unint64_t)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  v26 = v9;
  if ([v7 count])
  {
    v10 = 0;
    v28 = v7;
    v11 = v9;
    while (1)
    {
      v12 = [v7 objectAtIndexedSubscript:{v10, v26}];
      v13 = [v12 integerValue];

      v14 = [MEMORY[0x1E6992F70] rangeWithStartDate:v11 duration:(86400 * v13)];
      v15 = v29[2](v29, v14);
      v16 = [v15 sortedArrayUsingComparator:&__block_literal_global_557];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v31;
LABEL_5:
        v21 = 0;
        while (1)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * v21);
          if ([v8 count] >= a5)
          {
            break;
          }

          [v8 addObject:v22];
          if (v19 == ++v21)
          {
            v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v19)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      if ([v8 count] == a5)
      {
        break;
      }

      v9 = [v14 endDate];

      ++v10;
      v7 = v28;
      v11 = v9;
      if ([v28 count] <= v10)
      {
        goto LABEL_15;
      }
    }

    v9 = v11;
    v7 = v28;
  }

LABEL_15:
  v23 = [v8 copy];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

uint64_t __54__EKEventStore__nextEventsWithFetchBlock_steps_limit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)alarmWithUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__24;
    v17 = __Block_byref_object_dispose__24;
    v18 = 0;
    v5 = [(EKEventStore *)self connection];
    v6 = [v5 CADOperationProxySync];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__EKEventStore_alarmWithUUID___block_invoke;
    v9[3] = &unk_1E7800E48;
    v10 = v4;
    v11 = self;
    v12 = &v13;
    [v6 CADDatabaseGetAlarmWithUUID:v10 reply:v9];

    v7 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __30__EKEventStore_alarmWithUUID___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __30__EKEventStore_alarmWithUUID___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [EKObjectID objectIDWithCADObjectID:v5];
    v8 = [v6 registerFetchedObjectWithID:v7];

    if (v8)
    {
      v9 = [(EKObject *)[EKAlarm alloc] initWithPersistentObject:v8];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }
}

- (id)alarmWithExternalID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__24;
    v17 = __Block_byref_object_dispose__24;
    v18 = 0;
    v5 = [(EKEventStore *)self connection];
    v6 = [v5 CADOperationProxySync];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__EKEventStore_alarmWithExternalID___block_invoke;
    v9[3] = &unk_1E7800E48;
    v10 = v4;
    v11 = self;
    v12 = &v13;
    [v6 CADDatabaseGetAlarmWithExternalID:v10 reply:v9];

    v7 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __36__EKEventStore_alarmWithExternalID___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __36__EKEventStore_alarmWithExternalID___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [EKObjectID objectIDWithCADObjectID:v5];
    v8 = [v6 registerFetchedObjectWithID:v7];

    if (v8)
    {
      v9 = [(EKObject *)[EKAlarm alloc] initWithPersistentObject:v8];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }
}

- (id)alarmOccurrencesFromAlarmCache
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  v2 = [(EKEventStore *)self connection];
  v3 = [v2 CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__EKEventStore_alarmOccurrencesFromAlarmCache__block_invoke;
  v6[3] = &unk_1E7800918;
  v6[4] = &v7;
  [v3 CADDatabaseGetAlarmOccurrencesFromAlarmCacheWithReply:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __46__EKEventStore_alarmOccurrencesFromAlarmCache__block_invoke(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __46__EKEventStore_alarmOccurrencesFromAlarmCache__block_invoke_cold_1(v7);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          v15 = objc_alloc(MEMORY[0x1E6992408]);
          v16 = [v15 initWithDictionaryRepresentation:{v14, v21}];
          [v8 addObject:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v17 = [v8 copy];
    v18 = *(*(a1 + 32) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  v20 = *MEMORY[0x1E69E9840];
}

+ (id)calendarObjectIDsForPredicate:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v6)
    {
LABEL_15:

      goto LABEL_18;
    }

    v7 = v6;
    v18 = v3;
    v8 = 0;
    v9 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 backingObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v14 = [v11 CADObjectID];
          [v4 addObject:v14];
        }

        else
        {
          v8 = 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);

    if (v8)
    {
      v3 = v18;
      if ([v4 count])
      {
        goto LABEL_18;
      }

      v15 = objc_alloc(MEMORY[0x1E6992DE0]);
      v5 = [v15 initWithEntityType:1 entityID:0x80000000 databaseID:*MEMORY[0x1E6992E18]];
      [v4 addObject:v5];
      goto LABEL_15;
    }

    v3 = v18;
  }

  else
  {
    v4 = 0;
  }

LABEL_18:

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSPredicate)predicateForEventsWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate calendars:(NSArray *)calendars
{
  v8 = startDate;
  v9 = endDate;
  v10 = calendars;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = _NSMethodExceptionProem();
    [v17 raise:v18 format:{@"%@: startDate is nil", v19}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v20 = MEMORY[0x1E695DF30];
  v21 = *MEMORY[0x1E695D940];
  v22 = _NSMethodExceptionProem();
  [v20 raise:v21 format:{@"%@: endDate is nil", v22}];

LABEL_3:
  v23 = v9;
  restrictDateRange(v8, &v23);
  v11 = v23;

  v12 = [EKEventStore calendarObjectIDsForPredicate:v10];
  v13 = MEMORY[0x1E6992340];
  v14 = [(EKEventStore *)self timeZone];
  v15 = [v13 predicateWithStartDate:v8 endDate:v11 timeZone:v14 calendars:v12 propertyLoadMode:_predicatePropertyLoadMode];

  return v15;
}

- (id)predicateForEventsWithStartDate:(id)a3 endDate:(id)a4 uniqueID:(id)a5 calendars:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = _NSMethodExceptionProem();
    [v20 raise:v21 format:{@"%@: startDate is nil", v22}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v23 = MEMORY[0x1E695DF30];
  v24 = *MEMORY[0x1E695D940];
  v25 = _NSMethodExceptionProem();
  [v23 raise:v24 format:{@"%@: endDate is nil", v25}];

LABEL_3:
  v26 = v11;
  restrictDateRange(v10, &v26);
  v14 = v26;

  v15 = [EKEventStore calendarObjectIDsForPredicate:v13];
  v16 = MEMORY[0x1E6992340];
  v17 = [(EKEventStore *)self timeZone];
  v18 = [v16 predicateWithStartDate:v10 endDate:v14 timeZone:v17 eventUUID:v12 calendars:v15];

  return v18;
}

- (id)predicateForEventsWithStartDate:(id)a3 endDate:(id)a4 calendars:(id)a5 loadDefaultProperties:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = _NSMethodExceptionProem();
    [v20 raise:v21 format:{@"%@: startDate is nil", v22}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v23 = MEMORY[0x1E695DF30];
  v24 = *MEMORY[0x1E695D940];
  v25 = _NSMethodExceptionProem();
  [v23 raise:v24 format:{@"%@: endDate is nil", v25}];

LABEL_3:
  v26 = v11;
  restrictDateRange(v10, &v26);
  v13 = v26;

  v14 = [EKEventStore calendarObjectIDsForPredicate:v12];
  if (v6)
  {
    v15 = _predicatePropertyLoadMode;
  }

  else
  {
    v15 = 0;
  }

  v16 = MEMORY[0x1E6992340];
  v17 = [(EKEventStore *)self timeZone];
  v18 = [v16 predicateWithStartDate:v10 endDate:v13 timeZone:v17 calendars:v14 propertyLoadMode:v15];

  return v18;
}

- (id)predicateForAssistantEventSearchWithTimeZone:(id)a3 startDate:(id)a4 endDate:(id)a5 title:(id)a6 location:(id)a7 notes:(id)a8 participants:(id)a9 calendars:(id)a10 limit:(int64_t)a11
{
  v17 = MEMORY[0x1E6992350];
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = [[v17 alloc] initWithTimeZone:v25 startDate:v24 endDate:v23 title:v22 location:v21 notes:v20 participants:v19 limit:a11];

  v27 = [EKEventStore calendarObjectIDsForPredicate:v18];

  [v26 setCalendars:v27];

  return v26;
}

- (id)predicateForMasterEventsInCalendars:(id)a3
{
  v3 = [EKEventStore calendarObjectIDsForPredicate:a3];
  v4 = [MEMORY[0x1E6992410] predicateWithCalendarIDs:v3];

  return v4;
}

- (id)predicateForScheduleAgentClientEventsInCalendar:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 CADObjectID];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  v5 = [MEMORY[0x1E6992418] predicateWithCalendarIDs:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)hasImmediatelyEligibleTravelEvents
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  v4 = [MEMORY[0x1E695DF00] distantFuture];
  v5 = [(EKEventStore *)self calendarsForEntityType:0];
  [(EKEventStore *)self travelEligibleEventsInCalendars:v5 startDate:v3 endDate:v4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) preferredLocation];
        v11 = [v10 hasKnownSpatialData];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)travelEligibleEventsInCalendars:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = [(EKEventStore *)self predicateForPotentialTravelEventsInCalendars:a3 startDate:a4 endDate:a5];
  v7 = [(EKEventStore *)self eventsMatchingPredicate:v6];
  v8 = [MEMORY[0x1E695DF70] arrayWithArray:v7];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (([v14 potentiallyEligibleForTravelAdvisories] & 1) == 0)
        {
          [v8 removeObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)predicateForPotentialTravelEventsInCalendars:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore predicateForPotentialTravelEventsInCalendars:startDate:endDate:];
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore predicateForPotentialTravelEventsInCalendars:startDate:endDate:];
  }

LABEL_6:
  v14 = v9;
  restrictDateRange(v8, &v14);
  v10 = v14;

  v11 = [EKEventStore calendarObjectIDsForPredicate:v7];
  v12 = [objc_alloc(MEMORY[0x1E69923D0]) initWithCalendarIDs:v11 startDate:v8 endDate:v10];

  return v12;
}

- (id)predicateForUpNextEventsInCalendars:(id)a3 startDate:(id)a4 endDate:(id)a5 startDateRestrictionThreshold:(double)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore predicateForUpNextEventsInCalendars:startDate:endDate:startDateRestrictionThreshold:];
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else if (v11)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore predicateForUpNextEventsInCalendars:startDate:endDate:startDateRestrictionThreshold:];
  }

LABEL_6:
  v16 = v11;
  restrictDateRange(v10, &v16);
  v12 = v16;

  v13 = [EKEventStore calendarObjectIDsForPredicate:v9];
  v14 = [objc_alloc(MEMORY[0x1E69923E8]) initWithCalendarIDs:v13 startDate:v10 endDate:v12];

  [v14 setStartDateRestrictionThreshold:a6];

  return v14;
}

- (id)predicateForNaturalLanguageSuggestedEventsWithSearchString:(id)a3
{
  v4 = MEMORY[0x1E6992378];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(EKEventStore *)self timeZone];
  v8 = [v6 initWithSearchString:v5 timeZone:v7];

  return v8;
}

- (id)predicateForNaturalLanguageSuggestedEventsWithSearchString:(id)a3 startDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = objc_opt_new();
  }

  v8 = objc_alloc(MEMORY[0x1E6992378]);
  v9 = [(EKEventStore *)self timeZone];
  v10 = [v8 initWithSearchString:v6 startDate:v7 timeZone:v9];

  return v10;
}

- (id)predicateForEventCreatedFromSuggestionWithOpaqueKey:(id)a3
{
  v3 = MEMORY[0x1E6992338];
  v4 = a3;
  v5 = [[v3 alloc] initWithOpaqueKey:v4];

  return v5;
}

- (id)predicateForEventsCreatedFromSuggestionWithExtractionGroupIdentifier:(id)a3
{
  v3 = MEMORY[0x1E6992338];
  v4 = a3;
  v5 = [[v3 alloc] initWithExtractionGroupIdentifier:v4];

  return v5;
}

- (id)predicateForEventsWithStartDate:(id)a3 endDate:(id)a4 calendars:(id)a5 matchingContacts:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [EKEventStore calendarObjectIDsForPredicate:v12];
  if ([v13 count])
  {
    v15 = [objc_alloc(MEMORY[0x1E6992320]) initWithCalendarIDs:v14 startDate:v10 endDate:v11 contacts:v13];
  }

  else
  {
    v15 = [(EKEventStore *)self predicateForEventsWithStartDate:v10 endDate:v11 calendars:v12];
  }

  v16 = v15;

  return v16;
}

- (id)predicateForCalendarItemsOfType:(unint64_t)a3 inCalendar:(id)a4
{
  v5 = MEMORY[0x1E69923A8];
  v6 = a4;
  v7 = [v5 alloc];
  if (a3 == 2)
  {
    v8 = 3;
  }

  else
  {
    v8 = 101;
  }

  if (a3 == 1)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v6 CADObjectID];

  v11 = [v7 initWithEntityType:v9 filters:0 calendar:v10];

  return v11;
}

- (id)predicateForMasterEventsWithExternalTrackingStatusInCalendar:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69923A0];
  v4 = a3;
  v5 = [[v3 alloc] initWithProperty:0 comparison:1 integerValue:0];
  v6 = objc_alloc(MEMORY[0x1E69923A8]);
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v4 CADObjectID];

  v9 = [v6 initWithEntityType:2 filters:v7 calendar:v8];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)predicateForCalendarItemsOfType:(unint64_t)a3 withUniqueIdentifier:(id)a4 inCalendar:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69923A0];
  v8 = a5;
  v9 = a4;
  v10 = [[v7 alloc] initWithProperty:1 comparison:0 stringValue:v9];

  v11 = objc_alloc(MEMORY[0x1E69923A8]);
  if (a3 == 2)
  {
    v12 = 3;
  }

  else
  {
    v12 = 101;
  }

  if (a3 == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  v19[0] = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v15 = [v8 CADObjectID];

  v16 = [v11 initWithEntityType:v13 filters:v14 calendar:v15];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)predicateForCalendarItemsOfType:(unint64_t)a3 withUniqueIdentifier:(id)a4 inSource:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69923A0];
  v8 = a5;
  v9 = a4;
  v10 = [[v7 alloc] initWithProperty:1 comparison:0 stringValue:v9];

  v11 = objc_alloc(MEMORY[0x1E69923A8]);
  if (a3 == 2)
  {
    v12 = 3;
  }

  else
  {
    v12 = 101;
  }

  if (a3 == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  v19[0] = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v15 = [v8 CADObjectID];

  v16 = [v11 initWithEntityType:v13 filters:v14 source:v15];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)predicateForCalendarItemsOfType:(unint64_t)a3 withExternalID:(id)a4 inCalendar:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69923A0];
  v8 = a5;
  v9 = a4;
  v10 = [[v7 alloc] initWithProperty:3 comparison:0 stringValue:v9];

  v11 = objc_alloc(MEMORY[0x1E69923A8]);
  if (a3 == 2)
  {
    v12 = 3;
  }

  else
  {
    v12 = 101;
  }

  if (a3 == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  v19[0] = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v15 = [v8 CADObjectID];

  v16 = [v11 initWithEntityType:v13 filters:v14 calendar:v15];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)predicateForCalendarItemsOfType:(unint64_t)a3 withExternalID:(id)a4 inSource:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69923A0];
  v8 = a5;
  v9 = a4;
  v10 = [[v7 alloc] initWithProperty:3 comparison:0 stringValue:v9];

  v11 = objc_alloc(MEMORY[0x1E69923A8]);
  if (a3 == 2)
  {
    v12 = 3;
  }

  else
  {
    v12 = 101;
  }

  if (a3 == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  v19[0] = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v15 = [v8 CADObjectID];

  v16 = [v11 initWithEntityType:v13 filters:v14 source:v15];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)predicateForEventsWithAttendeesInCalendar:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69923A0];
  v4 = a3;
  v5 = [[v3 alloc] initWithProperty:12 comparison:0 integerValue:1];
  v6 = objc_alloc(MEMORY[0x1E69923A8]);
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v4 CADObjectID];

  v9 = [v6 initWithEntityType:2 filters:v7 calendar:v8];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)predicateForMasterEventsWithStartDate:(id)a3 title:(id)a4 inCalendar:(id)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69923A0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithProperty:4 comparison:0 stringValue:v9];

  v12 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:5 comparison:0 dateValue:v10];
  v13 = objc_alloc(MEMORY[0x1E69923A8]);
  v19[0] = v11;
  v19[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [v8 CADObjectID];

  v16 = [v13 initWithEntityType:2 filters:v14 calendar:v15];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)predicateForMasterEventsInCalendar:(id)a3
{
  v3 = MEMORY[0x1E69923A8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 CADObjectID];

  v7 = [v5 initWithEntityType:2 filters:MEMORY[0x1E695E0F0] calendar:v6];

  return v7;
}

- (id)predicateForRandomMasterEventsWithStartDate:(id)a3 endDate:(id)a4 needToHaveAttendee:(BOOL)a5 needToHaveLocation:(BOOL)a6 allDay:(BOOL)a7 filteredOutTitles:(id)a8 limit:(int64_t)a9 calendars:(id)a10
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v57[2] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v44 = a10;
  v18 = objc_opt_new();
  if (v13)
  {
    v19 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:12 comparison:0 integerValue:1];
    [v18 addObject:v19];
  }

  if (v12)
  {
    v20 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:13 comparison:1 integerValue:0];
    [v18 addObject:v20];
  }

  v45 = v16;
  v46 = v15;
  if (v15 && v16)
  {
    v21 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:5 comparison:2 dateValue:v16];
    v22 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:6 comparison:4 dateValue:v15];
    v23 = objc_alloc(MEMORY[0x1E6992318]);
    v57[0] = v21;
    v57[1] = v22;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
    v25 = [v23 initWithFilters:v24 operation:0];

    [v18 addObject:v25];
  }

  v43 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:14 comparison:0 integerValue:v11];
  [v18 addObject:?];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v26 = v17;
  v27 = [v26 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v52;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v52 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:4 comparison:1 stringValue:*(*(&v51 + 1) + 8 * i)];
        [v18 addObject:v31];
      }

      v28 = [v26 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v28);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v32 = v44;
  v33 = [v32 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = 0;
    v36 = *v48;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v47 + 1) + 8 * j);
        if (!v35)
        {
          v35 = objc_opt_new();
        }

        v39 = [v38 CADObjectID];
        [v35 addObject:v39];
      }

      v34 = [v32 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v34);
  }

  else
  {
    v35 = 0;
  }

  v40 = [objc_alloc(MEMORY[0x1E69923A8]) initWithEntityType:2 filters:v18 calendars:v35 limit:a9 randomize:1];
  v41 = *MEMORY[0x1E69E9840];

  return v40;
}

- (id)predicateForEventsInSubscribedCalendar:(id)a3
{
  v3 = MEMORY[0x1E69923C8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 CADObjectID];

  v7 = [v5 initWithCalendar:v6];

  return v7;
}

- (id)predicateForMasterEventsWithOccurrencesWithStartDate:(id)a3 endDate:(id)a4 inCalendar:(id)a5
{
  v33[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69923A0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v28 = [[v7 alloc] initWithProperty:10 comparison:0 integerValue:1];
  v11 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:5 comparison:2 dateValue:v9];
  v29 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:6 comparison:4 dateValue:v10];
  v12 = objc_alloc(MEMORY[0x1E6992318]);
  v33[0] = v11;
  v33[1] = v29;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v14 = [v12 initWithFilters:v13 operation:0];

  v15 = objc_alloc(MEMORY[0x1E6992318]);
  v32[0] = v11;
  v32[1] = v28;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v17 = [v15 initWithFilters:v16 operation:0];

  v18 = objc_alloc(MEMORY[0x1E6992318]);
  v31[0] = v14;
  v31[1] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v20 = [v18 initWithFilters:v19 operation:1];

  v21 = objc_alloc(MEMORY[0x1E69923A8]);
  v30 = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v23 = [v8 CADObjectID];

  v24 = [v21 initWithEntityType:2 filters:v22 calendar:v23];
  v25 = [objc_alloc(MEMORY[0x1E6992348]) initWithPredicate:v24 limitWithStartDate:v10 endDate:v9 mustStartInInterval:0];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)predicateForMasterEventsWithInvitationsAndOccurrencesAfter:(id)a3 inCalendar:(id)a4
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69923A0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithProperty:10 comparison:0 integerValue:1];
  v9 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:9 comparison:1 integerValue:0];
  v10 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:5 comparison:5 dateValue:v7];
  v11 = objc_alloc(MEMORY[0x1E6992318]);
  v24[0] = v8;
  v24[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v13 = [v11 initWithFilters:v12 operation:1];

  v14 = objc_alloc(MEMORY[0x1E69923A8]);
  v23[0] = v9;
  v23[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v16 = [v6 CADObjectID];

  v17 = [v14 initWithEntityType:2 filters:v15 calendar:v16];
  v18 = objc_alloc(MEMORY[0x1E6992348]);
  v19 = [MEMORY[0x1E695DF00] distantFuture];
  v20 = [v18 initWithPredicate:v17 limitWithStartDate:v7 endDate:v19 mustStartInInterval:0];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)predicateForNonrecurringEventsWithStartDate:(id)a3 endDate:(id)a4 calendars:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [EKEventStore calendarObjectIDsForPredicate:a5];
  v10 = [objc_alloc(MEMORY[0x1E6992380]) initWithStartDate:v8 endDate:v7 calendarIDs:v9];

  return v10;
}

- (unint64_t)timeToLeaveLocationAuthorizationStatus
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(EKEventStore *)self connection];
  v3 = [v2 CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__EKEventStore_timeToLeaveLocationAuthorizationStatus__block_invoke;
  v6[3] = &unk_1E7800880;
  v6[4] = &v7;
  [v3 CADDatabaseGetTTLLocationAuthorizationStatus:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __54__EKEventStore_timeToLeaveLocationAuthorizationStatus__block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __54__EKEventStore_timeToLeaveLocationAuthorizationStatus__block_invoke_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

- (id)predicateForEventsWithConferenceURL:(id)a3 limit:(int64_t)a4
{
  v5 = MEMORY[0x1E6992358];
  v6 = a3;
  v7 = [[v5 alloc] initWithURL:v6 limit:a4];

  [v7 setCalendars:MEMORY[0x1E695E0F0]];

  return v7;
}

- (int64_t)registerForDetailedChangeTrackingInSource:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__24;
  v17 = __Block_byref_object_dispose__24;
  v18 = 0;
  v7 = [(EKEventStore *)self connection];
  v8 = [v7 CADOperationProxySync];
  v9 = [v6 CADObjectID];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__EKEventStore_registerForDetailedChangeTrackingInSource_error___block_invoke;
  v12[3] = &unk_1E7800B50;
  v12[4] = &v13;
  v12[5] = &v19;
  [v8 CADDatabaseRegisterForDetailedChangeTrackingInSource:v9 reply:v12];

  if (a4)
  {
    *a4 = v14[5];
  }

  v10 = v20[3];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v10;
}

void __64__EKEventStore_registerForDetailedChangeTrackingInSource_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v5 = *(a1 + 32);
    v4 = a1 + 32;
    v6 = *(v5 + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v3;

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __64__EKEventStore_registerForDetailedChangeTrackingInSource_error___block_invoke_cold_1(v4);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)unregisterForDetailedChangeTracking:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__24;
  v13 = __Block_byref_object_dispose__24;
  v14 = 0;
  v4 = [(EKEventStore *)self connection];
  v5 = [v4 CADOperationProxySync];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__EKEventStore_unregisterForDetailedChangeTracking___block_invoke;
  v8[3] = &unk_1E77FD310;
  v8[4] = &v9;
  [v5 CADDatabaseUnregisterForDetailedChangeTracking:v8];

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = v10[5] == 0;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __52__EKEventStore_unregisterForDetailedChangeTracking___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v5 = *(a1 + 32);
    v4 = a1 + 32;
    v6 = *(v5 + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v3;

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __52__EKEventStore_unregisterForDetailedChangeTracking___block_invoke_cold_1(v4);
    }
  }
}

- (void)fetchChangedObjectIDsSinceToken:(int64_t)a3 resultHandler:(id)a4
{
  v5 = a4;
  v6 = [(EKEventStore *)self connection];
  v7 = [v6 CADOperationProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__EKEventStore_fetchChangedObjectIDsSinceToken_resultHandler___block_invoke;
  v9[3] = &unk_1E78010C8;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 CADDatabaseFetchChangedObjectIDs:v9];
}

void __62__EKEventStore_fetchChangedObjectIDsSinceToken_resultHandler___block_invoke(uint64_t a1, int a2, char a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__EKEventStore_fetchChangedObjectIDsSinceToken_resultHandler___block_invoke_2;
  block[3] = &unk_1E78010A0;
  v19 = a2;
  v20 = a3;
  v12 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v16 = v9;
  v17 = v10;
  v18 = v12;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, block);
}

void __62__EKEventStore_fetchChangedObjectIDsSinceToken_resultHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 68);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__EKEventStore_fetchChangedObjectIDsSinceToken_resultHandler___block_invoke_3;
  v6[3] = &unk_1E7801078;
  v6[4] = v3;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 _processChangedObjectIDsWithErrorCode:v1 changesTruncated:v2 latestToken:v4 changeData:v5 resultHandler:v6];
}

void __62__EKEventStore_fetchChangedObjectIDsSinceToken_resultHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a1;
  v11 = *(a1 + 32);
  v12 = a6;
  v13 = a5;
  v16 = a4;
  v14 = a3;
  [v11 recordSequenceTokenForLegacyClients:v14];
  v15 = *(v10 + 40);
  LODWORD(v10) = [v14 legacyToken];

  (*(v15 + 16))(v15, a2, v10, v16, v13, v12);
}

- (void)changedObjectIDsSinceToken:(int64_t)a3 resultHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__EKEventStore_changedObjectIDsSinceToken_resultHandler___block_invoke;
  v7[3] = &unk_1E7801078;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(EKEventStore *)self fetchChangedObjectIDs:v7];
}

void __57__EKEventStore_changedObjectIDsSinceToken_resultHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a1;
  v11 = *(a1 + 32);
  v12 = a6;
  v13 = a5;
  v16 = a4;
  v14 = a3;
  [v11 recordSequenceTokenForLegacyClients:v14];
  v15 = *(v10 + 40);
  LODWORD(v10) = [v14 legacyToken];

  (*(v15 + 16))(v15, a2, v10, v16, v13, v12);
}

- (void)fetchChangedObjectIDs:(id)a3
{
  v4 = a3;
  v5 = [(EKEventStore *)self connection];
  v6 = [v5 CADOperationProxySync];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__EKEventStore_fetchChangedObjectIDs___block_invoke;
  v8[3] = &unk_1E78010C8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 CADDatabaseFetchChangedObjectIDs:v8];
}

- (void)_processChangedObjectIDsWithErrorCode:(int)a3 changesTruncated:(BOOL)a4 latestToken:(id)a5 changeData:(id)a6 resultHandler:(id)a7
{
  v9 = a4;
  v83 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  v13 = a7;
  if (a3)
  {
    v14 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore _processChangedObjectIDsWithErrorCode:v14 changesTruncated:? latestToken:? changeData:? resultHandler:?];
    }

    (*(v13 + 2))(v13, 0, 0, 0, 0, 0);
    goto LABEL_52;
  }

  v55 = v9;
  v56 = v12;
  v57 = v11;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v15 = v12;
  v65 = [(EKSequenceToken *)v15 countByEnumeratingWithState:&v70 objects:v82 count:16];
  v61 = v13;
  if (v65)
  {
    v58 = 0;
    v59 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v63 = *v71;
    v60 = 0;
    *&v16 = 134218752;
    v54 = v16;
    v64 = v15;
LABEL_7:
    v20 = 0;
    while (1)
    {
      v69 = v18;
      v68 = v17;
      if (*v71 != v63)
      {
        objc_enumerationMutation(v15);
      }

      v21 = *(*(&v70 + 1) + 8 * v20);
      v22 = [(EKSequenceToken *)v15 objectForKeyedSubscript:v21, v54];
      v23 = [v22 objectForKeyedSubscript:@"changes"];
      v24 = [v22 objectForKeyedSubscript:@"inserts"];
      v25 = [v24 unsignedIntegerValue];

      v26 = [v22 objectForKeyedSubscript:@"updates"];
      v27 = [v26 unsignedIntegerValue];

      v67 = v22;
      v28 = [v22 objectForKeyedSubscript:@"deletes"];
      v29 = [v28 unsignedIntegerValue];

      v30 = [v21 intValue];
      v31 = [EKObjectID EKObjectIDsFromData:v23 range:0 databaseID:v25, v30];
      v32 = [EKObjectID EKObjectIDsFromData:v23 range:v25 databaseID:v27, v30];
      v33 = v23;
      v34 = [EKObjectID EKObjectIDsFromData:v23 range:v27 + v25 databaseID:v29, v30];
      v35 = v34;
      v36 = v32;
      if (v31)
      {
        v37 = v32 == 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = v37 || v34 == 0;
      v39 = !v38;
      v66 = v39;
      if (v38)
      {
        v62 = v31;
        v43 = EKLogHandle;
        v41 = v33;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          v51 = v43;
          v52 = [v33 length];
          *buf = v54;
          v75 = v25;
          v76 = 2048;
          v77 = v27;
          v78 = 2048;
          v79 = v29;
          v80 = 2048;
          v81 = v52;
          _os_log_error_impl(&dword_1A805E000, v51, OS_LOG_TYPE_ERROR, "Change data was the wrong size to hold the changes we received. Told of %lu inserts, %lu updates, and %lu deletes, but change data was only %lu bytes long.", buf, 0x2Au);
        }

        (*(v61 + 2))(v61, 0, 0, 0, 0, 0);
        v18 = v69;
        v17 = v68;
        v15 = v64;
        v31 = v62;
        goto LABEL_41;
      }

      if (v19 && [v19 count])
      {
        v18 = v69;
        v40 = v60;
        v41 = v33;
        if (!v60)
        {
          v42 = [v19 mutableCopy];

          v40 = v42;
          v19 = v42;
        }

        v17 = v68;
        v60 = v40;
        [v40 addObjectsFromArray:v31];
        if (!v69)
        {
LABEL_35:
          v47 = v36;

          v18 = v47;
          if (!v17)
          {
            goto LABEL_40;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v44 = v31;

        v19 = v44;
        v17 = v68;
        v18 = v69;
        v41 = v33;
        if (!v69)
        {
          goto LABEL_35;
        }
      }

      if (![v18 count])
      {
        goto LABEL_35;
      }

      v45 = v59;
      if (!v59)
      {
        v46 = [v18 mutableCopy];

        v45 = v46;
        v18 = v46;
      }

      v59 = v45;
      [v45 addObjectsFromArray:v36];
      if (!v17)
      {
        goto LABEL_40;
      }

LABEL_36:
      if ([v17 count])
      {
        v48 = v58;
        if (!v58)
        {
          v49 = [v17 mutableCopy];

          v48 = v49;
          v17 = v49;
        }

        v15 = v64;
        v58 = v48;
        [v48 addObjectsFromArray:v35];
        goto LABEL_41;
      }

LABEL_40:
      v50 = v35;

      v17 = v50;
      v15 = v64;
LABEL_41:

      if (!v66)
      {
        v12 = v56;
        v11 = v57;
        v13 = v61;
        goto LABEL_51;
      }

      if (v65 == ++v20)
      {
        v65 = [(EKSequenceToken *)v15 countByEnumeratingWithState:&v70 objects:v82 count:16];
        if (v65)
        {
          goto LABEL_7;
        }

        goto LABEL_47;
      }
    }
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
LABEL_47:

  v11 = v57;
  if (v57)
  {
    v15 = [[EKSequenceToken alloc] initWithCADSequenceToken:v57];
  }

  else
  {
    v15 = 0;
  }

  v13 = v61;
  (*(v61 + 2))(v61, v55, v15, v19, v18, v17);
  v12 = v56;
LABEL_51:

LABEL_52:
  v53 = *MEMORY[0x1E69E9840];
}

- (void)markChangedObjectIDsConsumedUpToToken:(int64_t)a3
{
  lastSequenceToken = self->_lastSequenceToken;
  if (lastSequenceToken)
  {
    v6 = [(EKSequenceToken *)lastSequenceToken legacyToken];
  }

  else
  {
    v6 = -1;
  }

  if (v6 != a3 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore markChangedObjectIDsConsumedUpToToken:];
  }

  if (self->_lastSequenceToken)
  {
    [(EKEventStore *)self consumeAllChangesUpToToken:?];
  }
}

- (void)consumeAllChangesUpToToken:(id)a3
{
  v4 = a3;
  v7 = [(EKEventStore *)self connection];
  v5 = [v7 CADOperationProxySync];
  v6 = [v4 CADToken];

  [v5 CADDatabaseMarkChangedObjectIDsConsumedUpToSequenceToken:v6 reply:&__block_literal_global_603];
}

void __43__EKEventStore_consumeAllChangesUpToToken___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __43__EKEventStore_consumeAllChangesUpToToken___block_invoke_cold_1(v2);
    }
  }
}

- (BOOL)consumeAllChangesUpToToken:(id)a3 except:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [EKObjectChange CADObjectChangeIDsFromEKObjectChanges:v9];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = [(EKEventStore *)self connection];
  v12 = [v11 CADOperationProxySync];
  v13 = [v8 CADToken];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__EKEventStore_consumeAllChangesUpToToken_except_error___block_invoke;
  v16[3] = &unk_1E77FD310;
  v16[4] = &v17;
  [v12 CADDatabaseConsumeAllChangesUpToToken:v13 except:v10 reply:v16];

  v14 = *(v18 + 6);
  if (a5 && v14)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithCADResult:*(v18 + 6)];
  }

  _Block_object_dispose(&v17, 8);

  return v14 == 0;
}

- (BOOL)markIndividualChangesConsumed:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [EKObjectChange CADObjectChangeIDsFromEKObjectChanges:v6];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8 = [(EKEventStore *)self connection];
  v9 = [v8 CADOperationProxySync];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__EKEventStore_markIndividualChangesConsumed_error___block_invoke;
  v12[3] = &unk_1E77FD310;
  v12[4] = &v13;
  [v9 CADDatabaseMarkIndividualChangesConsumed:v7 reply:v12];

  v10 = *(v14 + 6);
  if (a4 && v10)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithCADResult:*(v14 + 6)];
  }

  _Block_object_dispose(&v13, 8);

  return v10 == 0;
}

- (void)clearSuperfluousChanges
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setCachedDefaultAlarmOffsetsToNSNotFound
{
  defaultTimedAlarmOffset = self->_defaultTimedAlarmOffset;
  self->_defaultTimedAlarmOffset = &unk_1F1B6AFA8;

  defaultAllDayAlarmOffset = self->_defaultAllDayAlarmOffset;
  self->_defaultAllDayAlarmOffset = &unk_1F1B6AFA8;
}

- (NSNumber)defaultTimedAlarmOffset
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  v3 = [(EKEventStore *)self calendarSourcesAndDefaultsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__EKEventStore_defaultTimedAlarmOffset__block_invoke;
  v6[3] = &unk_1E77FD440;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  if ([v8[5] integerValue] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = v8[5];
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __39__EKEventStore_defaultTimedAlarmOffset__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[20];
  if (!v3)
  {
    v4 = [v2 connection];
    v5 = [v4 CADOperationProxySync];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__EKEventStore_defaultTimedAlarmOffset__block_invoke_2;
    v6[3] = &unk_1E78010F0;
    v6[4] = *(a1 + 32);
    [v5 CADDatabaseGetDefaultAlarmOffsetForAllDay:0 reply:v6];

    v3 = *(*(a1 + 32) + 160);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

void __39__EKEventStore_defaultTimedAlarmOffset__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __39__EKEventStore_defaultTimedAlarmOffset__block_invoke_2_cold_1(v7);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 160), a3);
  }
}

- (NSNumber)defaultAllDayAlarmOffset
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  v3 = [(EKEventStore *)self calendarSourcesAndDefaultsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__EKEventStore_defaultAllDayAlarmOffset__block_invoke;
  v6[3] = &unk_1E77FD440;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  if ([v8[5] integerValue] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = v8[5];
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __40__EKEventStore_defaultAllDayAlarmOffset__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[21];
  if (!v3)
  {
    v4 = [v2 connection];
    v5 = [v4 CADOperationProxySync];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__EKEventStore_defaultAllDayAlarmOffset__block_invoke_2;
    v6[3] = &unk_1E78010F0;
    v6[4] = *(a1 + 32);
    [v5 CADDatabaseGetDefaultAlarmOffsetForAllDay:1 reply:v6];

    v3 = *(*(a1 + 32) + 168);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

void __40__EKEventStore_defaultAllDayAlarmOffset__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __40__EKEventStore_defaultAllDayAlarmOffset__block_invoke_2_cold_1(v7);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 168), a3);
  }
}

- (void)purgeChangelog
{
  v3 = [(EKEventStore *)self connection];
  v2 = [v3 CADOperationProxySync];
  [v2 CADPurgeChangeTrackingReply:&__block_literal_global_610];
}

void __30__EKEventStore_purgeChangelog__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __30__EKEventStore_purgeChangelog__block_invoke_cold_1(v2);
    }
  }
}

- (void)cacheValidationStatusForAddress:(id)a3 status:(unint64_t)a4
{
  v10 = a3;
  cachedValidatedAddresses = self->_cachedValidatedAddresses;
  if (!cachedValidatedAddresses)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v8 = self->_cachedValidatedAddresses;
    self->_cachedValidatedAddresses = v7;

    cachedValidatedAddresses = self->_cachedValidatedAddresses;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)cachedValidatedAddresses setObject:v9 forKey:v10];
}

- (unint64_t)addressValidationStatus:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_cachedValidatedAddresses objectForKey:a3];
  v4 = [v3 intValue];

  return v4;
}

- (id)cachedConstraintsForSource:(id)a3
{
  v4 = a3;
  if (-[EKEventStore returnEventResults](self, "returnEventResults") && [v4 allowsEvents])
  {
    goto LABEL_7;
  }

  if (-[EKEventStore returnReminderResults](self, "returnReminderResults") && [v4 allowsTasks])
  {
    v5 = [(EKReminderStore *)self->_reminderStore cachedConstraintsForSource:v4];
    goto LABEL_9;
  }

  if ([v4 isPrimaryLocalSource])
  {
LABEL_7:
    v6 = [v4 CADObjectID];
    v5 = [(EKEventStore *)self cachedConstraintsForEventOrSourceWithCADObjectID:v6];
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  v7 = [v4 remAccountObjectID];

  if (v7)
  {
    [v5 setAllowsTasks:1];
  }

  if (!v5)
  {
    v8 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore cachedConstraintsForSource:v8];
    }
  }

  return v5;
}

- (id)cachedConstraintsForCalendar:(id)a3
{
  v4 = a3;
  if (-[EKEventStore eventAccessLevel](self, "eventAccessLevel") != 1 || ![v4 allowEvents])
  {
    v6 = [v4 source];
    v7 = [(EKEventStore *)self cachedConstraintsForSource:v6];
LABEL_8:
    v5 = v7;

    goto LABEL_9;
  }

  if (![v4 isNew])
  {
    v6 = [v4 CADObjectID];
    v7 = [(EKEventStore *)self cachedConstraintsForEventOrSourceWithCADObjectID:v6];
    goto LABEL_8;
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
  {
    [EKEventStore cachedConstraintsForCalendar:];
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)cachedConstraintsForReminder:(id)a3
{
  v4 = [a3 calendar];
  v5 = [v4 source];
  v6 = [(EKEventStore *)self cachedConstraintsForSource:v5];

  return v6;
}

- (id)cachedConstraintsForEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 calendar];

  if (v5)
  {
    if ([(EKEventStore *)self eventAccessLevel]== 1)
    {
      v6 = [v4 CADObjectID];
      v7 = [v4 rebasedFrom];
      while ([v6 isTemporary] && v7)
      {
        v8 = v7;

        v9 = [(EKEventStore *)self objectsPendingCommit];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __42__EKEventStore_cachedConstraintsForEvent___block_invoke;
        v14[3] = &unk_1E7800E98;
        v15 = v8;
        v6 = v8;
        v10 = [v9 CalFirstObjectPassingTest:v14];

        v7 = [v10 rebasedFrom];
      }

      v11 = [(EKEventStore *)self cachedConstraintsForEventOrSourceWithCADObjectID:v6];
    }

    else
    {
      v6 = [v4 calendar];
      v7 = [v6 source];
      v11 = [(EKEventStore *)self cachedConstraintsForSource:v7];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __42__EKEventStore_cachedConstraintsForEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CADObjectID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)cachedConstraintsForEventOrSourceWithCADObjectID:(id)a3
{
  v4 = a3;
  if ([v4 entityType] == 2 && -[EKEventStore eventAccessLevel](self, "eventAccessLevel") != 1)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore cachedConstraintsForEventOrSourceWithCADObjectID:];
    }

    v6 = 0;
  }

  else
  {
    if ([v4 isTemporary])
    {
      v5 = [v4 entityType] == 2;
    }

    else
    {
      v5 = 0;
    }

    if ([v4 isTemporary] && objc_msgSend(v4, "entityType") == 6)
    {
      v6 = objc_opt_new();
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__24;
      v17 = __Block_byref_object_dispose__24;
      v18 = 0;
      v7 = [(EKEventStore *)self constraintsCacheQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __65__EKEventStore_cachedConstraintsForEventOrSourceWithCADObjectID___block_invoke;
      v9[3] = &unk_1E77FD7F0;
      v12 = v5;
      v11 = &v13;
      v9[4] = self;
      v10 = v4;
      dispatch_sync(v7, v9);

      v6 = v14[5];
      _Block_object_dispose(&v13, 8);
    }
  }

  return v6;
}

void __65__EKEventStore_cachedConstraintsForEventOrSourceWithCADObjectID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 _cachedDefaultConstraints];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v6 = [v3 _cachedConstraints];
    v7 = [v6 objectForKey:*(a1 + 40)];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = (*(a1 + 56) & 1) != 0 ? 0 : *(a1 + 40);
    v11 = [*(a1 + 32) _fetchConstraintsForObjectWithCADObjectID:v10];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v14 = *(a1 + 32);
      if (*(a1 + 56) == 1)
      {

        [v14 set_cachedDefaultConstraints:?];
      }

      else
      {
        v15 = [v14 _cachedConstraints];

        if (!v15)
        {
          v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
          [*(a1 + 32) set_cachedConstraints:v16];
        }

        v17 = [*(a1 + 32) _cachedConstraints];
        [v17 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];
      }
    }
  }
}

- (void)_clearCachedConstraintsForObjectWithCADObjectID:(id)a3
{
  v4 = a3;
  v5 = [(EKEventStore *)self constraintsCacheQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__EKEventStore__clearCachedConstraintsForObjectWithCADObjectID___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __64__EKEventStore__clearCachedConstraintsForObjectWithCADObjectID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedConstraints];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)_clearAllCachedConstraints
{
  v3 = [(EKEventStore *)self constraintsCacheQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EKEventStore__clearAllCachedConstraints__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __42__EKEventStore__clearAllCachedConstraints__block_invoke(uint64_t a1)
{
  [*(a1 + 32) set_cachedDefaultConstraints:0];
  v2 = *(a1 + 32);

  return [v2 set_cachedConstraints:0];
}

- (void)cacheConstraints:(id)a3 forObjectWithCADObjectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(EKEventStore *)self constraintsCacheQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__EKEventStore_cacheConstraints_forObjectWithCADObjectID___block_invoke;
    block[3] = &unk_1E77FD7C8;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_sync(v8, block);
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore cacheConstraints:forObjectWithCADObjectID:];
  }
}

void __58__EKEventStore_cacheConstraints_forObjectWithCADObjectID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedConstraints];

  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(a1 + 32) set_cachedConstraints:v3];
  }

  v4 = [*(a1 + 32) _cachedConstraints];
  [v4 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (id)_fetchConstraintsForObjectWithCADObjectID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__24;
  v15 = __Block_byref_object_dispose__24;
  v16 = 0;
  v5 = [(EKEventStore *)self connection];
  v6 = [v5 CADOperationProxySync];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__EKEventStore__fetchConstraintsForObjectWithCADObjectID___block_invoke;
  v10[3] = &unk_1E77FDD00;
  v10[4] = &v11;
  [v6 CADObjectGetConstraints:v4 reply:v10];

  v7 = [EKSourceConstraints alloc];
  v8 = [(EKSourceConstraints *)v7 initWithData:v12[5]];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __58__EKEventStore__fetchConstraintsForObjectWithCADObjectID___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __58__EKEventStore__fetchConstraintsForObjectWithCADObjectID___block_invoke_cold_1(v7);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (id)sourceIdentifierForEvent:(id)a3
{
  v4 = a3;
  v5 = [(EKEventStore *)self eventAccessLevel];
  v6 = [v4 calendar];
  v7 = v6;
  if (v5 == 1)
  {

    if (v7)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = __Block_byref_object_copy__24;
      v19 = __Block_byref_object_dispose__24;
      v20 = 0;
      v8 = [(EKEventStore *)self connection];
      v9 = [v8 CADOperationProxySync];
      v10 = [v4 CADObjectID];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __41__EKEventStore_sourceIdentifierForEvent___block_invoke;
      v14[3] = &unk_1E7800858;
      v14[4] = &v15;
      [v9 CADDatabaseGetSourceIdentifierForEventWithObjectID:v10 reply:v14];

      v11 = v16[5];
      _Block_object_dispose(&v15, 8);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [v6 source];
    v11 = [v12 sourceIdentifier];
  }

  return v11;
}

void __41__EKEventStore_sourceIdentifierForEvent___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __58__EKEventStore__fetchConstraintsForObjectWithCADObjectID___block_invoke_cold_1(v7);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (id)notificationCollectionForSource:(id)a3
{
  v4 = a3;
  v5 = [v4 objectID];
  v6 = [v5 isTemporary];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__24;
    v18 = __Block_byref_object_dispose__24;
    v19 = 0;
    v8 = [(EKEventStore *)self notificationCollectionCacheQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__EKEventStore_notificationCollectionForSource___block_invoke;
    block[3] = &unk_1E77FD688;
    v13 = &v14;
    block[4] = self;
    v12 = v4;
    dispatch_sync(v8, block);

    if (v15[5])
    {
      v9 = [EKNotificationCollection alloc];
      v7 = [(EKObject *)v9 initWithPersistentObject:v15[5]];
    }

    else
    {
      v7 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  return v7;
}

void __48__EKEventStore_notificationCollectionForSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedNotificationCollections];
  v3 = [*(a1 + 40) CADObjectID];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) CADObjectID];
    v9 = [v7 _fetchPersistentNotificationCollectionForSourceWithCADObjectID:v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v12 = [*(a1 + 32) _cachedNotificationCollections];
      if (v12)
      {
        [*(a1 + 32) set_cachedNotificationCollections:v12];
      }

      else
      {
        v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
        [*(a1 + 32) set_cachedNotificationCollections:v13];
      }

      v17 = [*(a1 + 32) _cachedNotificationCollections];
      v14 = *(a1 + 40);
      v15 = *(*(*(a1 + 48) + 8) + 40);
      v16 = [v14 CADObjectID];
      [v17 setObject:v15 forKey:v16];
    }
  }
}

- (id)_fetchPersistentNotificationCollectionForSourceWithCADObjectID:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__24;
  v18 = __Block_byref_object_dispose__24;
  v19 = 0;
  v5 = [(EKEventStore *)self connection];
  v6 = [v5 CADOperationProxySync];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__EKEventStore__fetchPersistentNotificationCollectionForSourceWithCADObjectID___block_invoke;
  v10[3] = &unk_1E7801118;
  v7 = v4;
  v12 = self;
  v13 = &v14;
  v11 = v7;
  [v6 CADSourceGetNotificationCollection:v7 reply:v10];

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __79__EKEventStore__fetchPersistentNotificationCollectionForSourceWithCADObjectID___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __79__EKEventStore__fetchPersistentNotificationCollectionForSourceWithCADObjectID___block_invoke_cold_1(v7);
    }
  }

  else if (v5)
  {
    v8 = [EKObjectID objectIDWithCADObjectID:v5];
    v9 = [*(a1 + 40) registerFetchedObjectWithID:v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __79__EKEventStore__fetchPersistentNotificationCollectionForSourceWithCADObjectID___block_invoke_cold_2(a1);
  }
}

- (BOOL)needsGeocodingForEvent:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__EKEventStore_needsGeocodingForEvent___block_invoke;
  block[3] = &unk_1E77FD688;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(unsavedChangesQueue, block);
  LOBYTE(unsavedChangesQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return unsavedChangesQueue;
}

uint64_t __39__EKEventStore_needsGeocodingForEvent___block_invoke(void *a1)
{
  result = [*(a1[4] + 120) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)setNeedsGeocoding:(BOOL)a3 forEvent:(id)a4
{
  v6 = a4;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EKEventStore_setNeedsGeocoding_forEvent___block_invoke;
  block[3] = &unk_1E77FD558;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(unsavedChangesQueue, block);
}

uint64_t __43__EKEventStore_setNeedsGeocoding_forEvent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 120);
  if (v1 == 1)
  {
    return [v3 addObject:v2];
  }

  else
  {
    return [v3 removeObject:v2];
  }
}

- (BOOL)shouldPermitOrganizerEmailFromJunkChecks:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(EKEventStore *)self connection];
  v6 = [v5 CADOperationProxySync];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__EKEventStore_shouldPermitOrganizerEmailFromJunkChecks___block_invoke;
  v8[3] = &unk_1E77FFEA0;
  v8[4] = &v9;
  [v6 CADDatabaseShouldPermitOrganizerEmailFromJunkChecks:v4 reply:v8];

  LOBYTE(v5) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __57__EKEventStore_shouldPermitOrganizerEmailFromJunkChecks___block_invoke(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __57__EKEventStore_shouldPermitOrganizerEmailFromJunkChecks___block_invoke_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

- (BOOL)shouldPermitOrganizerPhoneNumberFromJunkChecks:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(EKEventStore *)self connection];
  v6 = [v5 CADOperationProxySync];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__EKEventStore_shouldPermitOrganizerPhoneNumberFromJunkChecks___block_invoke;
  v8[3] = &unk_1E77FFEA0;
  v8[4] = &v9;
  [v6 CADDatabaseShouldPermitOrganizerPhoneNumberFromJunkChecks:v4 reply:v8];

  LOBYTE(v5) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __63__EKEventStore_shouldPermitOrganizerPhoneNumberFromJunkChecks___block_invoke(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __63__EKEventStore_shouldPermitOrganizerPhoneNumberFromJunkChecks___block_invoke_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

- (id)fetchStorageUsage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  v2 = [(EKEventStore *)self connection];
  v3 = [v2 CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__EKEventStore_fetchStorageUsage__block_invoke;
  v6[3] = &unk_1E7801140;
  v6[4] = &v7;
  [v3 CADDatabaseGetStorageUsage:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__EKEventStore_fetchStorageUsage__block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __33__EKEventStore_fetchStorageUsage__block_invoke_cold_1(v7);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (void)analyticsSendEvent:(id)a3 appendingClientBundleIDToPayload:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(EKEventStore *)self connection];
  v8 = [v9 CADOperationProxySync];
  [v8 CADAnalyticsSendEvent:v7 appendingClientBundleIDToPayload:v6];
}

- (void)setCachedEKSourceConstraintObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EKEventStore *)self _cachedConstraints];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(EKEventStore *)self set_cachedConstraints:v9];
  }

  v12 = [(EKEventStore *)self _cachedConstraints];
  v10 = [(EKEventStore *)self database];
  v11 = [v6 CADObjectIDWithGeneration:{objc_msgSend(v10, "databaseRestoreGeneration")}];

  [v12 setObject:v7 forKey:v11];
}

- (void)postSyntheticRouteHypothesis:(id)a3 forEventWithExternalURL:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = v7;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEFAULT, "Posting synthetic route hypothesis for event external url = %{public}@, route hypothesis = %@", buf, 0x16u);
  }

  if (v6)
  {
    v9 = [EKTravelEngineUtilities cadRouteHypothesisForEKTravelEngineHypothesis:v6];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(EKEventStore *)self connection];
  v11 = [v10 CADOperationProxySync];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__EKEventStore_postSyntheticRouteHypothesis_forEventWithExternalURL___block_invoke;
  v15[3] = &unk_1E7801168;
  v16 = v7;
  v17 = v9;
  v12 = v9;
  v13 = v7;
  [v11 CADPostSyntheticRouteHypothesis:v12 forEventWithExternalURL:v13 reply:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __69__EKEventStore_postSyntheticRouteHypothesis_forEventWithExternalURL___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __69__EKEventStore_postSyntheticRouteHypothesis_forEventWithExternalURL___block_invoke_cold_1(a1);
    }
  }
}

- (id)beginCalDAVServerSimulationWithHostname:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    if ([v3 hasSuffix:@"simulated.calendar.apple.com"])
    {
      goto LABEL_6;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.simulated.calendar.apple.com", v4];
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v4 UUIDString];
    v5 = [v6 stringWithFormat:@"%@.simulated.calendar.apple.com", v7];
  }

  v4 = v5;
LABEL_6:
  v8 = [MEMORY[0x1E69998A8] sharedConnection];
  [v8 beginCalDAVServerSimulationWithHostname:v4];

  return v4;
}

- (void)endCalDAVServerSimulation:(id)a3
{
  v3 = MEMORY[0x1E69998A8];
  v4 = a3;
  v5 = [v3 sharedConnection];
  [v5 endCalDAVServerSimulationWithHostname:v4];
}

- (BOOL)backupDatabaseToDestination:(id)a3 withFormat:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = v8;
  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x3032000000;
  v24[2] = __Block_byref_object_copy__24;
  v24[3] = __Block_byref_object_dispose__24;
  v25 = 0;
  if (a4 != 2)
  {
    v13 = [v8 lastPathComponent];
    v14 = [v9 URLByDeletingLastPathComponent];
    v15 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v14];
    v16 = [(EKEventStore *)self connection];
    v17 = [v16 CADOperationProxySync];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__EKEventStore_backupDatabaseToDestination_withFormat_error___block_invoke_623;
    v20[3] = &unk_1E77FD310;
    v20[4] = &v23;
    [v17 CADBackupDatabaseToFileNamed:v13 inDirectory:v15 includeAttachments:a4 == 1 reply:v20];

    goto LABEL_5;
  }

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = (v24[0] + 40);
  obj = *(v24[0] + 40);
  v12 = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:0 attributes:0 error:&obj];
  objc_storeStrong(v11, obj);

  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore backupDatabaseToDestination:v24 withFormat:? error:?];
      if (a5)
      {
        goto LABEL_11;
      }
    }

    else if (a5)
    {
LABEL_11:
      v18 = 0;
      *a5 = *(v24[0] + 40);
      goto LABEL_8;
    }

    v18 = 0;
    goto LABEL_8;
  }

  v13 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v9];
  v14 = [(EKEventStore *)self connection];
  v15 = [v14 CADOperationProxySync];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__EKEventStore_backupDatabaseToDestination_withFormat_error___block_invoke;
  v21[3] = &unk_1E77FD310;
  v21[4] = &v23;
  [v15 CADBackupToICBU:v13 reply:v21];
LABEL_5:

  if (a5)
  {
    *a5 = *(v24[0] + 40);
  }

  v18 = *(v24[0] + 40) == 0;
LABEL_8:
  _Block_object_dispose(&v23, 8);

  return v18;
}

void __61__EKEventStore_backupDatabaseToDestination_withFormat_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v5 = *(a1 + 32);
    v4 = a1 + 32;
    v6 = *(v5 + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v3;

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __61__EKEventStore_backupDatabaseToDestination_withFormat_error___block_invoke_cold_1(v4);
    }
  }
}

void __61__EKEventStore_backupDatabaseToDestination_withFormat_error___block_invoke_623(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v5 = *(a1 + 32);
    v4 = a1 + 32;
    v6 = *(v5 + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v3;

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __61__EKEventStore_backupDatabaseToDestination_withFormat_error___block_invoke_cold_1(v4);
    }
  }
}

- (void)_resetAndNotifyAfterDatabaseRestoreGenerationChanged
{
  [(EKEventStore *)self _clearAllCaches];

  [(EKEventStore *)self _postEventStoreChangedNotificationWithChangeType:0 changedObjectIDs:0 forceImmediate:1];
}

- (BOOL)restoreDatabaseFromBackup:(id)a3 withFormat:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__24;
  v23 = __Block_byref_object_dispose__24;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__EKEventStore_restoreDatabaseFromBackup_withFormat_error___block_invoke;
  v18[3] = &unk_1E7801190;
  v18[4] = self;
  v18[5] = &v19;
  v9 = _Block_copy(v18);
  if (a4 == 2)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v8 readonly:1];
    v11 = [(EKEventStore *)self connection];
    v12 = [v11 CADOperationProxySync];
    [v12 CADRestoreFromICBU:v10 reply:v9];
  }

  else
  {
    v10 = [v8 lastPathComponent];
    v11 = [v8 URLByDeletingLastPathComponent];
    v12 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v11 readonly:1];
    v13 = [(EKEventStore *)self connection];
    v14 = [v13 CADOperationProxySync];
    [v14 CADRestoreFromDatabaseBackupFileNamed:v10 inDirectory:v12 includeAttachments:a4 == 1 reply:v9];
  }

  v15 = v20[5];
  if (a5 && v15)
  {
    v15 = v15;
    *a5 = v15;
  }

  v16 = v15 == 0;

  _Block_object_dispose(&v19, 8);
  return v16;
}

void __59__EKEventStore_restoreDatabaseFromBackup_withFormat_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v6 = *(a1 + 40);
    v5 = a1 + 40;
    v7 = *(v6 + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v4;

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __59__EKEventStore_restoreDatabaseFromBackup_withFormat_error___block_invoke_cold_1(v5);
    }
  }

  else
  {
    v10 = [*(a1 + 32) connection];
    [v10 databaseRestoreGenerationChangedByThisClient:a3];

    v11 = *(a1 + 32);

    [v11 _resetAndNotifyAfterDatabaseRestoreGenerationChanged];
  }
}

- (void)setDefaultCalendarForNewReminders:(id)a3
{
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
  {
    [EKEventStore setDefaultCalendarForNewReminders:];
  }
}

- (void)initWithEKOptions:(uint64_t)a1 path:(void *)a2 containerProvider:tccPermissionChecker:changeTrackingClientId:enablePropertyModificationLogging:allowDelegateSources:allowedSourceIdentifiers:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AE30];
  v3 = a2;
  v4 = [v2 processInfo];
  v5 = [v4 processName];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_20(&dword_1A805E000, v3, v6, "[%@] initialized in process: [%@]", v8);

  v7 = *MEMORY[0x1E69E9840];
}

void __181__EKEventStore_initWithEKOptions_path_containerProvider_tccPermissionChecker_changeTrackingClientId_enablePropertyModificationLogging_allowDelegateSources_allowedSourceIdentifiers___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __181__EKEventStore_initWithEKOptions_path_containerProvider_tccPermissionChecker_changeTrackingClientId_enablePropertyModificationLogging_allowDelegateSources_allowedSourceIdentifiers___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __23__EKEventStore_dealloc__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)authorizationStatusWithAuditToken:entityType:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)requestAccessToEntityType:desiredFullAccess:testing:synchronous:reason:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __29__EKEventStore_sequenceToken__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __53__EKEventStore_changesSinceSequenceToken_completion___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_invalidCADObjectIDs:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __37__EKEventStore__invalidCADObjectIDs___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __37__EKEventStore__invalidCADObjectIDs___block_invoke_cold_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_handleExternalDatabaseChangeNotification:synchronously:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __64__EKEventStore__databaseChangedExternally_processSynchronously___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 352);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __63__EKEventStore__checkPendingIntegrationEvents_changedIDsValid___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __36__EKEventStore_eventStoreIdentifier__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_cacheSourceWithCADObjectID:withDefaultLoadedPropertyValues:forKeys:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __36__EKEventStore__loadSourcesIfNeeded__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __44__EKEventStore_sourcesEnabledForEntityType___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD98];
  v3 = *a1;
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x1E69E9840];
}

void __33__EKEventStore__deletableSources__block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __68__EKEventStore_getSubscribedCalendarsSourceCreateIfNeededWithError___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__EKEventStore_localBirthdayCalendarCreateIfNeededWithError___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)parentSourceForDelegateSource:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__EKEventStore_fetchGrantedDelegatesForSource_results___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __63__EKEventStore_updateGrantedDelegate_action_source_completion___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)isSourceManaged:(void *)a1 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 sourceIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

void __32__EKEventStore_isSourceManaged___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 sourceIdentifier];
  v8 = [*(a1 + 32) objectID];
  [v8 rowID];
  v15 = [MEMORY[0x1E696ABC0] errorWithCADResult:a3];
  OUTLINED_FUNCTION_21();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x1Cu);

  v14 = *MEMORY[0x1E69E9840];
}

void __31__EKEventStore_dbStatsBySource__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __47__EKEventStore_personaIdentifierForDatabaseID___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x1E69E9840];
}

void __58__EKEventStore_hideCalendarsFromNotificationCenter_error___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [OUTLINED_FUNCTION_5() objectID];
  v8 = [MEMORY[0x1E696ABC0] errorWithCADResult:a3];
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x16u);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)calendarsForEntityType:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)calendarsForEntityType:inSource:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_cacheCalendarWithCADObjectID:withDefaultLoadedPropertyValues:forKeys:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_cacheCalendarWithCADObjectID:withDefaultLoadedPropertyValues:forKeys:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__EKEventStore__loadCalendarsIfNeeded__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __35__EKEventStore__deletableCalendars__block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_calendar:supportsEntityType:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)saveCalendar:commit:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_saveCalendar:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeCalendar:commit:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __42__EKEventStore__eventWithEventIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_eventWithURI:checkValid:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __41__EKEventStore__eventWithURI_checkValid___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __54__EKEventStore_eventForUID_occurrenceDate_checkValid___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)eventForObjectID:occurrenceDate:checkValid:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __59__EKEventStore_eventForObjectID_occurrenceDate_checkValid___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __49__EKEventStore_eventWithUniqueId_occurrenceDate___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __45__EKEventStore_eventWithUUID_occurrenceDate___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __74__EKEventStore__entityWrappersForEventUUIDs_inCalendars_propertiesToLoad___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __53__EKEventStore_allEventsWithUniqueId_occurrenceDate___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)saveEvent:span:commit:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeEvent:span:commit:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __52__EKEventStore_setInvitationStatus_forEvents_error___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __96__EKEventStore__importEventsWithExternalIDs_fromICSData_intoCalendarsWithIDs_options_batchSize___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __36__EKEventStore_defaultLocalCalendar__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)defaultCalendarForNewEventsInDelegateSource:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __60__EKEventStore_defaultCalendarForNewEventsInDelegateSource___block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setDefaultCalendar:forNewEventsInDelegateSource:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setDefaultCalendar:forNewEventsInDelegateSource:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setDefaultCalendar:forNewEventsInDelegateSource:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__EKEventStore_setDefaultCalendar_forNewEventsInDelegateSource___block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_saveDraftOfEvent:toDirectory:withVersion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_saveDraftOfEvent:toDirectory:withVersion:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_9_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_saveDraftOfEvent:toDirectory:withVersion:.cold.3()
{
  OUTLINED_FUNCTION_0_6();
  v11 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = [v0 changeSet];
  v10 = [v3 summary];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_9_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_loadDraftOfEventWithOccurrenceID:(void *)a1 fromDirectory:withVersion:.cold.3(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_0() summaryString];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20(v4, v5, v6, v7, v8);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_loadDraftOfEventWithOccurrenceID:(void *)a1 fromDirectory:withVersion:.cold.4(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_0() summary];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20(v4, v5, v6, v7, v8);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_9_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_deleteDraft:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_9_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_deleteDraft:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)saveReminder:commit:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_saveReminder:commit:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeReminder:commit:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)reminderWithExternalURI:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)reminderWithExternalURI:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)reminderWithExternalURI:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __51__EKEventStore_eventsWithSameRecurrenceSetAsEvent___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __61__EKEventStore_calendarItemsWithUniqueIdentifier_inCalendar___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)accessGrantedForEntityType:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __84__EKEventStore_closestCachedOccurrenceToDate_forEventObjectID_prefersForwardSearch___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v8 = v7;
  [v3 rowID];
  [*(a1 + 32) databaseID];
  v15 = [MEMORY[0x1E696ABC0] errorWithCADResult:a3];
  OUTLINED_FUNCTION_21();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x18u);

  v14 = *MEMORY[0x1E69E9840];
}

void __53__EKEventStore_countOfEventsFromStartDate_toEndDate___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __73__EKEventStore_sumOfDurationCalendarFromStartDate_toEndDate_ByCalendars___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __38__EKEventStore_countOfEventsInSource___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [OUTLINED_FUNCTION_5() CADObjectID];
  v8 = [MEMORY[0x1E696ABC0] errorWithCADResult:a3];
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x16u);

  v14 = *MEMORY[0x1E69E9840];
}

void __50__EKEventStore_doEvents_haveOccurrencesAfterDate___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)calendarWithExternalURI:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)calendarWithExternalURI:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __56__EKEventStore_uniqueIdentifiersForEventsWithObjectIDs___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __30__EKEventStore_syncErrorCount__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __43__EKEventStore_eventsWithErrorsPerSourceID__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __63__EKEventStore_colorWithProviderIdentifier_externalIdentifier___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __64__EKEventStore_occurrenceCacheGetOccurrencesForCalendars_onDay___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __63__EKEventStore_occurrenceCacheGetOccurrenceCountsForCalendars___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __38__EKEventStore_setShowDeclinedEvents___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x1E69E9840];
}

void __34__EKEventStore_showDeclinedEvents__block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __42__EKEventStore_setShowCompletedReminders___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x1E69E9840];
}

void __38__EKEventStore_rebuildOccurrenceCache__block_invoke_cold_1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1A805E000, v1, OS_LOG_TYPE_DEBUG, "The occurrence cache was not rebuilt successfully.  Error: [%@]", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __38__EKEventStore_rebuildOccurrenceCache__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __39__EKEventStore_birthdayCalendarEnabled__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __43__EKEventStore_setBirthdayCalendarEnabled___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __39__EKEventStore_birthdayCalendarVersion__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __43__EKEventStore_setBirthdayCalendarVersion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);

  v10 = *MEMORY[0x1E69E9840];
}

void __38__EKEventStore_suggestedEventCalendar__block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __44__EKEventStore_insertSuggestedEventCalendar__block_invoke_2_cold_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __44__EKEventStore_removeSuggestedEventCalendar__block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)confirmSuggestedEvent:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __38__EKEventStore_confirmSuggestedEvent___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)acceptSuggestedEvent:(NSObject *)a3 placeOnCalendar:.cold.1(char a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = @"FAILED";
  *&v5[4] = "[EKEventStore acceptSuggestedEvent:placeOnCalendar:]";
  *v5 = 136315650;
  *&v5[12] = 2112;
  if (a1)
  {
    v3 = @"succeeded";
  }

  *&v5[14] = v3;
  *&v5[22] = 2112;
  OUTLINED_FUNCTION_24(&dword_1A805E000, a2, a3, "%s - promoting saveEvent %@ - had error %@", *v5, *&v5[8], *&v5[16], a2);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)deleteSuggestedEvent:(NSObject *)a3 .cold.1(char a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = @"FAILED";
  *&v5[4] = "[EKEventStore deleteSuggestedEvent:]";
  *v5 = 136315650;
  *&v5[12] = 2112;
  if (a1)
  {
    v3 = @"succeeded";
  }

  *&v5[14] = v3;
  *&v5[22] = 2112;
  OUTLINED_FUNCTION_24(&dword_1A805E000, a2, a3, "%s - removeEvent %@ - had error %@", *v5, *&v5[8], *&v5[16], a2);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)deleteSuggestedEvent:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)deleteSuggestedEvent:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __37__EKEventStore_deleteSuggestedEvent___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __47__EKEventStore_canModifySuggestedEventCalendar__block_invoke_3_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __53__EKEventStore_naturalLanguageSuggestedEventCalendar__block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __56__EKEventStore_sharedCalendarInvitationsForEntityTypes___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = a2;
  v11 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)respondToSharedCalendarInvitation:withStatus:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __46__EKEventStore_resourceChangesForEntityTypes___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __55__EKEventStore_markResourceChangeAlertedAndSave_error___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __134__EKEventStore_eventNotificationsAfterDate_excludingUncheckedCalendars_filteredByShowsNotificationsFlag_earliestExpiringNotification___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __75__EKEventStore_eventNotificationCountExcludingUncheckedCalendars_expanded___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __40__EKEventStore_inboxRepliedSectionItems__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __35__EKEventStore_attachmentWithUUID___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __49__EKEventStore__refreshDASource_isUserRequested___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_registerObjectImmediate:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_addFetchedObjectWithID:(void *)a1 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a1;
  [OUTLINED_FUNCTION_5_0() entityType];
  [a2 rowID];
  OUTLINED_FUNCTION_18();
  _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0xEu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)objectWithIDExists:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __35__EKEventStore_objectWithIDExists___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)publicObjectWithPersistentObject:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __37__EKEventStore__trackModifiedObject___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"EKEventStore.m" lineNumber:6877 description:@"Can't add deleted or inserted object to update set"];
}

- (void)commit:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)commitWithRollback:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_commitObjectsWithIdentifiers:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_commitObjectsWithIdentifiers:error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_4_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_fetchProperties:forObjects:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addPendingIntegrationEvent:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_0() privacySafeIntegrationEventDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addPendingIntegrationEvent:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__EKEventStore_requestIntegrationCatchupSync__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)eventsMatchingPredicate:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v8 = *MEMORY[0x1E69E9840];
  v3 = v2;
  [OUTLINED_FUNCTION_5() count];
  OUTLINED_FUNCTION_5_3();
  v7 = v0;
  OUTLINED_FUNCTION_20(&dword_1A805E000, v1, v4, "%ld events were found for predicate: %@", v6);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)enumerateEventsMatchingPredicate:usingBlock:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)cancelFetchRequest:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_5_0();
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_18();
  _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __30__EKEventStore_alarmWithUUID___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __36__EKEventStore_alarmWithExternalID___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __46__EKEventStore_alarmOccurrencesFromAlarmCache__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)predicateForPotentialTravelEventsInCalendars:startDate:endDate:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v10 = *MEMORY[0x1E69E9840];
  v2 = v1;
  OUTLINED_FUNCTION_5();
  v3 = _NSMethodExceptionProem();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)predicateForPotentialTravelEventsInCalendars:startDate:endDate:.cold.2()
{
  OUTLINED_FUNCTION_17();
  v10 = *MEMORY[0x1E69E9840];
  v2 = v1;
  OUTLINED_FUNCTION_5();
  v3 = _NSMethodExceptionProem();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)predicateForUpNextEventsInCalendars:startDate:endDate:startDateRestrictionThreshold:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v10 = *MEMORY[0x1E69E9840];
  v2 = v1;
  OUTLINED_FUNCTION_5();
  v3 = _NSMethodExceptionProem();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)predicateForUpNextEventsInCalendars:startDate:endDate:startDateRestrictionThreshold:.cold.2()
{
  OUTLINED_FUNCTION_17();
  v10 = *MEMORY[0x1E69E9840];
  v2 = v1;
  OUTLINED_FUNCTION_5();
  v3 = _NSMethodExceptionProem();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __54__EKEventStore_timeToLeaveLocationAuthorizationStatus__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __64__EKEventStore_registerForDetailedChangeTrackingInSource_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__EKEventStore_unregisterForDetailedChangeTracking___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_processChangedObjectIDsWithErrorCode:(void *)a1 changesTruncated:latestToken:changeData:resultHandler:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)markChangedObjectIDsConsumedUpToToken:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__EKEventStore_consumeAllChangesUpToToken___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __39__EKEventStore_defaultTimedAlarmOffset__block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __40__EKEventStore_defaultAllDayAlarmOffset__block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __30__EKEventStore_purgeChangelog__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)cachedConstraintsForSource:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_0() sourceIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)cachedConstraintsForEventOrSourceWithCADObjectID:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cacheConstraints:forObjectWithCADObjectID:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__EKEventStore__fetchConstraintsForObjectWithCADObjectID___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __79__EKEventStore__fetchPersistentNotificationCollectionForSourceWithCADObjectID___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __79__EKEventStore__fetchPersistentNotificationCollectionForSourceWithCADObjectID___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __57__EKEventStore_shouldPermitOrganizerEmailFromJunkChecks___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __63__EKEventStore_shouldPermitOrganizerPhoneNumberFromJunkChecks___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __33__EKEventStore_fetchStorageUsage__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __69__EKEventStore_postSyntheticRouteHypothesis_forEventWithExternalURL___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_9_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)backupDatabaseToDestination:(uint64_t)a1 withFormat:error:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __61__EKEventStore_backupDatabaseToDestination_withFormat_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __59__EKEventStore_restoreDatabaseFromBackup_withFormat_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

@end