@interface EKSource
+ (EKSource)sourceWithEventStore:(id)a3;
+ (id)_eventKitBundle;
+ (id)knownIdentityKeysForComparison;
+ (id)knownRelationshipSingleValueKeys;
+ (id)knownSingleValueKeysForComparison;
+ (int)_ekPrivacyLevelToCalEventPrivacyLevel:(int64_t)a3;
+ (int64_t)_calEventPrivacyLevelToEKPrivacyLevel:(int)a3;
- (BOOL)_reset;
- (BOOL)_validateClientCanModifySources:(id *)a3;
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
- (BOOL)remove:(id *)a3;
- (BOOL)removeCalendarItemsOlderThanDate:(id)a3 entityTypeMask:(unint64_t)a4 error:(id *)a5;
- (BOOL)save:(id *)a3;
- (BOOL)serverUsesSSL;
- (BOOL)showsNotifications;
- (BOOL)supportsCalendarCreation;
- (BOOL)supportsCalendarTaskCreation;
- (BOOL)supportsEventCalendarCreation;
- (BOOL)supportsReminderActions;
- (BOOL)validate:(id *)a3;
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
- (id)_calDAVOfficeHoursFromEKOfficeHours:(id)a3;
- (id)_constraintsInternal;
- (id)_convertTypeOfOwnerAddresses:(id)a3 toSet:(BOOL)a4;
- (id)_ekOfficeHoursFromCalDAVOfficeHours:(id)a3;
- (id)_nsErrorFromSyncError:(id)a3 event:(id)a4;
- (id)availabilityCache;
- (id)calendarWithExternalIdentifier:(id)a3;
- (id)description;
- (id)externalInfoForKey:(id)a3;
- (id)readWriteCalendarsForEntityType:(unint64_t)a3;
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
- (void)countCalendarItemsOfType:(unint64_t)a3 resultHandler:(id)a4;
- (void)fetchOfficeHoursWithCompletion:(id)a3 onQueue:(id)a4;
- (void)setAllowsTasks:(BOOL)a3;
- (void)setCachedExternalInfo:(id)a3;
- (void)setConstraintsName:(id)a3;
- (void)setFlag2:(int)a3 value:(BOOL)a4;
- (void)setFlag:(int)a3 value:(BOOL)a4;
- (void)setLastSyncError:(unint64_t)a3 userInfo:(id)a4;
- (void)setOfficeHours:(id)a3 withCompletion:(id)a4 onQueue:(id)a5;
- (void)setPreferredEventPrivateValue:(int64_t)a3;
- (void)setSourceTypeRaw:(int64_t)a3;
- (void)setStrictestEventPrivateValue:(int64_t)a3;
- (void)setSyncError:(id)a3;
@end

@implementation EKSource

- (int)flags
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D30]];
  v3 = [v2 intValue];

  return v3;
}

- (int64_t)sourceTypeRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D88]];
  v3 = [v2 intValue];

  return v3;
}

- (BOOL)isDelegate
{
  v2 = [(EKSource *)self delegatedAccountOwnerStoreID];
  v3 = v2 != 0;

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
      v5 = [objc_opt_class() _eventKitBundle];
      v6 = [v5 localizedStringForKey:@"virtual source name" value:@"Account" table:0];

      v3 = v6;
    }
  }

  return v3;
}

