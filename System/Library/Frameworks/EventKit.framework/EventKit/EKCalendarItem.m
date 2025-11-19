@interface EKCalendarItem
+ (BOOL)_shouldDeleteAndAddForMoveFromCalendar:(id)a3 toCalendar:(id)a4;
+ (BOOL)canonicalizedEqualityTestValue1:(id)a3 value2:(id)a4 key:(id)a5 object1:(id)a6 object2:(id)a7;
+ (id)EKObjectChangeSummarizer_multiValueDiffKeys;
+ (id)EKObjectChangeSummarizer_singleValueDiffKeys;
+ (id)adjustDateFromUTC:(id)a3 allDay:(BOOL)a4 timeZone:(id)a5;
+ (id)defaultPropertyKeysToSkipForRecursiveSnapshotCopies;
+ (id)keysToIgnoreForApplyingChanges;
+ (id)knownDerivedRelationshipKeys;
+ (id)knownIdentityKeysForComparison;
+ (id)knownRelationshipMultiValueKeys;
+ (id)knownRelationshipMultiValueKeysForValidation;
+ (id)knownRelationshipSingleValueKeys;
+ (id)knownRelationshipSingleValueKeysForValidation;
+ (id)knownRelationshipWeakKeys;
+ (id)knownSingleValueKeysForComparison;
+ (id)preferredLocationWithClientLocation:(id)a3 structuredLocation:(id)a4;
+ (id)timeZoneFromTimeZoneName:(id)a3 withFloatingTimeZone:(id)a4;
+ (id)timeZoneNameFromTimeZone:(id)a3;
- (BOOL)_excludeAlarmDueToConnectionTrigger:(id)a3;
- (BOOL)_hadAttendees;
- (BOOL)_hadRecurrenceRules;
- (BOOL)_hasRealAttendees;
- (BOOL)_isInSharedToMeCalendarWithNoSharingScheduling;
- (BOOL)_validateDeletable:(id *)a3;
- (BOOL)_validateDeletableBySharedCalendarShareeWithError:(id *)a3;
- (BOOL)_validateDeletableDueToAccessConsent:(id *)a3;
- (BOOL)_validateDeletableInCalendarWithError:(id *)a3;
- (BOOL)allowsAlarmModifications;
- (BOOL)allowsCalendarModifications;
- (BOOL)canMoveToCalendar:(id)a3 error:(id *)a4;
- (BOOL)canMoveToCalendar:(id)a3 fromCalendar:(id)a4 error:(id *)a5;
- (BOOL)defaultAlarmWasDeleted;
- (BOOL)hasAlarms;
- (BOOL)hasAttachment;
- (BOOL)hasAttendees;
- (BOOL)hasCalendarChangeThatRequiresDeleteAndAdd;
- (BOOL)hasComplexRecurrence;
- (BOOL)hasNotes;
- (BOOL)hasRecurrenceRules;
- (BOOL)isAlarmAcknowledgedPropertyDirty;
- (BOOL)isAllDay;
- (BOOL)isEditable;
- (BOOL)isExternallyOrganizedInvitation;
- (BOOL)isFloating;
- (BOOL)isNewItemThatFailedToPut;
- (BOOL)isOnlyAlarmAcknowledgedPropertyDirty;
- (BOOL)isOrganizedBySharedCalendarOwner;
- (BOOL)isSelfOrganized;
- (BOOL)isSelfOrganizedInvitation;
- (BOOL)suppressNotificationForChanges;
- (BOOL)validate:(id *)a3;
- (NSArray)alarms;
- (NSArray)attachments;
- (NSArray)attendees;
- (NSArray)recurrenceRules;
- (NSString)calendarItemExternalIdentifier;
- (NSString)location;
- (NSURL)URL;
- (id)_dataFromStructuredDataDictionary:(id)a3 local:(BOOL)a4;
- (id)_generateNewUniqueID;
- (id)_selfAttendee;
- (id)_structuredDataDictionaryFromData:(id)a3 local:(BOOL)a4;
- (id)action;
- (id)adjustDateFromUTC:(id)a3;
- (id)allAlarms;
- (id)allAlarmsSet;
- (id)attendeeMatchingEmailAddress:(id)a3;
- (id)attendeesRaw;
- (id)description;
- (id)endTimeZone;
- (id)exceptionDates;
- (id)exceptionDatesAdjustedForFloatingEvents;
- (id)exportToICSWithOptions:(unint64_t)a3;
- (id)filterAttendeesPendingDeletion:(id)a3;
- (id)findOriginalAlarmStartingWith:(id)a3;
- (id)localUID;
- (id)participantMatchingContact:(id)a3;
- (id)preferredLocation;
- (id)propertiesThatCanBeModifiedOnReadOnlyCalendars;
- (id)recurrenceRuleString;
- (id)selfAttendee;
- (id)sharedItemCreatedByAddress;
- (id)sharedItemCreatedByDisplayName;
- (id)sharedItemCreatedTimeZone;
- (id)sharedItemModifiedByAddress;
- (id)sharedItemModifiedByDisplayName;
- (id)sharedItemModifiedTimeZone;
- (id)singleRecurrenceRule;
- (id)sortedAlarms;
- (id)startTimeZone;
- (int)selfParticipantStatusRaw;
- (int)sequenceNumber;
- (int64_t)indexForAlarm:(id)a3;
- (int64_t)selfParticipantStatus;
- (unint64_t)actionsState;
- (unint64_t)priority;
- (unsigned)modifiedProperties;
- (void)_addExceptionDate:(id)a3;
- (void)_deletePersistentItemAndDetachedItems:(id)a3 forSavingItem:(id)a4;
- (void)_deleteSelfAndDetached;
- (void)_moveToCalendar:(id)a3 forSavingItem:(id)a4;
- (void)_recursivelyPerformBlockOnSelfAndDetachedItems:(id)a3 forSavingItem:(id)a4;
- (void)_removeExceptionDate:(id)a3;
- (void)_setCalendarRecursively:(id)a3 forSavingItem:(id)a4;
- (void)_setSelfAttendee:(id)a3;
- (void)_updateModifiedAlarmByAcknowledging;
- (void)_updatePersistentObjectOfSelfAndDetachedItemsExceptForSavingItem:(id)a3;
- (void)_willSave;
- (void)addAlarm:(EKAlarm *)alarm;
- (void)addAttendee:(id)a3;
- (void)addOrganizerAndSelfAttendeeForNewInvitation;
- (void)addOrganizerAndSelfAttendeeForNewInvitationInCalendar:(id)a3 force:(BOOL)a4;
- (void)addRecurrenceRule:(EKRecurrenceRule *)rule;
- (void)pinRecurrenceRuleToEndsOfFreqency;
- (void)removeAcknowledgedSnoozedAlarms;
- (void)removeAlarm:(EKAlarm *)alarm;
- (void)removeAllSnoozedAlarms;
- (void)removeAttendee:(id)a3;
- (void)removeLastExtraneousOrganizerAndSelfAttendee;
- (void)selfAttendee;
- (void)setAction:(id)a3;
- (void)setAlarms:(NSArray *)alarms;
- (void)setAllAlarms:(id)a3;
- (void)setAllAlarmsSet:(id)a3;
- (void)setAttachments:(id)a3;
- (void)setAttendees:(id)a3;
- (void)setAttendeesRaw:(id)a3;
- (void)setCalendar:(EKCalendar *)calendar;
- (void)setClientLocation:(id)a3;
- (void)setEndTimeZone:(id)a3;
- (void)setExceptionDates:(id)a3;
- (void)setLocation:(NSString *)location;
- (void)setOrganizer:(id)a3;
- (void)setOriginalItem:(id)a3;
- (void)setPriority:(unint64_t)a3;
- (void)setRecurrenceRules:(NSArray *)recurrenceRules;
- (void)setRecurrenceRulesSet:(id)a3;
- (void)setSelfAttendee:(id)a3;
- (void)setSharedItemCreatedByAddress:(id)a3;
- (void)setSharedItemCreatedTimeZone:(id)a3;
- (void)setSharedItemModifiedByAddress:(id)a3;
- (void)setSharedItemModifiedTimeZone:(id)a3;
- (void)setStartTimeZone:(id)a3;
- (void)setStructuredLocationWithoutPrediction:(id)a3;
- (void)setSyncError:(id)a3;
- (void)setTimeZone:(NSTimeZone *)timeZone;
- (void)setTravelStartLocation:(id)a3;
- (void)setURL:(NSURL *)URL;
- (void)snoozeAlarm:(id)a3 withLocation:(id)a4 proximity:(int64_t)a5;
- (void)snoozeAlarm:(id)a3 withTimeIntervalFromNow:(double)a4 pinsTriggerToStartDate:(BOOL)a5;
- (void)updateWithVCSEntity:(id)a3 inCalendar:(id)a4;
@end

@implementation EKCalendarItem

- (id)startTimeZone
{
  v2 = [(EKCalendarItem *)self startTimeZoneName];
  v3 = [objc_opt_class() timeZoneFromTimeZoneName:v2 withFloatingTimeZone:0];

  return v3;
}

- (NSString)location
{
  v3 = [(EKCalendarItem *)self preferredLocation];

  if (v3)
  {
    v4 = [(EKCalendarItem *)self preferredLocation];
    v5 = [v4 title];

    v6 = [(EKCalendarItem *)self preferredLocation];
    v7 = [v6 address];

    v8 = [MEMORY[0x1E6992FD8] fullDisplayStringWithTitle:v5 address:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)preferredLocation
{
  v3 = objc_opt_class();
  v4 = [(EKCalendarItem *)self clientLocation];
  v5 = [(EKCalendarItem *)self structuredLocation];
  v6 = [v3 preferredLocationWithClientLocation:v4 structuredLocation:v5];

  return v6;
}

- (BOOL)hasRecurrenceRules
{
  if ([(EKObject *)self isNew]|| ![(EKObject *)self isPropertyUnavailable:*MEMORY[0x1E6992648]])
  {
    v3 = [(EKCalendarItem *)self recurrenceRules];
    v4 = [v3 count] != 0;
  }

  else
  {
    v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69925F8]];
    v4 = [v3 BOOLValue];
  }

  return v4;
}

+ (id)knownRelationshipSingleValueKeys
{
  if (knownRelationshipSingleValueKeys_onceToken != -1)
  {
    +[EKCalendarItem knownRelationshipSingleValueKeys];
  }

  v3 = knownRelationshipSingleValueKeys_keys;

  return v3;
}

- (BOOL)hasAttendees
{
  if ([(EKObject *)self isNew]|| ![(EKObject *)self isPropertyUnavailable:*MEMORY[0x1E6992568]])
  {

    return [(EKCalendarItem *)self _hasRealAttendees];
  }

  else
  {
    v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69925E8]];
    v4 = [v3 BOOLValue];

    return v4;
  }
}

