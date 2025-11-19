@interface EKCalendar
+ (EKCalendar)calendarForEntityType:(EKEntityType)entityType eventStore:(EKEventStore *)eventStore;
+ (id)EKObjectChangeSummarizer_multiValueDiffKeys;
+ (id)EKObjectChangeSummarizer_singleValueDiffKeys;
+ (id)_eventKitBundle;
+ (id)calendarForEntityTypes:(unint64_t)a3 eventStore:(id)a4;
+ (id)knownIdentityKeysForComparison;
+ (id)knownRelationshipMultiValueKeys;
+ (id)knownRelationshipSingleValueKeys;
+ (id)knownRelationshipWeakKeys;
+ (id)knownSingleValueKeysForComparison;
+ (id)orderSortDescriptors;
+ (id)rowIDsForCalendars:(id)a3;
+ (id)typeDescription:(int64_t)a3;
- (BOOL)_anotherCalendarForDefaultSchedulingExistsWithAllKnownCalendars:(id)a3;
- (BOOL)_anyCalendarExistsInSameSourceOfType:(unint64_t)a3 withAllKnownCalendars:(id)a4 passingTest:(id)a5;
- (BOOL)_reset;
- (BOOL)_validateDeletableDueToAccessConsent:(id *)a3;
- (BOOL)_validateDeletableHelperWithAllKnownCalendars:(id)a3 error:(id *)a4;
- (BOOL)_validateDeletableWithAllKnownCalendars:(id)a3 error:(id *)a4;
- (BOOL)allowsContentModifications;
- (BOOL)allowsDeletionOrPropertyModifications;
- (BOOL)allowsIgnoringSharedEventChangeNotifications;
- (BOOL)automaticEventLocationGeocodingAllowed;
- (BOOL)canBeShared;
- (BOOL)canMergeWithCalendar:(id)a3;
- (BOOL)couldBeJunk;
- (BOOL)eligibleForDefaultSchedulingCalendar;
- (BOOL)getColorRed:(double *)a3 green:(double *)a4 blue:(double *)a5;
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
- (BOOL)remove:(id *)a3;
- (BOOL)removeServerRefreshRelatedPropertiesForSelfAndAllEventsSaveAndCommitWithError:(id *)a3;
- (BOOL)save:(id *)a3;
- (BOOL)supportsJunkReporting;
- (BOOL)supportsMultipleAlarms;
- (BOOL)validate:(id *)a3;
- (CGColor)_newColorWithAdjustedColorSpaceFromColor:(CGColor *)a3;
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
- (id)exportDataWithOptions:(unint64_t)a3;
- (id)externalInfoForKey:(id)a3;
- (id)externalURI;
- (id)findOriginalAlarmStartingWith:(id)a3;
- (id)lastSyncErrorUserInfo;
- (id)ownerIdentityAddress;
- (id)ownerIdentityDisplayName;
- (id)ownerIdentityOrganizer;
- (id)publishURL;
- (id)reorderCalendars:(id)a3 betweenEarlier:(id)a4 later:(id)a5;
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
- (void)_setFlagValue:(BOOL)a3 withMask:(unsigned int)a4;
- (void)_updateToMaxDisplayOrder;
- (void)addAlarms:(id)a3;
- (void)addSharee:(id)a3;
- (void)assignColorForNewCalendarIfNeeded;
- (void)calendarError;
- (void)clearInvitationStatus;
- (void)moveSubscribedCalendarToSource:(id)a3;
- (void)removeAcknowledgedSnoozedAlarms;
- (void)removeAlarms:(id)a3;
- (void)removeAllSnoozedAlarms;
- (void)removeSharee:(id)a3;
- (void)reorderBetweenEarlier:(id)a3 later:(id)a4;
- (void)reset;
- (void)rollback;
- (void)setAlarms:(id)a3;
- (void)setAllowedEntityTypes:(unint64_t)a3;
- (void)setCGColor:(CGColorRef)CGColor;
- (void)setCachedExternalInfo:(id)a3;
- (void)setColorString:(id)a3;
- (void)setImage:(id)a3;
- (void)setInvitationStatus:(unint64_t)a3;
- (void)setIsJunk:(BOOL)a3;
- (void)setLastSyncError:(unint64_t)a3 userInfo:(id)a4;
- (void)setMaxAttendees:(int64_t)a3;
- (void)setOwnerIdentityAddress:(id)a3;
- (void)setOwnerIdentityDisplayName:(id)a3;
- (void)setPublishURL:(id)a3;
- (void)setSelfIdentityAddress:(id)a3;
- (void)setSharedOwnerAddress:(id)a3;
- (void)setSharedOwnerURL:(id)a3;
- (void)setSharees:(id)a3;
- (void)setSharingInvitationResponse:(unint64_t)a3;
- (void)setSharingStatus:(unint64_t)a3;
- (void)setSource:(EKSource *)source;
- (void)setSymbolicColorName:(id)a3;
- (void)setSyncError:(id)a3;
- (void)snoozeAlarm:(id)a3 withLocation:(id)a4 proximity:(int64_t)a5;
- (void)snoozeAlarm:(id)a3 withTimeIntervalFromNow:(double)a4;
@end

@implementation EKCalendar

- (int)allowedEntities
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992718]];
  v3 = [v2 intValue];

  return v3;
}

