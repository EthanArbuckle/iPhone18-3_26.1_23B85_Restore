@interface EKSource
+ (EKSource)sourceWithEventStore:(id)store;
+ (id)_eventKitBundle;
+ (id)knownIdentityKeysForComparison;
+ (id)knownRelationshipSingleValueKeys;
+ (id)knownSingleValueKeysForComparison;
+ (int)_ekPrivacyLevelToCalEventPrivacyLevel:(int64_t)level;
+ (int64_t)_calEventPrivacyLevelToEKPrivacyLevel:(int)level;
- (BOOL)_reset;
- (BOOL)_validateClientCanModifySources:(id *)sources;
- (BOOL)allowsTasks;
- (BOOL)constraintSupportsAvailabilityRequests;
- (BOOL)disabled;
- (BOOL)hasOwnerEmailAddress;
- (BOOL)isDelegate;
- (BOOL)isNestedLocalSource;
- (BOOL)isPrimaryAppleAccount;
- (BOOL)isPrimaryLocalSource;
- (BOOL)isSyncing;
- (BOOL)onlyCreatorCanModify;
- (BOOL)refresh;
- (BOOL)remove:(id *)remove;
- (BOOL)removeCalendarItemsOlderThanDate:(id)date entityTypeMask:(unint64_t)mask error:(id *)error;
- (BOOL)save:(id *)save;
- (BOOL)serverUsesSSL;
- (BOOL)showsNotifications;
- (BOOL)supportsCalendarCreation;
- (BOOL)supportsCalendarTaskCreation;
- (BOOL)supportsEventCalendarCreation;
- (BOOL)supportsReminderActions;
- (BOOL)validate:(id *)validate;
- (EKSourceConstraints)constraints;
- (NSDictionary)cachedExternalInfo;
- (NSDictionary)lastSyncErrorUserInfo;
- (NSError)sourceError;
- (NSError)sourceOrEventError;
- (NSSet)allCalendars;
- (NSSet)calendars;
- (NSSet)calendarsForEntityType:(EKEntityType)entityType;
- (NSString)constraintsDescriptionPath;
- (NSString)personaIdentifier;
- (NSString)symbolicColorForNewCalendar;
- (NSString)title;
- (NSURL)serverURL;
- (REMObjectID)remAccountObjectID;
- (id)_calDAVOfficeHoursFromEKOfficeHours:(id)hours;
- (id)_constraintsInternal;
- (id)_convertTypeOfOwnerAddresses:(id)addresses toSet:(BOOL)set;
- (id)_ekOfficeHoursFromCalDAVOfficeHours:(id)hours;
- (id)_nsErrorFromSyncError:(id)error event:(id)event;
- (id)availabilityCache;
- (id)calendarWithExternalIdentifier:(id)identifier;
- (id)description;
- (id)externalInfoForKey:(id)key;
- (id)readWriteCalendarsForEntityType:(unint64_t)type;
- (int)displayOrder;
- (int)displayOrderForNewCalendar;
- (int)flags;
- (int)flags2;
- (int)managedConfigurationAccountAccess;
- (int)preferredEventPrivateValueRaw;
- (int)strictestEventPrivateValueRaw;
- (int64_t)preferredEventPrivateValue;
- (int64_t)serverPort;
- (int64_t)sourceTypeRaw;
- (int64_t)strictestEventPrivateValue;
- (unint64_t)lastSyncError;
- (void)_copyInitialDefaultAlarmSettingsIfNeeded;
- (void)countCalendarItemsOfType:(unint64_t)type resultHandler:(id)handler;
- (void)fetchOfficeHoursWithCompletion:(id)completion onQueue:(id)queue;
- (void)setAllowsTasks:(BOOL)tasks;
- (void)setCachedExternalInfo:(id)info;
- (void)setConstraintsName:(id)name;
- (void)setFlag2:(int)flag2 value:(BOOL)value;
- (void)setFlag:(int)flag value:(BOOL)value;
- (void)setLastSyncError:(unint64_t)error userInfo:(id)info;
- (void)setOfficeHours:(id)hours withCompletion:(id)completion onQueue:(id)queue;
- (void)setPreferredEventPrivateValue:(int64_t)value;
- (void)setSourceTypeRaw:(int64_t)raw;
- (void)setStrictestEventPrivateValue:(int64_t)value;
- (void)setSyncError:(id)error;
@end

@implementation EKSource

- (int)flags
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D30]];
  intValue = [v2 intValue];

  return intValue;
}

- (int64_t)sourceTypeRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D88]];
  intValue = [v2 intValue];

  return intValue;
}

- (BOOL)isDelegate
{
  delegatedAccountOwnerStoreID = [(EKSource *)self delegatedAccountOwnerStoreID];
  v3 = delegatedAccountOwnerStoreID != 0;

  return v3;
}

