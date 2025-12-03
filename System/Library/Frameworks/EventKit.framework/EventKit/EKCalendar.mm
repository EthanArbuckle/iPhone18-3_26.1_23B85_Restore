@interface EKCalendar
+ (EKCalendar)calendarForEntityType:(EKEntityType)entityType eventStore:(EKEventStore *)eventStore;
+ (id)EKObjectChangeSummarizer_multiValueDiffKeys;
+ (id)EKObjectChangeSummarizer_singleValueDiffKeys;
+ (id)_eventKitBundle;
+ (id)calendarForEntityTypes:(unint64_t)types eventStore:(id)store;
+ (id)knownIdentityKeysForComparison;
+ (id)knownRelationshipMultiValueKeys;
+ (id)knownRelationshipSingleValueKeys;
+ (id)knownRelationshipWeakKeys;
+ (id)knownSingleValueKeysForComparison;
+ (id)orderSortDescriptors;
+ (id)rowIDsForCalendars:(id)calendars;
+ (id)typeDescription:(int64_t)description;
- (BOOL)_anotherCalendarForDefaultSchedulingExistsWithAllKnownCalendars:(id)calendars;
- (BOOL)_anyCalendarExistsInSameSourceOfType:(unint64_t)type withAllKnownCalendars:(id)calendars passingTest:(id)test;
- (BOOL)_reset;
- (BOOL)_validateDeletableDueToAccessConsent:(id *)consent;
- (BOOL)_validateDeletableHelperWithAllKnownCalendars:(id)calendars error:(id *)error;
- (BOOL)_validateDeletableWithAllKnownCalendars:(id)calendars error:(id *)error;
- (BOOL)allowsContentModifications;
- (BOOL)allowsDeletionOrPropertyModifications;
- (BOOL)allowsIgnoringSharedEventChangeNotifications;
- (BOOL)automaticEventLocationGeocodingAllowed;
- (BOOL)canBeShared;
- (BOOL)canMergeWithCalendar:(id)calendar;
- (BOOL)couldBeJunk;
- (BOOL)eligibleForDefaultSchedulingCalendar;
- (BOOL)getColorRed:(double *)red green:(double *)green blue:(double *)blue;
- (BOOL)hasEvents;
- (BOOL)hasEventsWithRoomAsAttendee;
- (BOOL)hasSharees;
- (BOOL)isAlarmAcknowledgedPropertyDirty;
- (BOOL)isColorDisplayOnly;
- (BOOL)isHolidayCalendar;
- (BOOL)isImmutable;
- (BOOL)isInferredWorkCalendar;
- (BOOL)isManaged;
- (BOOL)isMutableNaturalLanguageSuggestionsCalendar;
- (BOOL)isMutableSuggestionsCalendar;
- (BOOL)isPublished;
- (BOOL)isSyncing;
- (BOOL)refresh;
- (BOOL)remove:(id *)remove;
- (BOOL)removeServerRefreshRelatedPropertiesForSelfAndAllEventsSaveAndCommitWithError:(id *)error;
- (BOOL)save:(id *)save;
- (BOOL)supportsJunkReporting;
- (BOOL)supportsMultipleAlarms;
- (BOOL)validate:(id *)validate;
- (CGColor)_newColorWithAdjustedColorSpaceFromColor:(CGColor *)color;
- (CGColorRef)CGColor;
- (EKCalendar)init;
- (EKCalendarEventAvailabilityMask)supportedEventAvailabilities;
- (EKCalendarType)type;
- (EKEntityMask)allowedEntityTypes;
- (NSString)title;
- (id)alarms;
- (id)allAlarms;
- (id)cachedExternalInfo;
- (id)calendarError;
- (id)colorString;
- (id)constraints;
- (id)description;
- (id)exportDataWithOptions:(unint64_t)options;
- (id)externalInfoForKey:(id)key;
- (id)externalURI;
- (id)findOriginalAlarmStartingWith:(id)with;
- (id)lastSyncErrorUserInfo;
- (id)ownerIdentityAddress;
- (id)ownerIdentityDisplayName;
- (id)ownerIdentityOrganizer;
- (id)publishURL;
- (id)reorderCalendars:(id)calendars betweenEarlier:(id)earlier later:(id)later;
- (id)selectionSyncIdentifier;
- (id)selfIdentityAddress;
- (id)selfIdentityDisplayName;
- (id)sharedOwnerAddress;
- (id)sharedOwnerAddressesWithoutScheme;
- (id)sharedOwnerEmail;
- (id)sharedOwnerPhoneNumber;
- (id)sharedOwnerURL;
- (id)sharees;
- (id)shareesAndOwner;
- (id)syncHash;
- (int)allowedEntities;
- (int)displayOrder;
- (int)migrationVersion;
- (int)ownerIdentityId;
- (int)refreshInterval;
- (int64_t)deletionWarningsMask;
- (int64_t)maxAttendees;
- (unint64_t)invitationStatus;
- (unint64_t)lastSyncError;
- (unint64_t)sharingInvitationResponse;
- (unint64_t)sharingStatus;
- (unsigned)flags;
- (void)_setFlagValue:(BOOL)value withMask:(unsigned int)mask;
- (void)_updateToMaxDisplayOrder;
- (void)addAlarms:(id)alarms;
- (void)addSharee:(id)sharee;
- (void)assignColorForNewCalendarIfNeeded;
- (void)calendarError;
- (void)clearInvitationStatus;
- (void)moveSubscribedCalendarToSource:(id)source;
- (void)removeAcknowledgedSnoozedAlarms;
- (void)removeAlarms:(id)alarms;
- (void)removeAllSnoozedAlarms;
- (void)removeSharee:(id)sharee;
- (void)reorderBetweenEarlier:(id)earlier later:(id)later;
- (void)reset;
- (void)rollback;
- (void)setAlarms:(id)alarms;
- (void)setAllowedEntityTypes:(unint64_t)types;
- (void)setCGColor:(CGColorRef)CGColor;
- (void)setCachedExternalInfo:(id)info;
- (void)setColorString:(id)string;
- (void)setImage:(id)image;
- (void)setInvitationStatus:(unint64_t)status;
- (void)setIsJunk:(BOOL)junk;
- (void)setLastSyncError:(unint64_t)error userInfo:(id)info;
- (void)setMaxAttendees:(int64_t)attendees;
- (void)setOwnerIdentityAddress:(id)address;
- (void)setOwnerIdentityDisplayName:(id)name;
- (void)setPublishURL:(id)l;
- (void)setSelfIdentityAddress:(id)address;
- (void)setSharedOwnerAddress:(id)address;
- (void)setSharedOwnerURL:(id)l;
- (void)setSharees:(id)sharees;
- (void)setSharingInvitationResponse:(unint64_t)response;
- (void)setSharingStatus:(unint64_t)status;
- (void)setSource:(EKSource *)source;
- (void)setSymbolicColorName:(id)name;
- (void)setSyncError:(id)error;
- (void)snoozeAlarm:(id)alarm withLocation:(id)location proximity:(int64_t)proximity;
- (void)snoozeAlarm:(id)alarm withTimeIntervalFromNow:(double)now;
@end

@implementation EKCalendar

- (int)allowedEntities
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992718]];
  intValue = [v2 intValue];

  return intValue;
}

- (EKEntityMask)allowedEntityTypes
{
  allowedEntities = [(EKCalendar *)self allowedEntities];
  v3 = 2;
  if (allowedEntities != 8)
  {
    v3 = 3;
  }

  if (allowedEntities == 4)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (BOOL)isHolidayCalendar
{
  if ([(EKCalendar *)self isSyncedHolidayCalendar])
  {
    return 1;
  }

  return [(EKCalendar *)self isSubscribedHolidayCalendar];
}

- (unsigned)flags
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992760]];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (EKCalendarType)type
{
  if ([(EKCalendar *)self isSubscribed])
  {
    return 3;
  }

  source = [(EKCalendar *)self source];
  sourceType = [source sourceType];

  if (sourceType <= 3)
  {
    if (sourceType == 1)
    {
      return 2;
    }

    else
    {
      return (sourceType == 2);
    }
  }

  else
  {
    switch(sourceType)
    {
      case 4:
        return 3;
      case 5:
        if ([(EKCalendar *)self isSuggestedEventCalendar])
        {
          return 5;
        }

        else if ([(EKCalendar *)self isNaturalLanguageSuggestedEventCalendar])
        {
          return 5;
        }

        else
        {
          return 4;
        }

      case 6:
        return 6;
      default:
        return 0;
    }
  }
}

- (id)selectionSyncIdentifier
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:100];
  source = [(EKCalendar *)self source];
  sourceIdentifier = [source sourceIdentifier];
  if (![source sourceType])
  {
    v6 = @"LOCAL";
    goto LABEL_5;
  }

  if ([source sourceType] == 5)
  {
    v6 = @"BIRTHDAYS";
LABEL_5:

    sourceIdentifier = v6;
LABEL_9:
    [v3 appendString:sourceIdentifier];

    goto LABEL_10;
  }

  if ([source sourceType] == 6)
  {
    externalID = [source externalID];

    sourceIdentifier = externalID;
  }

  if (sourceIdentifier)
  {
    goto LABEL_9;
  }

LABEL_10:
  [v3 appendString:@";"];
  externalID2 = [(EKCalendar *)self externalID];
  if (externalID2)
  {
    [v3 appendString:externalID2];
  }

  else
  {
    title = [(EKCalendar *)self title];
    v10 = title;
    if (title)
    {
      v11 = title;
    }

    else
    {
      v11 = @"-";
    }

    [v3 appendString:v11];

    [v3 appendFormat:@";%d;", -[EKCalendar type](self, "type")];
    colorString = [(EKCalendar *)self colorString];
    v13 = colorString;
    if (colorString)
    {
      v14 = colorString;
    }

    else
    {
      v14 = @"-";
    }

    [v3 appendString:v14];
  }

  v15 = [v3 copy];

  return v15;
}

- (NSString)title
{
  v3 = MEMORY[0x1E6992FD0];
  unlocalizedTitle = [(EKCalendar *)self unlocalizedTitle];
  isSuggestedEventCalendar = [(EKCalendar *)self isSuggestedEventCalendar];
  v6 = [(EKCalendar *)self type]== EKCalendarTypeBirthday;
  allowReminders = [(EKCalendar *)self allowReminders];
  source = [(EKCalendar *)self source];
  v9 = [v3 localizedTitleForTitle:unlocalizedTitle isSuggestedEventCalendar:isSuggestedEventCalendar isBirthdayCalendar:v6 allowsReminders:allowReminders isIntegrationCalendar:{objc_msgSend(source, "sourceType") == 6}];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_1F1B49D68;
  }

  v11 = v10;

  return &v10->isa;
}