- (EKEntityMask)allowedEntityTypes
{
  v2 = [(EKCalendar *)self allowedEntities];
  v3 = 2;
  if (v2 != 8)
  {
    v3 = 3;
  }

  if (v2 == 4)
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
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (EKCalendarType)type
{
  if ([(EKCalendar *)self isSubscribed])
  {
    return 3;
  }

  v4 = [(EKCalendar *)self source];
  v5 = [v4 sourceType];

  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      return 2;
    }

    else
    {
      return (v5 == 2);
    }
  }

  else
  {
    switch(v5)
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
  v4 = [(EKCalendar *)self source];
  v5 = [v4 sourceIdentifier];
  if (![v4 sourceType])
  {
    v6 = @"LOCAL";
    goto LABEL_5;
  }

  if ([v4 sourceType] == 5)
  {
    v6 = @"BIRTHDAYS";
LABEL_5:

    v5 = v6;
LABEL_9:
    [v3 appendString:v5];

    goto LABEL_10;
  }

  if ([v4 sourceType] == 6)
  {
    v7 = [v4 externalID];

    v5 = v7;
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  [v3 appendString:@";"];
  v8 = [(EKCalendar *)self externalID];
  if (v8)
  {
    [v3 appendString:v8];
  }

  else
  {
    v9 = [(EKCalendar *)self title];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"-";
    }

    [v3 appendString:v11];

    [v3 appendFormat:@";%d;", -[EKCalendar type](self, "type")];
    v12 = [(EKCalendar *)self colorString];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
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
  v4 = [(EKCalendar *)self unlocalizedTitle];
  v5 = [(EKCalendar *)self isSuggestedEventCalendar];
  v6 = [(EKCalendar *)self type]== EKCalendarTypeBirthday;
  v7 = [(EKCalendar *)self allowReminders];
  v8 = [(EKCalendar *)self source];
  v9 = [v3 localizedTitleForTitle:v4 isSuggestedEventCalendar:v5 isBirthdayCalendar:v6 allowsReminders:v7 isIntegrationCalendar:{objc_msgSend(v8, "sourceType") == 6}];

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
  v3 = [(EKCalendar *)self externalID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    memset(&c, 0, sizeof(c));
    CC_MD5_Init(&c);
    v6 = [(EKCalendar *)self title];
    v7 = [v6 UTF8String];

    if (v7)
    {
      v8 = strlen(v7);
      CC_MD5_Update(&c, v7, v8);
    }

    data = [(EKCalendar *)self type];
    CC_MD5_Update(&c, &data, 1u);
    v9 = [(EKCalendar *)self colorString];
    v10 = [v9 UTF8String];

    if (v10)
    {
      v11 = strlen(v10);
      CC_MD5_Update(&c, v10, v11);
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
  if (!v3 || ([EKSymbolicColorToRGBMapping() objectForKey:v3], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [(EKCalendar *)self colorStringRaw];
  }

  return v4;
}

- (unint64_t)lastSyncError
{
  v2 = [(EKCalendar *)self syncError];
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

- (CGColorRef)CGColor
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__EKCalendar_CGColor__block_invoke;
  v5[3] = &unk_1E77FCF40;
  v5[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"CGColor" populateBlock:v5];
  v3 = [v2 color];

  return v3;
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

+ (id)rowIDsForCalendars:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
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

          v10 = MEMORY[0x1E696AD98];
          v11 = [*(*(&v15 + 1) + 8 * i) objectID];
          v12 = [v10 numberWithInt:{objc_msgSend(v11, "rowID")}];
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
    v8 = [(EKEventStore *)v6 reminderStore];
    v9 = [v8 createNewReminderCalendar];
  }

  else
  {
    v9 = [a1 calendarForEntityTypes:1 << entityType eventStore:v6];
  }

  return v9;
}

+ (id)calendarForEntityTypes:(unint64_t)a3 eventStore:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKCalendar calendarForEntityTypes:v7 eventStore:?];
    }
  }

  v8 = objc_alloc_init(EKPersistentCalendar);
  [v6 _registerObject:v8];
  v9 = [[a1 alloc] initWithPersistentObject:v8];
  [v9 _updateToMaxDisplayOrder];
  v10 = EKUUIDString();
  [v9 setCalendarIdentifier:v10];

  [v9 setAllowedEntityTypes:a3];

  return v9;
}

- (void)_updateToMaxDisplayOrder
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(EKObject *)self eventStore];
  v4 = [v3 _allCalendars];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 displayOrder] != 0x7FFFFFFF)
        {
          v11 = [v10 displayOrder];
          if (v11 > v7)
          {
            v7 = v11;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)reorderBetweenEarlier:(id)a3 later:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11[0] = self;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(EKCalendar *)self reorderCalendars:v8 betweenEarlier:v6 later:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (id)reorderCalendars:(id)a3 betweenEarlier:(id)a4 later:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!(v9 | v10))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"earlier == nil && later == nil"];
  }

  v11 = [v9 source];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [v10 source];
    v15 = v14;
    if (v14)
    {
      v13 = v14;
    }

    else
    {
      v16 = [(EKObject *)self eventStore];
      v13 = [v16 localSource];
    }
  }

  v17 = MEMORY[0x1E695DF70];
  v18 = [v13 allCalendars];
  v19 = [objc_opt_class() orderSortDescriptors];
  v20 = [v18 sortedArrayUsingDescriptors:v19];
  v21 = [v17 arrayWithArray:v20];

  v22 = [v21 objectAtIndexedSubscript:0];
  v23 = [v22 displayOrder];

  [v21 removeObjectsInArray:v8];
  if (v9)
  {
    v24 = v9;
  }

  else
  {
    v24 = v10;
  }

  v25 = [v21 indexOfObject:v24];
  if (v9)
  {
    v26 = v25 + 1;
  }

  else
  {
    v26 = v25;
  }

  v27 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v26, objc_msgSend(v8, "count")}];
  [v21 insertObjects:v8 atIndexes:v27];
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __52__EKCalendar_reorderCalendars_betweenEarlier_later___block_invoke;
  v32[3] = &unk_1E77FFE58;
  v35 = v23;
  v29 = v28;
  v33 = v29;
  v34 = self;
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
  v3 = [(EKObject *)&v7 _reset];
  if (v3)
  {
    v4 = objc_opt_class();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __20__EKCalendar__reset__block_invoke;
    v6[3] = &unk_1E77FE7D0;
    v6[4] = self;
    LOBYTE(v3) = [(EKObject *)self _resetIfBackingObjectIsOfClass:v4 fetchResetFrozenObjectBlock:v6];
  }

  return v3;
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
  block[4] = a1;
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
  v3 = [(EKCalendar *)self colorStringRaw];

  if (!v3)
  {
    v4 = [(EKObject *)self eventStore];
    v6 = [v4 colorStringForNewCalendar];

    v5 = v6;
    if (v6)
    {
      [(EKCalendar *)self setColorStringRaw:v6];
      [(EKCalendar *)self setColorDisplayOnly:1];
      v5 = v6;
    }
  }
}

- (void)setSymbolicColorName:(id)a3
{
  v5 = a3;
  [(EKObject *)self setSingleChangedValue:v5 forKey:*MEMORY[0x1E6992890]];
  v4 = [EKSymbolicColorToRGBMapping() objectForKey:v5];
  if (v4)
  {
    [(EKCalendar *)self setColorStringRaw:v4];
  }

  if (v5 && ([v5 isEqualToString:*MEMORY[0x1E69E4048]] & 1) == 0)
  {
    [(EKCalendar *)self _clearCGColorCache];
  }
}

- (BOOL)isColorDisplayOnly
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992728]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setColorString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [(EKCalendar *)self _clearCGColorCache];
    v4 = 0;
  }

  [(EKCalendar *)self setColorStringRaw:v4];
  [(EKCalendar *)self setColorDisplayOnly:0];
  [(EKObject *)self setSingleChangedValue:*MEMORY[0x1E69E4048] forKey:*MEMORY[0x1E6992890]];
}

