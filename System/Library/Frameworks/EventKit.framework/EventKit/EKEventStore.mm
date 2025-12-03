@interface EKEventStore
+ (BOOL)_isConfirmedSuggestedEvent:(id)event uniqueKey:(id *)key;
+ (BOOL)_shouldRefreshSource:(id)source;
+ (BOOL)_shouldUseInProcessXPCWithInitOptions:(unint64_t)options;
+ (BOOL)_staticAccessFlagSaysDeniedForEntityType:(unint64_t)type;
+ (Class)classForEntityName:(id)name;
+ (EKAuthorizationStatus)authorizationStatusForEntityType:(EKEntityType)entityType;
+ (double)_defaultDelayForThrottledNotificationsWithInitializationOptions:(id)options;
+ (double)_throttleDelayForEventStoreChangedNotificationWithLastFiredTime:(unint64_t)time delay:(double)delay;
+ (id)_contextForNotificationWithChangeType:(unint64_t)type changedObjectIDs:(id)ds;
+ (id)_filteredArrayWithIdentifiers:(id)identifiers fromObjects:(id)objects excludingObjects:(id)excludingObjects;
+ (id)_filteredObjectsWithIdentifiers:(id)identifiers fromObjects:(id)objects excludingObjects:(id)excludingObjects;
+ (id)calendarObjectIDsForPredicate:(id)predicate;
+ (id)eventDraftsPath;
+ (id)reminderStoreContainerTokenProvider;
+ (int64_t)authorizationStatusWithAuditToken:(id *)token entityType:(unint64_t)type;
+ (int64_t)realAuthorizationStatusForEntityType:(unint64_t)type;
+ (void)EKObjectIDsFromData:(id)data deletedObjectIDOffsets:(id)offsets outChangedIDs:(id *)ds outDeletedIDs:(id *)iDs;
+ (void)_addDaysSpannedByEvent:(id)event toCountedSet:(id)set inRange:(id)range withNSCalendar:(id)calendar;
+ (void)setReminderStoreContainerTokenProvider:(id)provider;
- (BOOL)_calendar:(id)_calendar supportsEntityType:(unint64_t)type;
- (BOOL)_commit:(id *)_commit;
- (BOOL)_commitObjectsWithIdentifiers:(id)identifiers error:(id *)error;
- (BOOL)_isRegisteredObject:(id)object;
- (BOOL)_parseURI:(id)i expectedScheme:(id)scheme identifier:(id *)identifier options:(id *)options;
- (BOOL)_removeCalendar:(id)calendar commit:(BOOL)commit error:(id *)error;
- (BOOL)_removeEvent:(id)event span:(int64_t)span commit:(BOOL)commit error:(id *)error;
- (BOOL)_removeEventCalendar:(id)calendar commit:(BOOL)commit error:(id *)error;
- (BOOL)_removeReminder:(id)reminder commit:(BOOL)commit error:(id *)error;
- (BOOL)_saveCalendar:(id)calendar commit:(BOOL)commit error:(id *)error;
- (BOOL)_saveCalendar:(id)calendar error:(id *)error;
- (BOOL)_saveDraftOfEvent:(id)event toDirectory:(id)directory withVersion:(id)version;
- (BOOL)_saveEvent:(id)event span:(int64_t)span commit:(BOOL)commit error:(id *)error;
- (BOOL)_saveReminder:(id)reminder commit:(BOOL)commit error:(id *)error;
- (BOOL)accessGrantedForEntityType:(unint64_t)type;
- (BOOL)acknowledgeNotifications:(id)notifications error:(id *)error;
- (BOOL)allowAccessToEventsOnly;
- (BOOL)backupDatabaseToDestination:(id)destination withFormat:(unint64_t)format error:(id *)error;
- (BOOL)birthdayCalendarEnabled;
- (BOOL)canModifySuggestedEventCalendar;
- (BOOL)clientCanModifySources;
- (BOOL)commit:(NSError *)error;
- (BOOL)commitObjects:(id)objects error:(id *)error;
- (BOOL)commitWithRollback:(id *)rollback;
- (BOOL)commitWithRollbackForNewClients:(id *)clients;
- (BOOL)consumeAllChangesUpToToken:(id)token except:(id)except error:(id *)error;
- (BOOL)deleteCalendar:(id)calendar forEntityType:(unint64_t)type error:(id *)error;
- (BOOL)eventWithUUID:(id)d isInCalendars:(id)calendars;
- (BOOL)eventsExistOnCalendar:(id)calendar;
- (BOOL)eventsMarkedScheduleAgentClientExistOnCalendar:(id)calendar;
- (BOOL)futureScheduledEventsExistOnCalendar:(id)calendar;
- (BOOL)hasImmediatelyEligibleTravelEvents;
- (BOOL)hideCalendarsFromNotificationCenter:(id)center error:(id *)error;
- (BOOL)isCurrentProcessCreatorOfEvent:(id)event;
- (BOOL)isDataProtected;
- (BOOL)isObjectInserted:(id)inserted;
- (BOOL)isPendingIntegrationEvent:(id)event;
- (BOOL)isSourceManaged:(id)managed;
- (BOOL)markIndividualChangesConsumed:(id)consumed error:(id *)error;
- (BOOL)markResourceChangeAlertedAndSave:(id)save error:(id *)error;
- (BOOL)needsGeocodingForEvent:(id)event;
- (BOOL)objectWithIDExists:(id)exists;
- (BOOL)objectsHaveChangesToCommit:(id)commit;
- (BOOL)removeInviteReplyNotification:(id)notification error:(id *)error;
- (BOOL)removeInviteReplyNotifications:(id)notifications error:(id *)error;
- (BOOL)removeResourceChange:(id)change error:(id *)error;
- (BOOL)removeResourceChanges:(id)changes error:(id *)error;
- (BOOL)removeResourceChangesForCalendarItem:(id)item error:(id *)error;
- (BOOL)removeSource:(id)source commit:(BOOL)commit error:(id *)error;
- (BOOL)restoreDatabaseFromBackup:(id)backup withFormat:(unint64_t)format error:(id *)error;
- (BOOL)restoreGenerationChanged;
- (BOOL)returnEventResults;
- (BOOL)returnReminderResults;
- (BOOL)save:(id *)save;
- (BOOL)saveAttachment:(id)attachment commit:(BOOL)commit error:(id *)error;
- (BOOL)saveColor:(id)color commit:(BOOL)commit error:(id *)error;
- (BOOL)saveDraftOfEvent:(id)event;
- (BOOL)saveNotification:(id)notification commit:(BOOL)commit error:(id *)error;
- (BOOL)saveNotificationCollection:(id)collection commit:(BOOL)commit error:(id *)error;
- (BOOL)saveSource:(id)source commit:(BOOL)commit error:(id *)error;
- (BOOL)setInvitationStatus:(unint64_t)status forEvent:(id)event error:(id *)error;
- (BOOL)setInvitationStatus:(unint64_t)status forEvents:(id)events error:(id *)error;
- (BOOL)setRestoreGenerationChangedAndGetPreviousValue:(BOOL)value;
- (BOOL)shouldPermitOrganizerEmailFromJunkChecks:(id)checks;
- (BOOL)shouldPermitOrganizerPhoneNumberFromJunkChecks:(id)checks;
- (BOOL)shouldSaveCalendarAsEventCalendar:(id)calendar;
- (BOOL)shouldSaveCalendarAsReminderCalendar:(id)calendar;
- (BOOL)showCompletedReminders;
- (BOOL)showDeclinedEvents;
- (BOOL)unregisterForDetailedChangeTracking:(id *)tracking;
- (CADInMemoryChangeTimestamp)lastDatabaseTimestamp;
- (CGColor)copyCGColorForNewCalendar;
- (EKCalendar)calendarWithIdentifier:(NSString *)identifier;
- (EKCalendar)defaultCalendarForNewReminders;
- (EKCalendar)naturalLanguageSuggestedEventCalendar;
- (EKCalendar)suggestedEventCalendar;
- (EKCalendarItem)calendarItemWithIdentifier:(NSString *)identifier;
- (EKEvent)eventWithIdentifier:(NSString *)identifier;
- (EKEventStore)initWithBirthdayCalendarModifications;
- (EKEventStore)initWithEKOptions:(unint64_t)options path:(id)path sources:(id)sources;
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
- (double)_throttleDelayForEventStoreChangedNotificationWithTags:(id)tags context:(id)context;
- (double)sumOfDurationCalendarFromStartDate:(id)date toEndDate:(id)endDate ByCalendars:(id)calendars;
- (id)ICSDataForCalendarItems:(id)items options:(unint64_t)options;
- (id)ICSDataForCalendarItems:(id)items preventLineFolding:(BOOL)folding;
- (id)_addFetchedObjectWithID:(id)d;
- (id)_allCalendars;
- (id)_calendarItemsMatchingPredicate:(id)predicate;
- (id)_calendarItemsWithExternalIdentifier:(id)identifier inCalendars:(id)calendars entityTypes:(unint64_t)types;
- (id)_checkPendingIntegrationEvents:(id)events changedIDsValid:(BOOL)valid;
- (id)_combineEventSources:(id)sources withReminderSources:(id)reminderSources;
- (id)_deletableCalendars;
- (id)_deletableSources;
- (id)_draftPathForEventWithOccurrenceID:(id)d draftDirectory:(id)directory;
- (id)_entityWrappersForEventUUIDs:(id)ds inCalendars:(id)calendars propertiesToLoad:(id)load;
- (id)_eventCalendarWithIdentifier:(id)identifier;
- (id)_eventOccurrenceWithURI:(id)i;
- (id)_eventWithEventIdentifier:(id)identifier;
- (id)_eventWithURI:(id)i checkValid:(BOOL)valid;
- (id)_fetchConstraintsForObjectWithCADObjectID:(id)d;
- (id)_fetchPersistentNotificationCollectionForSourceWithCADObjectID:(id)d;
- (id)_imageCache;
- (id)_invalidCADObjectIDs:(id)ds;
- (id)_loadDraftOfEventWithOccurrenceID:(id)d fromDirectory:(id)directory withVersion:(id)version;
- (id)_markObjectsWithIdentifiersAsCommitted:(id)committed excludingObjects:(id)objects;
- (id)_nextEventsWithFetchBlock:(id)block steps:(id)steps limit:(unint64_t)limit;
- (id)_sourceWithID:(id)d;
- (id)alarmOccurrencesFromAlarmCache;
- (id)alarmWithExternalID:(id)d;
- (id)alarmWithUUID:(id)d;
- (id)allEventsWithUniqueId:(id)id occurrenceDate:(id)date;
- (id)attachmentWithUUID:(id)d;
- (id)beginCalDAVServerSimulationWithHostname:(id)hostname;
- (id)blockList;
- (id)cachedConstraintsForCalendar:(id)calendar;
- (id)cachedConstraintsForEvent:(id)event;
- (id)cachedConstraintsForEventOrSourceWithCADObjectID:(id)d;
- (id)cachedConstraintsForReminder:(id)reminder;
- (id)cachedConstraintsForSource:(id)source;
- (id)calendarItemsWithUniqueIdentifier:(id)identifier inCalendar:(id)calendar;
- (id)calendarWithCADID:(id)d;
- (id)calendarWithExternalID:(id)d;
- (id)calendarWithExternalURI:(id)i;
- (id)calendarWithID:(id)d;
- (id)calendarWithUniqueID:(id)d;
- (id)calendarsForEntityType:(unint64_t)type inSource:(id)source;
- (id)calendarsWithIdentifiers:(id)identifiers;
- (id)calendarsWithObjectIDs:(id)ds;
- (id)colorStringForNewCalendar;
- (id)colorWithProviderIdentifier:(id)identifier externalIdentifier:(id)externalIdentifier;
- (id)combineEventCalendars:(id)calendars withReminderCalendars:(id)reminderCalendars;
- (id)combinedReminderAndEventSources;
- (id)creatorTeamIdentifierForEvent:(id)event;
- (id)dbStatsBySource;
- (id)defaultCalendarForNewEventsInDelegateSource:(id)source;
- (id)defaultLocalCalendar;
- (id)delegateSourcesForSource:(id)source;
- (id)deletedObjectIDs;
- (id)doEvents:(id)events haveOccurrencesAfterDate:(id)date;
- (id)eventForObjectID:(id)d occurrenceDate:(id)date checkValid:(BOOL)valid;
- (id)eventForUID:(id)d occurrenceDate:(id)date checkValid:(BOOL)valid;
- (id)eventObjectIDsMatchingPredicate:(id)predicate;
- (id)eventSourceForReminderSource:(id)source;
- (id)eventSourceIDForReminderSourceID:(id)d;
- (id)eventSourceMap;
- (id)eventSources;
- (id)eventWithAppEntityIdentifier:(id)identifier;
- (id)eventWithRecurrenceIdentifier:(id)identifier isAppEntityID:(BOOL)d;
- (id)eventWithUUID:(id)d occurrenceDate:(id)date;
- (id)eventWithUniqueId:(id)id occurrenceDate:(id)date;
- (id)eventsWithErrorsPerSourceID;
- (id)eventsWithIdentifiers:(id)identifiers;
- (id)eventsWithSameRecurrenceSetAsEvent:(id)event;
- (id)eventsWithUUIDToOccurrenceDateMap:(id)map inCalendars:(id)calendars;
- (id)fetchEventsMatchingPredicate:(id)predicate resultHandler:(id)handler;
- (id)fetchRemindersMatchingPredicate:(NSPredicate *)predicate completion:(void *)completion;
- (id)fetchStorageUsage;
- (id)getSubscribedCalendarsSourceCreateIfNeededWithError:(id *)error;
- (id)importICS:(id)s intoCalendar:(id)calendar options:(unint64_t)options;
- (id)importICSData:(id)data intoCalendar:(id)calendar options:(unint64_t)options;
- (id)importICSData:(id)data intoCalendars:(id)calendars options:(unint64_t)options;
- (id)importVCSData:(id)data intoCalendars:(id)calendars error:(id *)error;
- (id)insertedObjectIDs;
- (id)insertedPersistentObjectWithEntityName:(id)name;
- (id)lastCommitTempToPermanentObjectIDMap;
- (id)loadDraftOfEventWithOccurrenceID:(id)d;
- (id)localBirthdayCalendarCreateIfNeededWithError:(id *)error;
- (id)localBirthdayCalendarSource;
- (id)mimicSaveAndCommitEvent:(id)event oldToNewObjectIDMap:(id)map insertedObjectIDs:(id)ds updatedObjectIDs:(id)iDs deletedObjectIDs:(id)objectIDs;
- (id)nextEventWithCalendarIdentifiers:(id)identifiers exclusionOptions:(int64_t)options;
- (id)nextEventWithCalendars:(id)calendars exclusionOptions:(int64_t)options;
- (id)nextEventsWithCalendars:(id)calendars limit:(unint64_t)limit exclusionOptions:(int64_t)options;
- (id)notificationCollectionForSource:(id)source;
- (id)objectWithObjectID:(id)d;
- (id)objectsMatchingPredicate:(id)predicate;
- (id)occurrenceCacheGetOccurrenceCountsForCalendars:(id)calendars;
- (id)occurrenceCacheGetOccurrencesForCalendars:(id)calendars onDay:(id)day;
- (id)parentSourceForDelegateSource:(id)source;
- (id)persistentObjectWithEntityName:(id)name;
- (id)personaIdentifierForDatabaseID:(int)d;
- (id)predicateForAssistantEventSearchWithTimeZone:(id)zone startDate:(id)date endDate:(id)endDate title:(id)title location:(id)location notes:(id)notes participants:(id)participants calendars:(id)self0 limit:(int64_t)self1;
- (id)predicateForCalendarItemsOfType:(unint64_t)type inCalendar:(id)calendar;
- (id)predicateForCalendarItemsOfType:(unint64_t)type withExternalID:(id)d inCalendar:(id)calendar;
- (id)predicateForCalendarItemsOfType:(unint64_t)type withExternalID:(id)d inSource:(id)source;
- (id)predicateForCalendarItemsOfType:(unint64_t)type withUniqueIdentifier:(id)identifier inCalendar:(id)calendar;
- (id)predicateForCalendarItemsOfType:(unint64_t)type withUniqueIdentifier:(id)identifier inSource:(id)source;
- (id)predicateForEventCreatedFromSuggestionWithOpaqueKey:(id)key;
- (id)predicateForEventsCreatedFromSuggestionWithExtractionGroupIdentifier:(id)identifier;
- (id)predicateForEventsInSubscribedCalendar:(id)calendar;
- (id)predicateForEventsWithAttendeesInCalendar:(id)calendar;
- (id)predicateForEventsWithConferenceURL:(id)l limit:(int64_t)limit;
- (id)predicateForEventsWithStartDate:(id)date endDate:(id)endDate calendars:(id)calendars loadDefaultProperties:(BOOL)properties;
- (id)predicateForEventsWithStartDate:(id)date endDate:(id)endDate calendars:(id)calendars matchingContacts:(id)contacts;
- (id)predicateForEventsWithStartDate:(id)date endDate:(id)endDate uniqueID:(id)d calendars:(id)calendars;
- (id)predicateForMasterEventsInCalendar:(id)calendar;
- (id)predicateForMasterEventsInCalendars:(id)calendars;
- (id)predicateForMasterEventsWithExternalTrackingStatusInCalendar:(id)calendar;
- (id)predicateForMasterEventsWithInvitationsAndOccurrencesAfter:(id)after inCalendar:(id)calendar;
- (id)predicateForMasterEventsWithOccurrencesWithStartDate:(id)date endDate:(id)endDate inCalendar:(id)calendar;
- (id)predicateForMasterEventsWithStartDate:(id)date title:(id)title inCalendar:(id)calendar;
- (id)predicateForNaturalLanguageSuggestedEventsWithSearchString:(id)string;
- (id)predicateForNaturalLanguageSuggestedEventsWithSearchString:(id)string startDate:(id)date;
- (id)predicateForNonrecurringEventsWithStartDate:(id)date endDate:(id)endDate calendars:(id)calendars;
- (id)predicateForPotentialTravelEventsInCalendars:(id)calendars startDate:(id)date endDate:(id)endDate;
- (id)predicateForRandomMasterEventsWithStartDate:(id)date endDate:(id)endDate needToHaveAttendee:(BOOL)attendee needToHaveLocation:(BOOL)location allDay:(BOOL)day filteredOutTitles:(id)titles limit:(int64_t)limit calendars:(id)self0;
- (id)predicateForScheduleAgentClientEventsInCalendar:(id)calendar;
- (id)predicateForUpNextEventsInCalendars:(id)calendars startDate:(id)date endDate:(id)endDate startDateRestrictionThreshold:(double)threshold;
- (id)primaryAppleAccountSource;
- (id)publicObjectWithFetchedObjectID:(id)d;
- (id)publicObjectWithObjectID:(id)d;
- (id)publicObjectWithPersistentObject:(id)object;
- (id)readWriteCalendarsForEntityType:(unint64_t)type;
- (id)redactedMimicSaveEvent:(id)event oldToNewObjectIDMap:(id)map serializedDictionary:(id)dictionary objectIDToChangeSetDictionaryMap:(id)dictionaryMap objectIDToPersistentDictionaryMap:(id)persistentDictionaryMap;
- (id)registerFetchedObjectWithID:(id)d withDefaultLoadedPropertyKeys:(id)keys values:(id)values;
- (id)reminderIntegrationCalendar;
- (id)reminderSourceForEventSource:(id)source;
- (id)reminderSourceMap;
- (id)reminderSources;
- (id)reminderWithExternalURI:(id)i;
- (id)reminderWithUniqueId:(id)id;
- (id)resourceChangesForEntityTypes:(unint64_t)types;
- (id)sequenceToken;
- (id)sharedCalendarInvitationsForEntityTypes:(unint64_t)types;
- (id)sourceIdentifierForEvent:(id)event;
- (id)sourceWithExternalID:(id)d;
- (id)sourcesEnabledForEntityType:(unint64_t)type;
- (id)travelEligibleEventsInCalendars:(id)calendars startDate:(id)date endDate:(id)endDate;
- (id)uniqueIdentifiersForAllObjectsWithChangesRelatedToObjects:(id)objects;
- (id)uniqueIdentifiersForEventsWithObjectIDs:(id)ds;
- (id)updatedObjectIDs;
- (id)validatedNonDeletedPersistentObjectWithObjectID:(id)d;
- (id)validatedNonDeletedPublicObjectWithObjectID:(id)d;
- (int)birthdayCalendarVersion;
- (int)countOfEventsCalendarFromStartDate:(id)date toEndDate:(id)endDate ByCalendars:(id)calendars;
- (int)countOfEventsFromStartDate:(id)date toEndDate:(id)endDate;
- (int)readWriteCalendarCountForEntityType:(unint64_t)type;
- (int)sequenceNumber;
- (int)syncErrorCount;
- (int64_t)registerForDetailedChangeTrackingInSource:(id)source error:(id *)error;
- (unint64_t)addressValidationStatus:(id)status;
- (unint64_t)countOfEventsInSource:(id)source;
- (unint64_t)lastConfirmedSplashScreenVersion;
- (unint64_t)timeToLeaveLocationAuthorizationStatus;
- (void)_accessStatusChanged;
- (void)_addObjectToPendingCommits:(id)commits;
- (void)_addPendingIntegrationEvent:(id)event toArrayOfHashTables:(id)tables;
- (void)_addRemovedObjectToPendingCommits:(id)commits;
- (void)_cacheCalendarWithCADObjectID:(id)d withDefaultLoadedPropertyValues:(id)values forKeys:(id)keys;
- (void)_cacheDeletedEventIdentifierIfNeededForObject:(id)object;
- (void)_cacheSourceWithCADObjectID:(id)d withDefaultLoadedPropertyValues:(id)values forKeys:(id)keys;
- (void)_clearAllCachedConstraints;
- (void)_clearAllCaches;
- (void)_clearCachedCalendars;
- (void)_clearCachedConstraintsForObjectWithCADObjectID:(id)d;
- (void)_clearCachedSources;
- (void)_clearImageCache;
- (void)_clearPendingChangesForObjectsWithOwner:(id)owner;
- (void)_databaseChangedExternally:(unint64_t)externally processSynchronously:(BOOL)synchronously;
- (void)_defaultAlarmChangedExternally;
- (void)_defaultCalendarChangedExternally;
- (void)_deleteDraft:(id)draft;
- (void)_deleteDraftOfEventWithOccurrenceID:(id)d fromDirectory:(id)directory;
- (void)_deleteObject:(id)object;
- (void)_detachObject:(id)object;
- (void)_fetchAndClearEventsNeedingGeocoding:(id *)geocoding withCommittedObjects:(id)objects;
- (void)_fetchProperties:(id)properties forObjects:(id)objects;
- (void)_forgetRegisteredObjects;
- (void)_implicitUpgradeToFullAccessIfNeededWithReason:(int64_t)reason;
- (void)_implicitlyRequestEventAccessForOlderApps;
- (void)_insertObject:(id)object;
- (void)_loadCalendarsIfNeeded;
- (void)_loadSourcesIfNeeded;
- (void)_markObjectUncommittable:(id)uncommittable;
- (void)_mimicCommitWithOldToNewObjectIDMap:(id)map insertedObjectsToCommit:(id)commit updatedObjectsToCommit:(id)toCommit deletedObjectsToCommit:(id)objectsToCommit;
- (void)_objectDidReset:(id)reset;
- (void)_populateCalendarsByIdentifierIfNeeded;
- (void)_postEventStoreChangedNotificationWithChangeType:(unint64_t)type changedObjectIDs:(id)ds forceImmediate:(BOOL)immediate;
- (void)_postEventStoreChangedNotificationWithTags:(id)tags context:(id)context;
- (void)_processChangedObjectIDsWithErrorCode:(int)code changesTruncated:(BOOL)truncated latestToken:(id)token changeData:(id)data resultHandler:(id)handler;
- (void)_processExternalChangesWithLatestTimestamp:(id)timestamp changedObjectIDsData:(id)data deletedObjectIDOffsets:(id)offsets changesWereSyncStatusOnly:(BOOL)only forceImmediateNotification:(BOOL)notification;
- (void)_rebuildSourceMapsWithEventSources:(id)sources reminderSources:(id)reminderSources;
- (void)_registerObject:(id)object;
- (void)_registerObjectImmediate:(id)immediate;
- (void)_removeCachedCalendarFromSource:(id)source;
- (void)_removeCachedCalendarWithCADID:(id)d;
- (void)_reregisterObject:(id)object oldID:(id)d;
- (void)_resetAndApplyChangesForRedactedMimicCommitOnObject:(id)object usingModifiedObject:(id)modifiedObject;
- (void)_resetAndNotifyAfterDatabaseRestoreGenerationChanged;
- (void)_resetCachedPersonaIdentifiers;
- (void)_resetForMimicCommitOnObject:(id)object oldToNewObjectIDMap:(id)map;
- (void)_setIsUnitTesting:(BOOL)testing;
- (void)_setMockPermissions:(id)permissions;
- (void)_simulateDaemonCrashForUnitTests;
- (void)_trackModifiedObject:(id)object;
- (void)_uncacheImage:(id)image;
- (void)_unregisterObject:(id)object;
- (void)_validateEventPredicate:(id)predicate;
- (void)acceptSuggestedEvent:(id)event;
- (void)acceptSuggestedEvent:(id)event placeOnCalendar:(id)calendar;
- (void)addExchangeDelegateWithName:(id)name emailAddress:(id)address toSource:(id)source completion:(id)completion;
- (void)addPendingIntegrationEvent:(id)event;
- (void)analyticsSendEvent:(id)event appendingClientBundleIDToPayload:(id)payload;
- (void)cacheConstraints:(id)constraints forObjectWithCADObjectID:(id)d;
- (void)cacheValidationStatusForAddress:(id)address status:(unint64_t)status;
- (void)cancelFetchRequest:(id)fetchIdentifier;
- (void)changedObjectIDsSinceToken:(int64_t)token resultHandler:(id)handler;
- (void)changesSinceSequenceToken:(id)token completion:(id)completion;
- (void)clearSuperfluousChanges;
- (void)confirmSuggestedEvent:(id)event;
- (void)consumeAllChangesUpToToken:(id)token;
- (void)daemonRestarted;
- (void)dealloc;
- (void)deleteAllDrafts;
- (void)deleteDraftOfEventWithOccurrenceID:(id)d;
- (void)deleteSuggestedEvent:(id)event;
- (void)endCalDAVServerSimulation:(id)simulation;
- (void)ensureLoadedProperties:(id)properties forObjects:(id)objects;
- (void)enumerateEventsMatchingPredicate:(NSPredicate *)predicate usingBlock:(EKEventSearchCallback)block;
- (void)familyCalendarsWithCompletion:(id)completion;
- (void)fetchChangedObjectIDs:(id)ds;
- (void)fetchChangedObjectIDsSinceToken:(int64_t)token resultHandler:(id)handler;
- (void)fetchEventCountsInRange:(id)range inCalendars:(id)calendars exclusionOptions:(int64_t)options completion:(id)completion;
- (void)fetchGrantedDelegatesForSource:(id)source results:(id)results;
- (void)getMapsWithReminderSourceMap:(id *)map eventSourceMap:(id *)sourceMap;
- (void)insertSuggestedEventCalendar;
- (void)invalidateReminderSourceMaps;
- (void)loadEventIDs:(id *)ds uniqueIDs:(id *)iDs calendar:(id)calendar;
- (void)markChangedObjectIDsConsumedUpToToken:(int64_t)token;
- (void)pendingIntegrationEventChangedIdentifierFrom:(id)from to:(id)to;
- (void)performHoldingReminderSourceMapLock:(id)lock;
- (void)postSyntheticRouteHypothesis:(id)hypothesis forEventWithExternalURL:(id)l;
- (void)purgeChangelog;
- (void)rebuildOccurrenceCache;
- (void)recordObjectRebaseWithOldObjectID:(id)d newObjectID:(id)iD;
- (void)reminderStoreChanged;
- (void)removeEmptyTablesInArray:(id)array;
- (void)removeExchangeDelegate:(id)delegate completion:(id)completion;
- (void)removePendingIntegrationEvent:(id)event;
- (void)removeSuggestedEventCalendar;
- (void)requestIntegrationCatchupSync;
- (void)reset;
- (void)respondToSharedCalendarInvitation:(id)invitation withStatus:(unint64_t)status;
- (void)rollbackObjectsWithIdentifiers:(id)identifiers;
- (void)setCachedDefaultAlarmOffsetsToNSNotFound;
- (void)setCachedEKSourceConstraintObject:(id)object forKey:(id)key;
- (void)setDefaultCalendar:(id)calendar forNewEventsInDelegateSource:(id)source;
- (void)setDefaultCalendarForNewReminders:(id)reminders;
- (void)setNeedsGeocoding:(BOOL)geocoding forEvent:(id)event;
- (void)setPrivacyClientIdentity:(id)identity;
- (void)setRemoteClientIdentity:(id)identity;
- (void)setRestoreGenerationChanged:(BOOL)changed;
- (void)setTimeZone:(id)zone;
- (void)showCompletedRemindersChanged:(id)changed;
- (void)showDeclinedEventsChanged:(id)changed;
- (void)startRecordingObjectIDChangeMap;
- (void)stopRecordingObjectIDChangeMap;
- (void)updateGrantedDelegate:(id)delegate action:(int64_t)action source:(id)source completion:(id)completion;
- (void)waitUntilDatabaseUpdatedToTimestamp:(id)timestamp completion:(id)completion;
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

  returnReminderResults = [(EKEventStore *)self returnReminderResults];
  v5 = v13[5];
  if (returnReminderResults)
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
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __38__EKEventStore__loadCalendarsIfNeeded__block_invoke;
    v17[3] = &unk_1E78008A8;
    v17[4] = &v20;
    v17[5] = v18;
    [cADOperationProxySync CADDatabaseGetCalendarsWithFaultedProperties:v3 reply:v17];

    if (v21[5])
    {
      database = [(EKEventStore *)self database];
      databaseRestoreGeneration = [database databaseRestoreGeneration];

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
      v16 = databaseRestoreGeneration;
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
    defaultTimeZone = [(NSTimeZone *)timeZone copy];
  }

  else
  {
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  return defaultTimeZone;
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
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __36__EKEventStore__loadSourcesIfNeeded__block_invoke;
    v15[3] = &unk_1E78008A8;
    v15[4] = &v18;
    v15[5] = v16;
    [cADOperationProxySync CADDatabaseGetSourcesWithFaultedProperties:v3 reply:v15];

    if (v19[5])
    {
      database = [(EKEventStore *)self database];
      databaseRestoreGeneration = [database databaseRestoreGeneration];

      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v19[5], "count")}];
      sources = self->_sources;
      self->_sources = v8;

      v10 = v19[5];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __36__EKEventStore__loadSourcesIfNeeded__block_invoke_264;
      v11[3] = &unk_1E78008D0;
      v14 = databaseRestoreGeneration;
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
  eventSources = [(EKEventStore *)self eventSources];
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_271_0];
  v4 = [eventSources filteredArrayUsingPredicate:v3];

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
    cADOperationProxySync = [(EKDaemonConnection *)self->_database CADOperationProxySync];
    [cADOperationProxySync CADTestingCloseDatabase:&__block_literal_global_203];
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
    sources = [(EKReminderStore *)self->_reminderStore sources];
  }

  else
  {
    sources = 0;
  }

  return sources;
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

