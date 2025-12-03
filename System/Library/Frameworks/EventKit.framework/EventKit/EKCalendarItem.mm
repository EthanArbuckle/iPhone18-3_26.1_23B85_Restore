@interface EKCalendarItem
+ (BOOL)_shouldDeleteAndAddForMoveFromCalendar:(id)calendar toCalendar:(id)toCalendar;
+ (BOOL)canonicalizedEqualityTestValue1:(id)value1 value2:(id)value2 key:(id)key object1:(id)object1 object2:(id)object2;
+ (id)EKObjectChangeSummarizer_multiValueDiffKeys;
+ (id)EKObjectChangeSummarizer_singleValueDiffKeys;
+ (id)adjustDateFromUTC:(id)c allDay:(BOOL)day timeZone:(id)zone;
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
+ (id)preferredLocationWithClientLocation:(id)location structuredLocation:(id)structuredLocation;
+ (id)timeZoneFromTimeZoneName:(id)name withFloatingTimeZone:(id)zone;
+ (id)timeZoneNameFromTimeZone:(id)zone;
- (BOOL)_excludeAlarmDueToConnectionTrigger:(id)trigger;
- (BOOL)_hadAttendees;
- (BOOL)_hadRecurrenceRules;
- (BOOL)_hasRealAttendees;
- (BOOL)_isInSharedToMeCalendarWithNoSharingScheduling;
- (BOOL)_validateDeletable:(id *)deletable;
- (BOOL)_validateDeletableBySharedCalendarShareeWithError:(id *)error;
- (BOOL)_validateDeletableDueToAccessConsent:(id *)consent;
- (BOOL)_validateDeletableInCalendarWithError:(id *)error;
- (BOOL)allowsAlarmModifications;
- (BOOL)allowsCalendarModifications;
- (BOOL)canMoveToCalendar:(id)calendar error:(id *)error;
- (BOOL)canMoveToCalendar:(id)calendar fromCalendar:(id)fromCalendar error:(id *)error;
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
- (BOOL)validate:(id *)validate;
- (NSArray)alarms;
- (NSArray)attachments;
- (NSArray)attendees;
- (NSArray)recurrenceRules;
- (NSString)calendarItemExternalIdentifier;
- (NSString)location;
- (NSURL)URL;
- (id)_dataFromStructuredDataDictionary:(id)dictionary local:(BOOL)local;
- (id)_generateNewUniqueID;
- (id)_selfAttendee;
- (id)_structuredDataDictionaryFromData:(id)data local:(BOOL)local;
- (id)action;
- (id)adjustDateFromUTC:(id)c;
- (id)allAlarms;
- (id)allAlarmsSet;
- (id)attendeeMatchingEmailAddress:(id)address;
- (id)attendeesRaw;
- (id)description;
- (id)endTimeZone;
- (id)exceptionDates;
- (id)exceptionDatesAdjustedForFloatingEvents;
- (id)exportToICSWithOptions:(unint64_t)options;
- (id)filterAttendeesPendingDeletion:(id)deletion;
- (id)findOriginalAlarmStartingWith:(id)with;
- (id)localUID;
- (id)participantMatchingContact:(id)contact;
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
- (int64_t)indexForAlarm:(id)alarm;
- (int64_t)selfParticipantStatus;
- (unint64_t)actionsState;
- (unint64_t)priority;
- (unsigned)modifiedProperties;
- (void)_addExceptionDate:(id)date;
- (void)_deletePersistentItemAndDetachedItems:(id)items forSavingItem:(id)item;
- (void)_deleteSelfAndDetached;
- (void)_moveToCalendar:(id)calendar forSavingItem:(id)item;
- (void)_recursivelyPerformBlockOnSelfAndDetachedItems:(id)items forSavingItem:(id)item;
- (void)_removeExceptionDate:(id)date;
- (void)_setCalendarRecursively:(id)recursively forSavingItem:(id)item;
- (void)_setSelfAttendee:(id)attendee;
- (void)_updateModifiedAlarmByAcknowledging;
- (void)_updatePersistentObjectOfSelfAndDetachedItemsExceptForSavingItem:(id)item;
- (void)_willSave;
- (void)addAlarm:(EKAlarm *)alarm;
- (void)addAttendee:(id)attendee;
- (void)addOrganizerAndSelfAttendeeForNewInvitation;
- (void)addOrganizerAndSelfAttendeeForNewInvitationInCalendar:(id)calendar force:(BOOL)force;
- (void)addRecurrenceRule:(EKRecurrenceRule *)rule;
- (void)pinRecurrenceRuleToEndsOfFreqency;
- (void)removeAcknowledgedSnoozedAlarms;
- (void)removeAlarm:(EKAlarm *)alarm;
- (void)removeAllSnoozedAlarms;
- (void)removeAttendee:(id)attendee;
- (void)removeLastExtraneousOrganizerAndSelfAttendee;
- (void)selfAttendee;
- (void)setAction:(id)action;
- (void)setAlarms:(NSArray *)alarms;
- (void)setAllAlarms:(id)alarms;
- (void)setAllAlarmsSet:(id)set;
- (void)setAttachments:(id)attachments;
- (void)setAttendees:(id)attendees;
- (void)setAttendeesRaw:(id)raw;
- (void)setCalendar:(EKCalendar *)calendar;
- (void)setClientLocation:(id)location;
- (void)setEndTimeZone:(id)zone;
- (void)setExceptionDates:(id)dates;
- (void)setLocation:(NSString *)location;
- (void)setOrganizer:(id)organizer;
- (void)setOriginalItem:(id)item;
- (void)setPriority:(unint64_t)priority;
- (void)setRecurrenceRules:(NSArray *)recurrenceRules;
- (void)setRecurrenceRulesSet:(id)set;
- (void)setSelfAttendee:(id)attendee;
- (void)setSharedItemCreatedByAddress:(id)address;
- (void)setSharedItemCreatedTimeZone:(id)zone;
- (void)setSharedItemModifiedByAddress:(id)address;
- (void)setSharedItemModifiedTimeZone:(id)zone;
- (void)setStartTimeZone:(id)zone;
- (void)setStructuredLocationWithoutPrediction:(id)prediction;
- (void)setSyncError:(id)error;
- (void)setTimeZone:(NSTimeZone *)timeZone;
- (void)setTravelStartLocation:(id)location;
- (void)setURL:(NSURL *)URL;
- (void)snoozeAlarm:(id)alarm withLocation:(id)location proximity:(int64_t)proximity;
- (void)snoozeAlarm:(id)alarm withTimeIntervalFromNow:(double)now pinsTriggerToStartDate:(BOOL)date;
- (void)updateWithVCSEntity:(id)entity inCalendar:(id)calendar;
@end

@implementation EKCalendarItem

- (id)startTimeZone
{
  startTimeZoneName = [(EKCalendarItem *)self startTimeZoneName];
  v3 = [objc_opt_class() timeZoneFromTimeZoneName:startTimeZoneName withFloatingTimeZone:0];

  return v3;
}

- (NSString)location
{
  preferredLocation = [(EKCalendarItem *)self preferredLocation];

  if (preferredLocation)
  {
    preferredLocation2 = [(EKCalendarItem *)self preferredLocation];
    title = [preferredLocation2 title];

    preferredLocation3 = [(EKCalendarItem *)self preferredLocation];
    address = [preferredLocation3 address];

    v8 = [MEMORY[0x1E6992FD8] fullDisplayStringWithTitle:title address:address];
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
  clientLocation = [(EKCalendarItem *)self clientLocation];
  structuredLocation = [(EKCalendarItem *)self structuredLocation];
  v6 = [v3 preferredLocationWithClientLocation:clientLocation structuredLocation:structuredLocation];

  return v6;
}

- (BOOL)hasRecurrenceRules
{
  if ([(EKObject *)self isNew]|| ![(EKObject *)self isPropertyUnavailable:*MEMORY[0x1E6992648]])
  {
    recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
    bOOLValue = [recurrenceRules count] != 0;
  }

  else
  {
    recurrenceRules = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69925F8]];
    bOOLValue = [recurrenceRules BOOLValue];
  }

  return bOOLValue;
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
    bOOLValue = [v3 BOOLValue];

    return bOOLValue;
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
  attendeesRaw = [(EKCalendarItem *)self attendeesRaw];
  v4 = [(EKCalendarItem *)self filterAttendeesPendingDeletion:attendeesRaw];

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
  hasAttendees = [(EKCalendarItem *)self hasAttendees];
  if (hasAttendees)
  {

    LOBYTE(hasAttendees) = [(EKCalendarItem *)self isSelfOrganized];
  }

  return hasAttendees;
}