- (NSString)title
{
  if ([(EKSource *)self isFacebookSource])
  {
    v3 = @"CalDAV";
  }

  else
  {
    v4 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992DA0]];
    v3 = v4;
    if (v4 && [(__CFString *)v4 isEqualToString:@"VIRTUAL_APP_SOURCE_NAME"])
    {
      _eventKitBundle = [objc_opt_class() _eventKitBundle];
      v6 = [_eventKitBundle localizedStringForKey:@"virtual source name" value:@"Account" table:0];

      v3 = v6;
    }
  }

  return v3;
}

- (NSString)personaIdentifier
{
  objectID = [(EKObject *)self objectID];
  if (([objectID isTemporary] & 1) == 0)
  {
    eventStore = [(EKObject *)self eventStore];
    pendingPersonaIdentifierForNewSource = [eventStore personaIdentifierForDatabaseID:{objc_msgSend(objectID, "databaseID")}];
    goto LABEL_6;
  }

  pendingPersonaIdentifierForNewSource = [(EKSource *)self pendingPersonaIdentifierForNewSource];
  if (pendingPersonaIdentifierForNewSource)
  {
    goto LABEL_7;
  }

  if (([(EKSource *)self sourceTypeRaw]- 1) <= 1)
  {
    externalID = [(EKSource *)self externalID];
    eventStore = [MEMORY[0x1E6992EF8] personaIdentifierForAccountIdentifier:externalID];

    pendingPersonaIdentifierForNewSource = eventStore;
LABEL_6:

    goto LABEL_7;
  }

  pendingPersonaIdentifierForNewSource = 0;
LABEL_7:

  return pendingPersonaIdentifierForNewSource;
}

- (BOOL)isSyncing
{
  lastSyncStartDate = [(EKSource *)self lastSyncStartDate];
  lastSyncEndDate = [(EKSource *)self lastSyncEndDate];
  v5 = lastSyncEndDate;
  if (lastSyncStartDate)
  {
    if (!lastSyncEndDate)
    {
      v6 = 1;
      goto LABEL_7;
    }

    if (([lastSyncStartDate isEqualToDate:lastSyncEndDate] & 1) == 0)
    {
      v7 = [lastSyncStartDate laterDate:v5];
      v6 = [v7 isEqualToDate:lastSyncStartDate];

      goto LABEL_7;
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (unint64_t)lastSyncError
{
  syncError = [(EKSource *)self syncError];
  v3 = syncError;
  if (syncError)
  {
    if ([syncError errorType])
    {
      errorCode = 1;
    }

    else
    {
      errorCode = [v3 errorCode];
    }
  }

  else
  {
    errorCode = 0;
  }

  return errorCode;
}

- (BOOL)hasOwnerEmailAddress
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  ownerAddresses = [(EKSource *)self ownerAddresses];
  v3 = [ownerAddresses countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(ownerAddresses);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 hasMailto] & 1) != 0 || (objc_msgSend(v7, "resemblesEmailAddress"))
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      v4 = [ownerAddresses countByEnumeratingWithState:&v11 objects:v15 count:16];
      v8 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)knownRelationshipSingleValueKeys
{
  if (knownRelationshipSingleValueKeys_onceToken_5 != -1)
  {
    +[EKSource knownRelationshipSingleValueKeys];
  }

  v3 = knownRelationshipSingleValueKeys_keys_5;

  return v3;
}

void __44__EKSource_knownRelationshipSingleValueKeys__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992D98];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownRelationshipSingleValueKeys_keys_5;
  knownRelationshipSingleValueKeys_keys_5 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken_10 != -1)
  {
    +[EKSource knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys_10;

  return v3;
}

void __42__EKSource_knownIdentityKeysForComparison__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992B08];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownIdentityKeysForComparison_keys_10;
  knownIdentityKeysForComparison_keys_10 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)knownSingleValueKeysForComparison
{
  if (knownSingleValueKeysForComparison_onceToken_9 != -1)
  {
    +[EKSource knownSingleValueKeysForComparison];
  }

  v3 = knownSingleValueKeysForComparison_keys_9;

  return v3;
}

void __45__EKSource_knownSingleValueKeysForComparison__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992D58];
  v4[0] = *MEMORY[0x1E6992DA0];
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = knownSingleValueKeysForComparison_keys_9;
  knownSingleValueKeysForComparison_keys_9 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (EKSource)sourceWithEventStore:(id)store
{
  storeCopy = store;
  if (!storeCopy && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKSource sourceWithEventStore:];
  }

  v5 = objc_alloc_init(EKPersistentSource);
  [storeCopy _registerObject:v5];
  v6 = [[self alloc] initWithPersistentObject:v5];
  v7 = EKUUIDString();
  [v6 setSourceIdentifier:v7];

  return v6;
}

- (void)setSourceTypeRaw:(int64_t)raw
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:raw];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992D88]];
}