void __50__EKCalendarItem_knownRelationshipSingleValueKeys__block_invoke()
{
  v7[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992580];
  v7[0] = *MEMORY[0x1E69926D8];
  v7[1] = v0;
  v1 = *MEMORY[0x1E6992650];
  v7[2] = *MEMORY[0x1E6992628];
  v7[3] = v1;
  v2 = *MEMORY[0x1E6992570];
  v7[4] = *MEMORY[0x1E6992630];
  v7[5] = v2;
  v3 = *MEMORY[0x1E69926F0];
  v7[6] = *MEMORY[0x1E69926F8];
  v7[7] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:8];
  v5 = knownRelationshipSingleValueKeys_keys;
  knownRelationshipSingleValueKeys_keys = v4;

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)knownRelationshipMultiValueKeys
{
  if (knownRelationshipMultiValueKeys_onceToken != -1)
  {
    +[EKCalendarItem knownRelationshipMultiValueKeys];
  }

  v3 = knownRelationshipMultiValueKeys_keys;

  return v3;
}

void __49__EKCalendarItem_knownRelationshipMultiValueKeys__block_invoke()
{
  v6[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992648];
  v6[0] = *MEMORY[0x1E6992558];
  v6[1] = v0;
  v1 = *MEMORY[0x1E6992560];
  v6[2] = *MEMORY[0x1E6992568];
  v6[3] = v1;
  v2 = *MEMORY[0x1E69925A0];
  v6[4] = *MEMORY[0x1E6992598];
  v6[5] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:6];
  v4 = knownRelationshipMultiValueKeys_keys;
  knownRelationshipMultiValueKeys_keys = v3;

  v5 = *MEMORY[0x1E69E9840];
}

- (NSArray)attendees
{
  v3 = [(EKCalendarItem *)self attendeesRaw];
  v4 = [(EKCalendarItem *)self filterAttendeesPendingDeletion:v3];

  return v4;
}

- (id)attendeesRaw
{
  v3 = *MEMORY[0x1E6992568];
  v4 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:*MEMORY[0x1E6992568]];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(EKObject *)self cachedMeltedObjectForSingleValueKey:*MEMORY[0x1E6992650]];
    v7 = [(EKObject *)self meltedAndCachedMultiRelationObjectsForKey:v3];
    v8 = v7;
    if (v6)
    {
      v9 = [v7 mutableCopy];
      [v9 removeObject:v6];
      [v9 addObject:v6];
      v10 = [v9 copy];

      [(EKObject *)self setCachedMeltedObjects:v10 forMultiValueKey:v3];
      v8 = v10;
    }

    v5 = v8;
  }

  return v5;
}

- (BOOL)isSelfOrganizedInvitation
{
  v3 = [(EKCalendarItem *)self hasAttendees];
  if (v3)
  {

    LOBYTE(v3) = [(EKCalendarItem *)self isSelfOrganized];
  }

  return v3;
}

- (id)endTimeZone
{
  v2 = [(EKCalendarItem *)self endTimeZoneName];
  v3 = [objc_opt_class() timeZoneFromTimeZoneName:v2 withFloatingTimeZone:0];

  return v3;
}

- (id)_selfAttendee
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6992650];
  v4 = [(EKObject *)self frozenOrMeltedCachedSingleRelationObjectForKey:*MEMORY[0x1E6992650]];
  v5 = v4;
  if (v4 && ([v4 isFrozen] & 1) != 0)
  {
    v6 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:*MEMORY[0x1E6992568]];
    v7 = v6;
    if (v6)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            v14 = [v13 backingObject];
            v15 = [v14 isEqual:v5];

            if (v15)
            {
              v16 = v13;
              [(EKObject *)self setCachedMeltedObject:v16 forSingleValueKey:v3];

              v7 = v19;
              goto LABEL_16;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v7 = v19;
    }

    v16 = [(EKObject *)self meltedAndCachedSingleRelationObjectForKey:v3];
LABEL_16:
  }

  else
  {
    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)selfAttendee
{
  v2 = [(EKCalendarItem *)self _selfAttendee];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKCalendarItem *)v4 selfAttendee];
    }

    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (BOOL)hasAttachment
{
  if ([(EKObject *)self isNew]|| ![(EKObject *)self isPropertyUnavailable:*MEMORY[0x1E6992560]])
  {
    v3 = [(EKCalendarItem *)self attachments];
    v4 = [v3 count] != 0;
  }

  else
  {
    v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69925E0]];
    v4 = [v3 BOOLValue];
  }

  return v4;
}

- (id)localUID
{
  v3 = [(EKCalendarItem *)self originalItem];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  v7 = [(EKCalendarItem *)v6 calendarItemIdentifier];

  return v7;
}

- (id)_structuredDataDictionaryFromData:(id)a3 local:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E6993068];
  v6 = a3;
  v7 = [v5 defaultPermittedClasses];
  v13 = 0;
  v8 = [v5 unarchiveDictionaryFromData:v6 permittedClasses:v7 strict:!v4 error:&v13];

  v9 = v13;
  if (v9)
  {
    v10 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKCalendarItem(Shared) _structuredDataDictionaryFromData:v9 local:v10];
    }

    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (id)_dataFromStructuredDataDictionary:(id)a3 local:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = MEMORY[0x1E6993068];
  v7 = [MEMORY[0x1E6993068] defaultPermittedClasses];
  v13 = 0;
  v8 = [v6 archiveDictionary:v5 permittedClasses:v7 strict:!v4 error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKCalendarItem(Shared) *)v5 _dataFromStructuredDataDictionary:v9 local:v10];
    }

    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [(EKCalendarItem *)self title];
  v5 = [(EKCalendarItem *)self location];
  v6 = [(EKCalendarItem *)self calendar];
  v7 = [(EKCalendarItem *)self alarms];
  v8 = [(EKCalendarItem *)self URL];
  v9 = [(EKCalendarItem *)self lastModifiedDate];
  v10 = [(EKCalendarItem *)self startTimeZone];
  v11 = [(EKCalendarItem *)self endTimeZone];
  v12 = [v14 stringWithFormat:@"%@ <%p>\n{\t title = \t\t%@ \n\t location = \t%@; \n\t calendar = \t%@; \n\t alarms = \t\t%@; \n\t URL = \t\t\t%@; \n\t lastModified = %@; \n\t startTimeZone = \t%@; \n\t endTimeZone = \t%@ \n}", v3, self, v4, v5, v6, v7, v8, v9, v10, v11];;

  return v12;
}

+ (id)knownRelationshipSingleValueKeysForValidation
{
  if (knownRelationshipSingleValueKeysForValidation_onceToken != -1)
  {
    +[EKCalendarItem knownRelationshipSingleValueKeysForValidation];
  }

  v3 = knownRelationshipSingleValueKeysForValidation_keys;

  return v3;
}

void __63__EKCalendarItem_knownRelationshipSingleValueKeysForValidation__block_invoke()
{
  v0 = knownRelationshipSingleValueKeysForValidation_keys;
  knownRelationshipSingleValueKeysForValidation_keys = MEMORY[0x1E695E0F0];
}

+ (id)knownRelationshipMultiValueKeysForValidation
{
  if (knownRelationshipMultiValueKeysForValidation_onceToken != -1)
  {
    +[EKCalendarItem knownRelationshipMultiValueKeysForValidation];
  }

  v3 = knownRelationshipMultiValueKeysForValidation_keys;

  return v3;
}

void __62__EKCalendarItem_knownRelationshipMultiValueKeysForValidation__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992558];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownRelationshipMultiValueKeysForValidation_keys;
  knownRelationshipMultiValueKeysForValidation_keys = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)knownRelationshipWeakKeys
{
  if (knownRelationshipWeakKeys_onceToken_0 != -1)
  {
    +[EKCalendarItem knownRelationshipWeakKeys];
  }

  v3 = knownRelationshipWeakKeys_keys_0;

  return v3;
}

void __43__EKCalendarItem_knownRelationshipWeakKeys__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992570];
  v4[0] = *MEMORY[0x1E6992630];
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = knownRelationshipWeakKeys_keys_0;
  knownRelationshipWeakKeys_keys_0 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken_3 != -1)
  {
    +[EKCalendarItem knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys_3;

  return v3;
}

void __48__EKCalendarItem_knownIdentityKeysForComparison__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992B08];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownIdentityKeysForComparison_keys_3;
  knownIdentityKeysForComparison_keys_3 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)knownSingleValueKeysForComparison
{
  if (knownSingleValueKeysForComparison_onceToken_1 != -1)
  {
    +[EKCalendarItem knownSingleValueKeysForComparison];
  }

  v3 = knownSingleValueKeysForComparison_keys_1;

  return v3;
}

void __51__EKCalendarItem_knownSingleValueKeysForComparison__block_invoke()
{
  v20[34] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992550];
  v20[0] = *MEMORY[0x1E6992548];
  v20[1] = v0;
  v1 = *MEMORY[0x1E6992578];
  v20[2] = *MEMORY[0x1E6992600];
  v20[3] = v1;
  v2 = *MEMORY[0x1E6992590];
  v20[4] = *MEMORY[0x1E6992588];
  v20[5] = v2;
  v3 = *MEMORY[0x1E69925B8];
  v20[6] = *MEMORY[0x1E69925B0];
  v20[7] = v3;
  v4 = *MEMORY[0x1E69925E8];
  v20[8] = *MEMORY[0x1E69925E0];
  v20[9] = v4;
  v5 = *MEMORY[0x1E69925F8];
  v20[10] = *MEMORY[0x1E69925F0];
  v20[11] = v5;
  v6 = *MEMORY[0x1E6992618];
  v20[12] = *MEMORY[0x1E6992608];
  v20[13] = v6;
  v7 = *MEMORY[0x1E6992640];
  v20[14] = *MEMORY[0x1E6992620];
  v20[15] = v7;
  v8 = *MEMORY[0x1E6992660];
  v20[16] = *MEMORY[0x1E6992658];
  v20[17] = v8;
  v9 = *MEMORY[0x1E6992670];
  v20[18] = *MEMORY[0x1E6992668];
  v20[19] = v9;
  v10 = *MEMORY[0x1E6992680];
  v20[20] = *MEMORY[0x1E6992678];
  v20[21] = v10;
  v11 = *MEMORY[0x1E6992690];
  v20[22] = *MEMORY[0x1E6992688];
  v20[23] = v11;
  v12 = *MEMORY[0x1E69926A0];
  v20[24] = *MEMORY[0x1E6992698];
  v20[25] = v12;
  v13 = *MEMORY[0x1E69926B0];
  v20[26] = *MEMORY[0x1E69926A8];
  v20[27] = v13;
  v14 = *MEMORY[0x1E69926C0];
  v20[28] = *MEMORY[0x1E69926B8];
  v20[29] = v14;
  v15 = *MEMORY[0x1E6992708];
  v20[30] = *MEMORY[0x1E69926D0];
  v20[31] = v15;
  v16 = *MEMORY[0x1E69925D8];
  v20[32] = *MEMORY[0x1E6992700];
  v20[33] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:34];
  v18 = knownSingleValueKeysForComparison_keys_1;
  knownSingleValueKeysForComparison_keys_1 = v17;

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __41__EKCalendarItem_specialComparisonBlocks__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 selfParticipantStatus];
  if (v6 == [v5 selfParticipantStatus])
  {
    v7 = 1;
  }

  else if ([v4 needsResponse])
  {
    v7 = [v5 needsResponse];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)defaultPropertyKeysToSkipForRecursiveSnapshotCopies
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__EKCalendarItem_defaultPropertyKeysToSkipForRecursiveSnapshotCopies__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultPropertyKeysToSkipForRecursiveSnapshotCopies_onceToken != -1)
  {
    dispatch_once(&defaultPropertyKeysToSkipForRecursiveSnapshotCopies_onceToken, block);
  }

  v2 = defaultPropertyKeysToSkipForRecursiveSnapshotCopies_keys;

  return v2;
}