- (id)endTimeZone
{
  endTimeZoneName = [(EKCalendarItem *)self endTimeZoneName];
  v3 = [objc_opt_class() timeZoneFromTimeZoneName:endTimeZoneName withFloatingTimeZone:0];

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
            backingObject = [v13 backingObject];
            v15 = [backingObject isEqual:v5];

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
  _selfAttendee = [(EKCalendarItem *)self _selfAttendee];
  if (_selfAttendee && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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
    v3 = _selfAttendee;
  }

  return v3;
}

- (BOOL)hasAttachment
{
  if ([(EKObject *)self isNew]|| ![(EKObject *)self isPropertyUnavailable:*MEMORY[0x1E6992560]])
  {
    attachments = [(EKCalendarItem *)self attachments];
    bOOLValue = [attachments count] != 0;
  }

  else
  {
    attachments = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69925E0]];
    bOOLValue = [attachments BOOLValue];
  }

  return bOOLValue;
}

- (id)localUID
{
  originalItem = [(EKCalendarItem *)self originalItem];
  v4 = originalItem;
  if (originalItem)
  {
    selfCopy = originalItem;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  calendarItemIdentifier = [(EKCalendarItem *)v6 calendarItemIdentifier];

  return calendarItemIdentifier;
}

- (id)_structuredDataDictionaryFromData:(id)data local:(BOOL)local
{
  localCopy = local;
  v5 = MEMORY[0x1E6993068];
  dataCopy = data;
  defaultPermittedClasses = [v5 defaultPermittedClasses];
  v13 = 0;
  v8 = [v5 unarchiveDictionaryFromData:dataCopy permittedClasses:defaultPermittedClasses strict:!localCopy error:&v13];

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

- (id)_dataFromStructuredDataDictionary:(id)dictionary local:(BOOL)local
{
  localCopy = local;
  dictionaryCopy = dictionary;
  v6 = MEMORY[0x1E6993068];
  defaultPermittedClasses = [MEMORY[0x1E6993068] defaultPermittedClasses];
  v13 = 0;
  v8 = [v6 archiveDictionary:dictionaryCopy permittedClasses:defaultPermittedClasses strict:!localCopy error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKCalendarItem(Shared) *)dictionaryCopy _dataFromStructuredDataDictionary:v9 local:v10];
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
  title = [(EKCalendarItem *)self title];
  location = [(EKCalendarItem *)self location];
  calendar = [(EKCalendarItem *)self calendar];
  alarms = [(EKCalendarItem *)self alarms];
  v8 = [(EKCalendarItem *)self URL];
  lastModifiedDate = [(EKCalendarItem *)self lastModifiedDate];
  startTimeZone = [(EKCalendarItem *)self startTimeZone];
  endTimeZone = [(EKCalendarItem *)self endTimeZone];
  v12 = [v14 stringWithFormat:@"%@ <%p>\n{\t title = \t\t%@ \n\t location = \t%@; \n\t calendar = \t%@; \n\t alarms = \t\t%@; \n\t URL = \t\t\t%@; \n\t lastModified = %@; \n\t startTimeZone = \t%@; \n\t endTimeZone = \t%@ \n}", v3, self, title, location, calendar, alarms, v8, lastModifiedDate, startTimeZone, endTimeZone];;

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
  block[4] = self;
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
  calendarItemIdentifier = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992700]];
  if (!calendarItemIdentifier)
  {
    calendarItemIdentifier = [(EKCalendarItem *)self calendarItemIdentifier];
  }

  return calendarItemIdentifier;
}

- (BOOL)hasNotes
{
  if ([(EKObject *)self isNew]|| ![(EKObject *)self isPropertyUnavailable:*MEMORY[0x1E6992620]])
  {
    notes = [(EKCalendarItem *)self notes];
    bOOLValue = [notes length] != 0;
  }

  else
  {
    notes = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69925F0]];
    bOOLValue = [notes BOOLValue];
  }

  return bOOLValue;
}

- (void)setLocation:(NSString *)location
{
  v7 = location;
  location = [(EKCalendarItem *)self location];
  v5 = [location isEqualToString:v7];

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

- (void)setStructuredLocationWithoutPrediction:(id)prediction
{
  v4 = *MEMORY[0x1E69926D8];
  predictionCopy = prediction;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:predictionCopy forKey:v4 frozenClass:+[EKStructuredLocation frozenClass]];
}

- (void)setClientLocation:(id)location
{
  v4 = *MEMORY[0x1E6992580];
  locationCopy = location;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:locationCopy forKey:v4 frozenClass:+[EKStructuredLocation frozenClass]];
}

+ (id)preferredLocationWithClientLocation:(id)location structuredLocation:(id)structuredLocation
{
  locationCopy = location;
  structuredLocationCopy = structuredLocation;
  v7 = structuredLocationCopy;
  if (!locationCopy)
  {
    locationCopy = structuredLocationCopy;
  }

  return locationCopy;
}

- (void)setTravelStartLocation:(id)location
{
  v4 = *MEMORY[0x1E69926F8];
  locationCopy = location;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:locationCopy forKey:v4 frozenClass:+[EKStructuredLocation frozenClass]];
}

- (BOOL)isAllDay
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992600]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unint64_t)priority
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992640]];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setPriority:(unint64_t)priority
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:priority];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992640]];
}

- (id)action
{
  actionString = [(EKCalendarItem *)self actionString];
  if (actionString)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:actionString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAction:(id)action
{
  absoluteString = [action absoluteString];
  [(EKCalendarItem *)self setActionString:absoluteString];
}

- (NSURL)URL
{
  uRLString = [(EKCalendarItem *)self URLString];
  if ([uRLString length])
  {
    v3 = [MEMORY[0x1E695DFF8] _lp_URLWithUserTypedString:uRLString relativeToURL:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setURL:(NSURL *)URL
{
  absoluteString = [(NSURL *)URL absoluteString];
  [(EKCalendarItem *)self setURLString:absoluteString];
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

- (void)setStartTimeZone:(id)zone
{
  zoneCopy = zone;
  v5 = [objc_opt_class() timeZoneNameFromTimeZone:zoneCopy];

  [(EKCalendarItem *)self setStartTimeZoneName:v5];
}

- (void)setEndTimeZone:(id)zone
{
  zoneCopy = zone;
  v5 = [objc_opt_class() timeZoneNameFromTimeZone:zoneCopy];

  [(EKCalendarItem *)self setEndTimeZoneName:v5];
}

- (BOOL)defaultAlarmWasDeleted
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992590]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unsigned)modifiedProperties
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992618]];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (int)sequenceNumber
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992660]];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setSyncError:(id)error
{
  v4 = *MEMORY[0x1E69926F0];
  errorCopy = error;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:errorCopy forKey:v4 frozenClass:+[EKSyncError frozenClass]];
}