- (NSString)personaIdentifier
{
  v3 = [(EKObject *)self objectID];
  if (([v3 isTemporary] & 1) == 0)
  {
    v6 = [(EKObject *)self eventStore];
    v4 = [v6 personaIdentifierForDatabaseID:{objc_msgSend(v3, "databaseID")}];
    goto LABEL_6;
  }

  v4 = [(EKSource *)self pendingPersonaIdentifierForNewSource];
  if (v4)
  {
    goto LABEL_7;
  }

  if (([(EKSource *)self sourceTypeRaw]- 1) <= 1)
  {
    v5 = [(EKSource *)self externalID];
    v6 = [MEMORY[0x1E6992EF8] personaIdentifierForAccountIdentifier:v5];

    v4 = v6;
LABEL_6:

    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (BOOL)isSyncing
{
  v3 = [(EKSource *)self lastSyncStartDate];
  v4 = [(EKSource *)self lastSyncEndDate];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v6 = 1;
      goto LABEL_7;
    }

    if (([v3 isEqualToDate:v4] & 1) == 0)
    {
      v7 = [v3 laterDate:v5];
      v6 = [v7 isEqualToDate:v3];

      goto LABEL_7;
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (unint64_t)lastSyncError
{
  v2 = [(EKSource *)self syncError];
  v3 = v2;
  if (v2)
  {
    if ([v2 errorType])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 errorCode];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasOwnerEmailAddress
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(EKSource *)self ownerAddresses];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 hasMailto] & 1) != 0 || (objc_msgSend(v7, "resemblesEmailAddress"))
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

+ (EKSource)sourceWithEventStore:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKSource sourceWithEventStore:];
  }

  v5 = objc_alloc_init(EKPersistentSource);
  [v4 _registerObject:v5];
  v6 = [[a1 alloc] initWithPersistentObject:v5];
  v7 = EKUUIDString();
  [v6 setSourceIdentifier:v7];

  return v6;
}

- (void)setSourceTypeRaw:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992D88]];
}

+ (int)_ekPrivacyLevelToCalEventPrivacyLevel:(int64_t)a3
{
  v3 = a3;
  if (a3 >= 4)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      +[EKSource _ekPrivacyLevelToCalEventPrivacyLevel:];
    }

    return 0;
  }

  return v3;
}

+ (int64_t)_calEventPrivacyLevelToEKPrivacyLevel:(int)a3
{
  if (a3 < 4)
  {
    return a3;
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
  v3 = [v2 intValue];

  return v3;
}

- (int64_t)preferredEventPrivateValue
{
  v2 = [(EKSource *)self preferredEventPrivateValueRaw];
  v3 = objc_opt_class();

  return [v3 _calEventPrivacyLevelToEKPrivacyLevel:v2];
}

- (void)setPreferredEventPrivateValue:(int64_t)a3
{
  v4 = [objc_opt_class() _ekPrivacyLevelToCalEventPrivacyLevel:a3];

  [(EKSource *)self setPreferredEventPrivateValueRaw:v4];
}

- (int)strictestEventPrivateValueRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D90]];
  v3 = [v2 intValue];

  return v3;
}

- (int64_t)strictestEventPrivateValue
{
  v2 = [(EKSource *)self strictestEventPrivateValueRaw];
  v3 = objc_opt_class();

  return [v3 _calEventPrivacyLevelToEKPrivacyLevel:v2];
}

- (void)setStrictestEventPrivateValue:(int64_t)a3
{
  v4 = [objc_opt_class() _ekPrivacyLevelToCalEventPrivacyLevel:a3];

  [(EKSource *)self setStrictestEventPrivateValueRaw:v4];
}

+ (id)_eventKitBundle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EKSource__eventKitBundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  v3 = [(EKObject *)self backingObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v3;
  v6 = v5;
  if ((isKindOfClass & 1) == 0)
  {
    v7 = [(EKObject *)self eventStore];
    v8 = [v7 reminderSourceForEventSource:v5];

    v6 = [v8 backingObject];
  }

  v9 = [v6 remObjectID];

  return v9;
}

- (NSString)constraintsDescriptionPath
{
  v2 = [(EKSource *)self constraintsName];
  v3 = [MEMORY[0x1E6992F20] backwardsCompatibleConstraintsPathForName:v2];

  return v3;
}

- (void)setConstraintsName:(id)a3
{
  v4 = a3;
  if ([v4 isAbsolutePath])
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
    {
      [EKSource setConstraintsName:];
    }
  }

  else if ([v4 hasSuffix:@".plist"])
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
    {
      [EKSource setConstraintsName:];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E6992F20] constraintsURLForName:v4];

    if (!v5 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
    {
      [EKSource setConstraintsName:];
    }
  }

  [(EKSource *)self _setConstraintsNameWithoutValidation:v4];
}