+ (int)_ekPrivacyLevelToCalEventPrivacyLevel:(int64_t)level
{
  levelCopy = level;
  if (level >= 4)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      +[EKSource _ekPrivacyLevelToCalEventPrivacyLevel:];
    }

    return 0;
  }

  return levelCopy;
}

+ (int64_t)_calEventPrivacyLevelToEKPrivacyLevel:(int)level
{
  if (level < 4)
  {
    return level;
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKSource _calEventPrivacyLevelToEKPrivacyLevel:];
  }

  return 0;
}

- (int)preferredEventPrivateValueRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D78]];
  intValue = [v2 intValue];

  return intValue;
}

- (int64_t)preferredEventPrivateValue
{
  preferredEventPrivateValueRaw = [(EKSource *)self preferredEventPrivateValueRaw];
  v3 = objc_opt_class();

  return [v3 _calEventPrivacyLevelToEKPrivacyLevel:preferredEventPrivateValueRaw];
}

- (void)setPreferredEventPrivateValue:(int64_t)value
{
  v4 = [objc_opt_class() _ekPrivacyLevelToCalEventPrivacyLevel:value];

  [(EKSource *)self setPreferredEventPrivateValueRaw:v4];
}

- (int)strictestEventPrivateValueRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D90]];
  intValue = [v2 intValue];

  return intValue;
}

- (int64_t)strictestEventPrivateValue
{
  strictestEventPrivateValueRaw = [(EKSource *)self strictestEventPrivateValueRaw];
  v3 = objc_opt_class();

  return [v3 _calEventPrivacyLevelToEKPrivacyLevel:strictestEventPrivateValueRaw];
}

- (void)setStrictestEventPrivateValue:(int64_t)value
{
  v4 = [objc_opt_class() _ekPrivacyLevelToCalEventPrivacyLevel:value];

  [(EKSource *)self setStrictestEventPrivateValueRaw:v4];
}

+ (id)_eventKitBundle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EKSource__eventKitBundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_eventKitBundle_onceToken_0 != -1)
  {
    dispatch_once(&_eventKitBundle_onceToken_0, block);
  }

  v2 = _eventKitBundle_bundle_0;

  return v2;
}

uint64_t __27__EKSource__eventKitBundle__block_invoke(uint64_t a1)
{
  _eventKitBundle_bundle_0 = [MEMORY[0x1E696AAE8] bundleForClass:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (REMObjectID)remAccountObjectID
{
  backingObject = [(EKObject *)self backingObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = backingObject;
  backingObject2 = v5;
  if ((isKindOfClass & 1) == 0)
  {
    eventStore = [(EKObject *)self eventStore];
    v8 = [eventStore reminderSourceForEventSource:v5];

    backingObject2 = [v8 backingObject];
  }

  remObjectID = [backingObject2 remObjectID];

  return remObjectID;
}

- (NSString)constraintsDescriptionPath
{
  constraintsName = [(EKSource *)self constraintsName];
  v3 = [MEMORY[0x1E6992F20] backwardsCompatibleConstraintsPathForName:constraintsName];

  return v3;
}

- (void)setConstraintsName:(id)name
{
  nameCopy = name;
  if ([nameCopy isAbsolutePath])
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
    {
      [EKSource setConstraintsName:];
    }
  }

  else if ([nameCopy hasSuffix:@".plist"])
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
    {
      [EKSource setConstraintsName:];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E6992F20] constraintsURLForName:nameCopy];

    if (!v5 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
    {
      [EKSource setConstraintsName:];
    }
  }

  [(EKSource *)self _setConstraintsNameWithoutValidation:nameCopy];
}

- (BOOL)onlyCreatorCanModify
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D60]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setFlag:(int)flag value:(BOOL)value
{
  if (value)
  {
    v5 = [(EKSource *)self flags]| flag;
  }

  else
  {
    v5 = [(EKSource *)self flags]& ~flag;
  }

  [(EKSource *)self setFlags:v5];
}

- (int)flags2
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D38]];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setFlag2:(int)flag2 value:(BOOL)value
{
  if (value)
  {
    v5 = [(EKSource *)self flags2]| flag2;
  }

  else
  {
    v5 = [(EKSource *)self flags2]& ~flag2;
  }

  [(EKSource *)self setFlags2:v5];
}

- (BOOL)showsNotifications
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D80]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)disabled
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D18]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)allowsTasks
{
  if ((CalIsReminderBridgeEnabled() & 1) != 0 || (v3 = 1, [(EKSource *)self flag:1]))
  {
    remAccountObjectID = [(EKSource *)self remAccountObjectID];
    v5 = remAccountObjectID != 0;

    v3 = 0;
  }

  else
  {
    v5 = 0;
  }

  if ([(EKSource *)self sourceType]== EKSourceTypeMobileMe || [(EKSource *)self isDelegate])
  {
    return 0;
  }

  else
  {
    return v5 | v3;
  }
}