- (id)syncHash
{
  v18 = *MEMORY[0x1E69E9840];
  externalID = [(EKCalendar *)self externalID];
  v4 = externalID;
  if (externalID)
  {
    v5 = externalID;
  }

  else
  {
    memset(&c, 0, sizeof(c));
    CC_MD5_Init(&c);
    title = [(EKCalendar *)self title];
    uTF8String = [title UTF8String];

    if (uTF8String)
    {
      v8 = strlen(uTF8String);
      CC_MD5_Update(&c, uTF8String, v8);
    }

    data = [(EKCalendar *)self type];
    CC_MD5_Update(&c, &data, 1u);
    colorString = [(EKCalendar *)self colorString];
    uTF8String2 = [colorString UTF8String];

    if (uTF8String2)
    {
      v11 = strlen(uTF8String2);
      CC_MD5_Update(&c, uTF8String2, v11);
    }

    CC_MD5_Final(md, &c);
    v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:md length:16 freeWhenDone:0];
    v5 = [v12 base64EncodedStringWithOptions:2];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)colorString
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992890]];
  if (!v3 || ([EKSymbolicColorToRGBMapping() objectForKey:v3], (colorStringRaw = objc_claimAutoreleasedReturnValue()) == 0))
  {
    colorStringRaw = [(EKCalendar *)self colorStringRaw];
  }

  return colorStringRaw;
}

- (unint64_t)lastSyncError
{
  syncError = [(EKCalendar *)self syncError];
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

- (CGColorRef)CGColor
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__EKCalendar_CGColor__block_invoke;
  v5[3] = &unk_1E77FCF40;
  v5[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"CGColor" populateBlock:v5];
  color = [v2 color];

  return color;
}

CGColorWrapper *__21__EKCalendar_CGColor__block_invoke(uint64_t a1)
{
  components[4] = *MEMORY[0x1E69E9840];
  v7 = 0.0;
  v8 = 0.0;
  v6 = 0.0;
  v1 = 0;
  if ([*(a1 + 32) getColorRed:&v8 green:&v6 blue:&v7])
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    components[0] = v8;
    components[1] = v6;
    components[2] = v7;
    components[3] = 1.0;
    v3 = CGColorCreate(DeviceRGB, components);
    CFRelease(DeviceRGB);
    v1 = [[CGColorWrapper alloc] initWithCGColor:v3];
    CGColorRelease(v3);
  }

  v4 = *MEMORY[0x1E69E9840];

  return v1;
}

+ (id)EKObjectChangeSummarizer_singleValueDiffKeys
{
  if (EKObjectChangeSummarizer_singleValueDiffKeys_onceToken != -1)
  {
    +[EKCalendar(EKObjectChangeSummarizer) EKObjectChangeSummarizer_singleValueDiffKeys];
  }

  v3 = EKObjectChangeSummarizer_singleValueDiffKeys_diffKeys;

  return v3;
}

void __84__EKCalendar_EKObjectChangeSummarizer__EKObjectChangeSummarizer_singleValueDiffKeys__block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992730];
  v4[0] = *MEMORY[0x1E69928A8];
  v4[1] = v0;
  v5[0] = @"EKChangedCalendarTitle";
  v5[1] = @"EKChangedCalendarColor";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v2 = EKObjectChangeSummarizer_singleValueDiffKeys_diffKeys;
  EKObjectChangeSummarizer_singleValueDiffKeys_diffKeys = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)EKObjectChangeSummarizer_multiValueDiffKeys
{
  if (EKObjectChangeSummarizer_multiValueDiffKeys_onceToken != -1)
  {
    +[EKCalendar(EKObjectChangeSummarizer) EKObjectChangeSummarizer_multiValueDiffKeys];
  }

  v3 = EKObjectChangeSummarizer_multiValueDiffKeys_diffKeys;

  return v3;
}

void __83__EKCalendar_EKObjectChangeSummarizer__EKObjectChangeSummarizer_multiValueDiffKeys__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E6992710];
  v7[0] = @"add";
  v7[1] = @"remove";
  v8[0] = @"EKChangedAlarmsAdded";
  v8[1] = @"EKChangedAlarmsRemoved";
  v7[2] = @"modify";
  v8[2] = @"EKChangedAlarmsModified";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v9[1] = *MEMORY[0x1E6992858];
  v10[0] = v0;
  v5[0] = @"add";
  v5[1] = @"remove";
  v6[0] = @"EKChangedShareesAdded";
  v6[1] = @"EKChangedShareesRemoved";
  v5[2] = @"modify";
  v6[2] = @"EKChangedShareesModified";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v10[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v3 = EKObjectChangeSummarizer_multiValueDiffKeys_diffKeys;
  EKObjectChangeSummarizer_multiValueDiffKeys_diffKeys = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)rowIDsForCalendars:(id)calendars
{
  v20 = *MEMORY[0x1E69E9840];
  calendarsCopy = calendars;
  if (calendarsCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(calendarsCopy, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = calendarsCopy;
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

          v10 = MEMORY[0x1E696AD98];
          objectID = [*(*(&v15 + 1) + 8 * i) objectID];
          v12 = [v10 numberWithInt:{objc_msgSend(objectID, "rowID")}];
          [v4 addObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)knownRelationshipWeakKeys
{
  if (knownRelationshipWeakKeys_onceToken_4 != -1)
  {
    +[EKCalendar knownRelationshipWeakKeys];
  }

  v3 = knownRelationshipWeakKeys_keys_4;

  return v3;
}

void __39__EKCalendar_knownRelationshipWeakKeys__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992870];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownRelationshipWeakKeys_keys_4;
  knownRelationshipWeakKeys_keys_4 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)knownRelationshipSingleValueKeys
{
  if (knownRelationshipSingleValueKeys_onceToken_3 != -1)
  {
    +[EKCalendar knownRelationshipSingleValueKeys];
  }

  v3 = knownRelationshipSingleValueKeys_keys_3;

  return v3;
}

void __46__EKCalendar_knownRelationshipSingleValueKeys__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992898];
  v4[0] = *MEMORY[0x1E6992870];
  v4[1] = v0;
  v4[2] = *MEMORY[0x1E6992768];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = knownRelationshipSingleValueKeys_keys_3;
  knownRelationshipSingleValueKeys_keys_3 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)knownRelationshipMultiValueKeys
{
  if (knownRelationshipMultiValueKeys_onceToken_3 != -1)
  {
    +[EKCalendar knownRelationshipMultiValueKeys];
  }

  v3 = knownRelationshipMultiValueKeys_keys_3;

  return v3;
}

void __45__EKCalendar_knownRelationshipMultiValueKeys__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992858];
  v4[0] = *MEMORY[0x1E6992710];
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = knownRelationshipMultiValueKeys_keys_3;
  knownRelationshipMultiValueKeys_keys_3 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken_7 != -1)
  {
    +[EKCalendar knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys_7;

  return v3;
}

void __44__EKCalendar_knownIdentityKeysForComparison__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992B08];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownIdentityKeysForComparison_keys_7;
  knownIdentityKeysForComparison_keys_7 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)knownSingleValueKeysForComparison
{
  if (knownSingleValueKeysForComparison_onceToken_6 != -1)
  {
    +[EKCalendar knownSingleValueKeysForComparison];
  }

  v3 = knownSingleValueKeysForComparison_keys_6;

  return v3;
}

void __47__EKCalendar_knownSingleValueKeysForComparison__block_invoke()
{
  v18[30] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992730];
  v18[0] = *MEMORY[0x1E6992718];
  v18[1] = v0;
  v1 = *MEMORY[0x1E6992740];
  v18[2] = *MEMORY[0x1E6992738];
  v18[3] = v1;
  v2 = *MEMORY[0x1E6992760];
  v18[4] = *MEMORY[0x1E6992758];
  v18[5] = v2;
  v3 = *MEMORY[0x1E6992778];
  v18[6] = *MEMORY[0x1E6992770];
  v18[7] = v3;
  v4 = *MEMORY[0x1E69927B8];
  v18[8] = *MEMORY[0x1E69927A8];
  v18[9] = v4;
  v5 = *MEMORY[0x1E69927C8];
  v18[10] = *MEMORY[0x1E69927C0];
  v18[11] = v5;
  v6 = *MEMORY[0x1E69927D8];
  v18[12] = *MEMORY[0x1E69927D0];
  v18[13] = v6;
  v7 = *MEMORY[0x1E69927E8];
  v18[14] = *MEMORY[0x1E69927E0];
  v18[15] = v7;
  v8 = *MEMORY[0x1E6992818];
  v18[16] = *MEMORY[0x1E69927F8];
  v18[17] = v8;
  v9 = *MEMORY[0x1E6992828];
  v18[18] = *MEMORY[0x1E6992820];
  v18[19] = v9;
  v10 = *MEMORY[0x1E6992838];
  v18[20] = *MEMORY[0x1E6992830];
  v18[21] = v10;
  v11 = *MEMORY[0x1E6992850];
  v18[22] = *MEMORY[0x1E6992840];
  v18[23] = v11;
  v12 = *MEMORY[0x1E6992860];
  v18[24] = *MEMORY[0x1E6992848];
  v18[25] = v12;
  v13 = *MEMORY[0x1E6992878];
  v18[26] = *MEMORY[0x1E6992868];
  v18[27] = v13;
  v14 = *MEMORY[0x1E69928A8];
  v18[28] = *MEMORY[0x1E6992890];
  v18[29] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:30];
  v16 = knownSingleValueKeysForComparison_keys_6;
  knownSingleValueKeysForComparison_keys_6 = v15;

  v17 = *MEMORY[0x1E69E9840];
}

+ (EKCalendar)calendarForEntityType:(EKEntityType)entityType eventStore:(EKEventStore *)eventStore
{
  v6 = eventStore;
  if (entityType >= 2)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid entity type passed: %d", entityType}];
  }

  IsReminderBridgeEnabled = CalIsReminderBridgeEnabled();
  if (entityType && (IsReminderBridgeEnabled & 1) != 0)
  {
    reminderStore = [(EKEventStore *)v6 reminderStore];
    createNewReminderCalendar = [reminderStore createNewReminderCalendar];
  }

  else
  {
    createNewReminderCalendar = [self calendarForEntityTypes:1 << entityType eventStore:v6];
  }

  return createNewReminderCalendar;
}

+ (id)calendarForEntityTypes:(unint64_t)types eventStore:(id)store
{
  storeCopy = store;
  if (!storeCopy)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKCalendar calendarForEntityTypes:v7 eventStore:?];
    }
  }

  v8 = objc_alloc_init(EKPersistentCalendar);
  [storeCopy _registerObject:v8];
  v9 = [[self alloc] initWithPersistentObject:v8];
  [v9 _updateToMaxDisplayOrder];
  v10 = EKUUIDString();
  [v9 setCalendarIdentifier:v10];

  [v9 setAllowedEntityTypes:types];

  return v9;
}