void __69__EKCalendarItem_defaultPropertyKeysToSkipForRecursiveSnapshotCopies__block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___EKCalendarItem;
  v1 = objc_msgSendSuper2(&v9, sel_defaultPropertyKeysToSkipForRecursiveSnapshotCopies);
  v2 = defaultPropertyKeysToSkipForRecursiveSnapshotCopies_keys;
  defaultPropertyKeysToSkipForRecursiveSnapshotCopies_keys = v1;

  v3 = defaultPropertyKeysToSkipForRecursiveSnapshotCopies_keys;
  v4 = *MEMORY[0x1E6992630];
  v10[0] = *MEMORY[0x1E6992598];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v3 setByAddingObjectsFromArray:v5];
  v7 = defaultPropertyKeysToSkipForRecursiveSnapshotCopies_keys;
  defaultPropertyKeysToSkipForRecursiveSnapshotCopies_keys = v6;

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)knownDerivedRelationshipKeys
{
  if (knownDerivedRelationshipKeys_onceToken != -1)
  {
    +[EKCalendarItem knownDerivedRelationshipKeys];
  }

  v3 = knownDerivedRelationshipKeys_keys;

  return v3;
}

void __46__EKCalendarItem_knownDerivedRelationshipKeys__block_invoke()
{
  v0 = knownDerivedRelationshipKeys_keys;
  knownDerivedRelationshipKeys_keys = &unk_1F1B6B188;
}

- (NSString)calendarItemExternalIdentifier
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992700]];
  if (!v3)
  {
    v3 = [(EKCalendarItem *)self calendarItemIdentifier];
  }

  return v3;
}

- (BOOL)hasNotes
{
  if ([(EKObject *)self isNew]|| ![(EKObject *)self isPropertyUnavailable:*MEMORY[0x1E6992620]])
  {
    v3 = [(EKCalendarItem *)self notes];
    v4 = [v3 length] != 0;
  }

  else
  {
    v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69925F0]];
    v4 = [v3 BOOLValue];
  }

  return v4;
}

- (void)setLocation:(NSString *)location
{
  v7 = location;
  v4 = [(EKCalendarItem *)self location];
  v5 = [v4 isEqualToString:v7];

  if ((v5 & 1) == 0)
  {
    if (v7)
    {
      v6 = [EKStructuredLocation locationWithTitle:v7];
    }

    else
    {
      v6 = 0;
    }

    [(EKCalendarItem *)self setStructuredLocation:v6];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)setStructuredLocationWithoutPrediction:(id)a3
{
  v4 = *MEMORY[0x1E69926D8];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKStructuredLocation frozenClass]];
}

- (void)setClientLocation:(id)a3
{
  v4 = *MEMORY[0x1E6992580];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKStructuredLocation frozenClass]];
}

+ (id)preferredLocationWithClientLocation:(id)a3 structuredLocation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v5 = v6;
  }

  return v5;
}

- (void)setTravelStartLocation:(id)a3
{
  v4 = *MEMORY[0x1E69926F8];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKStructuredLocation frozenClass]];
}

- (BOOL)isAllDay
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992600]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)priority
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992640]];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setPriority:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992640]];
}

- (id)action
{
  v2 = [(EKCalendarItem *)self actionString];
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

- (void)setAction:(id)a3
{
  v4 = [a3 absoluteString];
  [(EKCalendarItem *)self setActionString:v4];
}

- (NSURL)URL
{
  v2 = [(EKCalendarItem *)self URLString];
  if ([v2 length])
  {
    v3 = [MEMORY[0x1E695DFF8] _lp_URLWithUserTypedString:v2 relativeToURL:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setURL:(NSURL *)URL
{
  v4 = [(NSURL *)URL absoluteString];
  [(EKCalendarItem *)self setURLString:v4];
}

- (void)setCalendar:(EKCalendar *)calendar
{
  v4 = *MEMORY[0x1E6992570];
  v5 = calendar;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKCalendar frozenClass]];
}

- (void)setTimeZone:(NSTimeZone *)timeZone
{
  v4 = timeZone;
  [(EKCalendarItem *)self setStartTimeZone:v4];
  [(EKCalendarItem *)self setEndTimeZone:v4];
}

- (void)setStartTimeZone:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() timeZoneNameFromTimeZone:v4];

  [(EKCalendarItem *)self setStartTimeZoneName:v5];
}

- (void)setEndTimeZone:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() timeZoneNameFromTimeZone:v4];

  [(EKCalendarItem *)self setEndTimeZoneName:v5];
}

- (BOOL)defaultAlarmWasDeleted
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992590]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unsigned)modifiedProperties
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992618]];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (int)sequenceNumber
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992660]];
  v3 = [v2 intValue];

  return v3;
}

- (void)setSyncError:(id)a3
{
  v4 = *MEMORY[0x1E69926F0];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKSyncError frozenClass]];
}

- (BOOL)isNewItemThatFailedToPut
{
  v3 = [(EKCalendarItem *)self syncError];
  v4 = v3;
  if (v3 && [v3 errorType] == 1 && objc_msgSend(v4, "errorCode") == 3)
  {
    v5 = [(EKCalendarItem *)self externalModificationTag];
    v6 = [v5 length] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)exportToICSWithOptions:(unint64_t)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v5 = [(EKObject *)self objectID];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = self;
      v7 = [(EKCalendarItem *)v6 startDate];
      v8 = [(EKCalendarItem *)v6 adjustedPersistedDateForDate:v7 withAdjustmentMode:0 pinMode:0 clientCalendarDate:0];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(EKObject *)self eventStore];
    v10 = [v9 connection];
    v11 = [v10 CADOperationProxySync];
    v12 = [(EKObject *)self CADObjectID];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__EKCalendarItem_exportToICSWithOptions___block_invoke;
    v15[3] = &unk_1E77FDD00;
    v15[4] = &v16;
    [v11 CADDatabaseExportICSForCalendarItemWithID:v12 occurrenceDate:v8 options:a3 reply:v15];
  }

  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

void __41__EKCalendarItem_exportToICSWithOptions___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    NSLog(&cfstr_ErrorExporting.isa, v6);
  }

  else
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = v5;
    v6 = *(v7 + 40);
    *(v7 + 40) = v8;
  }
}

- (BOOL)suppressNotificationForChanges
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69926E8]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isEditable
{
  if ([(EKObject *)self isNew])
  {
    return 1;
  }

  v4 = [(EKCalendarItem *)self calendar];
  v5 = v4;
  if (v4 && (([v4 allowsContentModifications] & 1) != 0 || (objc_msgSend(v5, "isMutableSuggestionsCalendar") & 1) != 0 || objc_msgSend(v5, "isMutableNaturalLanguageSuggestionsCalendar")))
  {
    if ([(EKCalendarItem *)self hasAttendees])
    {
      v6 = [v5 source];
      if ((!v6 || (-[EKCalendarItem constraints](self, "constraints"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 supportsInvitationModifications], v7, v8)) && objc_msgSend(v5, "allowsScheduling"))
      {
        v3 = [(EKCalendarItem *)self isSelfOrganized]|| [(EKCalendarItem *)self isOrganizedBySharedCalendarOwner];
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_validateDeletable:(id *)a3
{
  if (![(EKCalendarItem *)self _validateDeletableDueToAccessConsent:?]|| ![(EKCalendarItem *)self _validateDeletableInCalendarWithError:a3])
  {
    return 0;
  }

  return [(EKCalendarItem *)self _validateDeletableBySharedCalendarShareeWithError:a3];
}

- (BOOL)_validateDeletableDueToAccessConsent:(id *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [EKEventStore realAuthorizationStatusForEntityType:[(EKCalendarItem *)self entityType]];
  if (v5 <= 2)
  {
    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:29];
    }

    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = [(EKCalendarItem *)self entityType];
      v9 = @"reminders";
      if (!v8)
      {
        v9 = @"events";
      }

      v12 = 138412546;
      v13 = self;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_1A805E000, v7, OS_LOG_TYPE_INFO, "Validation is failing for %@ because access has not been granted for %{public}@.", &v12, 0x16u);
    }
  }

  result = v5 > 2;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_validateDeletableInCalendarWithError:(id *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(EKCalendarItem *)self calendar];
  if ([v5 allowsContentModifications])
  {
    goto LABEL_6;
  }

  v6 = [(EKCalendarItem *)self calendar];
  if ([v6 isSuggestedEventCalendar])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    LOBYTE(v8) = 1;
    goto LABEL_8;
  }

  v7 = [(EKCalendarItem *)self calendar];
  if ([v7 isNaturalLanguageSuggestedEventCalendar])
  {

    goto LABEL_5;
  }

  v10 = [(EKCalendarItem *)self isNewItemThatFailedToPut];

  if (v10)
  {
    goto LABEL_7;
  }

  if (a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:6];
  }

  v11 = EKLogHandle;
  v8 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO);
  if (v8)
  {
    v13 = 138412290;
    v14 = self;
    _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_INFO, "Validation is failing for %@ because readonly items can't be removed.", &v13, 0xCu);
    LOBYTE(v8) = 0;
  }

LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_isInSharedToMeCalendarWithNoSharingScheduling
{
  v3 = [(EKCalendarItem *)self calendar];
  if ([v3 sharingStatus] == 2)
  {
    v4 = [(EKCalendarItem *)self calendar];
    v5 = [v4 allowsScheduling] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_validateDeletableBySharedCalendarShareeWithError:(id *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(EKCalendarItem *)self _isInSharedToMeCalendarWithNoSharingScheduling]&& [(EKCalendarItem *)self hasAttendees])
  {
    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:0];
    }

    v5 = EKLogHandle;
    v6 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO);
    if (v6)
    {
      v9 = 138412290;
      v10 = self;
      _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_INFO, "Validation is failing for %@ because it's not deletable by shared calendar sharees.", &v9, 0xCu);
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isFloating
{
  v2 = [(EKCalendarItem *)self timeZone];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)isSelfOrganized
{
  v2 = [(EKCalendarItem *)self organizer];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isCurrentUser];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isExternallyOrganizedInvitation
{
  v3 = [(EKCalendarItem *)self hasAttendees];
  if (v3)
  {
    LOBYTE(v3) = ![(EKCalendarItem *)self isSelfOrganized];
  }

  return v3;
}