- (id)_combineEventSources:(id)sources withReminderSources:(id)reminderSources
{
  v27 = *MEMORY[0x1E69E9840];
  sourcesCopy = sources;
  reminderSourcesCopy = reminderSources;
  [(EKEventStore *)self _rebuildSourceMapsWithEventSources:sourcesCopy reminderSources:reminderSourcesCopy];
  reminderSourceIDToEventSourceIDMapping = [(EKEventStore *)self reminderSourceIDToEventSourceIDMapping];
  if (![reminderSourcesCopy count])
  {
    v18 = sourcesCopy;
LABEL_15:
    v9 = v18;
    goto LABEL_16;
  }

  if (![sourcesCopy count])
  {
    v18 = reminderSourcesCopy;
    goto LABEL_15;
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(sourcesCopy, "count") + objc_msgSend(reminderSourcesCopy, "count")}];
  v21 = sourcesCopy;
  [v9 addObjectsFromArray:sourcesCopy];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = reminderSourcesCopy;
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
        sourceIdentifier = [v15 sourceIdentifier];
        v17 = [reminderSourceIDToEventSourceIDMapping objectForKeyedSubscript:sourceIdentifier];

        if (!v17)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  sourcesCopy = v21;
LABEL_16:

  v19 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_rebuildSourceMapsWithEventSources:(id)sources reminderSources:(id)reminderSources
{
  v60 = *MEMORY[0x1E69E9840];
  sourcesCopy = sources;
  reminderSourcesCopy = reminderSources;
  if ([reminderSourcesCopy count] && objc_msgSend(sourcesCopy, "count"))
  {
    selfCopy = self;
    v38 = reminderSourcesCopy;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v37 = sourcesCopy;
    v9 = sourcesCopy;
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
          externalID = [v14 externalID];
          if (externalID)
          {
            [v8 setObject:v14 forKeyedSubscript:externalID];
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

    v18 = [reminderSourcesCopy count];
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
    v20 = reminderSourcesCopy;
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
          externalID2 = [v25 externalID];
          v27 = [v8 objectForKeyedSubscript:externalID2];

          if (v27)
          {
            externalID3 = [v25 externalID];
            [v8 removeObjectForKey:externalID3];

LABEL_27:
            sourceIdentifier = [v27 sourceIdentifier];
            sourceIdentifier2 = [v25 sourceIdentifier];
            v31 = sourceIdentifier2;
            if (sourceIdentifier)
            {
              v32 = sourceIdentifier2 == 0;
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
                v51 = sourceIdentifier;
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
              [v40 setObject:sourceIdentifier forKeyedSubscript:sourceIdentifier2];
              [v39 setObject:v31 forKeyedSubscript:sourceIdentifier];
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

    [(EKEventStore *)selfCopy setReminderSourceIDToEventSourceIDMapping:v40];
    [(EKEventStore *)selfCopy setEventSourceIDToReminderSourceIDMapping:v39];

    sourcesCopy = v37;
    reminderSourcesCopy = v38;
  }

  else
  {
    v17 = MEMORY[0x1E695E0F8];
    [(EKEventStore *)self setReminderSourceIDToEventSourceIDMapping:MEMORY[0x1E695E0F8]];
    [(EKEventStore *)self setEventSourceIDToReminderSourceIDMapping:v17];
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (id)combineEventCalendars:(id)calendars withReminderCalendars:(id)reminderCalendars
{
  calendarsCopy = calendars;
  reminderCalendarsCopy = reminderCalendars;
  if ([reminderCalendarsCopy count])
  {
    if ([calendarsCopy count])
    {
      v7 = [calendarsCopy arrayByAddingObjectsFromArray:reminderCalendarsCopy];
    }

    else
    {
      v7 = reminderCalendarsCopy;
    }
  }

  else
  {
    v7 = calendarsCopy;
  }

  v8 = v7;

  return v8;
}

- (id)eventSourceForReminderSource:(id)source
{
  sourceIdentifier = [source sourceIdentifier];
  v5 = [(EKEventStore *)self eventSourceIDForReminderSourceID:sourceIdentifier];

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

- (id)eventSourceIDForReminderSourceID:(id)d
{
  dCopy = d;
  reminderSourceMap = [(EKEventStore *)self reminderSourceMap];
  v6 = [reminderSourceMap objectForKeyedSubscript:dCopy];

  return v6;
}

- (id)reminderSourceForEventSource:(id)source
{
  sourceCopy = source;
  reminderStore = [(EKEventStore *)self reminderStore];
  eventSourceMap = [(EKEventStore *)self eventSourceMap];
  v7 = [sourceCopy valueForKey:*MEMORY[0x1E6992B08]];

  v8 = [eventSourceMap objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [reminderStore sourceWithIdentifier:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)getMapsWithReminderSourceMap:(id *)map eventSourceMap:(id *)sourceMap
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
  if (map)
  {
    *map = v14[5];
  }

  if (sourceMap)
  {
    *sourceMap = v8[5];
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

- (void)performHoldingReminderSourceMapLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock([(EKEventStore *)self reminderSourceMapLock]);
  lockCopy[2](lockCopy);

  reminderSourceMapLock = [(EKEventStore *)self reminderSourceMapLock];

  os_unfair_lock_unlock(reminderSourceMapLock);
}

- (BOOL)restoreGenerationChanged
{
  os_unfair_lock_lock(&self->_flagsLock);
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_flagsLock);
  return flags & 1;
}

- (void)setRestoreGenerationChanged:(BOOL)changed
{
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags = *&self->_flags & 0xFE | changed;

  os_unfair_lock_unlock(&self->_flagsLock);
}

- (BOOL)setRestoreGenerationChangedAndGetPreviousValue:(BOOL)value
{
  os_unfair_lock_lock(&self->_flagsLock);
  flags = self->_flags;
  *&self->_flags = flags & 0xFE | value;
  os_unfair_lock_unlock(&self->_flagsLock);
  return flags & 1;
}

+ (Class)classForEntityName:(id)name
{
  v3 = classForEntityName__onceToken;
  nameCopy = name;
  if (v3 != -1)
  {
    +[EKEventStore classForEntityName:];
  }

  v5 = [classForEntityName__sClassMap objectForKey:nameCopy];

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

+ (void)setReminderStoreContainerTokenProvider:(id)provider
{
  _reminderStoreContainerTokenProvider = _Block_copy(provider);

  MEMORY[0x1EEE66BB8]();
}

- (EKEventStore)initWithEKOptions:(unint64_t)options path:(id)path sources:(id)sources
{
  pathCopy = path;
  v9 = [sources valueForKey:@"sourceIdentifier"];
  v10 = [(EKEventStore *)self initWithEKOptions:options path:pathCopy changeTrackingClientId:0 enablePropertyModificationLogging:1 allowDelegateSources:1 allowedSourceIdentifiers:v9];

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

+ (BOOL)_shouldUseInProcessXPCWithInitOptions:(unint64_t)options
{
  if ((options & 0x800) != 0)
  {
    return 0;
  }

  if ((options & 0x400) != 0)
  {
    return 1;
  }

  return [self shouldUseInProcessXPCByDefault];
}

- (id)blockList
{
  blockListOverride = [(EKEventStore *)self blockListOverride];

  if (blockListOverride)
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
  v3 = [self realAuthorizationStatusForEntityType:entityType];
  if (v3 == EKAuthorizationStatusWriteOnly && (_shouldUseLegacyAccessBehavior() & 1) != 0)
  {
    return 3;
  }

  return v3;
}

+ (BOOL)_staticAccessFlagSaysDeniedForEntityType:(unint64_t)type
{
  if (type == 1)
  {
    if (denyAccessToReminders)
    {
      return 1;
    }
  }

  else if (!type && (denyAccessToEvents & 1) != 0)
  {
    return 1;
  }

  return 0;
}

+ (int64_t)realAuthorizationStatusForEntityType:(unint64_t)type
{
  v5 = +[EKDaemonConnection anyAvailableDaemonConnection];
  if (v5)
  {
    connection = v5;
    v7 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    connection = [v7 connection];
  }

  if (type == 1)
  {
    remindersAuthorization = [connection remindersAuthorization];
    goto LABEL_8;
  }

  if (!type)
  {
    remindersAuthorization = [connection eventAuthorization];
LABEL_8:
    v9 = remindersAuthorization;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:
  if ([self _staticAccessFlagSaysDeniedForEntityType:type])
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

+ (int64_t)authorizationStatusWithAuditToken:(id *)token entityType:(unint64_t)type
{
  if (type)
  {
    if (type != 1)
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

  v7 = *token;
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
  dataProtectionObserver = [(EKEventStore *)self dataProtectionObserver];
  dataIsAccessible = [dataProtectionObserver dataIsAccessible];

  return dataIsAccessible ^ 1;
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
  databaseDirectory = [(CADDatabaseInitializationOptions *)self->_initializationOptions databaseDirectory];
  path = [databaseDirectory path];

  return path;
}

- (void)setTimeZone:(id)zone
{
  if (self->_timeZone != zone)
  {
    v5 = [zone copy];
    timeZone = self->_timeZone;
    self->_timeZone = v5;

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setRemoteClientIdentity:(id)identity
{
  [(CADDatabaseInitializationOptions *)self->_initializationOptions setRemoteClientIdentity:identity];
  initializationOptions = self->_initializationOptions;
  connection = [(EKEventStore *)self connection];
  [connection setInitializationOptions:initializationOptions];
}

- (void)_setIsUnitTesting:(BOOL)testing
{
  v4 = 4096;
  if (!testing)
  {
    v4 = 0;
  }

  self->_options = self->_options & 0xFFFFFFFFFFFFEFFFLL | v4;
  [(CADDatabaseInitializationOptions *)self->_initializationOptions setUnitTesting:?];
  initializationOptions = self->_initializationOptions;
  connection = [(EKEventStore *)self connection];
  [connection setInitializationOptions:initializationOptions];

  [(EKEventStore *)self _updateDefaultDelayForThrottleEventStoreChangedNotifications];
}

- (void)setPrivacyClientIdentity:(id)identity
{
  [(CADDatabaseInitializationOptions *)self->_initializationOptions setPrivacyClientIdentity:identity];
  initializationOptions = self->_initializationOptions;
  connection = [(EKEventStore *)self connection];
  [connection setInitializationOptions:initializationOptions];
}

- (void)_simulateDaemonCrashForUnitTests
{
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  [cADOperationProxySync CADTestingSimulateDaemonCrash];
}

- (void)_setMockPermissions:(id)permissions
{
  permissionsCopy = permissions;
  mockPermissions = [(CADDatabaseInitializationOptions *)self->_initializationOptions mockPermissions];

  v5 = permissionsCopy;
  if (mockPermissions != permissionsCopy)
  {
    [(CADDatabaseInitializationOptions *)self->_initializationOptions setMockPermissions:permissionsCopy];
    initializationOptions = self->_initializationOptions;
    connection = [(EKEventStore *)self connection];
    [connection setInitializationOptions:initializationOptions];

    v5 = permissionsCopy;
  }
}

- (int)sequenceNumber
{
  sequenceToken = [(EKEventStore *)self sequenceToken];
  v3 = [sequenceToken sequenceForDatabaseID:*MEMORY[0x1E6992E18]];

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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__EKEventStore_sequenceToken__block_invoke;
  v6[3] = &unk_1E7800748;
  v6[4] = &v7;
  [cADOperationProxySync CADDatabaseGetSequenceToken:v6];

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

- (void)changesSinceSequenceToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__EKEventStore_changesSinceSequenceToken_completion___block_invoke;
  v11[3] = &unk_1E7800770;
  v12 = completionCopy;
  v10 = completionCopy;
  [cADOperationProxySync CADDatabaseGetChangesSinceSequenceToken:tokenCopy reply:v11];
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

- (id)_invalidCADObjectIDs:(id)ds
{
  dsCopy = ds;
  v5 = dsCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__24;
  v17 = __Block_byref_object_dispose__24;
  v18 = 0;
  if (dsCopy && [dsCopy count])
  {
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__EKEventStore__invalidCADObjectIDs___block_invoke;
    v10[3] = &unk_1E7800798;
    v12 = &v13;
    v11 = v5;
    [cADOperationProxySync CADObjectsExist:v11 reply:v10];
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

- (void)_databaseChangedExternally:(unint64_t)externally processSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  if (([(CADDatabaseInitializationOptions *)self->_initializationOptions databaseInitOptions]& 4) == 0 && [(EKEventStore *)self eventAccessLevel]== 2)
  {
    connection = [(EKEventStore *)self connection];
    hasEverConnected = [connection hasEverConnected];

    if (hasEverConnected)
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
        if (synchronouslyCopy)
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

      [(EKEventStore *)self _postEventStoreChangedNotificationWithChangeType:externally changedObjectIDs:0 forceImmediate:0];
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

+ (void)EKObjectIDsFromData:(id)data deletedObjectIDOffsets:(id)offsets outChangedIDs:(id *)ds outDeletedIDs:(id *)iDs
{
  v58 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  offsetsCopy = offsets;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v11 = [dataCopy countByEnumeratingWithState:&v52 objects:v57 count:16];
  dsCopy = ds;
  iDsCopy = iDs;
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
          objc_enumerationMutation(dataCopy);
        }

        v17 = *(*(&v52 + 1) + 8 * i);
        v18 = [dataCopy objectForKeyedSubscript:v17];
        v19 = [offsetsCopy objectForKeyedSubscript:v17];
        unsignedIntegerValue = [v19 unsignedIntegerValue];
        v14 += unsignedIntegerValue;
        v13 = v13 - unsignedIntegerValue + ([v18 length] >> 3);
      }

      v12 = [dataCopy countByEnumeratingWithState:&v52 objects:v57 count:16];
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
  obj = dataCopy;
  v43 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v43)
  {
    v41 = *v49;
    v42 = offsetsCopy;
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
        v46 = [offsetsCopy objectForKeyedSubscript:v24];
        unsignedIntegerValue2 = [v46 unsignedIntegerValue];
        v45 = [v25 length];
        intValue = [v24 intValue];
        v47 = v25;
        bytes = [v25 bytes];
        v29 = bytes;
        if (unsignedIntegerValue2)
        {
          v30 = (bytes + 4);
          v31 = unsignedIntegerValue2;
          do
          {
            v32 = [EKObjectID objectIDWithEntityType:*(v30 - 1) rowID:*v30 databaseID:intValue];
            [v21 addObject:v32];

            v30 += 2;
            --v31;
          }

          while (v31);
        }

        v33 = (v45 >> 3) - unsignedIntegerValue2;
        if (v45 >> 3 > unsignedIntegerValue2)
        {
          v34 = (v29 + 8 * unsignedIntegerValue2 + 4);
          do
          {
            v35 = [EKObjectID objectIDWithEntityType:*(v34 - 1) rowID:*v34 databaseID:intValue];
            [v22 addObject:v35];

            v34 += 2;
            --v33;
          }

          while (v33);
        }

        offsetsCopy = v42;
      }

      v43 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v43);
  }

  v36 = v21;
  *dsCopy = v21;
  v37 = v22;
  *iDsCopy = v22;

  v38 = *MEMORY[0x1E69E9840];
}

- (void)_processExternalChangesWithLatestTimestamp:(id)timestamp changedObjectIDsData:(id)data deletedObjectIDOffsets:(id)offsets changesWereSyncStatusOnly:(BOOL)only forceImmediateNotification:(BOOL)notification
{
  notificationCopy = notification;
  onlyCopy = only;
  v126 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  dataCopy = data;
  offsetsCopy = offsets;
  dispatch_assert_queue_V2(self->_dbChangedQueue);
  v67 = timestampCopy;
  if (timestampCopy)
  {
    objc_storeStrong(&self->_lastDatabaseNotificationTimestamp, timestamp);
  }

  if ([(EKEventStore *)self setRestoreGenerationChangedAndGetPreviousValue:0])
  {
    [(EKEventStore *)self _resetAndNotifyAfterDatabaseRestoreGenerationChanged];
  }

  else
  {
    if (dataCopy)
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

    eventAccessLevel = [(EKEventStore *)self eventAccessLevel];
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
            v96 = eventAccessLevel;
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
    selfCopy = self;
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
    v90 = dataCopy != 0;
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
            if ((objc_opt_isKindOfClass() & (eventAccessLevel != 1)) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & (eventAccessLevel == 1)) == 1))
            {
              cADObjectID = [v43 CADObjectID];
              [(EKEventStore *)self _clearCachedConstraintsForObjectWithCADObjectID:cADObjectID];
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
    v82 = dataCopy != 0;
    v79[4] = self;
    v76 = v38;
    v80 = v76;
    v81 = &v102;
    dispatch_sync(v46, v79);
    if (*(v103 + 24) == 1)
    {
      [(EKEventStore *)self invalidateReminderSourceMaps];
    }

    v70 = [(EKEventStore *)self _checkPendingIntegrationEvents:v76 changedIDsValid:dataCopy != 0];
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

    if (!onlyCopy || [(EKEventStore *)self enableSourceSyncStatusChanges])
    {
      if (dataCopy)
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

      if (onlyCopy)
      {
        v63 = 2;
      }

      else
      {
        v63 = 1;
      }

      [(EKEventStore *)self _postEventStoreChangedNotificationWithChangeType:v63 changedObjectIDs:v61 forceImmediate:notificationCopy];
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

- (id)_checkPendingIntegrationEvents:(id)events changedIDsValid:(BOOL)valid
{
  validCopy = valid;
  v108 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  dispatch_assert_queue_V2(self->_dbChangedQueue);
  if (validCopy)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v6 = eventsCopy;
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
        connection = [(EKEventStore *)self connection];
        cADOperationProxySync = [connection CADOperationProxySync];
        v80 = MEMORY[0x1E69E9820];
        v81 = 3221225472;
        v82 = __63__EKEventStore__checkPendingIntegrationEvents_changedIDsValid___block_invoke;
        v83 = &unk_1E77FED28;
        v84 = v54;
        v85 = &v86;
        [cADOperationProxySync CADDatabaseGetAllEventsWithUniqueID:? reply:?];

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
                anyObject = [v19 anyObject];
                if (anyObject)
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
                        calendar = [v25 calendar];
                        calendar2 = [anyObject calendar];
                        v28 = [calendar isEqual:calendar2];

                        if (v28)
                        {
                          v29 = EKLogHandle;
                          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                          {
                            privacySafeIntegrationEventDescription = [anyObject privacySafeIntegrationEventDescription];
                            *buf = 138543362;
                            v102 = privacySafeIntegrationEventDescription;
                            _os_log_impl(&dword_1A805E000, v29, OS_LOG_TYPE_INFO, "Pending integration event has been matched; removing it: %{public}@", buf, 0xCu);
                          }

                          objectID = [anyObject objectID];
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
                                backingObject = [v35 backingObject];
                                [(EKEventStore *)self _objectDidReset:backingObject];

                                backingObject2 = [v25 backingObject];
                                [v35 setBackingObject:backingObject2];

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
                          [v38 addObject:objectID];
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

- (void)removeEmptyTablesInArray:(id)array
{
  v17 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [arrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(arrayCopy);
        }

        anyObject = [*(*(&v12 + 1) + 8 * i) anyObject];

        if (!anyObject)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
          }

          [v7 addIndex:v6];
        }

        ++v6;
      }

      v5 = [arrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
    if (v7)
    {
      [arrayCopy removeObjectsAtIndexes:v7];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_cacheDeletedEventIdentifierIfNeededForObject:(id)object
{
  objectCopy = object;
  if (self->_deletedEventUniqueIdentifiersCache)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      propertyKeyForUniqueIdentifier = [objc_opt_class() propertyKeyForUniqueIdentifier];
      v10 = 0;
      v6 = [objectCopy loadedOrUpdatedPropertyValue:propertyKeyForUniqueIdentifier wasAvailable:&v10];
      v7 = v6;
      if (v10 == 1 && v6)
      {
        deletedEventUniqueIdentifiersCache = self->_deletedEventUniqueIdentifiersCache;
        objectID = [objectCopy objectID];
        [(NSCache *)deletedEventUniqueIdentifiersCache setObject:v7 forKey:objectID];
      }
    }
  }
}

+ (id)_contextForNotificationWithChangeType:(unint64_t)type changedObjectIDs:(id)ds
{
  dsCopy = ds;
  if (_contextForNotificationWithChangeType_changedObjectIDs__onceToken != -1)
  {
    +[EKEventStore _contextForNotificationWithChangeType:changedObjectIDs:];
  }

  if (type == 2)
  {
    if (dsCopy)
    {
      v6 = 0;
      goto LABEL_11;
    }

    v7 = &_contextForNotificationWithChangeType_changedObjectIDs__contextForSyncOnlyWithUnknownChanges;
  }

  else
  {
    v7 = &_contextForNotificationWithChangeType_changedObjectIDs__contextForNonSyncOnlyWithKnownChanges;
    if (!dsCopy)
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

- (void)_postEventStoreChangedNotificationWithChangeType:(unint64_t)type changedObjectIDs:(id)ds forceImmediate:(BOOL)immediate
{
  immediateCopy = immediate;
  v14[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v9 = [objc_opt_class() _contextForNotificationWithChangeType:type changedObjectIDs:dsCopy];
  v10 = v9;
  if (immediateCopy)
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

  [(CalAccumulatingQueue *)self->_notificationAccumulatingQueue updateTagsAndExecuteBlock:dsCopy withContext:v10];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_postEventStoreChangedNotificationWithTags:(id)tags context:(id)context
{
  v27[4] = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  contextCopy = context;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = CalMonotonicTime();
  self->_lastFiredEventStoreChangedNotificationTime = v8;
  v9 = tagsCopy;
  v10 = [contextCopy objectForKeyedSubscript:@"EKEventStoreUnknownChangeKey"];
  bOOLValue = [v10 BOOLValue];

  v12 = v9;
  if (bOOLValue)
  {

    v12 = 0;
  }

  v13 = [contextCopy objectForKeyedSubscript:@"EKEventStoreNonSyncOnlyChangeKey"];
  bOOLValue2 = [v13 BOOLValue];

  if (!bOOLValue2)
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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"EKEventStoreChangedNotification" object:self userInfo:v21];

  v23 = *MEMORY[0x1E69E9840];
}

+ (double)_defaultDelayForThrottledNotificationsWithInitializationOptions:(id)options
{
  v3 = 0.0;
  if (([options unitTesting] & 1) == 0 && (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessIsCalendarDaemon") & 1) == 0)
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

- (double)_throttleDelayForEventStoreChangedNotificationWithTags:(id)tags context:(id)context
{
  contextCopy = context;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = 0.0;
  if (self->_defaultDelayForThrottledNotifications != 0.0)
  {
    v7 = [contextCopy objectForKeyedSubscript:@"EKEventStoreForceImmediateChangeKey"];
    bOOLValue = [v7 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v9 = [contextCopy objectForKeyedSubscript:@"EKEventStoreNonSyncOnlyChangeKey"];
      bOOLValue2 = [v9 BOOLValue];

      v11 = 256;
      if (bOOLValue2)
      {
        v11 = 264;
      }

      [objc_opt_class() _throttleDelayForEventStoreChangedNotificationWithLastFiredTime:*(&self->super.isa + v11) delay:self->_defaultDelayForThrottledNotifications];
      v6 = v12;
    }
  }

  return v6;
}

+ (double)_throttleDelayForEventStoreChangedNotificationWithLastFiredTime:(unint64_t)time delay:(double)delay
{
  if (!time)
  {
    return 0.0;
  }

  info = 0;
  mach_timebase_info(&info);
  v6 = CalMonotonicTime();
  result = 0.0;
  if (((v6 - time) * info.numer / info.denom / 0x3B9ACA00) <= delay)
  {
    return delay;
  }

  return result;
}

- (void)_defaultCalendarChangedExternally
{
  calendarSourcesAndDefaultsQueue = [(EKEventStore *)self calendarSourcesAndDefaultsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EKEventStore__defaultCalendarChangedExternally__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(calendarSourcesAndDefaultsQueue, block);

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"EKEventStoreCalendarsChangedNotification" object:self];
}

void __49__EKEventStore__defaultCalendarChangedExternally__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (void)_defaultAlarmChangedExternally
{
  calendarSourcesAndDefaultsQueue = [(EKEventStore *)self calendarSourcesAndDefaultsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EKEventStore__defaultAlarmChangedExternally__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(calendarSourcesAndDefaultsQueue, block);
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
  dataProtectionObserver = [(EKEventStore *)self dataProtectionObserver];
  dataIsAccessible = [dataProtectionObserver dataIsAccessible];

  if (dataIsAccessible)
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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__EKEventStore_eventStoreIdentifier__block_invoke;
  v6[3] = &unk_1E7800858;
  v6[4] = &v7;
  [cADOperationProxySync CADDatabaseGetUUID:v6];

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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__EKEventStore_lastConfirmedSplashScreenVersion__block_invoke;
  v6[3] = &unk_1E7800880;
  v6[4] = &v7;
  [cADOperationProxySync CADDatabaseLastConfirmedSplashScreenVersion:v6];

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

- (id)_sourceWithID:(id)d
{
  v3 = [(EKEventStore *)self objectWithObjectID:d];
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

- (void)_cacheSourceWithCADObjectID:(id)d withDefaultLoadedPropertyValues:(id)values forKeys:(id)keys
{
  dCopy = d;
  valuesCopy = values;
  keysCopy = keys;
  sources = self->_sources;
  if (sources)
  {
    v12 = [(NSMutableDictionary *)sources objectForKey:dCopy];
    v13 = v12;
    if (valuesCopy || !v12)
    {
      v14 = [EKObjectID objectIDWithCADObjectID:dCopy];
      v15 = [(EKEventStore *)self registerFetchedObjectWithID:v14 withDefaultLoadedPropertyKeys:keysCopy values:valuesCopy];

      if (v15)
      {
        [(NSMutableDictionary *)self->_sources setObject:v15 forKey:dCopy];
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

- (id)sourcesEnabledForEntityType:(unint64_t)type
{
  sources = [(EKEventStore *)self sources];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__EKEventStore_sourcesEnabledForEntityType___block_invoke;
  v8[3] = &__block_descriptor_40_e35_B24__0__EKSource_8__NSDictionary_16l;
  v8[4] = type;
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:v8];
  v6 = [sources filteredArrayUsingPredicate:v5];

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

- (id)getSubscribedCalendarsSourceCreateIfNeededWithError:(id *)error
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
    if (error)
    {
      *error = v10[5];
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

- (id)localBirthdayCalendarCreateIfNeededWithError:(id *)error
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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__EKEventStore_localBirthdayCalendarCreateIfNeededWithError___block_invoke;
  v12[3] = &unk_1E7800940;
  v12[5] = &v19;
  v12[6] = &v13;
  v12[4] = self;
  [cADOperationProxySync CADDatabaseGetOrCreateBirthdayCalendar:v12];

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
    if (error)
    {
      *error = v20[5];
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

- (id)delegateSourcesForSource:(id)source
{
  sourceCopy = source;
  eventSources = [(EKEventStore *)self eventSources];
  v6 = MEMORY[0x1E696AE18];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__EKEventStore_delegateSourcesForSource___block_invoke;
  v11[3] = &unk_1E7800988;
  v12 = sourceCopy;
  v7 = sourceCopy;
  v8 = [v6 predicateWithBlock:v11];
  v9 = [eventSources filteredArrayUsingPredicate:v8];

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

- (id)parentSourceForDelegateSource:(id)source
{
  v19 = *MEMORY[0x1E69E9840];
  delegatedAccountOwnerStoreID = [source delegatedAccountOwnerStoreID];
  if (delegatedAccountOwnerStoreID)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    eventSources = [(EKEventStore *)self eventSources];
    v6 = [eventSources countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(eventSources);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          externalID = [v9 externalID];
          v11 = [externalID isEqual:delegatedAccountOwnerStoreID];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [eventSources countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)fetchGrantedDelegatesForSource:(id)source results:(id)results
{
  resultsCopy = results;
  sourceCopy = source;
  connection = [(EKEventStore *)self connection];
  cADOperationProxy = [connection CADOperationProxy];
  cADObjectID = [sourceCopy CADObjectID];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__EKEventStore_fetchGrantedDelegatesForSource_results___block_invoke;
  v12[3] = &unk_1E78009B0;
  v13 = resultsCopy;
  v11 = resultsCopy;
  [cADOperationProxy CADSourceGetGrantedDelegatesList:cADObjectID reply:v12];
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

- (void)updateGrantedDelegate:(id)delegate action:(int64_t)action source:(id)source completion:(id)completion
{
  completionCopy = completion;
  sourceCopy = source;
  delegateCopy = delegate;
  connection = [(EKEventStore *)self connection];
  cADOperationProxy = [connection CADOperationProxy];
  cADObjectID = [sourceCopy CADObjectID];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__EKEventStore_updateGrantedDelegate_action_source_completion___block_invoke;
  v17[3] = &unk_1E78009D8;
  v18 = completionCopy;
  v16 = completionCopy;
  [cADOperationProxy CADSourceUpdateGrantedDelegate:delegateCopy action:action sourceID:cADObjectID reply:v17];
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

- (void)addExchangeDelegateWithName:(id)name emailAddress:(id)address toSource:(id)source completion:(id)completion
{
  nameCopy = name;
  addressCopy = address;
  sourceCopy = source;
  completionCopy = completion;
  if (completionCopy)
  {
    v14 = completionCopy;
  }

  else
  {
    v14 = &__block_literal_global_274;
  }

  if (!addressCopy)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = @"No emailAddress given";
LABEL_11:
    v20 = [v18 errorWithEKErrorCode:63 description:v19];
    v14[2](v14, 0, -1, v20);

    goto LABEL_12;
  }

  if (!sourceCopy)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = @"No source given";
    goto LABEL_11;
  }

  if ([sourceCopy sourceType] != 1)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = @"Given source is not an Exchange source";
    goto LABEL_11;
  }

  connection = [(EKEventStore *)self connection];
  cADOperationProxy = [connection CADOperationProxy];
  cADObjectID = [sourceCopy CADObjectID];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__EKEventStore_addExchangeDelegateWithName_emailAddress_toSource_completion___block_invoke_2;
  v21[3] = &unk_1E7800A20;
  v21[4] = self;
  v22 = v14;
  [cADOperationProxy CADSourceAddExchangeDelegateWithName:nameCopy emailAddress:addressCopy toSourceWithID:cADObjectID reply:v21];

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

- (void)removeExchangeDelegate:(id)delegate completion:(id)completion
{
  delegateCopy = delegate;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
  }

  else
  {
    v8 = &__block_literal_global_286;
  }

  if (!delegateCopy)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = @"No delegate given";
LABEL_11:
    v12 = [v13 errorWithEKErrorCode:63 description:v14];
    v8[2](v8, 0, v12);
    goto LABEL_12;
  }

  if (([delegateCopy isDelegate] & 1) == 0)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = @"Given source is not a delegate";
    goto LABEL_11;
  }

  if ([delegateCopy sourceType] != 1)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = @"Given delegate is not an Exchange source";
    goto LABEL_11;
  }

  cADObjectID = [delegateCopy CADObjectID];
  connection = [(EKEventStore *)self connection];
  cADOperationProxy = [connection CADOperationProxy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__EKEventStore_removeExchangeDelegate_completion___block_invoke_2;
  v15[3] = &unk_1E7800A48;
  v15[4] = self;
  v16 = cADObjectID;
  v17 = v8;
  v12 = cADObjectID;
  [cADOperationProxy CADSourceRemoveExchangeDelegateWithID:v12 reply:v15];

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
    sources = [(EKEventStore *)self sources];
    v6 = [sources countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(sources);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          sourceIdentifier = [v10 sourceIdentifier];
          v12 = [sourceIdentifier isEqualToString:v4];

          if (v12)
          {
            v13 = v10;

            goto LABEL_15;
          }
        }

        v7 = [sources countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)sourceWithExternalID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  sources = [(EKEventStore *)self sources];
  v6 = [sources countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(sources);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        externalID = [v9 externalID];
        v11 = [externalID isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [sources countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  eventSources = [(EKEventStore *)self eventSources];
  v3 = [eventSources countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(eventSources);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isPrimaryAppleAccount])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [eventSources countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (BOOL)saveSource:(id)source commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  sourceCopy = source;
  v9 = sourceCopy;
  if (error)
  {
    *error = 0;
  }

  if (!sourceCopy)
  {
    goto LABEL_12;
  }

  eventStore = [sourceCopy eventStore];

  if (eventStore != self)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
      *error = LOBYTE(v11) = 0;
      goto LABEL_13;
    }

LABEL_12:
    LOBYTE(v11) = 0;
    goto LABEL_13;
  }

  if (![v9 validate:error] || !objc_msgSend(v9, "save:", error))
  {
    goto LABEL_12;
  }

  [(EKEventStore *)self _addObjectToPendingCommits:v9];
  v11 = [(EKEventStore *)self save:error];
  if (v11 && commitCopy)
  {
    LOBYTE(v11) = [(EKEventStore *)self commitWithRollback:error];
  }

LABEL_13:

  return v11;
}

- (BOOL)removeSource:(id)source commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  sourceCopy = source;
  v9 = sourceCopy;
  if (error)
  {
    *error = 0;
  }

  if (!sourceCopy)
  {
    goto LABEL_11;
  }

  eventStore = [sourceCopy eventStore];

  if (eventStore != self)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
      *error = v11 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if (![v9 remove:error])
  {
    goto LABEL_11;
  }

  [(EKEventStore *)self _addObjectToPendingCommits:v9];
  if (![(EKEventStore *)self save:error])
  {
    goto LABEL_11;
  }

  [v9 markAsDeleted];
  v11 = !commitCopy || [(EKEventStore *)self commitWithRollback:error];
LABEL_12:

  return v11;
}

- (void)_clearCachedSources
{
  sources = self->_sources;
  self->_sources = 0;
  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isSourceManaged:(id)managed
{
  managedCopy = managed;
  if (-[EKEventStore returnEventResults](self, "returnEventResults") && [managedCopy allowsEvents])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    externalID = [managedCopy externalID];
    if (externalID)
    {
      os_unfair_lock_lock(&isSourceManaged__cacheLock);
      v6 = [isSourceManaged__kIsManagedCache objectForKey:externalID];
      if (!v6)
      {
        connection = [(EKEventStore *)self connection];
        cADOperationProxySync = [connection CADOperationProxySync];
        cADObjectID = [managedCopy CADObjectID];
        v15 = MEMORY[0x1E69E9820];
        v16 = 3221225472;
        v17 = __32__EKEventStore_isSourceManaged___block_invoke;
        v18 = &unk_1E77FED00;
        v19 = managedCopy;
        v20 = &v21;
        [cADOperationProxySync CADObjectIsManaged:cADObjectID reply:&v15];

        if (!isSourceManaged__kIsManagedCache)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
          v11 = isSourceManaged__kIsManagedCache;
          isSourceManaged__kIsManagedCache = v10;
        }

        v6 = [MEMORY[0x1E696AD98] numberWithBool:{*(v22 + 24), v15, v16, v17, v18}];
        [isSourceManaged__kIsManagedCache setObject:v6 forKey:externalID];
      }

      os_unfair_lock_unlock(&isSourceManaged__cacheLock);
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    _Block_object_dispose(&v21, 8);
  }

  else if (-[EKEventStore returnReminderResults](self, "returnReminderResults") && [managedCopy allowsTasks])
  {
    bOOLValue = [(EKReminderStore *)self->_reminderStore isSourceManaged:managedCopy];
  }

  else
  {
    v13 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKEventStore *)v13 isSourceManaged:managedCopy];
    }

    bOOLValue = 0;
  }

  return bOOLValue;
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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__EKEventStore_dbStatsBySource__block_invoke;
  v6[3] = &unk_1E7800918;
  v6[4] = &v7;
  [cADOperationProxySync CADDatabaseStatsBySource:v6];

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

- (id)personaIdentifierForDatabaseID:(int)d
{
  if (d)
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
    dCopy = d;
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
  _allCalendars = [(EKEventStore *)self _allCalendars];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = _allCalendars;
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
          source = [v9 source];
          allowsEvents = [source allowsEvents];

          if (allowsEvents)
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

- (BOOL)hideCalendarsFromNotificationCenter:(id)center error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  centerCopy = center;
  if ([centerCopy count])
  {
    if (error)
    {
      *error = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = centerCopy;
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

        eventStore = [*(*(&v33 + 1) + 8 * v9) eventStore];
        v12 = eventStore == 0;

        if (v12)
        {
          goto LABEL_22;
        }

        eventStore2 = [v10 eventStore];
        v14 = eventStore2 == self;

        if (!v14)
        {
          if (error)
          {
            [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
            *error = LOBYTE(v10) = 0;
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
        connection = [(EKEventStore *)self connection];
        cADOperationProxySync = [connection CADOperationProxySync];
        cADObjectID = [v10 CADObjectID];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __58__EKEventStore_hideCalendarsFromNotificationCenter_error___block_invoke;
        v22[3] = &unk_1E7800B00;
        v22[4] = v10;
        v22[5] = &v23;
        v22[6] = &v29;
        [cADOperationProxySync CADCalendarSetClearedFromNotificationCenter:cADObjectID error:v22];

        if (error)
        {
          *error = v24[5];
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

  _allCalendars = [(EKEventStore *)self _allCalendars];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = _allCalendars;
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
            source = [v12 source];
            allowsTasks = [source allowsTasks];

            if (allowsTasks)
            {
LABEL_15:
              [v6 addObject:{v12, v19}];
              continue;
            }
          }
        }

        else if (entityType == EKEntityTypeEvent && ([*(*(&v19 + 1) + 8 * i) allowedEntityTypes] & 1) != 0)
        {
          source2 = [v12 source];
          allowsEvents = [source2 allowsEvents];

          if (allowsEvents)
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

- (id)calendarsForEntityType:(unint64_t)type inSource:(id)source
{
  v29 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v7 = sourceCopy;
  if (type >= 2)
  {
    [EKEventStore calendarsForEntityType:inSource:];
  }

  else if (!type)
  {
    if ([sourceCopy allowsEvents])
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      if (![(EKEventStore *)self returnEventResults])
      {
        goto LABEL_21;
      }

      backingObject = [v7 backingObject];
      calendarSourcesAndDefaultsQueue = self->_calendarSourcesAndDefaultsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48__EKEventStore_calendarsForEntityType_inSource___block_invoke;
      block[3] = &unk_1E77FD7C8;
      block[4] = self;
      v26 = backingObject;
      v8 = v8;
      v27 = v8;
      calendars = backingObject;
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
  if (type == 1 && [(EKEventStore *)self returnReminderResults])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    calendars = [(EKReminderStore *)self->_reminderStore calendars];
    v10 = [calendars countByEnumeratingWithState:&v21 objects:v28 count:16];
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
            objc_enumerationMutation(calendars);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          source = [v14 source];
          v16 = [source isEqual:v7];

          if (v16)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [calendars countByEnumeratingWithState:&v21 objects:v28 count:16];
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

- (void)_cacheCalendarWithCADObjectID:(id)d withDefaultLoadedPropertyValues:(id)values forKeys:(id)keys
{
  dCopy = d;
  valuesCopy = values;
  keysCopy = keys;
  calendars = self->_calendars;
  if (calendars)
  {
    v12 = [(NSMutableDictionary *)calendars objectForKey:dCopy];
    v13 = v12;
    if (valuesCopy || !v12)
    {
      v14 = [EKObjectID objectIDWithCADObjectID:dCopy];
      v15 = [(EKEventStore *)self registerFetchedObjectWithID:v14 withDefaultLoadedPropertyKeys:keysCopy values:valuesCopy];

      v16 = [(EKObject *)[EKCalendar alloc] initWithPersistentObject:v15];
      v17 = v16;
      if (!v13 && ![(EKCalendar *)v16 isHidden])
      {
        [(NSMutableDictionary *)self->_calendars setObject:v15 forKey:dCopy];
        calendarIdentifier = [(EKCalendar *)v17 calendarIdentifier];
        if (calendarIdentifier)
        {
          [(NSMutableDictionary *)self->_calendarsByIdentifier setObject:v15 forKey:calendarIdentifier];
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

- (BOOL)_calendar:(id)_calendar supportsEntityType:(unint64_t)type
{
  _calendarCopy = _calendar;
  if (type >= 2)
  {
    [EKEventStore _calendar:supportsEntityType:];
  }

  if (([_calendarCopy allowedEntityTypes] & (1 << type)) != 0)
  {
    if (type == 1)
    {
      source = [_calendarCopy source];
      allowsTasks = [source allowsTasks];
      goto LABEL_9;
    }

    if (!type)
    {
      source = [_calendarCopy source];
      allowsTasks = [source allowsEvents];
LABEL_9:
      v8 = allowsTasks;

      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (int)readWriteCalendarCountForEntityType:(unint64_t)type
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _allCalendars = [(EKEventStore *)self _allCalendars];
  v6 = [_allCalendars countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(_allCalendars);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(EKEventStore *)self _calendar:v11 supportsEntityType:type])
        {
          v8 += [v11 allowsContentModifications];
        }
      }

      v7 = [_allCalendars countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)readWriteCalendarsForEntityType:(unint64_t)type
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _allCalendars = [(EKEventStore *)self _allCalendars];
  v6 = [_allCalendars countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    array = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(_allCalendars);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (-[EKEventStore _calendar:supportsEntityType:](self, "_calendar:supportsEntityType:", v11, type) && [v11 allowsContentModifications])
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          [array addObject:v11];
        }
      }

      v7 = [_allCalendars countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    array = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)calendarWithID:(id)d
{
  v3 = [(EKEventStore *)self objectWithObjectID:d];
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

- (id)calendarWithCADID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy && ([dCopy restoreGeneration] == -1 || (v6 = objc_msgSend(v5, "restoreGeneration"), -[EKEventStore database](self, "database"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "databaseRestoreGeneration"), v7, v6 == v8)))
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

- (void)_addRemovedObjectToPendingCommits:(id)commits
{
  commitsCopy = commits;
  persistentObject = [commitsCopy persistentObject];
  isNew = [persistentObject isNew];

  if ((isNew & 1) == 0)
  {
    [(EKEventStore *)self _addObjectToPendingCommits:commitsCopy];
  }
}

- (void)_addObjectToPendingCommits:(id)commits
{
  commitsCopy = commits;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__EKEventStore__addObjectToPendingCommits___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = commitsCopy;
  v6 = commitsCopy;
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

- (BOOL)_saveCalendar:(id)calendar commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  calendarCopy = calendar;
  if ([(EKEventStore *)self shouldSaveCalendarAsEventCalendar:calendarCopy]&& ![(EKEventStore *)self _saveCalendar:calendarCopy error:error])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    if ([(EKEventStore *)self shouldSaveCalendarAsReminderCalendar:calendarCopy])
    {
      v9 = [(EKReminderStore *)self->_reminderStore saveCalendar:calendarCopy error:error];
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      LOBYTE(v9) = 1;
    }

    if (commitCopy)
    {
      LOBYTE(v9) = [(EKEventStore *)self commitWithRollbackForNewClients:error];
    }
  }

LABEL_10:

  return v9;
}

- (BOOL)_saveCalendar:(id)calendar error:(id *)error
{
  calendarCopy = calendar;
  if (!error)
  {
    if (![(EKEventStore *)self canModifyCalendarDatabase])
    {
      goto LABEL_14;
    }

LABEL_5:
    if (-[EKEventStore eventAccessLevel](self, "eventAccessLevel") == 1 && [calendarCopy isNew])
    {
      if (error)
      {
        v7 = MEMORY[0x1E696ABC0];
        v8 = 17;
        goto LABEL_13;
      }

LABEL_14:
      LOBYTE(cADObjectID) = 0;
      goto LABEL_15;
    }

    if (!calendarCopy)
    {
      goto LABEL_14;
    }

    eventStore = [calendarCopy eventStore];

    if (eventStore != self)
    {
      if (error)
      {
        v7 = MEMORY[0x1E696ABC0];
        v8 = 11;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    source = [calendarCopy source];
    if ([calendarCopy allowEvents] && objc_msgSend(source, "isPrimaryLocalSource") && (objc_msgSend(source, "isEnabledForEvents") & 1) == 0 && -[EKEventStore clientCanModifySources](self, "clientCanModifySources"))
    {
      [source setAllowsEvents:1];
      v18 = 0;
      v13 = [(EKEventStore *)self saveSource:source commit:0 error:&v18];
      cADObjectID = v18;
      if (!v13)
      {
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          [EKEventStore _saveCalendar:error:];
          if (!error)
          {
            goto LABEL_29;
          }
        }

        else if (!error)
        {
          goto LABEL_29;
        }

        v17 = cADObjectID;
        *error = cADObjectID;
        goto LABEL_29;
      }

      constraints = [calendarCopy constraints];
      [constraints setAllowsEvents:1];

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    if ([calendarCopy validate:error] && objc_msgSend(calendarCopy, "save:", error))
    {
      [(EKEventStore *)self _addObjectToPendingCommits:calendarCopy];
      LODWORD(cADObjectID) = [(EKEventStore *)self save:error];
    }

    else
    {
      LODWORD(cADObjectID) = 0;
    }

    if ((v15 | cADObjectID))
    {
      goto LABEL_30;
    }

    v16 = [MEMORY[0x1E695DFD8] setWithObject:source];
    [(EKEventStore *)self rollbackObjectsWithIdentifiers:v16];

    cADObjectID = [source CADObjectID];
    [(EKEventStore *)self _clearCachedConstraintsForObjectWithCADObjectID:cADObjectID];
LABEL_29:

    LOBYTE(cADObjectID) = 0;
LABEL_30:

    goto LABEL_15;
  }

  *error = 0;
  if ([(EKEventStore *)self canModifyCalendarDatabase])
  {
    goto LABEL_5;
  }

  v7 = MEMORY[0x1E696ABC0];
  v8 = 30;
LABEL_13:
  [v7 errorWithEKErrorCode:v8];
  *error = LOBYTE(cADObjectID) = 0;
LABEL_15:

  return cADObjectID;
}

- (BOOL)_removeCalendar:(id)calendar commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  calendarCopy = calendar;
  if (![(EKEventStore *)self shouldSaveCalendarAsEventCalendar:calendarCopy]|| (LOBYTE(v9) = 0, [(EKEventStore *)self _removeEventCalendar:calendarCopy commit:0 error:error]))
  {
    if ([(EKEventStore *)self shouldSaveCalendarAsReminderCalendar:calendarCopy])
    {
      v9 = [(EKReminderStore *)self->_reminderStore removeCalendar:calendarCopy error:error];
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      LOBYTE(v9) = 1;
    }

    if (commitCopy)
    {
      LOBYTE(v9) = [(EKEventStore *)self commitWithRollbackForNewClients:error];
    }
  }

LABEL_9:

  return v9;
}

- (BOOL)_removeEventCalendar:(id)calendar commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  calendarCopy = calendar;
  if (error)
  {
    *error = 0;
    if (![(EKEventStore *)self canModifyCalendarDatabase])
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = 30;
LABEL_11:
      [v12 errorWithEKErrorCode:v13];
      *error = v10 = 0;
      goto LABEL_17;
    }

    if (!calendarCopy)
    {
      goto LABEL_16;
    }
  }

  else
  {
    canModifyCalendarDatabase = [(EKEventStore *)self canModifyCalendarDatabase];
    v10 = 0;
    if (!calendarCopy || !canModifyCalendarDatabase)
    {
      goto LABEL_17;
    }
  }

  eventStore = [calendarCopy eventStore];

  if (eventStore != self)
  {
    if (!error)
    {
LABEL_16:
      v10 = 0;
      goto LABEL_17;
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = 11;
    goto LABEL_11;
  }

  if (![calendarCopy remove:error])
  {
    goto LABEL_16;
  }

  [(EKEventStore *)self _addRemovedObjectToPendingCommits:calendarCopy];
  if (![(EKEventStore *)self save:error])
  {
    goto LABEL_16;
  }

  [calendarCopy markAsDeleted];
  v10 = !commitCopy || [(EKEventStore *)self commitWithRollbackForNewClients:error];
LABEL_17:

  return v10;
}

- (BOOL)deleteCalendar:(id)calendar forEntityType:(unint64_t)type error:(id *)error
{
  calendarCopy = calendar;
  if (error)
  {
    *error = 0;
    if (![(EKEventStore *)self canModifyCalendarDatabase])
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = 30;
LABEL_11:
      [v12 errorWithEKErrorCode:v13];
      *error = v10 = 0;
      goto LABEL_17;
    }

    if (!calendarCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    canModifyCalendarDatabase = [(EKEventStore *)self canModifyCalendarDatabase];
    v10 = 0;
    if (!calendarCopy || !canModifyCalendarDatabase)
    {
      goto LABEL_17;
    }
  }

  eventStore = [calendarCopy eventStore];

  if (eventStore != self)
  {
    if (!error)
    {
LABEL_12:
      v10 = 0;
      goto LABEL_17;
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = 11;
    goto LABEL_11;
  }

  v14 = [calendarCopy allowedEntityTypes] & ~type;
  if (v14)
  {
    [calendarCopy setAllowedEntityTypes:v14];
    v15 = [(EKEventStore *)self saveCalendar:calendarCopy commit:1 error:error];
  }

  else
  {
    v15 = [(EKEventStore *)self removeCalendar:calendarCopy commit:1 error:error];
  }

  v10 = v15;
LABEL_17:

  return v10;
}

- (BOOL)eventsExistOnCalendar:(id)calendar
{
  v4 = [(EKEventStore *)self predicateForCalendarItemsOfType:1 inCalendar:calendar];
  v5 = [(EKEventStore *)self eventsMatchingPredicate:v4];
  v6 = [v5 count] != 0;

  return v6;
}

- (BOOL)futureScheduledEventsExistOnCalendar:(id)calendar
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [(EKEventStore *)self predicateForEventsWithAttendeesInCalendar:calendar];
  selfCopy = self;
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
      endDateUnadjustedForLegacyClients = [v11 endDateUnadjustedForLegacyClients];
      if ([v6 compare:endDateUnadjustedForLegacyClients] == -1)
      {
      }

      else
      {
        v13 = [MEMORY[0x1E695DEC8] arrayWithObject:v11];
        v14 = [(EKEventStore *)selfCopy doEvents:v13 haveOccurrencesAfterDate:v6];
        firstObject = [v14 firstObject];
        integerValue = [firstObject integerValue];

        if (integerValue != 1)
        {
          continue;
        }
      }

      selfAttendee = [v11 selfAttendee];
      if (selfAttendee)
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

- (BOOL)eventsMarkedScheduleAgentClientExistOnCalendar:(id)calendar
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [(EKEventStore *)self predicateForScheduleAgentClientEventsInCalendar:calendar];
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
          firstObject = [v14 firstObject];
          integerValue = [firstObject integerValue];

          if (integerValue == 1)
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

- (id)eventsWithIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = identifiersCopy;
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

- (id)eventWithAppEntityIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [EKRecurrenceIdentifier recurrenceIdentifierWithString:identifierCopy];
  v6 = [(EKEventStore *)self eventWithRecurrenceIdentifier:v5 isAppEntityID:1];
  v7 = v6;
  if (v6)
  {
    appEntityIdentifier = [v6 appEntityIdentifier];
    if (([appEntityIdentifier isEqualToString:identifierCopy] & 1) == 0)
    {
      v9 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543618;
        v13 = appEntityIdentifier;
        v14 = 2114;
        v15 = identifierCopy;
        _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_DEFAULT, "Found event that should have had the identifier %{public}@ using the identifier %{public}@ instead. Pretending that these are the same thing.", &v12, 0x16u);
      }

      [v7 setAppEntityIdentifierOverride:identifierCopy];
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)eventWithRecurrenceIdentifier:(id)identifier isAppEntityID:(BOOL)d
{
  dCopy = d;
  v72 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  localUID = [identifierCopy localUID];
  v8 = [(EKEventStore *)self calendarItemWithIdentifier:localUID];
  if (!v8)
  {
    v12 = 0;
    goto LABEL_27;
  }

  recurrenceDate = [identifierCopy recurrenceDate];
  if (!recurrenceDate)
  {
    goto LABEL_22;
  }

  startTimeZone = [v8 startTimeZone];
  v11 = +[EKEvent uniqueIDForDetachedOccurrenceOfEvent:withOriginalStartDate:timeZone:allDay:](EKEvent, "uniqueIDForDetachedOccurrenceOfEvent:withOriginalStartDate:timeZone:allDay:", v8, recurrenceDate, startTimeZone, [v8 isAllDay]);

  v12 = [(EKEventStore *)self eventWithUniqueId:v11];

  if (!v12)
  {
    if ([v8 hasRecurrenceRules])
    {
      exceptionDates = [v8 exceptionDates];
      v14 = [exceptionDates containsObject:recurrenceDate];

      if (v14)
      {
        v12 = 0;
        goto LABEL_26;
      }

      timeZone = [v8 timeZone];
      v16 = timeZone;
      if (timeZone)
      {
        v17 = timeZone;
      }

      else
      {
        v17 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
      }

      v18 = v17;

      v56 = v18;
      v58 = [MEMORY[0x1E69930C8] calendarDateWithDate:recurrenceDate timeZone:v18];
      v57 = objc_alloc_init(EKRecurrenceGenerator);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      recurrenceRules = [v8 recurrenceRules];
      v20 = [recurrenceRules countByEnumeratingWithState:&v65 objects:v71 count:16];
      if (v20)
      {
        v21 = v20;
        v59 = recurrenceDate;
        v22 = identifierCopy;
        v23 = *v66;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v66 != v23)
            {
              objc_enumerationMutation(recurrenceRules);
            }

            v25 = [(EKRecurrenceGenerator *)v57 occurrenceDate:v58 matchesRecurrenceRule:*(*(&v65 + 1) + 8 * i) forEvent:v8 includeDetachedEventsInSeries:0];
            if (v25)
            {

              identifierCopy = v22;
              recurrenceDate = v59;
              goto LABEL_22;
            }
          }

          v26 = v25;
          v21 = [recurrenceRules countByEnumeratingWithState:&v65 objects:v71 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }

        identifierCopy = v22;
        recurrenceDate = v59;
        if (v26 || !dCopy)
        {
          goto LABEL_43;
        }
      }

      else
      {

        if (!dCopy)
        {
          goto LABEL_43;
        }
      }

      if ([v8 isFloating])
      {
        v55 = identifierCopy;
        v34 = [recurrenceDate dateByAddingTimeInterval:-100800.0];
        v60 = recurrenceDate;
        v35 = [recurrenceDate dateByAddingTimeInterval:100800.0];
        calendar = [v8 calendar];
        v70 = calendar;
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
              localUID2 = [v45 localUID];
              v47 = [localUID2 isEqualToString:localUID];

              if (v47)
              {
                startDate = [v45 startDate];
                [startDate timeIntervalSinceDate:v60];
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

        identifierCopy = v55;
        persistentObject = v56;
        recurrenceDate = v60;
        goto LABEL_25;
      }

LABEL_43:

      v12 = 0;
      persistentObject = v56;
LABEL_25:

      goto LABEL_26;
    }

LABEL_22:
    timeZone2 = [v8 timeZone];

    if (!timeZone2)
    {
      timeZone3 = [(EKEventStore *)self timeZone];
      v29 = [recurrenceDate dateInTimeZone:timeZone3 fromTimeZone:0];

      recurrenceDate = v29;
    }

    v30 = [EKEvent alloc];
    persistentObject = [v8 persistentObject];
    v12 = [(EKEvent *)v30 initWithPersistentObject:persistentObject occurrenceDate:recurrenceDate];
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

- (id)validatedNonDeletedPersistentObjectWithObjectID:(id)d
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    goto LABEL_17;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  objectsPendingCommit = [(EKEventStore *)self objectsPendingCommit];
  v6 = [objectsPendingCommit countByEnumeratingWithState:&v27 objects:v31 count:16];
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
        objc_enumerationMutation(objectsPendingCommit);
      }

      v10 = *(*(&v27 + 1) + 8 * v9);
      objectID = [v10 objectID];
      v12 = [objectID isEqual:dCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [objectsPendingCommit countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v7)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    persistentObject = [v10 persistentObject];

    if (persistentObject)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_10:
  }

  v14 = [(EKEventStore *)self registerFetchedObjectWithID:dCopy];
  if (v14)
  {
    persistentObject = v14;
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
    v16 = persistentObject;
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

- (id)validatedNonDeletedPublicObjectWithObjectID:(id)d
{
  if (d)
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

- (id)_eventWithEventIdentifier:(id)identifier
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
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
              eventIdentifier = [v9 eventIdentifier];
              v11 = [identifierCopy isEqual:eventIdentifier];

              if (v11)
              {
                objectID = [v9 objectID];
                v14 = v31[5];
                v31[5] = objectID;

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
      connection = [(EKEventStore *)self connection];
      cADOperationProxySync = [connection CADOperationProxySync];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __42__EKEventStore__eventWithEventIdentifier___block_invoke;
      v23 = &unk_1E7800B28;
      v24 = identifierCopy;
      v25 = &v30;
      [cADOperationProxySync CADDatabaseGetEventWithEventIdentifier:v24 reply:&v20];

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

- (BOOL)_parseURI:(id)i expectedScheme:(id)scheme identifier:(id *)identifier options:(id *)options
{
  iCopy = i;
  schemeCopy = scheme;
  scheme = [iCopy scheme];
  if ([scheme isEqualToString:schemeCopy])
  {
    absoluteString = [iCopy absoluteString];
    v13 = [absoluteString substringFromIndex:{objc_msgSend(scheme, "length") + 3}];

    v14 = [v13 componentsSeparatedByString:@"?"];
    if (![v14 count])
    {
      v39 = 0;
LABEL_30:

      goto LABEL_31;
    }

    optionsCopy = options;
    v15 = [v14 objectAtIndex:0];

    pathComponents = [v15 pathComponents];
    if ([scheme isEqualToString:@"x-apple-calevent"])
    {
      if ([pathComponents count] == 2)
      {
        v17 = MEMORY[0x1E696AEC0];
        v18 = [pathComponents objectAtIndex:0];
        [v18 stringByRemovingPercentEncoding];
        v47 = v15;
        v19 = v49 = pathComponents;
        v20 = [pathComponents objectAtIndex:1];
        stringByRemovingPercentEncoding = [v20 stringByRemovingPercentEncoding];
        v22 = [v17 stringWithFormat:@"%@:%@", v19, stringByRemovingPercentEncoding];

        v15 = v47;
        v23 = v22;
        if (v22)
        {
LABEL_6:
          if (identifier)
          {
            v23 = v23;
            *identifier = v23;
          }

          pathComponents = v49;
          if (optionsCopy)
          {
            v46 = v23;
            *optionsCopy = 0;
            query = [iCopy query];
            v25 = query;
            if (query)
            {
              v48 = v15;
              v45 = v14;
              v26 = [query componentsSeparatedByString:@"&"];
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
                    v31 = scheme;
                    v32 = iCopy;
                    v33 = schemeCopy;
                    v34 = v26;
                    v36 = v35 = v28;
                    stringByRemovingPercentEncoding2 = [v36 stringByRemovingPercentEncoding];

                    v28 = v35;
                    v26 = v34;
                    schemeCopy = v33;
                    iCopy = v32;
                    scheme = v31;
                    [v51 setObject:stringByRemovingPercentEncoding2 forKey:v30];

                    v25 = v50;
                  }

                  ++v27;
                }

                while (v27 < [v26 count]);
              }

              v38 = v51;
              *optionsCopy = v38;

              v14 = v45;
              v15 = v48;
              pathComponents = v49;
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

    if ([scheme isEqualToString:@"x-apple-calendar"])
    {
      if ([pathComponents count] != 1)
      {
        goto LABEL_28;
      }

      v49 = pathComponents;
      v40 = pathComponents;
      v41 = 0;
    }

    else
    {
      if (![scheme isEqualToString:@"x-apple-reminderkit"])
      {
        goto LABEL_28;
      }

      if ([pathComponents count] != 2)
      {
        goto LABEL_28;
      }

      firstObject = [pathComponents firstObject];
      v43 = [firstObject isEqualToString:@"REMCDReminder"];

      if (!v43)
      {
        goto LABEL_28;
      }

      v49 = pathComponents;
      v40 = pathComponents;
      v41 = 1;
    }

    v23 = [v40 objectAtIndex:v41];
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_23:
    v39 = 0;
    pathComponents = v49;
LABEL_29:

    v13 = v15;
    goto LABEL_30;
  }

  v39 = 0;
LABEL_31:

  return v39;
}

- (id)_eventWithURI:(id)i checkValid:(BOOL)valid
{
  iCopy = i;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__24;
  v34 = __Block_byref_object_dispose__24;
  v35 = 0;
  if (!iCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EKEventStore.m" lineNumber:3500 description:@"Nil URI passed"];
  }

  v28 = 0;
  v29 = 0;
  v7 = [(EKEventStore *)self _parseURI:iCopy expectedScheme:@"x-apple-calevent" identifier:&v29 options:&v28];
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

    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __41__EKEventStore__eventWithURI_checkValid___block_invoke;
    v25 = &unk_1E7800B28;
    v26 = iCopy;
    v27 = &v30;
    [cADOperationProxySync CADDatabaseGetEventWithEventIdentifier:v8 reply:&v22];

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

- (id)_eventOccurrenceWithURI:(id)i
{
  iCopy = i;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__24;
  v32 = __Block_byref_object_dispose__24;
  v33 = 0;
  v26 = 0;
  v27 = 0;
  v5 = [(EKEventStore *)self _parseURI:iCopy expectedScheme:@"x-apple-calevent" identifier:&v27 options:&v26];
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
      connection = [(EKEventStore *)self connection];
      cADOperationProxySync = [connection CADOperationProxySync];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __40__EKEventStore__eventOccurrenceWithURI___block_invoke;
      v23 = &unk_1E7800B28;
      v24 = iCopy;
      v25 = &v28;
      [cADOperationProxySync CADDatabaseGetEventWithEventIdentifier:v6 reply:&v20];

      if (v29[5])
      {
        [v12 timeIntervalSinceReferenceDate];
        v15 = [(EKEventStore *)self closestCachedOccurrenceToDate:v29[5] forEventObjectID:?];
        startDate = [v15 startDate];
        v17 = [startDate isEqualToDate:v12];

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
      v18 = [(EKEventStore *)self _eventWithURI:iCopy checkValid:1];
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

- (id)eventForUID:(id)d occurrenceDate:(id)date checkValid:(BOOL)valid
{
  validCopy = valid;
  dCopy = d;
  dateCopy = date;
  if (!dCopy)
  {
    v15 = 0;
    goto LABEL_12;
  }

  if (validCopy)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v10 = [objc_alloc(MEMORY[0x1E6992DE0]) initWithEntityType:2 entityID:{objc_msgSend(dCopy, "intValue")}];
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __54__EKEventStore_eventForUID_occurrenceDate_checkValid___block_invoke;
    v20[3] = &unk_1E77FFEA0;
    v20[4] = &v21;
    [cADOperationProxySync CADObjectExists:v10 reply:v20];

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
    intValue = [dCopy intValue];
    v17 = [EKObjectID objectIDWithEntityType:2 rowID:intValue databaseID:*MEMORY[0x1E6992E18]];
    v14 = [(EKEventStore *)self registerFetchedObjectWithID:v17];

    if (!v14)
    {
LABEL_10:
      v18 = 0;
      goto LABEL_11;
    }
  }

  v18 = [[EKEvent alloc] initWithPersistentObject:v14 occurrenceDate:dateCopy];
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

- (id)eventForObjectID:(id)d occurrenceDate:(id)date checkValid:(BOOL)valid
{
  validCopy = valid;
  dCopy = d;
  dateCopy = date;
  if (dCopy && [dCopy entityType] == 2)
  {
    if (validCopy)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      database = [(EKEventStore *)self database];
      v11 = [dCopy CADObjectIDWithGeneration:{objc_msgSend(database, "databaseRestoreGeneration")}];

      connection = [(EKEventStore *)self connection];
      cADOperationProxySync = [connection CADOperationProxySync];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __59__EKEventStore_eventForObjectID_occurrenceDate_checkValid___block_invoke;
      v18[3] = &unk_1E77FFEA0;
      v18[4] = &v19;
      [cADOperationProxySync CADObjectExists:v11 reply:v18];

      if (*(v20 + 24) == 1)
      {
        v14 = [(EKEventStore *)self registerFetchedObjectWithID:dCopy];
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
      v14 = [(EKEventStore *)self registerFetchedObjectWithID:dCopy];
      if (!v14)
      {
LABEL_13:
        v16 = 0;
        goto LABEL_14;
      }
    }

    v16 = [[EKEvent alloc] initWithPersistentObject:v14 occurrenceDate:dateCopy];
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

- (id)eventWithUniqueId:(id)id occurrenceDate:(id)date
{
  v38 = *MEMORY[0x1E69E9840];
  idCopy = id;
  dateCopy = date;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__24;
  v35 = __Block_byref_object_dispose__24;
  v36 = 0;
  if (idCopy)
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
            uniqueIdentifier = [v11 uniqueIdentifier];
            v13 = [idCopy isEqual:uniqueIdentifier];

            if (v13)
            {
              objectID = [v11 objectID];
              v16 = v32[5];
              v32[5] = objectID;

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
      connection = [(EKEventStore *)self connection];
      cADOperationProxySync = [connection CADOperationProxySync];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __49__EKEventStore_eventWithUniqueId_occurrenceDate___block_invoke;
      v24[3] = &unk_1E7800B28;
      v25 = idCopy;
      v26 = &v31;
      [cADOperationProxySync CADDatabaseGetEventWithUniqueID:v25 reply:v24];

      v17 = v32[5];
    }

    v20 = [(EKEventStore *)self validatedNonDeletedPersistentObjectWithObjectID:v17];
    if (v20)
    {
      v14 = [[EKEvent alloc] initWithPersistentObject:v20 occurrenceDate:dateCopy];
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

- (id)eventWithUUID:(id)d occurrenceDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  if (dCopy)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__24;
    v25 = __Block_byref_object_dispose__24;
    v26 = 0;
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __45__EKEventStore_eventWithUUID_occurrenceDate___block_invoke;
    v18 = &unk_1E7800B28;
    v19 = dCopy;
    v20 = &v21;
    [cADOperationProxySync CADDatabaseGetCalendarItemWithUUID:v19 reply:&v15];

    if (v22[5])
    {
      v10 = [EKObjectID objectIDWithCADObjectID:v15, v16, v17, v18];
      v11 = [(EKEventStore *)self registerFetchedObjectWithID:v10];

      if (v11)
      {
        v12 = [[EKEvent alloc] initWithPersistentObject:v11 occurrenceDate:dateCopy];
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

- (id)_entityWrappersForEventUUIDs:(id)ds inCalendars:(id)calendars propertiesToLoad:(id)load
{
  dsCopy = ds;
  calendarsCopy = calendars;
  loadCopy = load;
  v11 = [calendarsCopy valueForKey:@"CADObjectID"];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__24;
  v24 = __Block_byref_object_dispose__24;
  v25 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__EKEventStore__entityWrappersForEventUUIDs_inCalendars_propertiesToLoad___block_invoke;
  v17[3] = &unk_1E77FED28;
  v14 = dsCopy;
  v18 = v14;
  v19 = &v20;
  [cADOperationProxySync CADDatabaseGetCalendarItemsWithUUIDs:v14 inCalendars:v11 propertiesToLoad:loadCopy reply:v17];

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

- (BOOL)eventWithUUID:(id)d isInCalendars:(id)calendars
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = MEMORY[0x1E695DEC8];
  calendarsCopy = calendars;
  dCopy2 = d;
  v9 = [v6 arrayWithObjects:&dCopy count:1];

  v10 = [(EKEventStore *)self _entityWrappersForEventUUIDs:v9 inCalendars:calendarsCopy propertiesToLoad:MEMORY[0x1E695E0F0], dCopy, v14];

  LOBYTE(dCopy2) = [v10 count] != 0;
  v11 = *MEMORY[0x1E69E9840];
  return dCopy2;
}

- (id)eventsWithUUIDToOccurrenceDateMap:(id)map inCalendars:(id)calendars
{
  v48[5] = *MEMORY[0x1E69E9840];
  mapCopy = map;
  calendarsCopy = calendars;
  if (mapCopy)
  {
    v8 = *MEMORY[0x1E6992600];
    v48[0] = *MEMORY[0x1E6992B08];
    v48[1] = v8;
    v9 = *MEMORY[0x1E6992968];
    v48[2] = *MEMORY[0x1E69926C8];
    v48[3] = v9;
    v48[4] = *MEMORY[0x1E6992658];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:5];
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(mapCopy, "count")}];
    allKeys = [mapCopy allKeys];
    v36 = v10;
    v13 = [(EKEventStore *)self _entityWrappersForEventUUIDs:allKeys inCalendars:calendarsCopy propertiesToLoad:v10];

    if (v13)
    {
      v30 = v13;
      v31 = calendarsCopy;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = v13;
      v37 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v37)
      {
        v34 = mapCopy;
        v35 = *v43;
        selfCopy = self;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v43 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v42 + 1) + 8 * i);
            loadedValues = [v15 loadedValues];
            firstObject = [loadedValues firstObject];

            objectID = [v15 objectID];
            v19 = [EKObjectID objectIDWithCADObjectID:objectID];
            loadedValues2 = [v15 loadedValues];
            v21 = [(EKEventStore *)self registerFetchedObjectWithID:v19 withDefaultLoadedPropertyKeys:v36 values:loadedValues2];

            if (v21)
            {
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v22 = [mapCopy objectForKeyedSubscript:firstObject];
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

              self = selfCopy;
              mapCopy = v34;
            }
          }

          v37 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v37);
      }

      v13 = v30;
      calendarsCopy = v31;
    }
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v28 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)allEventsWithUniqueId:(id)id occurrenceDate:(id)date
{
  v34 = *MEMORY[0x1E69E9840];
  idCopy = id;
  dateCopy = date;
  v19 = objc_opt_new();
  if (idCopy)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__24;
    v31 = __Block_byref_object_dispose__24;
    v32 = 0;
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __53__EKEventStore_allEventsWithUniqueId_occurrenceDate___block_invoke;
    v24[3] = &unk_1E77FED28;
    v25 = idCopy;
    v26 = &v27;
    [cADOperationProxySync CADDatabaseGetAllEventsWithUniqueID:v25 reply:v24];

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
              v16 = [[EKEvent alloc] initWithPersistentObject:v15 occurrenceDate:dateCopy];
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

- (BOOL)_saveEvent:(id)event span:(int64_t)span commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  eventCopy = event;
  if (error)
  {
    *error = 0;
    if (![(EKEventStore *)self canModifyCalendarDatabase])
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = 30;
      goto LABEL_11;
    }

    if (!eventCopy)
    {
      goto LABEL_29;
    }

LABEL_7:
    eventStore = [eventCopy eventStore];

    if (eventStore != self)
    {
      if (error)
      {
        v14 = MEMORY[0x1E696ABC0];
        v15 = 11;
LABEL_11:
        v16 = [v14 errorWithEKErrorCode:v15];
LABEL_12:
        v12 = 0;
        *error = v16;
        goto LABEL_30;
      }

LABEL_29:
      v12 = 0;
      goto LABEL_30;
    }

    if (([eventCopy isNew] & 1) == 0)
    {
      persistentObject = [eventCopy persistentObject];
      if ([persistentObject _isPendingInsert])
      {
      }

      else
      {
        persistentObject2 = [eventCopy persistentObject];
        v19 = [(EKEventStore *)self _isRegisteredObject:persistentObject2];

        if (!v19)
        {
          if (error)
          {
            v16 = [MEMORY[0x1E696ABC0] errorWithCADResult:1010];
            goto LABEL_12;
          }

          goto LABEL_29;
        }
      }
    }

    if (![eventCopy validateWithSpan:span error:error])
    {
      goto LABEL_29;
    }

    hasChanges = [eventCopy hasChanges];
    if ([eventCopy saveWithSpan:span error:error])
    {
      if ((hasChanges & 1) != 0 || ([eventCopy persistentObject], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "_isPendingInsert"), v21, v22))
      {
        [(EKEventStore *)self _addObjectToPendingCommits:eventCopy];
      }

      v23 = [(EKEventStore *)self save:error];
      if (v23 && commitCopy)
      {
        if (![(EKEventStore *)self commitWithRollbackForNewClients:error])
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
    persistentObject3 = [eventCopy persistentObject];
    _isPendingInsert = [persistentObject3 _isPendingInsert];

    if (_isPendingInsert)
    {
      persistentObject4 = [eventCopy persistentObject];
      [(EKEventStore *)self _deleteObject:persistentObject4];
    }

    goto LABEL_29;
  }

  canModifyCalendarDatabase = [(EKEventStore *)self canModifyCalendarDatabase];
  v12 = 0;
  if (eventCopy && canModifyCalendarDatabase)
  {
    goto LABEL_7;
  }

LABEL_30:

  return v12;
}

- (BOOL)_removeEvent:(id)event span:(int64_t)span commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  v51 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (error)
  {
    *error = 0;
    if (![(EKEventStore *)self canModifyCalendarDatabase])
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = 30;
      goto LABEL_13;
    }

    if (!eventCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    canModifyCalendarDatabase = [(EKEventStore *)self canModifyCalendarDatabase];
    LOBYTE(v12) = 0;
    if (!eventCopy || !canModifyCalendarDatabase)
    {
      goto LABEL_14;
    }
  }

  eventStore = [eventCopy eventStore];

  if (!eventStore)
  {
    goto LABEL_11;
  }

  eventStore2 = [eventCopy eventStore];

  if (eventStore2 != self)
  {
    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = 11;
LABEL_13:
      [v15 errorWithEKErrorCode:v16];
      *error = LOBYTE(v12) = 0;
      goto LABEL_14;
    }

LABEL_11:
    LOBYTE(v12) = 0;
    goto LABEL_14;
  }

  v19 = objc_alloc(objc_opt_class());
  persistentObject = [eventCopy persistentObject];
  v21 = [v19 initWithPersistentObject:persistentObject objectForCopy:eventCopy];

  if ([eventCopy _hasChangesForKey:*MEMORY[0x1E6992620]] && (objc_msgSend(eventCopy, "virtualConference"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "virtualConference"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqual:", v23), v23, v22, (v24 & 1) == 0))
  {
    virtualConference = [eventCopy virtualConference];
  }

  else
  {
    virtualConference = 0;
  }

  v40 = v21;
  [v21 virtualConference];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v38 = v48 = 0u;
  joinMethods = [v38 joinMethods];
  v26 = [joinMethods countByEnumeratingWithState:&v45 objects:v50 count:16];
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
          objc_enumerationMutation(joinMethods);
        }

        v30 = [*(*(&v45 + 1) + 8 * i) URL];
        [eventCopy invalidateVirtualConferenceURLIfNeededOnCommit:v30];
      }

      v27 = [joinMethods countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v27);
  }

  if ([v40 removeWithSpan:span error:error])
  {
    [(EKEventStore *)self _addRemovedObjectToPendingCommits:eventCopy];
    v31 = virtualConference;
    if ([(EKEventStore *)self save:error])
    {
      [eventCopy markAsDeleted];
      v12 = !commitCopy || [(EKEventStore *)self commitWithRollbackForNewClients:error];
      if (v12 && virtualConference)
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        joinMethods2 = [virtualConference joinMethods];
        v33 = [joinMethods2 countByEnumeratingWithState:&v41 objects:v49 count:16];
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
                objc_enumerationMutation(joinMethods2);
              }

              v37 = [*(*(&v41 + 1) + 8 * j) URL];
              [EKConferenceUtils invalidateConferenceURL:v37];
            }

            v34 = [joinMethods2 countByEnumeratingWithState:&v41 objects:v49 count:16];
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
    v31 = virtualConference;
  }

LABEL_14:
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)setInvitationStatus:(unint64_t)status forEvent:(id)event error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v9 = eventCopy;
  if (error)
  {
    *error = 0;
  }

  if (eventCopy)
  {
    v14[0] = eventCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v11 = [(EKEventStore *)self setInvitationStatus:status forEvents:v10 error:error];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)setInvitationStatus:(unint64_t)status forEvents:(id)events error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  if (error)
  {
    *error = 0;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__24;
  v46 = __Block_byref_object_dispose__24;
  v47 = 0;
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = eventsCopy;
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
        eventStore = [v14 eventStore];
        v16 = eventStore == 0;

        if (v16)
        {
          goto LABEL_26;
        }

        eventStore2 = [v14 eventStore];
        v18 = eventStore2 == self;

        if (!v18)
        {
          if (error)
          {
            *error = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
          }

LABEL_26:

          v26 = 0;
          goto LABEL_27;
        }

        cADObjectID = [v14 CADObjectID];
        [v9 addObject:cADObjectID];
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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __52__EKEventStore_setInvitationStatus_forEvents_error___block_invoke;
  v33[3] = &unk_1E7800B50;
  v33[4] = &v42;
  v33[5] = &v34;
  [cADOperationProxySync CADEventSetInvitationStatus:status forEvents:v9 error:v33];

  if (error)
  {
    *error = v43[5];
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

- (id)creatorTeamIdentifierForEvent:(id)event
{
  eventCopy = event;
  cADObjectID = [eventCopy CADObjectID];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__24;
  v15 = __Block_byref_object_dispose__24;
  v16 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__EKEventStore_creatorTeamIdentifierForEvent___block_invoke;
  v10[3] = &unk_1E7800858;
  v10[4] = &v11;
  [cADOperationProxySync CADDatabaseGetCreatorTeamIdentifierForEventWithObjectID:cADObjectID reply:v10];

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

- (BOOL)isCurrentProcessCreatorOfEvent:(id)event
{
  eventCopy = event;
  cADObjectID = [eventCopy CADObjectID];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__EKEventStore_isCurrentProcessCreatorOfEvent___block_invoke;
  v9[3] = &unk_1E7800B78;
  v9[4] = &v10;
  [cADOperationProxySync CADDatabaseIsCurrentProcessCreatorOfEventWithObjectID:cADObjectID reply:v9];

  LOBYTE(connection) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return connection;
}

- (id)importICS:(id)s intoCalendar:(id)calendar options:(unint64_t)options
{
  sCopy = s;
  calendarCopy = calendar;
  if (!sCopy || ![sCopy length])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = _NSMethodExceptionProem();
    [v10 raise:v11 format:{@"%@: path is empty or nil", v12}];
  }

  v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:sCopy];
  if (v13)
  {
    v14 = [(EKEventStore *)self importICSData:v13 intoCalendar:calendarCopy options:options];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)importICSData:(id)data intoCalendars:(id)calendars options:(unint64_t)options
{
  dataCopy = data;
  v9 = [calendars valueForKey:@"CADObjectID"];
  v10 = [(EKEventStore *)self _importEventsWithExternalIDs:0 fromICSData:dataCopy intoCalendarsWithIDs:v9 options:options batchSize:0];

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

- (id)importICSData:(id)data intoCalendar:(id)calendar options:(unint64_t)options
{
  v19[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  calendarCopy = calendar;
  v10 = calendarCopy;
  if (dataCopy)
  {
    if (calendarCopy)
    {
      [calendarCopy CADObjectID];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v12 = ;
    v19[0] = dataCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v18 = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v15 = [(EKEventStore *)self _importEventsWithExternalIDs:0 fromICSData:v13 intoCalendarsWithIDs:v14 options:options batchSize:0];
    firstObject = [v15 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)ICSDataForCalendarItems:(id)items options:(unint64_t)options
{
  v30 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
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
  v8 = itemsCopy;
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

        cADObjectID = [*(*(&v19 + 1) + 8 * i) CADObjectID];
        [v7 addObject:cADObjectID];
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v9);
  }

  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__EKEventStore_ICSDataForCalendarItems_options___block_invoke;
  v18[3] = &unk_1E77FDD00;
  v18[4] = &v23;
  [cADOperationProxySync CADDatabaseExportICSDataForCalendarItems:v7 options:options reply:v18];

  v15 = v24[5];
  _Block_object_dispose(&v23, 8);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)ICSDataForCalendarItems:(id)items preventLineFolding:(BOOL)folding
{
  if (folding)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return [(EKEventStore *)self ICSDataForCalendarItems:items options:v4];
}

- (id)importVCSData:(id)data intoCalendars:(id)calendars error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  calendarsCopy = calendars;
  v10 = 0x1E695D000uLL;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dataCopy, "count")}];
  if (calendarsCopy && (v12 = [calendarsCopy count], v12 == objc_msgSend(dataCopy, "count")))
  {
    v36 = v11;
    if ([dataCopy count])
    {
      v13 = 0;
      errorCopy = error;
      v34 = calendarsCopy;
      v35 = dataCopy;
      while (1)
      {
        v14 = [dataCopy objectAtIndexedSubscript:v13];
        v15 = [calendarsCopy objectAtIndexedSubscript:v13];
        [*(v10 + 3952) array];
        v17 = v16 = dataCopy;
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
                children = [v22 children];
                v24 = [children countByEnumeratingWithState:&v45 objects:v53 count:16];
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
                        objc_enumerationMutation(children);
                      }

                      v28 = *(*(&v45 + 1) + 8 * i);
                      if ([v28 entityType] == 2)
                      {
                        v29 = [EKEvent eventWithEventStore:self];
                        [v29 updateWithVCSEntity:v28 inCalendar:v15];
                        [v17 addObject:v29];
                      }
                    }

                    v25 = [children countByEnumeratingWithState:&v45 objects:v53 count:16];
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
          calendarsCopy = v34;
          dataCopy = v35;
          error = errorCopy;
          v10 = 0x1E695D000;
          v20 = v37;
          v13 = v38;
        }

        else
        {
          dataCopy = v16;
          v10 = 0x1E695D000;
          if (error)
          {
            *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:0 userInfo:0];
          }
        }

        if (!v20)
        {
          break;
        }

        if ([dataCopy count] <= ++v13)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      if ([(EKEventStore *)self commitWithRollback:error])
      {
        v11 = v36;
        v30 = v36;
        goto LABEL_33;
      }
    }

    v30 = 0;
    v11 = v36;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"EKICSImportErrorDomain" code:3 userInfo:0];
    *error = v30 = 0;
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
  colorStringForNewCalendar = [(EKEventStore *)self colorStringForNewCalendar];
  v3 = colorStringForNewCalendar;
  if (colorStringForNewCalendar)
  {
    v9 = 0;
    v8 = 0;
    CFStringGetCString(colorStringForNewCalendar, buffer, 100, 0x8000100u);
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
          colorString = [v9 colorString];
          [v3 addObject:colorString];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  v11 = EKGetDefaultCalendarColors();
  firstObject = [v11 firstObject];
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
          firstObject = v22;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }

  v23 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)defaultLocalCalendar
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__24;
  v13 = __Block_byref_object_dispose__24;
  v14 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__EKEventStore_defaultLocalCalendar__block_invoke;
  v8[3] = &unk_1E7800A70;
  v8[4] = &v9;
  [cADOperationProxySync CADDatabaseGetDefaultLocalCalendarWithReply:v8];

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

- (id)defaultCalendarForNewEventsInDelegateSource:(id)source
{
  sourceCopy = source;
  v5 = sourceCopy;
  if (sourceCopy && ([sourceCopy isDelegate] & 1) == 0)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore defaultCalendarForNewEventsInDelegateSource:];
    }

    selfCopy = 0;
  }

  else
  {
    cADObjectID = [v5 CADObjectID];
    v7 = cADObjectID;
    if (cADObjectID)
    {
      null = cADObjectID;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
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
    selfCopy = self;
    v11 = null;
    v19 = v11;
    v12 = v7;
    v20 = v12;
    v21 = &v22;
    dispatch_sync(calendarSourcesAndDefaultsQueue, &v14);
    selfCopy = [(EKEventStore *)self calendarWithCADID:v23[5], v14, v15, v16, v17, selfCopy];

    _Block_object_dispose(&v22, 8);
  }

  return selfCopy;
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

- (void)setDefaultCalendar:(id)calendar forNewEventsInDelegateSource:(id)source
{
  v39 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  sourceCopy = source;
  if ([calendarCopy type] == 6)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore setDefaultCalendar:forNewEventsInDelegateSource:];
    }

    goto LABEL_17;
  }

  if (!sourceCopy)
  {
    v17 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v17;
      objectID = [calendarCopy objectID];
      title = [calendarCopy title];
      *buf = 138543618;
      v30 = objectID;
      v31 = 2112;
      v32 = title;
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
    v19 = sourceCopy;
    v27 = v19;
    v20 = calendarCopy;
    v28 = v20;
    dispatch_sync(calendarSourcesAndDefaultsQueue, block);
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    cADObjectID = [v20 CADObjectID];
    cADObjectID2 = [v19 CADObjectID];
    [cADOperationProxySync CADDatabaseSetDefaultCalendarForNewEvents:cADObjectID delegateSource:cADObjectID2 reply:&__block_literal_global_359];

    goto LABEL_17;
  }

  if ([sourceCopy isDelegate])
  {
    source = [calendarCopy source];
    v9 = [sourceCopy isEqual:source];

    v10 = EKLogHandle;
    if (v9)
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        objectID = [calendarCopy objectID];
        title = [calendarCopy title];
        objectID2 = [sourceCopy objectID];
        externalID = [sourceCopy externalID];
        title2 = [sourceCopy title];
        *buf = 138544386;
        v30 = objectID;
        v31 = 2112;
        v32 = title;
        v33 = 2114;
        v34 = objectID2;
        v35 = 2114;
        v36 = externalID;
        v37 = 2112;
        v38 = title2;
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
    defaultCalendarForNewReminders = [(EKReminderStore *)self->_reminderStore defaultCalendarForNewReminders];
  }

  else
  {
    defaultCalendarForNewReminders = 0;
  }

  return defaultCalendarForNewReminders;
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

- (void)_removeCachedCalendarFromSource:(id)source
{
  v36 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (self->_defaultCalendarsForNewEventsIDBySourceID)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    null = [MEMORY[0x1E695DFB0] null];
    v34[0] = null;
    cADObjectID = [sourceCopy CADObjectID];
    v34[1] = cADObjectID;
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
            source = [v13 source];
            persistentObject = [source persistentObject];
            v16 = [persistentObject isEqual:sourceCopy];

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
    source2 = [v17 source];
    persistentObject2 = [source2 persistentObject];
    v20 = [persistentObject2 isEqual:sourceCopy];

    if (v20)
    {
      suggestedEventCalendarID = self->_suggestedEventCalendarID;
      self->_suggestedEventCalendarID = 0;
    }
  }

  if (self->_naturalLanguageSuggestedEventCalendarID)
  {
    v22 = [(EKEventStore *)self calendarWithCADID:?];
    source3 = [v22 source];
    persistentObject3 = [source3 persistentObject];
    v25 = [persistentObject3 isEqual:sourceCopy];

    if (v25)
    {
      naturalLanguageSuggestedEventCalendarID = self->_naturalLanguageSuggestedEventCalendarID;
      self->_naturalLanguageSuggestedEventCalendarID = 0;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_removeCachedCalendarWithCADID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(NSMutableDictionary *)self->_calendars removeObjectForKey:dCopy];
  calendarsByIdentifier = self->_calendarsByIdentifier;
  self->_calendarsByIdentifier = 0;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [(NSMutableDictionary *)self->_defaultCalendarsForNewEventsIDBySourceID allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_defaultCalendarsForNewEventsIDBySourceID objectForKeyedSubscript:v11];
        if ([v12 isEqual:dCopy])
        {
          [(NSMutableDictionary *)self->_defaultCalendarsForNewEventsIDBySourceID removeObjectForKey:v11];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([(CADGenerationStampedObjectID *)self->_suggestedEventCalendarID isEqual:dCopy])
  {
    suggestedEventCalendarID = self->_suggestedEventCalendarID;
    self->_suggestedEventCalendarID = 0;
  }

  if ([(CADGenerationStampedObjectID *)self->_naturalLanguageSuggestedEventCalendarID isEqual:dCopy])
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

- (BOOL)saveDraftOfEvent:(id)event
{
  eventCopy = event;
  v5 = +[EKEventStore eventDraftsPath];
  LOBYTE(self) = [(EKEventStore *)self _saveDraftOfEvent:eventCopy toDirectory:v5];

  return self;
}

- (BOOL)_saveDraftOfEvent:(id)event toDirectory:(id)directory withVersion:(id)version
{
  v50 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  directoryCopy = directory;
  versionCopy = version;
  eventOccurrenceID = [eventCopy eventOccurrenceID];
  if ([eventCopy hasChanges] && (objc_msgSend(eventCopy, "isDeleted") & 1) == 0)
  {
    v16 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v41 = "[EKEventStore _saveDraftOfEvent:toDirectory:withVersion:]";
      v42 = 2114;
      v43 = eventOccurrenceID;
      v44 = 2112;
      v45 = directoryCopy;
      v46 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A805E000, v16, OS_LOG_TYPE_DEFAULT, "%s: Serializing %{public}@ to path %@ for event store %@", buf, 0x2Au);
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if (([defaultManager fileExistsAtPath:directoryCopy isDirectory:0] & 1) == 0)
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
      {
        [EKEventStore _saveDraftOfEvent:toDirectory:withVersion:];
      }

      v39 = 0;
      v18 = [defaultManager createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v39];
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

    eventOccurrenceID2 = [eventCopy eventOccurrenceID];
    v36 = [(EKEventStore *)self _draftPathForEventWithOccurrenceID:eventOccurrenceID2 draftDirectory:directoryCopy];

    v22 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      attendees = [eventCopy attendees];
      changeSet = [eventCopy changeSet];
      summary = [changeSet summary];
      *buf = 136316162;
      v41 = "[EKEventStore _saveDraftOfEvent:toDirectory:withVersion:]";
      v42 = 2114;
      v43 = eventOccurrenceID;
      v44 = 2112;
      v45 = attendees;
      v46 = 2112;
      selfCopy = summary;
      v48 = 2112;
      v49 = v36;
      _os_log_impl(&dword_1A805E000, v23, OS_LOG_TYPE_DEFAULT, "%s: Serializing event %{public}@ with attendees %@ and with changeset %@ to file %@", buf, 0x34u);
    }

    v27 = [EKDefaultSerializerFactory createSerializerWithEventStore:self withVersion:versionCopy];
    v38 = 0;
    v28 = [v27 serializeEvent:eventCopy error:&v38];
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
          changeSet2 = [eventCopy changeSet];
          summary2 = [changeSet2 summary];
          *buf = 136316162;
          v41 = "[EKEventStore _saveDraftOfEvent:toDirectory:withVersion:]";
          v42 = 2114;
          v43 = eventOccurrenceID;
          v44 = 2112;
          v45 = summary2;
          v46 = 2112;
          selfCopy = v36;
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
    v43 = eventOccurrenceID;
    _os_log_impl(&dword_1A805E000, v12, OS_LOG_TYPE_DEFAULT, "%s: Event %{public}@ has no changes (or was deleted).  Not serializing", buf, 0x16u);
  }

  v13 = 1;
LABEL_6:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)loadDraftOfEventWithOccurrenceID:(id)d
{
  dCopy = d;
  v5 = +[EKEventStore eventDraftsPath];
  v6 = [(EKEventStore *)self _loadDraftOfEventWithOccurrenceID:dCopy fromDirectory:v5];

  return v6;
}

- (id)_loadDraftOfEventWithOccurrenceID:(id)d fromDirectory:(id)directory withVersion:(id)version
{
  v66 = *MEMORY[0x1E69E9840];
  dCopy = d;
  directoryCopy = directory;
  versionCopy = version;
  v11 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v59 = "[EKEventStore _loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:]";
    v60 = 2114;
    v61 = dCopy;
    v62 = 2112;
    v63 = directoryCopy;
    v64 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEFAULT, "%s: Loading event with occurrenceID %{public}@ from path %@ for event store %@", buf, 0x2Au);
  }

  v12 = [(EKEventStore *)self _draftPathForEventWithOccurrenceID:dCopy draftDirectory:directoryCopy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:v12 isDirectory:0])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v12];
    if (v14)
    {
      v15 = [EKDefaultSerializerFactory createSerializerWithEventStore:self withVersion:@"3.0"];
      v16 = v15;
      if (versionCopy)
      {
        version = versionCopy;
      }

      else
      {
        version = [v15 version];
      }

      v55 = version;
      if ([version isEqualToString:@"3.0"])
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
          calendar = [v20 calendar];

          if (calendar)
          {
            v22 = [(EKEventStore *)self eventWithIdentifier:dCopy];
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
              changeSetForDiff = [v24 changeSetForDiff];
              changedKeys = [changeSetForDiff changedKeys];
              v27 = [changedKeys mutableCopy];

              changeSet = [v54 changeSet];
              changedKeys2 = [changeSet changedKeys];
              [v27 minusSet:changedKeys2];

              v47 = v27;
              allObjects = [v27 allObjects];
              [changeSetForDiff rollbackChangesForKeys:allObjects];

              v31 = EKLogHandle;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
              {
                [EKEventStore _loadDraftOfEventWithOccurrenceID:v31 fromDirectory:? withVersion:?];
              }

              v32 = v50;
              [v50 applyChanges:changeSetForDiff];
              v33 = EKLogHandle;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v34 = v33;
                changeSet2 = [v50 changeSet];
                summary = [changeSet2 summary];
                *buf = 136315394;
                v59 = "[EKEventStore _loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:]";
                v60 = 2112;
                v61 = summary;
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
                  v59 = dCopy;
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
                  attendees = [v20 attendees];
                  *buf = 136315650;
                  v59 = "[EKEventStore _loadDraftOfEventWithOccurrenceID:fromDirectory:withVersion:]";
                  v60 = 2112;
                  v61 = v20;
                  v62 = 2112;
                  v63 = attendees;
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
              v59 = dCopy;
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

- (void)deleteDraftOfEventWithOccurrenceID:(id)d
{
  dCopy = d;
  v5 = +[EKEventStore eventDraftsPath];
  [(EKEventStore *)self _deleteDraftOfEventWithOccurrenceID:dCopy fromDirectory:v5];
}

- (void)deleteAllDrafts
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_deleteDraftOfEventWithOccurrenceID:(id)d fromDirectory:(id)directory
{
  v5 = [(EKEventStore *)self _draftPathForEventWithOccurrenceID:d draftDirectory:directory];
  [(EKEventStore *)self _deleteDraft:v5];
}

- (void)_deleteDraft:(id)draft
{
  draftCopy = draft;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = 0;
  v5 = [defaultManager removeItemAtPath:draftCopy error:&v7];
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

- (id)_draftPathForEventWithOccurrenceID:(id)d draftDirectory:(id)directory
{
  directoryCopy = directory;
  v6 = [d stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", v6];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", directoryCopy, v7];

  return v8;
}

- (BOOL)_saveReminder:(id)reminder commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  reminderCopy = reminder;
  eventStore = [reminderCopy eventStore];

  if (eventStore != self)
  {
    if (error)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = 11;
LABEL_11:
      [v10 errorWithEKErrorCode:v11];
      *error = LOBYTE(v12) = 0;
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
      if (!error)
      {
        goto LABEL_13;
      }
    }

    else if (!error)
    {
      goto LABEL_13;
    }

    v10 = MEMORY[0x1E696ABC0];
    v11 = 29;
    goto LABEL_11;
  }

  v12 = [(EKReminderStore *)self->_reminderStore saveReminder:reminderCopy error:error];
  if (v12 && commitCopy)
  {
    LOBYTE(v12) = [(EKEventStore *)self commit:error];
  }

LABEL_14:

  return v12;
}

- (BOOL)_removeReminder:(id)reminder commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  reminderCopy = reminder;
  if ([(EKEventStore *)self returnReminderResults])
  {
    v9 = [(EKReminderStore *)self->_reminderStore removeReminder:reminderCopy error:error];
    if (v9 && commitCopy)
    {
      LOBYTE(v9) = [(EKEventStore *)self commitWithRollbackForNewClients:error];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)reminderWithExternalURI:(id)i
{
  iCopy = i;
  if (!iCopy)
  {
    [EKEventStore reminderWithExternalURI:];
  }

  v9 = 0;
  v5 = [(EKEventStore *)self _parseURI:iCopy expectedScheme:@"x-apple-reminderkit" identifier:&v9 options:0];
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

- (id)reminderWithUniqueId:(id)id
{
  if (id)
  {
    v4 = [(EKReminderStore *)self->_reminderStore reminderWithUniqueId:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)eventsWithSameRecurrenceSetAsEvent:(id)event
{
  v34 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([eventCopy isDetached])
  {
    originalItem = [eventCopy originalItem];
    recurrenceSet = [originalItem recurrenceSet];
  }

  else
  {
    recurrenceSet = [eventCopy recurrenceSet];
  }

  if (recurrenceSet)
  {
    v6 = objc_opt_new();
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__24;
    v31 = __Block_byref_object_dispose__24;
    v32 = 0;
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    calendar = [eventCopy calendar];
    cADObjectID = [calendar CADObjectID];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __51__EKEventStore_eventsWithSameRecurrenceSetAsEvent___block_invoke;
    v24[3] = &unk_1E77FED28;
    v25 = recurrenceSet;
    v26 = &v27;
    [cADOperationProxySync CADDatabaseGetCalendarItemsWithRecurrenceSet:v25 inCalendar:cADObjectID reply:v24];

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

- (id)calendarItemsWithUniqueIdentifier:(id)identifier inCalendar:(id)calendar
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  calendarCopy = calendar;
  v7 = objc_opt_new();
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__24;
  v32 = __Block_byref_object_dispose__24;
  v33 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  cADObjectID = [calendarCopy CADObjectID];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __61__EKEventStore_calendarItemsWithUniqueIdentifier_inCalendar___block_invoke;
  v25[3] = &unk_1E77FED28;
  v11 = identifierCopy;
  v26 = v11;
  v27 = &v28;
  [cADOperationProxySync CADDatabaseGetCalendarItemsWithUniqueIdentifier:v11 inCalendar:cADObjectID reply:v25];

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
              uniqueIdentifier = [v10 uniqueIdentifier];
              v12 = [(NSString *)v4 isEqual:uniqueIdentifier];

              if (v12)
              {
                objectID = [v10 objectID];
                v14 = v32[5];
                v32[5] = objectID;

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
        connection = [(EKEventStore *)self connection];
        cADOperationProxySync = [connection CADOperationProxySync];
        v21 = MEMORY[0x1E69E9820];
        v22 = 3221225472;
        v23 = __43__EKEventStore_calendarItemWithIdentifier___block_invoke;
        v24 = &unk_1E7800B28;
        v25 = v4;
        v26 = &v31;
        [cADOperationProxySync CADDatabaseGetCalendarItemWithUUID:v25 reply:&v21];

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

- (id)_calendarItemsWithExternalIdentifier:(id)identifier inCalendars:(id)calendars entityTypes:(unint64_t)types
{
  typesCopy = types;
  identifierCopy = identifier;
  calendarsCopy = calendars;
  if (!identifierCopy)
  {
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"externalIdentifier must be an instance of NSString"];
  }

  if ([identifierCopy length])
  {
    if (calendarsCopy)
    {
LABEL_6:
      v10 = [EKEventStore calendarObjectIDsForPredicate:calendarsCopy];
      goto LABEL_10;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"externalIdentifier is empty"];
    if (calendarsCopy)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_10:
  v11 = objc_opt_new();
  if ((typesCopy & 2) != 0 && [(EKEventStore *)self returnReminderResults])
  {
    v12 = [(EKReminderStore *)self->_reminderStore remindersWithExternalIdentifier:identifierCopy];
    [v11 addObjectsFromArray:v12];
  }

  if ((typesCopy & 1) != 0 && [(EKEventStore *)self returnEventResults])
  {
    v13 = [objc_alloc(MEMORY[0x1E6992308]) initWithExternalIdentifier:identifierCopy entityType:2];
    [v13 setCalendars:v10];
    v14 = [(EKEventStore *)self _calendarItemsMatchingPredicate:v13];
    v15 = [(EKEventStore *)self _apiExpectedEventsForEvents:v14];

    [v11 addObjectsFromArray:v15];
  }

  if (![v11 count])
  {
    v16 = [(EKEventStore *)self calendarItemWithIdentifier:identifierCopy];
    v17 = v16;
    if (v16)
    {
      if (!calendarsCopy || ([v16 calendar], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "CADObjectID"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v10, "containsObject:", v19), v19, v18, v20))
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

- (id)_calendarItemsMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (!predicateCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"predicate is nil"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"predicate is not a calendar item predicate created through EKEventStore"];
  }

  v5 = [EKPredicateSearch searchWithEntityClass:objc_opt_class() predicate:predicateCopy store:self];
  runSynchronously = [v5 runSynchronously];

  return runSynchronously;
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

- (BOOL)accessGrantedForEntityType:(unint64_t)type
{
  if (type != 1)
  {
    if (type)
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

- (BOOL)shouldSaveCalendarAsEventCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (CalIsReminderBridgeEnabled())
  {
    v4 = [calendarCopy allowedEntityTypes] & 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (BOOL)shouldSaveCalendarAsReminderCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (CalIsReminderBridgeEnabled())
  {
    v4 = ([calendarCopy allowedEntityTypes] >> 1) & 1;
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

- (int)countOfEventsFromStartDate:(id)date toEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__EKEventStore_countOfEventsFromStartDate_toEndDate___block_invoke;
  v11[3] = &unk_1E7800C40;
  v11[4] = &v12;
  [cADOperationProxySync CADOccurrenceCacheGetOccurrenceCountWithStartDate:dateCopy endDate:endDateCopy reply:v11];

  LODWORD(connection) = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  return connection;
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

- (int)countOfEventsCalendarFromStartDate:(id)date toEndDate:(id)endDate ByCalendars:(id)calendars
{
  dateCopy = date;
  endDateCopy = endDate;
  calendarsCopy = calendars;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v11 = [calendarsCopy valueForKey:@"CADObjectID"];
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__EKEventStore_countOfEventsCalendarFromStartDate_toEndDate_ByCalendars___block_invoke;
  v15[3] = &unk_1E7800C40;
  v15[4] = &v16;
  [cADOperationProxySync CADOccurrenceCacheGetOccurrenceCountOrSumDurationWithStartDate:dateCopy endDate:endDateCopy calendarIDs:v11 sumDuration:0 reply:v15];

  LODWORD(connection) = *(v17 + 6);
  _Block_object_dispose(&v16, 8);

  return connection;
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

- (double)sumOfDurationCalendarFromStartDate:(id)date toEndDate:(id)endDate ByCalendars:(id)calendars
{
  dateCopy = date;
  endDateCopy = endDate;
  calendarsCopy = calendars;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = [calendarsCopy valueForKey:@"CADObjectID"];
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__EKEventStore_sumOfDurationCalendarFromStartDate_toEndDate_ByCalendars___block_invoke;
  v16[3] = &unk_1E7800C40;
  v16[4] = &v17;
  [cADOperationProxySync CADOccurrenceCacheGetOccurrenceCountOrSumDurationWithStartDate:dateCopy endDate:endDateCopy calendarIDs:v11 sumDuration:1 reply:v16];

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

- (unint64_t)countOfEventsInSource:(id)source
{
  sourceCopy = source;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (sourceCopy)
  {
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    cADObjectID = [sourceCopy CADObjectID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__EKEventStore_countOfEventsInSource___block_invoke;
    v11[3] = &unk_1E7800C68;
    v12 = sourceCopy;
    v13 = &v15;
    [cADOperationProxySync CADCountOriginalCalendarItemsBySource:cADObjectID reply:v11];

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

- (id)doEvents:(id)events haveOccurrencesAfterDate:(id)date
{
  eventsCopy = events;
  dateCopy = date;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__24;
  v18 = __Block_byref_object_dispose__24;
  v19 = 0;
  v8 = [eventsCopy valueForKey:@"CADObjectID"];
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__EKEventStore_doEvents_haveOccurrencesAfterDate___block_invoke;
  v13[3] = &unk_1E7800918;
  v13[4] = &v14;
  [cADOperationProxySync CADOccurrenceCacheDoEvents:v8 haveOccurrencesAfterDate:dateCopy reply:v13];

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

- (id)calendarWithUniqueID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = objc_alloc(MEMORY[0x1E695DFA8]);
  _allCalendars = [(EKEventStore *)self _allCalendars];
  v7 = [v5 initWithArray:_allCalendars];

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
        uniqueIdentifier = [v13 uniqueIdentifier];
        v15 = [uniqueIdentifier isEqualToString:dCopy];

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

- (id)calendarWithExternalID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([(EKEventStore *)self returnEventResults])
  {
    v5 = objc_alloc(MEMORY[0x1E695DFA8]);
    _allCalendars = [(EKEventStore *)self _allCalendars];
    v7 = [v5 initWithArray:_allCalendars];

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
          externalID = [v13 externalID];
          v15 = [externalID isEqualToString:dCopy];

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
  cADObjectID = [a3 CADObjectID];
  *self = 138543362;
  *a4 = cADObjectID;
  _os_log_error_impl(&dword_1A805E000, v7, OS_LOG_TYPE_ERROR, "Cached calendar has no calendarIdentifier: %{public}@", self, 0xCu);
}

- (id)_eventCalendarWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
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
    v11 = identifierCopy;
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
          calendarIdentifier = [v11 calendarIdentifier];
          v13 = [calendarIdentifier isEqualToString:v4];

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

- (id)calendarsWithIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = identifiersCopy;
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

- (id)calendarsWithObjectIDs:(id)ds
{
  v20 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = dsCopy;
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

- (void)familyCalendarsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__EKEventStore_familyCalendarsWithCompletion___block_invoke;
  v6[3] = &unk_1E7800C90;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
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

- (id)calendarWithExternalURI:(id)i
{
  iCopy = i;
  if (!iCopy)
  {
    [EKEventStore calendarWithExternalURI:];
  }

  v9 = 0;
  v5 = [(EKEventStore *)self _parseURI:iCopy expectedScheme:@"x-apple-calendar" identifier:&v9 options:0];
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

- (id)uniqueIdentifiersForEventsWithObjectIDs:(id)ds
{
  v88 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v49 = dsCopy;
  if (![dsCopy count])
  {
    v44 = [MEMORY[0x1E695DFD8] set];
    goto LABEL_54;
  }

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
  registeredQueue = self->_registeredQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__EKEventStore_uniqueIdentifiersForEventsWithObjectIDs___block_invoke;
  block[3] = &unk_1E77FD7C8;
  v6 = v49;
  v79 = v6;
  selfCopy = self;
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
          objectID = [v15 objectID];
          [v8 removeObject:objectID];
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
    allObjects = [v8 allObjects];
    v19 = [allObjects countByEnumeratingWithState:&v70 objects:v86 count:16];
    if (v19)
    {
      v20 = *v71;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v71 != v20)
          {
            objc_enumerationMutation(allObjects);
          }

          v22 = *(*(&v70 + 1) + 8 * j);
          v23 = [(NSCache *)self->_deletedEventUniqueIdentifiersCache objectForKey:v22];
          if (v23)
          {
            [v10 addObject:v23];
            [v8 removeObject:v22];
          }
        }

        v19 = [allObjects countByEnumeratingWithState:&v70 objects:v86 count:16];
      }

      while (v19);
    }

    if ([v8 count])
    {
LABEL_23:
      v53 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      database = [(EKEventStore *)self database];
      databaseRestoreGeneration = [database databaseRestoreGeneration];

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
              v31 = [v30 CADObjectIDWithGeneration:databaseRestoreGeneration];
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
        database2 = [(EKEventStore *)self database];
        cADOperationProxySync = [database2 CADOperationProxySync];
        v84 = v9;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __56__EKEventStore_uniqueIdentifiersForEventsWithObjectIDs___block_invoke_2;
        v59[3] = &unk_1E7800918;
        v59[4] = &v60;
        [cADOperationProxySync CADObjects:v53 getPropertiesWithNames:v34 reply:v59];

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
              loadedValues = [v37 loadedValues];
              firstObject = [loadedValues firstObject];

              if (firstObject)
              {
                objectID2 = [v37 objectID];
                v40 = [EKObjectID objectIDWithCADObjectID:objectID2];
                v82 = v9;
                v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
                loadedValues2 = [v37 loadedValues];
                v43 = [(EKEventStore *)self registerFetchedObjectWithID:v40 withDefaultLoadedPropertyKeys:v41 values:loadedValues2];

                [v10 addObject:firstObject];
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

- (id)uniqueIdentifiersForAllObjectsWithChangesRelatedToObjects:(id)objects
{
  v20 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = objectsCopy;
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

        frozenObject = [*(*(&v15 + 1) + 8 * i) frozenObject];
        [v4 addObject:frozenObject];
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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__EKEventStore_syncErrorCount__block_invoke;
  v5[3] = &unk_1E7800C40;
  v5[4] = &v6;
  [cADOperationProxySync CADDatabaseGetErrorCount:v5];

  LODWORD(connection) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return connection;
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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__EKEventStore_eventsWithErrorsPerSourceID__block_invoke;
  v7[3] = &unk_1E7800798;
  v7[4] = self;
  v7[5] = &v8;
  [cADOperationProxySync CADDatabaseGetEventsWithErrorsPerSource:v7];

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

- (void)_uncacheImage:(id)image
{
  imageCopy = image;
  if ([imageCopy entityType] == 28)
  {
    _imageCache = [(EKEventStore *)self _imageCache];
    [_imageCache uncacheImage:imageCopy];
  }
}

- (void)_clearImageCache
{
  dispatch_assert_queue_V2(self->_registeredQueue);
  imageCache = self->_imageCache;
  self->_imageCache = 0;
}

- (id)colorWithProviderIdentifier:(id)identifier externalIdentifier:(id)externalIdentifier
{
  identifierCopy = identifier;
  externalIdentifierCopy = externalIdentifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__24;
  v17 = __Block_byref_object_dispose__24;
  v18 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__EKEventStore_colorWithProviderIdentifier_externalIdentifier___block_invoke;
  v12[3] = &unk_1E7800A70;
  v12[4] = &v13;
  [cADOperationProxySync CADDatabaseGetColorWithProviderIdentifier:identifierCopy externalID:externalIdentifierCopy reply:v12];

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

- (BOOL)saveColor:(id)color commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  colorCopy = color;
  v9 = colorCopy;
  if (error)
  {
    *error = 0;
  }

  if (!colorCopy)
  {
    goto LABEL_12;
  }

  eventStore = [colorCopy eventStore];

  if (eventStore != self)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
      *error = LOBYTE(v11) = 0;
      goto LABEL_13;
    }

LABEL_12:
    LOBYTE(v11) = 0;
    goto LABEL_13;
  }

  if (![v9 validate:error] || !objc_msgSend(v9, "save:", error))
  {
    goto LABEL_12;
  }

  [(EKEventStore *)self _addObjectToPendingCommits:v9];
  v11 = [(EKEventStore *)self save:error];
  if (v11 && commitCopy)
  {
    LOBYTE(v11) = [(EKEventStore *)self commitWithRollback:error];
  }

LABEL_13:

  return v11;
}

- (id)occurrenceCacheGetOccurrencesForCalendars:(id)calendars onDay:(id)day
{
  v34 = *MEMORY[0x1E69E9840];
  calendarsCopy = calendars;
  dayCopy = day;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__24;
  v31 = __Block_byref_object_dispose__24;
  v32 = 0;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(calendarsCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = calendarsCopy;
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

        cADObjectID = [*(*(&v23 + 1) + 8 * i) CADObjectID];
        [v8 addObject:cADObjectID];
      }

      v10 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v10);
  }

  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__EKEventStore_occurrenceCacheGetOccurrencesForCalendars_onDay___block_invoke;
  v20[3] = &unk_1E77FED28;
  v16 = v8;
  v21 = v16;
  v22 = &v27;
  [cADOperationProxySync CADOccurrenceCacheGetOccurrencesForCalendars:v16 onDay:dayCopy reply:v20];

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

- (id)occurrenceCacheGetOccurrenceCountsForCalendars:(id)calendars
{
  v31 = *MEMORY[0x1E69E9840];
  calendarsCopy = calendars;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__24;
  v28 = __Block_byref_object_dispose__24;
  v29 = 0;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(calendarsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = calendarsCopy;
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

        cADObjectID = [*(*(&v20 + 1) + 8 * i) CADObjectID];
        [v5 addObject:cADObjectID];
      }

      v7 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v7);
  }

  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__EKEventStore_occurrenceCacheGetOccurrenceCountsForCalendars___block_invoke;
  v17[3] = &unk_1E77FED28;
  v13 = v5;
  v18 = v13;
  v19 = &v24;
  [cADOperationProxySync CADOccurrenceCacheGetOccurrenceCountsForCalendars:v13 reply:v17];

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

- (void)showDeclinedEventsChanged:(id)changed
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

- (void)showCompletedRemindersChanged:(id)changed
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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__EKEventStore_birthdayCalendarEnabled__block_invoke;
  v5[3] = &unk_1E77FFEA0;
  v5[4] = &v6;
  [cADOperationProxySync CADDatabaseGetBirthdayCalendarEnabledWithReply:v5];

  LOBYTE(connection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return connection;
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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__EKEventStore_birthdayCalendarVersion__block_invoke;
  v5[3] = &unk_1E7800C40;
  v5[4] = &v6;
  [cADOperationProxySync CADDatabaseGetBirthdayCalendarVersionWithReply:v5];

  LODWORD(connection) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return connection;
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

- (void)confirmSuggestedEvent:(id)event
{
  suggestionInfo = [event suggestionInfo];
  uniqueKey = [suggestionInfo uniqueKey];

  if (uniqueKey)
  {
    serviceForEvents = [(objc_class *)[(EKEventStore *)self _SGSuggestionsServiceClass] serviceForEvents];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__EKEventStore_confirmSuggestedEvent___block_invoke;
    v8[3] = &unk_1E7800D38;
    v9 = serviceForEvents;
    v7 = serviceForEvents;
    [v7 eventFromUniqueId:uniqueKey withCompletion:v8];
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

- (void)acceptSuggestedEvent:(id)event
{
  eventCopy = event;
  defaultCalendarForNewEvents = [(EKEventStore *)self defaultCalendarForNewEvents];
  [(EKEventStore *)self acceptSuggestedEvent:eventCopy placeOnCalendar:defaultCalendarForNewEvents];
}

- (void)acceptSuggestedEvent:(id)event placeOnCalendar:(id)calendar
{
  eventCopy = event;
  [eventCopy setCalendar:calendar];
  v10 = 0;
  v7 = [(EKEventStore *)self saveEvent:eventCopy span:0 error:&v10];
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
    [(EKEventStore *)self confirmSuggestedEvent:eventCopy];
  }

LABEL_4:
}

- (void)deleteSuggestedEvent:(id)event
{
  eventCopy = event;
  suggestionInfo = [eventCopy suggestionInfo];
  uniqueKey = [suggestionInfo uniqueKey];
  v7 = [uniqueKey copy];

  v16 = 0;
  v8 = [(EKEventStore *)self removeEvent:eventCopy span:2 error:&v16];
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

    serviceForEvents = [(objc_class *)[(EKEventStore *)self _SGSuggestionsServiceClass] serviceForEvents];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __37__EKEventStore_deleteSuggestedEvent___block_invoke;
    v14[3] = &unk_1E7800D38;
    v15 = serviceForEvents;
    v13 = serviceForEvents;
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

- (BOOL)saveNotification:(id)notification commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  notificationCopy = notification;
  v9 = notificationCopy;
  if (error)
  {
    *error = 0;
  }

  if (!notificationCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil notification passed in to [EKEventStore saveNotification:commit:error:]"];
    goto LABEL_13;
  }

  eventStore = [notificationCopy eventStore];

  if (eventStore != self)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
      *error = LOBYTE(v11) = 0;
      goto LABEL_14;
    }

LABEL_13:
    LOBYTE(v11) = 0;
    goto LABEL_14;
  }

  if (![v9 validate:error] || !objc_msgSend(v9, "save:", error))
  {
    goto LABEL_13;
  }

  [(EKEventStore *)self _addObjectToPendingCommits:v9];
  v11 = [(EKEventStore *)self save:error];
  if (v11 && commitCopy)
  {
    LOBYTE(v11) = [(EKEventStore *)self commitWithRollback:error];
  }

LABEL_14:

  return v11;
}

- (BOOL)saveNotificationCollection:(id)collection commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  collectionCopy = collection;
  if (error)
  {
    *error = 0;
    if (![(EKEventStore *)self canModifyCalendarDatabase])
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = 30;
LABEL_9:
      [v9 errorWithEKErrorCode:v10];
      *error = LOBYTE(v12) = 0;
      goto LABEL_17;
    }
  }

  else if (![(EKEventStore *)self canModifyCalendarDatabase])
  {
    goto LABEL_16;
  }

  if (!collectionCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Nil notification collection passed in to [EKEventStore saveNotificationCollection:commit:error:]"];
    goto LABEL_16;
  }

  eventStore = [collectionCopy eventStore];

  if (eventStore != self)
  {
    if (error)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = 11;
      goto LABEL_9;
    }

LABEL_16:
    LOBYTE(v12) = 0;
    goto LABEL_17;
  }

  if (![collectionCopy validate:error] || !objc_msgSend(collectionCopy, "save:", error))
  {
    goto LABEL_16;
  }

  [(EKEventStore *)self _addObjectToPendingCommits:collectionCopy];
  v12 = [(EKEventStore *)self save:error];
  if (v12 && commitCopy)
  {
    LOBYTE(v12) = [(EKEventStore *)self commitWithRollback:error];
  }

LABEL_17:

  return v12;
}

- (id)sharedCalendarInvitationsForEntityTypes:(unint64_t)types
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
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__EKEventStore_sharedCalendarInvitationsForEntityTypes___block_invoke;
    v22[3] = &unk_1E7800D80;
    v22[4] = &v23;
    v22[5] = types;
    [cADOperationProxySync CADDatabaseGetSharedCalendarInvitationsWithReply:v22];

    array = [MEMORY[0x1E695DF70] array];
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

          v10 = [EKObjectID objectIDWithCADObjectID:*(*(&v18 + 1) + 8 * i), array];
          v11 = [(EKEventStore *)self registerFetchedObjectWithID:v10];
          if (v11)
          {
            v12 = [(EKObject *)[EKCalendar alloc] initWithPersistentObject:v11];
            if (([(EKCalendar *)v12 allowedEntityTypes]& types) != 0)
            {
              [array addObject:v12];
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v18 objects:v29 count:16];
      }

      while (v7);
    }

    v13 = [array copy];
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

- (void)respondToSharedCalendarInvitation:(id)invitation withStatus:(unint64_t)status
{
  invitationCopy = invitation;
  objectID = [invitationCopy objectID];
  v8 = [(EKEventStore *)self calendarWithID:objectID];

  source = [invitationCopy source];

  if (v8)
  {
    if (status <= 2)
    {
      if (status)
      {
        if (status != 1)
        {
          if (status == 2)
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

    else if (status - 3 > 3)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unsupported status for responding to shared calendar invitation. Only accept and decline are supported" userInfo:0];
    [v10 raise];

LABEL_5:
    v11 = 1;
LABEL_6:
    mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
    calendarIdentifier = [v8 calendarIdentifier];
    externalID = [source externalID];
    [mEMORY[0x1E69998A8] respondToSharedCalendarInvite:v11 forCalendarWithID:calendarIdentifier accountID:externalID queue:MEMORY[0x1E69E96A0] completionBlock:&__block_literal_global_461];

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

- (id)resourceChangesForEntityTypes:(unint64_t)types
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__24;
  v28 = __Block_byref_object_dispose__24;
  v29 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __46__EKEventStore_resourceChangesForEntityTypes___block_invoke;
  v23[3] = &unk_1E7800918;
  v23[4] = &v24;
  [cADOperationProxySync CADDatabaseGetResourceChanges:v23];

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
            calendarItem = [v12 calendarItem];
            calendar = [v12 calendar];
            if (types & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) || (types & 2) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) || !calendarItem && ([calendar allowedEntityTypes] & types) != 0)
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

- (BOOL)markResourceChangeAlertedAndSave:(id)save error:(id *)error
{
  saveCopy = save;
  v7 = saveCopy;
  if (error)
  {
    *error = 0;
  }

  if (!saveCopy)
  {
    goto LABEL_8;
  }

  eventStore = [saveCopy eventStore];

  if (!eventStore)
  {
    goto LABEL_8;
  }

  eventStore2 = [v7 eventStore];

  if (eventStore2 != self)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
      *error = v10 = 0;
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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  cADObjectID = [v7 CADObjectID];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__EKEventStore_markResourceChangeAlertedAndSave_error___block_invoke;
  v15[3] = &unk_1E7800B50;
  v15[4] = &v16;
  v15[5] = &v22;
  [cADOperationProxySync CADResourceChange:cADObjectID setAlertedWithError:v15];

  if (error)
  {
    *error = v17[5];
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

- (BOOL)removeResourceChange:(id)change error:(id *)error
{
  changeCopy = change;
  if (changeCopy)
  {
    v7 = [MEMORY[0x1E695DEC8] arrayWithObject:changeCopy];
    v8 = [(EKEventStore *)self removeResourceChanges:v7 error:error];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithEKErrorCode:5];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)removeResourceChanges:(id)changes error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  v7 = changesCopy;
  if (error)
  {
    *error = 0;
  }

  if (!changesCopy)
  {
    goto LABEL_17;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = changesCopy;
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
        eventStore = [v13 eventStore];

        if (eventStore != self)
        {
          if (error)
          {
            *error = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
          }

          goto LABEL_17;
        }

        persistentObject = [v13 persistentObject];
        [(EKEventStore *)self _deleteObject:persistentObject];

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

  if ([(EKEventStore *)self save:error])
  {
    v16 = [(EKEventStore *)self commitWithRollback:error];
  }

  else
  {
LABEL_17:
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)removeResourceChangesForCalendarItem:(id)item error:(id *)error
{
  itemCopy = item;
  v7 = [(EKEventStore *)self resourceChangesForEntityTypes:3];
  v8 = MEMORY[0x1E696AE18];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__EKEventStore_removeResourceChangesForCalendarItem_error___block_invoke;
  v13[3] = &unk_1E7800DA8;
  v14 = itemCopy;
  v9 = itemCopy;
  v10 = [v8 predicateWithBlock:v13];
  v11 = [v7 filteredArrayUsingPredicate:v10];

  LOBYTE(error) = [(EKEventStore *)self removeResourceChanges:v11 error:error];
  return error;
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

- (BOOL)acknowledgeNotifications:(id)notifications error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  notificationsCopy = notifications;
  v7 = [notificationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(notificationsCopy);
        }

        if (![*(*(&v14 + 1) + 8 * i) acknowledgeWithEventStore:self error:{error, v14}])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [notificationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__EKEventStore_inboxRepliedSectionItems__block_invoke;
  v6[3] = &unk_1E7800E20;
  v6[4] = &v7;
  [cADOperationProxySync CADDatabaseGetInboxRepliedSectionItems:v6];

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

- (BOOL)removeInviteReplyNotification:(id)notification error:(id *)error
{
  v6 = [MEMORY[0x1E695DEC8] arrayWithObject:notification];
  LOBYTE(error) = [(EKEventStore *)self removeInviteReplyNotifications:v6 error:error];

  return error;
}

- (BOOL)removeInviteReplyNotifications:(id)notifications error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  v7 = notificationsCopy;
  if (error)
  {
    *error = 0;
  }

  if (!notificationsCopy)
  {
    goto LABEL_17;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = notificationsCopy;
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
        eventStore = [v13 eventStore];

        if (eventStore != self)
        {
          if (error)
          {
            *error = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
          }

          goto LABEL_17;
        }

        persistentObject = [v13 persistentObject];
        [(EKEventStore *)self _deleteObject:persistentObject];

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

  if ([(EKEventStore *)self save:error])
  {
    v16 = [(EKEventStore *)self commitWithRollback:error];
  }

  else
  {
LABEL_17:
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)attachmentWithUUID:(id)d
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__24;
  v18 = __Block_byref_object_dispose__24;
  v19 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__EKEventStore_attachmentWithUUID___block_invoke;
  v10[3] = &unk_1E7800E48;
  v7 = dCopy;
  v11 = v7;
  selfCopy = self;
  v13 = &v14;
  [cADOperationProxySync CADDatabaseGetAttachmentWithUUID:v7 reply:v10];

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

- (BOOL)saveAttachment:(id)attachment commit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  attachmentCopy = attachment;
  v9 = attachmentCopy;
  if (error)
  {
    *error = 0;
  }

  if (!attachmentCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil attachment passed in to [EKEventStore saveAttachment:commit:error:]"];
    goto LABEL_9;
  }

  if (![attachmentCopy validateWithOwner:0 error:error])
  {
LABEL_9:
    LOBYTE(v11) = 0;
    goto LABEL_10;
  }

  eventStore = [v9 eventStore];

  if (eventStore != self)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:11];
      *error = LOBYTE(v11) = 0;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (![v9 save:error])
  {
    goto LABEL_9;
  }

  [(EKEventStore *)self _addObjectToPendingCommits:v9];
  v11 = [(EKEventStore *)self save:error];
  if (v11 && commitCopy)
  {
    LOBYTE(v11) = [(EKEventStore *)self commitWithRollback:error];
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

+ (BOOL)_shouldRefreshSource:(id)source
{
  sourceCopy = source;
  v4 = sourceCopy;
  if (sourceCopy && [sourceCopy isEnabled] && objc_msgSend(v4, "sourceType"))
  {
    externalID = [v4 externalID];
    v6 = [externalID length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_registerObjectImmediate:(id)immediate
{
  immediateCopy = immediate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [EKEventStore _registerObjectImmediate:];
  }

  objectID = [immediateCopy objectID];

  if (!objectID)
  {
    v5 = +[EKObjectID temporaryObjectIDWithEntityType:](EKObjectID, "temporaryObjectIDWithEntityType:", [immediateCopy entityType]);
    [immediateCopy _setObjectID:v5 inDatabaseRestoreGeneration:0xFFFFFFFFLL];
  }

  registeredObjects = self->_registeredObjects;
  objectID2 = [immediateCopy objectID];
  [(NSMutableDictionary *)registeredObjects setObject:immediateCopy forKey:objectID2];

  [immediateCopy _setEventStore:self];
}

- (void)_registerObject:(id)object
{
  objectCopy = object;
  registeredQueue = self->_registeredQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__EKEventStore__registerObject___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_sync(registeredQueue, v7);
}

- (void)_unregisterObject:(id)object
{
  objectCopy = object;
  registeredQueue = self->_registeredQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__EKEventStore__unregisterObject___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
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

- (void)_detachObject:(id)object
{
  objectCopy = object;
  registeredQueue = self->_registeredQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__EKEventStore__detachObject___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
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

- (void)_reregisterObject:(id)object oldID:(id)d
{
  objectCopy = object;
  dCopy = d;
  registeredQueue = self->_registeredQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EKEventStore__reregisterObject_oldID___block_invoke;
  block[3] = &unk_1E77FD7C8;
  block[4] = self;
  v12 = dCopy;
  v13 = objectCopy;
  v9 = objectCopy;
  v10 = dCopy;
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

- (BOOL)_isRegisteredObject:(id)object
{
  objectCopy = object;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  registeredQueue = self->_registeredQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EKEventStore__isRegisteredObject___block_invoke;
  block[3] = &unk_1E77FD4B8;
  v9 = objectCopy;
  v10 = &v11;
  block[4] = self;
  v6 = objectCopy;
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

- (id)persistentObjectWithEntityName:(id)name
{
  nameCopy = name;
  v5 = [objc_opt_class() classForEntityName:nameCopy];

  v6 = objc_alloc_init(v5);
  [v6 _setEventStore:self];

  return v6;
}

- (id)insertedPersistentObjectWithEntityName:(id)name
{
  nameCopy = name;
  v5 = [objc_opt_class() classForEntityName:nameCopy];

  v6 = objc_alloc_init(v5);
  [(EKEventStore *)self _insertObject:v6];

  return v6;
}

- (id)_addFetchedObjectWithID:(id)d
{
  dCopy = d;
  v6 = objc_opt_class();
  entityName = [dCopy entityName];
  v8 = [v6 classForEntityName:entityName];

  if (!v8)
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
    {
      [(EKEventStore *)v9 _addFetchedObjectWithID:dCopy];
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    entityName2 = [dCopy entityName];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EKEventStore.m" lineNumber:6781 description:{@"Unknown entity name %@ for objectID: %@ with entity type: %d", entityName2, dCopy, objc_msgSend(dCopy, "entityType")}];
  }

  v12 = objc_alloc_init(v8);
  database = [(EKEventStore *)self database];
  [v12 _setObjectID:dCopy inDatabaseRestoreGeneration:{objc_msgSend(database, "databaseRestoreGeneration")}];

  [(EKEventStore *)self _registerObjectImmediate:v12];

  return v12;
}

- (id)registerFetchedObjectWithID:(id)d withDefaultLoadedPropertyKeys:(id)keys values:(id)values
{
  dCopy = d;
  keysCopy = keys;
  valuesCopy = values;
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
  v12 = dCopy;
  v16 = v12;
  dispatch_sync(registeredQueue, block);
  if (keysCopy && valuesCopy)
  {
    [v19[5] takeValuesForDefaultPropertyKeys:keysCopy values:valuesCopy];
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

- (BOOL)objectWithIDExists:(id)exists
{
  existsCopy = exists;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (existsCopy)
  {
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    v7 = [existsCopy CADObjectIDWithGeneration:0xFFFFFFFFLL];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __35__EKEventStore_objectWithIDExists___block_invoke;
    v10[3] = &unk_1E77FED00;
    v11 = existsCopy;
    v12 = &v13;
    [cADOperationProxySync CADObjectExists:v7 reply:v10];
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

- (id)objectWithObjectID:(id)d
{
  dCopy = d;
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
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
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

- (id)publicObjectWithPersistentObject:(id)object
{
  objectCopy = object;
  v4 = [objc_alloc(objc_msgSend(objc_opt_class() "meltedClass"))];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [EKEventStore publicObjectWithPersistentObject:];
  }

  return v4;
}

- (id)publicObjectWithObjectID:(id)d
{
  v4 = [(EKEventStore *)self objectWithObjectID:d];
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

- (id)publicObjectWithFetchedObjectID:(id)d
{
  v4 = [(EKEventStore *)self registerFetchedObjectWithID:d];
  v5 = [(EKEventStore *)self publicObjectWithPersistentObject:v4];

  return v5;
}

- (void)_trackModifiedObject:(id)object
{
  objectCopy = object;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EKEventStore__trackModifiedObject___block_invoke;
  block[3] = &unk_1E7800E70;
  selfCopy = self;
  v11 = a2;
  v9 = objectCopy;
  v7 = objectCopy;
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

- (void)_objectDidReset:(id)reset
{
  resetCopy = reset;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__EKEventStore__objectDidReset___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = resetCopy;
  v6 = resetCopy;
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

- (void)_insertObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Attempt to insert a nil object.";
    goto LABEL_12;
  }

  v5 = objectCopy;
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

  eventStore = [v5 eventStore];

  if (eventStore)
  {
    eventStore2 = [v5 eventStore];

    if (eventStore2 != self)
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

  objectID = [v5 objectID];

  if (!objectID)
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

- (void)_markObjectUncommittable:(id)uncommittable
{
  uncommittableCopy = uncommittable;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__EKEventStore__markObjectUncommittable___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = uncommittableCopy;
  v6 = uncommittableCopy;
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

- (BOOL)isObjectInserted:(id)inserted
{
  insertedCopy = inserted;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__EKEventStore_isObjectInserted___block_invoke;
  block[3] = &unk_1E77FD688;
  v9 = insertedCopy;
  v10 = &v11;
  block[4] = self;
  v6 = insertedCopy;
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

- (void)_deleteObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Attempt to delete a nil object.";
    goto LABEL_9;
  }

  v5 = objectCopy;
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

  eventStore = [v5 eventStore];

  if (eventStore == self && [v5 allowsDeletion])
  {
    [(EKEventStore *)self _cacheDeletedEventIdentifierIfNeededForObject:v5];
    unsavedChangesQueue = self->_unsavedChangesQueue;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __30__EKEventStore__deleteObject___block_invoke;
    v16 = &unk_1E77FD580;
    selfCopy = self;
    v8 = v5;
    v18 = v8;
    dispatch_sync(unsavedChangesQueue, &v13);
    [(EKEventStore *)self _clearPendingChangesForObjectsWithOwner:v8, v13, v14, v15, v16, selfCopy];
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

- (void)rollbackObjectsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__EKEventStore_rollbackObjectsWithIdentifiers___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
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
  cADOperationProxySync = [(EKDaemonConnection *)self->_database CADOperationProxySync];
  [cADOperationProxySync CADDatabaseResetWithReply:&__block_literal_global_503];
}

- (BOOL)save:(id *)save
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

- (BOOL)_commit:(id *)_commit
{
  returnEventResults = [(EKEventStore *)self returnEventResults];
  if (returnEventResults && ![(EKEventStore *)self _commitObjectsWithIdentifiers:0 error:_commit])
  {
    LOBYTE(returnEventResults) = 0;
    return returnEventResults;
  }

  if (![(EKEventStore *)self returnReminderResults])
  {
    if (_commit)
    {
      v8 = returnEventResults;
    }

    else
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:29];
      *_commit = LOBYTE(returnEventResults) = 0;
    }

    return returnEventResults;
  }

  reminderStore = self->_reminderStore;

  return [(EKReminderStore *)reminderStore commit:_commit];
}

- (BOOL)commitWithRollback:(id *)rollback
{
  v10 = 0;
  v5 = [(EKEventStore *)self commit:&v10];
  v6 = v10;
  v7 = v6;
  if (!v5)
  {
    if (rollback)
    {
      v8 = v6;
      *rollback = v7;
    }

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore commitWithRollback:];
    }

    [(EKEventStore *)self rollback];
  }

  return v5;
}

- (BOOL)commitWithRollbackForNewClients:(id *)clients
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E60901FFFFFFFFLL])
  {

    return [(EKEventStore *)self commitWithRollback:clients];
  }

  else
  {

    return [(EKEventStore *)self commit:clients];
  }
}

- (BOOL)commitObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  if ([objectsCopy count])
  {
    v7 = [objectsCopy valueForKey:@"persistentObject"];
    v8 = [EKPersistentObject allObjectsWithChangesRelatedToObjects:v7];
    v9 = [v8 setByAddingObjectsFromSet:v7];
    v10 = [v9 valueForKey:@"objectID"];
    v19 = 0;
    v11 = [(EKEventStore *)self _commitObjectsWithIdentifiers:v10 error:&v19];
    v12 = v19;
    v13 = v12;
    if (error)
    {
      v14 = v12;
      *error = v13;
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

- (BOOL)objectsHaveChangesToCommit:(id)commit
{
  v3 = [commit valueForKey:@"persistentObject"];
  v4 = [EKPersistentObject allObjectsWithChangesRelatedToObjects:v3];
  v5 = [v4 count] != 0;

  return v5;
}

+ (id)_filteredObjectsWithIdentifiers:(id)identifiers fromObjects:(id)objects excludingObjects:(id)excludingObjects
{
  v29 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  objectsCopy = objects;
  excludingObjectsCopy = excludingObjects;
  v10 = excludingObjectsCopy;
  if (identifiersCopy)
  {
    v11 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(objectsCopy, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = objectsCopy;
    v12 = objectsCopy;
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
          objectID = [v17 objectID];
          if ([identifiersCopy containsObject:objectID])
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
    objectsCopy = v23;
  }

  else if ([excludingObjectsCopy count])
  {
    v20 = [MEMORY[0x1E695DFA8] setWithArray:objectsCopy];
    [v20 minusSet:v10];
  }

  else
  {
    v20 = [MEMORY[0x1E695DFD8] setWithArray:objectsCopy];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)_filteredArrayWithIdentifiers:(id)identifiers fromObjects:(id)objects excludingObjects:(id)excludingObjects
{
  v29 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  objectsCopy = objects;
  excludingObjectsCopy = excludingObjects;
  if (identifiersCopy)
  {
    v22 = objectsCopy;
    v23 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = objectsCopy;
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
          objectID = [v15 objectID];
          if ([identifiersCopy containsObject:objectID])
          {
            frozenObject = [v15 frozenObject];
            v18 = [excludingObjectsCopy containsObject:frozenObject];

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
    objectsCopy = v22;
  }

  else
  {
    v19 = [objectsCopy copy];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (BOOL)_isConfirmedSuggestedEvent:(id)event uniqueKey:(id *)key
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[EKEvent alloc] initWithPersistentObject:eventCopy];
    suggestionInfo = [(EKEvent *)v6 suggestionInfo];

    if (suggestionInfo && (-[EKCalendarItem calendar](v6, "calendar"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isSuggestedEventCalendar], v8, (v9 & 1) == 0))
    {
      if (key)
      {
        suggestionInfo2 = [(EKEvent *)v6 suggestionInfo];
        *key = [suggestionInfo2 uniqueKey];
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

- (void)_clearPendingChangesForObjectsWithOwner:(id)owner
{
  ownedObjects = [owner ownedObjects];
  unsavedChangesQueue = self->_unsavedChangesQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__EKEventStore__clearPendingChangesForObjectsWithOwner___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = ownedObjects;
  v6 = ownedObjects;
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

- (BOOL)_commitObjectsWithIdentifiers:(id)identifiers error:(id *)error
{
  v164 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKEventStore _commitObjectsWithIdentifiers:error:];
  }

  if (error)
  {
    *error = 0;
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
    v6 = identifiersCopy;
    v120 = v6;
    v123 = &v133;
    v124 = &v127;
    dispatch_sync(unsavedChangesQueue, block);
    if ([v140[5] count] || objc_msgSend(v134[5], "count") || objc_msgSend(v128[5], "count"))
    {
      v57 = v6;
      errorCopy = error;
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
        attendees2 = 136315394;
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

              serviceForEvents = [(objc_class *)[(EKEventStore *)self _SGSuggestionsServiceClass] serviceForEvents];
              v108[0] = MEMORY[0x1E69E9820];
              v108[1] = 3221225472;
              v108[2] = __52__EKEventStore__commitObjectsWithIdentifiers_error___block_invoke_509;
              v108[3] = &unk_1E7800D38;
              v22 = serviceForEvents;
              v109 = v22;
              [v22 eventFromUniqueId:v19 withCompletion:v108];
            }

            v23 = [objc_opt_class() _iMIPScheduledEvent:v16];
            if (v23 && [EKiMIPCancel shouldSendEmailForEvent:v23 removedAttendees:0])
            {
              v24 = [EKiMIPCancel alloc];
              attendees = [v23 attendees];
              v26 = [(EKiMIPCancel *)v24 initWithEvent:v23 andAttendees:attendees];

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
                  attendees2 = [v37 attendees];
                  v41 = attendees2;
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
      if (errorCopy)
      {
        *errorCopy = v93[5];
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
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:30];
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

- (id)_markObjectsWithIdentifiersAsCommitted:(id)committed excludingObjects:(id)objects
{
  v21 = *MEMORY[0x1E69E9840];
  committedCopy = committed;
  objectsCopy = objects;
  dispatch_assert_queue_V2(self->_unsavedChangesQueue);
  v8 = [objc_opt_class() _filteredArrayWithIdentifiers:committedCopy fromObjects:self->_objectsPendingCommit excludingObjects:objectsCopy];
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

- (void)_fetchAndClearEventsNeedingGeocoding:(id *)geocoding withCommittedObjects:(id)objects
{
  v21 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  dispatch_assert_queue_V2(self->_unsavedChangesQueue);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = objectsCopy;
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
            if (geocoding)
            {
              v14 = *geocoding;
              if (!*geocoding)
              {
                v14 = objc_opt_new();
                *geocoding = v14;
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

- (void)ensureLoadedProperties:(id)properties forObjects:(id)objects
{
  v32 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  objectsCopy = objects;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [objectsCopy countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    selfCopy = self;
    v9 = 0;
    v10 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(objectsCopy);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = propertiesCopy;
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
                    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(objectsCopy, "count")}];
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

      v8 = [objectsCopy countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
    if (v9)
    {
      [(EKEventStore *)selfCopy _fetchProperties:v13 forObjects:v9];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_fetchProperties:(id)properties forObjects:(id)objects
{
  v35 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  objectsCopy = objects;
  if ([objectsCopy count])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__24;
    v32 = __Block_byref_object_dispose__24;
    v33 = 0;
    selfCopy = self;
    cADOperationProxySync = [(EKDaemonConnection *)self->_database CADOperationProxySync];
    v7 = [objectsCopy valueForKey:@"CADObjectID"];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __44__EKEventStore__fetchProperties_forObjects___block_invoke;
    v27[3] = &unk_1E7800918;
    v27[4] = &v28;
    [cADOperationProxySync CADObjects:v7 getPropertiesWithNames:propertiesCopy reply:v27];

    v8 = [v29[5] count];
    if (v8 != [objectsCopy count] && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
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
            v16 = [objectsCopy objectAtIndexedSubscript:v11];
            v17 = [v16 frozenObjectInStore:selfCopy];
            loadedValues = [v15 loadedValues];
            [v17 takeValuesForDefaultPropertyKeys:propertiesCopy values:loadedValues];
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

- (BOOL)isPendingIntegrationEvent:(id)event
{
  pendingIntegrationEvents = self->_pendingIntegrationEvents;
  uniqueID = [event uniqueID];
  v5 = [(NSMutableDictionary *)pendingIntegrationEvents objectForKeyedSubscript:uniqueID];
  LOBYTE(pendingIntegrationEvents) = v5 != 0;

  return pendingIntegrationEvents;
}

- (void)addPendingIntegrationEvent:(id)event
{
  eventCopy = event;
  uniqueID = [eventCopy uniqueID];
  v6 = EKLogHandle;
  if (uniqueID)
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
    v9 = uniqueID;
    v10 = eventCopy;
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

- (void)_addPendingIntegrationEvent:(id)event toArrayOfHashTables:(id)tables
{
  v27 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  tablesCopy = tables;
  objectID = [eventCopy objectID];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = tablesCopy;
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
      anyObject = [v13 anyObject];
      v15 = anyObject;
      if (eventCopy)
      {
        objectID2 = [anyObject objectID];
        v17 = [objectID2 isEqual:objectID];

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
  [v10 addObject:eventCopy];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)pendingIntegrationEventChangedIdentifierFrom:(id)from to:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v8 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v17 = fromCopy;
    v18 = 2114;
    v19 = toCopy;
    _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_INFO, "Updating pending integration event ID from %{public}@ to %{public}@", buf, 0x16u);
  }

  dbChangedQueue = self->_dbChangedQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__EKEventStore_pendingIntegrationEventChangedIdentifierFrom_to___block_invoke;
  block[3] = &unk_1E77FD7C8;
  block[4] = self;
  v14 = fromCopy;
  v15 = toCopy;
  v10 = toCopy;
  v11 = fromCopy;
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

- (void)removePendingIntegrationEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    privacySafeIntegrationEventDescription = [eventCopy privacySafeIntegrationEventDescription];
    *buf = 138543362;
    v18 = privacySafeIntegrationEventDescription;
    _os_log_impl(&dword_1A805E000, v6, OS_LOG_TYPE_INFO, "Removing pending integration event: %{public}@", buf, 0xCu);
  }

  dbChangedQueue = self->_dbChangedQueue;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __46__EKEventStore_removePendingIntegrationEvent___block_invoke;
  v14 = &unk_1E77FD580;
  v15 = eventCopy;
  selfCopy = self;
  v9 = eventCopy;
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
  anyObject = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (anyObject)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != anyObject; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 sourceType] == 6)
        {
          allCalendars = [v6 allCalendars];
          anyObject = [allCalendars anyObject];

          goto LABEL_11;
        }
      }

      anyObject = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (anyObject)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return anyObject;
}

- (void)requestIntegrationCatchupSync
{
  cADOperationProxy = [(EKDaemonConnection *)self->_database CADOperationProxy];
  [cADOperationProxy CADCatchUpIntegrationSyncingIfBehind:&__block_literal_global_527];
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

- (void)loadEventIDs:(id *)ds uniqueIDs:(id *)iDs calendar:(id)calendar
{
  calendarCopy = calendar;
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
  cADOperationProxySync = [(EKDaemonConnection *)self->_database CADOperationProxySync];
  cADObjectID = [calendarCopy CADObjectID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__EKEventStore_loadEventIDs_uniqueIDs_calendar___block_invoke;
  v11[3] = &unk_1E78008A8;
  v11[4] = &v18;
  v11[5] = &v12;
  [cADOperationProxySync CADDatabaseLoadEventsInCalendar:cADObjectID reply:v11];

  if (ds)
  {
    *ds = [EKObjectID EKObjectIDsFromCADObjectIDs:v19[5]];
  }

  if (iDs)
  {
    *iDs = v13[5];
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

- (id)redactedMimicSaveEvent:(id)event oldToNewObjectIDMap:(id)map serializedDictionary:(id)dictionary objectIDToChangeSetDictionaryMap:(id)dictionaryMap objectIDToPersistentDictionaryMap:(id)persistentDictionaryMap
{
  v58 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  mapCopy = map;
  dictionaryCopy = dictionary;
  dictionaryMapCopy = dictionaryMap;
  persistentDictionaryMapCopy = persistentDictionaryMap;
  v40 = eventCopy;
  if (!eventCopy)
  {
    v40 = [EKEvent eventWithEventStore:self];
  }

  v36 = persistentDictionaryMapCopy;
  v37 = objc_alloc_init(_TtC8EventKit26EKRemoteUIObjectSerializer);
  selfCopy = self;
  v41 = [(EKRemoteUIObjectSerializer *)v37 deserializedRepresentationWithSerializedDictionary:dictionaryCopy objectIDToChangeSetDictionaryMap:dictionaryMapCopy objectIDToPersistentDictionaryMap:persistentDictionaryMapCopy eventStore:self occurrenceDate:0];
  deserializedObject = [v41 deserializedObject];
  tempObjectIDMap = [v41 tempObjectIDMap];
  [(EKEventStore *)self _resetAndApplyChangesForRedactedMimicCommitOnObject:v40 usingModifiedObject:deserializedObject];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = tempObjectIDMap;
  v18 = [v17 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v18)
  {
    v19 = *v50;
    v20 = dictionaryCopy;
    v21 = dictionaryMapCopy;
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
        v25 = [mapCopy objectForKeyedSubscript:v23];
        if (v25)
        {
          [dictionary setObject:v25 forKeyedSubscript:v24];
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

        dictionaryCopy = v20;
        dictionaryMapCopy = v21;
      }

      v18 = [v17 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v18);
  }

  v27 = MEMORY[0x1E695DFD8];
  allValues = [v17 allValues];
  v29 = [v27 setWithArray:allValues];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v54 = __Block_byref_object_copy__24;
  v55 = __Block_byref_object_dispose__24;
  v56 = 0;
  unsavedChangesQueue = selfCopy->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __147__EKEventStore_redactedMimicSaveEvent_oldToNewObjectIDMap_serializedDictionary_objectIDToChangeSetDictionaryMap_objectIDToPersistentDictionaryMap___block_invoke;
  block[3] = &unk_1E77FD688;
  v48 = buf;
  block[4] = selfCopy;
  v31 = v29;
  v47 = v31;
  dispatch_sync(unsavedChangesQueue, block);
  [(EKEventStore *)selfCopy _mimicCommitWithOldToNewObjectIDMap:dictionary insertedObjectsToCommit:*(*&buf[8] + 40) updatedObjectsToCommit:0 deletedObjectsToCommit:0];
  v32 = selfCopy->_unsavedChangesQueue;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __147__EKEventStore_redactedMimicSaveEvent_oldToNewObjectIDMap_serializedDictionary_objectIDToChangeSetDictionaryMap_objectIDToPersistentDictionaryMap___block_invoke_2;
  v44[3] = &unk_1E77FD580;
  v44[4] = selfCopy;
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

- (void)_resetAndApplyChangesForRedactedMimicCommitOnObject:(id)object usingModifiedObject:(id)modifiedObject
{
  v68 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  modifiedObjectCopy = modifiedObject;
  [objectCopy setChangeSet:0];
  backingObject = [modifiedObjectCopy backingObject];
  [objectCopy setBackingObject:backingObject];

  [objectCopy _resetAfterUpdatingChangeSetOrBackingObjectWithForce:1];
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v9 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v60 objects:v67 count:16];
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
          objc_enumerationMutation(knownRelationshipSingleValueKeys);
        }

        v13 = *(*(&v60 + 1) + 8 * i);
        v14 = [objectCopy cachedMeltedObjectForSingleValueKey:v13];
        v15 = [modifiedObjectCopy cachedMeltedObjectForSingleValueKey:v13];
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

      v10 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v10);
  }

  v35 = knownRelationshipSingleValueKeys;
  [objc_opt_class() knownRelationshipMultiValueKeys];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v59 = 0u;
  v40 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v40)
  {
    v37 = *v57;
    v38 = modifiedObjectCopy;
    v39 = objectCopy;
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
        v20 = [objectCopy cachedMeltedObjectsForMultiValueKey:v19];
        v45 = [modifiedObjectCopy cachedMeltedObjectsForMultiValueKey:v19];
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
              objectID = [v22 objectID];
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
                  objectID2 = [v30 objectID];
                  v32 = [objectID2 isEqual:objectID];

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
        modifiedObjectCopy = v38;
        objectCopy = v39;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v40);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (id)mimicSaveAndCommitEvent:(id)event oldToNewObjectIDMap:(id)map insertedObjectIDs:(id)ds updatedObjectIDs:(id)iDs deletedObjectIDs:(id)objectIDs
{
  eventCopy = event;
  mapCopy = map;
  dsCopy = ds;
  iDsCopy = iDs;
  objectIDsCopy = objectIDs;
  if (!eventCopy)
  {
    eventCopy = [EKEvent eventWithEventStore:self];
  }

  [(EKEventStore *)self _resetForMimicCommitOnObject:eventCopy oldToNewObjectIDMap:mapCopy];
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
  v18 = dsCopy;
  v29 = v18;
  v33 = &v41;
  v19 = iDsCopy;
  v30 = v19;
  v34 = &v35;
  v20 = objectIDsCopy;
  v31 = v20;
  dispatch_sync(unsavedChangesQueue, block);
  [(EKEventStore *)self _mimicCommitWithOldToNewObjectIDMap:mapCopy insertedObjectsToCommit:v48[5] updatedObjectsToCommit:v42[5] deletedObjectsToCommit:v36[5]];
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

  return eventCopy;
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

- (void)_mimicCommitWithOldToNewObjectIDMap:(id)map insertedObjectsToCommit:(id)commit updatedObjectsToCommit:(id)toCommit deletedObjectsToCommit:(id)objectsToCommit
{
  mapCopy = map;
  commitCopy = commit;
  toCommitCopy = toCommit;
  objectsToCommitCopy = objectsToCommit;
  dbChangedQueue = self->_dbChangedQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__EKEventStore__mimicCommitWithOldToNewObjectIDMap_insertedObjectsToCommit_updatedObjectsToCommit_deletedObjectsToCommit___block_invoke;
  block[3] = &unk_1E77FDF98;
  block[4] = self;
  v20 = commitCopy;
  v21 = mapCopy;
  v22 = toCommitCopy;
  v23 = objectsToCommitCopy;
  v15 = objectsToCommitCopy;
  v16 = toCommitCopy;
  v17 = mapCopy;
  v18 = commitCopy;
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

- (void)_resetForMimicCommitOnObject:(id)object oldToNewObjectIDMap:(id)map
{
  v48 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  mapCopy = map;
  [objectCopy setChangeSet:0];
  backingObject = [objectCopy backingObject];
  objectID = [backingObject objectID];

  v10 = [mapCopy objectForKeyedSubscript:objectID];
  v30 = v10;
  v31 = objectID;
  if (v10)
  {
    backingObject2 = [(EKEventStore *)self registerFetchedObjectWithID:v10];
    [objectCopy setBackingObject:backingObject2];
  }

  else
  {
    backingObject2 = [objectCopy backingObject];
    [backingObject2 reset];
  }

  [objectCopy _resetAfterUpdatingChangeSetOrBackingObjectWithForce:1];
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v41 objects:v47 count:16];
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
          objc_enumerationMutation(knownRelationshipSingleValueKeys);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        v18 = [objectCopy cachedMeltedObjectForSingleValueKey:v17];
        if (v18 && ([objc_opt_class() isWeakRelationObject:v18 forKey:v17] & 1) == 0)
        {
          [(EKEventStore *)self _resetForMimicCommitOnObject:v18 oldToNewObjectIDMap:mapCopy];
        }
      }

      v14 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v14);
  }

  v29 = knownRelationshipSingleValueKeys;
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

        v23 = [objectCopy cachedMeltedObjectsForMultiValueKey:{*(*(&v37 + 1) + 8 * j), v29, v30, v31}];
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

              [(EKEventStore *)self _resetForMimicCommitOnObject:*(*(&v33 + 1) + 8 * k) oldToNewObjectIDMap:mapCopy];
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

- (void)waitUntilDatabaseUpdatedToTimestamp:(id)timestamp completion:(id)completion
{
  timestampCopy = timestamp;
  completionCopy = completion;
  if (timestampCopy)
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
    v14 = timestampCopy;
    v9 = completionCopy;
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

    completionCopy[2](completionCopy);
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

- (void)recordObjectRebaseWithOldObjectID:(id)d newObjectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__EKEventStore_recordObjectRebaseWithOldObjectID_newObjectID___block_invoke;
  block[3] = &unk_1E77FD7C8;
  block[4] = self;
  v12 = iDCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = iDCopy;
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

- (void)_validateEventPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (!predicateCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"predicate is nil"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"predicate was not created with EKEventStore methods"];
  }
}

- (void)_implicitUpgradeToFullAccessIfNeededWithReason:(int64_t)reason
{
  if ([(EKEventStore *)self eventAccessLevel]== 1 && _shouldUseLegacyAccessBehavior())
  {

    [(EKEventStore *)self requestAccessToEntityType:0 desiredFullAccess:1 testing:0 synchronous:1 reason:reason completion:0];
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
  runSynchronously = [v5 runSynchronously];
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

  return runSynchronously;
}

- (id)eventObjectIDsMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  [(EKEventStore *)self _validateEventPredicate:predicateCopy];
  v5 = [EKPredicateSearch searchWithEntityClass:objc_opt_class() predicate:predicateCopy store:self];
  fetchObjectIDs = [v5 fetchObjectIDs];
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKEventStore eventsMatchingPredicate:];
  }

  return fetchObjectIDs;
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

- (id)fetchEventsMatchingPredicate:(id)predicate resultHandler:(id)handler
{
  handlerCopy = handler;
  predicateCopy = predicate;
  [(EKEventStore *)self _validateEventPredicate:predicateCopy];
  v8 = [EKPredicateSearch searchWithEntityClass:objc_opt_class() predicate:predicateCopy store:self];

  v9 = _Block_copy(handlerCopy);
  v10 = [v8 startWithCompletion:v9 queue:self->_asynchronousSearchQueue];

  return v10;
}

- (id)objectsMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [EKPredicateSearch searchWithEntityClass:objc_opt_class() predicate:predicateCopy store:self];

  runSynchronously = [v5 runSynchronously];

  return runSynchronously;
}

- (void)fetchEventCountsInRange:(id)range inCalendars:(id)calendars exclusionOptions:(int64_t)options completion:(id)completion
{
  rangeCopy = range;
  completionCopy = completion;
  calendarsCopy = calendars;
  startDate = [rangeCopy startDate];
  endDate = [rangeCopy endDate];
  v15 = [(EKEventStore *)self predicateForEventsWithStartDate:startDate endDate:endDate calendars:calendarsCopy prefetchHint:0 exclusionOptions:options];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__EKEventStore_fetchEventCountsInRange_inCalendars_exclusionOptions_completion___block_invoke;
  v19[3] = &unk_1E7801000;
  v19[4] = self;
  v20 = rangeCopy;
  v21 = completionCopy;
  v16 = completionCopy;
  v17 = rangeCopy;
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

+ (void)_addDaysSpannedByEvent:(id)event toCountedSet:(id)set inRange:(id)range withNSCalendar:(id)calendar
{
  setCopy = set;
  calendarCopy = calendar;
  rangeCopy = range;
  eventCopy = event;
  v13 = [eventCopy startOfDayForStartDateInCalendar:calendarCopy];
  v14 = [eventCopy startOfDayForEndDateInCalendar:calendarCopy];

  startDate = [rangeCopy startDate];
  timeZone = [calendarCopy timeZone];
  v17 = [startDate dateForDayInTimeZone:timeZone];

  endDate = [rangeCopy endDate];

  timeZone2 = [calendarCopy timeZone];
  v20 = [endDate dateForDayInTimeZone:timeZone2];

  v21 = [v13 laterDate:v17];
  v22 = [v14 earlierDate:v20];
  v23 = objc_opt_new();
  [v23 setHour:0];
  [v23 setMinute:0];
  [v23 setSecond:0];
  [setCopy addObject:v21];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __75__EKEventStore__addDaysSpannedByEvent_toCountedSet_inRange_withNSCalendar___block_invoke;
  v26[3] = &unk_1E7801028;
  v27 = v22;
  v28 = setCopy;
  v24 = setCopy;
  v25 = v22;
  [calendarCopy enumerateDatesStartingAfterDate:v21 matchingComponents:v23 options:1024 usingBlock:v26];
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

- (id)nextEventWithCalendarIdentifiers:(id)identifiers exclusionOptions:(int64_t)options
{
  v22 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = identifiersCopy;
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

  v14 = [(EKEventStore *)self nextEventWithCalendars:v7 exclusionOptions:options];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)nextEventWithCalendars:(id)calendars exclusionOptions:(int64_t)options
{
  v4 = [(EKEventStore *)self nextEventsWithCalendars:calendars limit:1 exclusionOptions:options];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)nextEventsWithCalendars:(id)calendars limit:(unint64_t)limit exclusionOptions:(int64_t)options
{
  calendarsCopy = calendars;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__EKEventStore_nextEventsWithCalendars_limit_exclusionOptions___block_invoke;
  v12[3] = &unk_1E7801050;
  v12[4] = self;
  v13 = calendarsCopy;
  optionsCopy = options;
  v9 = calendarsCopy;
  v10 = [(EKEventStore *)self _nextEventsWithFetchBlock:v12 steps:&unk_1F1B6B248 limit:limit];

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

- (id)_nextEventsWithFetchBlock:(id)block steps:(id)steps limit:(unint64_t)limit
{
  v35 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  stepsCopy = steps;
  v8 = objc_opt_new();
  calSimulatedDateForNow = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  v26 = calSimulatedDateForNow;
  if ([stepsCopy count])
  {
    v10 = 0;
    v28 = stepsCopy;
    v11 = calSimulatedDateForNow;
    while (1)
    {
      v12 = [stepsCopy objectAtIndexedSubscript:{v10, v26}];
      integerValue = [v12 integerValue];

      v14 = [MEMORY[0x1E6992F70] rangeWithStartDate:v11 duration:(86400 * integerValue)];
      v15 = blockCopy[2](blockCopy, v14);
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
          if ([v8 count] >= limit)
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

      if ([v8 count] == limit)
      {
        break;
      }

      calSimulatedDateForNow = [v14 endDate];

      ++v10;
      stepsCopy = v28;
      v11 = calSimulatedDateForNow;
      if ([v28 count] <= v10)
      {
        goto LABEL_15;
      }
    }

    calSimulatedDateForNow = v11;
    stepsCopy = v28;
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

- (id)alarmWithUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__24;
    v17 = __Block_byref_object_dispose__24;
    v18 = 0;
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__EKEventStore_alarmWithUUID___block_invoke;
    v9[3] = &unk_1E7800E48;
    v10 = dCopy;
    selfCopy = self;
    v12 = &v13;
    [cADOperationProxySync CADDatabaseGetAlarmWithUUID:v10 reply:v9];

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

- (id)alarmWithExternalID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__24;
    v17 = __Block_byref_object_dispose__24;
    v18 = 0;
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__EKEventStore_alarmWithExternalID___block_invoke;
    v9[3] = &unk_1E7800E48;
    v10 = dCopy;
    selfCopy = self;
    v12 = &v13;
    [cADOperationProxySync CADDatabaseGetAlarmWithExternalID:v10 reply:v9];

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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__EKEventStore_alarmOccurrencesFromAlarmCache__block_invoke;
  v6[3] = &unk_1E7800918;
  v6[4] = &v7;
  [cADOperationProxySync CADDatabaseGetAlarmOccurrencesFromAlarmCacheWithReply:v6];

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

+ (id)calendarObjectIDsForPredicate:(id)predicate
{
  v24 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  if (predicateCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(predicateCopy, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = predicateCopy;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v6)
    {
LABEL_15:

      goto LABEL_18;
    }

    v7 = v6;
    v18 = predicateCopy;
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
        backingObject = [v11 backingObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          cADObjectID = [v11 CADObjectID];
          [v4 addObject:cADObjectID];
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
      predicateCopy = v18;
      if ([v4 count])
      {
        goto LABEL_18;
      }

      v15 = objc_alloc(MEMORY[0x1E6992DE0]);
      v5 = [v15 initWithEntityType:1 entityID:0x80000000 databaseID:*MEMORY[0x1E6992E18]];
      [v4 addObject:v5];
      goto LABEL_15;
    }

    predicateCopy = v18;
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
  timeZone = [(EKEventStore *)self timeZone];
  v15 = [v13 predicateWithStartDate:v8 endDate:v11 timeZone:timeZone calendars:v12 propertyLoadMode:_predicatePropertyLoadMode];

  return v15;
}

- (id)predicateForEventsWithStartDate:(id)date endDate:(id)endDate uniqueID:(id)d calendars:(id)calendars
{
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  calendarsCopy = calendars;
  if (dateCopy)
  {
    if (endDateCopy)
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

    if (endDateCopy)
    {
      goto LABEL_3;
    }
  }

  v23 = MEMORY[0x1E695DF30];
  v24 = *MEMORY[0x1E695D940];
  v25 = _NSMethodExceptionProem();
  [v23 raise:v24 format:{@"%@: endDate is nil", v25}];

LABEL_3:
  v26 = endDateCopy;
  restrictDateRange(dateCopy, &v26);
  v14 = v26;

  v15 = [EKEventStore calendarObjectIDsForPredicate:calendarsCopy];
  v16 = MEMORY[0x1E6992340];
  timeZone = [(EKEventStore *)self timeZone];
  v18 = [v16 predicateWithStartDate:dateCopy endDate:v14 timeZone:timeZone eventUUID:dCopy calendars:v15];

  return v18;
}

- (id)predicateForEventsWithStartDate:(id)date endDate:(id)endDate calendars:(id)calendars loadDefaultProperties:(BOOL)properties
{
  propertiesCopy = properties;
  dateCopy = date;
  endDateCopy = endDate;
  calendarsCopy = calendars;
  if (dateCopy)
  {
    if (endDateCopy)
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

    if (endDateCopy)
    {
      goto LABEL_3;
    }
  }

  v23 = MEMORY[0x1E695DF30];
  v24 = *MEMORY[0x1E695D940];
  v25 = _NSMethodExceptionProem();
  [v23 raise:v24 format:{@"%@: endDate is nil", v25}];

LABEL_3:
  v26 = endDateCopy;
  restrictDateRange(dateCopy, &v26);
  v13 = v26;

  v14 = [EKEventStore calendarObjectIDsForPredicate:calendarsCopy];
  if (propertiesCopy)
  {
    v15 = _predicatePropertyLoadMode;
  }

  else
  {
    v15 = 0;
  }

  v16 = MEMORY[0x1E6992340];
  timeZone = [(EKEventStore *)self timeZone];
  v18 = [v16 predicateWithStartDate:dateCopy endDate:v13 timeZone:timeZone calendars:v14 propertyLoadMode:v15];

  return v18;
}

- (id)predicateForAssistantEventSearchWithTimeZone:(id)zone startDate:(id)date endDate:(id)endDate title:(id)title location:(id)location notes:(id)notes participants:(id)participants calendars:(id)self0 limit:(int64_t)self1
{
  v17 = MEMORY[0x1E6992350];
  calendarsCopy = calendars;
  participantsCopy = participants;
  notesCopy = notes;
  locationCopy = location;
  titleCopy = title;
  endDateCopy = endDate;
  dateCopy = date;
  zoneCopy = zone;
  v26 = [[v17 alloc] initWithTimeZone:zoneCopy startDate:dateCopy endDate:endDateCopy title:titleCopy location:locationCopy notes:notesCopy participants:participantsCopy limit:limit];

  v27 = [EKEventStore calendarObjectIDsForPredicate:calendarsCopy];

  [v26 setCalendars:v27];

  return v26;
}

- (id)predicateForMasterEventsInCalendars:(id)calendars
{
  v3 = [EKEventStore calendarObjectIDsForPredicate:calendars];
  v4 = [MEMORY[0x1E6992410] predicateWithCalendarIDs:v3];

  return v4;
}

- (id)predicateForScheduleAgentClientEventsInCalendar:(id)calendar
{
  v8[1] = *MEMORY[0x1E69E9840];
  cADObjectID = [calendar CADObjectID];
  v8[0] = cADObjectID;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  v5 = [MEMORY[0x1E6992418] predicateWithCalendarIDs:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)hasImmediatelyEligibleTravelEvents
{
  v19 = *MEMORY[0x1E69E9840];
  calSimulatedDateForNow = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v5 = [(EKEventStore *)self calendarsForEntityType:0];
  [(EKEventStore *)self travelEligibleEventsInCalendars:v5 startDate:calSimulatedDateForNow endDate:distantFuture];
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

        preferredLocation = [*(*(&v14 + 1) + 8 * i) preferredLocation];
        hasKnownSpatialData = [preferredLocation hasKnownSpatialData];

        if (hasKnownSpatialData)
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

- (id)travelEligibleEventsInCalendars:(id)calendars startDate:(id)date endDate:(id)endDate
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = [(EKEventStore *)self predicateForPotentialTravelEventsInCalendars:calendars startDate:date endDate:endDate];
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

- (id)predicateForPotentialTravelEventsInCalendars:(id)calendars startDate:(id)date endDate:(id)endDate
{
  calendarsCopy = calendars;
  dateCopy = date;
  endDateCopy = endDate;
  if (!dateCopy && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore predicateForPotentialTravelEventsInCalendars:startDate:endDate:];
    if (endDateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (endDateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore predicateForPotentialTravelEventsInCalendars:startDate:endDate:];
  }

LABEL_6:
  v14 = endDateCopy;
  restrictDateRange(dateCopy, &v14);
  v10 = v14;

  v11 = [EKEventStore calendarObjectIDsForPredicate:calendarsCopy];
  v12 = [objc_alloc(MEMORY[0x1E69923D0]) initWithCalendarIDs:v11 startDate:dateCopy endDate:v10];

  return v12;
}

- (id)predicateForUpNextEventsInCalendars:(id)calendars startDate:(id)date endDate:(id)endDate startDateRestrictionThreshold:(double)threshold
{
  calendarsCopy = calendars;
  dateCopy = date;
  endDateCopy = endDate;
  if (!dateCopy && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore predicateForUpNextEventsInCalendars:startDate:endDate:startDateRestrictionThreshold:];
    if (endDateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (endDateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore predicateForUpNextEventsInCalendars:startDate:endDate:startDateRestrictionThreshold:];
  }

LABEL_6:
  v16 = endDateCopy;
  restrictDateRange(dateCopy, &v16);
  v12 = v16;

  v13 = [EKEventStore calendarObjectIDsForPredicate:calendarsCopy];
  v14 = [objc_alloc(MEMORY[0x1E69923E8]) initWithCalendarIDs:v13 startDate:dateCopy endDate:v12];

  [v14 setStartDateRestrictionThreshold:threshold];

  return v14;
}

- (id)predicateForNaturalLanguageSuggestedEventsWithSearchString:(id)string
{
  v4 = MEMORY[0x1E6992378];
  stringCopy = string;
  v6 = [v4 alloc];
  timeZone = [(EKEventStore *)self timeZone];
  v8 = [v6 initWithSearchString:stringCopy timeZone:timeZone];

  return v8;
}

- (id)predicateForNaturalLanguageSuggestedEventsWithSearchString:(id)string startDate:(id)date
{
  stringCopy = string;
  dateCopy = date;
  if (!dateCopy)
  {
    dateCopy = objc_opt_new();
  }

  v8 = objc_alloc(MEMORY[0x1E6992378]);
  timeZone = [(EKEventStore *)self timeZone];
  v10 = [v8 initWithSearchString:stringCopy startDate:dateCopy timeZone:timeZone];

  return v10;
}

- (id)predicateForEventCreatedFromSuggestionWithOpaqueKey:(id)key
{
  v3 = MEMORY[0x1E6992338];
  keyCopy = key;
  v5 = [[v3 alloc] initWithOpaqueKey:keyCopy];

  return v5;
}

- (id)predicateForEventsCreatedFromSuggestionWithExtractionGroupIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E6992338];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithExtractionGroupIdentifier:identifierCopy];

  return v5;
}

- (id)predicateForEventsWithStartDate:(id)date endDate:(id)endDate calendars:(id)calendars matchingContacts:(id)contacts
{
  dateCopy = date;
  endDateCopy = endDate;
  calendarsCopy = calendars;
  contactsCopy = contacts;
  v14 = [EKEventStore calendarObjectIDsForPredicate:calendarsCopy];
  if ([contactsCopy count])
  {
    v15 = [objc_alloc(MEMORY[0x1E6992320]) initWithCalendarIDs:v14 startDate:dateCopy endDate:endDateCopy contacts:contactsCopy];
  }

  else
  {
    v15 = [(EKEventStore *)self predicateForEventsWithStartDate:dateCopy endDate:endDateCopy calendars:calendarsCopy];
  }

  v16 = v15;

  return v16;
}

- (id)predicateForCalendarItemsOfType:(unint64_t)type inCalendar:(id)calendar
{
  v5 = MEMORY[0x1E69923A8];
  calendarCopy = calendar;
  v7 = [v5 alloc];
  if (type == 2)
  {
    v8 = 3;
  }

  else
  {
    v8 = 101;
  }

  if (type == 1)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  cADObjectID = [calendarCopy CADObjectID];

  v11 = [v7 initWithEntityType:v9 filters:0 calendar:cADObjectID];

  return v11;
}

- (id)predicateForMasterEventsWithExternalTrackingStatusInCalendar:(id)calendar
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69923A0];
  calendarCopy = calendar;
  v5 = [[v3 alloc] initWithProperty:0 comparison:1 integerValue:0];
  v6 = objc_alloc(MEMORY[0x1E69923A8]);
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  cADObjectID = [calendarCopy CADObjectID];

  v9 = [v6 initWithEntityType:2 filters:v7 calendar:cADObjectID];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)predicateForCalendarItemsOfType:(unint64_t)type withUniqueIdentifier:(id)identifier inCalendar:(id)calendar
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69923A0];
  calendarCopy = calendar;
  identifierCopy = identifier;
  v10 = [[v7 alloc] initWithProperty:1 comparison:0 stringValue:identifierCopy];

  v11 = objc_alloc(MEMORY[0x1E69923A8]);
  if (type == 2)
  {
    v12 = 3;
  }

  else
  {
    v12 = 101;
  }

  if (type == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  v19[0] = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  cADObjectID = [calendarCopy CADObjectID];

  v16 = [v11 initWithEntityType:v13 filters:v14 calendar:cADObjectID];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)predicateForCalendarItemsOfType:(unint64_t)type withUniqueIdentifier:(id)identifier inSource:(id)source
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69923A0];
  sourceCopy = source;
  identifierCopy = identifier;
  v10 = [[v7 alloc] initWithProperty:1 comparison:0 stringValue:identifierCopy];

  v11 = objc_alloc(MEMORY[0x1E69923A8]);
  if (type == 2)
  {
    v12 = 3;
  }

  else
  {
    v12 = 101;
  }

  if (type == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  v19[0] = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  cADObjectID = [sourceCopy CADObjectID];

  v16 = [v11 initWithEntityType:v13 filters:v14 source:cADObjectID];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)predicateForCalendarItemsOfType:(unint64_t)type withExternalID:(id)d inCalendar:(id)calendar
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69923A0];
  calendarCopy = calendar;
  dCopy = d;
  v10 = [[v7 alloc] initWithProperty:3 comparison:0 stringValue:dCopy];

  v11 = objc_alloc(MEMORY[0x1E69923A8]);
  if (type == 2)
  {
    v12 = 3;
  }

  else
  {
    v12 = 101;
  }

  if (type == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  v19[0] = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  cADObjectID = [calendarCopy CADObjectID];

  v16 = [v11 initWithEntityType:v13 filters:v14 calendar:cADObjectID];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)predicateForCalendarItemsOfType:(unint64_t)type withExternalID:(id)d inSource:(id)source
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69923A0];
  sourceCopy = source;
  dCopy = d;
  v10 = [[v7 alloc] initWithProperty:3 comparison:0 stringValue:dCopy];

  v11 = objc_alloc(MEMORY[0x1E69923A8]);
  if (type == 2)
  {
    v12 = 3;
  }

  else
  {
    v12 = 101;
  }

  if (type == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  v19[0] = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  cADObjectID = [sourceCopy CADObjectID];

  v16 = [v11 initWithEntityType:v13 filters:v14 source:cADObjectID];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)predicateForEventsWithAttendeesInCalendar:(id)calendar
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69923A0];
  calendarCopy = calendar;
  v5 = [[v3 alloc] initWithProperty:12 comparison:0 integerValue:1];
  v6 = objc_alloc(MEMORY[0x1E69923A8]);
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  cADObjectID = [calendarCopy CADObjectID];

  v9 = [v6 initWithEntityType:2 filters:v7 calendar:cADObjectID];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)predicateForMasterEventsWithStartDate:(id)date title:(id)title inCalendar:(id)calendar
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69923A0];
  calendarCopy = calendar;
  titleCopy = title;
  dateCopy = date;
  v11 = [[v7 alloc] initWithProperty:4 comparison:0 stringValue:titleCopy];

  v12 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:5 comparison:0 dateValue:dateCopy];
  v13 = objc_alloc(MEMORY[0x1E69923A8]);
  v19[0] = v11;
  v19[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  cADObjectID = [calendarCopy CADObjectID];

  v16 = [v13 initWithEntityType:2 filters:v14 calendar:cADObjectID];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)predicateForMasterEventsInCalendar:(id)calendar
{
  v3 = MEMORY[0x1E69923A8];
  calendarCopy = calendar;
  v5 = [v3 alloc];
  cADObjectID = [calendarCopy CADObjectID];

  v7 = [v5 initWithEntityType:2 filters:MEMORY[0x1E695E0F0] calendar:cADObjectID];

  return v7;
}

- (id)predicateForRandomMasterEventsWithStartDate:(id)date endDate:(id)endDate needToHaveAttendee:(BOOL)attendee needToHaveLocation:(BOOL)location allDay:(BOOL)day filteredOutTitles:(id)titles limit:(int64_t)limit calendars:(id)self0
{
  dayCopy = day;
  locationCopy = location;
  attendeeCopy = attendee;
  v57[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  titlesCopy = titles;
  calendarsCopy = calendars;
  v18 = objc_opt_new();
  if (attendeeCopy)
  {
    v19 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:12 comparison:0 integerValue:1];
    [v18 addObject:v19];
  }

  if (locationCopy)
  {
    v20 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:13 comparison:1 integerValue:0];
    [v18 addObject:v20];
  }

  v45 = endDateCopy;
  v46 = dateCopy;
  if (dateCopy && endDateCopy)
  {
    v21 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:5 comparison:2 dateValue:endDateCopy];
    v22 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:6 comparison:4 dateValue:dateCopy];
    v23 = objc_alloc(MEMORY[0x1E6992318]);
    v57[0] = v21;
    v57[1] = v22;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
    v25 = [v23 initWithFilters:v24 operation:0];

    [v18 addObject:v25];
  }

  v43 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:14 comparison:0 integerValue:dayCopy];
  [v18 addObject:?];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v26 = titlesCopy;
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
  v32 = calendarsCopy;
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

        cADObjectID = [v38 CADObjectID];
        [v35 addObject:cADObjectID];
      }

      v34 = [v32 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v34);
  }

  else
  {
    v35 = 0;
  }

  v40 = [objc_alloc(MEMORY[0x1E69923A8]) initWithEntityType:2 filters:v18 calendars:v35 limit:limit randomize:1];
  v41 = *MEMORY[0x1E69E9840];

  return v40;
}

- (id)predicateForEventsInSubscribedCalendar:(id)calendar
{
  v3 = MEMORY[0x1E69923C8];
  calendarCopy = calendar;
  v5 = [v3 alloc];
  cADObjectID = [calendarCopy CADObjectID];

  v7 = [v5 initWithCalendar:cADObjectID];

  return v7;
}

- (id)predicateForMasterEventsWithOccurrencesWithStartDate:(id)date endDate:(id)endDate inCalendar:(id)calendar
{
  v33[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69923A0];
  calendarCopy = calendar;
  endDateCopy = endDate;
  dateCopy = date;
  v28 = [[v7 alloc] initWithProperty:10 comparison:0 integerValue:1];
  v11 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:5 comparison:2 dateValue:endDateCopy];
  v29 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:6 comparison:4 dateValue:dateCopy];
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
  cADObjectID = [calendarCopy CADObjectID];

  v24 = [v21 initWithEntityType:2 filters:v22 calendar:cADObjectID];
  v25 = [objc_alloc(MEMORY[0x1E6992348]) initWithPredicate:v24 limitWithStartDate:dateCopy endDate:endDateCopy mustStartInInterval:0];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)predicateForMasterEventsWithInvitationsAndOccurrencesAfter:(id)after inCalendar:(id)calendar
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69923A0];
  calendarCopy = calendar;
  afterCopy = after;
  v8 = [[v5 alloc] initWithProperty:10 comparison:0 integerValue:1];
  v9 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:9 comparison:1 integerValue:0];
  v10 = [objc_alloc(MEMORY[0x1E69923A0]) initWithProperty:5 comparison:5 dateValue:afterCopy];
  v11 = objc_alloc(MEMORY[0x1E6992318]);
  v24[0] = v8;
  v24[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v13 = [v11 initWithFilters:v12 operation:1];

  v14 = objc_alloc(MEMORY[0x1E69923A8]);
  v23[0] = v9;
  v23[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  cADObjectID = [calendarCopy CADObjectID];

  v17 = [v14 initWithEntityType:2 filters:v15 calendar:cADObjectID];
  v18 = objc_alloc(MEMORY[0x1E6992348]);
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v20 = [v18 initWithPredicate:v17 limitWithStartDate:afterCopy endDate:distantFuture mustStartInInterval:0];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)predicateForNonrecurringEventsWithStartDate:(id)date endDate:(id)endDate calendars:(id)calendars
{
  endDateCopy = endDate;
  dateCopy = date;
  v9 = [EKEventStore calendarObjectIDsForPredicate:calendars];
  v10 = [objc_alloc(MEMORY[0x1E6992380]) initWithStartDate:dateCopy endDate:endDateCopy calendarIDs:v9];

  return v10;
}

- (unint64_t)timeToLeaveLocationAuthorizationStatus
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__EKEventStore_timeToLeaveLocationAuthorizationStatus__block_invoke;
  v6[3] = &unk_1E7800880;
  v6[4] = &v7;
  [cADOperationProxySync CADDatabaseGetTTLLocationAuthorizationStatus:v6];

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

- (id)predicateForEventsWithConferenceURL:(id)l limit:(int64_t)limit
{
  v5 = MEMORY[0x1E6992358];
  lCopy = l;
  v7 = [[v5 alloc] initWithURL:lCopy limit:limit];

  [v7 setCalendars:MEMORY[0x1E695E0F0]];

  return v7;
}

- (int64_t)registerForDetailedChangeTrackingInSource:(id)source error:(id *)error
{
  sourceCopy = source;
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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  cADObjectID = [sourceCopy CADObjectID];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__EKEventStore_registerForDetailedChangeTrackingInSource_error___block_invoke;
  v12[3] = &unk_1E7800B50;
  v12[4] = &v13;
  v12[5] = &v19;
  [cADOperationProxySync CADDatabaseRegisterForDetailedChangeTrackingInSource:cADObjectID reply:v12];

  if (error)
  {
    *error = v14[5];
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

- (BOOL)unregisterForDetailedChangeTracking:(id *)tracking
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__24;
  v13 = __Block_byref_object_dispose__24;
  v14 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__EKEventStore_unregisterForDetailedChangeTracking___block_invoke;
  v8[3] = &unk_1E77FD310;
  v8[4] = &v9;
  [cADOperationProxySync CADDatabaseUnregisterForDetailedChangeTracking:v8];

  if (tracking)
  {
    *tracking = v10[5];
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

- (void)fetchChangedObjectIDsSinceToken:(int64_t)token resultHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(EKEventStore *)self connection];
  cADOperationProxy = [connection CADOperationProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__EKEventStore_fetchChangedObjectIDsSinceToken_resultHandler___block_invoke;
  v9[3] = &unk_1E78010C8;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [cADOperationProxy CADDatabaseFetchChangedObjectIDs:v9];
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

- (void)changedObjectIDsSinceToken:(int64_t)token resultHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__EKEventStore_changedObjectIDsSinceToken_resultHandler___block_invoke;
  v7[3] = &unk_1E7801078;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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

- (void)fetchChangedObjectIDs:(id)ds
{
  dsCopy = ds;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__EKEventStore_fetchChangedObjectIDs___block_invoke;
  v8[3] = &unk_1E78010C8;
  v8[4] = self;
  v9 = dsCopy;
  v7 = dsCopy;
  [cADOperationProxySync CADDatabaseFetchChangedObjectIDs:v8];
}

- (void)_processChangedObjectIDsWithErrorCode:(int)code changesTruncated:(BOOL)truncated latestToken:(id)token changeData:(id)data resultHandler:(id)handler
{
  truncatedCopy = truncated;
  v83 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  dataCopy = data;
  handlerCopy = handler;
  if (code)
  {
    v14 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore _processChangedObjectIDsWithErrorCode:v14 changesTruncated:? latestToken:? changeData:? resultHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, 0);
    goto LABEL_52;
  }

  v55 = truncatedCopy;
  v56 = dataCopy;
  v57 = tokenCopy;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v15 = dataCopy;
  v65 = [(EKSequenceToken *)v15 countByEnumeratingWithState:&v70 objects:v82 count:16];
  v61 = handlerCopy;
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
      unsignedIntegerValue = [v24 unsignedIntegerValue];

      v26 = [v22 objectForKeyedSubscript:@"updates"];
      unsignedIntegerValue2 = [v26 unsignedIntegerValue];

      v67 = v22;
      v28 = [v22 objectForKeyedSubscript:@"deletes"];
      unsignedIntegerValue3 = [v28 unsignedIntegerValue];

      intValue = [v21 intValue];
      v31 = [EKObjectID EKObjectIDsFromData:v23 range:0 databaseID:unsignedIntegerValue, intValue];
      v32 = [EKObjectID EKObjectIDsFromData:v23 range:unsignedIntegerValue databaseID:unsignedIntegerValue2, intValue];
      v33 = v23;
      v34 = [EKObjectID EKObjectIDsFromData:v23 range:unsignedIntegerValue2 + unsignedIntegerValue databaseID:unsignedIntegerValue3, intValue];
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
          v75 = unsignedIntegerValue;
          v76 = 2048;
          v77 = unsignedIntegerValue2;
          v78 = 2048;
          v79 = unsignedIntegerValue3;
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
        dataCopy = v56;
        tokenCopy = v57;
        handlerCopy = v61;
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

  tokenCopy = v57;
  if (v57)
  {
    v15 = [[EKSequenceToken alloc] initWithCADSequenceToken:v57];
  }

  else
  {
    v15 = 0;
  }

  handlerCopy = v61;
  (*(v61 + 2))(v61, v55, v15, v19, v18, v17);
  dataCopy = v56;
LABEL_51:

LABEL_52:
  v53 = *MEMORY[0x1E69E9840];
}

- (void)markChangedObjectIDsConsumedUpToToken:(int64_t)token
{
  lastSequenceToken = self->_lastSequenceToken;
  if (lastSequenceToken)
  {
    legacyToken = [(EKSequenceToken *)lastSequenceToken legacyToken];
  }

  else
  {
    legacyToken = -1;
  }

  if (legacyToken != token && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEventStore markChangedObjectIDsConsumedUpToToken:];
  }

  if (self->_lastSequenceToken)
  {
    [(EKEventStore *)self consumeAllChangesUpToToken:?];
  }
}

- (void)consumeAllChangesUpToToken:(id)token
{
  tokenCopy = token;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  cADToken = [tokenCopy CADToken];

  [cADOperationProxySync CADDatabaseMarkChangedObjectIDsConsumedUpToSequenceToken:cADToken reply:&__block_literal_global_603];
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

- (BOOL)consumeAllChangesUpToToken:(id)token except:(id)except error:(id *)error
{
  tokenCopy = token;
  exceptCopy = except;
  v10 = [EKObjectChange CADObjectChangeIDsFromEKObjectChanges:exceptCopy];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  cADToken = [tokenCopy CADToken];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__EKEventStore_consumeAllChangesUpToToken_except_error___block_invoke;
  v16[3] = &unk_1E77FD310;
  v16[4] = &v17;
  [cADOperationProxySync CADDatabaseConsumeAllChangesUpToToken:cADToken except:v10 reply:v16];

  v14 = *(v18 + 6);
  if (error && v14)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithCADResult:*(v18 + 6)];
  }

  _Block_object_dispose(&v17, 8);

  return v14 == 0;
}

- (BOOL)markIndividualChangesConsumed:(id)consumed error:(id *)error
{
  consumedCopy = consumed;
  v7 = [EKObjectChange CADObjectChangeIDsFromEKObjectChanges:consumedCopy];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__EKEventStore_markIndividualChangesConsumed_error___block_invoke;
  v12[3] = &unk_1E77FD310;
  v12[4] = &v13;
  [cADOperationProxySync CADDatabaseMarkIndividualChangesConsumed:v7 reply:v12];

  v10 = *(v14 + 6);
  if (error && v10)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithCADResult:*(v14 + 6)];
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
  calendarSourcesAndDefaultsQueue = [(EKEventStore *)self calendarSourcesAndDefaultsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__EKEventStore_defaultTimedAlarmOffset__block_invoke;
  v6[3] = &unk_1E77FD440;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(calendarSourcesAndDefaultsQueue, v6);

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
  calendarSourcesAndDefaultsQueue = [(EKEventStore *)self calendarSourcesAndDefaultsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__EKEventStore_defaultAllDayAlarmOffset__block_invoke;
  v6[3] = &unk_1E77FD440;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(calendarSourcesAndDefaultsQueue, v6);

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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  [cADOperationProxySync CADPurgeChangeTrackingReply:&__block_literal_global_610];
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

- (void)cacheValidationStatusForAddress:(id)address status:(unint64_t)status
{
  addressCopy = address;
  cachedValidatedAddresses = self->_cachedValidatedAddresses;
  if (!cachedValidatedAddresses)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v8 = self->_cachedValidatedAddresses;
    self->_cachedValidatedAddresses = v7;

    cachedValidatedAddresses = self->_cachedValidatedAddresses;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:status];
  [(NSMutableDictionary *)cachedValidatedAddresses setObject:v9 forKey:addressCopy];
}

- (unint64_t)addressValidationStatus:(id)status
{
  v3 = [(NSMutableDictionary *)self->_cachedValidatedAddresses objectForKey:status];
  intValue = [v3 intValue];

  return intValue;
}

- (id)cachedConstraintsForSource:(id)source
{
  sourceCopy = source;
  if (-[EKEventStore returnEventResults](self, "returnEventResults") && [sourceCopy allowsEvents])
  {
    goto LABEL_7;
  }

  if (-[EKEventStore returnReminderResults](self, "returnReminderResults") && [sourceCopy allowsTasks])
  {
    v5 = [(EKReminderStore *)self->_reminderStore cachedConstraintsForSource:sourceCopy];
    goto LABEL_9;
  }

  if ([sourceCopy isPrimaryLocalSource])
  {
LABEL_7:
    cADObjectID = [sourceCopy CADObjectID];
    v5 = [(EKEventStore *)self cachedConstraintsForEventOrSourceWithCADObjectID:cADObjectID];
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  remAccountObjectID = [sourceCopy remAccountObjectID];

  if (remAccountObjectID)
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

- (id)cachedConstraintsForCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (-[EKEventStore eventAccessLevel](self, "eventAccessLevel") != 1 || ![calendarCopy allowEvents])
  {
    source = [calendarCopy source];
    v7 = [(EKEventStore *)self cachedConstraintsForSource:source];
LABEL_8:
    v5 = v7;

    goto LABEL_9;
  }

  if (![calendarCopy isNew])
  {
    source = [calendarCopy CADObjectID];
    v7 = [(EKEventStore *)self cachedConstraintsForEventOrSourceWithCADObjectID:source];
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

- (id)cachedConstraintsForReminder:(id)reminder
{
  calendar = [reminder calendar];
  source = [calendar source];
  v6 = [(EKEventStore *)self cachedConstraintsForSource:source];

  return v6;
}

- (id)cachedConstraintsForEvent:(id)event
{
  eventCopy = event;
  calendar = [eventCopy calendar];

  if (calendar)
  {
    if ([(EKEventStore *)self eventAccessLevel]== 1)
    {
      cADObjectID = [eventCopy CADObjectID];
      rebasedFrom = [eventCopy rebasedFrom];
      while ([cADObjectID isTemporary] && rebasedFrom)
      {
        v8 = rebasedFrom;

        objectsPendingCommit = [(EKEventStore *)self objectsPendingCommit];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __42__EKEventStore_cachedConstraintsForEvent___block_invoke;
        v14[3] = &unk_1E7800E98;
        v15 = v8;
        cADObjectID = v8;
        v10 = [objectsPendingCommit CalFirstObjectPassingTest:v14];

        rebasedFrom = [v10 rebasedFrom];
      }

      v11 = [(EKEventStore *)self cachedConstraintsForEventOrSourceWithCADObjectID:cADObjectID];
    }

    else
    {
      cADObjectID = [eventCopy calendar];
      rebasedFrom = [cADObjectID source];
      v11 = [(EKEventStore *)self cachedConstraintsForSource:rebasedFrom];
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

- (id)cachedConstraintsForEventOrSourceWithCADObjectID:(id)d
{
  dCopy = d;
  if ([dCopy entityType] == 2 && -[EKEventStore eventAccessLevel](self, "eventAccessLevel") != 1)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore cachedConstraintsForEventOrSourceWithCADObjectID:];
    }

    v6 = 0;
  }

  else
  {
    if ([dCopy isTemporary])
    {
      v5 = [dCopy entityType] == 2;
    }

    else
    {
      v5 = 0;
    }

    if ([dCopy isTemporary] && objc_msgSend(dCopy, "entityType") == 6)
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
      constraintsCacheQueue = [(EKEventStore *)self constraintsCacheQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __65__EKEventStore_cachedConstraintsForEventOrSourceWithCADObjectID___block_invoke;
      v9[3] = &unk_1E77FD7F0;
      v12 = v5;
      v11 = &v13;
      v9[4] = self;
      v10 = dCopy;
      dispatch_sync(constraintsCacheQueue, v9);

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

- (void)_clearCachedConstraintsForObjectWithCADObjectID:(id)d
{
  dCopy = d;
  constraintsCacheQueue = [(EKEventStore *)self constraintsCacheQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__EKEventStore__clearCachedConstraintsForObjectWithCADObjectID___block_invoke;
  v7[3] = &unk_1E77FD580;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(constraintsCacheQueue, v7);
}

void __64__EKEventStore__clearCachedConstraintsForObjectWithCADObjectID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedConstraints];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)_clearAllCachedConstraints
{
  constraintsCacheQueue = [(EKEventStore *)self constraintsCacheQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EKEventStore__clearAllCachedConstraints__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(constraintsCacheQueue, block);
}

uint64_t __42__EKEventStore__clearAllCachedConstraints__block_invoke(uint64_t a1)
{
  [*(a1 + 32) set_cachedDefaultConstraints:0];
  v2 = *(a1 + 32);

  return [v2 set_cachedConstraints:0];
}

- (void)cacheConstraints:(id)constraints forObjectWithCADObjectID:(id)d
{
  constraintsCopy = constraints;
  dCopy = d;
  if (constraintsCopy)
  {
    constraintsCacheQueue = [(EKEventStore *)self constraintsCacheQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__EKEventStore_cacheConstraints_forObjectWithCADObjectID___block_invoke;
    block[3] = &unk_1E77FD7C8;
    block[4] = self;
    v10 = constraintsCopy;
    v11 = dCopy;
    dispatch_sync(constraintsCacheQueue, block);
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

- (id)_fetchConstraintsForObjectWithCADObjectID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__24;
  v15 = __Block_byref_object_dispose__24;
  v16 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__EKEventStore__fetchConstraintsForObjectWithCADObjectID___block_invoke;
  v10[3] = &unk_1E77FDD00;
  v10[4] = &v11;
  [cADOperationProxySync CADObjectGetConstraints:dCopy reply:v10];

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

- (id)sourceIdentifierForEvent:(id)event
{
  eventCopy = event;
  eventAccessLevel = [(EKEventStore *)self eventAccessLevel];
  calendar = [eventCopy calendar];
  v7 = calendar;
  if (eventAccessLevel == 1)
  {

    if (v7)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = __Block_byref_object_copy__24;
      v19 = __Block_byref_object_dispose__24;
      v20 = 0;
      connection = [(EKEventStore *)self connection];
      cADOperationProxySync = [connection CADOperationProxySync];
      cADObjectID = [eventCopy CADObjectID];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __41__EKEventStore_sourceIdentifierForEvent___block_invoke;
      v14[3] = &unk_1E7800858;
      v14[4] = &v15;
      [cADOperationProxySync CADDatabaseGetSourceIdentifierForEventWithObjectID:cADObjectID reply:v14];

      sourceIdentifier = v16[5];
      _Block_object_dispose(&v15, 8);
    }

    else
    {
      sourceIdentifier = 0;
    }
  }

  else
  {
    source = [calendar source];
    sourceIdentifier = [source sourceIdentifier];
  }

  return sourceIdentifier;
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

- (id)notificationCollectionForSource:(id)source
{
  sourceCopy = source;
  objectID = [sourceCopy objectID];
  isTemporary = [objectID isTemporary];

  if (isTemporary)
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
    notificationCollectionCacheQueue = [(EKEventStore *)self notificationCollectionCacheQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__EKEventStore_notificationCollectionForSource___block_invoke;
    block[3] = &unk_1E77FD688;
    v13 = &v14;
    block[4] = self;
    v12 = sourceCopy;
    dispatch_sync(notificationCollectionCacheQueue, block);

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

- (id)_fetchPersistentNotificationCollectionForSourceWithCADObjectID:(id)d
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__24;
  v18 = __Block_byref_object_dispose__24;
  v19 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__EKEventStore__fetchPersistentNotificationCollectionForSourceWithCADObjectID___block_invoke;
  v10[3] = &unk_1E7801118;
  v7 = dCopy;
  selfCopy = self;
  v13 = &v14;
  v11 = v7;
  [cADOperationProxySync CADSourceGetNotificationCollection:v7 reply:v10];

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

- (BOOL)needsGeocodingForEvent:(id)event
{
  eventCopy = event;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__EKEventStore_needsGeocodingForEvent___block_invoke;
  block[3] = &unk_1E77FD688;
  v9 = eventCopy;
  v10 = &v11;
  block[4] = self;
  v6 = eventCopy;
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

- (void)setNeedsGeocoding:(BOOL)geocoding forEvent:(id)event
{
  eventCopy = event;
  unsavedChangesQueue = self->_unsavedChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EKEventStore_setNeedsGeocoding_forEvent___block_invoke;
  block[3] = &unk_1E77FD558;
  geocodingCopy = geocoding;
  block[4] = self;
  v10 = eventCopy;
  v8 = eventCopy;
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

- (BOOL)shouldPermitOrganizerEmailFromJunkChecks:(id)checks
{
  checksCopy = checks;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__EKEventStore_shouldPermitOrganizerEmailFromJunkChecks___block_invoke;
  v8[3] = &unk_1E77FFEA0;
  v8[4] = &v9;
  [cADOperationProxySync CADDatabaseShouldPermitOrganizerEmailFromJunkChecks:checksCopy reply:v8];

  LOBYTE(connection) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return connection;
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

- (BOOL)shouldPermitOrganizerPhoneNumberFromJunkChecks:(id)checks
{
  checksCopy = checks;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__EKEventStore_shouldPermitOrganizerPhoneNumberFromJunkChecks___block_invoke;
  v8[3] = &unk_1E77FFEA0;
  v8[4] = &v9;
  [cADOperationProxySync CADDatabaseShouldPermitOrganizerPhoneNumberFromJunkChecks:checksCopy reply:v8];

  LOBYTE(connection) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return connection;
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
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__EKEventStore_fetchStorageUsage__block_invoke;
  v6[3] = &unk_1E7801140;
  v6[4] = &v7;
  [cADOperationProxySync CADDatabaseGetStorageUsage:v6];

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

- (void)analyticsSendEvent:(id)event appendingClientBundleIDToPayload:(id)payload
{
  payloadCopy = payload;
  eventCopy = event;
  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  [cADOperationProxySync CADAnalyticsSendEvent:eventCopy appendingClientBundleIDToPayload:payloadCopy];
}

- (void)setCachedEKSourceConstraintObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  _cachedConstraints = [(EKEventStore *)self _cachedConstraints];

  if (!_cachedConstraints)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(EKEventStore *)self set_cachedConstraints:v9];
  }

  _cachedConstraints2 = [(EKEventStore *)self _cachedConstraints];
  database = [(EKEventStore *)self database];
  v11 = [keyCopy CADObjectIDWithGeneration:{objc_msgSend(database, "databaseRestoreGeneration")}];

  [_cachedConstraints2 setObject:objectCopy forKey:v11];
}

- (void)postSyntheticRouteHypothesis:(id)hypothesis forEventWithExternalURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  hypothesisCopy = hypothesis;
  lCopy = l;
  v8 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = lCopy;
    v20 = 2112;
    v21 = hypothesisCopy;
    _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEFAULT, "Posting synthetic route hypothesis for event external url = %{public}@, route hypothesis = %@", buf, 0x16u);
  }

  if (hypothesisCopy)
  {
    v9 = [EKTravelEngineUtilities cadRouteHypothesisForEKTravelEngineHypothesis:hypothesisCopy];
  }

  else
  {
    v9 = 0;
  }

  connection = [(EKEventStore *)self connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__EKEventStore_postSyntheticRouteHypothesis_forEventWithExternalURL___block_invoke;
  v15[3] = &unk_1E7801168;
  v16 = lCopy;
  v17 = v9;
  v12 = v9;
  v13 = lCopy;
  [cADOperationProxySync CADPostSyntheticRouteHypothesis:v12 forEventWithExternalURL:v13 reply:v15];

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

- (id)beginCalDAVServerSimulationWithHostname:(id)hostname
{
  hostnameCopy = hostname;
  if (hostnameCopy)
  {
    uUID = hostnameCopy;
    if ([hostnameCopy hasSuffix:@"simulated.calendar.apple.com"])
    {
      goto LABEL_6;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.simulated.calendar.apple.com", uUID];
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v5 = [v6 stringWithFormat:@"%@.simulated.calendar.apple.com", uUIDString];
  }

  uUID = v5;
LABEL_6:
  mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
  [mEMORY[0x1E69998A8] beginCalDAVServerSimulationWithHostname:uUID];

  return uUID;
}

- (void)endCalDAVServerSimulation:(id)simulation
{
  v3 = MEMORY[0x1E69998A8];
  simulationCopy = simulation;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection endCalDAVServerSimulationWithHostname:simulationCopy];
}

- (BOOL)backupDatabaseToDestination:(id)destination withFormat:(unint64_t)format error:(id *)error
{
  destinationCopy = destination;
  v9 = destinationCopy;
  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x3032000000;
  v24[2] = __Block_byref_object_copy__24;
  v24[3] = __Block_byref_object_dispose__24;
  v25 = 0;
  if (format != 2)
  {
    lastPathComponent = [destinationCopy lastPathComponent];
    uRLByDeletingLastPathComponent = [v9 URLByDeletingLastPathComponent];
    cADOperationProxySync2 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:uRLByDeletingLastPathComponent];
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__EKEventStore_backupDatabaseToDestination_withFormat_error___block_invoke_623;
    v20[3] = &unk_1E77FD310;
    v20[4] = &v23;
    [cADOperationProxySync CADBackupDatabaseToFileNamed:lastPathComponent inDirectory:cADOperationProxySync2 includeAttachments:format == 1 reply:v20];

    goto LABEL_5;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = (v24[0] + 40);
  obj = *(v24[0] + 40);
  v12 = [defaultManager createDirectoryAtURL:v9 withIntermediateDirectories:0 attributes:0 error:&obj];
  objc_storeStrong(v11, obj);

  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEventStore backupDatabaseToDestination:v24 withFormat:? error:?];
      if (error)
      {
        goto LABEL_11;
      }
    }

    else if (error)
    {
LABEL_11:
      v18 = 0;
      *error = *(v24[0] + 40);
      goto LABEL_8;
    }

    v18 = 0;
    goto LABEL_8;
  }

  lastPathComponent = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v9];
  uRLByDeletingLastPathComponent = [(EKEventStore *)self connection];
  cADOperationProxySync2 = [uRLByDeletingLastPathComponent CADOperationProxySync];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__EKEventStore_backupDatabaseToDestination_withFormat_error___block_invoke;
  v21[3] = &unk_1E77FD310;
  v21[4] = &v23;
  [cADOperationProxySync2 CADBackupToICBU:lastPathComponent reply:v21];
LABEL_5:

  if (error)
  {
    *error = *(v24[0] + 40);
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

- (BOOL)restoreDatabaseFromBackup:(id)backup withFormat:(unint64_t)format error:(id *)error
{
  backupCopy = backup;
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
  if (format == 2)
  {
    lastPathComponent = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:backupCopy readonly:1];
    connection = [(EKEventStore *)self connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    [cADOperationProxySync CADRestoreFromICBU:lastPathComponent reply:v9];
  }

  else
  {
    lastPathComponent = [backupCopy lastPathComponent];
    connection = [backupCopy URLByDeletingLastPathComponent];
    cADOperationProxySync = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:connection readonly:1];
    connection2 = [(EKEventStore *)self connection];
    cADOperationProxySync2 = [connection2 CADOperationProxySync];
    [cADOperationProxySync2 CADRestoreFromDatabaseBackupFileNamed:lastPathComponent inDirectory:cADOperationProxySync includeAttachments:format == 1 reply:v9];
  }

  v15 = v20[5];
  if (error && v15)
  {
    v15 = v15;
    *error = v15;
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

- (void)setDefaultCalendarForNewReminders:(id)reminders
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