- (BOOL)onlyCreatorCanModify
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D60]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setFlag:(int)a3 value:(BOOL)a4
{
  if (a4)
  {
    v5 = [(EKSource *)self flags]| a3;
  }

  else
  {
    v5 = [(EKSource *)self flags]& ~a3;
  }

  [(EKSource *)self setFlags:v5];
}

- (int)flags2
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D38]];
  v3 = [v2 intValue];

  return v3;
}

- (void)setFlag2:(int)a3 value:(BOOL)a4
{
  if (a4)
  {
    v5 = [(EKSource *)self flags2]| a3;
  }

  else
  {
    v5 = [(EKSource *)self flags2]& ~a3;
  }

  [(EKSource *)self setFlags2:v5];
}

- (BOOL)showsNotifications
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D80]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)disabled
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D18]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)allowsTasks
{
  if ((CalIsReminderBridgeEnabled() & 1) != 0 || (v3 = 1, [(EKSource *)self flag:1]))
  {
    v4 = [(EKSource *)self remAccountObjectID];
    v5 = v4 != 0;

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

- (void)setAllowsTasks:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (CalIsReminderBridgeEnabled())
    {
      v4 = EKLogHandle;
      v5 = 1;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
      {
        v6 = v4;
        v7 = [(EKSource *)self externalID];
        v9[0] = 67109378;
        v9[1] = 1;
        v10 = 2114;
        v11 = v7;
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
  v4 = [(EKObject *)self eventStore];
  v5 = [v4 calendars];

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

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 source];
        v12 = [v11 isEqual:self];

        if (v12)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v4 = [(EKObject *)self eventStore];
  v5 = [v4 _allCalendars];

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

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 source];
        v12 = [v11 isEqual:self];

        if (v12)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSSet)calendarsForEntityType:(EKEntityType)entityType
{
  v5 = [(EKObject *)self eventStore];
  v6 = [v5 calendarsForEntityType:entityType inSource:self];

  return v6;
}

- (id)calendarWithExternalIdentifier:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(EKSource *)self allCalendars];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 externalID];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([v5 count] >= 2 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKSource calendarWithExternalIdentifier:];
  }

  v14 = [v5 firstObject];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)removeCalendarItemsOlderThanDate:(id)a3 entityTypeMask:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (a4 - 1 >= 3)
  {
    if (a5)
    {
      [MEMORY[0x1E696ABC0] errorWithCADResult:1001];
      *a5 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v9 = dword_1A81C3E64[a4 - 1];
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__22;
    v22 = __Block_byref_object_dispose__22;
    v23 = 0;
    v10 = [(EKObject *)self eventStore];
    v11 = [v10 connection];
    v12 = [v11 CADOperationProxy];
    v13 = [(EKObject *)self CADObjectID];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __66__EKSource_removeCalendarItemsOlderThanDate_entityTypeMask_error___block_invoke;
    v17[3] = &unk_1E77FD310;
    v17[4] = &v18;
    [v12 CADRemoveCalendarItemsOlderThanDate:v8 ofType:v9 inSource:v13 reply:v17];

    v14 = v19[5];
    v15 = v14 == 0;
    if (a5 && v14)
    {
      *a5 = v14;
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

- (id)readWriteCalendarsForEntityType:(unint64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(EKObject *)self eventStore];
  v7 = [v6 calendarsForEntityType:a3];

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
        v13 = [v12 source];
        if ([v13 isEqual:self])
        {
          v14 = [v12 allowsContentModifications];

          if (v14)
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
    v3 = [(EKObject *)self eventStore];
    v4 = [v3 allowsIntegrationModifications];
  }

  else
  {
    v3 = [(EKSource *)self _constraintsInternal];
    v4 = [v3 allowsCalendarAddDeleteModify];
  }

  v5 = v4;

  return v5;
}

- (BOOL)constraintSupportsAvailabilityRequests
{
  v2 = [(EKSource *)self _constraintsInternal];
  v3 = [v2 supportsAvailabilityRequests];

  return v3;
}

- (BOOL)supportsCalendarTaskCreation
{
  v3 = [(EKSource *)self allowsTasks];
  if (v3)
  {

    LOBYTE(v3) = [(EKSource *)self supportsCalendarCreation];
  }

  return v3;
}

- (void)countCalendarItemsOfType:(unint64_t)a3 resultHandler:(id)a4
{
  if (a3 == 1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  [(EKSource *)self _countCalendarItemsOfCalType:v5 resultHandler:a4];
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
  v2 = [(EKSource *)self _constraintsInternal];
  v3 = [v2 supportsReminderActions];

  return v3;
}

- (id)_constraintsInternal
{
  v3 = [(EKObject *)self eventStore];
  v4 = [v3 cachedConstraintsForSource:self];

  return v4;
}

- (EKSourceConstraints)constraints
{
  v3 = [(EKObject *)self eventStore];
  v4 = [v3 cachedConstraintsForSource:self];

  return v4;
}

- (int)displayOrderForNewCalendar
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(EKSource *)self allCalendars];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    v5 = -1;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 displayOrder] > v5)
        {
          v5 = [v7 displayOrder];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
    LODWORD(v3) = v5 + 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

- (NSString)symbolicColorForNewCalendar
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(EKSource *)self allCalendars];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 symbolicColorName];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 type];

          if (v12 != 4)
          {
            v13 = [v9 symbolicColorName];
            [v3 addObject:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = [MEMORY[0x1E69930B8] symbolicColorForNewCalendarWithExistingSymbolicNames:v3];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)fetchOfficeHoursWithCompletion:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EKSource *)self externalID];
  v9 = [MEMORY[0x1E69998A8] sharedConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__EKSource_fetchOfficeHoursWithCompletion_onQueue___block_invoke;
  v11[3] = &unk_1E7800150;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 fetchOfficeHoursForAccountWithID:v8 queue:v7 completionBlock:v11];
}