- (BOOL)getColorRed:(double *)a3 green:(double *)a4 blue:(double *)a5
{
  v8 = [(EKCalendar *)self colorString];
  v9 = v8;
  if (v8)
  {
    v13 = 0;
    v11 = 0;
    v12 = 0;
    sscanf([v8 UTF8String], "#%02X%02X%02X", &v13, &v12, &v11);
    if (a3)
    {
      *a3 = (v13 / 255.0);
    }

    if (a4)
    {
      *a4 = (v12 / 255.0);
    }

    if (a5)
    {
      *a5 = (v11 / 255.0);
    }
  }

  return v9 != 0;
}

- (CGColor)_newColorWithAdjustedColorSpaceFromColor:(CGColor *)a3
{
  if (!a3)
  {
    return 0;
  }

  ColorSpace = CGColorGetColorSpace(a3);
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
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v10, kCGRenderingIntentDefault, a3, 0);
      CGColorSpaceRelease(v11);
      return CopyByMatchingToColorSpace;
    }

    return 0;
  }

  return CGColorCreateCopy(a3);
}

- (void)setCGColor:(CGColorRef)CGColor
{
  v5 = [(EKCalendar *)self CGColor];
  if (v5 != CGColor && ((CGColor == 0) != (v5 == 0) || !CGColorEqualToColor(CGColor, v5)))
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

- (void)_setFlagValue:(BOOL)a3 withMask:(unsigned int)a4
{
  v5 = a3;
  v7 = [(EKCalendar *)self flags];
  if (v5)
  {
    v8 = v7 | a4;
  }

  else
  {
    v8 = v7 & ~a4;
  }

  [(EKCalendar *)self setFlags:v8];
}

- (BOOL)allowsContentModifications
{
  v3 = [(EKObject *)self eventStore];
  v4 = [v3 skipModificationValidation];

  if (v4 & 1) != 0 || ([MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement])
  {
    return 1;
  }

  v7 = [(EKObject *)self eventStore];
  if ([v7 allowsBirthdayModifications])
  {
    v8 = [(EKCalendar *)self type];

    if (v8 == EKCalendarTypeBirthday)
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

  v9 = [(EKCalendar *)self source];
  v10 = v9;
  v5 = !v9 || [v9 isWritable];

  return v5;
}

- (int)displayOrder
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992740]];
  v3 = [v2 intValue];

  return v3;
}

+ (id)typeDescription:(int64_t)a3
{
  if (a3 >= 7)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Encountered illegal value for EKCalendarType" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return off_1E77FFF50[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKCalendar *)self title];
  v6 = [objc_opt_class() typeDescription:{-[EKCalendar type](self, "type")}];
  if ([(EKCalendar *)self allowsContentModifications])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(EKCalendar *)self colorString];
  v9 = [v3 stringWithFormat:@"%@ <%p> {title = %@ type = %@; allowsModify = %@; color = %@;}", v4, self, v5, v6, v7, v8];;

  return v9;
}

- (BOOL)refresh
{
  v5.receiver = self;
  v5.super_class = EKCalendar;
  v3 = [(EKObject *)&v5 refresh];
  if (v3)
  {
    [(EKCalendar *)self _clearCGColorCache];
  }

  return v3;
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
    v3 = [(EKObject *)self eventStore];
    v4 = [v3 allowsBirthdayModifications];

    if (v4)
    {
      return 0;
    }
  }

  if ([(EKCalendar *)self type]== (EKCalendarTypeBirthday|EKCalendarTypeExchange))
  {
    v5 = [(EKObject *)self eventStore];
    v6 = [v5 allowsIntegrationModifications];

    if (v6)
    {
      return 0;
    }
  }

  v7 = [(EKObject *)self eventStore];
  if ([v7 eventAccessLevel] == 1)
  {
    v8 = [(EKCalendar *)self allowEvents];

    if (v8)
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

- (void)setImage:(id)a3
{
  v4 = *MEMORY[0x1E6992768];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:objc_opt_class()];
}