- (void)setAllowsTasks:(BOOL)tasks
{
  v12 = *MEMORY[0x1E69E9840];
  if (tasks)
  {
    if (CalIsReminderBridgeEnabled())
    {
      v4 = EKLogHandle;
      v5 = 1;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
      {
        v6 = v4;
        externalID = [(EKSource *)self externalID];
        v9[0] = 67109378;
        v9[1] = 1;
        v10 = 2114;
        v11 = externalID;
        _os_log_impl(&dword_1A805E000, v6, OS_LOG_TYPE_INFO, "Ignoring attempt to set allowsTasks to %d on source %{public}@. Forcing to NO", v9, 0x12u);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  [(EKSource *)self setFlag:1 value:v5];
  v8 = *MEMORY[0x1E69E9840];
}

- (NSSet)calendars
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  eventStore = [(EKObject *)self eventStore];
  calendars = [eventStore calendars];

  v6 = [calendars countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(calendars);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        source = [v10 source];
        v12 = [source isEqual:self];

        if (v12)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [calendars countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSSet)allCalendars
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  eventStore = [(EKObject *)self eventStore];
  _allCalendars = [eventStore _allCalendars];

  v6 = [_allCalendars countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(_allCalendars);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        source = [v10 source];
        v12 = [source isEqual:self];

        if (v12)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [_allCalendars countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSSet)calendarsForEntityType:(EKEntityType)entityType
{
  eventStore = [(EKObject *)self eventStore];
  v6 = [eventStore calendarsForEntityType:entityType inSource:self];

  return v6;
}

- (id)calendarWithExternalIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allCalendars = [(EKSource *)self allCalendars];
  v7 = [allCalendars countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(allCalendars);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        externalID = [v11 externalID];
        v13 = [externalID isEqualToString:identifierCopy];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [allCalendars countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([array count] >= 2 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKSource calendarWithExternalIdentifier:];
  }

  firstObject = [array firstObject];

  v15 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (BOOL)removeCalendarItemsOlderThanDate:(id)date entityTypeMask:(unint64_t)mask error:(id *)error
{
  dateCopy = date;
  if (mask - 1 >= 3)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithCADResult:1001];
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v9 = dword_1A81C3E64[mask - 1];
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__22;
    v22 = __Block_byref_object_dispose__22;
    v23 = 0;
    eventStore = [(EKObject *)self eventStore];
    connection = [eventStore connection];
    cADOperationProxy = [connection CADOperationProxy];
    cADObjectID = [(EKObject *)self CADObjectID];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __66__EKSource_removeCalendarItemsOlderThanDate_entityTypeMask_error___block_invoke;
    v17[3] = &unk_1E77FD310;
    v17[4] = &v18;
    [cADOperationProxy CADRemoveCalendarItemsOlderThanDate:dateCopy ofType:v9 inSource:cADObjectID reply:v17];

    v14 = v19[5];
    v15 = v14 == 0;
    if (error && v14)
    {
      *error = v14;
    }

    _Block_object_dispose(&v18, 8);
  }

  return v15;
}

uint64_t __66__EKSource_removeCalendarItemsOlderThanDate_entityTypeMask_error___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v4 = *(*(v2 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)readWriteCalendarsForEntityType:(unint64_t)type
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  eventStore = [(EKObject *)self eventStore];
  v7 = [eventStore calendarsForEntityType:type];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        source = [v12 source];
        if ([source isEqual:self])
        {
          allowsContentModifications = [v12 allowsContentModifications];

          if (allowsContentModifications)
          {
            [v5 addObject:v12];
          }
        }

        else
        {
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)supportsCalendarCreation
{
  if ([(EKSource *)self sourceType]== (EKSourceTypeSubscribed|EKSourceTypeCalDAV))
  {
    eventStore = [(EKObject *)self eventStore];
    allowsIntegrationModifications = [eventStore allowsIntegrationModifications];
  }

  else
  {
    eventStore = [(EKSource *)self _constraintsInternal];
    allowsIntegrationModifications = [eventStore allowsCalendarAddDeleteModify];
  }

  v5 = allowsIntegrationModifications;

  return v5;
}

- (BOOL)constraintSupportsAvailabilityRequests
{
  _constraintsInternal = [(EKSource *)self _constraintsInternal];
  supportsAvailabilityRequests = [_constraintsInternal supportsAvailabilityRequests];

  return supportsAvailabilityRequests;
}

- (BOOL)supportsCalendarTaskCreation
{
  allowsTasks = [(EKSource *)self allowsTasks];
  if (allowsTasks)
  {

    LOBYTE(allowsTasks) = [(EKSource *)self supportsCalendarCreation];
  }

  return allowsTasks;
}

- (void)countCalendarItemsOfType:(unint64_t)type resultHandler:(id)handler
{
  if (type == 1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (type)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  [(EKSource *)self _countCalendarItemsOfCalType:v5 resultHandler:handler];
}

uint64_t __55__EKSource__countCalendarItemsOfCalType_resultHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    objc_claimAutoreleasedReturnValue();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)supportsReminderActions
{
  _constraintsInternal = [(EKSource *)self _constraintsInternal];
  supportsReminderActions = [_constraintsInternal supportsReminderActions];

  return supportsReminderActions;
}

- (id)_constraintsInternal
{
  eventStore = [(EKObject *)self eventStore];
  v4 = [eventStore cachedConstraintsForSource:self];

  return v4;
}

- (EKSourceConstraints)constraints
{
  eventStore = [(EKObject *)self eventStore];
  v4 = [eventStore cachedConstraintsForSource:self];

  return v4;
}

- (int)displayOrderForNewCalendar
{
  v15 = *MEMORY[0x1E69E9840];
  allCalendars = [(EKSource *)self allCalendars];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [allCalendars countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    displayOrder = -1;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(allCalendars);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 displayOrder] > displayOrder)
        {
          displayOrder = [v7 displayOrder];
        }
      }

      v3 = [allCalendars countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
    LODWORD(v3) = displayOrder + 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

- (NSString)symbolicColorForNewCalendar
{
  v22 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allCalendars = [(EKSource *)self allCalendars];
  v5 = [allCalendars countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(allCalendars);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        symbolicColorName = [v9 symbolicColorName];
        if (symbolicColorName)
        {
          v11 = symbolicColorName;
          type = [v9 type];

          if (type != 4)
          {
            symbolicColorName2 = [v9 symbolicColorName];
            [array addObject:symbolicColorName2];
          }
        }
      }

      v6 = [allCalendars countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = [MEMORY[0x1E69930B8] symbolicColorForNewCalendarWithExistingSymbolicNames:array];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)fetchOfficeHoursWithCompletion:(id)completion onQueue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  externalID = [(EKSource *)self externalID];
  mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__EKSource_fetchOfficeHoursWithCompletion_onQueue___block_invoke;
  v11[3] = &unk_1E7800150;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [mEMORY[0x1E69998A8] fetchOfficeHoursForAccountWithID:externalID queue:queueCopy completionBlock:v11];
}

void __51__EKSource_fetchOfficeHoursWithCompletion_onQueue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = [v6 _ekOfficeHoursFromCalDAVOfficeHours:a3];
  (*(*(a1 + 40) + 16))();
}

- (id)_ekOfficeHoursFromCalDAVOfficeHours:(id)hours
{
  if (hours)
  {
    v3 = MEMORY[0x1E695DEE8];
    hoursCopy = hours;
    currentCalendar = [v3 currentCalendar];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(hoursCopy, "count")}];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__EKSource__ekOfficeHoursFromCalDAVOfficeHours___block_invoke;
    v12[3] = &unk_1E7800178;
    v13 = currentCalendar;
    v7 = v6;
    v14 = v7;
    v8 = currentCalendar;
    [hoursCopy enumerateObjectsUsingBlock:v12];

    v9 = v14;
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __48__EKSource__ekOfficeHoursFromCalDAVOfficeHours___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [v12 startDate];
  v6 = [v12 endDate];
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) dateFromComponents:v5];
    v9 = [v5 timeZone];
    if (v7)
    {
LABEL_3:
      v10 = [*(a1 + 32) dateFromComponents:v7];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = -[EKOfficeHour initWithEnabled:weekday:startTime:endTime:timeZone:]([EKOfficeHour alloc], "initWithEnabled:weekday:startTime:endTime:timeZone:", [v12 enabled], a3, v8, v10, v9);
  [*(a1 + 40) addObject:v11];
}

- (void)setOfficeHours:(id)hours withCompletion:(id)completion onQueue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  v10 = [(EKSource *)self _calDAVOfficeHoursFromEKOfficeHours:hours];
  externalID = [(EKSource *)self externalID];
  mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__EKSource_setOfficeHours_withCompletion_onQueue___block_invoke;
  v14[3] = &unk_1E78001A0;
  v15 = completionCopy;
  v13 = completionCopy;
  [mEMORY[0x1E69998A8] setOfficeHours:v10 forAccountWithID:externalID queue:queueCopy completionBlock:v14];
}

- (id)_calDAVOfficeHoursFromEKOfficeHours:(id)hours
{
  v29 = *MEMORY[0x1E69E9840];
  hoursCopy = hours;
  if (hoursCopy)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(hoursCopy, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = hoursCopy;
    obj = hoursCopy;
    v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v22 = *v25;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v24 + 1) + 8 * i);
          v9 = objc_alloc_init(MEMORY[0x1E6999890]);
          [v9 setEnabled:{objc_msgSend(v8, "enabled")}];
          startTime = [v8 startTime];
          if (startTime)
          {
            startTime2 = [v8 startTime];
            v12 = [currentCalendar components:608 fromDate:startTime2];

            timeZone = [v8 timeZone];
            [v12 setTimeZone:timeZone];
          }

          else
          {
            v12 = 0;
          }

          endTime = [v8 endTime];
          if (endTime)
          {
            endTime2 = [v8 endTime];
            v16 = [currentCalendar components:608 fromDate:endTime2];

            timeZone2 = [v8 timeZone];
            [v16 setTimeZone:timeZone2];
          }

          else
          {
            v16 = 0;
          }

          [v9 setStartDate:v12];
          [v9 setEndDate:v16];
          [v23 addObject:v9];
        }

        v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v6);
    }

    hoursCopy = v20;
  }

  else
  {
    v23 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)_nsErrorFromSyncError:(id)error event:(id)event
{
  errorCopy = error;
  eventCopy = event;
  if (errorCopy && ([errorCopy errorType] || objc_msgSend(errorCopy, "errorCode")) && (objc_msgSend(errorCopy, "errorType") != 1 || objc_msgSend(errorCopy, "errorCode")))
  {
    errorType = [errorCopy errorType];
    v9 = kEKAccountErrorDomain;
    if (errorType)
    {
      v9 = kEKCalendarItemErrorDomain;
    }

    v10 = *v9;
    if (eventCopy)
    {
      selfCopy = eventCopy;
    }

    else
    {
      selfCopy = self;
    }

    v12 = selfCopy;
    userInfo = [errorCopy userInfo];
    v14 = [EKSyncError augmentSyncErrorUserInfo:userInfo for:v12];

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:v10 code:objc_msgSend(errorCopy userInfo:{"errorCode"), v14}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSError)sourceError
{
  syncError = [(EKSource *)self syncError];
  v4 = [(EKSource *)self _nsErrorFromSyncError:syncError event:0];

  return v4;
}

- (NSError)sourceOrEventError
{
  sourceError = [(EKSource *)self sourceError];
  v4 = sourceError;
  if (sourceError)
  {
    v5 = sourceError;
  }

  else
  {
    eventStore = [(EKObject *)self eventStore];
    eventsWithErrorsPerSourceID = [eventStore eventsWithErrorsPerSourceID];
    objectID = [(EKObject *)self objectID];
    v9 = [eventsWithErrorsPerSourceID objectForKeyedSubscript:objectID];

    if (v9)
    {
      syncError = [v9 syncError];
      v5 = [(EKSource *)self _nsErrorFromSyncError:syncError event:v9];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setLastSyncError:(unint64_t)error userInfo:(id)info
{
  infoCopy = info;
  v8 = infoCopy;
  if (error || infoCopy)
  {
    v7 = [[EKSyncError alloc] initWithAccountError:error userInfo:infoCopy];
    [(EKSource *)self setSyncError:v7];
  }

  else
  {
    [(EKSource *)self setSyncError:0];
  }
}

- (NSDictionary)lastSyncErrorUserInfo
{
  syncError = [(EKSource *)self syncError];
  userInfo = [syncError userInfo];

  return userInfo;
}

- (void)setSyncError:(id)error
{
  v4 = *MEMORY[0x1E6992D98];
  errorCopy = error;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:errorCopy forKey:v4 frozenClass:+[EKSyncError frozenClass]];
}

- (int)displayOrder
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D20]];
  intValue = [v2 intValue];

  return intValue;
}