- (void)_updateToMaxDisplayOrder
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  eventStore = [(EKObject *)self eventStore];
  _allCalendars = [eventStore _allCalendars];

  v5 = [_allCalendars countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(_allCalendars);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 displayOrder] != 0x7FFFFFFF)
        {
          displayOrder = [v10 displayOrder];
          if (displayOrder > v7)
          {
            v7 = displayOrder;
          }
        }
      }

      v6 = [_allCalendars countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
    v12 = (v7 + 1);
  }

  else
  {
    v12 = 1;
  }

  [(EKCalendar *)self setDisplayOrder:v12];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)reorderBetweenEarlier:(id)earlier later:(id)later
{
  v11[1] = *MEMORY[0x1E69E9840];
  earlierCopy = earlier;
  laterCopy = later;
  v11[0] = self;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(EKCalendar *)self reorderCalendars:v8 betweenEarlier:earlierCopy later:laterCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (id)reorderCalendars:(id)calendars betweenEarlier:(id)earlier later:(id)later
{
  calendarsCopy = calendars;
  earlierCopy = earlier;
  laterCopy = later;
  if (!(earlierCopy | laterCopy))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"earlier == nil && later == nil"];
  }

  source = [earlierCopy source];
  v12 = source;
  if (source)
  {
    localSource = source;
  }

  else
  {
    source2 = [laterCopy source];
    v15 = source2;
    if (source2)
    {
      localSource = source2;
    }

    else
    {
      eventStore = [(EKObject *)self eventStore];
      localSource = [eventStore localSource];
    }
  }

  v17 = MEMORY[0x1E695DF70];
  allCalendars = [localSource allCalendars];
  orderSortDescriptors = [objc_opt_class() orderSortDescriptors];
  v20 = [allCalendars sortedArrayUsingDescriptors:orderSortDescriptors];
  v21 = [v17 arrayWithArray:v20];

  v22 = [v21 objectAtIndexedSubscript:0];
  displayOrder = [v22 displayOrder];

  [v21 removeObjectsInArray:calendarsCopy];
  if (earlierCopy)
  {
    v24 = earlierCopy;
  }

  else
  {
    v24 = laterCopy;
  }

  v25 = [v21 indexOfObject:v24];
  if (earlierCopy)
  {
    v26 = v25 + 1;
  }

  else
  {
    v26 = v25;
  }

  v27 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v26, objc_msgSend(calendarsCopy, "count")}];
  [v21 insertObjects:calendarsCopy atIndexes:v27];
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __52__EKCalendar_reorderCalendars_betweenEarlier_later___block_invoke;
  v32[3] = &unk_1E77FFE58;
  v35 = displayOrder;
  v29 = v28;
  v33 = v29;
  selfCopy = self;
  [v21 enumerateObjectsUsingBlock:v32];
  v30 = v29;

  return v29;
}

void __52__EKCalendar_reorderCalendars_betweenEarlier_later___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = (*(a1 + 48) + a3);
  v8 = v5;
  if (v6 != [v5 displayOrder])
  {
    [*(a1 + 32) addObject:v8];
    [v8 setDisplayOrder:v6];
    v7 = [*(a1 + 40) eventStore];
    [v7 saveCalendar:v8 commit:0 error:0];
  }
}

+ (id)orderSortDescriptors
{
  if (orderSortDescriptors_onceToken != -1)
  {
    +[EKCalendar orderSortDescriptors];
  }

  v3 = orderSortDescriptors_descriptors;

  return v3;
}

void __34__EKCalendar_orderSortDescriptors__block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"source.isDelegate" ascending:1];
  v1 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"source._adjustedDisplayOrder" ascending:1];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"source.sourceType" ascending:1];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"displayOrder" ascending:1];
  v7[0] = v0;
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v5 = orderSortDescriptors_descriptors;
  orderSortDescriptors_descriptors = v4;

  v6 = *MEMORY[0x1E69E9840];
}

- (EKCalendar)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Can't directly init a calendar. Use calendarWithEventStore" userInfo:0];
  objc_exception_throw(v2);
}

- (void)rollback
{
  v3.receiver = self;
  v3.super_class = EKCalendar;
  [(EKObject *)&v3 rollback];
  [(EKCalendar *)self _clearCGColorCache];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = EKCalendar;
  [(EKObject *)&v3 reset];
  [(EKCalendar *)self _clearCGColorCache];
}

- (BOOL)_reset
{
  v7.receiver = self;
  v7.super_class = EKCalendar;
  _reset = [(EKObject *)&v7 _reset];
  if (_reset)
  {
    v4 = objc_opt_class();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __20__EKCalendar__reset__block_invoke;
    v6[3] = &unk_1E77FE7D0;
    v6[4] = self;
    LOBYTE(_reset) = [(EKObject *)self _resetIfBackingObjectIsOfClass:v4 fetchResetFrozenObjectBlock:v6];
  }

  return _reset;
}

id __20__EKCalendar__reset__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventStore];
  v3 = [v2 reminderStore];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 backingCalendarWithIdentifier:v4];

  return v5;
}

+ (id)_eventKitBundle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__EKCalendar__eventKitBundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_eventKitBundle_onceToken != -1)
  {
    dispatch_once(&_eventKitBundle_onceToken, block);
  }

  v2 = _eventKitBundle_bundle;

  return v2;
}

uint64_t __29__EKCalendar__eventKitBundle__block_invoke(uint64_t a1)
{
  _eventKitBundle_bundle = [MEMORY[0x1E696AAE8] bundleForClass:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (void)assignColorForNewCalendarIfNeeded
{
  colorStringRaw = [(EKCalendar *)self colorStringRaw];

  if (!colorStringRaw)
  {
    eventStore = [(EKObject *)self eventStore];
    colorStringForNewCalendar = [eventStore colorStringForNewCalendar];

    v5 = colorStringForNewCalendar;
    if (colorStringForNewCalendar)
    {
      [(EKCalendar *)self setColorStringRaw:colorStringForNewCalendar];
      [(EKCalendar *)self setColorDisplayOnly:1];
      v5 = colorStringForNewCalendar;
    }
  }
}

- (void)setSymbolicColorName:(id)name
{
  nameCopy = name;
  [(EKObject *)self setSingleChangedValue:nameCopy forKey:*MEMORY[0x1E6992890]];
  v4 = [EKSymbolicColorToRGBMapping() objectForKey:nameCopy];
  if (v4)
  {
    [(EKCalendar *)self setColorStringRaw:v4];
  }

  if (nameCopy && ([nameCopy isEqualToString:*MEMORY[0x1E69E4048]] & 1) == 0)
  {
    [(EKCalendar *)self _clearCGColorCache];
  }
}

- (BOOL)isColorDisplayOnly
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992728]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setColorString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (!stringCopy)
  {
    [(EKCalendar *)self _clearCGColorCache];
    stringCopy = 0;
  }

  [(EKCalendar *)self setColorStringRaw:stringCopy];
  [(EKCalendar *)self setColorDisplayOnly:0];
  [(EKObject *)self setSingleChangedValue:*MEMORY[0x1E69E4048] forKey:*MEMORY[0x1E6992890]];
}

- (BOOL)getColorRed:(double *)red green:(double *)green blue:(double *)blue
{
  colorString = [(EKCalendar *)self colorString];
  v9 = colorString;
  if (colorString)
  {
    v13 = 0;
    v11 = 0;
    v12 = 0;
    sscanf([colorString UTF8String], "#%02X%02X%02X", &v13, &v12, &v11);
    if (red)
    {
      *red = (v13 / 255.0);
    }

    if (green)
    {
      *green = (v12 / 255.0);
    }

    if (blue)
    {
      *blue = (v11 / 255.0);
    }
  }

  return v9 != 0;
}

- (CGColor)_newColorWithAdjustedColorSpaceFromColor:(CGColor *)color
{
  if (!color)
  {
    return 0;
  }

  ColorSpace = CGColorGetColorSpace(color);
  if (!ColorSpace)
  {
    v6 = *MEMORY[0x1E695F1C0];
    goto LABEL_9;
  }

  v5 = CGColorSpaceCopyName(ColorSpace);
  v6 = *MEMORY[0x1E695F1C0];
  if (!v5 || (v7 = v5, v8 = CFStringCompare(v5, *MEMORY[0x1E695F1C0], 0), CFRelease(v7), v8))
  {
LABEL_9:
    v10 = CGColorSpaceCreateWithName(v6);
    if (v10)
    {
      v11 = v10;
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v10, kCGRenderingIntentDefault, color, 0);
      CGColorSpaceRelease(v11);
      return CopyByMatchingToColorSpace;
    }

    return 0;
  }

  return CGColorCreateCopy(color);
}

- (void)setCGColor:(CGColorRef)CGColor
{
  cGColor = [(EKCalendar *)self CGColor];
  if (cGColor != CGColor && ((CGColor == 0) != (cGColor == 0) || !CGColorEqualToColor(CGColor, cGColor)))
  {
    v6 = [(EKCalendar *)self _newColorWithAdjustedColorSpaceFromColor:CGColor];
    if (CGColorGetNumberOfComponents(v6) < 3)
    {
      if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E50901FFFFFFFFLL])
      {
        [(EKCalendar *)self setColorString:0];
      }
    }

    else
    {
      Components = CGColorGetComponents(v6);
      v8 = &off_1A81C3000;
      LODWORD(v8) = llround(*Components * 255.0);
      LODWORD(v9) = llround(Components[1] * 255.0);
      LODWORD(v10) = llround(Components[2] * 255.0);
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02x%02x%02x", v8, v9, v10];
      [(EKCalendar *)self setColorStringRaw:v11];
      [(EKCalendar *)self setColorDisplayOnly:0];
      [(EKObject *)self setSingleChangedValue:*MEMORY[0x1E69E4048] forKey:*MEMORY[0x1E6992890]];
      v12 = [[CGColorWrapper alloc] initWithCGColor:CGColor];
      [(EKObject *)self setCachedValue:v12 forKey:@"CGColor"];
    }

    if (v6)
    {

      CGColorRelease(v6);
    }
  }
}

- (void)_setFlagValue:(BOOL)value withMask:(unsigned int)mask
{
  valueCopy = value;
  flags = [(EKCalendar *)self flags];
  if (valueCopy)
  {
    v8 = flags | mask;
  }

  else
  {
    v8 = flags & ~mask;
  }

  [(EKCalendar *)self setFlags:v8];
}

- (BOOL)allowsContentModifications
{
  eventStore = [(EKObject *)self eventStore];
  skipModificationValidation = [eventStore skipModificationValidation];

  if (skipModificationValidation & 1) != 0 || ([MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement])
  {
    return 1;
  }

  eventStore2 = [(EKObject *)self eventStore];
  if ([eventStore2 allowsBirthdayModifications])
  {
    type = [(EKCalendar *)self type];

    if (type == EKCalendarTypeBirthday)
    {
      return 1;
    }
  }

  else
  {
  }

  if ([(EKCalendar *)self readOnly]|| [(EKCalendar *)self isSubscribed])
  {
    return 0;
  }

  source = [(EKCalendar *)self source];
  v10 = source;
  v5 = !source || [source isWritable];

  return v5;
}

- (int)displayOrder
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992740]];
  intValue = [v2 intValue];

  return intValue;
}

+ (id)typeDescription:(int64_t)description
{
  if (description >= 7)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Encountered illegal value for EKCalendarType" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return off_1E77FFF50[description];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(EKCalendar *)self title];
  v6 = [objc_opt_class() typeDescription:{-[EKCalendar type](self, "type")}];
  if ([(EKCalendar *)self allowsContentModifications])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  colorString = [(EKCalendar *)self colorString];
  v9 = [v3 stringWithFormat:@"%@ <%p> {title = %@ type = %@; allowsModify = %@; color = %@;}", v4, self, title, v6, v7, colorString];;

  return v9;
}

- (BOOL)refresh
{
  v5.receiver = self;
  v5.super_class = EKCalendar;
  refresh = [(EKObject *)&v5 refresh];
  if (refresh)
  {
    [(EKCalendar *)self _clearCGColorCache];
  }

  return refresh;
}

- (BOOL)allowsDeletionOrPropertyModifications
{
  if ([(EKCalendar *)self isDeletable])
  {
    return 1;
  }

  else
  {
    return ![(EKCalendar *)self isImmutable];
  }
}