- (BOOL)_validateDeletableWithAllKnownCalendars:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(EKCalendar *)self _validateDeletableDueToAccessConsent:a4])
  {
    v7 = [(EKCalendar *)self _validateDeletableHelperWithAllKnownCalendars:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateDeletableDueToAccessConsent:(id *)a3
{
  if ([(EKCalendar *)self allowEvents])
  {
    v5 = [(EKObject *)self eventStore];
    v6 = [v5 eventAccessLevel];

    if (v6 == 2)
    {
      return 1;
    }
  }

  if (![(EKCalendar *)self allowReminders]|| (v7 = 1, [EKEventStore realAuthorizationStatusForEntityType:1]!= 3))
  {
    if (a3)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:29];
      *a3 = v7 = 0;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

- (BOOL)_validateDeletableHelperWithAllKnownCalendars:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(EKCalendar *)self isMarkedUndeletable])
  {
    if (a4)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = 54;
LABEL_4:
      [v7 errorWithEKErrorCode:v8];
      *a4 = v9 = 0;
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v10 = [(EKCalendar *)self type];
  v9 = 1;
  if (v10 > EKCalendarTypeExchange)
  {
    switch(v10)
    {
      case EKCalendarTypeSubscription:
        goto LABEL_37;
      case EKCalendarTypeBirthday:
        v13 = [(EKObject *)self eventStore];
        v14 = [v13 allowsBirthdayModifications];
        break;
      case EKCalendarTypeBirthday|EKCalendarTypeExchange:
        v13 = [(EKObject *)self eventStore];
        v14 = [v13 allowsIntegrationModifications];
        break;
      default:
        goto LABEL_27;
    }

    v9 = v14;

    goto LABEL_37;
  }

  switch(v10)
  {
    case EKCalendarTypeLocal:
      goto LABEL_37;
    case EKCalendarTypeCalDAV:
      v15 = [(EKCalendar *)self source];
      if (v15)
      {
        v16 = v15;
        v17 = [(EKCalendar *)self source];
        v18 = [v17 isWritable];

        if ((v18 & 1) == 0)
        {
          if (a4)
          {
            v7 = MEMORY[0x1E696ABC0];
            v8 = 56;
            goto LABEL_4;
          }

          goto LABEL_36;
        }
      }

      v19 = [(EKCalendar *)self source];
      if (v19)
      {
        v20 = v19;
        v21 = [(EKCalendar *)self source];
        v22 = [v21 allowsCalendarAddDeleteModify];

        if ((v22 & 1) == 0)
        {
          if (a4)
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
      v11 = [(EKCalendar *)self source];
      v12 = [v11 isDelegate];

      if (v12)
      {
        if (a4)
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
        if (a4)
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

  if ([(EKCalendar *)self _anotherCalendarForDefaultSchedulingExistsWithAllKnownCalendars:v6])
  {
    v23 = 0;
LABEL_33:
    v9 = 1;
    goto LABEL_42;
  }

  if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithEKErrorCode:51];
    *a4 = v9 = 0;
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

  if (![(EKCalendar *)self _anotherCalendarForRemindersExistsWithAllKnownCalendars:v6])
  {
    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:57];
      *a4 = v9 = 0;
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
    v26 = [(EKCalendar *)self allowReminders];
    if ((v23 | v25) == 1 && v26 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
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

  v4 = [(EKCalendar *)self source];
  if ([v4 sourceType])
  {
    v5 = [(EKCalendar *)self source];
    v6 = [v5 sourceType];

    if (v6 != 2)
    {
      return v3;
    }
  }

  else
  {
  }

  v7 = [(EKObject *)self eventStore];
  v8 = [v7 futureScheduledEventsExistOnCalendar:self];

  if (v8)
  {
    v9 = v3 | 4;
  }

  else
  {
    v9 = v3;
  }

  v10 = [(EKObject *)self eventStore];
  v11 = [v10 eventsExistOnCalendar:self];

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
    v12 = [(EKObject *)self eventStore];
    v13 = [v12 eventsMarkedScheduleAgentClientExistOnCalendar:self];

    if (v13)
    {
      return v3 | 0x20;
    }
  }

  return v3;
}

- (BOOL)canMergeWithCalendar:(id)a3
{
  v4 = a3;
  if (self == v4 || (-[EKObject uniqueIdentifier](self, "uniqueIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), -[EKObject uniqueIdentifier](v4, "uniqueIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqualToString:v6], v6, v5, v7))
  {
    v8 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [(EKCalendar *)v8 canMergeWithCalendar:v4];
    }
  }

  else
  {
    v11 = [(EKCalendar *)self source];
    v12 = [v11 uniqueIdentifier];
    v13 = [(EKCalendar *)v4 source];
    v14 = [v13 uniqueIdentifier];
    v15 = [v12 isEqualToString:v14];

    if (v15)
    {
      if ([(EKCalendar *)self allowsContentModifications])
      {
        if ([(EKCalendar *)v4 allowsContentModifications])
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

          else if ([(EKCalendar *)self allowsScheduling]|| ![(EKCalendar *)v4 sharingStatus]|| [(EKCalendar *)self sharingStatus])
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
              [(EKCalendar *)v17 canMergeWithCalendar:v4];
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
        [(EKCalendar *)v16 canMergeWithCalendar:v4];
      }
    }
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (BOOL)eligibleForDefaultSchedulingCalendar
{
  v3 = [(EKCalendar *)self type];
  if (v3 > EKCalendarTypeExchange)
  {
    if ((v3 - 3) >= 2)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (v3)
  {
    if (v3 != EKCalendarTypeCalDAV)
    {
      if (v3 == EKCalendarTypeExchange)
      {
        goto LABEL_5;
      }

LABEL_13:
      LOBYTE(v4) = 1;
      return v4;
    }

    v4 = [(EKCalendar *)self allowEvents];
    if (!v4)
    {
      return v4;
    }

    if ([(EKCalendar *)self sharingStatus]!= 2)
    {
      goto LABEL_5;
    }

LABEL_9:
    LOBYTE(v4) = 0;
    return v4;
  }

LABEL_5:

  LOBYTE(v4) = [(EKCalendar *)self allowsScheduling];
  return v4;
}

- (BOOL)_anotherCalendarForDefaultSchedulingExistsWithAllKnownCalendars:(id)a3
{
  v4 = a3;
  if ([(EKCalendar *)self isDefaultSchedulingCalendar])
  {
    v5 = &__block_literal_global_115;
  }

  else
  {
    v5 = &__block_literal_global_117;
  }

  v6 = [(EKCalendar *)self _anyCalendarExistsInSameSourceOfType:0 withAllKnownCalendars:v4 passingTest:v5];

  return v6;
}

- (BOOL)_anyCalendarExistsInSameSourceOfType:(unint64_t)a3 withAllKnownCalendars:(id)a4 passingTest:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v23 = a5;
  v9 = [(EKCalendar *)self source];
  if (!v8)
  {
    v10 = [(EKObject *)self eventStore];
    v8 = [v10 _allCalendars];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v22 = (v23 + 2);
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v25 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v24 + 1) + 8 * v15);
      v17 = [v16 source];
      v18 = [v17 isEqual:v9];

      if (v18)
      {
        if (a3)
        {
          if (a3 == 1 && ([v16 allowReminders] & 1) != 0)
          {
LABEL_14:
            if ([v16 isEqual:self] & 1) == 0 && (v23[2](v23, v16))
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
  v3 = [v2 intValue];

  return v3;
}

- (void)setSharingStatus:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992868]];
}

- (unint64_t)invitationStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992770]];
  v3 = [v2 intValue];

  return v3;
}

- (void)setInvitationStatus:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992770]];
}

- (void)clearInvitationStatus
{
  v2 = [(EKObject *)self persistentObject];
  [v2 unloadPropertyForKey:*MEMORY[0x1E6992770]];
}

- (void)setSharingInvitationResponse:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992860]];
}

- (unint64_t)sharingInvitationResponse
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992860]];
  v3 = [v2 intValue];

  return v3;
}

- (void)setSharedOwnerURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(EKCalendar *)self setSharedOwnerURLString:v4];
}

- (id)sharedOwnerURL
{
  v2 = [(EKCalendar *)self sharedOwnerURLString];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSharedOwnerAddress:(id)a3
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:a3];
  [(EKCalendar *)self setSharedOwnerURL:v4];
}

- (id)sharedOwnerAddress
{
  v2 = [(EKCalendar *)self sharedOwnerURL];
  v3 = [v2 absoluteString];

  return v3;
}

- (id)sharedOwnerEmail
{
  v2 = [(EKCalendar *)self sharedOwnerURL];
  v3 = [v2 cal_emailAddressString];

  return v3;
}