void __51__EKSource_fetchOfficeHoursWithCompletion_onQueue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = [v6 _ekOfficeHoursFromCalDAVOfficeHours:a3];
  (*(*(a1 + 40) + 16))();
}

- (id)_ekOfficeHoursFromCalDAVOfficeHours:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DEE8];
    v4 = a3;
    v5 = [v3 currentCalendar];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__EKSource__ekOfficeHoursFromCalDAVOfficeHours___block_invoke;
    v12[3] = &unk_1E7800178;
    v13 = v5;
    v7 = v6;
    v14 = v7;
    v8 = v5;
    [v4 enumerateObjectsUsingBlock:v12];

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

- (void)setOfficeHours:(id)a3 withCompletion:(id)a4 onQueue:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(EKSource *)self _calDAVOfficeHoursFromEKOfficeHours:a3];
  v11 = [(EKSource *)self externalID];
  v12 = [MEMORY[0x1E69998A8] sharedConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__EKSource_setOfficeHours_withCompletion_onQueue___block_invoke;
  v14[3] = &unk_1E78001A0;
  v15 = v8;
  v13 = v8;
  [v12 setOfficeHours:v10 forAccountWithID:v11 queue:v9 completionBlock:v14];
}

- (id)_calDAVOfficeHoursFromEKOfficeHours:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
    v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = v3;
    obj = v3;
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
          v10 = [v8 startTime];
          if (v10)
          {
            v11 = [v8 startTime];
            v12 = [v4 components:608 fromDate:v11];

            v13 = [v8 timeZone];
            [v12 setTimeZone:v13];
          }

          else
          {
            v12 = 0;
          }

          v14 = [v8 endTime];
          if (v14)
          {
            v15 = [v8 endTime];
            v16 = [v4 components:608 fromDate:v15];

            v17 = [v8 timeZone];
            [v16 setTimeZone:v17];
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

    v3 = v20;
  }

  else
  {
    v23 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)_nsErrorFromSyncError:(id)a3 event:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && ([v6 errorType] || objc_msgSend(v6, "errorCode")) && (objc_msgSend(v6, "errorType") != 1 || objc_msgSend(v6, "errorCode")))
  {
    v8 = [v6 errorType];
    v9 = kEKAccountErrorDomain;
    if (v8)
    {
      v9 = kEKCalendarItemErrorDomain;
    }

    v10 = *v9;
    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = self;
    }

    v12 = v11;
    v13 = [v6 userInfo];
    v14 = [EKSyncError augmentSyncErrorUserInfo:v13 for:v12];

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:v10 code:objc_msgSend(v6 userInfo:{"errorCode"), v14}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSError)sourceError
{
  v3 = [(EKSource *)self syncError];
  v4 = [(EKSource *)self _nsErrorFromSyncError:v3 event:0];

  return v4;
}