- (BOOL)isImmutable
{
  if ([(EKCalendar *)self type]== EKCalendarTypeBirthday)
  {
    eventStore = [(EKObject *)self eventStore];
    allowsBirthdayModifications = [eventStore allowsBirthdayModifications];

    if (allowsBirthdayModifications)
    {
      return 0;
    }
  }

  if ([(EKCalendar *)self type]== (EKCalendarTypeBirthday|EKCalendarTypeExchange))
  {
    eventStore2 = [(EKObject *)self eventStore];
    allowsIntegrationModifications = [eventStore2 allowsIntegrationModifications];

    if (allowsIntegrationModifications)
    {
      return 0;
    }
  }

  eventStore3 = [(EKObject *)self eventStore];
  if ([eventStore3 eventAccessLevel] == 1)
  {
    allowEvents = [(EKCalendar *)self allowEvents];

    if (allowEvents)
    {
      return 1;
    }
  }

  else
  {
  }

  if ([(EKObject *)self isNew])
  {
    return 0;
  }

  return [(EKCalendar *)self _flagValueWithMask:4];
}

- (void)setImage:(id)image
{
  v4 = *MEMORY[0x1E6992768];
  imageCopy = image;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:imageCopy forKey:v4 frozenClass:objc_opt_class()];
}

- (BOOL)_validateDeletableWithAllKnownCalendars:(id)calendars error:(id *)error
{
  calendarsCopy = calendars;
  if ([(EKCalendar *)self _validateDeletableDueToAccessConsent:error])
  {
    v7 = [(EKCalendar *)self _validateDeletableHelperWithAllKnownCalendars:calendarsCopy error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateDeletableDueToAccessConsent:(id *)consent
{
  if ([(EKCalendar *)self allowEvents])
  {
    eventStore = [(EKObject *)self eventStore];
    eventAccessLevel = [eventStore eventAccessLevel];

    if (eventAccessLevel == 2)
    {
      return 1;
    }
  }

  if (![(EKCalendar *)self allowReminders]|| (v7 = 1, [EKEventStore realAuthorizationStatusForEntityType:1]!= 3))
  {
    if (consent)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:29];
      *consent = v7 = 0;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

- (BOOL)_validateDeletableHelperWithAllKnownCalendars:(id)calendars error:(id *)error
{
  calendarsCopy = calendars;
  if ([(EKCalendar *)self isMarkedUndeletable])
  {
    if (error)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = 54;
LABEL_4:
      [v7 errorWithEKErrorCode:v8];
      *error = v9 = 0;
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  type = [(EKCalendar *)self type];
  v9 = 1;
  if (type > EKCalendarTypeExchange)
  {
    switch(type)
    {
      case EKCalendarTypeSubscription:
        goto LABEL_37;
      case EKCalendarTypeBirthday:
        eventStore = [(EKObject *)self eventStore];
        allowsBirthdayModifications = [eventStore allowsBirthdayModifications];
        break;
      case EKCalendarTypeBirthday|EKCalendarTypeExchange:
        eventStore = [(EKObject *)self eventStore];
        allowsBirthdayModifications = [eventStore allowsIntegrationModifications];
        break;
      default:
        goto LABEL_27;
    }

    v9 = allowsBirthdayModifications;

    goto LABEL_37;
  }

  switch(type)
  {
    case EKCalendarTypeLocal:
      goto LABEL_37;
    case EKCalendarTypeCalDAV:
      source = [(EKCalendar *)self source];
      if (source)
      {
        v16 = source;
        source2 = [(EKCalendar *)self source];
        isWritable = [source2 isWritable];

        if ((isWritable & 1) == 0)
        {
          if (error)
          {
            v7 = MEMORY[0x1E696ABC0];
            v8 = 56;
            goto LABEL_4;
          }

          goto LABEL_36;
        }
      }

      source3 = [(EKCalendar *)self source];
      if (source3)
      {
        v20 = source3;
        source4 = [(EKCalendar *)self source];
        allowsCalendarAddDeleteModify = [source4 allowsCalendarAddDeleteModify];

        if ((allowsCalendarAddDeleteModify & 1) == 0)
        {
          if (error)
          {
            v7 = MEMORY[0x1E696ABC0];
            v8 = 52;
            goto LABEL_4;
          }

          goto LABEL_36;
        }
      }

      break;
    case EKCalendarTypeExchange:
      source5 = [(EKCalendar *)self source];
      isDelegate = [source5 isDelegate];

      if (isDelegate)
      {
        if (error)
        {
          v7 = MEMORY[0x1E696ABC0];
          v8 = 55;
          goto LABEL_4;
        }

LABEL_36:
        v9 = 0;
        goto LABEL_37;
      }

      if ([(EKCalendar *)self isDefaultSchedulingCalendar])
      {
        if (error)
        {
          v7 = MEMORY[0x1E696ABC0];
          v8 = 53;
          goto LABEL_4;
        }

        goto LABEL_36;
      }

      break;
  }

LABEL_27:
  if ([(EKCalendar *)self isSubscribed])
  {
    v9 = 1;
    goto LABEL_37;
  }

  if (![(EKCalendar *)self allowEvents])
  {
    v23 = 1;
    goto LABEL_33;
  }

  if ([(EKCalendar *)self _anotherCalendarForDefaultSchedulingExistsWithAllKnownCalendars:calendarsCopy])
  {
    v23 = 0;
LABEL_33:
    v9 = 1;
    goto LABEL_42;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithEKErrorCode:51];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  v23 = 1;
LABEL_42:
  if (![(EKCalendar *)self allowReminders])
  {
LABEL_48:
    v25 = 1;
    goto LABEL_49;
  }

  if (![(EKCalendar *)self _anotherCalendarForRemindersExistsWithAllKnownCalendars:calendarsCopy])
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:57];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_48;
  }

  v25 = 0;
LABEL_49:
  if ([(EKCalendar *)self allowEvents])
  {
    allowReminders = [(EKCalendar *)self allowReminders];
    if ((v23 | v25) == 1 && allowReminders && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKCalendar _validateDeletableHelperWithAllKnownCalendars:error:];
    }
  }

LABEL_37:

  return v9;
}

- (int64_t)deletionWarningsMask
{
  if (([(EKCalendar *)self allowedEntityTypes]& 2) != 0)
  {
    v3 = 8 * ([(EKCalendar *)self allowedEntityTypes]& 1);
  }

  else
  {
    v3 = 0;
  }

  if ([(EKCalendar *)self sharingStatus]== 2)
  {
    v3 |= 0x10uLL;
  }

  source = [(EKCalendar *)self source];
  if ([source sourceType])
  {
    source2 = [(EKCalendar *)self source];
    sourceType = [source2 sourceType];

    if (sourceType != 2)
    {
      return v3;
    }
  }

  else
  {
  }

  eventStore = [(EKObject *)self eventStore];
  v8 = [eventStore futureScheduledEventsExistOnCalendar:self];

  if (v8)
  {
    v9 = v3 | 4;
  }

  else
  {
    v9 = v3;
  }

  eventStore2 = [(EKObject *)self eventStore];
  v11 = [eventStore2 eventsExistOnCalendar:self];

  if (v11)
  {
    v3 = v9 | 2;
  }

  else
  {
    v3 = v9;
  }

  if ([(EKCalendar *)self sharingStatus]!= 2)
  {
    eventStore3 = [(EKObject *)self eventStore];
    v13 = [eventStore3 eventsMarkedScheduleAgentClientExistOnCalendar:self];

    if (v13)
    {
      return v3 | 0x20;
    }
  }

  return v3;
}

- (BOOL)canMergeWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (self == calendarCopy || (-[EKObject uniqueIdentifier](self, "uniqueIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), -[EKObject uniqueIdentifier](calendarCopy, "uniqueIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqualToString:v6], v6, v5, v7))
  {
    v8 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [(EKCalendar *)v8 canMergeWithCalendar:calendarCopy];
    }
  }

  else
  {
    source = [(EKCalendar *)self source];
    uniqueIdentifier = [source uniqueIdentifier];
    source2 = [(EKCalendar *)calendarCopy source];
    uniqueIdentifier2 = [source2 uniqueIdentifier];
    v15 = [uniqueIdentifier isEqualToString:uniqueIdentifier2];

    if (v15)
    {
      if ([(EKCalendar *)self allowsContentModifications])
      {
        if ([(EKCalendar *)calendarCopy allowsContentModifications])
        {
          if ([(EKCalendar *)self sharingStatus]== 2)
          {
            if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
            {
              [EKCalendar canMergeWithCalendar:];
            }
          }

          else if ([(EKCalendar *)self allowReminders])
          {
            if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
            {
              [EKCalendar canMergeWithCalendar:];
            }
          }

          else if ([(EKCalendar *)self allowsScheduling]|| ![(EKCalendar *)calendarCopy sharingStatus]|| [(EKCalendar *)self sharingStatus])
          {
            if ([(EKCalendar *)self isDeletable])
            {
              v9 = 1;
              goto LABEL_6;
            }

            if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
            {
              [EKCalendar canMergeWithCalendar:];
            }
          }

          else
          {
            v17 = EKLogHandle;
            if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
            {
              [(EKCalendar *)v17 canMergeWithCalendar:calendarCopy];
            }
          }
        }

        else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
        {
          [EKCalendar canMergeWithCalendar:];
        }
      }

      else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
      {
        [EKCalendar canMergeWithCalendar:];
      }
    }

    else
    {
      v16 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
      {
        [(EKCalendar *)v16 canMergeWithCalendar:calendarCopy];
      }
    }
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (BOOL)eligibleForDefaultSchedulingCalendar
{
  type = [(EKCalendar *)self type];
  if (type > EKCalendarTypeExchange)
  {
    if ((type - 3) >= 2)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (type)
  {
    if (type != EKCalendarTypeCalDAV)
    {
      if (type == EKCalendarTypeExchange)
      {
        goto LABEL_5;
      }

LABEL_13:
      LOBYTE(allowEvents) = 1;
      return allowEvents;
    }

    allowEvents = [(EKCalendar *)self allowEvents];
    if (!allowEvents)
    {
      return allowEvents;
    }

    if ([(EKCalendar *)self sharingStatus]!= 2)
    {
      goto LABEL_5;
    }

LABEL_9:
    LOBYTE(allowEvents) = 0;
    return allowEvents;
  }

LABEL_5:

  LOBYTE(allowEvents) = [(EKCalendar *)self allowsScheduling];
  return allowEvents;
}

- (BOOL)_anotherCalendarForDefaultSchedulingExistsWithAllKnownCalendars:(id)calendars
{
  calendarsCopy = calendars;
  if ([(EKCalendar *)self isDefaultSchedulingCalendar])
  {
    v5 = &__block_literal_global_115;
  }

  else
  {
    v5 = &__block_literal_global_117;
  }

  v6 = [(EKCalendar *)self _anyCalendarExistsInSameSourceOfType:0 withAllKnownCalendars:calendarsCopy passingTest:v5];

  return v6;
}

- (BOOL)_anyCalendarExistsInSameSourceOfType:(unint64_t)type withAllKnownCalendars:(id)calendars passingTest:(id)test
{
  v29 = *MEMORY[0x1E69E9840];
  calendarsCopy = calendars;
  testCopy = test;
  source = [(EKCalendar *)self source];
  if (!calendarsCopy)
  {
    eventStore = [(EKObject *)self eventStore];
    calendarsCopy = [eventStore _allCalendars];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = calendarsCopy;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v22 = (testCopy + 2);
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v25 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v24 + 1) + 8 * v15);
      source2 = [v16 source];
      v18 = [source2 isEqual:source];

      if (v18)
      {
        if (type)
        {
          if (type == 1 && ([v16 allowReminders] & 1) != 0)
          {
LABEL_14:
            if ([v16 isEqual:self] & 1) == 0 && (testCopy[2](testCopy, v16))
            {
              v19 = 1;
              goto LABEL_20;
            }
          }
        }

        else if ([v16 allowEvents])
        {
          goto LABEL_14;
        }
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v19 = 0;
LABEL_20:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (unint64_t)sharingStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992868]];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setSharingStatus:(unint64_t)status
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:status];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992868]];
}