- (id)sharedOwnerPhoneNumber
{
  v2 = [(EKCalendar *)self sharedOwnerURL];
  v3 = [v2 cal_phoneNumberString];

  return v3;
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

- (void)setCachedExternalInfo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v8 = 0;
  v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v8];
  v6 = v8;
  v7 = v6;
  if (v5)
  {

    v7 = v5;
LABEL_5:
    [(EKObject *)self setCachedValue:v4 forKey:@"cachedExternalInfoDictionary"];
    [(EKCalendar *)self setCachedExternalInfoData:v7];
    goto LABEL_8;
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKCalendar setCachedExternalInfo:];
  }

LABEL_8:
}

- (id)externalInfoForKey:(id)a3
{
  v4 = a3;
  v5 = [(EKCalendar *)self cachedExternalInfo];
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

- (id)sharedOwnerAddressesWithoutScheme
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(EKCalendar *)self sharedOwnerAddresses];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
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
          if ([v9 hasMailto])
          {
            v10 = [v9 stringRemovingMailto];

            v9 = v10;
          }

          if ([v9 hasTel])
          {
            v11 = [v9 stringRemovingTel];

            v9 = v11;
          }

          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)publishURL
{
  v2 = [(EKCalendar *)self publishURLString];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPublishURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(EKCalendar *)self setPublishURLString:v4];
}

- (BOOL)isPublished
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992778]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)canBeShared
{
  v3 = [(EKCalendar *)self _flagValueWithMask:2048];
  if (v3)
  {
    v4 = [(EKCalendar *)self source];
    v5 = [v4 supportsSharedCalendars];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (int64_t)maxAttendees
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69927A0]];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setMaxAttendees:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69927A0]];
}

- (BOOL)isMutableSuggestionsCalendar
{
  v3 = [(EKCalendar *)self isSuggestedEventCalendar];
  if (v3)
  {
    v4 = [(EKObject *)self eventStore];
    v5 = [v4 canModifySuggestedEventCalendar];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isMutableNaturalLanguageSuggestionsCalendar
{
  v3 = [(EKCalendar *)self isNaturalLanguageSuggestedEventCalendar];
  if (v3)
  {
    v4 = [(EKObject *)self eventStore];
    v5 = [v4 canModifySuggestedEventCalendar];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)allowsIgnoringSharedEventChangeNotifications
{
  v2 = [(EKCalendar *)self sharees];
  v3 = [v2 count] != 0;

  return v3;
}

- (int)migrationVersion
{
  v2 = [(EKCalendar *)self externalRepresentation];
  v3 = [MEMORY[0x1E6993078] dictionaryWithExternalRepresentationData:v2];
  v4 = [MEMORY[0x1E6993078] migrationVersionFromDictionary:v3];

  return v4;
}

- (id)externalURI
{
  v2 = [(EKCalendar *)self calendarIdentifier];
  if (v2)
  {
    if (externalURI_onceToken_0 != -1)
    {
      [EKCalendar externalURI];
    }

    v3 = [v2 stringByAddingPercentEncodingWithAllowedCharacters:externalURI_allowedCharacters_0];
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
  v3 = [(EKObject *)self eventStore];
  v4 = [v3 cachedConstraintsForCalendar:self];

  return v4;
}

- (void)setSource:(EKSource *)source
{
  v4 = *MEMORY[0x1E6992870];
  v5 = source;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKSource frozenClass]];
  [(EKCalendar *)self setCanBeShared:[(EKSource *)v5 supportsSharedCalendars]];
  v6 = [(EKSource *)v5 supportsSharedCalendars];

  [(EKCalendar *)self setCanBePublished:v6];
  if (([(EKCalendar *)self allowedEntityTypes]& 2) != 0 && CalIsReminderBridgeEnabled())
  {
    v12 = [(EKCalendar *)self source];
    v7 = [v12 backingObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(EKObject *)self eventStore];
      v10 = [v9 reminderSourceForEventSource:v8];

      if (v10)
      {
        v11 = [v10 frozenObject];
        [v8 setReminderSource:v11];
      }
    }
  }
}

- (void)setAllowedEntityTypes:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = 8;
  }

  else
  {
    v3 = 4 * (a3 == 1);
  }

  [(EKCalendar *)self setAllowedEntities:v3];
}

- (BOOL)hasEvents
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(EKObject *)self eventStore];
  v4 = [v3 connection];
  v5 = [v4 CADOperationProxySync];
  v6 = [(EKObject *)self CADObjectID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__EKCalendar_hasEvents__block_invoke;
  v8[3] = &unk_1E77FFEA0;
  v8[4] = &v9;
  [v5 CADCalendar:v6 hasEvents:v8];

  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
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
  v3 = [(EKObject *)self eventStore];
  v4 = [v3 connection];
  v5 = [v4 CADOperationProxySync];
  v6 = [(EKObject *)self CADObjectID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__EKCalendar_hasEventsWithRoomAsAttendee__block_invoke;
  v8[3] = &unk_1E77FFEA0;
  v8[4] = &v9;
  [v5 CADCalendar:v6 hasEventsWithRoomAsAttendee:v8];

  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
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

  v3 = [(EKCalendar *)self constraints];
  v4 = [v3 canSetAvailability];

  if (!v4)
  {
    return 0;
  }

  v5 = [(EKCalendar *)self constraints];
  v6 = [v5 eventAvailabilityLimited];

  if (v6)
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
  v3 = [v2 intValue];

  return v3;
}

- (void)setLastSyncError:(unint64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  v8 = v6;
  if (a3 || v6)
  {
    v7 = [[EKSyncError alloc] initWithAccountError:a3 userInfo:v6];
    [(EKCalendar *)self setSyncError:v7];
  }

  else
  {
    [(EKCalendar *)self setSyncError:0];
  }
}

- (id)lastSyncErrorUserInfo
{
  v2 = [(EKCalendar *)self syncError];
  v3 = [v2 userInfo];

  return v3;
}

- (void)setSyncError:(id)a3
{
  v4 = *MEMORY[0x1E6992898];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKSyncError frozenClass]];
}