- (BOOL)isOrganizedBySharedCalendarOwner
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(EKCalendarItem *)self calendar];
  v4 = [v3 sharedOwnerAddresses];

  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = [(EKCalendarItem *)self organizer];
  v6 = [v5 URL];
  v7 = [v6 absoluteString];

  if (v7)
  {
    v8 = [v7 stringRemovingMailto];
    v9 = [v7 stringRemovingTel];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      v22 = v4;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if ([v15 isEqualToString:v7])
          {
            goto LABEL_17;
          }

          v16 = [v15 stringRemovingMailto];
          if ([v16 isEqualToString:v8])
          {

LABEL_17:
            v19 = 1;
            v4 = v22;
            goto LABEL_18;
          }

          v17 = [v15 stringRemovingTel];
          v18 = [v17 isEqualToString:v9];

          if (v18)
          {
            goto LABEL_17;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v19 = 0;
        v4 = v22;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_18:
  }

  else
  {
LABEL_14:
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)allowsCalendarModifications
{
  if ([(EKObject *)self isNew])
  {
    return 1;
  }

  v4 = [(EKCalendarItem *)self calendar];
  v5 = [v4 allowsContentModifications];

  return v5;
}

- (BOOL)allowsAlarmModifications
{
  if ([MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement])
  {
    return 1;
  }

  v4 = [(EKCalendarItem *)self constraints];
  if ((([v4 supportsAlarmTriggerIntervals] & 1) != 0 || objc_msgSend(v4, "supportsAlarmTriggerDates")) && objc_msgSend(v4, "maxAlarmsAllowed"))
  {
    if ([(EKCalendarItem *)self isExternallyOrganizedInvitation])
    {
      v3 = [v4 supportsInvitationModifications];
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)actionsState
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__EKCalendarItem_actionsState__block_invoke;
  v5[3] = &unk_1E77FCF40;
  v5[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"actionsState" populateBlock:v5];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

id __30__EKCalendarItem_actionsState__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) externalData];
  v2 = [MEMORY[0x1E6992DF8] metadataWithData:v1];
  v3 = [v2 unrecognizedProperties];
  v4 = [v3 objectForKey:@"X-APPLE-NO-ACTION"];

  v5 = objc_opt_class();
  if ([v5 isSubclassOfClass:objc_opt_class()])
  {
    v6 = [v4 objectAtIndex:0];
    v7 = objc_opt_class();
    if ([v7 isSubclassOfClass:objc_opt_class()] && (objc_msgSend(v6, "value"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_class(), LODWORD(v9) = objc_msgSend(v9, "isSubclassOfClass:", objc_opt_class()), v8, v9))
    {
      v10 = [v6 value];
      if ([v10 isEqualToString:@"OUT-OF-DATE"])
      {
        v11 = 2;
      }

      else if ([v10 isEqualToString:@"DELEGATORS-COPY"])
      {
        v11 = 3;
      }

      else if ([v10 isEqualToString:@"DELEGATEES-COPY"])
      {
        v11 = 4;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];

  return v12;
}

- (id)adjustDateFromUTC:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(EKCalendarItem *)self isAllDay];
  v7 = [(EKCalendarItem *)self timeZone];
  v8 = [v5 adjustDateFromUTC:v4 allDay:v6 timeZone:v7];

  return v8;
}

+ (id)adjustDateFromUTC:(id)a3 allDay:(BOOL)a4 timeZone:(id)a5
{
  v6 = a4;
  v7 = a3;
  if (!a5 || v6)
  {
    v8 = MEMORY[0x1E6992FA8];
    v9 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v10 = [v8 dateInTimeZone:v9 fromFloatingDateInGMT:v7];

    v7 = v10;
  }

  return v7;
}

+ (id)keysToIgnoreForApplyingChanges
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EKCalendarItem_keysToIgnoreForApplyingChanges__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (keysToIgnoreForApplyingChanges_onceToken != -1)
  {
    dispatch_once(&keysToIgnoreForApplyingChanges_onceToken, block);
  }

  v2 = keysToIgnoreForApplyingChanges_keysToIgnore;

  return v2;
}

void __48__EKCalendarItem_keysToIgnoreForApplyingChanges__block_invoke(uint64_t a1)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___EKCalendarItem;
  v1 = objc_msgSendSuper2(&v8, sel_keysToIgnoreForApplyingChanges);
  v2 = *MEMORY[0x1E69925E8];
  v9[0] = *MEMORY[0x1E69925E0];
  v9[1] = v2;
  v3 = *MEMORY[0x1E69925F8];
  v9[2] = *MEMORY[0x1E69925F0];
  v9[3] = v3;
  v9[4] = *MEMORY[0x1E6992658];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
  v5 = [v1 setByAddingObjectsFromArray:v4];
  v6 = keysToIgnoreForApplyingChanges_keysToIgnore;
  keysToIgnoreForApplyingChanges_keysToIgnore = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasAlarms
{
  v2 = [(EKCalendarItem *)self alarms];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)setAlarms:(NSArray *)alarms
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = [(NSArray *)alarms mutableCopy];
  if (![(EKCalendarItem *)self shouldHaveDefaultAlarms])
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v5 = [(EKCalendarItem *)self allAlarms];
    v6 = [v5 countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v67;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v67 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v66 + 1) + 8 * i);
          if ([v10 isDefaultAlarm])
          {
            [v4 addObject:v10];
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v66 objects:v74 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v11 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v4, "count")}];
  v12 = [MEMORY[0x1E695DFA8] set];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v62 objects:v73 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v63;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v63 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v62 + 1) + 8 * j);
        if (([v18 isSnoozed] & 1) == 0)
        {
          [v11 addObject:v18];
          v19 = [v18 UUID];

          if (v19)
          {
            v20 = [v18 UUID];
            [v12 addObject:v20];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v62 objects:v73 count:16];
    }

    while (v15);
  }

  v47 = self;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v13;
  v21 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
  if (v21)
  {
    v22 = v21;
    v49 = *v59;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v59 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v58 + 1) + 8 * k);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v25 = [v24 snoozedAlarms];
        v26 = [v25 countByEnumeratingWithState:&v54 objects:v71 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v55;
          do
          {
            for (m = 0; m != v27; ++m)
            {
              if (*v55 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v54 + 1) + 8 * m);
              [v11 addObject:v30];
              v31 = [v30 UUID];

              if (v31)
              {
                v32 = [v30 UUID];
                [v12 addObject:v32];
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v54 objects:v71 count:16];
          }

          while (v27);
        }
      }

      v22 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
    }

    while (v22);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v33 = v47;
  v34 = [(EKCalendarItem *)v47 allAlarms];
  v35 = [v34 countByEnumeratingWithState:&v50 objects:v70 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v51;
    do
    {
      for (n = 0; n != v36; ++n)
      {
        if (*v51 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v50 + 1) + 8 * n);
        if ([(EKCalendarItem *)v33 _excludeAlarmDueToConnectionTrigger:v39])
        {
          v40 = [v39 UUID];
          if (v40)
          {
            v41 = v40;
            v42 = [v39 UUID];
            v43 = [v12 containsObject:v42];

            v33 = v47;
            if ((v43 & 1) == 0)
            {
              [v11 addObject:v39];
              v44 = [v39 UUID];
              [v12 addObject:v44];
            }
          }
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v50 objects:v70 count:16];
    }

    while (v36);
  }

  v45 = [v11 set];
  [(EKCalendarItem *)v33 setAllAlarmsSet:v45];

  v46 = *MEMORY[0x1E69E9840];
}

- (NSArray)alarms
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(EKCalendarItem *)self allAlarms];
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
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

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [(EKCalendarItem *)self _excludeAlarmDueToConnectionTrigger:v11, v15];
          if (([v11 isSnoozed] & 1) == 0 && !v12 && (-[EKCalendarItem shouldHaveDefaultAlarms](self, "shouldHaveDefaultAlarms") || (objc_msgSend(v11, "isDefaultAlarm") & 1) == 0))
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)sortedAlarms
{
  v2 = [(EKCalendarItem *)self alarms];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];

  return v3;
}

- (int64_t)indexForAlarm:(id)a3
{
  v4 = a3;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [(EKCalendarItem *)self sortedAlarms];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__EKCalendarItem_indexForAlarm___block_invoke;
    v8[3] = &unk_1E77FDD28;
    v9 = v4;
    v10 = &v11;
    [v6 enumerateObjectsUsingBlock:v8];
    v5 = v12[3];

    _Block_object_dispose(&v11, 8);
  }

  return v5;
}

void __32__EKCalendarItem_indexForAlarm___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if (([*(a1 + 32) isEqual:?] & 1) != 0 || (objc_msgSend(*(a1 + 32), "UUID"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "UUID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (BOOL)_excludeAlarmDueToConnectionTrigger:(id)a3
{
  v3 = a3;
  v5 = 1;
  if (([v3 proximity] & 0x8000000000000000) == 0)
  {
    v4 = [v3 proximity];
    if (v4 <= +[EKAlarm maxPublicProximity])
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)allAlarmsSet
{
  v2 = [(EKObject *)self meltedAndCachedMultiRelationObjectsForKey:*MEMORY[0x1E6992558]];
  v3 = [v2 mutableCopy];

  return v3;
}

- (void)setAllAlarmsSet:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * v8) isDefaultAlarm])
        {
          v9 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  [(EKCalendarItem *)self setDefaultAlarmWasDeleted:v9];
  [(EKObject *)self updateMeltedAndCachedMultiRelationObjects:v4 forKey:*MEMORY[0x1E6992558]];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setAllAlarms:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  [(EKCalendarItem *)self setAllAlarmsSet:v4];
}

- (id)allAlarms
{
  v2 = [(EKCalendarItem *)self allAlarmsSet];
  if ([v2 count])
  {
    v3 = [v2 allObjects];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)addAlarm:(EKAlarm *)alarm
{
  v4 = alarm;
  if (v4)
  {
    v5 = v4;
    if ([(EKAlarm *)v4 isDefaultAlarm])
    {
      [(EKCalendarItem *)self setDefaultAlarmWasDeleted:0];
    }

    [(EKObject *)self addCachedMeltedObject:v5 forMultiValueKey:*MEMORY[0x1E6992558]];
    v4 = v5;
  }
}

- (void)removeAlarm:(EKAlarm *)alarm
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = alarm;
  v5 = v4;
  if (v4)
  {
    v6 = [(EKAlarm *)v4 snoozedAlarms];
    if ([(EKAlarm *)v5 isDefaultAlarm])
    {
      v7 = [(EKCalendarItem *)self allAlarmsSet];
      v8 = [v7 containsObject:v5];

      if (v8)
      {
        [(EKCalendarItem *)self setDefaultAlarmWasDeleted:1];
      }
    }

    v20 = v5;
    [(EKObject *)self removeCachedMeltedObject:v5 forMultiValueKey:*MEMORY[0x1E6992558]];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          v15 = [v14 calendarItemOwner];
          v16 = [v15 calendarItemIdentifier];
          v17 = [(EKCalendarItem *)self calendarItemIdentifier];
          v18 = [v16 isEqualToString:v17];

          if (v18)
          {
            [(EKCalendarItem *)self removeAlarm:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v5 = v20;
  }

  v19 = *MEMORY[0x1E69E9840];
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

- (void)snoozeAlarm:(id)a3 withLocation:(id)a4 proximity:(int64_t)a5
{
  v12 = a3;
  v8 = a4;
  if (!a5)
  {
    [EKCalendarItem snoozeAlarm:withLocation:proximity:];
  }

  v9 = [MEMORY[0x1E695DF00] date];
  [v12 setAcknowledgedDate:v9];

  v10 = [v12 duplicate];
  [v10 setStructuredLocation:v8];
  [v10 setProximity:a5];
  v11 = [(EKCalendarItem *)self findOriginalAlarmStartingWith:v12];
  [v10 setOriginalAlarm:v11];
  [(EKCalendarItem *)self addAlarm:v10];
}

- (BOOL)isAlarmAcknowledgedPropertyDirty
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992558]])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [(EKCalendarItem *)self allAlarms];
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

- (BOOL)isOnlyAlarmAcknowledgedPropertyDirty
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(EKObject *)self hasChanges]&& [(EKObject *)self _isOnlyChangedKey:*MEMORY[0x1E6992558]])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [(EKCalendarItem *)self allAlarms];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v14;
      v8 = *MEMORY[0x1E6992440];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 hasChanges])
          {
            if (![v10 _isOnlyChangedKey:v8])
            {
              goto LABEL_15;
            }

            v6 = 1;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    else
    {
LABEL_15:
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)removeAcknowledgedSnoozedAlarms
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(EKCalendarItem *)self allAlarms];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if ([v9 isSnoozed])
        {
          v10 = [v9 acknowledgedDate];

          if (v10)
          {
            [v3 addObject:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(EKCalendarItem *)self removeAlarm:*(*(&v17 + 1) + 8 * j), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeAllSnoozedAlarms
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(EKCalendarItem *)self allAlarms];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
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
        if ([v9 isSnoozed])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(EKCalendarItem *)self removeAlarm:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)recurrenceRuleString
{
  v3 = [(EKCalendarItem *)self singleRecurrenceRule];
  v4 = [v3 stringValueAsDateOnly:-[EKCalendarItem isAllDay](self isFloating:{"isAllDay"), -[EKCalendarItem isFloating](self, "isFloating")}];

  return v4;
}

- (id)singleRecurrenceRule
{
  v2 = [(EKCalendarItem *)self recurrenceRules];
  v3 = [v2 lastObject];

  return v3;
}

- (BOOL)_hadRecurrenceRules
{
  if ([(EKObject *)self isNew])
  {
    v3 = *MEMORY[0x1E6992648];
LABEL_5:
    v6 = [(EKObject *)self _previousValueForKey:v3];
    v7 = [v6 count] != 0;
    goto LABEL_6;
  }

  v4 = [(EKObject *)self persistentObject];
  v3 = *MEMORY[0x1E6992648];
  v5 = [v4 isPropertyUnavailable:*MEMORY[0x1E6992648]];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E69925F8]];
  v7 = [v6 BOOLValue];