- (unint64_t)invitationStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992770]];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setInvitationStatus:(unint64_t)status
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:status];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992770]];
}

- (void)clearInvitationStatus
{
  persistentObject = [(EKObject *)self persistentObject];
  [persistentObject unloadPropertyForKey:*MEMORY[0x1E6992770]];
}

- (void)setSharingInvitationResponse:(unint64_t)response
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:response];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992860]];
}

- (unint64_t)sharingInvitationResponse
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992860]];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setSharedOwnerURL:(id)l
{
  absoluteString = [l absoluteString];
  [(EKCalendar *)self setSharedOwnerURLString:absoluteString];
}

- (id)sharedOwnerURL
{
  sharedOwnerURLString = [(EKCalendar *)self sharedOwnerURLString];
  if (sharedOwnerURLString)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:sharedOwnerURLString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSharedOwnerAddress:(id)address
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:address];
  [(EKCalendar *)self setSharedOwnerURL:v4];
}

- (id)sharedOwnerAddress
{
  sharedOwnerURL = [(EKCalendar *)self sharedOwnerURL];
  absoluteString = [sharedOwnerURL absoluteString];

  return absoluteString;
}

- (id)sharedOwnerEmail
{
  sharedOwnerURL = [(EKCalendar *)self sharedOwnerURL];
  cal_emailAddressString = [sharedOwnerURL cal_emailAddressString];

  return cal_emailAddressString;
}

- (id)sharedOwnerPhoneNumber
{
  sharedOwnerURL = [(EKCalendar *)self sharedOwnerURL];
  cal_phoneNumberString = [sharedOwnerURL cal_phoneNumberString];

  return cal_phoneNumberString;
}

- (id)cachedExternalInfo
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__EKCalendar_cachedExternalInfo__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"cachedExternalInfoDictionary" populateBlock:v4];

  return v2;
}

id __32__EKCalendar_cachedExternalInfo__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cachedExternalInfoData];
  if (!v1)
  {
    v4 = 0;
    goto LABEL_12;
  }

  v7 = 0;
  v2 = [MEMORY[0x1E696AE40] propertyListWithData:v1 options:0 format:0 error:&v7];
  v3 = v7;
  if (!v2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __32__EKCalendar_cachedExternalInfo__block_invoke_cold_2();
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __32__EKCalendar_cachedExternalInfo__block_invoke_cold_1(v5);
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  v4 = v2;
LABEL_11:

LABEL_12:

  return v4;
}

- (void)setCachedExternalInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v8 = 0;
  v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:infoCopy format:200 options:0 error:&v8];
  v6 = v8;
  v7 = v6;
  if (v5)
  {

    v7 = v5;
LABEL_5:
    [(EKObject *)self setCachedValue:infoCopy forKey:@"cachedExternalInfoDictionary"];
    [(EKCalendar *)self setCachedExternalInfoData:v7];
    goto LABEL_8;
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKCalendar setCachedExternalInfo:];
  }

LABEL_8:
}

- (id)externalInfoForKey:(id)key
{
  keyCopy = key;
  cachedExternalInfo = [(EKCalendar *)self cachedExternalInfo];
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

- (id)sharedOwnerAddressesWithoutScheme
{
  v19 = *MEMORY[0x1E69E9840];
  sharedOwnerAddresses = [(EKCalendar *)self sharedOwnerAddresses];
  if (sharedOwnerAddresses)
  {
    array = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = sharedOwnerAddresses;
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
          if ([v9 hasMailto])
          {
            stringRemovingMailto = [v9 stringRemovingMailto];

            v9 = stringRemovingMailto;
          }

          if ([v9 hasTel])
          {
            stringRemovingTel = [v9 stringRemovingTel];

            v9 = stringRemovingTel;
          }

          [array addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  else
  {
    array = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)publishURL
{
  publishURLString = [(EKCalendar *)self publishURLString];
  if (publishURLString)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:publishURLString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPublishURL:(id)l
{
  absoluteString = [l absoluteString];
  [(EKCalendar *)self setPublishURLString:absoluteString];
}

- (BOOL)isPublished
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992778]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)canBeShared
{
  v3 = [(EKCalendar *)self _flagValueWithMask:2048];
  if (v3)
  {
    source = [(EKCalendar *)self source];
    supportsSharedCalendars = [source supportsSharedCalendars];

    LOBYTE(v3) = supportsSharedCalendars;
  }

  return v3;
}

- (int64_t)maxAttendees
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69927A0]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setMaxAttendees:(int64_t)attendees
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:attendees];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69927A0]];
}

- (BOOL)isMutableSuggestionsCalendar
{
  isSuggestedEventCalendar = [(EKCalendar *)self isSuggestedEventCalendar];
  if (isSuggestedEventCalendar)
  {
    eventStore = [(EKObject *)self eventStore];
    canModifySuggestedEventCalendar = [eventStore canModifySuggestedEventCalendar];

    LOBYTE(isSuggestedEventCalendar) = canModifySuggestedEventCalendar;
  }

  return isSuggestedEventCalendar;
}

- (BOOL)isMutableNaturalLanguageSuggestionsCalendar
{
  isNaturalLanguageSuggestedEventCalendar = [(EKCalendar *)self isNaturalLanguageSuggestedEventCalendar];
  if (isNaturalLanguageSuggestedEventCalendar)
  {
    eventStore = [(EKObject *)self eventStore];
    canModifySuggestedEventCalendar = [eventStore canModifySuggestedEventCalendar];

    LOBYTE(isNaturalLanguageSuggestedEventCalendar) = canModifySuggestedEventCalendar;
  }

  return isNaturalLanguageSuggestedEventCalendar;
}

- (BOOL)allowsIgnoringSharedEventChangeNotifications
{
  sharees = [(EKCalendar *)self sharees];
  v3 = [sharees count] != 0;

  return v3;
}

- (int)migrationVersion
{
  externalRepresentation = [(EKCalendar *)self externalRepresentation];
  v3 = [MEMORY[0x1E6993078] dictionaryWithExternalRepresentationData:externalRepresentation];
  v4 = [MEMORY[0x1E6993078] migrationVersionFromDictionary:v3];

  return v4;
}

- (id)externalURI
{
  calendarIdentifier = [(EKCalendar *)self calendarIdentifier];
  if (calendarIdentifier)
  {
    if (externalURI_onceToken_0 != -1)
    {
      [EKCalendar externalURI];
    }

    v3 = [calendarIdentifier stringByAddingPercentEncodingWithAllowedCharacters:externalURI_allowedCharacters_0];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"x-apple-calendar://%@", v3];
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __25__EKCalendar_externalURI__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:{@"/?&:$+, ;=@"}];
  v1 = [v3 copy];
  v2 = externalURI_allowedCharacters_0;
  externalURI_allowedCharacters_0 = v1;
}

- (id)constraints
{
  eventStore = [(EKObject *)self eventStore];
  v4 = [eventStore cachedConstraintsForCalendar:self];

  return v4;
}

- (void)setSource:(EKSource *)source
{
  v4 = *MEMORY[0x1E6992870];
  v5 = source;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKSource frozenClass]];
  [(EKCalendar *)self setCanBeShared:[(EKSource *)v5 supportsSharedCalendars]];
  supportsSharedCalendars = [(EKSource *)v5 supportsSharedCalendars];

  [(EKCalendar *)self setCanBePublished:supportsSharedCalendars];
  if (([(EKCalendar *)self allowedEntityTypes]& 2) != 0 && CalIsReminderBridgeEnabled())
  {
    source = [(EKCalendar *)self source];
    backingObject = [source backingObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = backingObject;
      eventStore = [(EKObject *)self eventStore];
      v10 = [eventStore reminderSourceForEventSource:v8];

      if (v10)
      {
        frozenObject = [v10 frozenObject];
        [v8 setReminderSource:frozenObject];
      }
    }
  }
}

- (void)setAllowedEntityTypes:(unint64_t)types
{
  if (types == 2)
  {
    v3 = 8;
  }

  else
  {
    v3 = 4 * (types == 1);
  }

  [(EKCalendar *)self setAllowedEntities:v3];
}