- (NSError)sourceOrEventError
{
  v3 = [(EKSource *)self sourceError];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(EKObject *)self eventStore];
    v7 = [v6 eventsWithErrorsPerSourceID];
    v8 = [(EKObject *)self objectID];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [v9 syncError];
      v5 = [(EKSource *)self _nsErrorFromSyncError:v10 event:v9];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setLastSyncError:(unint64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  v8 = v6;
  if (a3 || v6)
  {
    v7 = [[EKSyncError alloc] initWithAccountError:a3 userInfo:v6];
    [(EKSource *)self setSyncError:v7];
  }

  else
  {
    [(EKSource *)self setSyncError:0];
  }
}

- (NSDictionary)lastSyncErrorUserInfo
{
  v2 = [(EKSource *)self syncError];
  v3 = [v2 userInfo];

  return v3;
}

- (void)setSyncError:(id)a3
{
  v4 = *MEMORY[0x1E6992D98];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKSyncError frozenClass]];
}

- (int)displayOrder
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D20]];
  v3 = [v2 intValue];

  return v3;
}

- (BOOL)isPrimaryLocalSource
{
  v2 = [(EKObject *)self objectID];
  v3 = [objc_opt_class() primaryLocalSourceID];
  v4 = [v2 isEqual:v3];

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
  v5 = [(EKSource *)self sourceIdentifier];
  v6 = description_kTypeStrings[[(EKSource *)self sourceType]];
  v7 = [(EKSource *)self title];
  v8 = [(EKSource *)self externalID];
  v9 = [v3 stringWithFormat:@"%@ <%p> {UUID = %@ type = %@; title = %@; externalID = %@}", v4, self, v5, v6, v7, v8];;

  return v9;
}

- (BOOL)_validateClientCanModifySources:(id *)a3
{
  v4 = [(EKObject *)self eventStore];
  v5 = [v4 clientCanModifySources];

  if (a3 && (v5 & 1) == 0)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:58];
  }

  return v5;
}

- (BOOL)validate:(id *)a3
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

  LODWORD(v8) = [(EKSource *)self _validateClientCanModifySources:a3];
  if (v8)
  {
    v9 = [(EKSource *)self sourceIdentifier];
    v10 = [v9 length];

    if (v10)
    {
LABEL_5:
      LOBYTE(v8) = 1;
      goto LABEL_6;
    }

    if (a3)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:65];
      v8 = v12;
      LOBYTE(v8) = 0;
      *a3 = v12;
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
    v8 = [(EKSource *)self defaultAlarmOffset];
    v3 = [(EKSource *)self defaultAllDayAlarmOffset];
    if (!(v8 | v3))
    {
      v4 = [(EKObject *)self eventStore];
      v5 = [v4 defaultTimedAlarmOffset];
      [(EKSource *)self setDefaultAlarmOffset:v5];

      v6 = [(EKObject *)self eventStore];
      v7 = [v6 defaultAllDayAlarmOffset];
      [(EKSource *)self setDefaultAllDayAlarmOffset:v7];
    }
  }
}