- (id)calendarError
{
  v3 = [(EKCalendar *)self syncError];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 errorType];
    v6 = [v4 errorCode];
    v7 = v6;
    if (v5 == 2)
    {
      if (v6)
      {
        v8 = kEKCalendarErrorDomain;
        goto LABEL_8;
      }
    }

    else if (v5)
    {
      v13 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(EKCalendar *)v5 calendarError];
      }
    }

    else if (v6)
    {
      v8 = kEKAccountErrorDomain;
LABEL_8:
      v9 = *v8;
      v10 = [v4 userInfo];
      v11 = [EKSyncError augmentSyncErrorUserInfo:v10 for:self];

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
  v3 = [(EKCalendar *)self lastSyncStartDate];
  v4 = [(EKCalendar *)self lastSyncEndDate];
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

- (void)moveSubscribedCalendarToSource:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__20;
  v21 = __Block_byref_object_dispose__20;
  v22 = 0;
  v5 = [(EKObject *)self eventStore];
  v6 = [v5 connection];
  v7 = [v6 CADOperationProxySync];
  v8 = [(EKObject *)self CADObjectID];
  v9 = [v4 CADObjectID];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __45__EKCalendar_moveSubscribedCalendarToSource___block_invoke;
  v14 = &unk_1E77FFEC8;
  v16 = &v17;
  v10 = v5;
  v15 = v10;
  [v7 CADDatabaseMigrateSubscribedCalendar:v8 toSource:v9 reply:&v11];

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

- (BOOL)removeServerRefreshRelatedPropertiesForSelfAndAllEventsSaveAndCommitWithError:(id *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  [(EKCalendar *)self setExternalModificationTag:0];
  [(EKCalendar *)self setDigest:0];
  [(EKCalendar *)self setRefreshDate:0];
  v5 = [(EKObject *)self eventStore];
  v6 = [v5 predicateForCalendarItemsOfType:1 inCalendar:self];
  [v5 eventsMatchingPredicate:v6];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v30 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v23 = a3;
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
        v15 = [v5 saveEvent:v14 span:3 commit:0 error:&v26];
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

    a3 = v23;
    if (v10)
    {
LABEL_20:
      [v5 rollback];
      if (!a3)
      {
LABEL_24:
        v19 = 0;
        goto LABEL_25;
      }

LABEL_21:
      v20 = v10;
      v19 = 0;
      *a3 = v10;
      goto LABEL_25;
    }
  }

  else
  {
  }

  v25 = 0;
  v16 = [v5 saveCalendar:self commit:0 error:&v25];
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
  v18 = [v5 commitWithRollback:&v24];
  v10 = v24;
  if ((v18 & 1) == 0)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKCalendar removeServerRefreshRelatedPropertiesForSelfAndAllEventsSaveAndCommitWithError:];
      if (!a3)
      {
        goto LABEL_24;
      }
    }

    else if (!a3)
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

- (void)setSharees:(id)a3
{
  v4 = *MEMORY[0x1E6992858];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedMultiRelationObjects:v5 forKey:v4];
  v6 = MEMORY[0x1E696AD98];
  v7 = [v5 count];

  v8 = [v6 numberWithInt:v7 != 0];
  [(EKObject *)self setCachedValue:v8 forKey:v4];
}

- (void)addSharee:(id)a3
{
  [(EKObject *)self addCachedMeltedObject:a3 forMultiValueKey:*MEMORY[0x1E6992858]];
  v4 = MEMORY[0x1E695E118];

  [(EKObject *)self setCachedValue:v4 forKey:@"hasSharees"];
}

- (void)removeSharee:(id)a3
{
  [(EKObject *)self removeCachedMeltedObject:a3 forMultiValueKey:*MEMORY[0x1E6992858]];

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
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [(EKCalendar *)self sharees];
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count") + 1}];
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
  v2 = [(EKCalendar *)self allAlarms];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_174];
    v4 = [v2 filteredSetUsingPredicate:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAlarms:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v4;
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
        v18 = [v17 snoozedAlarms];
        v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
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
                objc_enumerationMutation(v18);
              }

              [v5 addObject:*(*(&v24 + 1) + 8 * k)];
            }

            v20 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
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

- (void)addAlarms:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithSet:a3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__EKCalendar_addAlarms___block_invoke;
  v5[3] = &unk_1E77FFF10;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (void)removeAlarms:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithSet:a3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__EKCalendar_removeAlarms___block_invoke;
  v5[3] = &unk_1E77FFF10;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (void)snoozeAlarm:(id)a3 withTimeIntervalFromNow:(double)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a3;
  v12 = [v6 date];
  [v7 setAcknowledgedDate:v12];
  v8 = [v7 duplicate];
  v9 = [v12 dateByAddingTimeInterval:a4];
  [v8 setAbsoluteDate:v9];

  v10 = [(EKCalendar *)self findOriginalAlarmStartingWith:v7];

  [v8 setOriginalAlarm:v10];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [(EKCalendar *)self addAlarms:v11];
}

- (void)snoozeAlarm:(id)a3 withLocation:(id)a4 proximity:(int64_t)a5
{
  v14 = a3;
  v9 = a4;
  if (!a5)
  {
    [EKCalendar snoozeAlarm:a2 withLocation:self proximity:?];
  }

  v10 = [MEMORY[0x1E695DF00] date];
  [v14 setAcknowledgedDate:v10];

  v11 = [v14 duplicate];
  [v11 setStructuredLocation:v9];
  [v11 setProximity:a5];
  v12 = [(EKCalendar *)self findOriginalAlarmStartingWith:v14];
  [v11 setOriginalAlarm:v12];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:v11];
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
    v3 = [(EKCalendar *)self allAlarms];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v12 + 1) + 8 * i) _hasChangesForKey:v7])
          {
            v9 = 1;
            goto LABEL_13;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(EKCalendar *)self allAlarms];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isSnoozed])
        {
          v10 = [v9 acknowledgedDate];

          if (v10)
          {
            [v3 addObject:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  [(EKCalendar *)self removeAlarms:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeAllSnoozedAlarms
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(EKCalendar *)self allAlarms];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isSnoozed])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  [(EKCalendar *)self removeAlarms:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)findOriginalAlarmStartingWith:(id)a3
{
  v3 = a3;
  v4 = [v3 originalAlarm];
  if (v4)
  {
    v5 = [v3 originalAlarm];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v6 originalAlarm];
  if (v7)
  {
    v8 = v7;
    while (1)
    {
      v9 = [v6 externalID];
      v10 = [v3 externalID];
      v11 = [v9 isEqualToString:v10];

      if (v11)
      {
        break;
      }

      v12 = [v6 originalAlarm];

      v8 = [v12 originalAlarm];
      v6 = v12;
      if (!v8)
      {
        goto LABEL_10;
      }
    }
  }

  v12 = v6;
LABEL_10:

  return v12;
}

- (id)selfIdentityDisplayName
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992820]];
  if (!v3)
  {
    v4 = [(EKCalendar *)self selfIdentityFirstName];
    v5 = [(EKCalendar *)self selfIdentityLastName];
    v3 = DisplayNameStringForIdentityWithProperties();
  }

  return v3;
}