- (BOOL)hasEvents
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  eventStore = [(EKObject *)self eventStore];
  connection = [eventStore connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  cADObjectID = [(EKObject *)self CADObjectID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__EKCalendar_hasEvents__block_invoke;
  v8[3] = &unk_1E77FFEA0;
  v8[4] = &v9;
  [cADOperationProxySync CADCalendar:cADObjectID hasEvents:v8];

  LOBYTE(eventStore) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return eventStore;
}

void __23__EKCalendar_hasEvents__block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    NSLog(&cfstr_ErrorCheckingW_1.isa, v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

- (BOOL)hasEventsWithRoomAsAttendee
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  eventStore = [(EKObject *)self eventStore];
  connection = [eventStore connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  cADObjectID = [(EKObject *)self CADObjectID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__EKCalendar_hasEventsWithRoomAsAttendee__block_invoke;
  v8[3] = &unk_1E77FFEA0;
  v8[4] = &v9;
  [cADOperationProxySync CADCalendar:cADObjectID hasEventsWithRoomAsAttendee:v8];

  LOBYTE(eventStore) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return eventStore;
}

void __41__EKCalendar_hasEventsWithRoomAsAttendee__block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    NSLog(&cfstr_ErrorCheckingW_1.isa, v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

- (EKCalendarEventAvailabilityMask)supportedEventAvailabilities
{
  if ([(EKCalendar *)self isSubscribed])
  {
    return 0;
  }

  constraints = [(EKCalendar *)self constraints];
  canSetAvailability = [constraints canSetAvailability];

  if (!canSetAvailability)
  {
    return 0;
  }

  constraints2 = [(EKCalendar *)self constraints];
  eventAvailabilityLimited = [constraints2 eventAvailabilityLimited];

  if (eventAvailabilityLimited)
  {
    return 3;
  }

  else
  {
    return 15;
  }
}

- (int)refreshInterval
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992810]];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setLastSyncError:(unint64_t)error userInfo:(id)info
{
  infoCopy = info;
  v8 = infoCopy;
  if (error || infoCopy)
  {
    v7 = [[EKSyncError alloc] initWithAccountError:error userInfo:infoCopy];
    [(EKCalendar *)self setSyncError:v7];
  }

  else
  {
    [(EKCalendar *)self setSyncError:0];
  }
}

- (id)lastSyncErrorUserInfo
{
  syncError = [(EKCalendar *)self syncError];
  userInfo = [syncError userInfo];

  return userInfo;
}

- (void)setSyncError:(id)error
{
  v4 = *MEMORY[0x1E6992898];
  errorCopy = error;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:errorCopy forKey:v4 frozenClass:+[EKSyncError frozenClass]];
}

- (id)calendarError
{
  syncError = [(EKCalendar *)self syncError];
  v4 = syncError;
  if (syncError)
  {
    errorType = [syncError errorType];
    errorCode = [v4 errorCode];
    v7 = errorCode;
    if (errorType == 2)
    {
      if (errorCode)
      {
        v8 = kEKCalendarErrorDomain;
        goto LABEL_8;
      }
    }

    else if (errorType)
    {
      v13 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(EKCalendar *)errorType calendarError];
      }
    }

    else if (errorCode)
    {
      v8 = kEKAccountErrorDomain;
LABEL_8:
      v9 = *v8;
      userInfo = [v4 userInfo];
      v11 = [EKSyncError augmentSyncErrorUserInfo:userInfo for:self];

      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:v9 code:v7 userInfo:v11];

      goto LABEL_12;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (BOOL)isSyncing
{
  lastSyncStartDate = [(EKCalendar *)self lastSyncStartDate];
  lastSyncEndDate = [(EKCalendar *)self lastSyncEndDate];
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

- (void)moveSubscribedCalendarToSource:(id)source
{
  sourceCopy = source;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__20;
  v21 = __Block_byref_object_dispose__20;
  v22 = 0;
  eventStore = [(EKObject *)self eventStore];
  connection = [eventStore connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  cADObjectID = [(EKObject *)self CADObjectID];
  cADObjectID2 = [sourceCopy CADObjectID];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __45__EKCalendar_moveSubscribedCalendarToSource___block_invoke;
  v14 = &unk_1E77FFEC8;
  v16 = &v17;
  v10 = eventStore;
  v15 = v10;
  [cADOperationProxySync CADDatabaseMigrateSubscribedCalendar:cADObjectID toSource:cADObjectID2 reply:&v11];

  if (v18[5])
  {
    [(EKObject *)self setBackingObject:v11, v12, v13, v14];
    [(EKObject *)self _resetAfterUpdatingChangeSetOrBackingObject];
  }

  _Block_object_dispose(&v17, 8);
}

void __45__EKCalendar_moveSubscribedCalendarToSource___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __45__EKCalendar_moveSubscribedCalendarToSource___block_invoke_cold_1(v6, a2);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [EKObjectID objectIDWithCADObjectID:v5];
    v9 = [v7 registerFetchedObjectWithID:v8];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (BOOL)removeServerRefreshRelatedPropertiesForSelfAndAllEventsSaveAndCommitWithError:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  [(EKCalendar *)self setExternalModificationTag:0];
  [(EKCalendar *)self setDigest:0];
  [(EKCalendar *)self setRefreshDate:0];
  eventStore = [(EKObject *)self eventStore];
  v6 = [eventStore predicateForCalendarItemsOfType:1 inCalendar:self];
  [eventStore eventsMatchingPredicate:v6];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v30 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    errorCopy = error;
    v10 = 0;
    v11 = *v28;
    while (2)
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v27 + 1) + 8 * v12);
        [v14 removeServerRefreshRelatedProperties];
        v26 = v13;
        v15 = [eventStore saveEvent:v14 span:3 commit:0 error:&v26];
        v10 = v26;

        if ((v15 & 1) == 0)
        {
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            [EKCalendar removeServerRefreshRelatedPropertiesForSelfAndAllEventsSaveAndCommitWithError:];
          }

          goto LABEL_12;
        }

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

LABEL_12:

    error = errorCopy;
    if (v10)
    {
LABEL_20:
      [eventStore rollback];
      if (!error)
      {
LABEL_24:
        v19 = 0;
        goto LABEL_25;
      }

LABEL_21:
      v20 = v10;
      v19 = 0;
      *error = v10;
      goto LABEL_25;
    }
  }

  else
  {
  }

  v25 = 0;
  v16 = [eventStore saveCalendar:self commit:0 error:&v25];
  v17 = v25;
  v10 = v17;
  if ((v16 & 1) == 0)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKCalendar removeServerRefreshRelatedPropertiesForSelfAndAllEventsSaveAndCommitWithError:];
    }

    goto LABEL_20;
  }

  v24 = 0;
  v18 = [eventStore commitWithRollback:&v24];
  v10 = v24;
  if ((v18 & 1) == 0)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKCalendar removeServerRefreshRelatedPropertiesForSelfAndAllEventsSaveAndCommitWithError:];
      if (!error)
      {
        goto LABEL_24;
      }
    }

    else if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v19 = 1;
LABEL_25:

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)sharees
{
  v2 = [(EKObject *)self meltedAndCachedMultiRelationObjectsForKey:*MEMORY[0x1E6992858]];
  if ([v2 count])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSharees:(id)sharees
{
  v4 = *MEMORY[0x1E6992858];
  shareesCopy = sharees;
  [(EKObject *)self updateMeltedAndCachedMultiRelationObjects:shareesCopy forKey:v4];
  v6 = MEMORY[0x1E696AD98];
  v7 = [shareesCopy count];

  v8 = [v6 numberWithInt:v7 != 0];
  [(EKObject *)self setCachedValue:v8 forKey:v4];
}

- (void)addSharee:(id)sharee
{
  [(EKObject *)self addCachedMeltedObject:sharee forMultiValueKey:*MEMORY[0x1E6992858]];
  v4 = MEMORY[0x1E695E118];

  [(EKObject *)self setCachedValue:v4 forKey:@"hasSharees"];
}

- (void)removeSharee:(id)sharee
{
  [(EKObject *)self removeCachedMeltedObject:sharee forMultiValueKey:*MEMORY[0x1E6992858]];

  [(EKObject *)self clearCachedValueForKey:@"hasSharees"];
}

- (BOOL)hasSharees
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__EKCalendar_hasSharees__block_invoke;
  v5[3] = &unk_1E77FCF40;
  v5[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"hasSharees" populateBlock:v5];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

uint64_t __24__EKCalendar_hasSharees__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sharees];
  v2 = [v1 count] != 0;

  v3 = MEMORY[0x1E696AD98];

  return [v3 numberWithBool:v2];
}

- (id)shareesAndOwner
{
  v20 = *MEMORY[0x1E69E9840];
  sharees = [(EKCalendar *)self sharees];
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(sharees, "count") + 1}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = sharees;
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

        v10 = [EKCalendarShareeOrOwner shareeWithEKSharee:*(*(&v15 + 1) + 8 * i) forCalendar:self, v15];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [EKCalendarShareeOrOwner ownerForEKCalendar:self];
  if (v11)
  {
    [v4 addObject:v11];
  }

  v12 = [v4 copy];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)alarms
{
  allAlarms = [(EKCalendar *)self allAlarms];
  if (allAlarms)
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_174];
    v4 = [allAlarms filteredSetUsingPredicate:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAlarms:(id)alarms
{
  v39 = *MEMORY[0x1E69E9840];
  alarmsCopy = alarms;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(alarmsCopy, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = alarmsCopy;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        if (([v11 isSnoozed] & 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v8);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * j);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        snoozedAlarms = [v17 snoozedAlarms];
        v19 = [snoozedAlarms countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v25;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v25 != v21)
              {
                objc_enumerationMutation(snoozedAlarms);
              }

              [v5 addObject:*(*(&v24 + 1) + 8 * k)];
            }

            v20 = [snoozedAlarms countByEnumeratingWithState:&v24 objects:v36 count:16];
          }

          while (v20);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v14);
  }

  [(EKCalendar *)self setAllAlarms:v5];
  v23 = *MEMORY[0x1E69E9840];
}

- (id)allAlarms
{
  v2 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:*MEMORY[0x1E6992710]];
  if ([v2 count])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)addAlarms:(id)alarms
{
  v4 = [MEMORY[0x1E695DFD8] setWithSet:alarms];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__EKCalendar_addAlarms___block_invoke;
  v5[3] = &unk_1E77FFF10;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (void)removeAlarms:(id)alarms
{
  v4 = [MEMORY[0x1E695DFD8] setWithSet:alarms];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__EKCalendar_removeAlarms___block_invoke;
  v5[3] = &unk_1E77FFF10;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (void)snoozeAlarm:(id)alarm withTimeIntervalFromNow:(double)now
{
  v6 = MEMORY[0x1E695DF00];
  alarmCopy = alarm;
  date = [v6 date];
  [alarmCopy setAcknowledgedDate:date];
  duplicate = [alarmCopy duplicate];
  v9 = [date dateByAddingTimeInterval:now];
  [duplicate setAbsoluteDate:v9];

  v10 = [(EKCalendar *)self findOriginalAlarmStartingWith:alarmCopy];

  [duplicate setOriginalAlarm:v10];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:duplicate];
  [(EKCalendar *)self addAlarms:v11];
}

- (void)snoozeAlarm:(id)alarm withLocation:(id)location proximity:(int64_t)proximity
{
  alarmCopy = alarm;
  locationCopy = location;
  if (!proximity)
  {
    [EKCalendar snoozeAlarm:a2 withLocation:self proximity:?];
  }

  date = [MEMORY[0x1E695DF00] date];
  [alarmCopy setAcknowledgedDate:date];

  duplicate = [alarmCopy duplicate];
  [duplicate setStructuredLocation:locationCopy];
  [duplicate setProximity:proximity];
  v12 = [(EKCalendar *)self findOriginalAlarmStartingWith:alarmCopy];
  [duplicate setOriginalAlarm:v12];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:duplicate];
  [(EKCalendar *)self addAlarms:v13];
}

- (BOOL)isAlarmAcknowledgedPropertyDirty
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992710]])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allAlarms = [(EKCalendar *)self allAlarms];
    v4 = [allAlarms countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      v7 = *MEMORY[0x1E6992440];
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(allAlarms);
          }

          if ([*(*(&v12 + 1) + 8 * i) _hasChangesForKey:v7])
          {
            v9 = 1;
            goto LABEL_13;
          }
        }

        v5 = [allAlarms countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)removeAcknowledgedSnoozedAlarms
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allAlarms = [(EKCalendar *)self allAlarms];
  v5 = [allAlarms countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allAlarms);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isSnoozed])
        {
          acknowledgedDate = [v9 acknowledgedDate];

          if (acknowledgedDate)
          {
            [array addObject:v9];
          }
        }
      }

      v6 = [allAlarms countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [MEMORY[0x1E695DFD8] setWithArray:array];
  [(EKCalendar *)self removeAlarms:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeAllSnoozedAlarms
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allAlarms = [(EKCalendar *)self allAlarms];
  v5 = [allAlarms countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allAlarms);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isSnoozed])
        {
          [array addObject:v9];
        }
      }

      v6 = [allAlarms countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E695DFD8] setWithArray:array];
  [(EKCalendar *)self removeAlarms:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)findOriginalAlarmStartingWith:(id)with
{
  withCopy = with;
  originalAlarm = [withCopy originalAlarm];
  if (originalAlarm)
  {
    originalAlarm2 = [withCopy originalAlarm];
  }

  else
  {
    originalAlarm2 = withCopy;
  }

  v6 = originalAlarm2;

  originalAlarm3 = [v6 originalAlarm];
  if (originalAlarm3)
  {
    v12OriginalAlarm = originalAlarm3;
    while (1)
    {
      externalID = [v6 externalID];
      externalID2 = [withCopy externalID];
      v11 = [externalID isEqualToString:externalID2];

      if (v11)
      {
        break;
      }

      originalAlarm4 = [v6 originalAlarm];

      v12OriginalAlarm = [originalAlarm4 originalAlarm];
      v6 = originalAlarm4;
      if (!v12OriginalAlarm)
      {
        goto LABEL_10;
      }
    }
  }

  originalAlarm4 = v6;
LABEL_10:

  return originalAlarm4;
}