- (BOOL)isPrimaryLocalSource
{
  objectID = [(EKObject *)self objectID];
  primaryLocalSourceID = [objc_opt_class() primaryLocalSourceID];
  v4 = [objectID isEqual:primaryLocalSourceID];

  return v4;
}

- (BOOL)isNestedLocalSource
{
  if ([(EKSource *)self sourceType])
  {
    return 0;
  }

  else
  {
    return ![(EKSource *)self isPrimaryLocalSource];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  sourceIdentifier = [(EKSource *)self sourceIdentifier];
  v6 = description_kTypeStrings[[(EKSource *)self sourceType]];
  title = [(EKSource *)self title];
  externalID = [(EKSource *)self externalID];
  v9 = [v3 stringWithFormat:@"%@ <%p> {UUID = %@ type = %@; title = %@; externalID = %@}", v4, self, sourceIdentifier, v6, title, externalID];;

  return v9;
}

- (BOOL)_validateClientCanModifySources:(id *)sources
{
  eventStore = [(EKObject *)self eventStore];
  clientCanModifySources = [eventStore clientCanModifySources];

  if (sources && (clientCanModifySources & 1) == 0)
  {
    *sources = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:58];
  }

  return clientCanModifySources;
}

- (BOOL)validate:(id *)validate
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (![(EKObject *)self isNew])
  {
    v5 = *MEMORY[0x1E6992D08];
    v14[0] = *MEMORY[0x1E6992D00];
    v14[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v7 = [(EKObject *)self hasUnsavedChangesIgnoreKeys:v6];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  LODWORD(v8) = [(EKSource *)self _validateClientCanModifySources:validate];
  if (v8)
  {
    sourceIdentifier = [(EKSource *)self sourceIdentifier];
    v10 = [sourceIdentifier length];

    if (v10)
    {
LABEL_5:
      LOBYTE(v8) = 1;
      goto LABEL_6;
    }

    if (validate)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:65];
      v8 = v12;
      LOBYTE(v8) = 0;
      *validate = v12;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_copyInitialDefaultAlarmSettingsIfNeeded
{
  if ([(EKSource *)self _shouldCopyDefaultAlarmsFromLocalSource])
  {
    defaultAlarmOffset = [(EKSource *)self defaultAlarmOffset];
    defaultAllDayAlarmOffset = [(EKSource *)self defaultAllDayAlarmOffset];
    if (!(defaultAlarmOffset | defaultAllDayAlarmOffset))
    {
      eventStore = [(EKObject *)self eventStore];
      defaultTimedAlarmOffset = [eventStore defaultTimedAlarmOffset];
      [(EKSource *)self setDefaultAlarmOffset:defaultTimedAlarmOffset];

      eventStore2 = [(EKObject *)self eventStore];
      defaultAllDayAlarmOffset2 = [eventStore2 defaultAllDayAlarmOffset];
      [(EKSource *)self setDefaultAllDayAlarmOffset:defaultAllDayAlarmOffset2];
    }
  }
}

- (BOOL)save:(id *)save
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (save)
  {
    *save = 0;
  }

  v4 = *MEMORY[0x1E6992D38];
  v16[0] = *MEMORY[0x1E6992D38];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  if (![(EKObject *)self hasUnsavedChangesInKeys:v5])
  {
    goto LABEL_6;
  }

  v15 = *MEMORY[0x1E6992D18];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  if ([(EKObject *)self hasUnsavedChangesInKeys:v6])
  {

LABEL_6:
    goto LABEL_7;
  }

  isDelegate = [(EKSource *)self isDelegate];

  if (isDelegate)
  {
    v10 = [(EKObject *)self _previousValueForKey:v4];
    intValue = [v10 intValue];

    isInMainWindow = [(EKSource *)self isInMainWindow];
    isInSeparateWindow = [(EKSource *)self isInSeparateWindow];
    if (isInMainWindow == ((intValue & 0x100) == 0) || ((((intValue & 0x200) == 0) ^ isInSeparateWindow) & 1) == 0)
    {
      v14 = isInMainWindow || isInSeparateWindow;
      if ((isInMainWindow || isInSeparateWindow) == [(EKSource *)self disabled])
      {
        [(EKSource *)self setDisabled:!v14];
      }
    }
  }

LABEL_7:
  [(EKSource *)self _copyInitialDefaultAlarmSettingsIfNeeded];
  [(EKObject *)self insertPersistentObjectIfNeeded];
  [(EKObject *)self updatePersistentObject];
  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)remove:(id *)remove
{
  if (![(EKSource *)self _validateClientCanModifySources:?])
  {
    goto LABEL_5;
  }

  if ([(EKSource *)self isPrimaryLocalSource])
  {
    if (remove)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:59];
      *remove = v5 = 0;
      return v5 & 1;
    }

LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  backingObject = [(EKObject *)self backingObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if (remove)
    {
      *remove = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:68];
    }
  }

  else
  {
    if (remove)
    {
      *remove = 0;
    }

    [(EKObject *)self deletePersistentObject];
  }

  v5 = isKindOfClass ^ 1;

  return v5 & 1;
}