- (id)selfIdentityAddress
{
  v2 = [(EKCalendar *)self selfIdentityAddressString];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSelfIdentityAddress:(id)a3
{
  v4 = [a3 absoluteString];
  [(EKCalendar *)self setSelfIdentityAddressString:v4];
}

- (id)ownerIdentityDisplayName
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69927C0]];
  if (!v3)
  {
    v4 = [(EKCalendar *)self ownerIdentityFirstName];
    v5 = [(EKCalendar *)self ownerIdentityLastName];
    v3 = DisplayNameStringForIdentityWithProperties();
  }

  return v3;
}

- (void)setOwnerIdentityDisplayName:(id)a3
{
  v4 = a3;
  [(EKCalendar *)self setOwnerIdentityId:0xFFFFFFFFLL];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69927C0]];
}

- (int)ownerIdentityId
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69927D8]];
  v3 = [v2 intValue];

  return v3;
}

- (id)ownerIdentityAddress
{
  v2 = [(EKCalendar *)self ownerIdentityAddressString];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOwnerIdentityAddress:(id)a3
{
  v4 = a3;
  [(EKCalendar *)self setOwnerIdentityId:0xFFFFFFFFLL];
  v5 = [v4 absoluteString];

  [(EKCalendar *)self setOwnerIdentityAddressString:v5];
}

- (id)ownerIdentityOrganizer
{
  v3 = [(EKCalendar *)self ownerIdentityEmail];
  if (v3)
  {

LABEL_4:
    v5 = [MEMORY[0x1E6992F50] defaultProvider];
    v6 = [(EKCalendar *)self ownerIdentityEmail];
    if ([v5 matchesOneOfMyEmails:v6])
    {
      v7 = 1;
    }

    else
    {
      v8 = [MEMORY[0x1E6992F50] defaultProvider];
      v9 = [(EKCalendar *)self ownerIdentityAddress];
      v7 = [v8 urlMatchesOneOfMyEmails:v9];
    }

    goto LABEL_8;
  }

  v4 = [(EKCalendar *)self ownerIdentityAddress];

  if (v4)
  {
    goto LABEL_4;
  }

  v7 = 1;
LABEL_8:
  v10 = [EKOrganizer alloc];
  v11 = [(EKCalendar *)self ownerIdentityDisplayName];
  v12 = [(EKCalendar *)self ownerIdentityEmail];
  v13 = [(EKCalendar *)self ownerIdentityPhoneNumber];
  v14 = [(EKCalendar *)self ownerIdentityAddress];
  v15 = [(EKOrganizer *)v10 initWithName:v11 emailAddress:v12 phoneNumber:v13 address:v14 isCurrentUser:v7];

  return v15;
}

- (BOOL)supportsMultipleAlarms
{
  v2 = [(EKCalendar *)self constraints];
  v3 = [v2 maxAlarmsAllowed];

  return v3 > 1;
}

- (BOOL)automaticEventLocationGeocodingAllowed
{
  if (![(EKCalendar *)self isSuggestedEventCalendar])
  {
    return 1;
  }

  return +[EKFeatureSet automaticGeocodingEnabled];
}

- (BOOL)validate:(id *)a3
{
  v5 = self;
  v63 = *MEMORY[0x1E69E9840];
  v61.receiver = self;
  v61.super_class = EKCalendar;
  if (![(EKObject *)&v61 validate:?])
  {
    goto LABEL_83;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v6 = [(EKCalendar *)v5 source];

  if (!v6)
  {
    if (!a3)
    {
      goto LABEL_83;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = 14;
LABEL_63:
    [v19 errorWithEKErrorCode:v20];
    *a3 = v45 = 0;
    goto LABEL_84;
  }

  if (([(EKCalendar *)v5 allowedEntityTypes]& 2) != 0)
  {
    v7 = [(EKCalendar *)v5 source];
    v8 = [v7 allowsTasks];

    if ((v8 & 1) == 0)
    {
      if (!a3)
      {
        goto LABEL_83;
      }

      v19 = MEMORY[0x1E696ABC0];
      v20 = 24;
      goto LABEL_63;
    }
  }

  if (([(EKCalendar *)v5 allowedEntityTypes]& 1) != 0)
  {
    v9 = [(EKCalendar *)v5 source];
    v10 = [v9 allowsEvents];

    if ((v10 & 1) == 0)
    {
      if (!a3)
      {
        goto LABEL_83;
      }

      v19 = MEMORY[0x1E696ABC0];
      v20 = 25;
      goto LABEL_63;
    }
  }

  v11 = [(EKCalendar *)v5 isImmutable];
  v12 = MEMORY[0x1E6992760];
  if (v11)
  {
    v13 = *MEMORY[0x1E6992760];
    v14 = [(EKObject *)v5 _previousValueForKey:*MEMORY[0x1E6992760]];
    v15 = [v14 unsignedIntValue];

    if ((v15 & 4) != 0)
    {
      if (validate__onceToken != -1)
      {
        [EKCalendar validate:];
      }

      v21 = [(EKObject *)v5 changeSet];
      v3 = [v21 changedKeys];

      v22 = [v3 count];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v23 = v3;
      v24 = [v23 countByEnumeratingWithState:&v57 objects:v62 count:16];
      if (v24)
      {
        v3 = v24;
        v25 = *v58;
        do
        {
          for (i = 0; i != v3; i = i + 1)
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
              v56 = [(EKCalendar *)v5 flags];
              [(EKObject *)v5 _previousValueForKey:v13];
              v28 = v13;
              v29 = v23;
              v31 = v30 = v5;
              v32 = v3;
              v33 = v22;
              v34 = v25;
              v35 = [v31 unsignedIntValue];

              v5 = v30;
              v23 = v29;
              v13 = v28;
              v36 = v35 ^ v56;
              v25 = v34;
              v37 = v33;
              v3 = v32;
              v22 = v37 - ((v36 & 0xFFFEFFFF) == 0);
            }
          }

          v3 = [v23 countByEnumeratingWithState:&v57 objects:v62 count:16];
        }

        while (v3);
      }

      a3 = v55;
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

  v16 = [(EKObject *)v5 isNew];
  v17 = *MEMORY[0x1E6992870];
  if (!v16 && [(EKObject *)v5 _hasChangesForKey:*MEMORY[0x1E6992870]])
  {
    v18 = [(EKObject *)v5 eventStore];
    if ([v18 skipModificationValidation])
    {
    }

    else
    {
      v38 = [MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement];

      if ((v38 & 1) == 0)
      {
        if (![MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp])
        {
          goto LABEL_61;
        }

        v46 = [(EKObject *)v5 committedValueForKey:v17];
        v47 = [(EKCalendar *)v5 source];
        if ([v46 sourceType])
        {
          v48 = 0;
        }

        else
        {
          v48 = [v47 sourceType] == 0;
        }

        if (a3 && !v48)
        {
          goto LABEL_62;
        }

        if (!v48)
        {
LABEL_83:
          v45 = 0;
          goto LABEL_84;
        }
      }
    }
  }

  if (![(EKObject *)v5 _hasChangesForKey:v17])
  {
    goto LABEL_50;
  }

  v39 = [(EKObject *)v5 eventStore];
  if ([v39 eventAccessLevel] == 1)
  {
    v40 = [(EKCalendar *)v5 allowEvents];

    if (v40)
    {
LABEL_61:
      if (a3)
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

  v41 = [(EKObject *)v5 eventStore];
  if ([v41 skipModificationValidation])
  {
    goto LABEL_49;
  }

  v42 = [(EKCalendar *)v5 source];
  if ([v42 supportsCalendarCreation] & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessHasSyncClientEntitlement"))
  {
LABEL_48:

LABEL_49:
    goto LABEL_50;
  }

  v49 = [(EKCalendar *)v5 type];
  if (v49 != 4)
  {
    if ([(EKCalendar *)v5 type]== (EKCalendarTypeBirthday|EKCalendarTypeExchange))
    {
      goto LABEL_75;
    }

LABEL_80:

    goto LABEL_81;
  }

  v3 = [(EKObject *)v5 eventStore];
  if ([v3 allowsBirthdayModifications])
  {

    goto LABEL_48;
  }

  if ([(EKCalendar *)v5 type]!= (EKCalendarTypeBirthday|EKCalendarTypeExchange))
  {

    goto LABEL_80;
  }

LABEL_75:
  v50 = v5;
  v51 = [(EKObject *)v5 eventStore];
  v52 = [v51 allowsIntegrationModifications];

  if (v49 == 4)
  {
  }

  v5 = v50;
  if ((v52 & 1) == 0)
  {
LABEL_81:
    if (a3)
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = 17;
      goto LABEL_63;
    }

    goto LABEL_83;
  }

LABEL_50:
  v43 = *v12;
  if (![(EKObject *)v5 _hasChangesForKey:*v12]|| ![(EKCalendar *)v5 isDefaultSchedulingCalendar])
  {
    goto LABEL_57;
  }

  v44 = [(EKObject *)v5 _previousValueForKey:v43];
  if (([v44 unsignedIntValue] & 0x400) != 0)
  {

LABEL_57:
    v45 = 1;
    goto LABEL_84;
  }

  v45 = [(EKCalendar *)v5 eligibleForDefaultSchedulingCalendar];

  if (a3 && (v45 & 1) == 0)
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = 70;
    goto LABEL_63;
  }

LABEL_84:
  v53 = *MEMORY[0x1E69E9840];
  return v45;
}

uint64_t __23__EKCalendar_validate___block_invoke()
{
  v0 = *MEMORY[0x1E6992730];
  validate____DirtyPropertiesToIgnore = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6992740], *MEMORY[0x1E6992730], *MEMORY[0x1E6992728], *MEMORY[0x1E6992890], 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)save:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  [(EKObject *)self insertPersistentObjectIfNeeded];
  if ([(EKCalendar *)self isAlarmAcknowledgedPropertyDirty])
  {
    [(EKCalendar *)self removeAcknowledgedSnoozedAlarms];
  }

  [(EKCalendar *)self assignColorForNewCalendarIfNeeded];
  if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992768]])
  {
    v4 = [(EKCalendar *)self image];
    [v4 saveInCalendar:self];

    v5 = [(EKObject *)self changeSet];
    v6 = [(EKCalendar *)self image];
    v7 = [v6 backingObject];
    [v5 forceChangeValue:v7 forKey:*MEMORY[0x1E6992980]];
  }

  [(EKObject *)self updatePersistentObject];
  return 1;
}