- (id)selfIdentityDisplayName
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992820]];
  if (!v3)
  {
    selfIdentityFirstName = [(EKCalendar *)self selfIdentityFirstName];
    selfIdentityLastName = [(EKCalendar *)self selfIdentityLastName];
    v3 = DisplayNameStringForIdentityWithProperties();
  }

  return v3;
}

- (id)selfIdentityAddress
{
  selfIdentityAddressString = [(EKCalendar *)self selfIdentityAddressString];
  if (selfIdentityAddressString)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:selfIdentityAddressString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSelfIdentityAddress:(id)address
{
  absoluteString = [address absoluteString];
  [(EKCalendar *)self setSelfIdentityAddressString:absoluteString];
}

- (id)ownerIdentityDisplayName
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69927C0]];
  if (!v3)
  {
    ownerIdentityFirstName = [(EKCalendar *)self ownerIdentityFirstName];
    ownerIdentityLastName = [(EKCalendar *)self ownerIdentityLastName];
    v3 = DisplayNameStringForIdentityWithProperties();
  }

  return v3;
}

- (void)setOwnerIdentityDisplayName:(id)name
{
  nameCopy = name;
  [(EKCalendar *)self setOwnerIdentityId:0xFFFFFFFFLL];
  [(EKObject *)self setSingleChangedValue:nameCopy forKey:*MEMORY[0x1E69927C0]];
}

- (int)ownerIdentityId
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69927D8]];
  intValue = [v2 intValue];

  return intValue;
}

- (id)ownerIdentityAddress
{
  ownerIdentityAddressString = [(EKCalendar *)self ownerIdentityAddressString];
  if (ownerIdentityAddressString)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:ownerIdentityAddressString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOwnerIdentityAddress:(id)address
{
  addressCopy = address;
  [(EKCalendar *)self setOwnerIdentityId:0xFFFFFFFFLL];
  absoluteString = [addressCopy absoluteString];

  [(EKCalendar *)self setOwnerIdentityAddressString:absoluteString];
}

- (id)ownerIdentityOrganizer
{
  ownerIdentityEmail = [(EKCalendar *)self ownerIdentityEmail];
  if (ownerIdentityEmail)
  {

LABEL_4:
    defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
    ownerIdentityEmail2 = [(EKCalendar *)self ownerIdentityEmail];
    if ([defaultProvider matchesOneOfMyEmails:ownerIdentityEmail2])
    {
      v7 = 1;
    }

    else
    {
      defaultProvider2 = [MEMORY[0x1E6992F50] defaultProvider];
      ownerIdentityAddress = [(EKCalendar *)self ownerIdentityAddress];
      v7 = [defaultProvider2 urlMatchesOneOfMyEmails:ownerIdentityAddress];
    }

    goto LABEL_8;
  }

  ownerIdentityAddress2 = [(EKCalendar *)self ownerIdentityAddress];

  if (ownerIdentityAddress2)
  {
    goto LABEL_4;
  }

  v7 = 1;
LABEL_8:
  v10 = [EKOrganizer alloc];
  ownerIdentityDisplayName = [(EKCalendar *)self ownerIdentityDisplayName];
  ownerIdentityEmail3 = [(EKCalendar *)self ownerIdentityEmail];
  ownerIdentityPhoneNumber = [(EKCalendar *)self ownerIdentityPhoneNumber];
  ownerIdentityAddress3 = [(EKCalendar *)self ownerIdentityAddress];
  v15 = [(EKOrganizer *)v10 initWithName:ownerIdentityDisplayName emailAddress:ownerIdentityEmail3 phoneNumber:ownerIdentityPhoneNumber address:ownerIdentityAddress3 isCurrentUser:v7];

  return v15;
}

- (BOOL)supportsMultipleAlarms
{
  constraints = [(EKCalendar *)self constraints];
  maxAlarmsAllowed = [constraints maxAlarmsAllowed];

  return maxAlarmsAllowed > 1;
}

- (BOOL)automaticEventLocationGeocodingAllowed
{
  if (![(EKCalendar *)self isSuggestedEventCalendar])
  {
    return 1;
  }

  return +[EKFeatureSet automaticGeocodingEnabled];
}

- (BOOL)validate:(id *)validate
{
  selfCopy = self;
  v63 = *MEMORY[0x1E69E9840];
  v61.receiver = self;
  v61.super_class = EKCalendar;
  if (![(EKObject *)&v61 validate:?])
  {
    goto LABEL_83;
  }

  if (validate)
  {
    *validate = 0;
  }

  source = [(EKCalendar *)selfCopy source];

  if (!source)
  {
    if (!validate)
    {
      goto LABEL_83;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = 14;
LABEL_63:
    [v19 errorWithEKErrorCode:v20];
    *validate = eligibleForDefaultSchedulingCalendar = 0;
    goto LABEL_84;
  }

  if (([(EKCalendar *)selfCopy allowedEntityTypes]& 2) != 0)
  {
    source2 = [(EKCalendar *)selfCopy source];
    allowsTasks = [source2 allowsTasks];

    if ((allowsTasks & 1) == 0)
    {
      if (!validate)
      {
        goto LABEL_83;
      }

      v19 = MEMORY[0x1E696ABC0];
      v20 = 24;
      goto LABEL_63;
    }
  }

  if (([(EKCalendar *)selfCopy allowedEntityTypes]& 1) != 0)
  {
    source3 = [(EKCalendar *)selfCopy source];
    allowsEvents = [source3 allowsEvents];

    if ((allowsEvents & 1) == 0)
    {
      if (!validate)
      {
        goto LABEL_83;
      }

      v19 = MEMORY[0x1E696ABC0];
      v20 = 25;
      goto LABEL_63;
    }
  }

  isImmutable = [(EKCalendar *)selfCopy isImmutable];
  v12 = MEMORY[0x1E6992760];
  if (isImmutable)
  {
    v13 = *MEMORY[0x1E6992760];
    v14 = [(EKObject *)selfCopy _previousValueForKey:*MEMORY[0x1E6992760]];
    unsignedIntValue = [v14 unsignedIntValue];

    if ((unsignedIntValue & 4) != 0)
    {
      if (validate__onceToken != -1)
      {
        [EKCalendar validate:];
      }

      changeSet = [(EKObject *)selfCopy changeSet];
      changedKeys = [changeSet changedKeys];

      v22 = [changedKeys count];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v23 = changedKeys;
      v24 = [v23 countByEnumeratingWithState:&v57 objects:v62 count:16];
      if (v24)
      {
        changedKeys = v24;
        v25 = *v58;
        do
        {
          for (i = 0; i != changedKeys; i = i + 1)
          {
            if (*v58 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v57 + 1) + 8 * i);
            if ([validate____DirtyPropertiesToIgnore containsObject:v27])
            {
              --v22;
            }

            else if ([v27 isEqualToString:v13])
            {
              flags = [(EKCalendar *)selfCopy flags];
              [(EKObject *)selfCopy _previousValueForKey:v13];
              v28 = v13;
              v29 = v23;
              v31 = v30 = selfCopy;
              v32 = changedKeys;
              v33 = v22;
              v34 = v25;
              unsignedIntValue2 = [v31 unsignedIntValue];

              selfCopy = v30;
              v23 = v29;
              v13 = v28;
              v36 = unsignedIntValue2 ^ flags;
              v25 = v34;
              v37 = v33;
              changedKeys = v32;
              v22 = v37 - ((v36 & 0xFFFEFFFF) == 0);
            }
          }

          changedKeys = [v23 countByEnumeratingWithState:&v57 objects:v62 count:16];
        }

        while (changedKeys);
      }

      validate = v55;
      if (v55 && v22 >= 1)
      {
        *v55 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:16];

        goto LABEL_83;
      }

      v12 = MEMORY[0x1E6992760];
      if (v22 > 0)
      {
        goto LABEL_83;
      }
    }
  }

  isNew = [(EKObject *)selfCopy isNew];
  v17 = *MEMORY[0x1E6992870];
  if (!isNew && [(EKObject *)selfCopy _hasChangesForKey:*MEMORY[0x1E6992870]])
  {
    eventStore = [(EKObject *)selfCopy eventStore];
    if ([eventStore skipModificationValidation])
    {
    }

    else
    {
      currentProcessHasSyncClientEntitlement = [MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement];

      if ((currentProcessHasSyncClientEntitlement & 1) == 0)
      {
        if (![MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp])
        {
          goto LABEL_61;
        }

        v46 = [(EKObject *)selfCopy committedValueForKey:v17];
        source4 = [(EKCalendar *)selfCopy source];
        if ([v46 sourceType])
        {
          v48 = 0;
        }

        else
        {
          v48 = [source4 sourceType] == 0;
        }

        if (validate && !v48)
        {
          goto LABEL_62;
        }

        if (!v48)
        {
LABEL_83:
          eligibleForDefaultSchedulingCalendar = 0;
          goto LABEL_84;
        }
      }
    }
  }

  if (![(EKObject *)selfCopy _hasChangesForKey:v17])
  {
    goto LABEL_50;
  }

  eventStore2 = [(EKObject *)selfCopy eventStore];
  if ([eventStore2 eventAccessLevel] == 1)
  {
    allowEvents = [(EKCalendar *)selfCopy allowEvents];

    if (allowEvents)
    {
LABEL_61:
      if (validate)
      {
LABEL_62:
        v19 = MEMORY[0x1E696ABC0];
        v20 = 15;
        goto LABEL_63;
      }

      goto LABEL_83;
    }
  }

  else
  {
  }

  eventStore3 = [(EKObject *)selfCopy eventStore];
  if ([eventStore3 skipModificationValidation])
  {
    goto LABEL_49;
  }

  source5 = [(EKCalendar *)selfCopy source];
  if ([source5 supportsCalendarCreation] & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessHasSyncClientEntitlement"))
  {
LABEL_48:

LABEL_49:
    goto LABEL_50;
  }

  type = [(EKCalendar *)selfCopy type];
  if (type != 4)
  {
    if ([(EKCalendar *)selfCopy type]== (EKCalendarTypeBirthday|EKCalendarTypeExchange))
    {
      goto LABEL_75;
    }

LABEL_80:

    goto LABEL_81;
  }

  changedKeys = [(EKObject *)selfCopy eventStore];
  if ([changedKeys allowsBirthdayModifications])
  {

    goto LABEL_48;
  }

  if ([(EKCalendar *)selfCopy type]!= (EKCalendarTypeBirthday|EKCalendarTypeExchange))
  {

    goto LABEL_80;
  }

LABEL_75:
  v50 = selfCopy;
  eventStore4 = [(EKObject *)selfCopy eventStore];
  allowsIntegrationModifications = [eventStore4 allowsIntegrationModifications];

  if (type == 4)
  {
  }

  selfCopy = v50;
  if ((allowsIntegrationModifications & 1) == 0)
  {
LABEL_81:
    if (validate)
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = 17;
      goto LABEL_63;
    }

    goto LABEL_83;
  }

LABEL_50:
  v43 = *v12;
  if (![(EKObject *)selfCopy _hasChangesForKey:*v12]|| ![(EKCalendar *)selfCopy isDefaultSchedulingCalendar])
  {
    goto LABEL_57;
  }

  v44 = [(EKObject *)selfCopy _previousValueForKey:v43];
  if (([v44 unsignedIntValue] & 0x400) != 0)
  {

LABEL_57:
    eligibleForDefaultSchedulingCalendar = 1;
    goto LABEL_84;
  }

  eligibleForDefaultSchedulingCalendar = [(EKCalendar *)selfCopy eligibleForDefaultSchedulingCalendar];

  if (validate && (eligibleForDefaultSchedulingCalendar & 1) == 0)
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = 70;
    goto LABEL_63;
  }