- (id)availabilityCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_availabilityCache)
  {
    v3 = [[EKAvailabilityCache alloc] initWithSource:selfCopy];
    availabilityCache = selfCopy->_availabilityCache;
    selfCopy->_availabilityCache = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_availabilityCache;

  return v5;
}

- (NSDictionary)cachedExternalInfo
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__EKSource_cachedExternalInfo__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"cachedExternalInfoDictionary" populateBlock:v4];

  return v2;
}

id __30__EKSource_cachedExternalInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedExternalInfoData];
  if (!v2)
  {
    v5 = 0;
    goto LABEL_12;
  }

  v8 = 0;
  v3 = [MEMORY[0x1E696AE40] propertyListWithData:v2 options:0 format:0 error:&v8];
  v4 = v8;
  if (!v3)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __30__EKSource_cachedExternalInfo__block_invoke_cold_2();
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __32__EKCalendar_cachedExternalInfo__block_invoke_cold_1(v6);
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = [*(a1 + 32) _convertTypeOfOwnerAddresses:v3 toSet:1];
LABEL_11:

LABEL_12:

  return v5;
}

- (void)setCachedExternalInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = MEMORY[0x1E696AE40];
  v6 = [(EKSource *)self _convertTypeOfOwnerAddresses:infoCopy toSet:0];
  v10 = 0;
  v7 = [v5 dataWithPropertyList:v6 format:200 options:0 error:&v10];
  v8 = v10;

  if (v7)
  {

    v8 = v7;
LABEL_5:
    v9 = [(EKSource *)self _convertTypeOfOwnerAddresses:infoCopy toSet:1];
    [(EKObject *)self setCachedValue:v9 forKey:@"cachedExternalInfoDictionary"];

    [(EKSource *)self setCachedExternalInfoData:v8];
    goto LABEL_8;
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKSource setCachedExternalInfo:];
  }