- (BOOL)isNewItemThatFailedToPut
{
  syncError = [(EKCalendarItem *)self syncError];
  v4 = syncError;
  if (syncError && [syncError errorType] == 1 && objc_msgSend(v4, "errorCode") == 3)
  {
    externalModificationTag = [(EKCalendarItem *)self externalModificationTag];
    v6 = [externalModificationTag length] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)exportToICSWithOptions:(unint64_t)options
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  objectID = [(EKObject *)self objectID];

  if (objectID)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      startDate = [(EKCalendarItem *)selfCopy startDate];
      v8 = [(EKCalendarItem *)selfCopy adjustedPersistedDateForDate:startDate withAdjustmentMode:0 pinMode:0 clientCalendarDate:0];
    }

    else
    {
      v8 = 0;
    }

    eventStore = [(EKObject *)self eventStore];
    connection = [eventStore connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    cADObjectID = [(EKObject *)self CADObjectID];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__EKCalendarItem_exportToICSWithOptions___block_invoke;
    v15[3] = &unk_1E77FDD00;
    v15[4] = &v16;
    [cADOperationProxySync CADDatabaseExportICSForCalendarItemWithID:cADObjectID occurrenceDate:v8 options:options reply:v15];
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isEditable
{
  if ([(EKObject *)self isNew])
  {
    return 1;
  }

  calendar = [(EKCalendarItem *)self calendar];
  v5 = calendar;
  if (calendar && (([calendar allowsContentModifications] & 1) != 0 || (objc_msgSend(v5, "isMutableSuggestionsCalendar") & 1) != 0 || objc_msgSend(v5, "isMutableNaturalLanguageSuggestionsCalendar")))
  {
    if ([(EKCalendarItem *)self hasAttendees])
    {
      source = [v5 source];
      if ((!source || (-[EKCalendarItem constraints](self, "constraints"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 supportsInvitationModifications], v7, v8)) && objc_msgSend(v5, "allowsScheduling"))
      {
        isOrganizedBySharedCalendarOwner = [(EKCalendarItem *)self isSelfOrganized]|| [(EKCalendarItem *)self isOrganizedBySharedCalendarOwner];
      }

      else
      {
        isOrganizedBySharedCalendarOwner = 0;
      }
    }

    else
    {
      isOrganizedBySharedCalendarOwner = 1;
    }
  }

  else
  {
    isOrganizedBySharedCalendarOwner = 0;
  }

  return isOrganizedBySharedCalendarOwner;
}

- (BOOL)_validateDeletable:(id *)deletable
{
  if (![(EKCalendarItem *)self _validateDeletableDueToAccessConsent:?]|| ![(EKCalendarItem *)self _validateDeletableInCalendarWithError:deletable])
  {
    return 0;
  }

  return [(EKCalendarItem *)self _validateDeletableBySharedCalendarShareeWithError:deletable];
}

- (BOOL)_validateDeletableDueToAccessConsent:(id *)consent
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [EKEventStore realAuthorizationStatusForEntityType:[(EKCalendarItem *)self entityType]];
  if (v5 <= 2)
  {
    if (consent)
    {
      *consent = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:29];
    }

    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      entityType = [(EKCalendarItem *)self entityType];
      v9 = @"reminders";
      if (!entityType)
      {
        v9 = @"events";
      }

      v12 = 138412546;
      selfCopy = self;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_1A805E000, v7, OS_LOG_TYPE_INFO, "Validation is failing for %@ because access has not been granted for %{public}@.", &v12, 0x16u);
    }
  }

  result = v5 > 2;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_validateDeletableInCalendarWithError:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  calendar = [(EKCalendarItem *)self calendar];
  if ([calendar allowsContentModifications])
  {
    goto LABEL_6;
  }

  calendar2 = [(EKCalendarItem *)self calendar];
  if ([calendar2 isSuggestedEventCalendar])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    LOBYTE(v8) = 1;
    goto LABEL_8;
  }

  calendar3 = [(EKCalendarItem *)self calendar];
  if ([calendar3 isNaturalLanguageSuggestedEventCalendar])
  {

    goto LABEL_5;
  }

  isNewItemThatFailedToPut = [(EKCalendarItem *)self isNewItemThatFailedToPut];

  if (isNewItemThatFailedToPut)
  {
    goto LABEL_7;
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:6];
  }

  v11 = EKLogHandle;
  v8 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO);
  if (v8)
  {
    v13 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_INFO, "Validation is failing for %@ because readonly items can't be removed.", &v13, 0xCu);
    LOBYTE(v8) = 0;
  }

LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_isInSharedToMeCalendarWithNoSharingScheduling
{
  calendar = [(EKCalendarItem *)self calendar];
  if ([calendar sharingStatus] == 2)
  {
    calendar2 = [(EKCalendarItem *)self calendar];
    v5 = [calendar2 allowsScheduling] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_validateDeletableBySharedCalendarShareeWithError:(id *)error
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(EKCalendarItem *)self _isInSharedToMeCalendarWithNoSharingScheduling]&& [(EKCalendarItem *)self hasAttendees])
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:0];
    }

    v5 = EKLogHandle;
    v6 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO);
    if (v6)
    {
      v9 = 138412290;
      selfCopy = self;
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
  timeZone = [(EKCalendarItem *)self timeZone];
  v3 = timeZone == 0;

  return v3;
}

- (BOOL)isSelfOrganized
{
  organizer = [(EKCalendarItem *)self organizer];
  v3 = organizer;
  if (organizer)
  {
    isCurrentUser = [organizer isCurrentUser];
  }

  else
  {
    isCurrentUser = 1;
  }

  return isCurrentUser;
}

- (BOOL)isExternallyOrganizedInvitation
{
  hasAttendees = [(EKCalendarItem *)self hasAttendees];
  if (hasAttendees)
  {
    LOBYTE(hasAttendees) = ![(EKCalendarItem *)self isSelfOrganized];
  }

  return hasAttendees;
}

- (BOOL)isOrganizedBySharedCalendarOwner
{
  v28 = *MEMORY[0x1E69E9840];
  calendar = [(EKCalendarItem *)self calendar];
  sharedOwnerAddresses = [calendar sharedOwnerAddresses];

  if (!sharedOwnerAddresses)
  {
    goto LABEL_14;
  }

  organizer = [(EKCalendarItem *)self organizer];
  v6 = [organizer URL];
  absoluteString = [v6 absoluteString];

  if (absoluteString)
  {
    stringRemovingMailto = [absoluteString stringRemovingMailto];
    stringRemovingTel = [absoluteString stringRemovingTel];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = sharedOwnerAddresses;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      v22 = sharedOwnerAddresses;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if ([v15 isEqualToString:absoluteString])
          {
            goto LABEL_17;
          }

          stringRemovingMailto2 = [v15 stringRemovingMailto];
          if ([stringRemovingMailto2 isEqualToString:stringRemovingMailto])
          {

LABEL_17:
            v19 = 1;
            sharedOwnerAddresses = v22;
            goto LABEL_18;
          }

          stringRemovingTel2 = [v15 stringRemovingTel];
          v18 = [stringRemovingTel2 isEqualToString:stringRemovingTel];

          if (v18)
          {
            goto LABEL_17;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v19 = 0;
        sharedOwnerAddresses = v22;
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

  calendar = [(EKCalendarItem *)self calendar];
  allowsContentModifications = [calendar allowsContentModifications];

  return allowsContentModifications;
}

- (BOOL)allowsAlarmModifications
{
  if ([MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement])
  {
    return 1;
  }

  constraints = [(EKCalendarItem *)self constraints];
  if ((([constraints supportsAlarmTriggerIntervals] & 1) != 0 || objc_msgSend(constraints, "supportsAlarmTriggerDates")) && objc_msgSend(constraints, "maxAlarmsAllowed"))
  {
    if ([(EKCalendarItem *)self isExternallyOrganizedInvitation])
    {
      supportsInvitationModifications = [constraints supportsInvitationModifications];
    }

    else
    {
      supportsInvitationModifications = 1;
    }
  }

  else
  {
    supportsInvitationModifications = 0;
  }

  return supportsInvitationModifications;
}

- (unint64_t)actionsState
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__EKCalendarItem_actionsState__block_invoke;
  v5[3] = &unk_1E77FCF40;
  v5[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"actionsState" populateBlock:v5];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
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

- (id)adjustDateFromUTC:(id)c
{
  cCopy = c;
  v5 = objc_opt_class();
  isAllDay = [(EKCalendarItem *)self isAllDay];
  timeZone = [(EKCalendarItem *)self timeZone];
  v8 = [v5 adjustDateFromUTC:cCopy allDay:isAllDay timeZone:timeZone];

  return v8;
}

+ (id)adjustDateFromUTC:(id)c allDay:(BOOL)day timeZone:(id)zone
{
  dayCopy = day;
  cCopy = c;
  if (!zone || dayCopy)
  {
    v8 = MEMORY[0x1E6992FA8];
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v10 = [v8 dateInTimeZone:defaultTimeZone fromFloatingDateInGMT:cCopy];

    cCopy = v10;
  }

  return cCopy;
}

+ (id)keysToIgnoreForApplyingChanges
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EKCalendarItem_keysToIgnoreForApplyingChanges__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  alarms = [(EKCalendarItem *)self alarms];
  v3 = [alarms count] != 0;

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
    allAlarms = [(EKCalendarItem *)self allAlarms];
    v6 = [allAlarms countByEnumeratingWithState:&v66 objects:v74 count:16];
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
            objc_enumerationMutation(allAlarms);
          }

          v10 = *(*(&v66 + 1) + 8 * i);
          if ([v10 isDefaultAlarm])
          {
            [v4 addObject:v10];
            goto LABEL_12;
          }
        }

        v7 = [allAlarms countByEnumeratingWithState:&v66 objects:v74 count:16];
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
          uUID = [v18 UUID];

          if (uUID)
          {
            uUID2 = [v18 UUID];
            [v12 addObject:uUID2];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v62 objects:v73 count:16];
    }

    while (v15);
  }

  selfCopy = self;

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
        snoozedAlarms = [v24 snoozedAlarms];
        v26 = [snoozedAlarms countByEnumeratingWithState:&v54 objects:v71 count:16];
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
                objc_enumerationMutation(snoozedAlarms);
              }

              v30 = *(*(&v54 + 1) + 8 * m);
              [v11 addObject:v30];
              uUID3 = [v30 UUID];

              if (uUID3)
              {
                uUID4 = [v30 UUID];
                [v12 addObject:uUID4];
              }
            }

            v27 = [snoozedAlarms countByEnumeratingWithState:&v54 objects:v71 count:16];
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
  v33 = selfCopy;
  allAlarms2 = [(EKCalendarItem *)selfCopy allAlarms];
  v35 = [allAlarms2 countByEnumeratingWithState:&v50 objects:v70 count:16];
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
          objc_enumerationMutation(allAlarms2);
        }

        v39 = *(*(&v50 + 1) + 8 * n);
        if ([(EKCalendarItem *)v33 _excludeAlarmDueToConnectionTrigger:v39])
        {
          uUID5 = [v39 UUID];
          if (uUID5)
          {
            v41 = uUID5;
            uUID6 = [v39 UUID];
            v43 = [v12 containsObject:uUID6];

            v33 = selfCopy;
            if ((v43 & 1) == 0)
            {
              [v11 addObject:v39];
              uUID7 = [v39 UUID];
              [v12 addObject:uUID7];
            }
          }
        }
      }

      v36 = [allAlarms2 countByEnumeratingWithState:&v50 objects:v70 count:16];
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
  allAlarms = [(EKCalendarItem *)self allAlarms];
  v4 = allAlarms;
  if (allAlarms)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(allAlarms, "count")}];
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
  alarms = [(EKCalendarItem *)self alarms];
  v3 = [alarms sortedArrayUsingSelector:sel_compare_];

  return v3;
}