LABEL_6:

  return v7;
}

- (void)setRecurrenceRules:(NSArray *)recurrenceRules
{
  v5 = recurrenceRules;
  if (v5)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v5];
    [(EKCalendarItem *)self setRecurrenceRulesSet:v4];
  }

  else
  {
    [(EKCalendarItem *)self setRecurrenceRulesSet:0];
  }
}

- (NSArray)recurrenceRules
{
  v2 = [(EKCalendarItem *)self recurrenceRulesSet];
  v3 = [v2 allObjects];

  return v3;
}

- (BOOL)hasComplexRecurrence
{
  v2 = [(EKCalendarItem *)self singleRecurrenceRule];
  if ([v2 isPinnedToEndOfFrequency])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 daysOfTheWeek];
    if ([v4 count])
    {
      v3 = 1;
    }

    else
    {
      v5 = [v2 daysOfTheMonth];
      if ([v5 count])
      {
        v3 = 1;
      }

      else
      {
        v6 = [v2 daysOfTheYear];
        if ([v6 count])
        {
          v3 = 1;
        }

        else
        {
          v7 = [v2 weeksOfTheYear];
          if ([v7 count])
          {
            v3 = 1;
          }

          else
          {
            v8 = [v2 monthsOfTheYear];
            if ([v8 count])
            {
              v3 = 1;
            }

            else
            {
              v9 = [v2 setPositions];
              v3 = [v9 count] != 0;
            }
          }
        }
      }
    }
  }

  return v3;
}

- (void)pinRecurrenceRuleToEndsOfFreqency
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (![(EKCalendarItem *)self hasComplexRecurrence])
  {
    v3 = [(EKCalendarItem *)self singleRecurrenceRule];
    if ([v3 frequency] != 2 && objc_msgSend(v3, "frequency") != 3)
    {
      goto LABEL_28;
    }

    v4 = [(EKCalendarItem *)self timeZone];
    v5 = MEMORY[0x1E695DEE8];
    if (v4)
    {
      v6 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:v4];
    }

    else
    {
      v7 = [(EKObject *)self eventStore];
      v8 = [v7 timeZone];
      v6 = [v5 CalGregorianCalendarForTimeZone:v8];
    }

    v9 = [(EKCalendarItem *)self startDateForRecurrence];
    v10 = [v6 components:24 fromDate:v9];

    if (v10)
    {
      if ([v3 frequency] == 2 && (v11 = objc_msgSend(v10, "day"), (v11 - 29) <= 2))
      {
        v12 = v11;
        v27 = v6;
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:-1];
        v34[0] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
        [v3 setSetPositions:v14];

        v15 = [MEMORY[0x1E695DF70] array];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v16 = [&unk_1F1B6B1A0 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v29;
LABEL_12:
          v19 = 0;
          while (1)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(&unk_1F1B6B1A0);
            }

            v20 = *(*(&v28 + 1) + 8 * v19);
            if (v12 < [v20 integerValue])
            {
              break;
            }

            [v15 addObject:v20];
            if (v17 == ++v19)
            {
              v17 = [&unk_1F1B6B1A0 countByEnumeratingWithState:&v28 objects:v33 count:16];
              if (v17)
              {
                goto LABEL_12;
              }

              break;
            }
          }
        }

        [v3 setDaysOfTheMonth:v15];

        v21 = 1;
        v6 = v27;
      }

      else
      {
        v21 = 0;
      }

      if ([v3 frequency] == 3 && objc_msgSend(v10, "month") == 2 && objc_msgSend(v10, "day") == 29)
      {
        v22 = [MEMORY[0x1E696AD98] numberWithInteger:-1];
        v32 = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
        [v3 setSetPositions:v23];

        v24 = &unk_1F1B6B1B8;
        v25 = v3;
LABEL_26:
        [v25 setDaysOfTheMonth:v24];
        goto LABEL_27;
      }

      if (v21)
      {
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }
    }

    [v3 setSetPositions:0];
    v25 = v3;
    v24 = 0;
    goto LABEL_26;
  }

LABEL_29:
  v26 = *MEMORY[0x1E69E9840];
}

- (void)setRecurrenceRulesSet:(id)a3
{
  [(EKObject *)self updateMeltedAndCachedMultiRelationObjects:a3 forKey:*MEMORY[0x1E6992648]];

  [(EKCalendarItem *)self pinRecurrenceRuleToEndsOfFreqency];
}

- (void)addRecurrenceRule:(EKRecurrenceRule *)rule
{
  [(EKObject *)self addCachedMeltedObject:rule forMultiValueKey:*MEMORY[0x1E6992648]];

  [(EKCalendarItem *)self pinRecurrenceRuleToEndsOfFreqency];
}

- (BOOL)_hadAttendees
{
  v2 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E69925E8]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setAttendeesRaw:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  [(EKObject *)self updateMeltedAndCachedMultiRelationObjects:v4 forKey:*MEMORY[0x1E6992568]];
}

- (id)filterAttendeesPendingDeletion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 participantStatus] != -1)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)_hasRealAttendees
{
  v13 = *MEMORY[0x1E69E9840];
  [(EKCalendarItem *)self attendeesRaw];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) participantStatus] != -1)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)setAttendees:(id)a3
{
  v5 = a3;
  [(EKCalendarItem *)self setAttendeesRaw:?];
  v4 = [(EKCalendarItem *)self selfAttendee];
  if (v4 && ([v5 containsObject:v4] & 1) == 0)
  {
    [(EKCalendarItem *)self _setSelfAttendee:0];
  }
}

- (void)addAttendee:(id)a3
{
  if (a3)
  {
    [(EKObject *)self addCachedMeltedObject:a3 forMultiValueKey:*MEMORY[0x1E6992568]];
  }
}

- (void)removeAttendee:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [(EKCalendarItem *)self selfAttendee];

    if (v5 == v6)
    {
      [(EKCalendarItem *)self _setSelfAttendee:0];
    }

    [(EKCalendarItem *)self _removeAttendee:v6];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setSelfAttendee:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
    {
      [EKCalendarItem setSelfAttendee:v9];
    }
  }

  else
  {
    v5 = [(EKCalendarItem *)self selfAttendee];
    if ([v4 isEqual:v5])
    {
      if (v5 != v4)
      {
        v6 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
        {
          [EKCalendarItem setSelfAttendee:v6];
        }
      }
    }

    else
    {
      v7 = [(EKCalendarItem *)self attendees];
      v8 = v7;
      if (v4 && ([v7 containsObject:v4] & 1) == 0)
      {
        [(EKCalendarItem *)self addAttendee:v4];
      }

      if (v5 && [v8 containsObject:v5])
      {
        [(EKCalendarItem *)self _removeAttendee:v5];
      }

      [(EKCalendarItem *)self _setSelfAttendee:v4];
    }
  }
}

- (void)_setSelfAttendee:(id)a3
{
  v4 = *MEMORY[0x1E6992650];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKAttendee frozenClass]];
}

- (int)selfParticipantStatusRaw
{
  if (!-[EKObject isNew](self, "isNew") && (-[EKObject isPropertyUnavailable:](self, "isPropertyUnavailable:", *MEMORY[0x1E6992650]) || (-[EKCalendarItem selfAttendee](self, "selfAttendee"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isPropertyUnavailable:*MEMORY[0x1E6992538]], v5, v6)))
  {
    v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992658]];
    v4 = [v3 integerValue];
  }

  else
  {
    v3 = [(EKCalendarItem *)self selfAttendee];
    v4 = EKParticipantStatusToCalAttendeeStatus([v3 participantStatus]);
  }

  v7 = v4;

  return v7;
}

- (int64_t)selfParticipantStatus
{
  v2 = [(EKCalendarItem *)self selfParticipantStatusRaw];

  return CalAttendeeStatusToEKParticipantStatus(v2);
}

- (id)participantMatchingContact:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = [EKParticipantToContactMatcher alloc];
    v12[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

    v7 = [(EKParticipantToContactMatcher *)v5 initWithContacts:v6];
    v8 = [(EKParticipantToContactMatcher *)v7 matchingParticipantsFromItem:self];
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)attendeeMatchingEmailAddress:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(EKCalendarItem *)self attendees];
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
        v10 = [v9 emailAddress];
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

- (void)setOrganizer:(id)a3
{
  v4 = *MEMORY[0x1E6992628];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKOrganizer frozenClass]];
}

- (void)addOrganizerAndSelfAttendeeForNewInvitation
{
  v3 = [(EKCalendarItem *)self calendar];
  [(EKCalendarItem *)self addOrganizerAndSelfAttendeeForNewInvitationInCalendar:v3 force:0];
}