- (BOOL)remove:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  v5 = [(EKObject *)self eventStore];
  if ([v5 skipModificationValidation])
  {

LABEL_6:
    [(EKObject *)self deletePersistentObject];
    return 1;
  }

  v6 = [MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement];

  if (v6)
  {
    goto LABEL_6;
  }

  if (![(EKCalendar *)self isImmutable])
  {
    if ([(EKCalendar *)self _validateDeletable:a3])
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v8 = [(EKCalendar *)self constraints];
  v9 = [v8 allowsCalendarAddDeleteModify];

  if (v9)
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
  *a3 = v11;
  return result;
}

- (BOOL)isManaged
{
  v3 = [(EKObject *)self eventStore];
  v4 = [(EKCalendar *)self source];
  v5 = [v3 isSourceManaged:v4];

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
  v3 = [v2 BOOLValue];

  return v3;
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

- (id)exportDataWithOptions:(unint64_t)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__20;
  v16 = __Block_byref_object_dispose__20;
  v17 = 0;
  v5 = [(EKObject *)self eventStore];
  v6 = [v5 connection];
  v7 = [v6 CADOperationProxySync];
  v8 = [(EKObject *)self CADObjectID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__EKCalendar_exportDataWithOptions___block_invoke;
  v11[3] = &unk_1E77FDD00;
  v11[4] = &v12;
  [v7 CADDatabaseExportICSDataForCalendar:v8 options:a3 reply:v11];

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
  v2 = [(EKCalendar *)self constraints];
  v3 = [v2 supportsJunkReporting];

  return v3;
}

- (void)setIsJunk:(BOOL)a3
{
  if (a3)
  {
    [(EKCalendar *)self setCachedJunkStatus:1];
    v4 = [MEMORY[0x1E69998A8] sharedConnection];
    v5 = [(EKCalendar *)self calendarIdentifier];
    v6 = [(EKCalendar *)self source];
    v7 = [v6 externalID];
    [v4 reportSharedCalendarInviteAsJunkForCalendarWithID:v5 accountID:v7 queue:MEMORY[0x1E69E96A0] completionBlock:&__block_literal_global_212];

    [(EKCalendar *)self setCachedJunkStatus:1];
  }

  else
  {
    [(EKCalendar *)self setCachedJunkStatus:2];
    v10 = [(EKCalendar *)self sharedOwnerName];
    v8 = [(EKCalendar *)self sharedOwnerEmail];
    v9 = [(EKCalendar *)self sharedOwnerPhoneNumber];
    [EKRecents recordRecentForContactWithName:v10 emailAddress:v8 phoneNumber:v9];
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
  v4[1] = a1;
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