LABEL_8:
}

- (id)_convertTypeOfOwnerAddresses:(id)addresses toSet:(BOOL)set
{
  setCopy = set;
  addressesCopy = addresses;
  v6 = *MEMORY[0x1E6992CB0];
  v7 = [addressesCopy objectForKeyedSubscript:*MEMORY[0x1E6992CB0]];
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() ^ setCopy))
    {
      if (setCopy)
      {
        [MEMORY[0x1E695DFD8] setWithArray:v8];
      }

      else
      {
        [v8 allObjects];
      }
      v10 = ;

      v9 = [addressesCopy mutableCopy];
      [v9 setObject:v10 forKeyedSubscript:v6];
    }

    else
    {
      v9 = [addressesCopy copy];
    }
  }

  else
  {
    v9 = [addressesCopy copy];
  }

  return v9;
}

- (NSURL)serverURL
{
  serverHost = [(EKSource *)self serverHost];
  if (serverHost)
  {
    serverPort = [(EKSource *)self serverPort];
    serverUsesSSL = [(EKSource *)self serverUsesSSL];
    v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v6 setHost:serverHost];
    v7 = 80;
    if (serverUsesSSL)
    {
      v7 = 443;
    }

    if (serverPort != v7)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:serverPort];
      [v6 setPort:v8];
    }

    if (serverUsesSSL)
    {
      v9 = @"https";
    }

    else
    {
      v9 = @"http";
    }

    [v6 setScheme:v9];
    v10 = [v6 URL];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)externalInfoForKey:(id)key
{
  keyCopy = key;
  cachedExternalInfo = [(EKSource *)self cachedExternalInfo];
  v6 = cachedExternalInfo;
  if (cachedExternalInfo)
  {
    v7 = [cachedExternalInfo objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)serverPort
{
  v2 = [(EKSource *)self externalInfoForKey:*MEMORY[0x1E6992CB8]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)serverUsesSSL
{
  v2 = [(EKSource *)self externalInfoForKey:*MEMORY[0x1E6992CC8]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPrimaryAppleAccount
{
  v2 = [(EKSource *)self externalInfoForKey:*MEMORY[0x1E6992CA8]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int)managedConfigurationAccountAccess
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D50]];
  intValue = [v2 intValue];

  return intValue;
}

- (BOOL)supportsEventCalendarCreation
{
  supportsCalendarCreation = [(EKSource *)self supportsCalendarCreation];
  if (supportsCalendarCreation)
  {

    LOBYTE(supportsCalendarCreation) = [(EKSource *)self allowsEvents];
  }

  return supportsCalendarCreation;
}

- (BOOL)refresh
{
  if ([(EKObject *)self isNew])
  {
    return 1;
  }

  return [(EKObject *)self _refreshCommon];
}

- (BOOL)_reset
{
  eventStore = [(EKObject *)self eventStore];
  sourceIdentifier = [(EKSource *)self sourceIdentifier];
  v5 = [eventStore sourceWithIdentifier:sourceIdentifier];

  if (v5)
  {
    backingObject = [v5 backingObject];
    [(EKObject *)self _resetWithFrozenObject:backingObject];
  }

  return v5 != 0;
}

+ (void)_ekPrivacyLevelToCalEventPrivacyLevel:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_calEventPrivacyLevelToEKPrivacyLevel:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setConstraintsName:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_4(&dword_1A805E000, v0, v1, "Attempting to set an unrecognized constraints name (%{public}@) with [EKSource setConstraintsName:]. The given name should be a valid .plist resource in CalendarFoundation.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setConstraintsName:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_4(&dword_1A805E000, v0, v1, "Attempting to set a file name with .plist extension (%{public}@) with [EKSource setConstraintsName:]. Only the name should be supplied without an extension.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setConstraintsName:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_4(&dword_1A805E000, v0, v1, "Attempting to set a path (%{public}@) with [EKSource setConstraintsName:]. Only the name should be supplied without an extension.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)calendarWithExternalIdentifier:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __30__EKSource_cachedExternalInfo__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setCachedExternalInfo:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end