- (void)addOrganizerAndSelfAttendeeForNewInvitationInCalendar:(id)a3 force:(BOOL)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    goto LABEL_2;
  }

  if ([(EKCalendarItem *)self hasAttendees]&& (![(EKCalendarItem *)self hasAttendees]|| ![(EKCalendarItem *)self _hadAttendees]))
  {
    v11 = [(EKCalendarItem *)self organizer];
    if (!v11 || (v12 = v11, -[EKCalendarItem organizer](self, "organizer"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 scheduleAgent], v13, v12, v14))
    {
LABEL_2:
      v7 = [(EKCalendarItem *)self organizer];
      if (!v7)
      {
        v7 = [v6 ownerIdentityOrganizer];
        [v7 setCurrentUser:1];
        if (v7)
        {
          v8 = [v6 source];
          v9 = [v8 sourceType];

          if (v9 > 3)
          {
            v10 = 0;
          }

          else
          {
            v10 = qword_1A81C3B78[v9];
          }

          [v7 setScheduleAgent:v10];
          [(EKCalendarItem *)self setOrganizer:v7];
        }
      }

      v15 = [v6 source];
      if ([v15 usesSelfAttendee])
      {
        v16 = [(EKCalendarItem *)self selfAttendee];

        if (!v16)
        {
          v17 = [(EKCalendarItem *)self attendeesRaw];
          v18 = [v7 name];
          v19 = [v7 emailAddress];
          v20 = [v7 phoneNumber];
          v21 = [v7 URL];
          v22 = [EKAttendee attendeeWithName:v18 emailAddress:v19 phoneNumber:v20 url:v21];

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v23 = v17;
          v24 = [v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v33;
            while (2)
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v33 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v32 + 1) + 8 * i);
                if ([v28 isEqualToParticipant:{v22, v32}])
                {
                  v29 = v28;

                  v22 = v29;
                  goto LABEL_27;
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }

LABEL_27:

          [(EKCalendarItem *)self setSelfAttendee:v22];
          v30 = [(EKCalendarItem *)self selfAttendee];
          [v30 setParticipantStatus:2];
        }
      }

      else
      {
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)removeLastExtraneousOrganizerAndSelfAttendee
{
  v6 = [(EKCalendarItem *)self attendees];
  if ([v6 count] == 1)
  {
    v3 = [(EKCalendarItem *)self selfAttendee];
    v4 = [(EKCalendarItem *)self organizer];
    v5 = [v3 isEqualToParticipant:v4];

    if (v5)
    {
      [(EKCalendarItem *)self setSelfAttendee:0];

      [(EKCalendarItem *)self setOrganizer:0];
    }
  }

  else
  {
  }
}

- (id)sharedItemCreatedByDisplayName
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992670]];
  if (!v3)
  {
    v4 = [(EKCalendarItem *)self sharedItemCreatedByFirstName];
    v5 = [(EKCalendarItem *)self sharedItemCreatedByLastName];
    v3 = DisplayNameStringForIdentityWithProperties();
  }

  return v3;
}

- (id)sharedItemCreatedByAddress
{
  v2 = [(EKCalendarItem *)self sharedItemCreatedByAddressString];
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

- (void)setSharedItemCreatedByAddress:(id)a3
{
  v4 = [a3 absoluteString];
  [(EKCalendarItem *)self setSharedItemCreatedByAddressString:v4];
}

- (id)sharedItemCreatedTimeZone
{
  v2 = [(EKCalendarItem *)self sharedItemCreatedTimeZoneName];
  v3 = [EKCalendarItem timeZoneFromTimeZoneName:v2 withFloatingTimeZone:0];

  return v3;
}

- (void)setSharedItemCreatedTimeZone:(id)a3
{
  v4 = [EKCalendarItem timeZoneNameFromTimeZone:a3];
  [(EKCalendarItem *)self setSharedItemCreatedTimeZoneName:v4];
}

- (id)sharedItemModifiedByDisplayName
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69926A0]];
  if (!v3)
  {
    v4 = [(EKCalendarItem *)self sharedItemModifiedByFirstName];
    v5 = [(EKCalendarItem *)self sharedItemModifiedByLastName];
    v3 = DisplayNameStringForIdentityWithProperties();
  }

  return v3;
}

- (id)sharedItemModifiedByAddress
{
  v2 = [(EKCalendarItem *)self sharedItemModifiedByAddressString];
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

- (void)setSharedItemModifiedByAddress:(id)a3
{
  v4 = [a3 absoluteString];
  [(EKCalendarItem *)self setSharedItemModifiedByAddressString:v4];
}

- (id)sharedItemModifiedTimeZone
{
  v2 = [(EKCalendarItem *)self sharedItemModifiedTimeZoneName];
  v3 = [EKCalendarItem timeZoneFromTimeZoneName:v2 withFloatingTimeZone:0];

  return v3;
}

- (void)setSharedItemModifiedTimeZone:(id)a3
{
  v4 = [EKCalendarItem timeZoneNameFromTimeZone:a3];
  [(EKCalendarItem *)self setSharedItemModifiedTimeZoneName:v4];
}

- (NSArray)attachments
{
  v2 = [(EKCalendarItem *)self attachmentsSet];
  if ([v2 count])
  {
    v3 = [v2 allObjects];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAttachments:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  [(EKCalendarItem *)self setAttachmentsSet:v4];
}

- (BOOL)canMoveToCalendar:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(EKCalendarItem *)self calendar];
  LOBYTE(a4) = [(EKCalendarItem *)self canMoveToCalendar:v6 fromCalendar:v7 error:a4];

  return a4;
}

- (BOOL)canMoveToCalendar:(id)a3 fromCalendar:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  v10 = [(EKObject *)self eventStore];
  if ([v10 eventAccessLevel] == 1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [(EKObject *)self eventStore];
      v13 = [(EKObject *)self CADObjectID];
      v14 = [v12 cachedConstraintsForEventOrSourceWithCADObjectID:v13];

      if (v14)
      {
        v15 = v14;
        v16 = v15;
        if (!v9)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
  }

  v15 = [v9 constraints];
  v16 = 0;
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (([v9 allowsContentModifications] & 1) == 0 && (objc_msgSend(v9, "isMutableSuggestionsCalendar") & 1) == 0 && (objc_msgSend(v9, "isMutableNaturalLanguageSuggestionsCalendar") & 1) == 0)
  {
LABEL_20:
    if (a5)
    {
      v25 = 6;
      goto LABEL_22;
    }

LABEL_26:
    v24 = 0;
    goto LABEL_27;
  }

LABEL_13:
  if (([v8 allowsContentModifications] & 1) == 0)
  {
    goto LABEL_20;
  }

  v17 = [(EKCalendarItem *)self organizer];
  if (!v17 || (v18 = v17, v19 = [(EKCalendarItem *)self hasAttendees], v18, !v19))
  {
    v24 = 1;
    goto LABEL_27;
  }

  v20 = [v8 source];
  v21 = [v9 source];
  v22 = [v20 isEqual:v21];

  if ((v22 & 1) == 0)
  {
    if (a5)
    {
      v25 = 43;
      goto LABEL_22;
    }

    goto LABEL_26;
  }

  v23 = [v15 requiresOutgoingInvitationsInDefaultCalendar];
  v24 = v23 ^ 1;
  if (a5 && v23)
  {
    v25 = 12;
LABEL_22:
    [MEMORY[0x1E696ABC0] errorWithEKErrorCode:v25];
    *a5 = v24 = 0;
  }

LABEL_27:

  return v24;
}

- (id)propertiesThatCanBeModifiedOnReadOnlyCalendars
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = [(EKCalendarItem *)self calendar];
  v3 = [v2 type];

  if (v3 == 4)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = *MEMORY[0x1E6992590];
    v11[0] = *MEMORY[0x1E6992558];
    v11[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v7 = [v4 setWithArray:v6];
  }

  v8 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69926F0]];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)validate:(id *)a3
{
  v5 = [(EKObject *)self changeSet];
  v6 = [v5 hasUnsavedChangeForKey:*MEMORY[0x1E6992598]];

  if (!v6)
  {
    v31.receiver = self;
    v31.super_class = EKCalendarItem;
    LODWORD(v10) = [(EKObject *)&v31 validate:a3];
    if (!v10)
    {
      return v10;
    }

    v11 = [(EKCalendarItem *)self calendar];

    if (!v11)
    {
      if (a3)
      {
        v7 = MEMORY[0x1E696ABC0];
        v8 = 1;
        goto LABEL_4;
      }

      goto LABEL_37;
    }

    v12 = [(EKCalendarItem *)self calendar];
    if (([v12 allowsContentModifications] & 1) == 0)
    {
      v13 = [(EKCalendarItem *)self calendar];
      if (([v13 isMutableSuggestionsCalendar] & 1) == 0)
      {
        v14 = [(EKCalendarItem *)self calendar];
        if (([v14 isMutableNaturalLanguageSuggestionsCalendar] & 1) == 0)
        {
          v15 = [(EKObject *)self eventStore];
          if (([v15 skipModificationValidation] & 1) == 0)
          {
            v28 = [(EKCalendarItem *)self propertiesThatCanBeModifiedOnReadOnlyCalendars];
            v29 = [(EKObject *)self _areOnlyChangedKeys:v28];

            if (!v29)
            {
              if (a3)
              {
                v7 = MEMORY[0x1E696ABC0];
                v8 = 6;
                goto LABEL_4;
              }

              goto LABEL_37;
            }

            goto LABEL_15;
          }
        }
      }
    }

LABEL_15:
    v16 = *MEMORY[0x1E6992570];
    if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992570]]&& ![(EKObject *)self isNew])
    {
      v17 = [(EKObject *)self committedValueForKey:v16];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [EKCalendarItem validate:];
      }

      v18 = [(EKCalendarItem *)self calendar];
      v19 = [(EKCalendarItem *)self canMoveToCalendar:v18 fromCalendar:v17 error:a3];

      if (!v19)
      {
        goto LABEL_37;
      }
    }

    v20 = [(EKCalendarItem *)self constraints];
    if ([v20 supportsStructuredLocations])
    {
      goto LABEL_23;
    }

    v21 = [(EKCalendarItem *)self calendar];
    if ([v21 isSuggestedEventCalendar])
    {

LABEL_23:
LABEL_24:
      LOBYTE(v10) = 1;
      return v10;
    }

    v22 = [(EKCalendarItem *)self calendar];
    v23 = [v22 isNaturalLanguageSuggestedEventCalendar];

    if (v23)
    {
      goto LABEL_24;
    }

    if (!-[EKObject _hasChangesForKey:](self, "_hasChangesForKey:", *MEMORY[0x1E69926D8]) || (-[EKCalendarItem structuredLocation](self, "structuredLocation"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 isStructured], v24, !v25))
    {
      if (![(EKObject *)self _hasChangesForKey:*MEMORY[0x1E69926F8]])
      {
        goto LABEL_24;
      }

      v26 = [(EKCalendarItem *)self travelStartLocation];
      v27 = [v26 isStructured];

      if (!v27)
      {
        goto LABEL_24;
      }
    }

    if (a3)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = 19;
      goto LABEL_4;
    }

LABEL_37:
    LOBYTE(v10) = 0;
    return v10;
  }

  if (!a3)
  {
    goto LABEL_37;
  }

  v7 = MEMORY[0x1E696ABC0];
  v8 = 67;
LABEL_4:
  v9 = [v7 errorWithEKErrorCode:v8];
  v10 = v9;
  LOBYTE(v10) = 0;
  *a3 = v9;
  return v10;
}