- (int64_t)indexForAlarm:(id)alarm
{
  alarmCopy = alarm;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (alarmCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    sortedAlarms = [(EKCalendarItem *)self sortedAlarms];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__EKCalendarItem_indexForAlarm___block_invoke;
    v8[3] = &unk_1E77FDD28;
    v9 = alarmCopy;
    v10 = &v11;
    [sortedAlarms enumerateObjectsUsingBlock:v8];
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

- (BOOL)_excludeAlarmDueToConnectionTrigger:(id)trigger
{
  triggerCopy = trigger;
  v5 = 1;
  if (([triggerCopy proximity] & 0x8000000000000000) == 0)
  {
    proximity = [triggerCopy proximity];
    if (proximity <= +[EKAlarm maxPublicProximity])
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

- (void)setAllAlarmsSet:(id)set
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  setCopy = set;
  v5 = [setCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(setCopy);
        }

        if ([*(*(&v11 + 1) + 8 * v8) isDefaultAlarm])
        {
          v9 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [setCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  [(EKObject *)self updateMeltedAndCachedMultiRelationObjects:setCopy forKey:*MEMORY[0x1E6992558]];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setAllAlarms:(id)alarms
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:alarms];
  [(EKCalendarItem *)self setAllAlarmsSet:v4];
}

- (id)allAlarms
{
  allAlarmsSet = [(EKCalendarItem *)self allAlarmsSet];
  if ([allAlarmsSet count])
  {
    allObjects = [allAlarmsSet allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
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
    snoozedAlarms = [(EKAlarm *)v4 snoozedAlarms];
    if ([(EKAlarm *)v5 isDefaultAlarm])
    {
      allAlarmsSet = [(EKCalendarItem *)self allAlarmsSet];
      v8 = [allAlarmsSet containsObject:v5];

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
    v9 = snoozedAlarms;
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
          calendarItemOwner = [v14 calendarItemOwner];
          calendarItemIdentifier = [calendarItemOwner calendarItemIdentifier];
          calendarItemIdentifier2 = [(EKCalendarItem *)self calendarItemIdentifier];
          v18 = [calendarItemIdentifier isEqualToString:calendarItemIdentifier2];

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

- (void)snoozeAlarm:(id)alarm withLocation:(id)location proximity:(int64_t)proximity
{
  alarmCopy = alarm;
  locationCopy = location;
  if (!proximity)
  {
    [EKCalendarItem snoozeAlarm:withLocation:proximity:];
  }

  date = [MEMORY[0x1E695DF00] date];
  [alarmCopy setAcknowledgedDate:date];

  duplicate = [alarmCopy duplicate];
  [duplicate setStructuredLocation:locationCopy];
  [duplicate setProximity:proximity];
  v11 = [(EKCalendarItem *)self findOriginalAlarmStartingWith:alarmCopy];
  [duplicate setOriginalAlarm:v11];
  [(EKCalendarItem *)self addAlarm:duplicate];
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
    allAlarms = [(EKCalendarItem *)self allAlarms];
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

- (BOOL)isOnlyAlarmAcknowledgedPropertyDirty
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(EKObject *)self hasChanges]&& [(EKObject *)self _isOnlyChangedKey:*MEMORY[0x1E6992558]])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allAlarms = [(EKCalendarItem *)self allAlarms];
    v4 = [allAlarms countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(allAlarms);
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

        v5 = [allAlarms countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allAlarms = [(EKCalendarItem *)self allAlarms];
  v5 = [allAlarms countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(allAlarms);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if ([v9 isSnoozed])
        {
          acknowledgedDate = [v9 acknowledgedDate];

          if (acknowledgedDate)
          {
            [array addObject:v9];
          }
        }
      }

      v6 = [allAlarms countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = array;
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
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allAlarms = [(EKCalendarItem *)self allAlarms];
  v5 = [allAlarms countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(allAlarms);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 isSnoozed])
        {
          [array addObject:v9];
        }
      }

      v6 = [allAlarms countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = array;
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
  singleRecurrenceRule = [(EKCalendarItem *)self singleRecurrenceRule];
  v4 = [singleRecurrenceRule stringValueAsDateOnly:-[EKCalendarItem isAllDay](self isFloating:{"isAllDay"), -[EKCalendarItem isFloating](self, "isFloating")}];

  return v4;
}

- (id)singleRecurrenceRule
{
  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  lastObject = [recurrenceRules lastObject];

  return lastObject;
}

- (BOOL)_hadRecurrenceRules
{
  if ([(EKObject *)self isNew])
  {
    v3 = *MEMORY[0x1E6992648];
LABEL_5:
    v6 = [(EKObject *)self _previousValueForKey:v3];
    bOOLValue = [v6 count] != 0;
    goto LABEL_6;
  }

  persistentObject = [(EKObject *)self persistentObject];
  v3 = *MEMORY[0x1E6992648];
  v5 = [persistentObject isPropertyUnavailable:*MEMORY[0x1E6992648]];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E69925F8]];
  bOOLValue = [v6 BOOLValue];
LABEL_6:

  return bOOLValue;
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
  recurrenceRulesSet = [(EKCalendarItem *)self recurrenceRulesSet];
  allObjects = [recurrenceRulesSet allObjects];

  return allObjects;
}

- (BOOL)hasComplexRecurrence
{
  singleRecurrenceRule = [(EKCalendarItem *)self singleRecurrenceRule];
  if ([singleRecurrenceRule isPinnedToEndOfFrequency])
  {
    v3 = 0;
  }

  else
  {
    daysOfTheWeek = [singleRecurrenceRule daysOfTheWeek];
    if ([daysOfTheWeek count])
    {
      v3 = 1;
    }

    else
    {
      daysOfTheMonth = [singleRecurrenceRule daysOfTheMonth];
      if ([daysOfTheMonth count])
      {
        v3 = 1;
      }

      else
      {
        daysOfTheYear = [singleRecurrenceRule daysOfTheYear];
        if ([daysOfTheYear count])
        {
          v3 = 1;
        }

        else
        {
          weeksOfTheYear = [singleRecurrenceRule weeksOfTheYear];
          if ([weeksOfTheYear count])
          {
            v3 = 1;
          }

          else
          {
            monthsOfTheYear = [singleRecurrenceRule monthsOfTheYear];
            if ([monthsOfTheYear count])
            {
              v3 = 1;
            }

            else
            {
              setPositions = [singleRecurrenceRule setPositions];
              v3 = [setPositions count] != 0;
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
    singleRecurrenceRule = [(EKCalendarItem *)self singleRecurrenceRule];
    if ([singleRecurrenceRule frequency] != 2 && objc_msgSend(singleRecurrenceRule, "frequency") != 3)
    {
      goto LABEL_28;
    }

    timeZone = [(EKCalendarItem *)self timeZone];
    v5 = MEMORY[0x1E695DEE8];
    if (timeZone)
    {
      v6 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:timeZone];
    }

    else
    {
      eventStore = [(EKObject *)self eventStore];
      timeZone2 = [eventStore timeZone];
      v6 = [v5 CalGregorianCalendarForTimeZone:timeZone2];
    }

    startDateForRecurrence = [(EKCalendarItem *)self startDateForRecurrence];
    v10 = [v6 components:24 fromDate:startDateForRecurrence];

    if (v10)
    {
      if ([singleRecurrenceRule frequency] == 2 && (v11 = objc_msgSend(v10, "day"), (v11 - 29) <= 2))
      {
        v12 = v11;
        v27 = v6;
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:-1];
        v34[0] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
        [singleRecurrenceRule setSetPositions:v14];

        array = [MEMORY[0x1E695DF70] array];
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

            [array addObject:v20];
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

        [singleRecurrenceRule setDaysOfTheMonth:array];

        v21 = 1;
        v6 = v27;
      }

      else
      {
        v21 = 0;
      }

      if ([singleRecurrenceRule frequency] == 3 && objc_msgSend(v10, "month") == 2 && objc_msgSend(v10, "day") == 29)
      {
        v22 = [MEMORY[0x1E696AD98] numberWithInteger:-1];
        v32 = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
        [singleRecurrenceRule setSetPositions:v23];

        v24 = &unk_1F1B6B1B8;
        v25 = singleRecurrenceRule;
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

    [singleRecurrenceRule setSetPositions:0];
    v25 = singleRecurrenceRule;
    v24 = 0;
    goto LABEL_26;
  }

LABEL_29:
  v26 = *MEMORY[0x1E69E9840];
}

- (void)setRecurrenceRulesSet:(id)set
{
  [(EKObject *)self updateMeltedAndCachedMultiRelationObjects:set forKey:*MEMORY[0x1E6992648]];

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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setAttendeesRaw:(id)raw
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:raw];
  [(EKObject *)self updateMeltedAndCachedMultiRelationObjects:v4 forKey:*MEMORY[0x1E6992568]];
}

- (id)filterAttendeesPendingDeletion:(id)deletion
{
  v18 = *MEMORY[0x1E69E9840];
  deletionCopy = deletion;
  if ([deletionCopy count])
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(deletionCopy, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = deletionCopy;
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

- (void)setAttendees:(id)attendees
{
  attendeesCopy = attendees;
  [(EKCalendarItem *)self setAttendeesRaw:?];
  selfAttendee = [(EKCalendarItem *)self selfAttendee];
  if (selfAttendee && ([attendeesCopy containsObject:selfAttendee] & 1) == 0)
  {
    [(EKCalendarItem *)self _setSelfAttendee:0];
  }
}

- (void)addAttendee:(id)attendee
{
  if (attendee)
  {
    [(EKObject *)self addCachedMeltedObject:attendee forMultiValueKey:*MEMORY[0x1E6992568]];
  }
}

- (void)removeAttendee:(id)attendee
{
  attendeeCopy = attendee;
  if (attendeeCopy)
  {
    v6 = attendeeCopy;
    selfAttendee = [(EKCalendarItem *)self selfAttendee];

    if (selfAttendee == v6)
    {
      [(EKCalendarItem *)self _setSelfAttendee:0];
    }

    [(EKCalendarItem *)self _removeAttendee:v6];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setSelfAttendee:(id)attendee
{
  attendeeCopy = attendee;
  if (attendeeCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_FAULT))
    {
      [EKCalendarItem setSelfAttendee:v9];
    }
  }

  else
  {
    selfAttendee = [(EKCalendarItem *)self selfAttendee];
    if ([attendeeCopy isEqual:selfAttendee])
    {
      if (selfAttendee != attendeeCopy)
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
      attendees = [(EKCalendarItem *)self attendees];
      v8 = attendees;
      if (attendeeCopy && ([attendees containsObject:attendeeCopy] & 1) == 0)
      {
        [(EKCalendarItem *)self addAttendee:attendeeCopy];
      }

      if (selfAttendee && [v8 containsObject:selfAttendee])
      {
        [(EKCalendarItem *)self _removeAttendee:selfAttendee];
      }

      [(EKCalendarItem *)self _setSelfAttendee:attendeeCopy];
    }
  }
}

- (void)_setSelfAttendee:(id)attendee
{
  v4 = *MEMORY[0x1E6992650];
  attendeeCopy = attendee;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:attendeeCopy forKey:v4 frozenClass:+[EKAttendee frozenClass]];
}

- (int)selfParticipantStatusRaw
{
  if (!-[EKObject isNew](self, "isNew") && (-[EKObject isPropertyUnavailable:](self, "isPropertyUnavailable:", *MEMORY[0x1E6992650]) || (-[EKCalendarItem selfAttendee](self, "selfAttendee"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isPropertyUnavailable:*MEMORY[0x1E6992538]], v5, v6)))
  {
    selfAttendee = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992658]];
    integerValue = [selfAttendee integerValue];
  }

  else
  {
    selfAttendee = [(EKCalendarItem *)self selfAttendee];
    integerValue = EKParticipantStatusToCalAttendeeStatus([selfAttendee participantStatus]);
  }

  v7 = integerValue;

  return v7;
}

- (int64_t)selfParticipantStatus
{
  selfParticipantStatusRaw = [(EKCalendarItem *)self selfParticipantStatusRaw];

  return CalAttendeeStatusToEKParticipantStatus(selfParticipantStatusRaw);
}

- (id)participantMatchingContact:(id)contact
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (contact)
  {
    contactCopy = contact;
    v5 = [EKParticipantToContactMatcher alloc];
    v12[0] = contactCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

    v7 = [(EKParticipantToContactMatcher *)v5 initWithContacts:v6];
    v8 = [(EKParticipantToContactMatcher *)v7 matchingParticipantsFromItem:self];
    firstObject = [v8 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)attendeeMatchingEmailAddress:(id)address
{
  v19 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  attendees = [(EKCalendarItem *)self attendees];
  v6 = [attendees countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(attendees);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        emailAddress = [v9 emailAddress];
        v11 = [emailAddress isEqualToString:addressCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [attendees countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)setOrganizer:(id)organizer
{
  v4 = *MEMORY[0x1E6992628];
  organizerCopy = organizer;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:organizerCopy forKey:v4 frozenClass:+[EKOrganizer frozenClass]];
}

- (void)addOrganizerAndSelfAttendeeForNewInvitation
{
  calendar = [(EKCalendarItem *)self calendar];
  [(EKCalendarItem *)self addOrganizerAndSelfAttendeeForNewInvitationInCalendar:calendar force:0];
}

- (void)addOrganizerAndSelfAttendeeForNewInvitationInCalendar:(id)calendar force:(BOOL)force
{
  v37 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  if (force)
  {
    goto LABEL_2;
  }

  if ([(EKCalendarItem *)self hasAttendees]&& (![(EKCalendarItem *)self hasAttendees]|| ![(EKCalendarItem *)self _hadAttendees]))
  {
    organizer = [(EKCalendarItem *)self organizer];
    if (!organizer || (v12 = organizer, -[EKCalendarItem organizer](self, "organizer"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 scheduleAgent], v13, v12, v14))
    {
LABEL_2:
      organizer2 = [(EKCalendarItem *)self organizer];
      if (!organizer2)
      {
        organizer2 = [calendarCopy ownerIdentityOrganizer];
        [organizer2 setCurrentUser:1];
        if (organizer2)
        {
          source = [calendarCopy source];
          sourceType = [source sourceType];

          if (sourceType > 3)
          {
            v10 = 0;
          }

          else
          {
            v10 = qword_1A81C3B78[sourceType];
          }

          [organizer2 setScheduleAgent:v10];
          [(EKCalendarItem *)self setOrganizer:organizer2];
        }
      }

      source2 = [calendarCopy source];
      if ([source2 usesSelfAttendee])
      {
        selfAttendee = [(EKCalendarItem *)self selfAttendee];

        if (!selfAttendee)
        {
          attendeesRaw = [(EKCalendarItem *)self attendeesRaw];
          name = [organizer2 name];
          emailAddress = [organizer2 emailAddress];
          phoneNumber = [organizer2 phoneNumber];
          v21 = [organizer2 URL];
          v22 = [EKAttendee attendeeWithName:name emailAddress:emailAddress phoneNumber:phoneNumber url:v21];

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v23 = attendeesRaw;
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
          selfAttendee2 = [(EKCalendarItem *)self selfAttendee];
          [selfAttendee2 setParticipantStatus:2];
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
  attendees = [(EKCalendarItem *)self attendees];
  if ([attendees count] == 1)
  {
    selfAttendee = [(EKCalendarItem *)self selfAttendee];
    organizer = [(EKCalendarItem *)self organizer];
    v5 = [selfAttendee isEqualToParticipant:organizer];

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
    sharedItemCreatedByFirstName = [(EKCalendarItem *)self sharedItemCreatedByFirstName];
    sharedItemCreatedByLastName = [(EKCalendarItem *)self sharedItemCreatedByLastName];
    v3 = DisplayNameStringForIdentityWithProperties();
  }

  return v3;
}

- (id)sharedItemCreatedByAddress
{
  sharedItemCreatedByAddressString = [(EKCalendarItem *)self sharedItemCreatedByAddressString];
  if (sharedItemCreatedByAddressString)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:sharedItemCreatedByAddressString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSharedItemCreatedByAddress:(id)address
{
  absoluteString = [address absoluteString];
  [(EKCalendarItem *)self setSharedItemCreatedByAddressString:absoluteString];
}

- (id)sharedItemCreatedTimeZone
{
  sharedItemCreatedTimeZoneName = [(EKCalendarItem *)self sharedItemCreatedTimeZoneName];
  v3 = [EKCalendarItem timeZoneFromTimeZoneName:sharedItemCreatedTimeZoneName withFloatingTimeZone:0];

  return v3;
}

- (void)setSharedItemCreatedTimeZone:(id)zone
{
  v4 = [EKCalendarItem timeZoneNameFromTimeZone:zone];
  [(EKCalendarItem *)self setSharedItemCreatedTimeZoneName:v4];
}

- (id)sharedItemModifiedByDisplayName
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69926A0]];
  if (!v3)
  {
    sharedItemModifiedByFirstName = [(EKCalendarItem *)self sharedItemModifiedByFirstName];
    sharedItemModifiedByLastName = [(EKCalendarItem *)self sharedItemModifiedByLastName];
    v3 = DisplayNameStringForIdentityWithProperties();
  }

  return v3;
}

- (id)sharedItemModifiedByAddress
{
  sharedItemModifiedByAddressString = [(EKCalendarItem *)self sharedItemModifiedByAddressString];
  if (sharedItemModifiedByAddressString)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:sharedItemModifiedByAddressString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSharedItemModifiedByAddress:(id)address
{
  absoluteString = [address absoluteString];
  [(EKCalendarItem *)self setSharedItemModifiedByAddressString:absoluteString];
}

- (id)sharedItemModifiedTimeZone
{
  sharedItemModifiedTimeZoneName = [(EKCalendarItem *)self sharedItemModifiedTimeZoneName];
  v3 = [EKCalendarItem timeZoneFromTimeZoneName:sharedItemModifiedTimeZoneName withFloatingTimeZone:0];

  return v3;
}

- (void)setSharedItemModifiedTimeZone:(id)zone
{
  v4 = [EKCalendarItem timeZoneNameFromTimeZone:zone];
  [(EKCalendarItem *)self setSharedItemModifiedTimeZoneName:v4];
}

- (NSArray)attachments
{
  attachmentsSet = [(EKCalendarItem *)self attachmentsSet];
  if ([attachmentsSet count])
  {
    allObjects = [attachmentsSet allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (void)setAttachments:(id)attachments
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:attachments];
  [(EKCalendarItem *)self setAttachmentsSet:v4];
}

- (BOOL)canMoveToCalendar:(id)calendar error:(id *)error
{
  calendarCopy = calendar;
  calendar = [(EKCalendarItem *)self calendar];
  LOBYTE(error) = [(EKCalendarItem *)self canMoveToCalendar:calendarCopy fromCalendar:calendar error:error];

  return error;
}

- (BOOL)canMoveToCalendar:(id)calendar fromCalendar:(id)fromCalendar error:(id *)error
{
  calendarCopy = calendar;
  fromCalendarCopy = fromCalendar;
  if (error)
  {
    *error = 0;
  }

  eventStore = [(EKObject *)self eventStore];
  if ([eventStore eventAccessLevel] == 1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      eventStore2 = [(EKObject *)self eventStore];
      cADObjectID = [(EKObject *)self CADObjectID];
      v14 = [eventStore2 cachedConstraintsForEventOrSourceWithCADObjectID:cADObjectID];

      if (v14)
      {
        constraints = v14;
        v16 = constraints;
        if (!fromCalendarCopy)
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

  constraints = [fromCalendarCopy constraints];
  v16 = 0;
  if (!fromCalendarCopy)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (([fromCalendarCopy allowsContentModifications] & 1) == 0 && (objc_msgSend(fromCalendarCopy, "isMutableSuggestionsCalendar") & 1) == 0 && (objc_msgSend(fromCalendarCopy, "isMutableNaturalLanguageSuggestionsCalendar") & 1) == 0)
  {
LABEL_20:
    if (error)
    {
      v25 = 6;
      goto LABEL_22;
    }

LABEL_26:
    v24 = 0;
    goto LABEL_27;
  }

LABEL_13:
  if (([calendarCopy allowsContentModifications] & 1) == 0)
  {
    goto LABEL_20;
  }

  organizer = [(EKCalendarItem *)self organizer];
  if (!organizer || (v18 = organizer, v19 = [(EKCalendarItem *)self hasAttendees], v18, !v19))
  {
    v24 = 1;
    goto LABEL_27;
  }

  source = [calendarCopy source];
  source2 = [fromCalendarCopy source];
  v22 = [source isEqual:source2];

  if ((v22 & 1) == 0)
  {
    if (error)
    {
      v25 = 43;
      goto LABEL_22;
    }

    goto LABEL_26;
  }

  requiresOutgoingInvitationsInDefaultCalendar = [constraints requiresOutgoingInvitationsInDefaultCalendar];
  v24 = requiresOutgoingInvitationsInDefaultCalendar ^ 1;
  if (error && requiresOutgoingInvitationsInDefaultCalendar)
  {
    v25 = 12;
LABEL_22:
    [MEMORY[0x1E696ABC0] errorWithEKErrorCode:v25];
    *error = v24 = 0;
  }

LABEL_27:

  return v24;
}

- (id)propertiesThatCanBeModifiedOnReadOnlyCalendars
{
  v11[2] = *MEMORY[0x1E69E9840];
  calendar = [(EKCalendarItem *)self calendar];
  type = [calendar type];

  if (type == 4)
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

- (BOOL)validate:(id *)validate
{
  changeSet = [(EKObject *)self changeSet];
  v6 = [changeSet hasUnsavedChangeForKey:*MEMORY[0x1E6992598]];

  if (!v6)
  {
    v31.receiver = self;
    v31.super_class = EKCalendarItem;
    LODWORD(v10) = [(EKObject *)&v31 validate:validate];
    if (!v10)
    {
      return v10;
    }

    calendar = [(EKCalendarItem *)self calendar];

    if (!calendar)
    {
      if (validate)
      {
        v7 = MEMORY[0x1E696ABC0];
        v8 = 1;
        goto LABEL_4;
      }

      goto LABEL_37;
    }

    calendar2 = [(EKCalendarItem *)self calendar];
    if (([calendar2 allowsContentModifications] & 1) == 0)
    {
      calendar3 = [(EKCalendarItem *)self calendar];
      if (([calendar3 isMutableSuggestionsCalendar] & 1) == 0)
      {
        calendar4 = [(EKCalendarItem *)self calendar];
        if (([calendar4 isMutableNaturalLanguageSuggestionsCalendar] & 1) == 0)
        {
          eventStore = [(EKObject *)self eventStore];
          if (([eventStore skipModificationValidation] & 1) == 0)
          {
            propertiesThatCanBeModifiedOnReadOnlyCalendars = [(EKCalendarItem *)self propertiesThatCanBeModifiedOnReadOnlyCalendars];
            v29 = [(EKObject *)self _areOnlyChangedKeys:propertiesThatCanBeModifiedOnReadOnlyCalendars];

            if (!v29)
            {
              if (validate)
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

      calendar5 = [(EKCalendarItem *)self calendar];
      v19 = [(EKCalendarItem *)self canMoveToCalendar:calendar5 fromCalendar:v17 error:validate];

      if (!v19)
      {
        goto LABEL_37;
      }
    }

    constraints = [(EKCalendarItem *)self constraints];
    if ([constraints supportsStructuredLocations])
    {
      goto LABEL_23;
    }

    calendar6 = [(EKCalendarItem *)self calendar];
    if ([calendar6 isSuggestedEventCalendar])
    {

LABEL_23:
LABEL_24:
      LOBYTE(v10) = 1;
      return v10;
    }

    calendar7 = [(EKCalendarItem *)self calendar];
    isNaturalLanguageSuggestedEventCalendar = [calendar7 isNaturalLanguageSuggestedEventCalendar];

    if (isNaturalLanguageSuggestedEventCalendar)
    {
      goto LABEL_24;
    }

    if (!-[EKObject _hasChangesForKey:](self, "_hasChangesForKey:", *MEMORY[0x1E69926D8]) || (-[EKCalendarItem structuredLocation](self, "structuredLocation"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 isStructured], v24, !v25))
    {
      if (![(EKObject *)self _hasChangesForKey:*MEMORY[0x1E69926F8]])
      {
        goto LABEL_24;
      }

      travelStartLocation = [(EKCalendarItem *)self travelStartLocation];
      isStructured = [travelStartLocation isStructured];

      if (!isStructured)
      {
        goto LABEL_24;
      }
    }

    if (validate)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = 19;
      goto LABEL_4;
    }

LABEL_37:
    LOBYTE(v10) = 0;
    return v10;
  }

  if (!validate)
  {
    goto LABEL_37;
  }

  v7 = MEMORY[0x1E696ABC0];
  v8 = 67;
LABEL_4:
  v9 = [v7 errorWithEKErrorCode:v8];
  v10 = v9;
  LOBYTE(v10) = 0;
  *validate = v9;
  return v10;
}

+ (BOOL)_shouldDeleteAndAddForMoveFromCalendar:(id)calendar toCalendar:(id)toCalendar
{
  calendarCopy = calendar;
  toCalendarCopy = toCalendar;
  source = [calendarCopy source];
  source2 = [toCalendarCopy source];

  if ([source isEqual:source2])
  {
    constraints = [calendarCopy constraints];
    shouldUseDeleteAndAddInsteadOfMoveBetweenCalendars = [constraints shouldUseDeleteAndAddInsteadOfMoveBetweenCalendars];
  }

  else
  {
    shouldUseDeleteAndAddInsteadOfMoveBetweenCalendars = 1;
  }

  return shouldUseDeleteAndAddInsteadOfMoveBetweenCalendars;
}

- (BOOL)hasCalendarChangeThatRequiresDeleteAndAdd
{
  v3 = *MEMORY[0x1E6992570];
  v4 = [(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992570]];
  if (v4)
  {
    calendar = [(EKCalendarItem *)self calendar];
    v6 = [(EKObject *)self _previousValueForKey:v3];
    eventStore = [(EKObject *)self eventStore];
    v8 = [v6 meltedObjectInStore:eventStore];

    v9 = [objc_opt_class() _shouldDeleteAndAddForMoveFromCalendar:v8 toCalendar:calendar];
    LOBYTE(v4) = v9;
  }

  return v4;
}

- (void)_moveToCalendar:(id)calendar forSavingItem:(id)item
{
  v56 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  itemCopy = item;
  originalItem = [(EKCalendarItem *)self originalItem];
  v9 = originalItem;
  if (!originalItem)
  {
    v10 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E6992570]];
    eventStore = [(EKObject *)self eventStore];
    v12 = [v10 meltedObjectInStore:eventStore];

    if ([v12 isEqual:calendarCopy])
    {
LABEL_27:

      goto LABEL_28;
    }

    v39 = v12;
    if ([objc_opt_class() _shouldDeleteAndAddForMoveFromCalendar:v12 toCalendar:calendarCopy])
    {
      if (_moveToCalendar_forSavingItem__onceToken != -1)
      {
        [EKCalendarItem _moveToCalendar:forSavingItem:];
      }

      detachedItems = [(EKCalendarItem *)self detachedItems];
      v14 = [detachedItems count];

      v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14 + 1];
      v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v14];
      changeSet = [(EKObject *)itemCopy changeSet];
      v18 = [changeSet copy];
      [v18 removeAllChangesExceptRemovals];
      copyMeltedObjectCache = [(EKObject *)itemCopy copyMeltedObjectCache];
      v38 = v18;
      [(EKObject *)itemCopy setChangeSet:v18];
      [(EKObject *)itemCopy _resetAfterUpdatingChangeSetOrBackingObject];
      [(EKCalendarItem *)itemCopy setCalendar:calendarCopy];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __48__EKCalendarItem__moveToCalendar_forSavingItem___block_invoke_2;
      v50[3] = &unk_1E77FDD50;
      v20 = v15;
      v51 = v20;
      selfCopy = self;
      v21 = itemCopy;
      v53 = v21;
      v22 = v16;
      v54 = v22;
      [(EKCalendarItem *)self _recursivelyPerformBlockOnSelfAndDetachedItems:v50 forSavingItem:v21];
      [(EKObject *)v21 updatePersistentObject];
      [(EKObject *)v21 setChangeSet:changeSet];
      [(EKObject *)v21 _resetAfterUpdatingChangeSetOrBackingObject];
      [(EKObject *)v21 augmentMeltedObjectCache:copyMeltedObjectCache];
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

    [(EKCalendarItem *)self _setCalendarRecursively:calendarCopy forSavingItem:itemCopy];
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
          eventStore2 = [(EKObject *)self eventStore];
          [eventStore2 _deleteObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v25);
    }

    if (self != itemCopy)
    {
      eventStore3 = [(EKObject *)self eventStore];
      [eventStore3 _addObjectToPendingCommits:self];
    }

    eventStore4 = [(EKObject *)self eventStore];
    v12 = v39;
    if ([eventStore4 eventAccessLevel] == 1)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v34 = 0;
        goto LABEL_26;
      }

      eventStore4 = [(EKObject *)self eventStore];
      cADObjectID = [(EKObject *)self CADObjectID];
      v34 = [eventStore4 cachedConstraintsForEventOrSourceWithCADObjectID:cADObjectID];
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
    v42 = calendarCopy;
    v43 = v34;
    v35 = itemCopy;
    v44 = v35;
    v36 = v34;
    [(EKCalendarItem *)self _recursivelyPerformBlockOnSelfAndDetachedItems:v40 forSavingItem:v35];
    [(EKCalendarItem *)self _updatePersistentObjectOfSelfAndDetachedItemsExceptForSavingItem:v35];

    goto LABEL_27;
  }

  [originalItem _moveToCalendar:calendarCopy forSavingItem:itemCopy];
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

- (void)_updatePersistentObjectOfSelfAndDetachedItemsExceptForSavingItem:(id)item
{
  itemCopy = item;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__EKCalendarItem__updatePersistentObjectOfSelfAndDetachedItemsExceptForSavingItem___block_invoke;
  v6[3] = &unk_1E77FDD78;
  v7 = itemCopy;
  v5 = itemCopy;
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

- (void)_setCalendarRecursively:(id)recursively forSavingItem:(id)item
{
  recursivelyCopy = recursively;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__EKCalendarItem__setCalendarRecursively_forSavingItem___block_invoke;
  v8[3] = &unk_1E77FDD78;
  v9 = recursivelyCopy;
  v7 = recursivelyCopy;
  [(EKCalendarItem *)self _recursivelyPerformBlockOnSelfAndDetachedItems:v8 forSavingItem:item];
}

void __56__EKCalendarItem__setCalendarRecursively_forSavingItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setCalendar:v2];
  [v3 _resetFieldsAfterMovingToNewCalendar];
}

- (void)_recursivelyPerformBlockOnSelfAndDetachedItems:(id)items forSavingItem:(id)item
{
  v22 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  itemCopy = item;
  selfCopy = self;
  v9 = selfCopy;
  if ([(EKObject *)selfCopy isEqual:itemCopy])
  {
    v9 = itemCopy;
  }

  detachedItems = [(EKCalendarItem *)selfCopy detachedItems];
  itemsCopy[2](itemsCopy, v9);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = detachedItems;
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

        [*(*(&v17 + 1) + 8 * v15++) _recursivelyPerformBlockOnSelfAndDetachedItems:itemsCopy forSavingItem:{itemCopy, v17}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setOriginalItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v4 = objc_opt_class();
    if (v4 != objc_opt_class())
    {
      [EKCalendarItem setOriginalItem:];
    }
  }

  -[EKObject updateMeltedAndCachedSingleRelationObject:forKey:frozenClass:](self, "updateMeltedAndCachedSingleRelationObject:forKey:frozenClass:", itemCopy, *MEMORY[0x1E6992630], [objc_opt_class() frozenClass]);
}

- (void)_deleteSelfAndDetached
{
  persistentObject = [(EKObject *)self persistentObject];
  [(EKCalendarItem *)self _deletePersistentItemAndDetachedItems:persistentObject forSavingItem:self];
}

- (id)exceptionDates
{
  ekExceptionDates = [(EKCalendarItem *)self ekExceptionDates];
  v3 = [ekExceptionDates valueForKey:@"date"];

  return v3;
}

- (id)exceptionDatesAdjustedForFloatingEvents
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(EKCalendarItem *)self isFloating]&& ![(EKCalendarItem *)self isAllDay])
  {
    exceptionDates = [(EKCalendarItem *)self exceptionDates];
    exceptionDates2 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(exceptionDates, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = exceptionDates;
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
          timeZone = [(EKCalendarItem *)self timeZone];
          v12 = timeZone;
          if (timeZone)
          {
            timeZone2 = timeZone;
          }

          else
          {
            eventStore = [(EKObject *)self eventStore];
            timeZone2 = [eventStore timeZone];
          }

          v15 = [v10 dateInTimeZone:timeZone2 fromTimeZone:0];
          [exceptionDates2 addObject:v15];
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }
  }

  else
  {
    exceptionDates2 = [(EKCalendarItem *)self exceptionDates];
  }

  v16 = *MEMORY[0x1E69E9840];

  return exceptionDates2;
}

- (void)setExceptionDates:(id)dates
{
  v20 = *MEMORY[0x1E69E9840];
  datesCopy = dates;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(datesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = datesCopy;
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

- (void)_addExceptionDate:(id)date
{
  dateCopy = date;
  v5 = [[EKExceptionDate alloc] initWithDate:dateCopy];

  [(EKObject *)self addCachedMeltedObject:v5 forMultiValueKey:*MEMORY[0x1E69925A0]];
}

- (void)_removeExceptionDate:(id)date
{
  v20 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  ekExceptionDates = [(EKCalendarItem *)self ekExceptionDates];
  v6 = [ekExceptionDates countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(ekExceptionDates);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      date = [v10 date];
      v12 = [date isEqualToDate:dateCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [ekExceptionDates countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    ekExceptionDates = v13;
  }

LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_deletePersistentItemAndDetachedItems:(id)items forSavingItem:(id)item
{
  itemsCopy = items;
  [(EKCalendarItem *)self _recursivelyPerformBlockOnSelfAndDetachedItems:&__block_literal_global_130 forSavingItem:item];
  eventStore = [(EKObject *)self eventStore];
  [eventStore _deleteObject:itemsCopy];
}

- (void)_updateModifiedAlarmByAcknowledging
{
  isOnlyAlarmAcknowledgedPropertyDirty = [(EKCalendarItem *)self isOnlyAlarmAcknowledgedPropertyDirty];
  modifiedProperties = [(EKCalendarItem *)self modifiedProperties];
  if (isOnlyAlarmAcknowledgedPropertyDirty)
  {
    v5 = modifiedProperties | 0x1000;
  }

  else
  {
    if ((modifiedProperties & 0x1000) == 0)
    {
      return;
    }

    v5 = [(EKCalendarItem *)self modifiedProperties]& 0xFFFFEFFFLL;
  }

  [(EKCalendarItem *)self setModifiedProperties:v5];
}

- (void)_willSave
{
  uniqueID = [(EKCalendarItem *)self uniqueID];

  if (!uniqueID)
  {
    _generateNewUniqueID = [(EKCalendarItem *)self _generateNewUniqueID];
    [(EKCalendarItem *)self setUniqueID:_generateNewUniqueID];
  }
}

+ (id)timeZoneNameFromTimeZone:(id)zone
{
  if (zone)
  {
    name = [zone name];
  }

  else
  {
    name = @"_float";
  }

  return name;
}

+ (id)timeZoneFromTimeZoneName:(id)name withFloatingTimeZone:(id)zone
{
  nameCopy = name;
  zoneCopy = zone;
  if (nameCopy && ![nameCopy isEqualToString:@"_float"])
  {
    v7 = EKCachedTimeZoneWithName();
  }

  else
  {
    v7 = zoneCopy;
  }

  v8 = v7;

  return v8;
}

+ (BOOL)canonicalizedEqualityTestValue1:(id)value1 value2:(id)value2 key:(id)key object1:(id)object1 object2:(id)object2
{
  value1Copy = value1;
  value2Copy = value2;
  keyCopy = key;
  object1Copy = object1;
  object2Copy = object2;
  if ([keyCopy isEqualToString:*MEMORY[0x1E6992608]])
  {
    v17 = 1;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = &OBJC_METACLASS___EKCalendarItem;
    v17 = objc_msgSendSuper2(&v19, sel_canonicalizedEqualityTestValue1_value2_key_object1_object2_, value1Copy, value2Copy, keyCopy, object1Copy, object2Copy);
  }

  return v17;
}

- (void)updateWithVCSEntity:(id)entity inCalendar:(id)calendar
{
  v83 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  calendarCopy = calendar;
  timeZone = [(EKCalendarItem *)self timeZone];
  v8 = timeZone;
  if (timeZone)
  {
    timeZone2 = timeZone;
  }

  else
  {
    eventStore = [(EKObject *)self eventStore];
    timeZone2 = [eventStore timeZone];
  }

  v67 = calendarCopy;
  [(EKCalendarItem *)self setCalendar:calendarCopy];
  v11 = [entityCopy propertyForName:@"DESCRIPTION"];
  singleValue = [v11 singleValue];
  value = [singleValue value];
  [(EKCalendarItem *)self setNotes:value];

  v14 = [entityCopy propertyForName:@"SEQUENCE"];
  singleValue2 = [v14 singleValue];
  value2 = [singleValue2 value];
  -[EKCalendarItem setSequenceNumber:](self, "setSequenceNumber:", [value2 intValue]);

  v17 = [entityCopy propertyForName:@"CREATED"];
  singleValue3 = [v17 singleValue];
  value3 = [singleValue3 value];

  v66 = value3;
  v72 = timeZone2;
  v20 = [value3 nsDateWithLocalTimeZone:timeZone2];
  [(EKCalendarItem *)self setCreationDate:v20];

  v21 = [entityCopy propertyForName:@"SUMMARY"];
  singleValue4 = [v21 singleValue];
  value4 = [singleValue4 value];
  v24 = value4;
  if (value4)
  {
    v25 = value4;
  }

  else
  {
    v25 = &stru_1F1B49D68;
  }

  [(EKCalendarItem *)self setTitle:v25];

  v26 = [entityCopy propertyForName:@"URL"];
  singleValue5 = [v26 singleValue];
  value5 = [singleValue5 value];
  selfCopy = self;
  [(EKCalendarItem *)self setURL:value5];

  v29 = MEMORY[0x1E695DF70];
  alarms = [entityCopy alarms];
  v71 = [v29 arrayWithCapacity:{objc_msgSend(alarms, "count")}];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  alarms2 = [entityCopy alarms];
  v32 = [alarms2 countByEnumeratingWithState:&v77 objects:v82 count:16];
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
          objc_enumerationMutation(alarms2);
        }

        v36 = *(*(&v77 + 1) + 8 * i);
        triggerType = [v36 triggerType];
        if (triggerType == 1)
        {
          [v36 triggerDuration];
          v40 = [EKAlarm alarmWithRelativeOffset:?];
        }

        else if (triggerType)
        {
          v40 = 0;
        }

        else
        {
          triggerDate = [v36 triggerDate];
          v39 = [triggerDate nsDateWithLocalTimeZone:timeZone2];

          v40 = [EKAlarm alarmWithAbsoluteDate:v39];
        }

        alarmType = [v36 alarmType];
        if (alarmType <= 3)
        {
          [v40 setType:qword_1A81C3B98[alarmType]];
        }

        if ([v40 type] != 3 && objc_msgSend(v40, "type") != 2)
        {
          [v71 addObject:v40];
        }
      }

      v33 = [alarms2 countByEnumeratingWithState:&v77 objects:v82 count:16];
    }

    while (v33);
  }

  [(EKCalendarItem *)selfCopy setAlarms:v71];
  v42 = [entityCopy propertyForName:@"ATTACH"];
  values = [v42 values];

  v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(values, "count")}];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v45 = values;
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
        value6 = [v52 value];
        [v53 setURL:value6];

        fileNameRaw = [v53 fileNameRaw];
        v56 = [fileNameRaw length];

        if (!v56)
        {
          if (v48 == 1)
          {
            mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
            v58 = [mainBundle localizedStringForKey:@"Attachment" value:&stru_1F1B49D68 table:0];
          }

          else
          {
            v59 = MEMORY[0x1E696AEC0];
            mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
            [mainBundle localizedStringForKey:@"Attachment %lu" value:&stru_1F1B49D68 table:0];
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

  [(EKCalendarItem *)selfCopy setAttachments:v44];
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

- (void)snoozeAlarm:(id)alarm withTimeIntervalFromNow:(double)now pinsTriggerToStartDate:(BOOL)date
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
  selfCopy = self;
  v4 = 138543362;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_error_impl(&dword_1A805E000, selfCopy, OS_LOG_TYPE_ERROR, "selfAttendee is not an attendee; it's a %{public}@. Ignoring invalid selfAttendee and pretending there is no self attendee.", &v4, 0xCu);

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