LABEL_84:
  v53 = *MEMORY[0x1E69E9840];
  return eligibleForDefaultSchedulingCalendar;
}

uint64_t __23__EKCalendar_validate___block_invoke()
{
  v0 = *MEMORY[0x1E6992730];
  validate____DirtyPropertiesToIgnore = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6992740], *MEMORY[0x1E6992730], *MEMORY[0x1E6992728], *MEMORY[0x1E6992890], 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)save:(id *)save
{
  if (save)
  {
    *save = 0;
  }

  [(EKObject *)self insertPersistentObjectIfNeeded];
  if ([(EKCalendar *)self isAlarmAcknowledgedPropertyDirty])
  {
    [(EKCalendar *)self removeAcknowledgedSnoozedAlarms];
  }

  [(EKCalendar *)self assignColorForNewCalendarIfNeeded];
  if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992768]])
  {
    image = [(EKCalendar *)self image];
    [image saveInCalendar:self];

    changeSet = [(EKObject *)self changeSet];
    image2 = [(EKCalendar *)self image];
    backingObject = [image2 backingObject];
    [changeSet forceChangeValue:backingObject forKey:*MEMORY[0x1E6992980]];
  }

  [(EKObject *)self updatePersistentObject];
  return 1;
}

- (BOOL)remove:(id *)remove
{
  if (remove)
  {
    *remove = 0;
  }

  eventStore = [(EKObject *)self eventStore];
  if ([eventStore skipModificationValidation])
  {

LABEL_6:
    [(EKObject *)self deletePersistentObject];
    return 1;
  }

  currentProcessHasSyncClientEntitlement = [MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement];

  if (currentProcessHasSyncClientEntitlement)
  {
    goto LABEL_6;
  }

  if (![(EKCalendar *)self isImmutable])
  {
    if ([(EKCalendar *)self _validateDeletable:remove])
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!remove)
  {
    return 0;
  }

  constraints = [(EKCalendar *)self constraints];
  allowsCalendarAddDeleteModify = [constraints allowsCalendarAddDeleteModify];

  if (allowsCalendarAddDeleteModify)
  {
    v10 = 16;
  }

  else
  {
    v10 = 17;
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:v10];
  v12 = v11;
  result = 0;
  *remove = v11;
  return result;
}

- (BOOL)isManaged
{
  eventStore = [(EKObject *)self eventStore];
  source = [(EKCalendar *)self source];
  v5 = [eventStore isSourceManaged:source];

  return v5;
}

- (BOOL)isInferredWorkCalendar
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__EKCalendar_isInferredWorkCalendar__block_invoke;
  v5[3] = &unk_1E77FD0B8;
  v5[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"isInferredWorkCalendar" populateBlock:v5];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

uint64_t __36__EKCalendar_isInferredWorkCalendar__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) type] == 2)
  {
    v2 = [*(a1 + 32) source];
    v3 = [v2 preferredOwnerAddress];

    if (!v3 || ([v3 hasSuffix:@"outlook.com"] & 1) == 0 && (objc_msgSend(v3, "hasSuffix:", @"hotmail.com") & 1) == 0 && (objc_msgSend(v3, "hasSuffix:", @"live.com") & 1) == 0 && !objc_msgSend(v3, "hasSuffix:", @"msn.com"))
    {

      return MEMORY[0x1E695E118];
    }
  }

  if ([*(a1 + 32) isManaged])
  {
    return MEMORY[0x1E695E118];
  }

  v4 = [*(a1 + 32) hasEventsWithRoomAsAttendee];
  v5 = MEMORY[0x1E695E118];
  if ((v4 & 1) == 0)
  {
    v6 = [*(a1 + 32) source];
    v7 = [v6 supportsAvailabilityRequests];

    if (!v7)
    {
      return MEMORY[0x1E695E110];
    }
  }

  return v5;
}

- (id)exportDataWithOptions:(unint64_t)options
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__20;
  v16 = __Block_byref_object_dispose__20;
  v17 = 0;
  eventStore = [(EKObject *)self eventStore];
  connection = [eventStore connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  cADObjectID = [(EKObject *)self CADObjectID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__EKCalendar_exportDataWithOptions___block_invoke;
  v11[3] = &unk_1E77FDD00;
  v11[4] = &v12;
  [cADOperationProxySync CADDatabaseExportICSDataForCalendar:cADObjectID options:options reply:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __36__EKCalendar_exportDataWithOptions___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __36__EKCalendar_exportDataWithOptions___block_invoke_cold_1(v7, a2);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (BOOL)supportsJunkReporting
{
  constraints = [(EKCalendar *)self constraints];
  supportsJunkReporting = [constraints supportsJunkReporting];

  return supportsJunkReporting;
}

- (void)setIsJunk:(BOOL)junk
{
  if (junk)
  {
    [(EKCalendar *)self setCachedJunkStatus:1];
    mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
    calendarIdentifier = [(EKCalendar *)self calendarIdentifier];
    source = [(EKCalendar *)self source];
    externalID = [source externalID];
    [mEMORY[0x1E69998A8] reportSharedCalendarInviteAsJunkForCalendarWithID:calendarIdentifier accountID:externalID queue:MEMORY[0x1E69E96A0] completionBlock:&__block_literal_global_212];

    [(EKCalendar *)self setCachedJunkStatus:1];
  }

  else
  {
    [(EKCalendar *)self setCachedJunkStatus:2];
    sharedOwnerName = [(EKCalendar *)self sharedOwnerName];
    sharedOwnerEmail = [(EKCalendar *)self sharedOwnerEmail];
    sharedOwnerPhoneNumber = [(EKCalendar *)self sharedOwnerPhoneNumber];
    [EKRecents recordRecentForContactWithName:sharedOwnerName emailAddress:sharedOwnerEmail phoneNumber:sharedOwnerPhoneNumber];
  }
}

void __24__EKCalendar_setIsJunk___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (v8 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __24__EKCalendar_setIsJunk___block_invoke_cold_1();
  }
}

- (BOOL)couldBeJunk
{
  if (![(EKCalendar *)self cachedJunkStatus])
  {
    [(EKCalendar *)self setCachedJunkStatus:[EKJunkInvitationProtocol_Shared junkStatusForInvitation:self]];
  }

  return [(EKCalendar *)self cachedJunkStatus]== 3 || [(EKCalendar *)self cachedJunkStatus]== 1;
}

- (void)_validateDeletableHelperWithAllKnownCalendars:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Validating deletion on an EKCalendar that allows both events and reminders. This may not work as expected: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)canMergeWithCalendar:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [OUTLINED_FUNCTION_5() title];
  v7 = [a3 title];
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_10_0();
  _os_log_debug_impl(v8, v9, OS_LOG_TYPE_DEBUG, v10, v11, 0x16u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)canMergeWithCalendar:.cold.2()
{
  OUTLINED_FUNCTION_9_0();
  v12 = *MEMORY[0x1E69E9840];
  v4 = v3;
  [OUTLINED_FUNCTION_5_2() title];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_7_0() title];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_6_1() title];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)canMergeWithCalendar:.cold.3()
{
  OUTLINED_FUNCTION_9_0();
  v12 = *MEMORY[0x1E69E9840];
  v4 = v3;
  [OUTLINED_FUNCTION_5_2() title];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() title];
  objc_claimAutoreleasedReturnValue();
  v11 = [OUTLINED_FUNCTION_7_0() title];
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)canMergeWithCalendar:(void *)a3 .cold.4(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a1;
  [a2 title];
  objc_claimAutoreleasedReturnValue();
  v7 = [OUTLINED_FUNCTION_6_1() title];
  v8 = [a3 title];
  v9 = [a2 title];
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x2Au);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)canMergeWithCalendar:.cold.5()
{
  OUTLINED_FUNCTION_9_0();
  v12 = *MEMORY[0x1E69E9840];
  v4 = v3;
  [OUTLINED_FUNCTION_5_2() title];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_7_0() title];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_6_1() title];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)canMergeWithCalendar:.cold.6()
{
  OUTLINED_FUNCTION_9_0();
  v12 = *MEMORY[0x1E69E9840];
  v4 = v3;
  [OUTLINED_FUNCTION_5_2() title];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_7_0() title];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_6_1() title];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)canMergeWithCalendar:.cold.7()
{
  OUTLINED_FUNCTION_9_0();
  v12 = *MEMORY[0x1E69E9840];
  v4 = v3;
  [OUTLINED_FUNCTION_5_2() title];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_7_0() title];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_6_1() title];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)canMergeWithCalendar:(void *)a3 .cold.8(void *a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [OUTLINED_FUNCTION_5() title];
  v7 = [a3 title];
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_10_0();
  _os_log_debug_impl(v8, v9, OS_LOG_TYPE_DEBUG, v10, v11, 0x16u);

  v12 = *MEMORY[0x1E69E9840];
}

void __32__EKCalendar_cachedExternalInfo__block_invoke_cold_1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  _os_log_error_impl(&dword_1A805E000, v1, OS_LOG_TYPE_ERROR, "Unexpected type for external info: %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __32__EKCalendar_cachedExternalInfo__block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Error deserializing external info: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setCachedExternalInfo:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Error serializing external info: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)calendarError
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109378;
  v4[1] = self;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Unexpected error type (%d) in calendar error on calendar %@", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void __45__EKCalendar_moveSubscribedCalendarToSource___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_5() errorWithCADResult:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_0();
  _os_log_error_impl(v6, v7, OS_LOG_TYPE_ERROR, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeServerRefreshRelatedPropertiesForSelfAndAllEventsSaveAndCommitWithError:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Error saving event during removeServerRefreshRelatedProperties. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeServerRefreshRelatedPropertiesForSelfAndAllEventsSaveAndCommitWithError:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Error saving calendar during removeServerRefreshRelatedProperties. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeServerRefreshRelatedPropertiesForSelfAndAllEventsSaveAndCommitWithError:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Error committing calendar & events during removeServerRefreshRelatedProperties. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)snoozeAlarm:(uint64_t)a1 withLocation:(uint64_t)a2 proximity:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKCalendar.m" lineNumber:2164 description:@"Can't snooze an alarm with location but no proximity."];
}

void __36__EKCalendar_exportDataWithOptions___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_5() errorWithCADResult:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_0();
  _os_log_error_impl(v6, v7, OS_LOG_TYPE_ERROR, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

void __24__EKCalendar_setIsJunk___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Error trying to report calendar invite as junk. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end