- (BOOL)save:(id *)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
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

  v9 = [(EKSource *)self isDelegate];

  if (v9)
  {
    v10 = [(EKObject *)self _previousValueForKey:v4];
    v11 = [v10 intValue];

    v12 = [(EKSource *)self isInMainWindow];
    v13 = [(EKSource *)self isInSeparateWindow];
    if (v12 == ((v11 & 0x100) == 0) || ((((v11 & 0x200) == 0) ^ v13) & 1) == 0)
    {
      v14 = v12 || v13;
      if ((v12 || v13) == [(EKSource *)self disabled])
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

- (BOOL)remove:(id *)a3
{
  if (![(EKSource *)self _validateClientCanModifySources:?])
  {
    goto LABEL_5;
  }

  if ([(EKSource *)self isPrimaryLocalSource])
  {
    if (a3)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:59];
      *a3 = v5 = 0;
      return v5 & 1;
    }

LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  v6 = [(EKObject *)self backingObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:68];
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    [(EKObject *)self deletePersistentObject];
  }

  v5 = isKindOfClass ^ 1;

  return v5 & 1;
}

- (id)availabilityCache
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_availabilityCache)
  {
    v3 = [[EKAvailabilityCache alloc] initWithSource:v2];
    availabilityCache = v2->_availabilityCache;
    v2->_availabilityCache = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_availabilityCache;

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

- (void)setCachedExternalInfo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = MEMORY[0x1E696AE40];
  v6 = [(EKSource *)self _convertTypeOfOwnerAddresses:v4 toSet:0];
  v10 = 0;
  v7 = [v5 dataWithPropertyList:v6 format:200 options:0 error:&v10];
  v8 = v10;

  if (v7)
  {

    v8 = v7;
LABEL_5:
    v9 = [(EKSource *)self _convertTypeOfOwnerAddresses:v4 toSet:1];
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

- (id)_convertTypeOfOwnerAddresses:(id)a3 toSet:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = *MEMORY[0x1E6992CB0];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6992CB0]];
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() ^ v4))
    {
      if (v4)
      {
        [MEMORY[0x1E695DFD8] setWithArray:v8];
      }

      else
      {
        [v8 allObjects];
      }
      v10 = ;

      v9 = [v5 mutableCopy];
      [v9 setObject:v10 forKeyedSubscript:v6];
    }

    else
    {
      v9 = [v5 copy];
    }
  }

  else
  {
    v9 = [v5 copy];
  }

  return v9;
}

- (NSURL)serverURL
{
  v3 = [(EKSource *)self serverHost];
  if (v3)
  {
    v4 = [(EKSource *)self serverPort];
    v5 = [(EKSource *)self serverUsesSSL];
    v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v6 setHost:v3];
    v7 = 80;
    if (v5)
    {
      v7 = 443;
    }

    if (v4 != v7)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
      [v6 setPort:v8];
    }

    if (v5)
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

- (id)externalInfoForKey:(id)a3
{
  v4 = a3;
  v5 = [(EKSource *)self cachedExternalInfo];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:v4];
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
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)serverUsesSSL
{
  v2 = [(EKSource *)self externalInfoForKey:*MEMORY[0x1E6992CC8]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isPrimaryAppleAccount
{
  v2 = [(EKSource *)self externalInfoForKey:*MEMORY[0x1E6992CA8]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int)managedConfigurationAccountAccess
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992D50]];
  v3 = [v2 intValue];

  return v3;
}

- (BOOL)supportsEventCalendarCreation
{
  v3 = [(EKSource *)self supportsCalendarCreation];
  if (v3)
  {

    LOBYTE(v3) = [(EKSource *)self allowsEvents];
  }

  return v3;
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
  v3 = [(EKObject *)self eventStore];
  v4 = [(EKSource *)self sourceIdentifier];
  v5 = [v3 sourceWithIdentifier:v4];

  if (v5)
  {
    v6 = [v5 backingObject];
    [(EKObject *)self _resetWithFrozenObject:v6];
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