+ (BOOL)_shouldDeleteAndAddForMoveFromCalendar:(id)a3 toCalendar:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 source];
  v8 = [v6 source];

  if ([v7 isEqual:v8])
  {
    v9 = [v5 constraints];
    v10 = [v9 shouldUseDeleteAndAddInsteadOfMoveBetweenCalendars];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)hasCalendarChangeThatRequiresDeleteAndAdd
{
  v3 = *MEMORY[0x1E6992570];
  v4 = [(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992570]];
  if (v4)
  {
    v5 = [(EKCalendarItem *)self calendar];
    v6 = [(EKObject *)self _previousValueForKey:v3];
    v7 = [(EKObject *)self eventStore];
    v8 = [v6 meltedObjectInStore:v7];

    v9 = [objc_opt_class() _shouldDeleteAndAddForMoveFromCalendar:v8 toCalendar:v5];
    LOBYTE(v4) = v9;
  }

  return v4;
}

- (void)_moveToCalendar:(id)a3 forSavingItem:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EKCalendarItem *)self originalItem];
  v9 = v8;
  if (!v8)
  {
    v10 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E6992570]];
    v11 = [(EKObject *)self eventStore];
    v12 = [v10 meltedObjectInStore:v11];

    if ([v12 isEqual:v6])
    {
LABEL_27:

      goto LABEL_28;
    }

    v39 = v12;
    if ([objc_opt_class() _shouldDeleteAndAddForMoveFromCalendar:v12 toCalendar:v6])
    {
      if (_moveToCalendar_forSavingItem__onceToken != -1)
      {
        [EKCalendarItem _moveToCalendar:forSavingItem:];
      }

      v13 = [(EKCalendarItem *)self detachedItems];
      v14 = [v13 count];

      v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14 + 1];
      v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v14];
      v17 = [(EKObject *)v7 changeSet];
      v18 = [v17 copy];
      [v18 removeAllChangesExceptRemovals];
      v19 = [(EKObject *)v7 copyMeltedObjectCache];
      v38 = v18;
      [(EKObject *)v7 setChangeSet:v18];
      [(EKObject *)v7 _resetAfterUpdatingChangeSetOrBackingObject];
      [(EKCalendarItem *)v7 setCalendar:v6];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __48__EKCalendarItem__moveToCalendar_forSavingItem___block_invoke_2;
      v50[3] = &unk_1E77FDD50;
      v20 = v15;
      v51 = v20;
      v52 = self;
      v21 = v7;
      v53 = v21;
      v22 = v16;
      v54 = v22;
      [(EKCalendarItem *)self _recursivelyPerformBlockOnSelfAndDetachedItems:v50 forSavingItem:v21];
      [(EKObject *)v21 updatePersistentObject];
      [(EKObject *)v21 setChangeSet:v17];
      [(EKObject *)v21 _resetAfterUpdatingChangeSetOrBackingObject];
      [(EKObject *)v21 augmentMeltedObjectCache:v19];
      [(EKObject *)self setCachedMeltedObjects:v22 forMultiValueKey:*MEMORY[0x1E6992598]];
      if (v21 != self)
      {
        [(EKCalendarItem *)v21 setOriginalItem:self];
      }

      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __48__EKCalendarItem__moveToCalendar_forSavingItem___block_invoke_3;
      v49[3] = &unk_1E77FDD78;
      v49[4] = self;
      [(EKCalendarItem *)self _recursivelyPerformBlockOnSelfAndDetachedItems:v49 forSavingItem:v21];
    }

    else
    {
      v20 = 0;
    }

    [(EKCalendarItem *)self _setCalendarRecursively:v6 forSavingItem:v7];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v23 = v20;
    v24 = [v23 countByEnumeratingWithState:&v45 objects:v55 count:16];
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
          v29 = [(EKObject *)self eventStore];
          [v29 _deleteObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v25);
    }

    if (self != v7)
    {
      v30 = [(EKObject *)self eventStore];
      [v30 _addObjectToPendingCommits:self];
    }

    v31 = [(EKObject *)self eventStore];
    v12 = v39;
    if ([v31 eventAccessLevel] == 1)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v34 = 0;
        goto LABEL_26;
      }

      v31 = [(EKObject *)self eventStore];
      v33 = [(EKObject *)self CADObjectID];
      v34 = [v31 cachedConstraintsForEventOrSourceWithCADObjectID:v33];
    }

    else
    {
      v34 = 0;
    }

LABEL_26:
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __48__EKCalendarItem__moveToCalendar_forSavingItem___block_invoke_4;
    v40[3] = &unk_1E77FDD50;
    v41 = v39;
    v42 = v6;
    v43 = v34;
    v35 = v7;
    v44 = v35;
    v36 = v34;
    [(EKCalendarItem *)self _recursivelyPerformBlockOnSelfAndDetachedItems:v40 forSavingItem:v35];
    [(EKCalendarItem *)self _updatePersistentObjectOfSelfAndDetachedItemsExceptForSavingItem:v35];

    goto LABEL_27;
  }

  [v8 _moveToCalendar:v6 forSavingItem:v7];
LABEL_28:

  v37 = *MEMORY[0x1E69E9840];
}

void __48__EKCalendarItem__moveToCalendar_forSavingItem___block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69926F0];
  v7[0] = *MEMORY[0x1E6992918];
  v7[1] = v1;
  v2 = *MEMORY[0x1E6992650];
  v7[2] = *MEMORY[0x1E6992598];
  v7[3] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v4 = [v0 setWithArray:v3];
  v5 = _moveToCalendar_forSavingItem__propertiesToSkip;
  _moveToCalendar_forSavingItem__propertiesToSkip = v4;

  v6 = *MEMORY[0x1E69E9840];
}

void __48__EKCalendarItem__moveToCalendar_forSavingItem___block_invoke_2(id *a1, void *a2)
{
  v14 = a2;
  v3 = [v14 persistentObject];
  [a1[4] addObject:v3];
  v4 = [v14 calendarItemIdentifier];
  v5 = [v14 selfAttendee];
  [v14 rebaseSkippingRelationProperties:_moveToCalendar_forSavingItem__propertiesToSkip];
  [v14 setCalendarItemIdentifier:v4];
  v6 = [v14 persistentObject];
  [v6 addCoCommitObject:v3];

  [v14 insertPersistentObjectIfNeeded];
  if (v5)
  {
    v7 = [v14 changeSet];
    v8 = [v5 persistentObject];
    [v7 forceChangeValue:v8 forKey:*MEMORY[0x1E6992650]];
  }

  if (a1[5] != v14)
  {
    v9 = [v14 frozenObject];
    [a1[5] addMultiChangedObjectValue:v9 forKey:*MEMORY[0x1E6992598]];
    v10 = [a1[5] persistentObject];
    [v10 addCoCommitObject:v9];

    v11 = a1[7];
    if (a1[6] == v14)
    {
      v12 = [a1[5] eventStore];
      v13 = [v9 meltedObjectInStore:v12];
      [v11 addObject:v13];
    }

    else
    {
      [a1[7] addObject:?];
    }
  }
}

void __48__EKCalendarItem__moveToCalendar_forSavingItem___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _generateNewUniqueID];
  [v3 setUniqueID:v4];
}

- (void)_updatePersistentObjectOfSelfAndDetachedItemsExceptForSavingItem:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__EKCalendarItem__updatePersistentObjectOfSelfAndDetachedItemsExceptForSavingItem___block_invoke;
  v6[3] = &unk_1E77FDD78;
  v7 = v4;
  v5 = v4;
  [(EKCalendarItem *)self _recursivelyPerformBlockOnSelfAndDetachedItems:v6 forSavingItem:v5];
}

void __83__EKCalendarItem__updatePersistentObjectOfSelfAndDetachedItemsExceptForSavingItem___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != a2)
  {
    v2 = MEMORY[0x1E695DFD8];
    v8 = *MEMORY[0x1E6992598];
    v3 = MEMORY[0x1E695DEC8];
    v4 = a2;
    v5 = [v3 arrayWithObjects:&v8 count:1];
    v6 = [v2 setWithArray:{v5, v8, v9}];
    [v4 updatePersistentObjectSkippingProperties:v6];

    [v4 insertPersistentObjectIfNeeded];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_setCalendarRecursively:(id)a3 forSavingItem:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__EKCalendarItem__setCalendarRecursively_forSavingItem___block_invoke;
  v8[3] = &unk_1E77FDD78;
  v9 = v6;
  v7 = v6;
  [(EKCalendarItem *)self _recursivelyPerformBlockOnSelfAndDetachedItems:v8 forSavingItem:a4];
}

void __56__EKCalendarItem__setCalendarRecursively_forSavingItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setCalendar:v2];
  [v3 _resetFieldsAfterMovingToNewCalendar];
}

- (void)_recursivelyPerformBlockOnSelfAndDetachedItems:(id)a3 forSavingItem:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = v8;
  if ([(EKObject *)v8 isEqual:v7])
  {
    v9 = v7;
  }

  v10 = [(EKCalendarItem *)v8 detachedItems];
  v6[2](v6, v9);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * v15++) _recursivelyPerformBlockOnSelfAndDetachedItems:v6 forSavingItem:{v7, v17}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setOriginalItem:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = objc_opt_class();
    if (v4 != objc_opt_class())
    {
      [EKCalendarItem setOriginalItem:];
    }
  }

  -[EKObject updateMeltedAndCachedSingleRelationObject:forKey:frozenClass:](self, "updateMeltedAndCachedSingleRelationObject:forKey:frozenClass:", v5, *MEMORY[0x1E6992630], [objc_opt_class() frozenClass]);
}

- (void)_deleteSelfAndDetached
{
  v3 = [(EKObject *)self persistentObject];
  [(EKCalendarItem *)self _deletePersistentItemAndDetachedItems:v3 forSavingItem:self];
}

- (id)exceptionDates
{
  v2 = [(EKCalendarItem *)self ekExceptionDates];
  v3 = [v2 valueForKey:@"date"];

  return v3;
}

- (id)exceptionDatesAdjustedForFloatingEvents
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(EKCalendarItem *)self isFloating]&& ![(EKCalendarItem *)self isAllDay])
  {
    v4 = [(EKCalendarItem *)self exceptionDates];
    v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [(EKCalendarItem *)self timeZone];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v14 = [(EKObject *)self eventStore];
            v13 = [v14 timeZone];
          }

          v15 = [v10 dateInTimeZone:v13 fromTimeZone:0];
          [v3 addObject:v15];
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v3 = [(EKCalendarItem *)self exceptionDates];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setExceptionDates:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
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
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [EKExceptionDate alloc];
        v13 = [(EKExceptionDate *)v12 initWithDate:v11, v15];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(EKCalendarItem *)self setEkExceptionDates:v5];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_addExceptionDate:(id)a3
{
  v4 = a3;
  v5 = [[EKExceptionDate alloc] initWithDate:v4];

  [(EKObject *)self addCachedMeltedObject:v5 forMultiValueKey:*MEMORY[0x1E69925A0]];
}

- (void)_removeExceptionDate:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(EKCalendarItem *)self ekExceptionDates];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      v11 = [v10 date];
      v12 = [v11 isEqualToDate:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v13 = v10;

    if (!v13)
    {
      goto LABEL_13;
    }

    [(EKObject *)self removeCachedMeltedObject:v13 forMultiValueKey:*MEMORY[0x1E69925A0]];
    v5 = v13;
  }

LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_deletePersistentItemAndDetachedItems:(id)a3 forSavingItem:(id)a4
{
  v6 = a3;
  [(EKCalendarItem *)self _recursivelyPerformBlockOnSelfAndDetachedItems:&__block_literal_global_130 forSavingItem:a4];
  v7 = [(EKObject *)self eventStore];
  [v7 _deleteObject:v6];
}

- (void)_updateModifiedAlarmByAcknowledging
{
  v3 = [(EKCalendarItem *)self isOnlyAlarmAcknowledgedPropertyDirty];
  v4 = [(EKCalendarItem *)self modifiedProperties];
  if (v3)
  {
    v5 = v4 | 0x1000;
  }

  else
  {
    if ((v4 & 0x1000) == 0)
    {
      return;
    }

    v5 = [(EKCalendarItem *)self modifiedProperties]& 0xFFFFEFFFLL;
  }

  [(EKCalendarItem *)self setModifiedProperties:v5];
}

- (void)_willSave
{
  v3 = [(EKCalendarItem *)self uniqueID];

  if (!v3)
  {
    v4 = [(EKCalendarItem *)self _generateNewUniqueID];
    [(EKCalendarItem *)self setUniqueID:v4];
  }
}

+ (id)timeZoneNameFromTimeZone:(id)a3
{
  if (a3)
  {
    v4 = [a3 name];
  }

  else
  {
    v4 = @"_float";
  }

  return v4;
}

+ (id)timeZoneFromTimeZoneName:(id)a3 withFloatingTimeZone:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && ![v5 isEqualToString:@"_float"])
  {
    v7 = EKCachedTimeZoneWithName();
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

+ (BOOL)canonicalizedEqualityTestValue1:(id)a3 value2:(id)a4 key:(id)a5 object1:(id)a6 object2:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v14 isEqualToString:*MEMORY[0x1E6992608]])
  {
    v17 = 1;
  }

  else
  {
    v19.receiver = a1;
    v19.super_class = &OBJC_METACLASS___EKCalendarItem;
    v17 = objc_msgSendSuper2(&v19, sel_canonicalizedEqualityTestValue1_value2_key_object1_object2_, v12, v13, v14, v15, v16);
  }

  return v17;
}

- (void)updateWithVCSEntity:(id)a3 inCalendar:(id)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v69 = a3;
  v6 = a4;
  v7 = [(EKCalendarItem *)self timeZone];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(EKObject *)self eventStore];
    v9 = [v10 timeZone];
  }

  v67 = v6;
  [(EKCalendarItem *)self setCalendar:v6];
  v11 = [v69 propertyForName:@"DESCRIPTION"];
  v12 = [v11 singleValue];
  v13 = [v12 value];
  [(EKCalendarItem *)self setNotes:v13];

  v14 = [v69 propertyForName:@"SEQUENCE"];
  v15 = [v14 singleValue];
  v16 = [v15 value];
  -[EKCalendarItem setSequenceNumber:](self, "setSequenceNumber:", [v16 intValue]);

  v17 = [v69 propertyForName:@"CREATED"];
  v18 = [v17 singleValue];
  v19 = [v18 value];

  v66 = v19;
  v72 = v9;
  v20 = [v19 nsDateWithLocalTimeZone:v9];
  [(EKCalendarItem *)self setCreationDate:v20];

  v21 = [v69 propertyForName:@"SUMMARY"];
  v22 = [v21 singleValue];
  v23 = [v22 value];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &stru_1F1B49D68;
  }

  [(EKCalendarItem *)self setTitle:v25];

  v26 = [v69 propertyForName:@"URL"];
  v27 = [v26 singleValue];
  v28 = [v27 value];
  v68 = self;
  [(EKCalendarItem *)self setURL:v28];

  v29 = MEMORY[0x1E695DF70];
  v30 = [v69 alarms];
  v71 = [v29 arrayWithCapacity:{objc_msgSend(v30, "count")}];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v31 = [v69 alarms];
  v32 = [v31 countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v78;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v78 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v77 + 1) + 8 * i);
        v37 = [v36 triggerType];
        if (v37 == 1)
        {
          [v36 triggerDuration];
          v40 = [EKAlarm alarmWithRelativeOffset:?];
        }

        else if (v37)
        {
          v40 = 0;
        }

        else
        {
          v38 = [v36 triggerDate];
          v39 = [v38 nsDateWithLocalTimeZone:v9];

          v40 = [EKAlarm alarmWithAbsoluteDate:v39];
        }

        v41 = [v36 alarmType];
        if (v41 <= 3)
        {
          [v40 setType:qword_1A81C3B98[v41]];
        }

        if ([v40 type] != 3 && objc_msgSend(v40, "type") != 2)
        {
          [v71 addObject:v40];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v77 objects:v82 count:16];
    }

    while (v33);
  }

  [(EKCalendarItem *)v68 setAlarms:v71];
  v42 = [v69 propertyForName:@"ATTACH"];
  v43 = [v42 values];

  v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v43, "count")}];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v45 = v43;
  v46 = [v45 countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = 1;
    v49 = 0x1E77FB000uLL;
    v50 = *v74;
    do
    {
      v51 = 0;
      v70 = v47;
      do
      {
        if (*v74 != v50)
        {
          objc_enumerationMutation(v45);
        }

        v52 = *(*(&v73 + 1) + 8 * v51);
        v53 = objc_alloc_init(*(v49 + 1984));
        v54 = [v52 value];
        [v53 setURL:v54];

        v55 = [v53 fileNameRaw];
        v56 = [v55 length];

        if (!v56)
        {
          if (v48 == 1)
          {
            v57 = [MEMORY[0x1E696AAE8] mainBundle];
            v58 = [v57 localizedStringForKey:@"Attachment" value:&stru_1F1B49D68 table:0];
          }

          else
          {
            v59 = MEMORY[0x1E696AEC0];
            v57 = [MEMORY[0x1E696AAE8] mainBundle];
            [v57 localizedStringForKey:@"Attachment %lu" value:&stru_1F1B49D68 table:0];
            v60 = v50;
            v61 = v44;
            v62 = v49;
            v64 = v63 = v45;
            v58 = [v59 localizedStringWithFormat:v64, v48];

            v45 = v63;
            v49 = v62;
            v44 = v61;
            v50 = v60;
            v47 = v70;
          }

          [v53 setFileNameRaw:v58];
          ++v48;
        }

        [v44 addObject:v53];

        ++v51;
      }

      while (v47 != v51);
      v47 = [v45 countByEnumeratingWithState:&v73 objects:v81 count:16];
    }

    while (v47);
  }

  [(EKCalendarItem *)v68 setAttachments:v44];
  v65 = *MEMORY[0x1E69E9840];
}

+ (id)EKObjectChangeSummarizer_singleValueDiffKeys
{
  if (EKObjectChangeSummarizer_singleValueDiffKeys_onceToken_142 != -1)
  {
    +[EKCalendarItem(EKObjectChangeSummarizer) EKObjectChangeSummarizer_singleValueDiffKeys];
  }

  v3 = EKObjectChangeSummarizer_singleValueDiffKeys_diffKeys_141;

  return v3;
}

void __88__EKCalendarItem_EKObjectChangeSummarizer__EKObjectChangeSummarizer_singleValueDiffKeys__block_invoke()
{
  v9[11] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992708];
  v8[0] = *MEMORY[0x1E6992570];
  v8[1] = v0;
  v9[0] = @"EKChangedCalendar";
  v9[1] = @"EKChangedTitle";
  v1 = *MEMORY[0x1E6992620];
  v8[2] = *MEMORY[0x1E69926D8];
  v8[3] = v1;
  v9[2] = @"EKChangedLocation";
  v9[3] = @"EKChangedNotes";
  v2 = *MEMORY[0x1E69926D0];
  v8[4] = *MEMORY[0x1E6992600];
  v8[5] = v2;
  v9[4] = @"EKChangedAllDay";
  v9[5] = @"EKChangedTimeZone";
  v3 = *MEMORY[0x1E6992548];
  v8[6] = *MEMORY[0x1E69926C8];
  v8[7] = v3;
  v9[6] = @"EKChangedStartDate";
  v9[7] = @"EKChangedURL";
  v4 = *MEMORY[0x1E6992660];
  v8[8] = *MEMORY[0x1E6992640];
  v8[9] = v4;
  v9[8] = @"EKChangedPriority";
  v9[9] = @"EKChangedSequence";
  v8[10] = *MEMORY[0x1E69925D8];
  v9[10] = @"EKChangedFlags";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:11];
  v6 = EKObjectChangeSummarizer_singleValueDiffKeys_diffKeys_141;
  EKObjectChangeSummarizer_singleValueDiffKeys_diffKeys_141 = v5;

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)EKObjectChangeSummarizer_multiValueDiffKeys
{
  if (EKObjectChangeSummarizer_multiValueDiffKeys_onceToken_146 != -1)
  {
    +[EKCalendarItem(EKObjectChangeSummarizer) EKObjectChangeSummarizer_multiValueDiffKeys];
  }

  v3 = EKObjectChangeSummarizer_multiValueDiffKeys_diffKeys_145;

  return v3;
}

void __87__EKCalendarItem_EKObjectChangeSummarizer__EKObjectChangeSummarizer_multiValueDiffKeys__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E6992558];
  v7[0] = @"add";
  v7[1] = @"remove";
  v8[0] = @"EKChangedAlarmsAdded";
  v8[1] = @"EKChangedAlarmsRemoved";
  v7[2] = @"modify";
  v8[2] = @"EKChangedAlarmsModified";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v9[1] = *MEMORY[0x1E6992648];
  v10[0] = v0;
  v5[0] = @"add";
  v5[1] = @"remove";
  v6[0] = @"EKChangedRecurrenceRule";
  v6[1] = @"EKChangedRecurrenceRule";
  v5[2] = @"modify";
  v6[2] = @"EKChangedRecurrenceRule";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v10[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v3 = EKObjectChangeSummarizer_multiValueDiffKeys_diffKeys_145;
  EKObjectChangeSummarizer_multiValueDiffKeys_diffKeys_145 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (void)snoozeAlarm:(id)a3 withTimeIntervalFromNow:(double)a4 pinsTriggerToStartDate:(BOOL)a5
{
  OUTLINED_FUNCTION_0_6();
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (id)_generateNewUniqueID
{
  OUTLINED_FUNCTION_0_6();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)snoozeAlarm:withLocation:proximity:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"EKCalendarItem.m" lineNumber:1151 description:@"Can't snooze an alarm with location but no proximity."];
}

- (void)selfAttendee
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = 138543362;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_error_impl(&dword_1A805E000, v1, OS_LOG_TYPE_ERROR, "selfAttendee is not an attendee; it's a %{public}@. Ignoring invalid selfAttendee and pretending there is no self attendee.", &v4, 0xCu);

  v3 = *MEMORY[0x1E69E9840];
}

- (void)setSelfAttendee:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = 138543362;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_fault_impl(&dword_1A805E000, v1, OS_LOG_TYPE_FAULT, "Ignoring attempt to set the selfAttendee to something that's not an attendee (%{public}@)", &v4, 0xCu);

  v3 = *MEMORY[0x1E69E9840];
}

- (void)validate:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"EKCalendarItem.m" lineNumber:1968 description:@"Committed Value class is incorrect!"];
}

- (void)setOriginalItem:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"EKCalendarItem.m" lineNumber:2227 description:@"Original item class must match our class"];
}

@end