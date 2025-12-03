@interface EKEvent
+ (BOOL)_calendarsAreSharedToMeInSameSourceAndHaveSameOwner:(id)owner;
+ (BOOL)_notDetachedOccurrenceOfEvent:(id)event existsInDateRangeWithStartDate:(id)date endDate:(id)endDate inTimeZone:(id)zone;
+ (BOOL)_validateSpanForRemove:(int64_t)remove error:(id *)error;
+ (BOOL)isMultiDayTimedEventWithStartDate:(id)date endDate:(id)endDate allDay:(BOOL)day inCalendar:(id)calendar;
+ (EKEvent)eventWithEventStore:(EKEventStore *)eventStore;
+ (id)EKObjectChangeSummarizer_multiValueDiffKeys;
+ (id)EKObjectChangeSummarizer_singleValueDiffKeys;
+ (id)_basicChangesRequiringSpanAll;
+ (id)_locationStringForLocations:(id)locations;
+ (id)_modifiedNotificationUserInfoWithIdentifier:(id)identifier forRevert:(BOOL)revert;
+ (id)_relatedCachedTimeKeys;
+ (id)eventFromICSEvent:(id)event inStore:(id)store;
+ (id)generateUniqueIDWithEvent:(id)event originalEvent:(id)originalEvent calendar:(id)calendar;
+ (id)knownKeysToSkipForFutureChanges;
+ (id)knownKeysToUseForFutureChanges;
+ (id)knownPerUserPropertyKeys;
+ (id)knownRelationshipMultiValueKeys;
+ (id)knownRelationshipSingleValueKeys;
+ (id)knownRequireRSVPKeys;
+ (id)knownSingleValueKeysForComparison;
+ (id)uniqueIDForDetachedOccurrenceOfEvent:(id)event withOriginalStartDate:(id)date timeZone:(id)zone allDay:(BOOL)day;
+ (int64_t)_coercedEventAvailabilityForDesiredAvailability:(int64_t)availability supportedAvailabilities:(unint64_t)availabilities;
+ (int64_t)_eventAvailabilityForParticipantStatus:(int64_t)status supportedEventAvailabilities:(unint64_t)availabilities isAllDayEvent:(BOOL)event;
+ (int64_t)ekWeekDayFromVCSWeekDay:(unint64_t)day;
+ (void)_detachOrSliceEvent:(id)event withSpan:(int64_t)span savingEvent:(id)savingEvent withOriginalStartDate:(id)date newStartDate:(id)startDate;
- (BOOL)_attemptToUpdateComplexRecurrenceRule;
- (BOOL)_canMoveOrCopyFromCalendar:(id)calendar toCalendar:(id)toCalendar allowedRequirements:(int64_t)requirements error:(id *)error;
- (BOOL)_cancelWithSpan:(int64_t)span error:(id *)error;
- (BOOL)_changesRequireDetachOrSlice;
- (BOOL)_checkStartDateConstraintAgainstDate:(id)date timeZone:(id)zone error:(id *)error;
- (BOOL)_couldBeJunkCommon;
- (BOOL)_detectedConferenceURLOnBackingObjectMayBeInvalid;
- (BOOL)_diff:(id)_diff isDifferentFromCommittedEventHelperRequiresReschedule:(BOOL)reschedule;
- (BOOL)_eligibleForTravelAdvisoriesIncludePotential:(BOOL)potential;
- (BOOL)_eventIsTheOnlyRemainingOccurrence;
- (BOOL)_fetchedEventIsConflict:(id)conflict forStartDate:(id)date endDate:(id)endDate;
- (BOOL)_hasAbsoluteAlarms;
- (BOOL)_hasBasicChangesRequiringSpanAll;
- (BOOL)_hasExternalIDOrDeliverySource;
- (BOOL)_hasOrHadRecurrenceRule;
- (BOOL)_hasRecurrenceRuleChangeRequiringSpanAll;
- (BOOL)_isAllDay;
- (BOOL)_isOnlyChangeToAttendeesSelfAttendeeParticipationStatus;
- (BOOL)_isOriginalOccurrenceStartDateSameAsCommittedStartDate;
- (BOOL)_isParticipationStatusDirty;
- (BOOL)_isSignificantlyDetachedComparedToMaster:(id)master shouldIgnorePartStat:(BOOL)stat;
- (BOOL)_isSimpleRepeatingEvent;
- (BOOL)_isValidAttendee:(id)attendee forCalendar:(id)calendar selfAttendeeIsValid:(BOOL)valid;
- (BOOL)_multiValueRelatedObject:(id)object isAlsoASingleValueRelatedObjectForKey:(id)key;
- (BOOL)_needsAttendeePartStatReset;
- (BOOL)_noRemainingEarlierOccurrences;
- (BOOL)_occurrenceExistsOnDate:(id)date timeZone:(id)zone;
- (BOOL)_requirementsToMoveOrCopyToCalendarHelperAllowedToMoveOrCopyEventFromCalendar:(id)calendar toCalendar:(id)toCalendar;
- (BOOL)_requirementsToMoveToCalendarHelperAlterationsRequiredToMoveEventFromCalendar:(id)calendar toCalendar:(id)toCalendar;
- (BOOL)_requirementsToMoveToCalendarHelperDuplicationRequiredToMoveEventFromCalendar:(id)calendar toCalendar:(id)toCalendar;
- (BOOL)_requirementsToMoveToCalendarHelperNeedToRemoveOriginalToMoveEventFromCalendar:(id)calendar toCalendar:(id)toCalendar;
- (BOOL)_requirementsToMoveToCalendarHelperReinviteAttendeesRequiredToMoveEventFromCalendar:(id)calendar toCalendar:(id)toCalendar;
- (BOOL)_requirementsToMoveToCalendarHelperRemoveAttendeesRequiredToMoveEventFromCalendar:(id)calendar toCalendar:(id)toCalendar;
- (BOOL)_reset;
- (BOOL)_revertIncludingCoCommits:(BOOL)commits;
- (BOOL)_saveUndetachedOccurrenceWithError:(id *)error;
- (BOOL)_shouldAlertInviteeDeclines;
- (BOOL)_shouldCancelInsteadOfDeleteWithSpan:(int64_t)span;
- (BOOL)_shouldDeclineInsteadOfDelete;
- (BOOL)_shouldPreserveFutureWhenSlicingWithStartDate:(id)date newStartDate:(id)startDate;
- (BOOL)_suggestedStartDateHelperRecurrenceRuleRequiresExpansion:(id)expansion forDate:(id)date;
- (BOOL)_userAddressesRepresentInvitedAttendee:(id)attendee checkEmailAddresses:(BOOL)addresses;
- (BOOL)_validateDatesAndRecurrencesGivenSpan:(int64_t)span error:(id *)error;
- (BOOL)allowsAllDayModifications;
- (BOOL)allowsAttendeesModifications;
- (BOOL)allowsAvailabilityModifications;
- (BOOL)allowsCalendarModifications;
- (BOOL)allowsClearingCommentsAsOrganizer;
- (BOOL)allowsParticipationStatusModifications;
- (BOOL)allowsPrivacyLevelModifications;
- (BOOL)allowsProposedTimeModifications;
- (BOOL)allowsRecurrenceModificationsForSpan:(int64_t)span;
- (BOOL)allowsResponseCommentModifications;
- (BOOL)allowsSpansOtherThanThisEvent;
- (BOOL)allowsTravelTimeModifications;
- (BOOL)automaticLocationGeocodingAllowed;
- (BOOL)canDetachSingleOccurrence;
- (BOOL)canForward;
- (BOOL)canWeInferUpdateToComplexRecurrenceRule;
- (BOOL)changingAllDayPropertyIsAllowed;
- (BOOL)conferenceURLForDisplayCached;
- (BOOL)conformsToRecurrenceRules:(id)rules;
- (BOOL)currentUserMayActAsOrganizer;
- (BOOL)disallowProposeNewTime;
- (BOOL)durationOverlapsRecurrenceInterval;
- (BOOL)firedTTL;
- (BOOL)futureOccurrencesCannotBeAffectedByChangingStartDateToDate:(id)date;
- (BOOL)hasADateChangeAndComplexRecurrenceWeDontKnowHowToUpdate;
- (BOOL)hasAttendeeProposedTimes;
- (BOOL)hasChangesRequiringSpanAll;
- (BOOL)hasCustomRecurrence;
- (BOOL)hasPredictedLocation;
- (BOOL)hasValidEventAction;
- (BOOL)isAttendeeSameAsOrganizer:(id)organizer;
- (BOOL)isBirthday;
- (BOOL)isCurrentUserInvitedAttendee;
- (BOOL)isDetached;
- (BOOL)isDifferentAndHasForwardedAttendeesWithDiff:(id)diff;
- (BOOL)isDifferentAndHasNewProposedTimeWithDiff:(id)diff;
- (BOOL)isDifferentAndHasUnscheduledAttendeesWithDiff:(id)diff;
- (BOOL)isDifferentAndModifiedAttendeesWithDiff:(id)diff;
- (BOOL)isDifferentExceptingPerUserPropertiesWithDiff:(id)diff;
- (BOOL)isDifferentFromCommittedEventAndHasUnscheduledAttendees;
- (BOOL)isDifferentFromCommittedEventAndRequiresRSVP;
- (BOOL)isDifferentFromCommittedEventAndRequiresReschedule;
- (BOOL)isEditable;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFirstOccurrence;
- (BOOL)isFirstOccurrenceIncludingSlices;
- (BOOL)isFloating;
- (BOOL)isMasterOrDetachedOccurrence;
- (BOOL)isMultiDayTimedEventInCalendar:(id)calendar;
- (BOOL)isNewRecurringSeries;
- (BOOL)isOrWasIntegrationEvent;
- (BOOL)isOrWasPartOfRecurringSeries;
- (BOOL)isOriginalItemPhantom;
- (BOOL)isOutOfOrderWithEventInSeries;
- (BOOL)isPhantom;
- (BOOL)isPrivateEventSharedToMe;
- (BOOL)isProposedTimeEvent;
- (BOOL)isSignificantlyDetached;
- (BOOL)isSignificantlyDetachedIgnoringParticipation;
- (BOOL)isTentative;
- (BOOL)isUndetached;
- (BOOL)locationIsAConferenceRoom;
- (BOOL)needsGeocoding;
- (BOOL)overlapsWithOrIsSameDayAsEventInSeries;
- (BOOL)refresh;
- (BOOL)removeWithSpan:(int64_t)span error:(id *)error;
- (BOOL)requiresDetach;
- (BOOL)responseMustApplyToAll;
- (BOOL)saveWithSpan:(int64_t)span error:(id *)error;
- (BOOL)seriesHasOutOfOrderEvents;
- (BOOL)seriesHasOverlappingOrOnSameDayOrOutOfOrderEvents;
- (BOOL)serverSupportedProposeNewTime;
- (BOOL)shouldHaveDefaultAlarms;
- (BOOL)supportsAddingAttachments;
- (BOOL)supportsJunkReporting;
- (BOOL)supportsParticipationStatusModificationsWithoutNotification;
- (BOOL)travelAdvisoryBehaviorIsEffectivelyEnabled;
- (BOOL)updateWithGeocodedMapItemAndSaveWithCommit:(id)commit eventStore:(id)store error:(id *)error;
- (BOOL)validateOccurrenceDateStillMatchesRecurrenceRules;
- (BOOL)validateRecurrenceRule:(id)rule error:(id *)error;
- (BOOL)validateWithSpan:(int64_t)span error:(id *)error;
- (EKCalendarDate)originalOccurrenceEndDate;
- (EKCalendarDate)originalOccurrenceStartDate;
- (EKCalendarDate)startCalendarDateIncludingTravelTime;
- (EKEvent)init;
- (EKEvent)initWithEventStore:(id)store;
- (EKEvent)initWithPersistentObject:(id)object objectForCopy:(id)copy;
- (EKEvent)initWithPersistentObject:(id)object occurrenceDate:(id)date;
- (EKEventAvailability)availability;
- (EKEventStatus)status;
- (EKRecurrenceIdentifier)recurrenceIdentifier;
- (EKStructuredLocation)preferredLocationWithoutPrediction;
- (EKStructuredLocation)structuredLocation;
- (EKVirtualConference)virtualConference;
- (NSArray)locations;
- (NSArray)locationsWithoutPrediction;
- (NSComparisonResult)compareStartDateWithEvent:(EKEvent *)other;
- (NSDate)endDateUnadjustedForLegacyClients;
- (NSDate)initialEndDate;
- (NSDate)initialStartDate;
- (NSDate)occurrenceDate;
- (NSDate)proposedEndDate;
- (NSDate)proposedStartDate;
- (NSDate)recurrenceDate;
- (NSDate)startDateIncludingTravel;
- (NSDateComponents)startDateComponents;
- (NSInteger)birthdayPersonID;
- (NSString)appEntityIdentifier;
- (NSString)description;
- (NSString)eventIdentifier;
- (NSString)eventOccurrenceID;
- (NSString)locationWithoutPrediction;
- (NSString)sendersEmail;
- (NSString)sendersPhoneNumber;
- (NSString)virtualConferenceTextRepresentation;
- (NSURL)conferenceURL;
- (NSURL)externalURL;
- (NSURL)launchURL;
- (double)duration;
- (double)durationIncludingTravel;
- (double)travelTime;
- (id)URL;
- (id)_adjustDateIfFloatingForDate:(id)date;
- (id)_buildConferenceStringFromNotesWithoutConference:(id)conference serializedConference:(id)serializedConference;
- (id)_cachedPredictedLocation;
- (id)_calculateDurationWithStart:(id)start end:(id)end allDay:(BOOL)day;
- (id)_committedEndDate;
- (id)_committedStartDate;
- (id)_conferenceRoomDisplayStrings;
- (id)_defaultAlarmOffset;
- (id)_detectConferenceURL;
- (id)_ekRecurrenceRuleFromICSRecurrenceRule:(id)rule;
- (id)_ekRecurrenceRuleFromVCSRecurrenceRule:(id)rule;
- (id)_eventKitPropertyKeyForCalendarItemErrorPropertyKey:(id)key;
- (id)_firstNonConferenceRoomLocationTitle;
- (id)_generateNewUniqueID;
- (id)_keysToChangeForDuplicateWithOptions:(int64_t)options;
- (id)_lastRecurrenceDate;
- (id)_leftoversInDates:(id)dates withGeneratedDates:(id)generatedDates;
- (id)_nextReminderOccurrenceDate;
- (id)_nsCalendar;
- (id)_occurrenceDatesForCount:(unint64_t)count;
- (id)_originallyCommittedVirtualConference;
- (id)_pinDate:(id)date withPinMode:(unint64_t)mode;
- (id)_prioritizedConferencesSources;
- (id)_travelTimeInternalDescription;
- (id)_updateMasterDate:(id)date forChangeToOccurrenceDate:(id)occurrenceDate fromOriginalOccurrenceDate:(id)originalOccurrenceDate;
- (id)adjustedPersistedDateForDate:(id)date withAdjustmentMode:(unint64_t)mode pinMode:(unint64_t)pinMode clientCalendarDate:(id *)calendarDate;
- (id)attendeesNotIncludingOrganizer;
- (id)attendeesNotIncludingOrganizerOrLocationsOrResources;
- (id)cachedPredictedLocation;
- (id)coCommitEvents;
- (id)committedConstraints;
- (id)committedCopy;
- (id)committedValueForKey:(id)key;
- (id)conferenceURLDetected;
- (id)conferenceURLForDisplay;
- (id)constraints;
- (id)copyToCalendar:(id)calendar withOptions:(int64_t)options;
- (id)defaultAlarm;
- (id)defaultAlarms;
- (id)diffFromCommitted;
- (id)displayNotes;
- (id)duplicateWithOptions:(int64_t)options;
- (id)earliestOccurrenceEndingAfter:(id)after excludeSignificantDetachments:(BOOL)detachments excludeCanceledDetachments:(BOOL)canceledDetachments excludeDeclinedDetachments:(BOOL)declinedDetachments;
- (id)effectiveTimeZone;
- (id)masterEvent;
- (id)nextOccurrence;
- (id)nextOccurrenceOrDetachmentAfter:(id)after;
- (id)potentialConflictOccurrenceDatesInTimePeriod:(double *)period;
- (id)predictedLocation;
- (id)previousOccurrence;
- (id)previousOccurrenceOrDetachmentBefore:(id)before;
- (id)previouslySavedCopy;
- (id)privacyDescription;
- (id)privacyLevelString;
- (id)privacySafeIntegrationEventDescription;
- (id)propertiesThatCanBeModifiedOnReadOnlyCalendars;
- (id)recurrenceRule;
- (id)roomAttendees;
- (id)scanForConflicts;
- (id)singleRecurrenceRule;
- (id)snapshotCopyWithPropertyKeysToCopy:(id)copy propertyKeysToSkip:(id)skip;
- (id)startOfDayForEndDateInCalendar:(id)calendar;
- (id)startOfDayForStartDateInCalendar:(id)calendar;
- (id)suggestedStartDateForCurrentRecurrenceRuleWithSimulatedNowDate:(id)date;
- (id)title;
- (int)externalTrackingStatus;
- (int64_t)_parentParticipationStatus;
- (int64_t)compareOriginalStartDateWithEvent:(id)event;
- (int64_t)compareStartDateIncludingTravelWithEvent:(id)event;
- (int64_t)currentUserGeneralizedParticipantRole;
- (int64_t)daysSpannedInCalendar:(id)calendar;
- (int64_t)locationPredictionState;
- (int64_t)participationStatus;
- (int64_t)pendingParticipationStatus;
- (int64_t)privacyLevel;
- (int64_t)requirementsToMoveFromCalendar:(id)calendar toCalendar:(id)toCalendar;
- (int64_t)requirementsToMoveToCalendar:(id)calendar;
- (int64_t)selfParticipantStatus;
- (int64_t)specialDayType;
- (int64_t)travelAdvisoryBehavior;
- (int64_t)travelRoutingMode;
- (unint64_t)_integrationType;
- (unint64_t)cachedJunkStatus;
- (unint64_t)countOfAttendeeProposedTimes;
- (unint64_t)flags;
- (unint64_t)hash;
- (unint64_t)invitationStatus;
- (unint64_t)junkStatus;
- (unint64_t)reminderOccurrenceType;
- (unsigned)invitationChangedProperties;
- (void)_addNewAttendeesToRecentsIfNeeded;
- (void)_addOrganizerToRecentsIfNeeded;
- (void)_adjustAfterMovingOrCopyingFromOldCalendar:(id)calendar toNewCalendar:(id)newCalendar cachedConstraintsForOldCalendar:(id)oldCalendar savingItem:(id)item;
- (void)_adjustAttachmentsAfterMovingOrCopyingFromCalendar:(id)calendar toCalendar:(id)toCalendar cachedConstraintsForOldCalendar:(id)oldCalendar savingItem:(id)item;
- (void)_adjustAttendeesAfterMovingOrCopyingFromCalendar:(id)calendar toCalendar:(id)toCalendar;
- (void)_adjustAvailabilityAfterMovingOrCopyingFromCalendar:(id)calendar toCalendar:(id)toCalendar;
- (void)_adjustExternalFieldsAfterMovingOrCopyingFromCalendar:(id)calendar toCalendar:(id)toCalendar cachedConstraintsForOldCalendar:(id)oldCalendar;
- (void)_adjustPrivacyAfterMovingOrCopyingFromCalendar:(id)calendar toCalendar:(id)toCalendar cachedConstraintsForOldCalendar:(id)oldCalendar savingItem:(id)item;
- (void)_adjustRecurrenceRulesAfterMovingOrCopyingFromCalendar:(id)calendar toCalendar:(id)toCalendar notes:(id)notes;
- (void)_adjustTimeZoneAfterMovingOrCopyingToCalendar:(id)calendar notes:(id)notes;
- (void)_adjustURLAfterMovingOrCopyingToCalendar:(id)calendar notes:(id)notes;
- (void)_applyTimeChangesToMaster;
- (void)_assignAllAttachmentsNewIdentities;
- (void)_cancelDetachedEvents;
- (void)_clearAttendeeChangedFlags;
- (void)_clearExceptionDatesAndUpdateDetachedOriginalDates:(id)dates;
- (void)_clearLocationPredictionCacheIfNotFrozen;
- (void)_clearLocationPredictionCacheIfNotFrozenHoldingLock;
- (void)_clearOriginalDateFields;
- (void)_deleteErrorIfInvalid;
- (void)_deleteFromOccurrenceDateOnward:(id)onward includeSlices:(BOOL)slices;
- (void)_deleteThisOccurrence;
- (void)_deleteWithSpan:(int64_t)span;
- (void)_detachOrSliceWithSpan:(int64_t)span withOriginalStartDate:(id)date newStartDate:(id)startDate;
- (void)_duplicateAddedAttachmentsToDetachedEvents:(id)events;
- (void)_extendConferenceURLExpirationDateToDate:(id)date;
- (void)_filterExceptionDatesAndDetachments;
- (void)_hasRecurrenceRuleChangeRequiringSpanAll;
- (void)_propagateChangesToDetachedEvents:(id)events originalItemBeforeSave:(id)save startDateOffset:(id)offset duration:(id)duration calendar:(id)calendar;
- (void)_propagateChangesToSlice:(id)slice originalItemBeforeSave:(id)save startDateOffset:(id)offset duration:(id)duration calendar:(id)calendar updateRecurrenceEnd:(BOOL)end;
- (void)_recursivelyAssignAllAttachmentsNewIdentities;
- (void)_removeInvalidAlarmsDuringSave;
- (void)_respondToProposedTimeFromAttendee:(id)attendee shouldAccept:(BOOL)accept;
- (void)_saveUndeletedDetachedOccurrence;
- (void)_setEndDateUnadjustedForLegacyClients:(id)clients allowSettingIfNotEditable:(BOOL)editable;
- (void)_setInvitationChangedProperty:(BOOL)property forFlag:(unsigned int)flag;
- (void)_setInvitationStatusAlertedIfNecessary;
- (void)_setInvitationStatusUnalertedIfNecessary;
- (void)_setStartDate:(id)date andClearProposedTimes:(BOOL)times allowSettingIfNotEditable:(BOOL)editable;
- (void)_snoozeAlarm:(id)alarm withTimeIntervalFromNow:(double)now orTargetDate:(id)date pinsTriggerToStartDate:(BOOL)startDate;
- (void)_updateEndDateForDate:(id)date withAdjustmentMode:(unint64_t)mode adjustStartDate:(BOOL)startDate;
- (void)_updateModifiedProperties;
- (void)_updateModifiedPropertiesForThisEventAndAllDetachments;
- (void)_updateRecurrenceEndDateForEvent:(id)event calendar:(id)calendar withOffset:(id)offset;
- (void)_updateRecurrenceEndDatesWithAdjustmentMode:(unint64_t)mode;
- (void)_updateSelfAttendeeToMatchSelfAttendee:(id)attendee;
- (void)_updateSelfFromDetachedEventIfNeededForDelete;
- (void)_updateStartDateForDate:(id)date withAdjustmentMode:(unint64_t)mode adjustEndDate:(BOOL)endDate;
- (void)_updateUUIDForNewParticipants;
- (void)_updateVideoConferenceOnlyModified;
- (void)_willSave;
- (void)addConferenceRooms:(id)rooms;
- (void)adjustedDatesForDate:(id)date persistedDateIsInUTC:(BOOL)c withAdjustmentMode:(unint64_t)mode pinMode:(unint64_t)pinMode outClientCalendarDate:(id *)calendarDate outPersistedDate:(id *)persistedDate;
- (void)applyChangesFromEvent:(id)event toEvent:(id)toEvent ignoringDifferencesFrom:(id)from;
- (void)clearCachedTimeValues;
- (void)clearInvitationStatus;
- (void)clearVirtualConferenceURLsQueuedForInvalidation;
- (void)confirmPredictedLocation:(id)location;
- (void)dismissAcceptedProposeNewTimeNotification;
- (void)dismissAttendeeRepliedNotification;
- (void)forceSetTimeZone:(id)zone;
- (void)invalidateRemovedVirtualConferences;
- (void)invalidateVirtualConferenceURLIfNeededOnCommit:(id)commit;
- (void)makeRecurrenceEndCountBased;
- (void)makeRecurrenceEndDateBased;
- (void)markAsCommitted;
- (void)markAsSaved;
- (void)markAsUndeleted;
- (void)markAsUndetachedWithStartDate:(id)date endDate:(id)endDate;
- (void)markEventAsAttendeeForward;
- (void)parsedConference:(id *)conference andNotes:(id *)notes;
- (void)postModifiedNotification;
- (void)postModifiedNotificationWithUserInfo:(id)info;
- (void)prefetchAttendeesWithAdditionalProperties:(id)properties;
- (void)rebaseSkippingRelationProperties:(id)properties;
- (void)rebaseSkippingRelationProperties:(id)properties toEventStore:(id)store;
- (void)rebaseToEventStore:(id)store;
- (void)rejectPredictedLocation;
- (void)removeConferenceRooms:(id)rooms;
- (void)removeServerRefreshRelatedProperties;
- (void)reset;
- (void)rollback;
- (void)setAvailability:(EKEventAvailability)availability;
- (void)setBirthdayContact:(id)contact;
- (void)setCachedJunkStatus:(unint64_t)status;
- (void)setCalendar:(id)calendar;
- (void)setColor:(id)color;
- (void)setConferenceURL:(id)l;
- (void)setDisplayNotes:(id)notes;
- (void)setEndDateRaw:(id)raw;
- (void)setEndLocation:(id)location;
- (void)setFlag:(unint64_t)flag value:(BOOL)value;
- (void)setFlags:(unint64_t)flags;
- (void)setImage:(id)image;
- (void)setInvitationStatus:(unint64_t)status;
- (void)setIsAlerted:(BOOL)alerted;
- (void)setIsJunk:(BOOL)junk shouldSave:(BOOL)save;
- (void)setJunkStatus:(unint64_t)status;
- (void)setLocationPredictionAllowed:(BOOL)allowed;
- (void)setLocationPredictionState:(int64_t)state;
- (void)setLocations:(id)locations;
- (void)setNotes:(id)notes;
- (void)setNotesCommon:(id)common;
- (void)setParticipationStatus:(int64_t)status;
- (void)setPredictedLocationFrozen:(BOOL)frozen;
- (void)setPrivacyLevel:(int64_t)level;
- (void)setPrivacyLevelWithoutVerifyingPrivacyModificationsAllowed:(int64_t)allowed;
- (void)setProposedStartDate:(id)date;
- (void)setRecurrenceRule:(id)rule;
- (void)setRecurrenceRuleFromICSString:(id)string;
- (void)setRecurrenceRules:(id)rules;
- (void)setSpecialDayType:(int64_t)type;
- (void)setStartDateComponentsPreservingDuration:(id)duration;
- (void)setStartDateRaw:(id)raw;
- (void)setStatus:(int64_t)status;
- (void)setStructuredLocation:(EKStructuredLocation *)structuredLocation;
- (void)setStructuredLocation:(id)location preserveConferenceRooms:(BOOL)rooms;
- (void)setSuggestionInfo:(id)info;
- (void)setTimeZone:(id)zone;
- (void)setTitle:(id)title;
- (void)setTravelAdvisoryBehavior:(int64_t)behavior;
- (void)setTravelTime:(double)time;
- (void)setURL:(id)l;
- (void)setVirtualConference:(id)conference;
- (void)updateDefaultAlarms;
- (void)updateWithVCSEntity:(id)entity inCalendar:(id)calendar;
@end

@implementation EKEvent

- (BOOL)_isAllDay
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992600]];
  v3 = v2;
  if (v2)
  {
    v4 = CFBooleanGetValue(v2) != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isOriginalOccurrenceStartDateSameAsCommittedStartDate
{
  originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
  _committedStartDate = [(EKEvent *)self _committedStartDate];
  [_committedStartDate timeIntervalSinceReferenceDate];
  v6 = v5;

  [originalOccurrenceStartDate absoluteTime];
  v8 = v7;
  v9 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E69926D0]];
  v10 = v9;
  if (!v9 || [v9 isEqualToString:@"_float"])
  {
    v11 = CalTimeZoneCopyCFTimeZone();
    [(EKEvent *)self effectiveTimeZone];
    CalAbsoluteTimeGetAbsoluteTimeInTimeZone();
    v8 = v12;
    CFRelease(v11);
  }

  return vabdd_f64(v8, v6) < 2.22044605e-16;
}

+ (id)knownRelationshipMultiValueKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EKEvent_knownRelationshipMultiValueKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (knownRelationshipMultiValueKeys_onceToken_2 != -1)
  {
    dispatch_once(&knownRelationshipMultiValueKeys_onceToken_2, block);
  }

  v2 = knownRelationshipMultiValueKeys_keys_2;

  return v2;
}

- (BOOL)isFirstOccurrence
{
  if ([(EKObject *)self isNew])
  {
    return 1;
  }

  originalItem = [(EKCalendarItem *)self originalItem];
  if ([(EKCalendarItem *)self hasRecurrenceRules]|| ([(EKCalendarItem *)self originalItem], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if (originalItem)
    {
      originalStartDate = [(EKEvent *)self originalStartDate];
      _committedStartDate = [originalItem _committedStartDate];
      _isOriginalOccurrenceStartDateSameAsCommittedStartDate = [originalStartDate isEqualToDate:_committedStartDate];
    }

    else
    {
      _isOriginalOccurrenceStartDateSameAsCommittedStartDate = [(EKEvent *)self _isOriginalOccurrenceStartDateSameAsCommittedStartDate];
    }
  }

  else
  {
    _isOriginalOccurrenceStartDateSameAsCommittedStartDate = 1;
  }

  return _isOriginalOccurrenceStartDateSameAsCommittedStartDate;
}

- (BOOL)isFloating
{
  timeZone = [(EKCalendarItem *)self timeZone];
  v3 = timeZone == 0;

  return v3;
}

+ (id)knownRelationshipSingleValueKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EKEvent_knownRelationshipSingleValueKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (knownRelationshipSingleValueKeys_onceToken_2 != -1)
  {
    dispatch_once(&knownRelationshipSingleValueKeys_onceToken_2, block);
  }

  v2 = knownRelationshipSingleValueKeys_keys_2;

  return v2;
}

- (BOOL)isDetached
{
  v2 = [(EKObject *)self frozenOrMeltedCachedSingleRelationObjectForKey:*MEMORY[0x1E6992630]];
  v3 = v2 != 0;

  return v3;
}

- (EKCalendarDate)originalOccurrenceStartDate
{
  originalOccurrenceStartDate = self->_originalOccurrenceStartDate;
  if (!originalOccurrenceStartDate)
  {
    originalOccurrenceStartDate = self->_occurrenceStartDate;
  }

  v3 = originalOccurrenceStartDate;

  return v3;
}

- (id)_committedStartDate
{
  v2 = *MEMORY[0x1E69926C8];
  v5.receiver = self;
  v5.super_class = EKEvent;
  v3 = [(EKObject *)&v5 committedValueForKey:v2];

  return v3;
}

- (id)effectiveTimeZone
{
  timeZone = [(EKCalendarItem *)self timeZone];
  if (!timeZone)
  {
    eventStore = [(EKObject *)self eventStore];
    timeZone = [eventStore timeZone];
  }

  return timeZone;
}

- (EKStructuredLocation)structuredLocation
{
  predictedLocation = [(EKEvent *)self predictedLocation];
  v4 = predictedLocation;
  if (predictedLocation)
  {
    structuredLocationWithoutPrediction = predictedLocation;
  }

  else
  {
    structuredLocationWithoutPrediction = [(EKCalendarItem *)self structuredLocationWithoutPrediction];
  }

  v6 = structuredLocationWithoutPrediction;

  return v6;
}

- (id)title
{
  v15.receiver = self;
  v15.super_class = EKEvent;
  title = [(EKCalendarItem *)&v15 title];
  v4 = [(__CFString *)title length];
  privacyLevel = [(EKEvent *)self privacyLevel];
  if (![(EKObject *)self isNew]&& (!v4 ? (v6 = (privacyLevel & 0xFFFFFFFFFFFFFFFELL) == 2) : (v6 = 0), v6))
  {
    v7 = EKBundle();
    v8 = [v7 localizedStringForKey:@"Private Event" value:&stru_1F1B49D68 table:0];

    title = v8;
  }

  else
  {
    birthdayContactIdentifier = [(EKEvent *)self birthdayContactIdentifier];

    if (birthdayContactIdentifier)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __16__EKEvent_title__block_invoke;
      v14[3] = &unk_1E77FCF40;
      v14[4] = self;
      v10 = [(EKObject *)self cachedValueForKey:@"birthdayTitle" populateBlock:v14];
      goto LABEL_13;
    }
  }

  v11 = &stru_1F1B49D68;
  if (title)
  {
    v11 = title;
  }

  v10 = v11;
  title = v10;
LABEL_13:
  v12 = v10;

  return v12;
}

- (int64_t)privacyLevel
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69929B8]];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (NSDate)proposedStartDate
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69929C0]];
  [v2 timeIntervalSinceReferenceDate];
  if (fabs(v3) >= 2.22044605e-16)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isProposedTimeEvent
{
  proposedStartDate = [(EKEvent *)self proposedStartDate];
  if (proposedStartDate)
  {
    proposedStartDate2 = [(EKEvent *)self proposedStartDate];
    startDate = [(EKEvent *)self startDate];
    v6 = [proposedStartDate2 isEqualToDate:startDate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (EKEventStatus)status
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69929E0]];
  integerValue = [v2 integerValue];

  return integerValue;
}

void __43__EKEvent_knownRelationshipSingleValueKeys__block_invoke(uint64_t a1)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69925A8];
  v12[0] = *MEMORY[0x1E69929E8];
  v12[1] = v2;
  v3 = *MEMORY[0x1E6992948];
  v12[2] = *MEMORY[0x1E6992980];
  v12[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v5 = knownRelationshipSingleValueKeys_keys_2;
  knownRelationshipSingleValueKeys_keys_2 = v4;

  v6 = knownRelationshipSingleValueKeys_keys_2;
  v11.receiver = *(a1 + 32);
  v11.super_class = &OBJC_METACLASS___EKEvent;
  v7 = objc_msgSendSuper2(&v11, sel_knownRelationshipSingleValueKeys);
  v8 = [v6 arrayByAddingObjectsFromArray:v7];
  v9 = knownRelationshipSingleValueKeys_keys_2;
  knownRelationshipSingleValueKeys_keys_2 = v8;

  v10 = *MEMORY[0x1E69E9840];
}

void __42__EKEvent_knownRelationshipMultiValueKeys__block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E6992918];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v3 = knownRelationshipMultiValueKeys_keys_2;
  knownRelationshipMultiValueKeys_keys_2 = v2;

  v4 = knownRelationshipMultiValueKeys_keys_2;
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___EKEvent;
  v5 = objc_msgSendSuper2(&v9, sel_knownRelationshipMultiValueKeys);
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  v7 = knownRelationshipMultiValueKeys_keys_2;
  knownRelationshipMultiValueKeys_keys_2 = v6;

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasAttendeeProposedTimes
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(EKCalendarItem *)self isSelfOrganizedInvitation])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    attendees = [(EKCalendarItem *)self attendees];
    v4 = [attendees countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(attendees);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
            v10 = [v9 proposedStartDateForEvent:self];
            if (v10)
            {
              v11 = v10;
              proposedStartDateStatus = [v9 proposedStartDateStatus];

              if (proposedStartDateStatus != 3)
              {

                v13 = 1;
                goto LABEL_16;
              }
            }
          }
        }

        v5 = [attendees countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_16:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (unint64_t)_integrationType
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__EKEvent__integrationType__block_invoke;
  v5[3] = &unk_1E77FCF40;
  v5[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"eKEventIntegrationTypeKey" populateBlock:v5];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = EKEvent;
  v3 = [(EKObject *)&v8 hash];
  occurrenceStartDate = [(EKEvent *)self occurrenceStartDate];
  [occurrenceStartDate absoluteTime];
  v6 = v5;

  return v3 ^ v6;
}

- (NSDate)endDateUnadjustedForLegacyClients
{
  occurrenceEndDate = [(EKEvent *)self occurrenceEndDate];
  date = [occurrenceEndDate date];

  return date;
}

- (NSString)eventIdentifier
{
  uniqueID = [(EKCalendarItem *)self uniqueID];
  eventStore = [(EKObject *)self eventStore];
  v5 = [eventStore sourceIdentifierForEvent:self];

  v6 = 0;
  if (uniqueID && v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v5, *MEMORY[0x1E6993180], uniqueID];
  }

  return v6;
}

- (NSString)locationWithoutPrediction
{
  preferredLocationWithoutPrediction = [(EKEvent *)self preferredLocationWithoutPrediction];
  title = [preferredLocationWithoutPrediction title];

  preferredLocationWithoutPrediction2 = [(EKEvent *)self preferredLocationWithoutPrediction];
  address = [preferredLocationWithoutPrediction2 address];

  v7 = [MEMORY[0x1E6992FD8] fullDisplayStringWithTitle:title address:address];

  return v7;
}

- (EKStructuredLocation)preferredLocationWithoutPrediction
{
  clientLocation = [(EKCalendarItem *)self clientLocation];
  if (!clientLocation)
  {
    clientLocation = [(EKCalendarItem *)self structuredLocationWithoutPrediction];
  }

  return clientLocation;
}

- (EKVirtualConference)virtualConference
{
  v5 = 0;
  [(EKEvent *)self parsedConference:&v5 andNotes:0];
  v2 = v5;
  conference = [v2 conference];

  return conference;
}

- (BOOL)conferenceURLForDisplayCached
{
  calendar = [(EKCalendarItem *)self calendar];
  source = [calendar source];
  sourceType = [source sourceType];

  if (sourceType == 2)
  {
    conferenceURL = [(EKObject *)self cachedValueForKey:@"conferenceURLDetectedKey" populateBlock:0];
    v7 = conferenceURL != 0;
  }

  else
  {
    conferenceURL = [(EKEvent *)self conferenceURL];
    if (conferenceURL)
    {
      v7 = 1;
    }

    else
    {
      v8 = [(EKObject *)self cachedValueForKey:@"conferenceURLDetectedKey" populateBlock:0];
      v7 = v8 != 0;
    }
  }

  return v7;
}

- (NSArray)locationsWithoutPrediction
{
  locationWithoutPrediction = [(EKEvent *)self locationWithoutPrediction];
  v3 = [locationWithoutPrediction componentsSeparatedByString:@" "];;

  return v3;
}

- (unint64_t)flags
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69925D8]];
  intValue = [v2 intValue];

  return intValue;
}

- (unint64_t)reminderOccurrenceType
{
  if (![(EKEvent *)self isReminderIntegrationEvent]|| ![(EKCalendarItem *)self hasRecurrenceRules])
  {
    return 0;
  }

  calSimulatedDateForNow = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  startDate = [(EKEvent *)self startDate];
  v5 = MEMORY[0x1E695DEE8];
  defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v7 = [v5 CalGregorianCalendarForTimeZone:defaultTimeZone];

  v8 = [startDate compareDateIgnoringTimeComponents:calSimulatedDateForNow inCalendar:v7];
  if (v8)
  {
    if (v8 == 1)
    {
      if ([(EKEvent *)self isFirstOccurrence])
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      _nextReminderOccurrenceDate = [(EKEvent *)self _nextReminderOccurrenceDate];
      v8 = [_nextReminderOccurrenceDate compareDateIgnoringTimeComponents:calSimulatedDateForNow inCalendar:v7] != 1;
    }
  }

  return v8;
}

- (BOOL)isBirthday
{
  birthdayContactIdentifier = [(EKEvent *)self birthdayContactIdentifier];
  v3 = birthdayContactIdentifier != 0;

  return v3;
}

- (int64_t)selfParticipantStatus
{
  if (!-[EKObject isNew](self, "isNew") && (-[EKObject isPropertyUnavailable:](self, "isPropertyUnavailable:", *MEMORY[0x1E6992650]) || (-[EKCalendarItem selfAttendee](self, "selfAttendee"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isPropertyUnavailable:*MEMORY[0x1E6992538]], v4, v5)))
  {
    v6.receiver = self;
    v6.super_class = EKEvent;
    return [(EKCalendarItem *)&v6 selfParticipantStatus];
  }

  else
  {

    return [(EKEvent *)self participationStatus];
  }
}

- (int64_t)participationStatus
{
  selfAttendee = [(EKCalendarItem *)self selfAttendee];
  v3 = selfAttendee;
  if (selfAttendee)
  {
    participantStatus = [selfAttendee participantStatus];
  }

  else
  {
    participantStatus = 2;
  }

  return participantStatus;
}

- (int64_t)currentUserGeneralizedParticipantRole
{
  if (![(EKCalendarItem *)self hasAttendees])
  {
    return 0;
  }

  if ([(EKEvent *)self currentUserMayActAsOrganizer])
  {
    return 2;
  }

  selfAttendee = [(EKCalendarItem *)self selfAttendee];

  if (selfAttendee)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (BOOL)isOrWasPartOfRecurringSeries
{
  if ([(EKCalendarItem *)self hasRecurrenceRules]|| [(EKCalendarItem *)self _hadRecurrenceRules])
  {
    return 1;
  }

  return [(EKEvent *)self isDetached];
}

- (BOOL)isOriginalItemPhantom
{
  originalItem = [(EKCalendarItem *)self originalItem];
  isPhantom = [originalItem isPhantom];

  return isPhantom;
}

id __31__EKEvent_recurrenceIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localUID];
  v3 = [*(a1 + 32) recurrenceDate];
  v4 = [EKRecurrenceIdentifier recurrenceIdentifierWithLocalUID:v2 recurrenceDate:v3];

  return v4;
}

- (NSDate)recurrenceDate
{
  originalStartDate = [(EKEvent *)self originalStartDate];
  v4 = originalStartDate;
  if (originalStartDate)
  {
    date = originalStartDate;
  }

  else if ([(EKCalendarItem *)self hasRecurrenceRules])
  {
    originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
    date = [originalOccurrenceStartDate date];

    timeZone = [(EKCalendarItem *)self timeZone];

    if (!timeZone)
    {
      effectiveTimeZone = [(EKEvent *)self effectiveTimeZone];
      v9 = [date dateInTimeZone:0 fromTimeZone:effectiveTimeZone];

      date = v9;
    }
  }

  else
  {
    date = 0;
  }

  return date;
}

- (EKRecurrenceIdentifier)recurrenceIdentifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__EKEvent_recurrenceIdentifier__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"recurrenceIdentifier" populateBlock:v4];

  return v2;
}

- (NSString)appEntityIdentifier
{
  appEntityIdentifierOverride = self->_appEntityIdentifierOverride;
  if (appEntityIdentifierOverride)
  {
    uUID = appEntityIdentifierOverride;
LABEL_5:
    identifierString = uUID;
    goto LABEL_6;
  }

  if ([(EKEvent *)self isDetached])
  {
    uUID = [(EKCalendarItem *)self UUID];
    goto LABEL_5;
  }

  recurrenceIdentifier = [(EKEvent *)self recurrenceIdentifier];
  identifierString = [recurrenceIdentifier identifierString];

LABEL_6:

  return identifierString;
}

- (int64_t)travelRoutingMode
{
  v2 = MEMORY[0x1E6992FD8];
  travelStartLocation = [(EKCalendarItem *)self travelStartLocation];
  routing = [travelStartLocation routing];
  v5 = [v2 routingModeEnumForCalRouteType:routing];

  return v5;
}

- (double)travelTime
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69929F8]];
  [v2 doubleValue];
  v4 = v3;

  return fmax(v4, 0.0);
}

- (void)setIsJunk:(BOOL)junk shouldSave:(BOOL)save
{
  saveCopy = save;
  if (junk)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [(EKEvent *)self setJunkStatus:v7];
  if (saveCopy)
  {
    eventStore = [(EKObject *)self eventStore];
    v11 = 0;
    [eventStore saveEvent:self span:2 commit:1 error:&v11];
    v9 = v11;

    if (v9)
    {
      v10 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(EKEvent(EKEvent_Shared) *)junk setIsJunk:v9 shouldSave:v10];
      }
    }
  }
}

- (unint64_t)cachedJunkStatus
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__EKEvent_EKEvent_Shared__cachedJunkStatus__block_invoke;
  v5[3] = &unk_1E77FCF40;
  v5[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"cachedJunkStatus" populateBlock:v5];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

id __43__EKEvent_EKEvent_Shared__cachedJunkStatus__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) junkStatus];
  v3 = [*(a1 + 32) selfAttendee];
  v4 = [v3 participantStatus];

  if (v2)
  {
    v5 = +[EKLogSubsystem junk];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __43__EKEvent_EKEvent_Shared__cachedJunkStatus__block_invoke_cold_1();
    }

    goto LABEL_14;
  }

  if ([*(a1 + 32) isNew])
  {
    v5 = +[EKLogSubsystem junk];
    v2 = 2;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    __43__EKEvent_EKEvent_Shared__cachedJunkStatus__block_invoke_cold_5();
LABEL_20:
    v2 = 2;
    goto LABEL_14;
  }

  if (([*(a1 + 32) isSelfOrganized] & 1) != 0 || (objc_msgSend(*(a1 + 32), "hasAttendees") & 1) == 0)
  {
    v5 = +[EKLogSubsystem junk];
    v2 = 2;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    __43__EKEvent_EKEvent_Shared__cachedJunkStatus__block_invoke_cold_4();
    goto LABEL_20;
  }

  if (v4 == 4 || v4 == 2)
  {
    v5 = +[EKLogSubsystem junk];
    v2 = 2;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    __43__EKEvent_EKEvent_Shared__cachedJunkStatus__block_invoke_cold_2();
    goto LABEL_20;
  }

  v2 = [EKJunkInvitationProtocol_Shared junkStatusForInvitation:*(a1 + 32)];
  v5 = +[EKLogSubsystem junk];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __43__EKEvent_EKEvent_Shared__cachedJunkStatus__block_invoke_cold_3();
  }

LABEL_14:

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];

  return v6;
}

- (void)setCachedJunkStatus:(unint64_t)status
{
  if (status)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [(EKObject *)self setCachedValue:v4 forKey:@"cachedJunkStatus"];
  }

  else
  {

    [(EKObject *)self clearCachedValueForKey:@"cachedJunkStatus"];
  }
}

- (BOOL)_couldBeJunkCommon
{
  cachedJunkStatus = [(EKEvent *)self cachedJunkStatus];
  v3 = +[EKLogSubsystem junk];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (cachedJunkStatus == 3)
  {
    if (v4)
    {
      [EKEvent(EKEvent_Shared) _couldBeJunkCommon];
    }
  }

  else if (v4)
  {
    [EKEvent(EKEvent_Shared) _couldBeJunkCommon];
  }

  return cachedJunkStatus == 3;
}

- (NSArray)locations
{
  location = [(EKCalendarItem *)self location];
  v3 = [location componentsSeparatedByString:@" "];;

  return v3;
}

- (void)setLocations:(id)locations
{
  locationsCopy = locations;
  v5 = [objc_opt_class() _locationStringForLocations:locationsCopy];

  [(EKCalendarItem *)self setLocation:v5];
}

+ (id)_locationStringForLocations:(id)locations
{
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    v4 = [locationsCopy componentsJoinedByString:@" "];;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setNotesCommon:(id)common
{
  [(EKEvent *)self clearDetectedConferenceURL];

  [(EKEvent *)self clearParsedConference];
}

- (void)parsedConference:(id *)conference andNotes:(id *)notes
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__EKEvent_EKEvent_Shared__parsedConference_andNotes___block_invoke;
  v12[3] = &unk_1E77FCF40;
  v12[4] = self;
  v6 = [(EKObject *)self cachedValueForKey:@"parsedConferenceKey" populateBlock:v12];
  null = [MEMORY[0x1E695DFB0] null];

  if (v6 == null)
  {
    if (conference)
    {
      *conference = 0;
    }

    if (notes)
    {
      *notes = 0;
    }
  }

  else
  {
    v8 = [v6 objectForKey:@"parseResult"];
    v9 = [v6 objectForKey:@"notes"];
    if (conference)
    {
      v10 = v8;
      *conference = v8;
    }

    if (notes)
    {
      v11 = v9;
      *notes = v9;
    }
  }
}

id __53__EKEvent_EKEvent_Shared__parsedConference_andNotes___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) notes];

  if (v2)
  {
    v3 = [*(a1 + 32) notes];
    v4 = [EKConferencePersistence deserializeConference:v3];
    v5 = v4;
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v8 = [MEMORY[0x1E695DFB0] null];
    }

    else
    {
      v11[0] = @"parseResult";
      v11[1] = @"notes";
      v12[0] = v4;
      v12[1] = v3;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    }

    v7 = v8;
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)conferenceURLForDisplay
{
  calendar = [(EKCalendarItem *)self calendar];
  source = [calendar source];
  sourceType = [source sourceType];

  if (sourceType == 2)
  {
    conferenceURLDetected = [(EKEvent *)self conferenceURLDetected];
    if (!conferenceURLDetected)
    {
      conferenceURL = [(EKEvent *)self conferenceURL];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  conferenceURLDetected = [(EKEvent *)self conferenceURL];
  if (conferenceURLDetected)
  {
LABEL_5:
    conferenceURL = conferenceURLDetected;
    conferenceURLDetected = conferenceURL;
    goto LABEL_7;
  }

  conferenceURL = [(EKEvent *)self conferenceURLDetected];
LABEL_7:
  v8 = conferenceURL;

  return v8;
}

- (id)conferenceURLDetected
{
  if ([(EKEvent *)self _detectedConferenceURLOnBackingObjectMayBeInvalid])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__EKEvent_EKEvent_Shared__conferenceURLDetected__block_invoke;
    v8[3] = &unk_1E77FCF40;
    v8[4] = self;
    conferenceURLDetectedString = [(EKObject *)self cachedValueForKey:@"conferenceURLDetectedKey" populateBlock:v8];
    null = [MEMORY[0x1E695DFB0] null];

    if (conferenceURLDetectedString != null)
    {
      v5 = conferenceURLDetectedString;
LABEL_6:
      v6 = v5;
      goto LABEL_8;
    }
  }

  else
  {
    conferenceURLDetectedString = [(EKEvent *)self conferenceURLDetectedString];
    if (conferenceURLDetectedString)
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:conferenceURLDetectedString];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

id __48__EKEvent_EKEvent_Shared__conferenceURLDetected__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _detectConferenceURL];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;

  return v4;
}

- (BOOL)_detectedConferenceURLOnBackingObjectMayBeInvalid
{
  if ([(EKObject *)self isNew]|| [(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992620]]|| [(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992548]]|| [(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992580]]|| [(EKObject *)self _hasChangesForKey:*MEMORY[0x1E69926D8]])
  {
    return 1;
  }

  preferredLocation = [(EKCalendarItem *)self preferredLocation];
  if ([preferredLocation _hasChangesForKey:*MEMORY[0x1E6992A88]])
  {
    v3 = 1;
  }

  else
  {
    v3 = [preferredLocation _hasChangesForKey:*MEMORY[0x1E6992A30]];
  }

  return v3;
}

- (id)_detectConferenceURL
{
  v2 = MEMORY[0x1E6992F40];
  _prioritizedConferencesSources = [(EKEvent *)self _prioritizedConferencesSources];
  v4 = [v2 conferenceURLFromSources:_prioritizedConferencesSources];

  return v4;
}

- (id)_prioritizedConferencesSources
{
  v3 = objc_opt_new();
  locationWithoutPrediction = [(EKEvent *)self locationWithoutPrediction];

  if (locationWithoutPrediction)
  {
    locationWithoutPrediction2 = [(EKEvent *)self locationWithoutPrediction];
    [v3 addObject:locationWithoutPrediction2];
  }

  displayNotes = [(EKEvent *)self displayNotes];

  if (displayNotes)
  {
    displayNotes2 = [(EKEvent *)self displayNotes];
    [v3 addObject:displayNotes2];
  }

  v8 = [(EKEvent *)self URL];

  if (v8)
  {
    v9 = [(EKEvent *)self URL];
    absoluteString = [v9 absoluteString];
    [v3 addObject:absoluteString];
  }

  return v3;
}

+ (id)EKObjectChangeSummarizer_singleValueDiffKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__EKEvent_EKObjectChangeSummarizer__EKObjectChangeSummarizer_singleValueDiffKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (EKObjectChangeSummarizer_singleValueDiffKeys_onceToken_150 != -1)
  {
    dispatch_once(&EKObjectChangeSummarizer_singleValueDiffKeys_onceToken_150, block);
  }

  v2 = EKObjectChangeSummarizer_singleValueDiffKeys_diffKeys_149;

  return v2;
}

void __81__EKEvent_EKObjectChangeSummarizer__EKObjectChangeSummarizer_singleValueDiffKeys__block_invoke(uint64_t a1)
{
  v15[9] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69929F8];
  v14[0] = *MEMORY[0x1E6992920];
  v14[1] = v2;
  v15[0] = @"EKChangedAvailability";
  v15[1] = @"EKChangedTravelTime";
  v3 = *MEMORY[0x1E6992968];
  v14[2] = *MEMORY[0x1E69929B8];
  v14[3] = v3;
  v15[2] = @"EKChangedPrivacy";
  v15[3] = @"EKChangedEndDate";
  v4 = *MEMORY[0x1E6992998];
  v14[4] = *MEMORY[0x1E69925B0];
  v14[5] = v4;
  v15[4] = @"EKChangedEndTimeZone";
  v15[5] = @"EKChangedJunkStatus";
  v5 = [EKDiff summaryKeyForChangedProperty:*MEMORY[0x1E6992650] subProperty:*MEMORY[0x1E6992538]];
  v6 = *MEMORY[0x1E69929C0];
  v14[6] = v5;
  v14[7] = v6;
  v15[6] = @"EKChangedParticipationStatus";
  v15[7] = @"EKChangedAlternateTimeProposal";
  v14[8] = *MEMORY[0x1E69929D0];
  v15[8] = @"EKChangedResponseComment";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:9];

  v13.receiver = *(a1 + 32);
  v13.super_class = &OBJC_METACLASS___EKEvent;
  v8 = objc_msgSendSuper2(&v13, sel_EKObjectChangeSummarizer_singleValueDiffKeys);
  v9 = [v8 mutableCopy];

  [v9 addEntriesFromDictionary:v7];
  v10 = [v9 copy];
  v11 = EKObjectChangeSummarizer_singleValueDiffKeys_diffKeys_149;
  EKObjectChangeSummarizer_singleValueDiffKeys_diffKeys_149 = v10;

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)EKObjectChangeSummarizer_multiValueDiffKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__EKEvent_EKObjectChangeSummarizer__EKObjectChangeSummarizer_multiValueDiffKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (EKObjectChangeSummarizer_multiValueDiffKeys_onceToken_154 != -1)
  {
    dispatch_once(&EKObjectChangeSummarizer_multiValueDiffKeys_onceToken_154, block);
  }

  v2 = EKObjectChangeSummarizer_multiValueDiffKeys_diffKeys_153;

  return v2;
}

void __80__EKEvent_EKObjectChangeSummarizer__EKObjectChangeSummarizer_multiValueDiffKeys__block_invoke(uint64_t a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = *MEMORY[0x1E6992568];
  v13[0] = @"add";
  v13[1] = @"remove";
  v14[0] = @"EKChangedAttendeesAdded";
  v14[1] = @"EKChangedAttendeesRemoved";
  v13[2] = @"modify";
  v14[2] = @"EKChangedAttendeesModified";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v15[1] = *MEMORY[0x1E6992560];
  v16[0] = v2;
  v11[0] = @"add";
  v11[1] = @"remove";
  v12[0] = @"EKChangedAttachmentsAdded";
  v12[1] = @"EKChangedAttachmentsRemoved";
  v11[2] = @"modify";
  v12[2] = @"EKChangedAttachmentsModified";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v16[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v10.receiver = *(a1 + 32);
  v10.super_class = &OBJC_METACLASS___EKEvent;
  v5 = objc_msgSendSuper2(&v10, sel_EKObjectChangeSummarizer_multiValueDiffKeys);
  v6 = [v5 mutableCopy];

  [v6 addEntriesFromDictionary:v4];
  v7 = [v6 copy];
  v8 = EKObjectChangeSummarizer_multiValueDiffKeys_diffKeys_153;
  EKObjectChangeSummarizer_multiValueDiffKeys_diffKeys_153 = v7;

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)knownKeysToSkipForFutureChanges
{
  if (knownKeysToSkipForFutureChanges_onceToken != -1)
  {
    +[EKEvent knownKeysToSkipForFutureChanges];
  }

  v3 = knownKeysToSkipForFutureChanges_knownKeysToSkipForFutureChanges;

  return v3;
}

void __42__EKEvent_knownKeysToSkipForFutureChanges__block_invoke()
{
  v8[10] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992968];
  v8[0] = *MEMORY[0x1E69926C8];
  v8[1] = v0;
  v1 = *MEMORY[0x1E69925F8];
  v8[2] = *MEMORY[0x1E6992648];
  v8[3] = v1;
  v2 = *MEMORY[0x1E69925A0];
  v8[4] = *MEMORY[0x1E6992598];
  v8[5] = v2;
  v3 = *MEMORY[0x1E6992700];
  v8[6] = *MEMORY[0x1E6992630];
  v8[7] = v3;
  v4 = *MEMORY[0x1E69929A8];
  v8[8] = *MEMORY[0x1E6992570];
  v8[9] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:10];
  v6 = knownKeysToSkipForFutureChanges_knownKeysToSkipForFutureChanges;
  knownKeysToSkipForFutureChanges_knownKeysToSkipForFutureChanges = v5;

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)knownKeysToUseForFutureChanges
{
  if (knownKeysToUseForFutureChanges_onceToken != -1)
  {
    +[EKEvent knownKeysToUseForFutureChanges];
  }

  v3 = knownKeysToUseForFutureChanges_knownKeysToUseForFutureChanges;

  return v3;
}

void __41__EKEvent_knownKeysToUseForFutureChanges__block_invoke()
{
  v6[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992560];
  v6[0] = *MEMORY[0x1E6992568];
  v6[1] = v0;
  v1 = *MEMORY[0x1E6992628];
  v6[2] = *MEMORY[0x1E69929B8];
  v6[3] = v1;
  v2 = *MEMORY[0x1E69929F8];
  v6[4] = *MEMORY[0x1E69926D8];
  v6[5] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:6];
  v4 = knownKeysToUseForFutureChanges_knownKeysToUseForFutureChanges;
  knownKeysToUseForFutureChanges_knownKeysToUseForFutureChanges = v3;

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)knownSingleValueKeysForComparison
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__EKEvent_knownSingleValueKeysForComparison__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (knownSingleValueKeysForComparison_onceToken_4 != -1)
  {
    dispatch_once(&knownSingleValueKeysForComparison_onceToken_4, block);
  }

  v2 = knownSingleValueKeysForComparison_keys_4;

  return v2;
}

void __44__EKEvent_knownSingleValueKeysForComparison__block_invoke(uint64_t a1)
{
  v20[23] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6992928];
  v20[0] = *MEMORY[0x1E6992920];
  v20[1] = v2;
  v3 = *MEMORY[0x1E6992940];
  v20[2] = *MEMORY[0x1E6992938];
  v20[3] = v3;
  v4 = *MEMORY[0x1E6992960];
  v20[4] = *MEMORY[0x1E6992958];
  v20[5] = v4;
  v5 = *MEMORY[0x1E6992970];
  v20[6] = *MEMORY[0x1E6992968];
  v20[7] = v5;
  v6 = *MEMORY[0x1E6992988];
  v20[8] = *MEMORY[0x1E6992978];
  v20[9] = v6;
  v7 = *MEMORY[0x1E6992998];
  v20[10] = *MEMORY[0x1E6992990];
  v20[11] = v7;
  v8 = *MEMORY[0x1E69929A8];
  v20[12] = *MEMORY[0x1E69929A0];
  v20[13] = v8;
  v9 = *MEMORY[0x1E6992638];
  v20[14] = *MEMORY[0x1E69929B0];
  v20[15] = v9;
  v10 = *MEMORY[0x1E69929C0];
  v20[16] = *MEMORY[0x1E69929B8];
  v20[17] = v10;
  v11 = *MEMORY[0x1E69926C8];
  v20[18] = *MEMORY[0x1E69929D0];
  v20[19] = v11;
  v12 = *MEMORY[0x1E69929F0];
  v20[20] = *MEMORY[0x1E69929E0];
  v20[21] = v12;
  v20[22] = *MEMORY[0x1E69929F8];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:23];
  v14 = knownSingleValueKeysForComparison_keys_4;
  knownSingleValueKeysForComparison_keys_4 = v13;

  v19.receiver = *(a1 + 32);
  v19.super_class = &OBJC_METACLASS___EKEvent;
  v15 = objc_msgSendSuper2(&v19, sel_knownSingleValueKeysForComparison);
  v16 = [v15 arrayByAddingObjectsFromArray:knownSingleValueKeysForComparison_keys_4];
  v17 = knownSingleValueKeysForComparison_keys_4;
  knownSingleValueKeysForComparison_keys_4 = v16;

  v18 = *MEMORY[0x1E69E9840];
}

+ (EKEvent)eventWithEventStore:(EKEventStore *)eventStore
{
  v4 = eventStore;
  v5 = [[self alloc] initWithEventStore:v4];

  return v5;
}

- (EKEvent)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"You must use [EKEvent eventWithEventStore:] to create an event"];

  return 0;
}

- (EKEvent)initWithEventStore:(id)store
{
  storeCopy = store;
  if (!storeCopy && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEvent initWithEventStore:];
  }

  v5 = objc_alloc_init(EKPersistentEvent);
  [storeCopy _registerObject:v5];
  v6 = [(EKEvent *)self initWithPersistentObject:v5 occurrenceDate:0];
  v7 = EKUUIDString();
  [(EKCalendarItem *)v6 setCalendarItemIdentifier:v7];

  timeZone = [storeCopy timeZone];
  [(EKEvent *)v6 setTimeZone:timeZone];

  defaultAlarms = [(EKEvent *)v6 defaultAlarms];
  anyObject = [defaultAlarms anyObject];

  if (!anyObject)
  {
    anyObject = [EKAlarm alarmWithRelativeOffset:0.0];
    [anyObject setDefaultAlarm:1];
  }

  [(EKCalendarItem *)v6 addAlarm:anyObject];

  return v6;
}

- (EKEvent)initWithPersistentObject:(id)object objectForCopy:(id)copy
{
  objectCopy = object;
  copyCopy = copy;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = MEMORY[0x1E695D940];
  if ((isKindOfClass & 1) == 0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Trying to initialize an EKEvent as a copy of an object that is not an EKEvent" userInfo:0];
    [v10 raise];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*v9 reason:@"Trying to initialize an EKEvent with a backing object that is not an EKPersistentEvent" userInfo:0];
    [v11 raise];
  }

  v12 = copyCopy;
  originalOccurrenceStartDate = [v12 originalOccurrenceStartDate];
  date = [originalOccurrenceStartDate date];
  v15 = [(EKEvent *)self initWithPersistentObject:objectCopy occurrenceDate:date];

  LOBYTE(date) = v12[92];
  v15->_isMainOccurrence = date;

  return v15;
}

- (EKEvent)initWithPersistentObject:(id)object occurrenceDate:(id)date
{
  objectCopy = object;
  dateCopy = date;
  if (!objectCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Can't create EKEvent without persistent event"];
  }

  v26.receiver = self;
  v26.super_class = EKEvent;
  v8 = [(EKObject *)&v26 initWithPersistentObject:objectCopy];
  v9 = v8;
  if (v8)
  {
    v8->_locationPredictionLock._os_unfair_lock_opaque = 0;
    v8->_locationPredictionAllowed = 1;
    [(EKEvent *)v8 setOccurrenceIsAllDay:[(EKEvent *)v8 _isAllDay]];
    startDateRaw = [(EKEvent *)v9 startDateRaw];
    v25 = 0;
    v11 = [(EKEvent *)v9 adjustedPersistedDateForDate:startDateRaw withAdjustmentMode:1 pinMode:0 clientCalendarDate:&v25];
    v12 = v25;

    endDateRaw = [(EKEvent *)v9 endDateRaw];
    v24 = 0;
    v14 = [(EKEvent *)v9 adjustedPersistedDateForDate:endDateRaw withAdjustmentMode:1 pinMode:1 clientCalendarDate:&v24];
    v15 = v24;

    if (dateCopy)
    {
      v16 = MEMORY[0x1E69930C8];
      effectiveTimeZone = [(EKEvent *)v9 effectiveTimeZone];
      v18 = [v16 calendarDateWithDate:dateCopy timeZone:effectiveTimeZone];

      [(EKEvent *)v9 setOccurrenceStartDate:v18];
      v19 = [(EKEvent *)v9 _calculateDurationWithStart:v12 end:v15 allDay:[(EKEvent *)v9 occurrenceIsAllDay]];

      if (v19)
      {
        v20 = [v18 calendarDateByComponentwiseAddingComponents:v19];
        [(EKEvent *)v9 setOccurrenceEndDate:v20];
      }

      else
      {
        [(EKEvent *)v9 setOccurrenceEndDate:v18];
      }
    }

    else
    {
      [(EKEvent *)v9 setOccurrenceStartDate:v12];
      [(EKEvent *)v9 setOccurrenceEndDate:v15];
      v18 = v15;
    }

    v21 = ![(EKEvent *)v9 isDetached]&& [(EKEvent *)v9 isFirstOccurrence];
    v9->_isMainOccurrence = v21;
    [(EKEvent *)v9 _invalidateRecurrenceIdentifier];
    if ([objectCopy isNew] && -[EKEvent isReminderIntegrationEvent](v9, "isReminderIntegrationEvent") && !-[EKEvent isDetached](v9, "isDetached"))
    {
      eventStore = [objectCopy eventStore];
      [eventStore addPendingIntegrationEvent:v9];
    }
  }

  return v9;
}

- (id)_calculateDurationWithStart:(id)start end:(id)end allDay:(BOOL)day
{
  startCopy = start;
  endCopy = end;
  v9 = endCopy;
  if (day)
  {
    v10 = [endCopy differenceAsDateComponents:startCopy units:242];
    if ([v10 hour] <= 11)
    {
      [v10 setDay:{objc_msgSend(v10, "day") - 1}];
    }

    [v10 setHour:23];
    [v10 setMinute:59];
    [v10 setSecond:59];
  }

  else
  {
    timeZone = [startCopy timeZone];
    date = [startCopy date];
    date2 = [v9 date];
    v14 = [timeZone secondsFromGMTForDate:date];
    v15 = [timeZone secondsFromGMTForDate:date2];
    v16 = v14 <= v15;
    v17 = v14 - v15;
    if (v16)
    {

      v10 = [v9 differenceAsDateComponents:startCopy units:242];
    }

    else
    {
      calendar = [startCopy calendar];
      v19 = [date dateByAddingTimeInterval:v17];
      v10 = [calendar components:242 fromDate:v19 toDate:date2 options:0];
    }
  }

  return v10;
}

- (NSString)eventOccurrenceID
{
  recurrenceIdentifier = [(EKEvent *)self recurrenceIdentifier];
  identifierString = [recurrenceIdentifier identifierString];

  return identifierString;
}

- (NSURL)externalURL
{
  calendar = [(EKCalendarItem *)self calendar];
  v4 = calendar;
  if (calendar)
  {
    source = [calendar source];
    v6 = source;
    if (source)
    {
      sourceIdentifier = [source sourceIdentifier];
      if (sourceIdentifier)
      {
        uniqueId = [(EKEvent *)self uniqueId];
        if (uniqueId)
        {
          if (externalURL_onceToken != -1)
          {
            [EKEvent externalURL];
          }

          v9 = [sourceIdentifier stringByAddingPercentEncodingWithAllowedCharacters:externalURL_allowedCharacters];
          v10 = [uniqueId stringByAddingPercentEncodingWithAllowedCharacters:externalURL_allowedCharacters];
          v11 = MEMORY[0x1E696AEC0];
          startDate = [(EKEvent *)self startDate];
          [startDate timeIntervalSinceReferenceDate];
          v14 = [v11 stringWithFormat:@"x-apple-calevent://%@/%@?o=%lld", v9, v10, v13];

          v15 = [MEMORY[0x1E695DFF8] URLWithString:v14];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __22__EKEvent_externalURL__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:{@"/?&:$+, ;=@"}];
  v1 = [v3 copy];
  v2 = externalURL_allowedCharacters;
  externalURL_allowedCharacters = v1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      objectID = [(EKObject *)equalCopy objectID];
      objectID2 = [(EKObject *)self objectID];
      if ([objectID isEqual:objectID2])
      {
        originalOccurrenceStartDate = [(EKEvent *)equalCopy originalOccurrenceStartDate];
        originalOccurrenceStartDate2 = [(EKEvent *)self originalOccurrenceStartDate];
        if (originalOccurrenceStartDate == originalOccurrenceStartDate2)
        {
          v6 = 1;
        }

        else
        {
          originalOccurrenceStartDate3 = [(EKEvent *)equalCopy originalOccurrenceStartDate];
          originalOccurrenceStartDate4 = [(EKEvent *)self originalOccurrenceStartDate];
          v6 = [originalOccurrenceStartDate3 isEqual:originalOccurrenceStartDate4];
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_modifiedNotificationUserInfoWithIdentifier:(id)identifier forRevert:(BOOL)revert
{
  revertCopy = revert;
  v17[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (identifierCopy)
  {
    if (revertCopy)
    {
      v16[0] = @"EKEventStoreModifiedEventIdentifier";
      v16[1] = @"EKEventStoreRevert";
      v17[0] = identifierCopy;
      v17[1] = MEMORY[0x1E695E118];
      v7 = MEMORY[0x1E695DF20];
      v8 = v17;
      v9 = v16;
      v10 = 2;
    }

    else
    {
      v14 = @"EKEventStoreModifiedEventIdentifier";
      v15 = identifierCopy;
      v7 = MEMORY[0x1E695DF20];
      v8 = &v15;
      v9 = &v14;
      v10 = 1;
    }

    v11 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)postModifiedNotification
{
  v3 = objc_opt_class();
  uniqueIdentifier = [(EKObject *)self uniqueIdentifier];
  v4 = [v3 _modifiedNotificationUserInfoWithIdentifier:uniqueIdentifier forRevert:0];
  [(EKEvent *)self postModifiedNotificationWithUserInfo:v4];
}

- (void)postModifiedNotificationWithUserInfo:(id)info
{
  infoCopy = info;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"EKEventModifiedNotification" object:self userInfo:infoCopy];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__EKEvent_postModifiedNotificationWithUserInfo___block_invoke;
    v6[3] = &unk_1E77FD580;
    v6[4] = self;
    v7 = infoCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __48__EKEvent_postModifiedNotificationWithUserInfo___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"EKEventModifiedNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (BOOL)needsGeocoding
{
  selfCopy = self;
  eventStore = [(EKObject *)self eventStore];
  LOBYTE(selfCopy) = [eventStore needsGeocodingForEvent:selfCopy];

  return selfCopy;
}

- (id)constraints
{
  eventStore = [(EKObject *)self eventStore];
  v4 = [eventStore cachedConstraintsForEvent:self];

  return v4;
}

- (id)committedValueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:*MEMORY[0x1E69926C8]])
  {
    originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
LABEL_5:
    v6 = originalOccurrenceStartDate;
    date = [originalOccurrenceStartDate date];

    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:*MEMORY[0x1E6992968]])
  {
    originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceEndDate];
    goto LABEL_5;
  }

  v9.receiver = self;
  v9.super_class = EKEvent;
  date = [(EKObject *)&v9 committedValueForKey:keyCopy];
LABEL_7:

  return date;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  [(EKEvent *)self _clearLocationPredictionCacheIfNotFrozen];
  v5.receiver = self;
  v5.super_class = EKEvent;
  [(EKCalendarItem *)&v5 setTitle:titleCopy];
}

id __16__EKEvent_title__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DEE8];
  v3 = [*(a1 + 32) calendarScale];
  v4 = [v2 CalCalendarWithUnsanitizedCalendarIdentifier:v3];

  v5 = [v4 calendarIdentifier];
  v6 = MEMORY[0x1E6992F50];
  v7 = [*(a1 + 32) birthdayContactName];
  v8 = [*(a1 + 32) startDate];
  v9 = [*(a1 + 32) _committedStartDate];
  v10 = [v6 birthdayStringForContactName:v7 eventDate:v8 birthDate:v9 lunarCalendar:v5];

  return v10;
}

- (BOOL)isPhantom
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992638]];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)updateDefaultAlarms
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  alarms = [(EKCalendarItem *)self alarms];
  v4 = [alarms countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(alarms);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isDefaultAlarm] && (objc_msgSend(v8, "isAbsolute") & 1) == 0)
        {
          _defaultAlarmOffset = [(EKEvent *)self _defaultAlarmOffset];
          v10 = _defaultAlarmOffset;
          if (_defaultAlarmOffset)
          {
            [_defaultAlarmOffset doubleValue];
            if (v11 != 9.22337204e18)
            {
              [v10 doubleValue];
              [v8 setRelativeOffset:?];
            }
          }
        }
      }

      v5 = [alarms countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateRecurrenceEndDatesWithAdjustmentMode:(unint64_t)mode
{
  v23 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  v7 = [recurrenceRules countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(recurrenceRules);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        recurrenceEnd = [v11 recurrenceEnd];
        endDate = [recurrenceEnd endDate];

        if (endDate)
        {
          v14 = [(EKEvent *)selfCopy adjustedPersistedDateForDate:endDate withAdjustmentMode:mode pinMode:1 clientCalendarDate:0];
          v15 = [EKRecurrenceEnd recurrenceEndWithEndDate:v14];
          [v11 setRecurrenceEnd:v15];
        }

        [array addObject:v11];
      }

      v8 = [recurrenceRules countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  [(EKEvent *)selfCopy setRecurrenceRules:array];
  v16 = *MEMORY[0x1E69E9840];
}

- (EKCalendarDate)startCalendarDateIncludingTravelTime
{
  v3 = MEMORY[0x1E69930C8];
  startDateIncludingTravel = [(EKEvent *)self startDateIncludingTravel];
  timeZone = [(EKCalendarItem *)self timeZone];
  v6 = [v3 calendarDateWithDate:startDateIncludingTravel timeZone:timeZone];

  return v6;
}

- (void)setStartDateRaw:(id)raw
{
  [(EKObject *)self setSingleChangedValue:raw forKey:*MEMORY[0x1E69926C8]];

  [(EKEvent *)self clearCachedTimeValues];
}

- (id)_committedEndDate
{
  v2 = *MEMORY[0x1E6992968];
  v5.receiver = self;
  v5.super_class = EKEvent;
  v3 = [(EKObject *)&v5 committedValueForKey:v2];

  return v3;
}

- (NSDateComponents)startDateComponents
{
  isAllDay = [(EKEvent *)self isAllDay];
  occurrenceStartDate = self->_occurrenceStartDate;
  if (isAllDay)
  {
    [(EKCalendarDate *)occurrenceStartDate dayComponents];
  }

  else
  {
    [(EKCalendarDate *)occurrenceStartDate allComponents];
  }
  v5 = ;
  if ([(EKEvent *)self isFloating])
  {
    [v5 setTimeZone:0];
  }

  return v5;
}

- (void)setStartDateComponentsPreservingDuration:(id)duration
{
  durationCopy = duration;
  calHasTimeComponents = [durationCopy CalHasTimeComponents];
  mEMORY[0x1E6992FB0] = [MEMORY[0x1E6992FB0] shared];
  [mEMORY[0x1E6992FB0] defaultEventDuration];
  v7 = v6;

  if ([(EKEvent *)self isAllDay])
  {
    endDateUnadjustedForLegacyClients = [(EKEvent *)self endDateUnadjustedForLegacyClients];
    v9 = [endDateUnadjustedForLegacyClients dateByAddingTimeInterval:1.0];

    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v11 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:defaultTimeZone];
    startDate = [(EKEvent *)self startDate];
    v13 = [v11 components:16 fromDate:startDate toDate:v9 options:0];

    v14 = [v13 day];
  }

  else
  {
    [(EKEvent *)self duration];
    v7 = v15;
    v14 = 1;
  }

  timeZone = [durationCopy timeZone];
  v17 = timeZone;
  if (timeZone)
  {
    defaultTimeZone2 = timeZone;
  }

  else
  {
    defaultTimeZone2 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  v19 = defaultTimeZone2;
  v20 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:defaultTimeZone2];
  v21 = [v20 dateFromComponents:durationCopy];
  [(EKEvent *)self setAllDay:calHasTimeComponents ^ 1u];
  [(EKEvent *)self setTimeZone:v17];
  [(EKEvent *)self setStartDate:v21];
  if (calHasTimeComponents)
  {
    v22 = [v21 dateByAddingTimeInterval:v7];
  }

  else
  {
    v23 = [v20 dateByAddingUnit:16 value:v14 toDate:v21 options:0];
    v22 = [v23 dateByAddingTimeInterval:-1.0];
  }

  [(EKEvent *)self setEndDateUnadjustedForLegacyClients:v22];
}

- (id)_pinDate:(id)date withPinMode:(unint64_t)mode
{
  dateCopy = date;
  if ([(EKEvent *)self isAllDay])
  {
    if (mode == 1)
    {
      effectiveTimeZone = [(EKEvent *)self effectiveTimeZone];
      v8 = [dateCopy ek_ios_dateForEndOfDayInTimeZone:effectiveTimeZone];
      goto LABEL_8;
    }

    if (!mode)
    {
      effectiveTimeZone = [(EKEvent *)self effectiveTimeZone];
      v8 = [dateCopy dateForDayInTimeZone:effectiveTimeZone];
LABEL_8:
      v11 = v8;

      goto LABEL_11;
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid pin mode: %d", mode}];
  }

  else if (dateCopy)
  {
    v9 = MEMORY[0x1E695DF00];
    [dateCopy timeIntervalSinceReferenceDate];
    v11 = [v9 dateWithTimeIntervalSinceReferenceDate:floor(v10)];
    goto LABEL_11;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)adjustedPersistedDateForDate:(id)date withAdjustmentMode:(unint64_t)mode pinMode:(unint64_t)pinMode clientCalendarDate:(id *)calendarDate
{
  dateCopy = date;
  isAllDay = [(EKEvent *)self isFloating]|| [(EKEvent *)self isAllDay];
  v15 = 0;
  [(EKEvent *)self adjustedDatesForDate:dateCopy persistedDateIsInUTC:isAllDay withAdjustmentMode:mode pinMode:pinMode outClientCalendarDate:calendarDate outPersistedDate:&v15];
  v12 = v15;
  v13 = v15;

  return v12;
}

- (void)adjustedDatesForDate:(id)date persistedDateIsInUTC:(BOOL)c withAdjustmentMode:(unint64_t)mode pinMode:(unint64_t)pinMode outClientCalendarDate:(id *)calendarDate outPersistedDate:(id *)persistedDate
{
  cCopy = c;
  dateCopy = date;
  effectiveTimeZone = [(EKEvent *)self effectiveTimeZone];
  if (mode == 1)
  {
    if (cCopy)
    {
      v18 = [dateCopy dateInTimeZone:effectiveTimeZone fromTimeZone:0];
    }

    else
    {
      v18 = dateCopy;
    }

    v16 = v18;
    v17 = dateCopy;
LABEL_12:
    v19 = v17;
    if (!calendarDate)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!mode)
  {
    v15 = [(EKEvent *)self _pinDate:dateCopy withPinMode:pinMode];
    v16 = v15;
    if (cCopy)
    {
      v17 = [v15 dateInTimeZone:0 fromTimeZone:effectiveTimeZone];
    }

    else
    {
      v17 = v15;
      v16 = v17;
    }

    goto LABEL_12;
  }

  v16 = 0;
  v19 = 0;
  if (calendarDate)
  {
LABEL_13:
    *calendarDate = [MEMORY[0x1E69930C8] calendarDateWithDate:v16 timeZone:effectiveTimeZone];
  }

LABEL_14:
  if (persistedDate)
  {
    v20 = v19;
    *persistedDate = v19;
  }
}

- (void)_updateStartDateForDate:(id)date withAdjustmentMode:(unint64_t)mode adjustEndDate:(BOOL)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  if (![(EKObject *)self isNew]&& !self->_originalOccurrenceStartDate)
  {
    occurrenceStartDate = [(EKEvent *)self occurrenceStartDate];
    [(EKEvent *)self setOriginalOccurrenceStartDate:occurrenceStartDate];

    occurrenceEndDate = [(EKEvent *)self occurrenceEndDate];
    [(EKEvent *)self setOriginalOccurrenceEndDate:occurrenceEndDate];
  }

  v16 = 0;
  v11 = [(EKEvent *)self adjustedPersistedDateForDate:dateCopy withAdjustmentMode:mode pinMode:0 clientCalendarDate:&v16];
  v12 = v16;
  [(EKEvent *)self setOccurrenceStartDate:v12];
  [(EKEvent *)self setStartDateRaw:v11];
  if (endDateCopy && ![(EKEvent *)self isEndDateDirty])
  {
    endDateUnadjustedForLegacyClients = [(EKEvent *)self endDateUnadjustedForLegacyClients];
    v14 = [(EKEvent *)self adjustedPersistedDateForDate:endDateUnadjustedForLegacyClients withAdjustmentMode:mode pinMode:1 clientCalendarDate:0];

    changeSet = [(EKObject *)self changeSet];
    [changeSet forceChangeValue:v14 forKey:*MEMORY[0x1E6992968]];
  }
}

- (void)_setStartDate:(id)date andClearProposedTimes:(BOOL)times allowSettingIfNotEditable:(BOOL)editable
{
  timesCopy = times;
  v23 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (editable || [(EKEvent *)self isEditable])
  {
    startDate = [(EKEvent *)self startDate];
    v10 = [startDate isEqual:dateCopy];

    if ((v10 & 1) == 0)
    {
      [(EKEvent *)self _updateStartDateForDate:dateCopy withAdjustmentMode:0];
      if (timesCopy)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        attendees = [(EKCalendarItem *)self attendees];
        v12 = [attendees countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(attendees);
              }

              v16 = *(*(&v18 + 1) + 8 * i);
              [v16 setProposedStartDate:0 forEvent:self];
              [v16 setProposedStartDateChanged:0];
              [v16 setCommentChanged:0];
              [v16 setStatusChanged:0];
              [v16 setProposedStartDateStatus:0];
            }

            v13 = [attendees countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v13);
        }
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (double)duration
{
  occurrenceEndDate = [(EKEvent *)self occurrenceEndDate];
  date = [occurrenceEndDate date];
  date2 = [(EKCalendarDate *)self->_occurrenceStartDate date];
  [date timeIntervalSinceDate:date2];
  v7 = v6;

  return v7;
}

- (double)durationIncludingTravel
{
  [(EKEvent *)self duration];
  v4 = v3;
  [(EKEvent *)self travelTime];
  return v4 + v5;
}

- (void)setEndDateRaw:(id)raw
{
  [(EKObject *)self setSingleChangedValue:raw forKey:*MEMORY[0x1E6992968]];

  [(EKEvent *)self clearCachedTimeValues];
}

- (void)_setEndDateUnadjustedForLegacyClients:(id)clients allowSettingIfNotEditable:(BOOL)editable
{
  clientsCopy = clients;
  if (editable || [(EKEvent *)self isEditable])
  {
    endDateUnadjustedForLegacyClients = [(EKEvent *)self endDateUnadjustedForLegacyClients];
    v7 = [endDateUnadjustedForLegacyClients isEqual:clientsCopy];

    if ((v7 & 1) == 0)
    {
      [(EKEvent *)self _updateEndDateForDate:clientsCopy withAdjustmentMode:0];
    }
  }
}

- (void)_updateEndDateForDate:(id)date withAdjustmentMode:(unint64_t)mode adjustStartDate:(BOOL)startDate
{
  startDateCopy = startDate;
  dateCopy = date;
  if (![(EKObject *)self isNew]&& !self->_originalOccurrenceEndDate)
  {
    occurrenceStartDate = [(EKEvent *)self occurrenceStartDate];
    [(EKEvent *)self setOriginalOccurrenceStartDate:occurrenceStartDate];

    occurrenceEndDate = [(EKEvent *)self occurrenceEndDate];
    [(EKEvent *)self setOriginalOccurrenceEndDate:occurrenceEndDate];
  }

  v18 = 0;
  v11 = [(EKEvent *)self adjustedPersistedDateForDate:dateCopy withAdjustmentMode:mode pinMode:1 clientCalendarDate:&v18];
  v12 = v18;
  [(EKEvent *)self setOccurrenceEndDate:v12];
  endDateRaw = [(EKEvent *)self endDateRaw];
  v14 = [endDateRaw isEqual:v11];

  if ((v14 & 1) == 0)
  {
    [(EKEvent *)self setEndDateRaw:v11];
    if (startDateCopy && ![(EKEvent *)self isStartDateDirty])
    {
      startDate = [(EKEvent *)self startDate];
      v16 = [(EKEvent *)self adjustedPersistedDateForDate:startDate withAdjustmentMode:mode pinMode:0 clientCalendarDate:0];

      changeSet = [(EKObject *)self changeSet];
      [changeSet forceChangeValue:v16 forKey:*MEMORY[0x1E69926C8]];
    }
  }
}

- (void)forceSetTimeZone:(id)zone
{
  v3.receiver = self;
  v3.super_class = EKEvent;
  [(EKCalendarItem *)&v3 setTimeZone:zone];
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  timeZone = [(EKCalendarItem *)self timeZone];
  if ([(EKEvent *)self isEditable])
  {
    v18.receiver = self;
    v18.super_class = EKEvent;
    [(EKCalendarItem *)&v18 setTimeZone:zoneCopy];
    if (zoneCopy)
    {
      if ([(EKEvent *)self isAllDay])
      {
        if (![(EKObject *)self isNew]&& !self->_originalOccurrenceIsAllDay)
        {
          v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_occurrenceIsAllDay];
          [(EKEvent *)self setOriginalOccurrenceIsAllDay:v6];
        }

        [(EKEvent *)self setOccurrenceIsAllDay:0];
        v7 = [MEMORY[0x1E696AD98] numberWithBool:0];
        [(EKObject *)self setSingleChangedValue:v7 forKey:*MEMORY[0x1E6992600]];
      }

      if (timeZone)
      {
        if (![(EKEvent *)self _settingTimeZoneChangesStartEndDates])
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v8 = 0;
    }

    else
    {
      v8 = timeZone != 0;
    }

    startDate = [(EKEvent *)self startDate];
    [(EKEvent *)self _updateStartDateForDate:startDate withAdjustmentMode:0];

    endDateUnadjustedForLegacyClients = [(EKEvent *)self endDateUnadjustedForLegacyClients];
    [(EKEvent *)self _updateEndDateForDate:endDateUnadjustedForLegacyClients withAdjustmentMode:0];

    if ([(EKEvent *)self _settingTimeZoneChangesStartEndDates])
    {
      if (!v8)
      {
        eventStore = [(EKObject *)self eventStore];
        timeZone2 = [eventStore timeZone];

        timeZone = timeZone2;
      }

LABEL_16:
      effectiveTimeZone = [(EKEvent *)self effectiveTimeZone];
      startDate2 = [(EKEvent *)self startDate];
      v15 = [startDate2 dateInTimeZone:effectiveTimeZone fromTimeZone:timeZone];

      [(EKEvent *)self setStartDate:v15];
      endDateUnadjustedForLegacyClients2 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
      v17 = [endDateUnadjustedForLegacyClients2 dateInTimeZone:effectiveTimeZone fromTimeZone:timeZone];

      [(EKEvent *)self setEndDateUnadjustedForLegacyClients:v17];
    }
  }

LABEL_17:
}

- (NSDate)initialStartDate
{
  if ([(EKObject *)self isNew])
  {
    startDate = [(EKEvent *)self startDate];
  }

  else
  {
    v4 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E69926C8]];
    originalOccurrenceIsAllDay = [(EKEvent *)self originalOccurrenceIsAllDay];
    if (originalOccurrenceIsAllDay)
    {
      originalOccurrenceIsAllDay2 = [(EKEvent *)self originalOccurrenceIsAllDay];
      bOOLValue = [originalOccurrenceIsAllDay2 BOOLValue];
    }

    else
    {
      bOOLValue = [(EKEvent *)self occurrenceIsAllDay];
    }

    v8 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E69926D0]];
    v9 = [objc_opt_class() timeZoneFromTimeZoneName:v8 withFloatingTimeZone:0];
    v10 = v9 == 0;

    v13 = 0;
    [(EKEvent *)self adjustedDatesForDate:v4 persistedDateIsInUTC:(v10 | bOOLValue) & 1 withAdjustmentMode:1 pinMode:0 outClientCalendarDate:&v13 outPersistedDate:0];
    v11 = v13;
    startDate = [v11 date];
  }

  return startDate;
}

- (NSDate)initialEndDate
{
  if ([(EKObject *)self isNew])
  {
    endDateUnadjustedForLegacyClients = [(EKEvent *)self endDateUnadjustedForLegacyClients];
  }

  else
  {
    v4 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E6992968]];
    originalOccurrenceIsAllDay = [(EKEvent *)self originalOccurrenceIsAllDay];
    if (originalOccurrenceIsAllDay)
    {
      originalOccurrenceIsAllDay2 = [(EKEvent *)self originalOccurrenceIsAllDay];
      bOOLValue = [originalOccurrenceIsAllDay2 BOOLValue];
    }

    else
    {
      bOOLValue = [(EKEvent *)self occurrenceIsAllDay];
    }

    v8 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E69926D0]];
    v9 = [objc_opt_class() timeZoneFromTimeZoneName:v8 withFloatingTimeZone:0];
    v10 = v9 == 0;

    v13 = 0;
    [(EKEvent *)self adjustedDatesForDate:v4 persistedDateIsInUTC:(v10 | bOOLValue) & 1 withAdjustmentMode:1 pinMode:1 outClientCalendarDate:&v13 outPersistedDate:0];
    v11 = v13;
    endDateUnadjustedForLegacyClients = [v11 date];
  }

  return endDateUnadjustedForLegacyClients;
}

- (BOOL)isMasterOrDetachedOccurrence
{
  if ([(EKObject *)self isNew]|| self->_isMainOccurrence)
  {
    return 1;
  }

  return [(EKEvent *)self isDetached];
}

- (EKCalendarDate)originalOccurrenceEndDate
{
  originalOccurrenceEndDate = self->_originalOccurrenceEndDate;
  if (originalOccurrenceEndDate)
  {
    occurrenceEndDate = originalOccurrenceEndDate;
  }

  else
  {
    occurrenceEndDate = [(EKEvent *)self occurrenceEndDate];
  }

  return occurrenceEndDate;
}

- (NSDate)occurrenceDate
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E90000FFFFFFFFLL] && -[EKEvent isDetached](self, "isDetached"))
  {
    originalStartDate = [(EKEvent *)self originalStartDate];
  }

  else
  {
    occurrenceStartDate = [(EKEvent *)self occurrenceStartDate];
    originalStartDate = [occurrenceStartDate date];
  }

  return originalStartDate;
}

- (void)setStatus:(int64_t)status
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69929E0]];
}

- (int64_t)locationPredictionState
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69929A0]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setLocationPredictionState:(int64_t)state
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69929A0]];
}

- (BOOL)firedTTL
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992978]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)_isParticipationStatusDirty
{
  selfAttendee = [(EKCalendarItem *)self selfAttendee];
  _isParticipantStatusDirty = [selfAttendee _isParticipantStatusDirty];

  return _isParticipantStatusDirty;
}

- (BOOL)_isOnlyChangeToAttendeesSelfAttendeeParticipationStatus
{
  v22 = *MEMORY[0x1E69E9840];
  selfAttendee = [(EKCalendarItem *)self selfAttendee];
  if (selfAttendee)
  {
    v4 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E6992650]];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6992538], *MEMORY[0x1E6992530], 0}];
      if (+[EKObject _compareAllKnownKeysExceptKeys:forObject:againstObject:compareIdentityKeys:](EKObject, "_compareAllKnownKeysExceptKeys:forObject:againstObject:compareIdentityKeys:", v5, selfAttendee, v4, 0) && (-[EKObject changeSet](self, "changeSet"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasUnsavedMultiValueRemovalForKey:*MEMORY[0x1E6992568]], v6, (v7 & 1) == 0))
      {
        [(EKCalendarItem *)self attendeesRaw];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = v20 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v17 + 1) + 8 * i);
              if (v14 != selfAttendee && ([v14 hasChanges] & 1) != 0)
              {
                v8 = 0;
                goto LABEL_19;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v8 = 1;
LABEL_19:
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)setParticipationStatus:(int64_t)status
{
  if (![(EKEvent *)self allowsParticipationStatusModifications])
  {
    return;
  }

  selfAttendee = [(EKCalendarItem *)self selfAttendee];
  if (!selfAttendee)
  {
    goto LABEL_16;
  }

  v12 = selfAttendee;
  v6 = [selfAttendee participantStatus] == status;
  selfAttendee = v12;
  if (v6)
  {
    goto LABEL_16;
  }

  [v12 setParticipantStatus:status];
  [(EKCalendarItem *)self setModifiedProperties:[(EKCalendarItem *)self modifiedProperties]| 0x40];
  if (status == 3)
  {
    v7 = 1;
  }

  else
  {
    v8 = objc_opt_class();
    calendar = [(EKCalendarItem *)self calendar];
    v7 = [v8 _eventAvailabilityForParticipantStatus:status supportedEventAvailabilities:objc_msgSend(calendar isAllDayEvent:{"supportedEventAvailabilities"), -[EKEvent isAllDay](self, "isAllDay")}];

    if (v7 == -1 || [(EKEvent *)self isAllDay]&& [(EKEvent *)self availability]!= EKEventAvailabilityFree)
    {
      goto LABEL_11;
    }
  }

  [(EKEvent *)self setAvailability:v7];
LABEL_11:
  calendar2 = [(EKCalendarItem *)self calendar];
  source = [calendar2 source];
  if ([source sourceType] != 1)
  {

    goto LABEL_15;
  }

  selfAttendee = v12;
  if ((status & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(EKEvent *)self setProposedStartDate:0];
LABEL_15:
    selfAttendee = v12;
  }

LABEL_16:
}

- (BOOL)supportsParticipationStatusModificationsWithoutNotification
{
  organizer = [(EKCalendarItem *)self organizer];
  if (organizer)
  {
    organizer2 = [(EKCalendarItem *)self organizer];
    if ([organizer2 scheduleAgent] == 1)
    {
      v5 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  constraints = [(EKEvent *)self constraints];
  if ([constraints supportsInvitationModificationsWithoutNotification])
  {
    v5 = 1;
  }

  else
  {
    calendar = [(EKCalendarItem *)self calendar];
    source = [calendar source];
    v5 = [source sourceType] == 0;
  }

  if (organizer)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (BOOL)_userAddressesRepresentInvitedAttendee:(id)attendee checkEmailAddresses:(BOOL)addresses
{
  addressesCopy = addresses;
  v47 = *MEMORY[0x1E69E9840];
  attendeeCopy = attendee;
  v6 = [MEMORY[0x1E695DFA8] set];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = attendeeCopy;
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        stringRemovingMailto = [*(*(&v41 + 1) + 8 * i) stringRemovingMailto];
        lowercaseString = [stringRemovingMailto lowercaseString];
        [v6 addObject:lowercaseString];
      }

      v9 = [v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v9);
  }

  organizer = [(EKCalendarItem *)self organizer];
  v15 = [organizer URL];
  absoluteString = [v15 absoluteString];
  stringRemovingMailto2 = [absoluteString stringRemovingMailto];
  lowercaseString2 = [stringRemovingMailto2 lowercaseString];

  if ([v6 containsObject:lowercaseString2])
  {
    v19 = 0;
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [(EKCalendarItem *)self attendees];
    v20 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v34 = lowercaseString2;
      v22 = *v38;
      while (2)
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v37 + 1) + 8 * j);
          v25 = [v24 URL];
          absoluteString2 = [v25 absoluteString];
          stringRemovingMailto3 = [absoluteString2 stringRemovingMailto];
          lowercaseString3 = [stringRemovingMailto3 lowercaseString];

          if (lowercaseString3 && ([v6 containsObject:lowercaseString3] & 1) != 0)
          {
            goto LABEL_26;
          }

          if (addressesCopy)
          {
            emailAddress = [v24 emailAddress];
            stringRemovingMailto4 = [emailAddress stringRemovingMailto];
            lowercaseString4 = [stringRemovingMailto4 lowercaseString];

            if (lowercaseString4 && ([v6 containsObject:lowercaseString4] & 1) != 0)
            {

LABEL_26:
              v19 = 1;
              goto LABEL_27;
            }
          }
        }

        v21 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }

      v19 = 0;
LABEL_27:
      lowercaseString2 = v34;
    }

    else
    {
      v19 = 0;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)isCurrentUserInvitedAttendee
{
  if (![(EKCalendarItem *)self isExternallyOrganizedInvitation])
  {
    return 0;
  }

  selfAttendee = [(EKCalendarItem *)self selfAttendee];
  v4 = selfAttendee != 0;

  return v4;
}

- (BOOL)currentUserMayActAsOrganizer
{
  calendar = [(EKCalendarItem *)self calendar];
  allowsContentModifications = [calendar allowsContentModifications];

  if (!allowsContentModifications)
  {
    return 0;
  }

  if ([(EKCalendarItem *)self isSelfOrganized])
  {
    return 1;
  }

  calendar2 = [(EKCalendarItem *)self calendar];
  if ([calendar2 allowsScheduling])
  {
    calendar3 = [(EKCalendarItem *)self calendar];
    v5 = [calendar3 sharingStatus] == 2 && -[EKCalendarItem isOrganizedBySharedCalendarOwner](self, "isOrganizedBySharedCalendarOwner");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)markEventAsAttendeeForward
{
  v3 = [(EKCalendarItem *)self modifiedProperties]| 0x800;

  [(EKCalendarItem *)self setModifiedProperties:v3];
}

+ (int64_t)_eventAvailabilityForParticipantStatus:(int64_t)status supportedEventAvailabilities:(unint64_t)availabilities isAllDayEvent:(BOOL)event
{
  v5 = -1;
  if (availabilities)
  {
    v5 = 1;
  }

  v6 = -1;
  if (status == 4)
  {
    v6 = (availabilities >> 1) & 2;
  }

  if (status == 2)
  {
    v6 = 0;
  }

  if (event)
  {
    v6 = v5;
  }

  if (availabilities)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_parentParticipationStatus
{
  originalItem = [(EKCalendarItem *)self originalItem];
  v3 = originalItem;
  if (originalItem)
  {
    participationStatus = [originalItem participationStatus];
  }

  else
  {
    participationStatus = 0;
  }

  return participationStatus;
}

- (void)setImage:(id)image
{
  v4 = *MEMORY[0x1E6992980];
  imageCopy = image;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:imageCopy forKey:v4 frozenClass:objc_opt_class()];
}

- (void)setColor:(id)color
{
  v4 = *MEMORY[0x1E6992948];
  colorCopy = color;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:colorCopy forKey:v4 frozenClass:objc_opt_class()];
}

- (NSInteger)birthdayPersonID
{
  birthdayID = [(EKEvent *)self birthdayID];
  v3 = birthdayID;
  if (birthdayID)
  {
    integerValue = [birthdayID integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (void)setBirthdayContact:(id)contact
{
  contactCopy = contact;
  calDisplayName = [contactCopy CalDisplayName];
  [(EKObject *)self setSingleChangedValue:calDisplayName forKey:*MEMORY[0x1E6992930]];

  identifier = [contactCopy identifier];

  [(EKEvent *)self setBirthdayContactIdentifier:identifier];
}

- (BOOL)isNewRecurringSeries
{
  if ([(EKEvent *)self isDetached])
  {
    LOBYTE(hasRecurrenceRules) = 0;
  }

  else
  {
    hasRecurrenceRules = [(EKCalendarItem *)self hasRecurrenceRules];
    if (hasRecurrenceRules)
    {
      LOBYTE(hasRecurrenceRules) = ![(EKCalendarItem *)self _hadRecurrenceRules];
    }
  }

  return hasRecurrenceRules;
}

- (id)recurrenceRule
{
  if ([(EKCalendarItem *)self hasRecurrenceRules])
  {
    recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
    v4 = [recurrenceRules objectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRecurrenceRule:(id)rule
{
  ruleCopy = rule;
  if (ruleCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{ruleCopy, 0}];
    [(EKEvent *)self setRecurrenceRules:v4];
  }

  else
  {
    [(EKEvent *)self setRecurrenceRules:0];
  }
}

- (void)setRecurrenceRules:(id)rules
{
  v4.receiver = self;
  v4.super_class = EKEvent;
  [(EKCalendarItem *)&v4 setRecurrenceRules:rules];
  [(EKEvent *)self clearNextCachedReminderOccurrenceDate];
}

- (id)singleRecurrenceRule
{
  if ([(EKEvent *)self isDetached])
  {
    originalItem = [(EKCalendarItem *)self originalItem];
    singleRecurrenceRule = [originalItem singleRecurrenceRule];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = EKEvent;
    singleRecurrenceRule = [(EKCalendarItem *)&v6 singleRecurrenceRule];
  }

  return singleRecurrenceRule;
}

- (void)makeRecurrenceEndDateBased
{
  v16[1] = *MEMORY[0x1E69E9840];
  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  lastObject = [recurrenceRules lastObject];

  if (lastObject)
  {
    recurrenceEnd = [lastObject recurrenceEnd];
    endDate = [recurrenceEnd endDate];

    if (!endDate)
    {
      _lastRecurrenceDate = [(EKEvent *)self _lastRecurrenceDate];
      mEMORY[0x1E695DEE8] = [MEMORY[0x1E695DEE8] sharedAutoupdatingCurrentCalendar];
      v9 = [mEMORY[0x1E695DEE8] copy];

      effectiveTimeZone = [(EKEvent *)self effectiveTimeZone];
      [v9 setTimeZone:effectiveTimeZone];

      v11 = [_lastRecurrenceDate dateByAddingDays:1 inCalendar:v9];

      v12 = [v11 dateRemovingTimeComponentsInCalendar:v9];

      endDate = [v12 dateByAddingTimeInterval:-1.0];
    }

    v13 = [EKRecurrenceEnd recurrenceEndWithEndDate:endDate];
    [lastObject setRecurrenceEnd:v13];
    v16[0] = lastObject;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [(EKEvent *)self setRecurrenceRules:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_occurrenceDatesForCount:(unint64_t)count
{
  masterEvent = [(EKEvent *)self masterEvent];
  startDate = [masterEvent startDate];
  v7 = [(EKEvent *)self _adjustDateIfFloatingForDate:startDate];

  v8 = objc_alloc_init(EKRecurrenceGenerator);
  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  lastObject = [recurrenceRules lastObject];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  effectiveTimeZone = [(EKEvent *)self effectiveTimeZone];
  LOBYTE(v15) = 0;
  v13 = [(EKRecurrenceGenerator *)v8 copyOccurrenceDatesWithEKEvent:self recurrenceRule:lastObject startDate:v7 endDate:distantFuture timeZone:effectiveTimeZone exceptionDates:0 limit:count adjustDatesForAllDayEvents:v15];

  return v13;
}

- (id)_lastRecurrenceDate
{
  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  lastObject = [recurrenceRules lastObject];

  recurrenceEnd = [lastObject recurrenceEnd];
  occurrenceCount = [recurrenceEnd occurrenceCount];

  if (occurrenceCount)
  {
    recurrenceEnd2 = [lastObject recurrenceEnd];
    endDateUnadjustedForLegacyClients = -[EKEvent _occurrenceDatesForCount:](self, "_occurrenceDatesForCount:", [recurrenceEnd2 occurrenceCount]);

    [endDateUnadjustedForLegacyClients lastObject];
  }

  else
  {
    endDateUnadjustedForLegacyClients = [(EKEvent *)self endDateUnadjustedForLegacyClients];
    [(EKEvent *)self _adjustDateIfFloatingForDate:endDateUnadjustedForLegacyClients];
  }
  v9 = ;

  return v9;
}

- (id)_adjustDateIfFloatingForDate:(id)date
{
  dateCopy = date;
  if ([(EKEvent *)self isFloating])
  {
    effectiveTimeZone = [(EKEvent *)self effectiveTimeZone];
    v6 = [dateCopy dateInTimeZone:0 fromTimeZone:effectiveTimeZone];
  }

  else
  {
    v6 = dateCopy;
  }

  return v6;
}

- (void)makeRecurrenceEndCountBased
{
  v28[1] = *MEMORY[0x1E69E9840];
  singleRecurrenceRule = [(EKEvent *)self singleRecurrenceRule];
  v4 = singleRecurrenceRule;
  if (!singleRecurrenceRule)
  {
    goto LABEL_18;
  }

  recurrenceEnd = [singleRecurrenceRule recurrenceEnd];
  occurrenceCount = [recurrenceEnd occurrenceCount];

  if (!occurrenceCount)
  {
    recurrenceEnd2 = [v4 recurrenceEnd];
    endDate = [recurrenceEnd2 endDate];
    if (endDate)
    {

LABEL_7:
      masterEvent = [(EKEvent *)self masterEvent];
      startDate = [masterEvent startDate];
      v12 = [(EKEvent *)self _adjustDateIfFloatingForDate:startDate];

      if (v12)
      {
        endDateUnadjustedForLegacyClients = [(EKEvent *)self endDateUnadjustedForLegacyClients];
        v14 = [(EKEvent *)self _adjustDateIfFloatingForDate:endDateUnadjustedForLegacyClients];

        recurrenceEnd3 = [v4 recurrenceEnd];
        endDate2 = [recurrenceEnd3 endDate];
        v17 = endDate2;
        if (endDate2)
        {
          v18 = endDate2;
        }

        else
        {
          v18 = v14;
        }

        v19 = v18;

        v20 = objc_alloc_init(EKRecurrenceGenerator);
        effectiveTimeZone = [(EKEvent *)self effectiveTimeZone];
        LOBYTE(v27) = 0;
        v22 = [(EKRecurrenceGenerator *)v20 copyOccurrenceDatesWithEKEvent:self recurrenceRule:v4 startDate:v12 endDate:v19 timeZone:effectiveTimeZone exceptionDates:0 limit:0 adjustDatesForAllDayEvents:v27];

        occurrenceCount = [v22 count];
      }

      else
      {
        occurrenceCount = 0;
      }

      goto LABEL_14;
    }

    isMainOccurrence = [(EKEvent *)self isMainOccurrence];

    if (!isMainOccurrence)
    {
      goto LABEL_7;
    }

    occurrenceCount = 0;
  }

LABEL_14:
  if (occurrenceCount <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = occurrenceCount;
  }

  v24 = [EKRecurrenceEnd recurrenceEndWithOccurrenceCount:v23];
  [v4 setRecurrenceEnd:v24];
  v28[0] = v4;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [(EKEvent *)self setRecurrenceRules:v25];

LABEL_18:
  v26 = *MEMORY[0x1E69E9840];
}

- (BOOL)canWeInferUpdateToComplexRecurrenceRule
{
  if ([(EKCalendarItem *)self hasComplexRecurrence])
  {
    singleRecurrenceRule = [(EKEvent *)self singleRecurrenceRule];
    daysOfTheYear = [singleRecurrenceRule daysOfTheYear];
    if ([daysOfTheYear count])
    {
      v5 = 0;
LABEL_4:

LABEL_11:
      return v5;
    }

    weeksOfTheYear = [singleRecurrenceRule weeksOfTheYear];
    v7 = [weeksOfTheYear count];

    if (v7)
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (![singleRecurrenceRule frequency] || objc_msgSend(singleRecurrenceRule, "frequency") == 1)
    {
      v5 = 1;
      goto LABEL_11;
    }

    daysOfTheYear = [singleRecurrenceRule daysOfTheWeek];
    daysOfTheMonth = [singleRecurrenceRule daysOfTheMonth];
    setPositions = [singleRecurrenceRule setPositions];
    monthsOfTheYear = [singleRecurrenceRule monthsOfTheYear];
    if ([singleRecurrenceRule frequency] == 2)
    {
      if ([daysOfTheMonth count] && !objc_msgSend(setPositions, "count") || objc_msgSend(daysOfTheYear, "count") == 1 && objc_msgSend(setPositions, "count") == 1 || objc_msgSend(daysOfTheYear, "count") == 7 && objc_msgSend(setPositions, "count") == 1)
      {
        v5 = 1;
LABEL_25:

        goto LABEL_4;
      }
    }

    else if ([singleRecurrenceRule frequency] == 3 && !objc_msgSend(setPositions, "count") && objc_msgSend(daysOfTheYear, "count") <= 1)
    {
      v5 = [monthsOfTheYear count] != 0;
      goto LABEL_25;
    }

    v5 = 0;
    goto LABEL_25;
  }

  return 1;
}

- (BOOL)hasADateChangeAndComplexRecurrenceWeDontKnowHowToUpdate
{
  if (![(EKEvent *)self isStartDateDirty])
  {
    return 0;
  }

  if (![(EKCalendarItem *)self hasComplexRecurrence])
  {
    return 0;
  }

  startDate = [(EKEvent *)self startDate];
  occurrenceStartDate = [(EKEvent *)self occurrenceStartDate];
  timeZone = [occurrenceStartDate timeZone];
  v6 = [(EKEvent *)self _occurrenceExistsOnDate:startDate timeZone:timeZone];

  if (v6)
  {
    return 0;
  }

  return [(EKEvent *)self canWeInferUpdateToComplexRecurrenceRule];
}

- (BOOL)hasCustomRecurrence
{
  singleRecurrenceRule = [(EKEvent *)self singleRecurrenceRule];
  mEMORY[0x1E695DEE8] = [MEMORY[0x1E695DEE8] sharedAutoupdatingCurrentCalendar];
  timeZone = [(EKCalendarItem *)self timeZone];
  [mEMORY[0x1E695DEE8] setTimeZone:timeZone];

  if (!singleRecurrenceRule)
  {
    goto LABEL_4;
  }

  startDate = [(EKEvent *)self startDate];

  if (startDate)
  {
    if ([singleRecurrenceRule isPinnedToEndOfFrequency])
    {
LABEL_4:
      LOBYTE(startDate) = 0;
      goto LABEL_30;
    }

    startDate2 = [(EKEvent *)self startDate];
    v8 = [mEMORY[0x1E695DEE8] components:536 fromDate:startDate2];

    if ([singleRecurrenceRule frequency])
    {
      if ([singleRecurrenceRule frequency] == 1)
      {
        if ([singleRecurrenceRule interval] == 1)
        {
          daysOfTheWeek = [singleRecurrenceRule daysOfTheWeek];
          startDate = daysOfTheWeek;
          if (daysOfTheWeek)
          {
            if ([daysOfTheWeek count] == 1)
            {
              v10 = [startDate objectAtIndexedSubscript:0];
              dayOfTheWeek = [v10 dayOfTheWeek];
              weekday = [v8 weekday];
              goto LABEL_11;
            }

            goto LABEL_27;
          }

LABEL_29:

          goto LABEL_30;
        }

LABEL_28:
        LOBYTE(startDate) = 1;
        goto LABEL_29;
      }

      if ([singleRecurrenceRule frequency] != 2)
      {
        if ([singleRecurrenceRule frequency] != 3)
        {
          goto LABEL_28;
        }

        if ([singleRecurrenceRule interval] != 1)
        {
          goto LABEL_28;
        }

        daysOfTheWeek2 = [singleRecurrenceRule daysOfTheWeek];
        v17 = [daysOfTheWeek2 count];

        if (v17)
        {
          goto LABEL_28;
        }

        monthsOfTheYear = [singleRecurrenceRule monthsOfTheYear];
        startDate = monthsOfTheYear;
        if (!monthsOfTheYear)
        {
          goto LABEL_29;
        }

        if ([monthsOfTheYear count] == 1)
        {
          v10 = [startDate objectAtIndexedSubscript:0];
          dayOfTheWeek = [v10 integerValue];
          weekday = [v8 month];
LABEL_11:
          v13 = weekday;

          if (dayOfTheWeek != v13)
          {
            goto LABEL_28;
          }

          goto LABEL_14;
        }

LABEL_27:

        goto LABEL_28;
      }

      if ([singleRecurrenceRule interval] != 1)
      {
        goto LABEL_28;
      }

      daysOfTheWeek3 = [singleRecurrenceRule daysOfTheWeek];
      v15 = [daysOfTheWeek3 count];

      if (v15)
      {
        goto LABEL_28;
      }

      startDate = [singleRecurrenceRule daysOfTheMonth];
      if ([startDate count])
      {
        if ([startDate count] == 1)
        {
          v10 = [startDate objectAtIndexedSubscript:0];
          dayOfTheWeek = [v10 integerValue];
          weekday = [v8 day];
          goto LABEL_11;
        }

        goto LABEL_27;
      }
    }

    else if ([singleRecurrenceRule interval] != 1)
    {
      goto LABEL_28;
    }

LABEL_14:
    LOBYTE(startDate) = 0;
    goto LABEL_29;
  }

LABEL_30:

  return startDate;
}

- (BOOL)futureOccurrencesCannotBeAffectedByChangingStartDateToDate:(id)date
{
  dateCopy = date;
  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  firstObject = [recurrenceRules firstObject];

  if ([firstObject hasDuplicateMonthsOfYear])
  {
    v7 = 1;
  }

  else
  {
    endDate = [firstObject endDate];
    if ([dateCopy isAfterDate:endDate])
    {
      v7 = 1;
    }

    else
    {
      startDate = [(EKEvent *)self startDate];
      _nsCalendar = [(EKEvent *)self _nsCalendar];
      if ([firstObject newStartDateIsInvalid:dateCopy currentStartDate:startDate calendar:_nsCalendar])
      {
        v7 = [firstObject interval] > 1;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (EKEventAvailability)availability
{
  if (![(EKEvent *)self allowsAvailabilityModifications])
  {
    return -1;
  }

  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992920]];
  intValue = [v3 intValue];

  return intValue;
}

- (void)setAvailability:(EKEventAvailability)availability
{
  allowsAvailabilityModifications = [(EKEvent *)self allowsAvailabilityModifications];
  if (availability != EKEventAvailabilityNotSupported && allowsAvailabilityModifications)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:availability];
    [(EKObject *)self setSingleChangedValue:v6 forKey:*MEMORY[0x1E6992920]];
  }
}

- (id)_defaultAlarmOffset
{
  isAllDay = [(EKEvent *)self isAllDay];
  calendar = [(EKCalendarItem *)self calendar];
  source = [calendar source];
  v6 = source;
  if (!isAllDay)
  {
    defaultAlarmOffset = [source defaultAlarmOffset];
    if (!defaultAlarmOffset)
    {
      eventStore = [(EKObject *)self eventStore];
      defaultTimedAlarmOffset = [eventStore defaultTimedAlarmOffset];
      goto LABEL_7;
    }

LABEL_5:
    defaultAlarmOffset = defaultAlarmOffset;
    v10 = defaultAlarmOffset;
    goto LABEL_8;
  }

  defaultAlarmOffset = [source defaultAllDayAlarmOffset];
  if (defaultAlarmOffset)
  {
    goto LABEL_5;
  }

  eventStore = [(EKObject *)self eventStore];
  defaultTimedAlarmOffset = [eventStore defaultAllDayAlarmOffset];
LABEL_7:
  v10 = defaultTimedAlarmOffset;

LABEL_8:

  return v10;
}

- (BOOL)shouldHaveDefaultAlarms
{
  _defaultAlarmOffset = [(EKEvent *)self _defaultAlarmOffset];
  v3 = _defaultAlarmOffset;
  if (_defaultAlarmOffset)
  {
    v4 = [_defaultAlarmOffset integerValue] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)defaultAlarm
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  alarms = [(EKCalendarItem *)self alarms];
  v4 = [alarms countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(alarms);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      if ([v8 isDefaultAlarm])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [alarms countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    anyObject = v8;

    if (anyObject)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  defaultAlarms = [(EKEvent *)self defaultAlarms];
  anyObject = [defaultAlarms anyObject];

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];

  return anyObject;
}

- (id)defaultAlarms
{
  _defaultAlarmOffset = [(EKEvent *)self _defaultAlarmOffset];
  v3 = _defaultAlarmOffset;
  if (_defaultAlarmOffset && [_defaultAlarmOffset integerValue] != 0x7FFFFFFFFFFFFFFFLL && (+[EKAlarm alarmWithRelativeOffset:](EKAlarm, "alarmWithRelativeOffset:", objc_msgSend(v3, "integerValue")), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "setDefaultAlarm:", 1), v4))
  {
    v5 = [MEMORY[0x1E695DFD8] setWithObject:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  return v5;
}

- (NSString)virtualConferenceTextRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  virtualConference = [(EKEvent *)self virtualConference];
  string = [MEMORY[0x1E696AD60] string];
  title = [virtualConference title];

  if (title)
  {
    title2 = [virtualConference title];
    [string appendFormat:@"%@\n\n", title2];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  joinMethods = [virtualConference joinMethods];
  v7 = [joinMethods countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(joinMethods);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        title3 = [v11 title];

        if (title3)
        {
          title4 = [v11 title];
          [string appendFormat:@"%@\n", title4];
        }

        v14 = [v11 URL];
        absoluteString = [v14 absoluteString];
        [string appendFormat:@"%@\n\n", absoluteString];
      }

      v8 = [joinMethods countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  conferenceDetails = [virtualConference conferenceDetails];

  if (conferenceDetails)
  {
    conferenceDetails2 = [virtualConference conferenceDetails];
    [string appendString:conferenceDetails2];
  }

  v18 = *MEMORY[0x1E69E9840];

  return string;
}

- (id)_originallyCommittedVirtualConference
{
  v2 = [(EKEvent *)self committedValueForKey:*MEMORY[0x1E6992620]];
  if (v2)
  {
    v3 = [EKConferencePersistence deserializeConference:v2];
    conference = [v3 conference];
  }

  else
  {
    conference = 0;
  }

  return conference;
}

- (void)setVirtualConference:(id)conference
{
  v26 = *MEMORY[0x1E69E9840];
  conferenceCopy = conference;
  virtualConference = [(EKEvent *)self virtualConference];
  v6 = virtualConference;
  if (virtualConference)
  {
    if (![virtualConference isWritable])
    {
      goto LABEL_21;
    }

    if (conferenceCopy)
    {
      if (![conferenceCopy isWritable])
      {
LABEL_11:
        _originallyCommittedVirtualConference = [(EKEvent *)self _originallyCommittedVirtualConference];
        if (([_originallyCommittedVirtualConference isEqual:v6] & 1) == 0)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          joinMethods = [v6 joinMethods];
          v15 = [joinMethods countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v22;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v22 != v17)
                {
                  objc_enumerationMutation(joinMethods);
                }

                v19 = [*(*(&v21 + 1) + 8 * i) URL];
                [EKConferenceUtils invalidateConferenceURL:v19];
              }

              v16 = [joinMethods countByEnumeratingWithState:&v21 objects:v25 count:16];
            }

            while (v16);
          }
        }

        goto LABEL_21;
      }

      displayNotes2 = [EKConferencePersistence serializeConference:conferenceCopy];
      displayNotes = [(EKEvent *)self displayNotes];
      v9 = [(EKEvent *)self _buildConferenceStringFromNotesWithoutConference:displayNotes serializedConference:displayNotes2];
      [(EKEvent *)self setNotes:v9];
    }

    else
    {
      displayNotes2 = [(EKEvent *)self displayNotes];
      [(EKEvent *)self setNotes:displayNotes2];
    }

    goto LABEL_11;
  }

  if (conferenceCopy && [conferenceCopy isWritable])
  {
    v10 = [EKConferencePersistence serializeConference:conferenceCopy];
    notes = [(EKCalendarItem *)self notes];
    v12 = [(EKEvent *)self _buildConferenceStringFromNotesWithoutConference:notes serializedConference:v10];
    [(EKEvent *)self setNotes:v12];
  }

LABEL_21:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)invalidateVirtualConferenceURLIfNeededOnCommit:(id)commit
{
  commitCopy = commit;
  if (commitCopy)
  {
    virtualConferenceURLsToInvalidateOnCommit = self->_virtualConferenceURLsToInvalidateOnCommit;
    v8 = commitCopy;
    if (!virtualConferenceURLsToInvalidateOnCommit)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_virtualConferenceURLsToInvalidateOnCommit;
      self->_virtualConferenceURLsToInvalidateOnCommit = v6;

      virtualConferenceURLsToInvalidateOnCommit = self->_virtualConferenceURLsToInvalidateOnCommit;
    }

    [(NSMutableArray *)virtualConferenceURLsToInvalidateOnCommit addObject:v8];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)clearVirtualConferenceURLsQueuedForInvalidation
{
  virtualConferenceURLsToInvalidateOnCommit = self->_virtualConferenceURLsToInvalidateOnCommit;
  self->_virtualConferenceURLsToInvalidateOnCommit = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)invalidateRemovedVirtualConferences
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_virtualConferenceURLsToInvalidateOnCommit;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        eventStore = [(EKObject *)self eventStore];
        [EKConferenceUtils invalidateConferenceURLIfNeeded:v8 inEventStore:eventStore];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_buildConferenceStringFromNotesWithoutConference:(id)conference serializedConference:(id)serializedConference
{
  serializedConferenceCopy = serializedConference;
  if (conference)
  {
    conferenceCopy = conference;
  }

  else
  {
    conferenceCopy = &stru_1F1B49D68;
  }

  v7 = [MEMORY[0x1E696AD60] stringWithString:conferenceCopy];
  if ([v7 length] && objc_msgSend(serializedConferenceCopy, "length") && (objc_msgSend(v7, "hasSuffix:", @"\n\n") & 1) == 0)
  {
    [v7 appendString:@"\n\n"];
  }

  if ([serializedConferenceCopy length])
  {
    [v7 appendString:serializedConferenceCopy];
  }

  return v7;
}

- (int64_t)specialDayType
{
  calendar = [(EKCalendarItem *)self calendar];
  isChinaHolidayCalendar = [calendar isChinaHolidayCalendar];

  if (!isChinaHolidayCalendar)
  {
    return 0;
  }

  specialDayString = [(EKEvent *)self specialDayString];
  v6 = specialDayString;
  if (specialDayString)
  {
    if ([specialDayString isEqualToString:*MEMORY[0x1E69E3DE0]])
    {
      v7 = 1;
    }

    else if ([v6 isEqualToString:*MEMORY[0x1E69E3DD8]])
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setSpecialDayType:(int64_t)type
{
  if (type)
  {
    if (type == 3)
    {
      v3 = MEMORY[0x1E69E3DD8];
    }

    else
    {
      if (type != 1)
      {
        return;
      }

      v3 = MEMORY[0x1E69E3DE0];
    }

    type = *v3;
  }

  [(EKEvent *)self setSpecialDayString:type];
}

- (void)removeServerRefreshRelatedProperties
{
  [(EKCalendarItem *)self setExternalModificationTag:0];

  [(EKCalendarItem *)self setExternalID:0];
}

- (void)setFlags:(unint64_t)flags
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:flags];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69925D8]];
}

- (void)setFlag:(unint64_t)flag value:(BOOL)value
{
  valueCopy = value;
  flags = [(EKEvent *)self flags];
  if (valueCopy)
  {
    v8 = flags | flag;
  }

  else
  {
    v8 = flags & ~flag;
  }

  [(EKEvent *)self setFlags:v8];
}

- (unint64_t)invitationStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992990]];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setInvitationStatus:(unint64_t)status
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:status];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992990]];
}

- (void)clearInvitationStatus
{
  persistentObject = [(EKObject *)self persistentObject];
  [persistentObject unloadPropertyForKey:*MEMORY[0x1E6992990]];
}

- (void)setIsAlerted:(BOOL)alerted
{
  if (alerted)
  {
    [(EKEvent *)self _setInvitationStatusAlertedIfNecessary];
  }

  else
  {
    [(EKEvent *)self _setInvitationStatusUnalertedIfNecessary];
  }
}

- (void)_setInvitationStatusAlertedIfNecessary
{
  if ([(EKEvent *)self invitationStatus]== 3)
  {

    [(EKEvent *)self setInvitationStatus:2];
  }
}

- (void)_setInvitationStatusUnalertedIfNecessary
{
  invitationChangedProperties = [(EKEvent *)self invitationChangedProperties];
  _shouldAlertInviteeDeclines = [(EKEvent *)self _shouldAlertInviteeDeclines];
  if (invitationChangedProperties != 32 || _shouldAlertInviteeDeclines)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  [(EKEvent *)self setInvitationStatus:v6];
}

- (BOOL)_shouldAlertInviteeDeclines
{
  eventStore = [(EKObject *)self eventStore];
  preferences = [eventStore preferences];
  alertInviteeDeclines = [preferences alertInviteeDeclines];

  return alertInviteeDeclines;
}

- (int)externalTrackingStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992970]];
  intValue = [v2 intValue];

  return intValue;
}

- (id)_travelTimeInternalDescription
{
  [(EKEvent *)self travelTime];
  if (v2 <= 0.0)
  {
    v8 = 0;
  }

  else
  {
    v3 = v2;
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v5 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v5 sinceDate:v3];
    v7 = [currentCalendar components:96 fromDate:v5 toDate:v6 options:0];
    if ([v7 hour])
    {
      [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld hours, %ld minutes", objc_msgSend(v7, "hour"), objc_msgSend(v7, "minute")];
    }

    else
    {
      [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld minutes", objc_msgSend(v7, "minute"), v10];
    }
    v8 = ;
  }

  return v8;
}

- (NSDate)startDateIncludingTravel
{
  startDate = [(EKEvent *)self startDate];
  [(EKEvent *)self travelTime];
  v5 = [startDate dateByAddingTimeInterval:-v4];

  return v5;
}

- (void)setTravelTime:(double)time
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(time, 0.0)}];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69929F8]];
}

- (void)setProposedStartDate:(id)date
{
  dateCopy = date;
  selfAttendee = [(EKCalendarItem *)self selfAttendee];
  if (selfAttendee && (v6 = selfAttendee, v7 = [(EKCalendarItem *)self isExternallyOrganizedInvitation], v6, v7))
  {
    [(EKObject *)self setSingleChangedValue:dateCopy forKey:*MEMORY[0x1E69929C0]];
    selfAttendee2 = [(EKCalendarItem *)self selfAttendee];
    [selfAttendee2 setProposedStartDate:dateCopy forEvent:self];

    if (dateCopy)
    {
      [(EKEvent *)self setInvitationStatus:0];
    }
  }

  else
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKEvent *)v9 setProposedStartDate:?];
    }
  }
}

- (NSDate)proposedEndDate
{
  proposedStartDate = [(EKEvent *)self proposedStartDate];
  [(EKEvent *)self duration];
  v4 = [proposedStartDate dateByAddingTimeInterval:?];

  return v4;
}

- (BOOL)allowsAttendeesModifications
{
  if ([(EKEvent *)self status]== EKEventStatusCanceled)
  {
    return 0;
  }

  eventStore = [(EKObject *)self eventStore];
  skipModificationValidation = [eventStore skipModificationValidation];

  if (skipModificationValidation & 1) != 0 || ([MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement])
  {
    return 1;
  }

  if ([(EKEvent *)self currentUserMayActAsOrganizer])
  {
    canForward = 1;
  }

  else if ([(EKCalendarItem *)self isExternallyOrganizedInvitation])
  {
    canForward = [(EKEvent *)self canForward];
  }

  else
  {
    canForward = 0;
  }

  constraints = [(EKEvent *)self constraints];
  supportsOutgoingInvitations = [constraints supportsOutgoingInvitations];

  isDefaultSchedulingCalendar = 0;
  if (canForward && supportsOutgoingInvitations)
  {
    calendar = [(EKCalendarItem *)self calendar];
    if ([calendar allowsScheduling])
    {
      calendar2 = [(EKCalendarItem *)self calendar];
      allowsContentModifications = [calendar2 allowsContentModifications];

      if (!allowsContentModifications)
      {
        return 0;
      }

      calendar = [(EKEvent *)self constraints];
      if ([calendar requiresOutgoingInvitationsInDefaultCalendar])
      {
        hasAttendees = [(EKCalendarItem *)self hasAttendees];

        if (hasAttendees)
        {
          return 1;
        }

        calendar = [(EKCalendarItem *)self calendar];
        isDefaultSchedulingCalendar = [calendar isDefaultSchedulingCalendar];
      }

      else
      {
        isDefaultSchedulingCalendar = 1;
      }
    }

    else
    {
      isDefaultSchedulingCalendar = 0;
    }
  }

  return isDefaultSchedulingCalendar;
}

- (BOOL)allowsTravelTimeModifications
{
  calendar = [(EKCalendarItem *)self calendar];
  if ([calendar allowsContentModifications])
  {
    constraints = [(EKEvent *)self constraints];
    if ([constraints supportsTravelTime])
    {
      v5 = ![(EKEvent *)self isAllDay];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)allowsPrivacyLevelModifications
{
  eventStore = [(EKObject *)self eventStore];
  skipModificationValidation = [eventStore skipModificationValidation];

  if ((skipModificationValidation & 1) == 0)
  {
    calendar = [(EKCalendarItem *)self calendar];
    constraints = [(EKEvent *)self constraints];
    if ([constraints supportsPrivateEvents])
    {
      if ([MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement])
      {
LABEL_5:
        LOBYTE(v5) = 1;
LABEL_10:

        return v5;
      }

      source = [calendar source];
      isDelegate = [source isDelegate];

      sharingStatus = [calendar sharingStatus];
      if (sharingStatus == 2 || !isDelegate)
      {
        if (sharingStatus == 2)
        {
          goto LABEL_9;
        }
      }

      else if (([constraints allowsPrivateEventAccessByDelegate] & 1) == 0)
      {
        goto LABEL_9;
      }

      if ([constraints prohibitsPrivateEventsWithAttendees])
      {
        v5 = ![(EKCalendarItem *)self hasAttendees];
        goto LABEL_10;
      }

      goto LABEL_5;
    }

LABEL_9:
    LOBYTE(v5) = 0;
    goto LABEL_10;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (BOOL)allowsAllDayModifications
{
  if ([(EKEvent *)self isEditable])
  {
    if (![(EKCalendarItem *)self hasRecurrenceRules])
    {
      return 1;
    }

    if (![(EKEvent *)self isDetached])
    {
      detachedItems = [(EKCalendarItem *)self detachedItems];
      v3 = [detachedItems count] == 0;

      return v3;
    }
  }

  return 0;
}

- (void)setPrivacyLevel:(int64_t)level
{
  if ([(EKEvent *)self allowsPrivacyLevelModifications])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:level];
    [(EKObject *)self setSingleChangedValue:v5 forKey:*MEMORY[0x1E69929B8]];
  }
}

- (void)setPrivacyLevelWithoutVerifyingPrivacyModificationsAllowed:(int64_t)allowed
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:allowed];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69929B8]];
}

- (BOOL)locationIsAConferenceRoom
{
  v19 = *MEMORY[0x1E69E9840];
  locationWithoutPrediction = [(EKEvent *)self locationWithoutPrediction];
  v4 = locationWithoutPrediction;
  if (locationWithoutPrediction && [locationWithoutPrediction length] && -[EKCalendarItem hasAttendees](self, "hasAttendees"))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    attendees = [(EKCalendarItem *)self attendees];
    v6 = [attendees countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(attendees);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([v9 participantType] == 2)
          {
            name = [v9 name];
            v11 = [name isEqualToString:v4];

            if (v11)
            {
              LOBYTE(v6) = 1;
              goto LABEL_17;
            }
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

LABEL_17:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unsigned)invitationChangedProperties
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992988]];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (void)_setInvitationChangedProperty:(BOOL)property forFlag:(unsigned int)flag
{
  propertyCopy = property;
  invitationChangedProperties = [(EKEvent *)self invitationChangedProperties];
  if (propertyCopy)
  {
    v8 = invitationChangedProperties | flag;
  }

  else
  {
    v8 = invitationChangedProperties & ~flag;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
  [(EKObject *)self setSingleChangedValue:v9 forKey:*MEMORY[0x1E6992988]];
}

- (BOOL)canForward
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992940]];
  v4 = v3;
  if (v3 && [v3 BOOLValue])
  {
    constraints = [(EKEvent *)self constraints];
    supportsEventForwarding = [constraints supportsEventForwarding];
  }

  else
  {
    supportsEventForwarding = 0;
  }

  return supportsEventForwarding;
}

- (BOOL)serverSupportedProposeNewTime
{
  constraints = [(EKEvent *)self constraints];
  if ([constraints allowsProposeNewTime])
  {
    supportsResponseComments = 1;
  }

  else
  {
    constraints2 = [(EKEvent *)self constraints];
    supportsResponseComments = [constraints2 supportsResponseComments];
  }

  return supportsResponseComments;
}

- (BOOL)disallowProposeNewTime
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992960]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)allowsProposedTimeModifications
{
  if ([(EKEvent *)self disallowProposeNewTime])
  {
    goto LABEL_13;
  }

  if ([(EKEvent *)self isAllDay])
  {
    goto LABEL_13;
  }

  if ([(EKEvent *)self status]== EKEventStatusCanceled)
  {
    goto LABEL_13;
  }

  calendar = [(EKCalendarItem *)self calendar];
  allowsContentModifications = [calendar allowsContentModifications];

  if (!allowsContentModifications)
  {
    goto LABEL_13;
  }

  isExternallyOrganizedInvitation = [(EKCalendarItem *)self isExternallyOrganizedInvitation];
  if (isExternallyOrganizedInvitation)
  {
    selfAttendee = [(EKCalendarItem *)self selfAttendee];

    if (selfAttendee)
    {
      if (![(EKCalendarItem *)self isOrganizedBySharedCalendarOwner])
      {
        calendar2 = [(EKCalendarItem *)self calendar];
        allowsScheduling = [calendar2 allowsScheduling];

        if (allowsScheduling)
        {
          if ([(EKEvent *)self serverSupportedProposeNewTime])
          {
            goto LABEL_12;
          }

          organizer = [(EKCalendarItem *)self organizer];
          emailAddress = [organizer emailAddress];

          if (emailAddress)
          {
            calendar3 = [(EKCalendarItem *)self calendar];
            source = [calendar3 source];
            hasOwnerEmailAddress = [source hasOwnerEmailAddress];

            if (hasOwnerEmailAddress)
            {
LABEL_12:
              LOBYTE(isExternallyOrganizedInvitation) = 1;
              return isExternallyOrganizedInvitation;
            }
          }
        }
      }
    }

LABEL_13:
    LOBYTE(isExternallyOrganizedInvitation) = 0;
  }

  return isExternallyOrganizedInvitation;
}

- (BOOL)supportsAddingAttachments
{
  if ([(EKCalendarItem *)self isExternallyOrganizedInvitation])
  {
    return 0;
  }

  calendar = [(EKCalendarItem *)self calendar];
  allowsContentModifications = [calendar allowsContentModifications];

  if (!allowsContentModifications)
  {
    return 0;
  }

  constraints = [(EKEvent *)self constraints];
  supportsAttachments = [constraints supportsAttachments];

  return supportsAttachments;
}

- (void)setNotes:(id)notes
{
  notesCopy = notes;
  notes = [(EKCalendarItem *)self notes];
  if ([notes isEqual:notesCopy])
  {
  }

  else
  {
    if ([notesCopy isEqualToString:&stru_1F1B49D68])
    {
      notes2 = [(EKCalendarItem *)self notes];

      if (!notes2)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v7.receiver = self;
    v7.super_class = EKEvent;
    [(EKCalendarItem *)&v7 setNotes:notesCopy];
    [(EKEvent *)self setNotesCommon:notesCopy];
  }

LABEL_8:
}

- (id)displayNotes
{
  v11 = 0;
  v12 = 0;
  [(EKEvent *)self parsedConference:&v12 andNotes:&v11];
  v3 = v12;
  v4 = v11;
  if (v3)
  {
    range = [v3 range];
    v7 = [v4 stringByReplacingCharactersInRange:range withString:{v6, &stru_1F1B49D68}];

    if (![v7 hasSuffix:@"\n\n"])
    {
      goto LABEL_6;
    }

    notes = [v7 substringToIndex:{objc_msgSend(v7, "length") - 2}];
  }

  else
  {
    notes = [(EKCalendarItem *)self notes];
    v7 = v4;
  }

  v7 = notes;
LABEL_6:
  cDVStringByXMLUnquoting = [v7 CDVStringByXMLUnquoting];

  return cDVStringByXMLUnquoting;
}

- (void)setDisplayNotes:(id)notes
{
  notesCopy = notes;
  v11 = 0;
  v12 = 0;
  [(EKEvent *)self parsedConference:&v12 andNotes:&v11];
  v5 = v12;
  v6 = v11;
  v7 = notesCopy;
  if (v5)
  {
    range = [v5 range];
    v10 = [v6 substringWithRange:{range, v9}];
    v7 = [(EKEvent *)self _buildConferenceStringFromNotesWithoutConference:notesCopy serializedConference:v10];
  }

  [(EKEvent *)self setNotes:v7];
}

- (void)setURL:(id)l
{
  v5.receiver = self;
  v5.super_class = EKEvent;
  lCopy = l;
  [(EKCalendarItem *)&v5 setURL:lCopy];
  [(EKEvent *)self setURLCommon:lCopy, v5.receiver, v5.super_class];
}

- (id)URL
{
  v11.receiver = self;
  v11.super_class = EKEvent;
  v3 = [(EKCalendarItem *)&v11 URL];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else if ([(EKEvent *)self isBirthday])
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = MEMORY[0x1E696AEC0];
    birthdayContactIdentifier = [(EKEvent *)self birthdayContactIdentifier];
    v9 = [v7 stringWithFormat:@"addressbook://%@", birthdayContactIdentifier];
    v5 = [v6 URLWithString:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setStructuredLocation:(EKStructuredLocation *)structuredLocation
{
  v4 = structuredLocation;
  [(EKEvent *)self setPredictedLocationFrozen:0];
  [(EKEvent *)self _clearLocationPredictionCacheIfNotFrozen];
  [(EKCalendarItem *)self setStructuredLocationWithoutPrediction:v4];

  [(EKEvent *)self clearDetectedConferenceURL];
}

- (void)setStructuredLocation:(id)location preserveConferenceRooms:(BOOL)rooms
{
  v28 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  if (rooms)
  {
    v7 = MEMORY[0x1E695DF70];
    _conferenceRoomDisplayStrings = [(EKEvent *)self _conferenceRoomDisplayStrings];
    v9 = [v7 arrayWithArray:_conferenceRoomDisplayStrings];

    if (locationCopy)
    {
      title = [locationCopy title];

      if (title)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        title2 = [locationCopy title];
        v12 = [title2 componentsSeparatedByString:@" "];;

        v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v23 + 1) + 8 * i);
              if (([v9 containsObject:v17] & 1) == 0)
              {
                [v9 addObject:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v14);
        }
      }
    }

    [(EKEvent *)self setStructuredLocation:locationCopy];
    v18 = [objc_opt_class() _locationStringForLocations:v9];
    structuredLocation = [(EKEvent *)self structuredLocation];

    if (structuredLocation)
    {
      structuredLocation2 = [(EKEvent *)self structuredLocation];
      [structuredLocation2 setTitle:v18];
    }

    else
    {
      structuredLocation2 = [EKStructuredLocation locationWithTitle:v18];
      [(EKEvent *)self setStructuredLocation:structuredLocation2];
    }
  }

  else
  {
    roomAttendees = [(EKEvent *)self roomAttendees];
    [(EKEvent *)self removeConferenceRooms:roomAttendees];

    [(EKEvent *)self setStructuredLocation:locationCopy];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)roomAttendees
{
  attendees = [(EKCalendarItem *)self attendees];
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_153];
  v4 = [attendees filteredArrayUsingPredicate:v3];

  return v4;
}

- (void)addConferenceRooms:(id)rooms
{
  v16 = *MEMORY[0x1E69E9840];
  roomsCopy = rooms;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [roomsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(roomsCopy);
        }

        [(EKCalendarItem *)self addAttendee:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [roomsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  structuredLocation = [(EKEvent *)self structuredLocation];
  [(EKEvent *)self setStructuredLocation:structuredLocation preserveConferenceRooms:1];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeConferenceRooms:(id)rooms
{
  v30 = *MEMORY[0x1E69E9840];
  roomsCopy = rooms;
  roomAttendees = [(EKEvent *)self roomAttendees];
  v6 = [MEMORY[0x1E695DF70] arrayWithArray:roomAttendees];
  [v6 removeObjectsInArray:roomsCopy];
  if ([v6 count])
  {
    v24 = 0;
  }

  else
  {
    locations = [(EKEvent *)self locations];
    v8 = [locations count];
    v24 = v8 == [roomAttendees count];
  }

  v9 = MEMORY[0x1E695DF70];
  structuredLocation = [(EKEvent *)self structuredLocation];
  title = [structuredLocation title];
  v12 = [title componentsSeparatedByString:@" "];;
  v13 = [v9 arrayWithArray:v12];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = roomsCopy;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        displayString = [v19 displayString];
        if (displayString)
        {
          [v13 removeObject:displayString];
        }

        [(EKCalendarItem *)self removeAttendee:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  if (v24)
  {
    [(EKEvent *)self setStructuredLocation:0];
  }

  else
  {
    v21 = [objc_opt_class() _locationStringForLocations:v13];
    structuredLocation2 = [(EKEvent *)self structuredLocation];
    [structuredLocation2 setTitle:v21];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_conferenceRoomDisplayStrings
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  roomAttendees = [(EKEvent *)self roomAttendees];
  v5 = [roomAttendees countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(roomAttendees);
        }

        displayString = [*(*(&v12 + 1) + 8 * i) displayString];
        if (displayString)
        {
          [array addObject:displayString];
        }
      }

      v6 = [roomAttendees countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)_firstNonConferenceRoomLocationTitle
{
  v32 = *MEMORY[0x1E69E9840];
  locationsWithoutPrediction = [(EKEvent *)self locationsWithoutPrediction];
  if ([(EKCalendarItem *)self hasAttendees])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = locationsWithoutPrediction;
    v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v4)
    {
      v5 = v4;
      v21 = *v27;
      v19 = locationsWithoutPrediction;
      while (1)
      {
        v6 = 0;
LABEL_5:
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * v6);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        attendees = [(EKCalendarItem *)self attendees];
        v9 = [attendees countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (!v9)
        {
          break;
        }

        v10 = v9;
        v11 = *v23;
LABEL_9:
        v12 = 0;
        while (1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(attendees);
          }

          v13 = *(*(&v22 + 1) + 8 * v12);
          if ([v13 participantType] == 2)
          {
            name = [v13 name];
            v15 = [name isEqualToString:v7];

            if (v15)
            {
              break;
            }
          }

          if (v10 == ++v12)
          {
            v10 = [attendees countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v10)
            {
              goto LABEL_9;
            }

            goto LABEL_21;
          }
        }

        if (++v6 != v5)
        {
          goto LABEL_5;
        }

        v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
        v16 = 0;
        locationsWithoutPrediction = v19;
        if (!v5)
        {
          goto LABEL_23;
        }
      }

LABEL_21:

      v16 = v7;
      locationsWithoutPrediction = v19;
    }

    else
    {
      v16 = 0;
    }

LABEL_23:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_cachedPredictedLocation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__EKEvent__cachedPredictedLocation__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"PredictedLocation" populateBlock:v4];

  return v2;
}

id __35__EKEvent__cachedPredictedLocation__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 73) == 1 && [EKStructuredLocationPrediction shouldDoLocationPredictionForEvent:?])
  {
    v2 = [*(a1 + 32) title];
    v3 = [*(a1 + 32) locationWithoutPrediction];
    v4 = [*(a1 + 32) calendar];
    v5 = [v4 calendarIdentifier];
    v6 = [EKCachedPredictedLocation cachedPredictedLocationWithTitle:v2 location:v3 calendar:v5];
  }

  else
  {
    v6 = +[EKCachedPredictedLocation emptyPrediction];
  }

  return v6;
}

- (id)cachedPredictedLocation
{
  os_unfair_lock_lock(&self->_locationPredictionLock);
  _cachedPredictedLocation = [(EKEvent *)self _cachedPredictedLocation];
  os_unfair_lock_unlock(&self->_locationPredictionLock);

  return _cachedPredictedLocation;
}

- (id)predictedLocation
{
  cachedPredictedLocation = [(EKEvent *)self cachedPredictedLocation];
  v4 = [cachedPredictedLocation fetchPredictedLocationWithDelegate:self];

  return v4;
}

- (void)_clearLocationPredictionCacheIfNotFrozenHoldingLock
{
  if (!self->_locationPredictionFrozen)
  {
    [(EKObject *)self clearCachedValueForKey:@"PredictedLocation"];
  }
}

- (void)_clearLocationPredictionCacheIfNotFrozen
{
  os_unfair_lock_lock(&self->_locationPredictionLock);
  [(EKEvent *)self _clearLocationPredictionCacheIfNotFrozenHoldingLock];

  os_unfair_lock_unlock(&self->_locationPredictionLock);
}

- (void)confirmPredictedLocation:(id)location
{
  locationCopy = location;
  [(EKEvent *)self setPredictedLocationFrozen:0];
  if (!locationCopy)
  {
    locationCopy = [(EKEvent *)self structuredLocation];
  }

  duplicate = [locationCopy duplicate];

  [duplicate setPredictedLOI:0];
  if (-[EKEvent isEditable](self, "isEditable") && (-[EKEvent constraints](self, "constraints"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 supportsStructuredLocations], v5, v6))
  {
    [(EKEvent *)self setStructuredLocation:duplicate];
  }

  else
  {
    locationWithoutPrediction = [(EKEvent *)self locationWithoutPrediction];
    [duplicate setDerivedFrom:locationWithoutPrediction];

    [(EKCalendarItem *)self setClientLocation:duplicate];
  }

  [(EKEvent *)self setLocationPredictionState:2];
}

- (void)rejectPredictedLocation
{
  [(EKEvent *)self setPredictedLocationFrozen:0];
  preferredLocationWithoutPrediction = [(EKEvent *)self preferredLocationWithoutPrediction];
  [(EKEvent *)self setStructuredLocation:preferredLocationWithoutPrediction];

  [(EKEvent *)self setLocationPredictionState:3];
}

- (BOOL)hasPredictedLocation
{
  preferredLocation = [(EKCalendarItem *)self preferredLocation];
  isPrediction = [preferredLocation isPrediction];

  return isPrediction;
}

- (void)setPredictedLocationFrozen:(BOOL)frozen
{
  frozenCopy = frozen;
  os_unfair_lock_lock(&self->_locationPredictionLock);
  if (self->_locationPredictionFrozen != frozenCopy)
  {
    self->_locationPredictionFrozen = frozenCopy;
    if (frozenCopy)
    {
      _cachedPredictedLocation = [(EKEvent *)self _cachedPredictedLocation];
      frozenCopy = [_cachedPredictedLocation frozenCopy];
      [(EKObject *)self setCachedValue:frozenCopy forKey:@"PredictedLocation"];
    }

    else
    {
      [(EKEvent *)self _clearLocationPredictionCacheIfNotFrozenHoldingLock];
    }
  }

  os_unfair_lock_unlock(&self->_locationPredictionLock);
}

- (void)setLocationPredictionAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  os_unfair_lock_lock(&self->_locationPredictionLock);
  if (self->_locationPredictionAllowed != allowedCopy)
  {
    self->_locationPredictionAllowed = allowedCopy;
    if (allowedCopy)
    {
      [(EKEvent *)self _clearLocationPredictionCacheIfNotFrozenHoldingLock];
    }
  }

  os_unfair_lock_unlock(&self->_locationPredictionLock);
}

- (NSURL)conferenceURL
{
  conferenceURLString = [(EKEvent *)self conferenceURLString];
  if (conferenceURLString)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:conferenceURLString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setConferenceURL:(id)l
{
  absoluteString = [l absoluteString];
  [(EKEvent *)self setConferenceURLString:absoluteString];
}

- (void)setCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (!calendarCopy)
  {
    v12.receiver = self;
    v12.super_class = EKEvent;
    [(EKCalendarItem *)&v12 setCalendar:0];
    goto LABEL_11;
  }

  calendar = [(EKCalendarItem *)self calendar];
  source = [calendar source];
  if (source || ([calendarCopy source], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    calendar2 = [(EKCalendarItem *)self calendar];
    source2 = [calendar2 source];
    source3 = [calendarCopy source];
    v11 = [source2 isEqual:source3] ^ 1;

    if (source)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_9:
  v12.receiver = self;
  v12.super_class = EKEvent;
  [(EKCalendarItem *)&v12 setCalendar:calendarCopy];
  if (v11)
  {
    [(EKEvent *)self updateDefaultAlarms];
  }

LABEL_11:
  [(EKEvent *)self clearIntegrationType];
}

- (void)setEndLocation:(id)location
{
  v4 = *MEMORY[0x1E69925A8];
  locationCopy = location;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:locationCopy forKey:v4 frozenClass:+[EKStructuredLocation frozenClass]];
}

- (BOOL)isTentative
{
  participationStatus = [(EKEvent *)self participationStatus];
  if (participationStatus == 2)
  {
    return 0;
  }

  v4 = participationStatus;
  if (![(EKCalendarItem *)self isExternallyOrganizedInvitation])
  {
    return 0;
  }

  status = [(EKEvent *)self status];
  statusesAreAccurate = status != EKEventStatusCanceled;
  if (v4 == 4 && status != EKEventStatusCanceled)
  {
    constraints = [(EKEvent *)self constraints];
    v8 = constraints;
    if (constraints)
    {
      statusesAreAccurate = [constraints statusesAreAccurate];
    }

    else
    {
      statusesAreAccurate = 1;
    }
  }

  return statusesAreAccurate;
}

- (NSComparisonResult)compareStartDateWithEvent:(EKEvent *)other
{
  v4 = other;
  occurrenceStartDate = [(EKEvent *)self occurrenceStartDate];
  occurrenceStartDate2 = [(EKEvent *)v4 occurrenceStartDate];

  v7 = [occurrenceStartDate compare:occurrenceStartDate2];
  return v7;
}

- (int64_t)compareStartDateIncludingTravelWithEvent:(id)event
{
  eventCopy = event;
  startDateIncludingTravel = [(EKEvent *)self startDateIncludingTravel];
  startDateIncludingTravel2 = [eventCopy startDateIncludingTravel];

  v7 = [startDateIncludingTravel compare:startDateIncludingTravel2];
  return v7;
}

- (int64_t)compareOriginalStartDateWithEvent:(id)event
{
  eventCopy = event;
  if ([(EKEvent *)self isDetached])
  {
    [(EKEvent *)self originalStartDate];
  }

  else
  {
    [(EKEvent *)self startDate];
  }
  v5 = ;
  if ([eventCopy isDetached])
  {
    [eventCopy originalStartDate];
  }

  else
  {
    [eventCopy startDate];
  }
  v6 = ;
  v7 = [v5 compare:v6];

  return v7;
}

- (BOOL)isEditable
{
  eventStore = [(EKObject *)self eventStore];
  if ([eventStore skipModificationValidation])
  {

    return 1;
  }

  currentProcessHasSyncClientEntitlement = [MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement];

  if (currentProcessHasSyncClientEntitlement)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = EKEvent;
  isEditable = [(EKCalendarItem *)&v7 isEditable];
  return ![(EKEvent *)self isPrivateEventSharedToMe]& isEditable;
}

- (BOOL)isPrivateEventSharedToMe
{
  privacyLevel = [(EKEvent *)self privacyLevel];
  calendar = [(EKCalendarItem *)self calendar];
  source = [calendar source];
  isDelegate = [source isDelegate];

  calendar2 = [(EKCalendarItem *)self calendar];
  sharingStatus = [calendar2 sharingStatus];

  if (sharingStatus == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = isDelegate;
  }

  return privacyLevel && v9;
}

- (BOOL)allowsRecurrenceModificationsForSpan:(int64_t)span
{
  isEditable = [(EKEvent *)self isEditable];
  if ([(EKEvent *)self isDetached])
  {
    if (span != 1 && span != 4)
    {
      calendar = [(EKCalendarItem *)self calendar];

      if (calendar)
      {
        constraints = [(EKEvent *)self constraints];
        isEditable = [constraints supportsRecurrencesOnDetachedEvents];
      }
    }
  }

  return isEditable;
}

- (BOOL)allowsCalendarModifications
{
  v5.receiver = self;
  v5.super_class = EKEvent;
  allowsCalendarModifications = [(EKCalendarItem *)&v5 allowsCalendarModifications];
  if (allowsCalendarModifications)
  {
    if ([(EKObject *)self isNew])
    {
      LOBYTE(allowsCalendarModifications) = 1;
    }

    else
    {
      LOBYTE(allowsCalendarModifications) = ![(EKCalendarItem *)self isExternallyOrganizedInvitation];
    }
  }

  return allowsCalendarModifications;
}

- (BOOL)responseMustApplyToAll
{
  if (![(EKEvent *)self isOrWasPartOfRecurringSeries])
  {
    return 0;
  }

  constraints = [(EKEvent *)self constraints];
  mustAcknowledgeMasterEvent = [constraints mustAcknowledgeMasterEvent];

  if (!mustAcknowledgeMasterEvent)
  {
    return 0;
  }

  originalItem = [(EKCalendarItem *)self originalItem];
  v6 = originalItem;
  if (originalItem)
  {
    selfCopy = originalItem;
  }

  else
  {
    selfCopy = self;
  }

  v8 = selfCopy;

  if ([(EKEvent *)v8 participationStatus]== 1)
  {
    v9 = 1;
  }

  else
  {
    externalID = [(EKCalendarItem *)v8 externalID];
    v9 = externalID == 0;
  }

  return v9;
}

- (BOOL)_changesRequireDetachOrSlice
{
  v24 = *MEMORY[0x1E69E9840];
  changeSet = [(EKObject *)self changeSet];
  changedKeys = [changeSet changedKeys];

  v5 = [changedKeys count];
  v6 = [MEMORY[0x1E695DFA8] setWithObject:*MEMORY[0x1E6992570]];
  constraints = [(EKEvent *)self constraints];
  requiresSamePrivacyLevelAcrossRecurrenceSeries = [constraints requiresSamePrivacyLevelAcrossRecurrenceSeries];

  if (requiresSamePrivacyLevelAcrossRecurrenceSeries)
  {
    [v6 addObject:*MEMORY[0x1E69929B8]];
  }

  constraints2 = [(EKEvent *)self constraints];
  if ([constraints2 prohibitsDetachmentOnCommentChange])
  {
    v10 = [changedKeys containsObject:*MEMORY[0x1E69929C0]];

    if ((v10 & 1) == 0)
    {
      [v6 addObject:*MEMORY[0x1E69929D0]];
    }

    if (!v5)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (!v5)
    {
      goto LABEL_17;
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allObjects = v6;
  v12 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v12)
  {
    v16 = 1;
    goto LABEL_21;
  }

  v13 = v12;
  v14 = *v20;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(allObjects);
      }

      v5 -= [changedKeys containsObject:{*(*(&v19 + 1) + 8 * i), v19}];
    }

    v13 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v13);

  if (v5)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (![(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992648]])
  {
    allObjects = [v6 allObjects];
    v16 = [(EKObject *)self hasUnsavedChangesIgnoreKeys:allObjects];
LABEL_21:

    goto LABEL_22;
  }

LABEL_18:
  v16 = 1;
LABEL_22:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)requiresDetach
{
  if ([(EKObject *)self isNew]|| ![(EKCalendarItem *)self _hadRecurrenceRules])
  {
    return 0;
  }

  return [(EKEvent *)self _changesRequireDetachOrSlice];
}

- (BOOL)canDetachSingleOccurrence
{
  if ([(EKEvent *)self isDetached])
  {
    singleRecurrenceRule = [(EKEvent *)self singleRecurrenceRule];
    hasChanges = [singleRecurrenceRule hasChanges];

    if (hasChanges)
    {
      return 0;
    }
  }

  if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992648]]|| [(EKEvent *)self isAllDayDirty])
  {
    return 0;
  }

  else
  {
    return ![(EKEvent *)self hasAttachmentChanges];
  }
}

- (BOOL)changingAllDayPropertyIsAllowed
{
  if ([(EKEvent *)self isDetached])
  {
    return 0;
  }

  if (![(EKCalendarItem *)self hasRecurrenceRules]|| [(EKObject *)self isNew])
  {
    return 1;
  }

  calendar = [(EKCalendarItem *)self calendar];
  source = [calendar source];
  v3 = [source sourceType] != 1;

  return v3;
}

+ (id)_basicChangesRequiringSpanAll
{
  if (_basicChangesRequiringSpanAll_onceToken != -1)
  {
    +[EKEvent _basicChangesRequiringSpanAll];
  }

  v3 = _basicChangesRequiringSpanAll_basicChangesRequiringSpanAll;

  return v3;
}

void __40__EKEvent__basicChangesRequiringSpanAll__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992560];
  v4[0] = @"privacyLevelString";
  v4[1] = v0;
  v4[2] = *MEMORY[0x1E6992570];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = _basicChangesRequiringSpanAll_basicChangesRequiringSpanAll;
  _basicChangesRequiringSpanAll_basicChangesRequiringSpanAll = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasChangesRequiringSpanAll
{
  if ([(EKObject *)self isSaved]&& [(EKEvent *)self _hasBasicChangesRequiringSpanAll])
  {
    return 1;
  }

  return [(EKEvent *)self _hasRecurrenceRuleChangeRequiringSpanAll];
}

- (BOOL)_hasOrHadRecurrenceRule
{
  if ([(EKCalendarItem *)self hasRecurrenceRules])
  {
    return 1;
  }

  v4 = *MEMORY[0x1E6992648];

  return [(EKObject *)self _hasChangesForKey:v4];
}

- (BOOL)_hasBasicChangesRequiringSpanAll
{
  _basicChangesRequiringSpanAll = [objc_opt_class() _basicChangesRequiringSpanAll];
  if ([(EKEvent *)self _hasOrHadRecurrenceRule])
  {
    v4 = [(EKObject *)self hasUnsavedChangesInKeys:_basicChangesRequiringSpanAll];
  }

  else
  {
    originalItem = [(EKCalendarItem *)self originalItem];
    if ([originalItem _hasOrHadRecurrenceRule])
    {
      v4 = [(EKObject *)self hasUnsavedChangesInKeys:_basicChangesRequiringSpanAll];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)_hasRecurrenceRuleChangeRequiringSpanAll
{
  v3 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E6992648]];
  v4 = [v3 count];
  hasRecurrenceRules = [(EKCalendarItem *)self hasRecurrenceRules];
  if (!hasRecurrenceRules || v4)
  {
    if (!hasRecurrenceRules)
    {
      LOBYTE(v6) = v4 != 0;
      goto LABEL_13;
    }

    recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
    if ([recurrenceRules count] == 1)
    {
      v8 = [v3 count];

      if (v8 == 1)
      {
LABEL_12:
        recurrenceRules2 = [(EKCalendarItem *)self recurrenceRules];
        firstObject = [recurrenceRules2 firstObject];

        v12 = [EKRecurrenceRule alloc];
        anyObject = [v3 anyObject];
        v14 = [(EKObject *)v12 initWithPersistentObject:anyObject];

        v6 = [firstObject isEqualToRecurrenceRule:v14] ^ 1;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKEvent *)v9 _hasRecurrenceRuleChangeRequiringSpanAll];
    }

    goto LABEL_12;
  }

  LOBYTE(v6) = 0;
LABEL_13:

  return v6;
}

- (BOOL)automaticLocationGeocodingAllowed
{
  calendar = [(EKCalendarItem *)self calendar];
  automaticEventLocationGeocodingAllowed = [calendar automaticEventLocationGeocodingAllowed];

  return automaticEventLocationGeocodingAllowed;
}

- (BOOL)_eligibleForTravelAdvisoriesIncludePotential:(BOOL)potential
{
  potentialCopy = potential;
  if ([(EKEvent *)self isAllDay]|| [(EKEvent *)self selfParticipantStatus]== 3 || [(EKEvent *)self status]== EKEventStatusCanceled || [(EKEvent *)self locationIsAConferenceRoom])
  {
    return 0;
  }

  preferredLocation = [(EKCalendarItem *)self preferredLocation];
  if (([preferredLocation hasKnownSpatialData] & 1) != 0 || potentialCopy && -[EKEvent automaticLocationGeocodingAllowed](self, "automaticLocationGeocodingAllowed"))
  {
    if ([preferredLocation isPrediction] && (objc_msgSend(preferredLocation, "predictedLOI"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "type"), v8, v9 <= 1))
    {
      conferenceURLForDisplay = [(EKEvent *)self conferenceURLForDisplay];
      if (conferenceURLForDisplay)
      {
        v5 = 0;
      }

      else
      {
        virtualConference = [(EKEvent *)self virtualConference];
        v5 = virtualConference == 0;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)travelAdvisoryBehavior
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69929F0]];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setTravelAdvisoryBehavior:(int64_t)behavior
{
  if ([(EKEvent *)self eligibleForTravelAdvisories])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:behavior];
    [(EKObject *)self setSingleChangedValue:v5 forKey:*MEMORY[0x1E69929F0]];
  }
}

- (BOOL)travelAdvisoryBehaviorIsEffectivelyEnabled
{
  travelAdvisoryBehavior = [(EKEvent *)self travelAdvisoryBehavior];
  if (travelAdvisoryBehavior == 2)
  {
    return 0;
  }

  if (travelAdvisoryBehavior)
  {
    return 1;
  }

  mEMORY[0x1E6992DF0] = [MEMORY[0x1E6992DF0] shared];
  get_enableTravelAdvisoriesForAutomaticBehavior = [mEMORY[0x1E6992DF0] get_enableTravelAdvisoriesForAutomaticBehavior];

  return get_enableTravelAdvisoriesForAutomaticBehavior;
}

- (unint64_t)junkStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992998]];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setJunkStatus:(unint64_t)status
{
  [(EKEvent *)self setCachedJunkStatus:?];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:status];
  [(EKObject *)self setSingleChangedValue:v5 forKey:*MEMORY[0x1E6992998]];
}

- (NSString)sendersEmail
{
  organizer = [(EKCalendarItem *)self organizer];
  emailAddress = [organizer emailAddress];

  return emailAddress;
}

- (NSString)sendersPhoneNumber
{
  organizer = [(EKCalendarItem *)self organizer];
  phoneNumber = [organizer phoneNumber];

  return phoneNumber;
}

- (BOOL)supportsJunkReporting
{
  calendar = [(EKCalendarItem *)self calendar];
  supportsJunkReporting = [calendar supportsJunkReporting];

  return supportsJunkReporting;
}

+ (id)_relatedCachedTimeKeys
{
  if (_relatedCachedTimeKeys_onceToken != -1)
  {
    +[EKEvent _relatedCachedTimeKeys];
  }

  v3 = _relatedCachedTimeKeys_relatedKeys;

  return v3;
}

void __33__EKEvent__relatedCachedTimeKeys__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = @"cachedStartOfDayForStartDate";
  v3[1] = @"cachedStartOfDayForEndDate";
  v3[2] = @"cachedDaysSpanned";
  v3[3] = @"cachedIsMultiDayTimedEvent";
  v3[4] = @"nextReminderOccurrenceDateKey";
  v3[5] = @"isFirstOccurrenceIncludingSlices";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v1 = _relatedCachedTimeKeys_relatedKeys;
  _relatedCachedTimeKeys_relatedKeys = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (void)clearCachedTimeValues
{
  _relatedCachedTimeKeys = [objc_opt_class() _relatedCachedTimeKeys];
  [(EKObject *)self clearCachedValuesForKeys:_relatedCachedTimeKeys];
}

- (id)startOfDayForStartDateInCalendar:(id)calendar
{
  calendarCopy = calendar;
  _relatedCachedTimeKeys = [objc_opt_class() _relatedCachedTimeKeys];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__EKEvent_startOfDayForStartDateInCalendar___block_invoke;
  v9[3] = &unk_1E77FF050;
  v10 = calendarCopy;
  selfCopy = self;
  v6 = calendarCopy;
  v7 = [(EKObject *)self cachedValueForKey:@"cachedStartOfDayForStartDate" expectingCachedValue:v6 forMasterKey:@"cachedTimeValuesCalendar" relatedKeys:_relatedCachedTimeKeys populateBlock:v9];

  return v7;
}

id __44__EKEvent_startOfDayForStartDateInCalendar___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) startDate];
  v3 = [v1 startOfDayForDate:v2];

  return v3;
}

- (id)startOfDayForEndDateInCalendar:(id)calendar
{
  calendarCopy = calendar;
  _relatedCachedTimeKeys = [objc_opt_class() _relatedCachedTimeKeys];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__EKEvent_startOfDayForEndDateInCalendar___block_invoke;
  v9[3] = &unk_1E77FF050;
  v9[4] = self;
  v10 = calendarCopy;
  v6 = calendarCopy;
  v7 = [(EKObject *)self cachedValueForKey:@"cachedStartOfDayForEndDate" expectingCachedValue:v6 forMasterKey:@"cachedTimeValuesCalendar" relatedKeys:_relatedCachedTimeKeys populateBlock:v9];

  return v7;
}

id __42__EKEvent_startOfDayForEndDateInCalendar___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) startOfDayForStartDateInCalendar:*(a1 + 40)];
  v3 = [v2 dateByAddingDays:objc_msgSend(*(a1 + 32) inCalendar:{"daysSpannedInCalendar:", *(a1 + 40)) - 1, *(a1 + 40)}];

  return v3;
}

- (int64_t)daysSpannedInCalendar:(id)calendar
{
  calendarCopy = calendar;
  _relatedCachedTimeKeys = [objc_opt_class() _relatedCachedTimeKeys];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __33__EKEvent_daysSpannedInCalendar___block_invoke;
  v13 = &unk_1E77FF050;
  selfCopy = self;
  v15 = calendarCopy;
  v6 = calendarCopy;
  v7 = [(EKObject *)self cachedValueForKey:@"cachedDaysSpanned" expectingCachedValue:v6 forMasterKey:@"cachedTimeValuesCalendar" relatedKeys:_relatedCachedTimeKeys populateBlock:&v10];

  integerValue = [v7 integerValue];
  return integerValue;
}

uint64_t __33__EKEvent_daysSpannedInCalendar___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = [*(a1 + 32) startDate];
  v4 = [*(a1 + 32) endDateUnadjustedForLegacyClients];
  v5 = [v2 daysSpannedFromStartDate:v3 toEndDate:v4 allDay:objc_msgSend(*(a1 + 32) inCalendar:{"isAllDay"), *(a1 + 40)}];

  v6 = MEMORY[0x1E696AD98];

  return [v6 numberWithInteger:v5];
}

- (BOOL)isMultiDayTimedEventInCalendar:(id)calendar
{
  calendarCopy = calendar;
  startDate = [(EKEvent *)self startDate];
  if (startDate && (v6 = startDate, [(EKEvent *)self endDateUnadjustedForLegacyClients], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    _relatedCachedTimeKeys = [objc_opt_class() _relatedCachedTimeKeys];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __42__EKEvent_isMultiDayTimedEventInCalendar___block_invoke;
    v15 = &unk_1E77FF050;
    selfCopy = self;
    v17 = calendarCopy;
    v9 = [(EKObject *)self cachedValueForKey:@"cachedIsMultiDayTimedEvent" expectingCachedValue:v17 forMasterKey:@"cachedTimeValuesCalendar" relatedKeys:_relatedCachedTimeKeys populateBlock:&v12];

    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

id __42__EKEvent_isMultiDayTimedEventInCalendar___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) startDate];
  v6 = [*(a1 + 32) endDateUnadjustedForLegacyClients];
  v7 = [v2 numberWithBool:{objc_msgSend(v4, "isMultiDayTimedEventWithStartDate:endDate:allDay:inCalendar:", v5, v6, objc_msgSend(*(a1 + 32), "isAllDay"), *(a1 + 40))}];

  return v7;
}

+ (BOOL)isMultiDayTimedEventWithStartDate:(id)date endDate:(id)endDate allDay:(BOOL)day inCalendar:(id)calendar
{
  dateCopy = date;
  endDateCopy = endDate;
  calendarCopy = calendar;
  v12 = 0;
  if (dateCopy && endDateCopy && !day)
  {
    if ([dateCopy isSameDayAsDate:endDateCopy inCalendar:calendarCopy])
    {
      v12 = 0;
    }

    else
    {
      v13 = [calendarCopy startOfDayForDate:dateCopy];
      v14 = [v13 dateByAddingDays:1 inCalendar:calendarCopy];
      v15 = [v14 dateOnlyComponentsInCalendar:calendarCopy];

      [v15 setHour:5];
      v16 = [calendarCopy dateFromComponents:v15];
      v12 = [endDateCopy isAfterDate:v16];
    }
  }

  return v12;
}

- (void)_clearOriginalDateFields
{
  [(EKEvent *)self setOriginalOccurrenceStartDate:0];
  [(EKEvent *)self setOriginalOccurrenceEndDate:0];

  [(EKEvent *)self setOriginalOccurrenceIsAllDay:0];
}

- (id)snapshotCopyWithPropertyKeysToCopy:(id)copy propertyKeysToSkip:(id)skip
{
  v9.receiver = self;
  v9.super_class = EKEvent;
  v5 = [(EKObject *)&v9 snapshotCopyWithPropertyKeysToCopy:copy propertyKeysToSkip:skip];
  [v5 setOccurrenceIsAllDay:{-[EKEvent occurrenceIsAllDay](self, "occurrenceIsAllDay")}];
  occurrenceStartDate = [(EKEvent *)self occurrenceStartDate];
  [v5 setOccurrenceStartDate:occurrenceStartDate];

  occurrenceEndDate = [(EKEvent *)self occurrenceEndDate];
  [v5 setOccurrenceEndDate:occurrenceEndDate];

  return v5;
}

- (id)previouslySavedCopy
{
  v9.receiver = self;
  v9.super_class = EKEvent;
  previouslySavedCopy = [(EKObject *)&v9 previouslySavedCopy];
  originalOccurrenceIsAllDay = [(EKEvent *)self originalOccurrenceIsAllDay];

  if (originalOccurrenceIsAllDay)
  {
    originalOccurrenceIsAllDay2 = [(EKEvent *)self originalOccurrenceIsAllDay];
    [previouslySavedCopy setOccurrenceIsAllDay:{objc_msgSend(originalOccurrenceIsAllDay2, "BOOLValue")}];
  }

  else
  {
    [previouslySavedCopy setOccurrenceIsAllDay:{-[EKEvent occurrenceIsAllDay](self, "occurrenceIsAllDay")}];
  }

  originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
  [previouslySavedCopy setOccurrenceStartDate:originalOccurrenceStartDate];

  originalOccurrenceEndDate = [(EKEvent *)self originalOccurrenceEndDate];
  [previouslySavedCopy setOccurrenceEndDate:originalOccurrenceEndDate];

  return previouslySavedCopy;
}

- (int64_t)pendingParticipationStatus
{
  selfAttendee = [(EKCalendarItem *)self selfAttendee];
  pendingStatus = [selfAttendee pendingStatus];

  return pendingStatus;
}

- (BOOL)allowsAvailabilityModifications
{
  eventStore = [(EKObject *)self eventStore];
  skipModificationValidation = [eventStore skipModificationValidation];

  if (skipModificationValidation)
  {
    return 1;
  }

  if ([(EKEvent *)self status]== EKEventStatusCanceled)
  {
    return 0;
  }

  calendar = [(EKCalendarItem *)self calendar];
  supportedEventAvailabilities = [calendar supportedEventAvailabilities];

  if (!supportedEventAvailabilities)
  {
    return 0;
  }

  if (![(EKEvent *)self privacyLevel])
  {
    return 1;
  }

  calendar2 = [(EKCalendarItem *)self calendar];
  v5 = [calendar2 sharingStatus] != 2;

  return v5;
}

- (BOOL)_hasExternalIDOrDeliverySource
{
  externalID = [(EKCalendarItem *)self externalID];

  if (externalID)
  {
    return 1;
  }

  originalItem = [(EKCalendarItem *)self originalItem];
  externalID2 = [originalItem externalID];

  if (externalID2)
  {
    return 1;
  }

  return [(EKEvent *)self hasValidEventAction];
}

- (BOOL)hasValidEventAction
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  actions = [(EKEvent *)self actions];
  v3 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(actions);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        externalID = [v6 externalID];
        if (externalID)
        {
          externalFolderID = [v6 externalFolderID];

          if (externalFolderID)
          {

            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)allowsParticipationStatusModifications
{
  eventStore = [(EKObject *)self eventStore];
  skipModificationValidation = [eventStore skipModificationValidation];

  if (skipModificationValidation)
  {
    return 1;
  }

  if ([(EKObject *)self isNew])
  {
    return 0;
  }

  status = [(EKEvent *)self status];
  isExternallyOrganizedInvitation = [(EKCalendarItem *)self isExternallyOrganizedInvitation];
  selfAttendee = [(EKCalendarItem *)self selfAttendee];

  v5 = 0;
  if (status != EKEventStatusCanceled && isExternallyOrganizedInvitation && selfAttendee)
  {
    if ([(EKCalendarItem *)self isOrganizedBySharedCalendarOwner])
    {
      return 0;
    }

    constraints = [(EKEvent *)self constraints];
    calendar = [(EKCalendarItem *)self calendar];
    v12 = calendar;
    v5 = 0;
    if (constraints && calendar)
    {
      organizer = [(EKCalendarItem *)self organizer];
      objc_opt_class();
      v5 = (objc_opt_isKindOfClass() & 1) != 0 && [organizer scheduleAgent] != 1 && objc_msgSend(v12, "allowsContentModifications") && (!objc_msgSend(constraints, "proposedStatusRequiredForResponse") || status == EKEventStatusConfirmed) && objc_msgSend(constraints, "supportsInvitationModifications") && objc_msgSend(v12, "allowsScheduling") && (!objc_msgSend(constraints, "deliverySourceOrExternalIDRequiredForResponse") || -[EKEvent _hasExternalIDOrDeliverySource](self, "_hasExternalIDOrDeliverySource")) && (-[EKEvent participationStatus](self, "participationStatus") != 3 || !objc_msgSend(constraints, "declinedStatusChangeRequiresNoPendingStatus") || !-[EKEvent pendingParticipationStatus](self, "pendingParticipationStatus"));
    }
  }

  return v5;
}

- (NSString)description
{
  v18.receiver = self;
  v18.super_class = EKEvent;
  v17 = [(EKCalendarItem *)&v18 description];
  if ([(EKCalendarItem *)self hasRecurrenceRules])
  {
    recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
    v16 = [recurrenceRules objectAtIndex:0];
  }

  else
  {
    v16 = 0;
  }

  v15 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  location = [(EKCalendarItem *)self location];
  structuredLocation = [(EKEvent *)self structuredLocation];
  startDate = [(EKEvent *)self startDate];
  endDate = [(EKEvent *)self endDate];
  isAllDay = [(EKEvent *)self isAllDay];
  isFloating = [(EKEvent *)self isFloating];
  _travelTimeInternalDescription = [(EKEvent *)self _travelTimeInternalDescription];
  travelStartLocation = [(EKCalendarItem *)self travelStartLocation];
  v12 = [v15 stringWithFormat:@"%@ <%p>\n{\n\t %@ \n\t location = \t%@; \n\t structuredLocation = \t%@; \n\t startDate = \t%@; \n\t endDate = \t\t%@; \n\t allDay = \t\t%u; \n\t floating = \t%u; \n\t recurrence = \t%@; \n\t travelTime = \t%@; \n\t startLocation = \t%@;\n};", v14, self, v17, location, structuredLocation, startDate, endDate, isAllDay, isFloating, v16, _travelTimeInternalDescription, travelStartLocation];;

  return v12;
}

- (id)privacyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(EKObject *)self objectID];
  rowID = [objectID rowID];
  uUID = [(EKCalendarItem *)self UUID];
  startDate = [(EKEvent *)self startDate];
  v9 = [startDate debugDescription];
  v10 = [v3 stringWithFormat:@"<%@ rowid=[%d] UUID=[%@] start-date=[%@]>", v4, rowID, uUID, v9];

  return v10;
}

- (BOOL)refresh
{
  v3.receiver = self;
  v3.super_class = EKEvent;
  return [(EKObject *)&v3 refresh];
}

- (BOOL)validateOccurrenceDateStillMatchesRecurrenceRules
{
  result = 1;
  if ([(EKCalendarItem *)self _hadRecurrenceRules])
  {
    v3 = objc_alloc_init(EKRecurrenceGenerator);
    originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
    v5 = [(EKRecurrenceGenerator *)v3 isOccurrenceDate:originalOccurrenceStartDate validForEvent:self];

    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

- (void)_snoozeAlarm:(id)alarm withTimeIntervalFromNow:(double)now orTargetDate:(id)date pinsTriggerToStartDate:(BOOL)startDate
{
  alarmCopy = alarm;
  dateCopy = date;
  if (alarmCopy)
  {
    date = [MEMORY[0x1E695DF00] date];
    constraints = [(EKEvent *)self constraints];
    snoozeAlarmRequiresDetach = [constraints snoozeAlarmRequiresDetach];

    if (snoozeAlarmRequiresDetach)
    {
      duplicate = alarmCopy;
      [(EKEvent *)self setRequiresDetachDueToSnoozedAlarm:1];
    }

    else
    {
      duplicate = [alarmCopy duplicate];
      [alarmCopy setAcknowledgedDate:date];
    }

    [duplicate setDefaultAlarm:0];
    if (!dateCopy)
    {
      dateCopy = [date dateByAddingTimeInterval:now];
    }

    startDate = [(EKEvent *)self startDate];
    v16 = [date isAfterDate:startDate];

    startDate2 = [(EKEvent *)self startDate];
    [dateCopy timeIntervalSinceDate:startDate2];
    v19 = v18;

    v20 = !startDate;
    if (v19 <= 0.0)
    {
      v20 = 1;
    }

    v21 = (v20 | v16) ^ 1;
    if (v19 > 0.0 && (((v20 | v16) ^ 1) & 1) == 0)
    {
      constraints2 = [(EKEvent *)self constraints];
      v21 = [constraints2 supportsAlarmsTriggeringAfterStartDate] ^ 1;
    }

    v23 = 0.0;
    if ((v21 & 1) == 0)
    {
      v23 = v19;
    }

    [duplicate setRelativeOffset:v23];
    constraints3 = [(EKEvent *)self constraints];
    snoozeAlarmRequiresDetach2 = [constraints3 snoozeAlarmRequiresDetach];

    if (snoozeAlarmRequiresDetach2)
    {
      [(EKCalendarItem *)self setModifiedProperties:[(EKCalendarItem *)self modifiedProperties]| 0x80];
    }

    else
    {
      v26 = [(EKCalendarItem *)self findOriginalAlarmStartingWith:alarmCopy];
      [duplicate setOriginalAlarm:v26];
      [(EKCalendarItem *)self addAlarm:duplicate];
    }
  }
}

- (id)propertiesThatCanBeModifiedOnReadOnlyCalendars
{
  v5.receiver = self;
  v5.super_class = EKEvent;
  propertiesThatCanBeModifiedOnReadOnlyCalendars = [(EKCalendarItem *)&v5 propertiesThatCanBeModifiedOnReadOnlyCalendars];
  v3 = [propertiesThatCanBeModifiedOnReadOnlyCalendars setByAddingObject:*MEMORY[0x1E6992580]];

  return v3;
}

- (BOOL)validateWithSpan:(int64_t)span error:(id *)error
{
  v73 = *MEMORY[0x1E69E9840];
  v70.receiver = self;
  v70.super_class = EKEvent;
  LODWORD(v7) = [(EKCalendarItem *)&v70 validate:error];
  if (v7)
  {
    calendar = [(EKCalendarItem *)self calendar];
    allowEvents = [calendar allowEvents];

    if ((allowEvents & 1) == 0)
    {
      if (error)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 22;
        goto LABEL_18;
      }

LABEL_102:
      LOBYTE(v7) = 0;
      goto LABEL_103;
    }

    startDate = [(EKEvent *)self startDate];

    if (!startDate)
    {
      if (error)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 2;
        goto LABEL_18;
      }

      goto LABEL_102;
    }

    endDateUnadjustedForLegacyClients = [(EKEvent *)self endDateUnadjustedForLegacyClients];

    if (!endDateUnadjustedForLegacyClients)
    {
      if (error)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 3;
        goto LABEL_18;
      }

      goto LABEL_102;
    }

    startDate2 = [(EKEvent *)self startDate];
    endDateUnadjustedForLegacyClients2 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
    v14 = [startDate2 compare:endDateUnadjustedForLegacyClients2];

    if (v14 >= 1)
    {
      if (error)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 4;
LABEL_18:
        v18 = [v15 errorWithEKErrorCode:v16];
        v7 = v18;
        LOBYTE(v7) = 0;
        *error = v18;
        goto LABEL_103;
      }

      goto LABEL_102;
    }

    _isParticipationStatusDirty = [(EKEvent *)self _isParticipationStatusDirty];
    if (span == 1 && _isParticipationStatusDirty)
    {
      if (error)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 13;
        goto LABEL_18;
      }

      goto LABEL_102;
    }

    v19 = *MEMORY[0x1E6992648];
    if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992648]])
    {
      if ([(EKCalendarItem *)self hasRecurrenceRules])
      {
        recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
        v21 = [recurrenceRules objectAtIndexedSubscript:0];

        if (v21 && ![(EKEvent *)self validateRecurrenceRule:v21 error:error])
        {

          goto LABEL_102;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    LODWORD(v7) = [(EKEvent *)self _validateDatesAndRecurrencesGivenSpan:span error:error];
    if (!v7)
    {
      goto LABEL_103;
    }

    eventStore = [(EKObject *)self eventStore];
    if ([eventStore skipModificationValidation] & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessHasSyncClientEntitlement"))
    {
    }

    else
    {
      if ([(EKObject *)self isNew])
      {
        hasAttendees = [(EKCalendarItem *)self hasAttendees];

        if (!hasAttendees)
        {
          goto LABEL_30;
        }
      }

      else
      {
      }

      v29 = *MEMORY[0x1E6992568];
      if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992568]]&& ![(EKEvent *)self allowsAttendeesModifications])
      {
        if (![(EKEvent *)self _isOnlyChangeToAttendeesSelfAttendeeParticipationStatus])
        {
          v60 = v19;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          obj = [(EKCalendarItem *)self attendees];
          v50 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v67;
            v53 = *MEMORY[0x1E6992508];
            v54 = 1;
            do
            {
              for (i = 0; i != v51; ++i)
              {
                if (*v67 != v52)
                {
                  objc_enumerationMutation(obj);
                }

                changeSet = [*(*(&v66 + 1) + 8 * i) changeSet];
                v57 = [changeSet hasUnsavedChangeForKey:v53];

                v54 &= v57 ^ 1;
              }

              v51 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
            }

            while (v51);
          }

          else
          {
            v54 = 1;
          }

          if (error && v54)
          {
            *error = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:41];
          }

          v19 = v60;
          if (v54)
          {
            goto LABEL_102;
          }
        }
      }

      else if ([(EKObject *)self _hasChangesForKey:v29]&& [(EKCalendarItem *)self isExternallyOrganizedInvitation])
      {
        v30 = [(EKEvent *)self committedValueForKey:v29];
        v31 = [v30 valueForKey:*MEMORY[0x1E6992B08]];

        v32 = MEMORY[0x1E695DF70];
        allObjects = [v31 allObjects];
        v34 = [v32 arrayWithArray:allObjects];

        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v35 = v31;
        v36 = [v35 countByEnumeratingWithState:&v62 objects:v71 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v63;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v63 != v38)
              {
                objc_enumerationMutation(v35);
              }

              [v34 removeObject:*(*(&v62 + 1) + 8 * j)];
            }

            v37 = [v35 countByEnumeratingWithState:&v62 objects:v71 count:16];
          }

          while (v37);
        }

        v40 = [v34 count];
        v41 = v40;
        if (error && v40)
        {
          *error = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:41];

          goto LABEL_102;
        }

        if (v41)
        {
          goto LABEL_102;
        }
      }

      else if ([(EKCalendarItem *)self hasAttendees])
      {
        calendar2 = [(EKCalendarItem *)self calendar];
        allowsScheduling = [calendar2 allowsScheduling];

        if ((allowsScheduling & 1) == 0)
        {
          if (error)
          {
            v15 = MEMORY[0x1E696ABC0];
            v16 = 0;
            goto LABEL_18;
          }

          goto LABEL_102;
        }
      }
    }

LABEL_30:
    if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992558]]&& ![(EKCalendarItem *)self allowsAlarmModifications])
    {
      if (error)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 40;
        goto LABEL_18;
      }

      goto LABEL_102;
    }

    if ([(EKObject *)self _hasChangesForKey:v19]&& ![(EKEvent *)self allowsRecurrenceModificationsForSpan:span])
    {
      if (error)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 39;
        goto LABEL_18;
      }

      goto LABEL_102;
    }

    if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E69929B8]]&& ![(EKEvent *)self allowsPrivacyLevelModifications])
    {
      if (error)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 38;
        goto LABEL_18;
      }

      goto LABEL_102;
    }

    if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992948]])
    {
      calendar3 = [(EKCalendarItem *)self calendar];
      source = [calendar3 source];

      color = [(EKEvent *)self color];
      source2 = [color source];
      v27 = source2;
      if (source2 && source)
      {
        if (([source isEqual:source2] & 1) == 0)
        {
          if (error)
          {
            *error = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:71];
          }

          goto LABEL_102;
        }
      }

      else if (source && color && !source2)
      {
        [color setSource:source];
      }
    }

    constraints = [(EKEvent *)self constraints];
    if (![constraints supportsStructuredLocations])
    {
      calendar4 = [(EKCalendarItem *)self calendar];
      if (![calendar4 isSuggestedEventCalendar])
      {
        calendar5 = [(EKCalendarItem *)self calendar];
        isNaturalLanguageSuggestedEventCalendar = [calendar5 isNaturalLanguageSuggestedEventCalendar];

        if ((isNaturalLanguageSuggestedEventCalendar & 1) == 0)
        {
          if ([(EKObject *)self _hasChangesForKey:@"endLocation"])
          {
            endLocation = [(EKEvent *)self endLocation];
            isStructured = [endLocation isStructured];

            if (isStructured)
            {
              if (error)
              {
                v15 = MEMORY[0x1E696ABC0];
                v16 = 19;
                goto LABEL_18;
              }

              goto LABEL_102;
            }
          }
        }

LABEL_80:
        LOBYTE(v7) = 1;
        goto LABEL_103;
      }
    }

    goto LABEL_80;
  }

LABEL_103:
  v58 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_generateNewUniqueID
{
  if ([(EKEvent *)self isReminderIntegrationEvent])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v3 = getREMReminderClass_softClass_1;
    v16 = getREMReminderClass_softClass_1;
    if (!getREMReminderClass_softClass_1)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getREMReminderClass_block_invoke_1;
      v12[3] = &unk_1E77FCFD8;
      v12[4] = &v13;
      __getREMReminderClass_block_invoke_1(v12);
      v3 = v14[3];
    }

    v4 = v3;
    _Block_object_dispose(&v13, 8);
    newObjectID = [v3 newObjectID];
    urlRepresentation = [newObjectID urlRepresentation];
    absoluteString = [urlRepresentation absoluteString];
  }

  else
  {
    v8 = objc_opt_class();
    originalItem = [(EKCalendarItem *)self originalItem];
    calendar = [(EKCalendarItem *)self calendar];
    absoluteString = [v8 generateUniqueIDWithEvent:self originalEvent:originalItem calendar:calendar];
  }

  return absoluteString;
}

- (void)_willSave
{
  v3.receiver = self;
  v3.super_class = EKEvent;
  [(EKCalendarItem *)&v3 _willSave];
  [(EKEvent *)self _removeInvalidAlarmsDuringSave];
}

- (BOOL)saveWithSpan:(int64_t)span error:(id *)error
{
  selfCopy = self;
  v291 = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
  }

  if (![(EKObject *)self hasChanges])
  {
    goto LABEL_9;
  }

  if ([(EKObject *)selfCopy isUndeleted])
  {
    if (span && span != 3)
    {
      if (!error)
      {
        goto LABEL_34;
      }

      v10 = MEMORY[0x1E696ABC0];
      v11 = @"Cannot undelete an event with the given span";
LABEL_32:
      v12 = 13;
      goto LABEL_33;
    }

    if ([(EKEvent *)selfCopy isDetached])
    {
      [(EKEvent *)selfCopy _saveUndeletedDetachedOccurrence];
LABEL_9:
      v7 = 1;
LABEL_10:
      v8 = *MEMORY[0x1E69E9840];
      return v7;
    }

    if ([(EKCalendarItem *)selfCopy hasRecurrenceRules])
    {
      if (error)
      {
        v10 = MEMORY[0x1E696ABC0];
        v11 = @"Cannot undelete an event that is part of a recurring series and not detached";
        v12 = 5;
LABEL_33:
        [v10 errorWithEKErrorCode:v12 description:v11];
        *error = v7 = 0;
        goto LABEL_10;
      }

LABEL_34:
      v7 = 0;
      goto LABEL_10;
    }
  }

  if (![(EKEvent *)selfCopy isUndetached])
  {
    spanCopy = span;
    if ((span - 4) >= 0xFFFFFFFFFFFFFFFELL)
    {
      if ([(EKEvent *)selfCopy isDetached])
      {
        spanCopy = 0;
      }

      else
      {
        spanCopy = 4;
      }
    }

    if ([(EKObject *)selfCopy _hasChangesForKey:*MEMORY[0x1E6992620]])
    {
      _originallyCommittedVirtualConference = [(EKEvent *)selfCopy _originallyCommittedVirtualConference];
      virtualConference = [(EKEvent *)selfCopy virtualConference];
      if ([_originallyCommittedVirtualConference isEqual:virtualConference])
      {
        v237 = 0;
      }

      else
      {
        v237 = _originallyCommittedVirtualConference;
      }
    }

    else
    {
      v237 = 0;
    }

    if ([(EKEvent *)selfCopy _detectedConferenceURLOnBackingObjectMayBeInvalid])
    {
      conferenceURLDetected = [(EKEvent *)selfCopy conferenceURLDetected];
      absoluteString = [conferenceURLDetected absoluteString];
      [(EKObject *)selfCopy setSingleChangedValue:absoluteString forKey:*MEMORY[0x1E6992950]];
    }

    if ([(EKEvent *)selfCopy _needsAttendeePartStatReset])
    {
      [(EKEvent *)selfCopy dismissAttendeeRepliedNotification];
      v280 = 0u;
      v281 = 0u;
      v278 = 0u;
      v279 = 0u;
      attendeesNotIncludingOrganizer = [(EKEvent *)selfCopy attendeesNotIncludingOrganizer];
      v20 = [attendeesNotIncludingOrganizer countByEnumeratingWithState:&v278 objects:v290 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v279;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v279 != v22)
            {
              objc_enumerationMutation(attendeesNotIncludingOrganizer);
            }

            [*(*(&v278 + 1) + 8 * i) setParticipantStatus:1];
          }

          v21 = [attendeesNotIncludingOrganizer countByEnumeratingWithState:&v278 objects:v290 count:16];
        }

        while (v21);
      }
    }

    v240 = *MEMORY[0x1E6992968];
    v24 = [(EKEvent *)selfCopy committedValueForKey:?];
    date = [MEMORY[0x1E695DF00] date];
    v236 = v24;
    v26 = [v24 compare:date];
    v27 = MEMORY[0x1E6992648];
    if (v26 == -1)
    {
      virtualConference2 = [(EKEvent *)selfCopy virtualConference];

      if (virtualConference2)
      {
        if ([(EKObject *)selfCopy _hasChangesForKey:*v27])
        {
          hasRecurrenceRules = [(EKCalendarItem *)selfCopy hasRecurrenceRules];
          goto LABEL_50;
        }

        if ([(EKObject *)selfCopy _hasChangesForKey:v240])
        {
          endDateUnadjustedForLegacyClients = [(EKEvent *)selfCopy endDateUnadjustedForLegacyClients];
          hasRecurrenceRules = [date compare:endDateUnadjustedForLegacyClients] == -1;

LABEL_50:
          v235 = date;
          if ([(EKObject *)selfCopy isPropertyUnavailable:*MEMORY[0x1E6992568]])
          {
            if ([(EKObject *)selfCopy isPropertyUnavailable:*MEMORY[0x1E6992650]])
            {
              goto LABEL_75;
            }

            LOBYTE(v28) = 0;
          }

          else
          {
            v276 = 0u;
            v277 = 0u;
            v274 = 0u;
            v275 = 0u;
            attendees = [(EKCalendarItem *)selfCopy attendees];
            v30 = [attendees countByEnumeratingWithState:&v274 objects:v289 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = spanCopy;
              v33 = *v275;
              v34 = *MEMORY[0x1E6992538];
              while (2)
              {
                for (j = 0; j != v31; ++j)
                {
                  if (*v275 != v33)
                  {
                    objc_enumerationMutation(attendees);
                  }

                  v36 = *(*(&v274 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 && ([v36 _hasChangesForKey:v34])
                  {
                    v28 = 1;
                    goto LABEL_67;
                  }
                }

                v31 = [attendees countByEnumeratingWithState:&v274 objects:v289 count:16];
                if (v31)
                {
                  continue;
                }

                break;
              }

              v28 = 0;
LABEL_67:
              spanCopy = v32;
              v27 = MEMORY[0x1E6992648];
            }

            else
            {
              v28 = 0;
            }

            if ([(EKObject *)selfCopy isPropertyUnavailable:*MEMORY[0x1E6992650]])
            {
              if (!v28)
              {
                goto LABEL_75;
              }

              goto LABEL_74;
            }
          }

          selfAttendee = [(EKCalendarItem *)selfCopy selfAttendee];
          v39 = [selfAttendee _hasChangesForKey:*MEMORY[0x1E6992538]];

          if (v28 & 1) != 0 || (v39)
          {
LABEL_74:
            date2 = [MEMORY[0x1E695DF00] date];
            [(EKEvent *)selfCopy setParticipationStatusModifiedDate:date2];
          }

LABEL_75:
          v41 = *MEMORY[0x1E6992920];
          if ([(EKObject *)selfCopy _hasChangesForKey:*MEMORY[0x1E6992920]])
          {
            calendar = [(EKCalendarItem *)selfCopy calendar];
            supportedEventAvailabilities = [calendar supportedEventAvailabilities];

            if (!supportedEventAvailabilities)
            {
              [(EKObject *)selfCopy setSingleChangedValue:&unk_1F1B6AC30 forKey:v41];
            }
          }

          isMasterOrDetachedOccurrence = [(EKEvent *)selfCopy isMasterOrDetachedOccurrence];
          originalOccurrenceStartDate = [(EKEvent *)selfCopy originalOccurrenceStartDate];
          date3 = [originalOccurrenceStartDate date];

          v46 = *MEMORY[0x1E69926C8];
          if ([(EKObject *)selfCopy _hasChangesForKey:*MEMORY[0x1E69926C8]]|| [(EKObject *)selfCopy _hasChangesForKey:v240]|| [(EKObject *)selfCopy _hasChangesForKey:*MEMORY[0x1E6992600]])
          {
            recurrenceDate = [(EKEvent *)selfCopy recurrenceDate];
            if (recurrenceDate)
            {
              v273 = 0;
              v48 = [(EKEvent *)selfCopy adjustedPersistedDateForDate:recurrenceDate withAdjustmentMode:1 pinMode:0 clientCalendarDate:&v273];
              v49 = v273;
              date4 = [v49 date];

              date3 = date4;
            }
          }

          v51 = [(EKObject *)selfCopy _hasChangesForKey:v46];
          currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
          v244 = [currentCalendar copy];

          v229 = v51;
          if (v51)
          {
            if (spanCopy)
            {
              if (![(EKObject *)selfCopy _hasChangesForKey:*v27])
              {
                startDate = [(EKEvent *)selfCopy startDate];
                v54 = [date3 isSameDayAsDate:startDate inCalendar:v244];

                if ((v54 & 1) == 0)
                {
                  if ([(EKCalendarItem *)selfCopy hasComplexRecurrence])
                  {
                    if (![(EKEvent *)selfCopy _attemptToUpdateComplexRecurrenceRule])
                    {
                      spanCopy = 0;
                    }
                  }

                  else
                  {
                    [(EKCalendarItem *)selfCopy pinRecurrenceRuleToEndsOfFreqency];
                  }
                }
              }
            }
          }

          eventStore = [(EKObject *)selfCopy eventStore];
          v239 = date3;
          if ([eventStore eventAccessLevel] == 1)
          {
            calendar2 = [(EKCalendarItem *)selfCopy calendar];
            isNew = [calendar2 isNew];

            if (isNew)
            {
              if (error)
              {
                v59 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:61];
                previouslySavedCopy = 0;
LABEL_99:
                v7 = 0;
                *error = v59;
LABEL_119:
                v67 = v236;
                v68 = v237;
LABEL_293:

                goto LABEL_10;
              }

              previouslySavedCopy = 0;
              goto LABEL_118;
            }
          }

          else
          {
          }

          v238 = v46;
          if ([(EKObject *)selfCopy isNew])
          {
            previouslySavedCopy = 0;
          }

          else
          {
            _changesRequireDetachOrSlice = [(EKEvent *)selfCopy _changesRequireDetachOrSlice];
            if ([(EKEvent *)selfCopy isDetached])
            {
              _allowSlicingFromDetachedOccurrence = [objc_opt_class() _allowSlicingFromDetachedOccurrence];
              if (spanCopy == 1)
              {
                v63 = _allowSlicingFromDetachedOccurrence;
              }

              else
              {
                v63 = 1;
              }

              if (v63)
              {
                v64 = spanCopy;
              }

              else
              {
                v64 = 0;
              }

              v65 = v64 == 1 && _changesRequireDetachOrSlice;
              if (v64)
              {
                originalItem = [(EKCalendarItem *)selfCopy originalItem];
                previouslySavedCopy = [originalItem previouslySavedCopy];
              }

              else
              {
                spanCopy = 0;
                previouslySavedCopy = 0;
              }
            }

            else
            {
              v65 = _changesRequireDetachOrSlice && [(EKCalendarItem *)selfCopy _hadRecurrenceRules];
              previouslySavedCopy = [(EKEvent *)selfCopy previouslySavedCopy];
            }

            if ([(EKObject *)selfCopy _hasChangesForKey:*MEMORY[0x1E6992570]])
            {
              spanCopy2 = span;
              calendar3 = [(EKCalendarItem *)selfCopy calendar];
              [(EKCalendarItem *)selfCopy moveToCalendar:calendar3];

              if ([(EKEvent *)selfCopy isDetached])
              {
                originalItem2 = [(EKCalendarItem *)selfCopy originalItem];
                calendar4 = [originalItem2 calendar];
                calendar5 = [(EKCalendarItem *)selfCopy calendar];
                v73 = [calendar4 isEqual:calendar5];

                if ((v73 & 1) == 0)
                {
                  if (error)
                  {
                    v59 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:37];
                    goto LABEL_99;
                  }

LABEL_118:
                  v7 = 0;
                  goto LABEL_119;
                }
              }

              v245 = v65;
              v74 = previouslySavedCopy;
              v227 = spanCopy;
              v271 = 0u;
              v272 = 0u;
              v269 = 0u;
              v270 = 0u;
              detachedItems = [(EKCalendarItem *)selfCopy detachedItems];
              v76 = [detachedItems countByEnumeratingWithState:&v269 objects:v288 count:16];
              if (v76)
              {
                v77 = v76;
                v78 = *v270;
                while (2)
                {
                  for (k = 0; k != v77; ++k)
                  {
                    if (*v270 != v78)
                    {
                      objc_enumerationMutation(detachedItems);
                    }

                    calendar6 = [*(*(&v269 + 1) + 8 * k) calendar];
                    calendar7 = [(EKCalendarItem *)selfCopy calendar];
                    v82 = [calendar6 isEqual:calendar7];

                    if ((v82 & 1) == 0)
                    {
                      if (error)
                      {
                        *error = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:37];
                      }

                      v7 = 0;
                      v67 = v236;
                      v68 = v237;
                      previouslySavedCopy = v74;
                      goto LABEL_293;
                    }
                  }

                  v77 = [detachedItems countByEnumeratingWithState:&v269 objects:v288 count:16];
                  if (v77)
                  {
                    continue;
                  }

                  break;
                }
              }

              spanCopy = v227;
              previouslySavedCopy = v74;
              span = spanCopy2;
              v65 = v245;
            }

            if ([(EKEvent *)selfCopy _isParticipationStatusDirty]&& !spanCopy)
            {
              if (-[EKCalendarItem hasRecurrenceRules](selfCopy, "hasRecurrenceRules") && (-[EKEvent constraints](selfCopy, "constraints"), v83 = objc_claimAutoreleasedReturnValue(), v84 = [v83 mustAcknowledgeMasterEvent], v83, v84))
              {
                if ([(EKEvent *)selfCopy responseMustApplyToAll])
                {
                  spanCopy = 4;
                }

                else
                {
                  spanCopy = 0;
                }
              }

              else
              {
                spanCopy = 0;
              }
            }

            constraints = [(EKEvent *)selfCopy constraints];
            snoozeAlarmRequiresDetach = [constraints snoozeAlarmRequiresDetach];

            if (snoozeAlarmRequiresDetach && [(EKEvent *)selfCopy requiresDetachDueToSnoozedAlarm])
            {
              spanCopy = 0;
            }

            if ([(EKObject *)selfCopy _hasChangesForKey:v238]|| [(EKObject *)selfCopy _hasChangesForKey:v240]|| [(EKObject *)selfCopy _hasChangesForKey:*MEMORY[0x1E6992600]])
            {
              [(EKCalendarItem *)selfCopy removeAllSnoozedAlarms];
            }

            else if ([(EKCalendarItem *)selfCopy isAlarmAcknowledgedPropertyDirty])
            {
              [(EKCalendarItem *)selfCopy removeAcknowledgedSnoozedAlarms];
            }

            if ([(EKEvent *)selfCopy isFirstOccurrence]&& spanCopy == 1)
            {
              spanCopy = 4;
            }

            if (spanCopy != 4 && v65)
            {
              originalOccurrenceStartDate2 = [(EKEvent *)selfCopy originalOccurrenceStartDate];
              date5 = [originalOccurrenceStartDate2 date];

              occurrenceStartDate = [(EKEvent *)selfCopy occurrenceStartDate];
              date6 = [occurrenceStartDate date];

              if ([(EKEvent *)selfCopy isFloating])
              {
                eventStore2 = [(EKObject *)selfCopy eventStore];
                timeZone = [eventStore2 timeZone];
                v93 = [date5 dateInTimeZone:0 fromTimeZone:timeZone];

                eventStore3 = [(EKObject *)selfCopy eventStore];
                timeZone2 = [eventStore3 timeZone];
                v96 = [date6 dateInTimeZone:0 fromTimeZone:timeZone2];

                date5 = v93;
                date6 = v96;
              }

              [(EKEvent *)selfCopy _detachOrSliceWithSpan:spanCopy withOriginalStartDate:date5 newStartDate:date6];
            }

            if ([(EKEvent *)selfCopy requiresDetachDueToSnoozedAlarm])
            {
              [(EKEvent *)selfCopy setRequiresDetachDueToSnoozedAlarm:0];
            }

            else if (([(EKCalendarItem *)selfCopy modifiedProperties]& 0x80) != 0)
            {
              [(EKCalendarItem *)selfCopy setModifiedProperties:[(EKCalendarItem *)selfCopy modifiedProperties]& 0xFFFFFF7FLL];
            }

            [(EKCalendarItem *)selfCopy _updateModifiedAlarmByAcknowledging];
            if (([(EKCalendarItem *)selfCopy modifiedProperties]& 0x200) != 0 && ![(EKObject *)selfCopy _hasChangesForKey:*MEMORY[0x1E6992990]])
            {
              [(EKCalendarItem *)selfCopy setModifiedProperties:[(EKCalendarItem *)selfCopy modifiedProperties]& 0xFFFFFDFFLL];
            }
          }

          [(EKCalendarItem *)selfCopy addOrganizerAndSelfAttendeeForNewInvitation];
          [(EKCalendarItem *)selfCopy removeLastExtraneousOrganizerAndSelfAttendee];
          [(EKEvent *)selfCopy _updateUUIDForNewParticipants];
          constraints2 = [(EKEvent *)selfCopy constraints];
          requiresOccurrencesConformToRecurrenceRule = [constraints2 requiresOccurrencesConformToRecurrenceRule];

          if (requiresOccurrencesConformToRecurrenceRule)
          {
            if ([(EKEvent *)selfCopy _isSimpleRepeatingEvent])
            {
              recurrenceRules = [(EKCalendarItem *)selfCopy recurrenceRules];
              v100 = [(EKEvent *)selfCopy conformsToRecurrenceRules:recurrenceRules];

              if (!v100)
              {
                if (spanCopy)
                {
                  recurrenceRules2 = [(EKCalendarItem *)selfCopy recurrenceRules];
                  v102 = [recurrenceRules2 objectAtIndexedSubscript:0];

                  frequency = [v102 frequency];
                  interval = [v102 interval];
                  recurrenceEnd = [v102 recurrenceEnd];
                  v106 = [EKRecurrenceRule recurrenceRuleWithType:frequency interval:interval end:recurrenceEnd];
                  v287 = v106;
                  v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v287 count:1];
                  [(EKEvent *)selfCopy setRecurrenceRules:v107];
                }
              }
            }
          }

          if ([(EKEvent *)selfCopy _isParticipationStatusDirty])
          {
            constraints3 = [(EKEvent *)selfCopy constraints];
            mustAcknowledgeMasterEvent = [constraints3 mustAcknowledgeMasterEvent];

            if (mustAcknowledgeMasterEvent)
            {
              if ([(EKEvent *)selfCopy isDetached]&& spanCopy == 4)
              {
                originalItem3 = [(EKCalendarItem *)selfCopy originalItem];
                if (originalItem3)
                {
                  participationStatus = [(EKEvent *)selfCopy participationStatus];
                  if (participationStatus == 3)
                  {
                    v112 = 4;
                  }

                  else
                  {
                    v112 = participationStatus;
                  }

                  [originalItem3 setParticipationStatus:v112];
                }
              }
            }
          }

          v113 = *MEMORY[0x1E6992980];
          if ([(EKObject *)selfCopy _hasChangesForKey:*MEMORY[0x1E6992980]])
          {
            image = [(EKEvent *)selfCopy image];
            calendar8 = [(EKCalendarItem *)selfCopy calendar];
            [image saveInCalendar:calendar8];

            changeSet = [(EKObject *)selfCopy changeSet];
            image2 = [(EKEvent *)selfCopy image];
            backingObject = [image2 backingObject];
            [changeSet forceChangeValue:backingObject forKey:v113];
          }

          if ([(EKEvent *)selfCopy isDetached])
          {
            v119 = *MEMORY[0x1E6992648];
            if ([(EKObject *)selfCopy _hasChangesForKey:*MEMORY[0x1E6992648]])
            {
              recurrenceRules3 = [(EKCalendarItem *)selfCopy recurrenceRules];
              originalItem4 = [(EKCalendarItem *)selfCopy originalItem];
              [originalItem4 setRecurrenceRules:recurrenceRules3];

              originalItem5 = [(EKCalendarItem *)selfCopy originalItem];
              LOBYTE(originalItem4) = [originalItem5 hasRecurrenceRules];

              originalItem6 = [(EKCalendarItem *)selfCopy originalItem];
              originalItem7 = originalItem6;
              if (originalItem4)
              {
                [originalItem6 _filterExceptionDatesAndDetachments];
              }

              else
              {
                [originalItem6 setExceptionDates:0];

                originalItem7 = [(EKCalendarItem *)selfCopy originalItem];
                [originalItem7 setDetachedItems:0];
              }

              originalItem8 = [(EKCalendarItem *)selfCopy originalItem];
              [originalItem8 _updateModifiedProperties];

              originalItem9 = [(EKCalendarItem *)selfCopy originalItem];
              [originalItem9 updatePersistentValueForKeyIfNeeded:v119];

              originalItem10 = [(EKCalendarItem *)selfCopy originalItem];
              [(EKObject *)selfCopy addCoCommitObject:originalItem10];

              changeSet2 = [(EKObject *)selfCopy changeSet];
              v286 = v119;
              v129 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v286 count:1];
              [changeSet2 rollbackChangesForKeys:v129];

              [(EKObject *)selfCopy emptyMeltedCacheForKey:v119];
            }
          }

          v132 = span != 3 && spanCopy != 0 && previouslySavedCopy != 0;
          timeZone3 = [(EKCalendarItem *)selfCopy timeZone];
          [v244 setTimeZone:timeZone3];

          v134 = MEMORY[0x1E6992598];
          v228 = spanCopy;
          v234 = previouslySavedCopy;
          if (v132)
          {
            v135 = 0x1E695D000uLL;
            v136 = objc_opt_new();
            originalItem11 = [(EKCalendarItem *)selfCopy originalItem];
            v138 = originalItem11;
            if (originalItem11)
            {
              v139 = originalItem11;
            }

            else
            {
              v139 = selfCopy;
            }

            v140 = v139;

            singleRecurrenceRule = [v140 singleRecurrenceRule];
            recurrenceEnd2 = [singleRecurrenceRule recurrenceEnd];

            v243 = v136;
            v226 = v140;
            v225 = recurrenceEnd2;
            if (recurrenceEnd2)
            {
              if ([recurrenceEnd2 occurrenceCount])
              {
                v143 = objc_alloc_init(EKRecurrenceGenerator);
                singleRecurrenceRule2 = [v140 singleRecurrenceRule];
                [v226 startDate];
                v146 = v145 = v134;
                distantFuture = [MEMORY[0x1E695DF00] distantFuture];
                effectiveTimeZone = [(EKEvent *)selfCopy effectiveTimeZone];
                v149 = recurrenceEnd2;
                v150 = effectiveTimeZone;
                LOBYTE(v224) = 0;
                spanCopy3 = span;
                v152 = -[EKRecurrenceGenerator copyOccurrenceDatesWithEKEvent:recurrenceRule:startDate:endDate:timeZone:exceptionDates:limit:adjustDatesForAllDayEvents:](v143, "copyOccurrenceDatesWithEKEvent:recurrenceRule:startDate:endDate:timeZone:exceptionDates:limit:adjustDatesForAllDayEvents:", v226, singleRecurrenceRule2, v146, distantFuture, effectiveTimeZone, 0, [v149 occurrenceCount], v224);

                v136 = v243;
                v134 = v145;
                v135 = 0x1E695D000;

                v140 = v226;
                recurrenceEnd2 = [v152 lastObject];

                span = spanCopy3;
              }

              else
              {
                recurrenceEnd2 = [recurrenceEnd2 endDate];
              }
            }

            spanCopy4 = span;
            if (v228 == 4)
            {
              [v140 emptyMeltedCacheForKey:*v134];
            }

            v267 = 0u;
            v268 = 0u;
            v265 = 0u;
            v266 = 0u;
            detachedItems2 = [v140 detachedItems];
            v154 = [detachedItems2 countByEnumeratingWithState:&v265 objects:v285 count:16];
            if (v154)
            {
              v155 = v154;
              v156 = *v266;
              do
              {
                for (m = 0; m != v155; ++m)
                {
                  if (*v266 != v156)
                  {
                    objc_enumerationMutation(detachedItems2);
                  }

                  v158 = *(*(&v265 + 1) + 8 * m);
                  if (recurrenceEnd2)
                  {
                    startDate2 = [*(*(&v265 + 1) + 8 * m) startDate];
                    v160 = [startDate2 isBeforeOrSameDayAsDate:recurrenceEnd2 inCalendar:v244];

                    v136 = v243;
                    if (!v160)
                    {
                      continue;
                    }
                  }

                  [v136 addObject:v158];
                }

                v155 = [detachedItems2 countByEnumeratingWithState:&v265 objects:v285 count:16];
              }

              while (v155);
            }

            if ([(EKEvent *)selfCopy isDetached])
            {
              originalItem12 = [(EKCalendarItem *)selfCopy originalItem];
              [v136 addObject:originalItem12];
            }

            startDate3 = [(EKEvent *)selfCopy startDate];
            v233 = [v244 components:254 fromDate:v239 toDate:startDate3 options:0];

            occurrenceStartDate2 = [(EKEvent *)selfCopy occurrenceStartDate];
            occurrenceEndDate = [(EKEvent *)selfCopy occurrenceEndDate];
            v232 = [(EKEvent *)selfCopy _calculateDurationWithStart:occurrenceStartDate2 end:occurrenceEndDate allDay:[(EKEvent *)selfCopy occurrenceIsAllDay]];

            v165 = *(v135 + 3952);
            v246 = objc_opt_new();
            v261 = 0u;
            v262 = 0u;
            v263 = 0u;
            v264 = 0u;
            eventStore4 = [(EKObject *)selfCopy eventStore];
            v167 = [eventStore4 eventsWithSameRecurrenceSetAsEvent:selfCopy];

            v168 = [v167 countByEnumeratingWithState:&v261 objects:v284 count:16];
            v169 = spanCopy4;
            if (v168)
            {
              v170 = v168;
              v171 = *v262;
              do
              {
                for (n = 0; n != v170; ++n)
                {
                  if (*v262 != v171)
                  {
                    objc_enumerationMutation(v167);
                  }

                  v173 = *(*(&v261 + 1) + 8 * n);
                  if (v169 == 4)
                  {
                    goto LABEL_228;
                  }

                  startDate4 = [*(*(&v261 + 1) + 8 * n) startDate];
                  [(EKEvent *)selfCopy startDate];
                  v176 = v175 = selfCopy;
                  v177 = [startDate4 isAfterDate:v176];

                  selfCopy = v175;
                  v169 = spanCopy4;
                  if (v177)
                  {
LABEL_228:
                    [v246 addObject:v173];
                  }
                }

                v170 = [v167 countByEnumeratingWithState:&v261 objects:v284 count:16];
              }

              while (v170);
            }

            [v246 sortUsingSelector:sel_compareStartDateWithEvent_];
            v132 = 1;
            v134 = MEMORY[0x1E6992598];
          }

          else
          {
            v243 = 0;
            v246 = 0;
            v232 = 0;
            v233 = 0;
          }

          [(EKObject *)selfCopy insertPersistentObjectIfNeeded];
          [(EKEvent *)selfCopy _willSave];
          [(EKEvent *)selfCopy _updateVideoConferenceOnlyModified];
          eventStore5 = [(EKObject *)selfCopy eventStore];
          allowsIntegrationModifications = [eventStore5 allowsIntegrationModifications];

          if ((allowsIntegrationModifications & 1) == 0 && [(EKEvent *)selfCopy isOrWasIntegrationEvent])
          {
            eventStore6 = [(EKObject *)selfCopy eventStore];
            backingObject2 = [(EKObject *)selfCopy backingObject];
            [eventStore6 _markObjectUncommittable:backingObject2];

            persistentObject = [(EKObject *)selfCopy persistentObject];
            if (![persistentObject isNew])
            {
LABEL_242:

              goto LABEL_243;
            }

            isDetached = [(EKEvent *)selfCopy isDetached];

            if (!isDetached)
            {
              v184 = v134;
              persistentObject = [(EKEvent *)selfCopy committedValueForKey:*MEMORY[0x1E6992700]];
              uniqueID = [(EKCalendarItem *)selfCopy uniqueID];
              v186 = uniqueID;
              if (persistentObject && uniqueID && ([uniqueID isEqualToString:persistentObject] & 1) == 0 && !-[EKEvent isDetached](selfCopy, "isDetached"))
              {
                eventStore7 = [(EKObject *)selfCopy eventStore];
                [eventStore7 pendingIntegrationEventChangedIdentifierFrom:persistentObject to:v186];
              }

              eventStore8 = [(EKObject *)selfCopy eventStore];
              [eventStore8 addPendingIntegrationEvent:selfCopy];

              v134 = v184;
              goto LABEL_242;
            }
          }

LABEL_243:
          v189 = *MEMORY[0x1E69925A0];
          v190 = *v134;
          v191 = *MEMORY[0x1E6992630];
          v192 = *MEMORY[0x1E6992618];
          v193 = *MEMORY[0x1E69929A8];
          v194 = *MEMORY[0x1E6992648];
          v195 = v190;
          v196 = [MEMORY[0x1E695DFD8] setWithObjects:{v238, v240, *MEMORY[0x1E69925A0], v190, *MEMORY[0x1E6992630], *MEMORY[0x1E6992618], *MEMORY[0x1E69929A8], *MEMORY[0x1E6992648], 0}];
          [(EKObject *)selfCopy updatePersistentObjectSkippingProperties:v196];

          if (v132)
          {
            if ([v243 count])
            {
              [(EKEvent *)selfCopy _propagateChangesToDetachedEvents:v243 originalItemBeforeSave:v234 startDateOffset:v233 duration:v232 calendar:v244];
            }

            if ([v246 count])
            {
              [(EKEvent *)selfCopy _updateRecurrenceEndDateForEvent:selfCopy calendar:v244 withOffset:v233];
              v255[0] = MEMORY[0x1E69E9820];
              v255[1] = 3221225472;
              v255[2] = __30__EKEvent_saveWithSpan_error___block_invoke;
              v255[3] = &unk_1E77FF078;
              v255[4] = selfCopy;
              v256 = v234;
              v257 = v233;
              v258 = v232;
              v259 = v244;
              v260 = v246;
              [v260 enumerateObjectsUsingBlock:v255];
            }
          }

          v197 = *MEMORY[0x1E6992600];
          if ([(EKObject *)selfCopy _hasChangesForKey:*MEMORY[0x1E6992600]])
          {
            v198 = selfCopy;
            v199 = [MEMORY[0x1E696AD98] numberWithBool:{-[EKEvent occurrenceIsAllDay](selfCopy, "occurrenceIsAllDay")}];
            [(EKEvent *)v198 setOriginalOccurrenceIsAllDay:v199];

            selfCopy = v198;
          }

          if (v229 && ![(EKObject *)selfCopy isNew]&& v228)
          {
            [(EKEvent *)selfCopy _clearExceptionDatesAndUpdateDetachedOriginalDates:selfCopy];
          }

          else if ([(EKObject *)selfCopy _hasChangesForKey:v194])
          {
            if ([(EKCalendarItem *)selfCopy hasRecurrenceRules])
            {
              [(EKEvent *)selfCopy _filterExceptionDatesAndDetachments];
            }

            else
            {
              [(EKCalendarItem *)selfCopy setExceptionDates:0];
              [(EKCalendarItem *)selfCopy setDetachedItems:0];
            }
          }

          [(EKObject *)selfCopy updatePersistentValueForKeyIfNeeded:v193];
          if (!isMasterOrDetachedOccurrence && [(EKCalendarItem *)selfCopy hasRecurrenceRules]&& v228 == 4)
          {
            [(EKEvent *)selfCopy _applyTimeChangesToMaster];
          }

          else
          {
            [(EKObject *)selfCopy updatePersistentValueForKeyIfNeeded:v238];
            [(EKObject *)selfCopy updatePersistentValueForKeyIfNeeded:v240];
          }

          [(EKObject *)selfCopy updatePersistentValueForKeyIfNeeded:v189];
          [(EKObject *)selfCopy updatePersistentValueForKeyIfNeeded:v191];
          [(EKEvent *)selfCopy _updateModifiedPropertiesForThisEventAndAllDetachments];
          originalItem13 = [(EKCalendarItem *)selfCopy originalItem];
          v201 = originalItem13;
          if (originalItem13)
          {
            v202 = originalItem13;
          }

          else
          {
            v202 = selfCopy;
          }

          v203 = v202;

          [(EKObject *)v203 updatePersistentValueForKeyIfNeeded:v195];
          v204 = selfCopy;
          if ([(EKObject *)selfCopy _hasChangesForKey:v197]|| [(EKObject *)selfCopy _hasChangesForKey:v194])
          {
            if ([(EKEvent *)selfCopy isAllDay])
            {
              recurrenceRules4 = [(EKCalendarItem *)selfCopy recurrenceRules];
              lastObject = [recurrenceRules4 lastObject];
              endDate = [lastObject endDate];

              if (endDate)
              {
                [(EKEvent *)v204 _updateRecurrenceEndDatesWithAdjustmentMode:0];
              }
            }
          }

          [(EKObject *)v203 updatePersistentValueForKeyIfNeeded:v194];
          [(EKObject *)v204 updatePersistentValueForKeyIfNeeded:v192];
          [(EKEvent *)v204 setPredictedLocationFrozen:0];
          occurrenceStartDate3 = [(EKEvent *)v204 occurrenceStartDate];
          [(EKEvent *)v204 setOriginalOccurrenceStartDate:occurrenceStartDate3];

          occurrenceEndDate2 = [(EKEvent *)v204 occurrenceEndDate];
          [(EKEvent *)v204 setOriginalOccurrenceEndDate:occurrenceEndDate2];

          [(EKEvent *)v204 _invalidateRecurrenceIdentifier];
          v68 = v237;
          v210 = v204;
          previouslySavedCopy = v234;
          if (v203 == v204)
          {
            [(EKObject *)v204 cachedMeltedObjectsForMultiValueKey:v195];
            v251 = 0u;
            v252 = 0u;
            v253 = 0u;
            v212 = v254 = 0u;
            v213 = [v212 countByEnumeratingWithState:&v251 objects:v283 count:16];
            if (v213)
            {
              v214 = v213;
              v215 = *v252;
              do
              {
                for (ii = 0; ii != v214; ++ii)
                {
                  if (*v252 != v215)
                  {
                    objc_enumerationMutation(v212);
                  }

                  [*(*(&v251 + 1) + 8 * ii) _invalidateRecurrenceIdentifier];
                }

                v214 = [v212 countByEnumeratingWithState:&v251 objects:v283 count:16];
              }

              while (v214);
            }

            v211 = v203;
          }

          else
          {
            [(EKEvent *)v203 _deleteErrorIfInvalid];
            v211 = v204;
          }

          [(EKEvent *)v211 _deleteErrorIfInvalid];
          if (v237)
          {
            v249 = 0u;
            v250 = 0u;
            v247 = 0u;
            v248 = 0u;
            joinMethods = [v237 joinMethods];
            v218 = [joinMethods countByEnumeratingWithState:&v247 objects:v282 count:16];
            if (v218)
            {
              v219 = v218;
              v220 = *v248;
              do
              {
                for (jj = 0; jj != v219; ++jj)
                {
                  if (*v248 != v220)
                  {
                    objc_enumerationMutation(joinMethods);
                  }

                  v222 = [*(*(&v247 + 1) + 8 * jj) URL];
                  [(EKEvent *)v210 invalidateVirtualConferenceURLIfNeededOnCommit:v222];
                }

                v219 = [joinMethods countByEnumeratingWithState:&v247 objects:v282 count:16];
              }

              while (v219);
            }
          }

          if (hasRecurrenceRules)
          {
            v223 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:31622400.0];
            [(EKEvent *)v210 _extendConferenceURLExpirationDateToDate:v223];
          }

          v7 = 1;
          v67 = v236;
          goto LABEL_293;
        }
      }
    }

    hasRecurrenceRules = 0;
    goto LABEL_50;
  }

  if (span && span != 3)
  {
    if (!error)
    {
      goto LABEL_34;
    }

    v10 = MEMORY[0x1E696ABC0];
    v11 = @"Cannot undetach an event with the given span";
    goto LABEL_32;
  }

  v13 = *MEMORY[0x1E69E9840];

  return [(EKEvent *)selfCopy _saveUndetachedOccurrenceWithError:error];
}

void __30__EKEvent_saveWithSpan_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v10 = a2;
  [v4 _propagateChangesToSlice:v10 originalItemBeforeSave:v5 startDateOffset:v6 duration:v7 calendar:v8 updateRecurrenceEnd:{objc_msgSend(v9, "count") - 1 != a3}];
}

- (BOOL)_needsAttendeePartStatReset
{
  if (([MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement] & 1) != 0 || !-[EKCalendarItem hasAttendees](self, "hasAttendees") || -[EKCalendarItem isExternallyOrganizedInvitation](self, "isExternallyOrganizedInvitation"))
  {
    return 0;
  }

  return [(EKEvent *)self isDifferentFromCommittedEventAndRequiresRSVP];
}

- (void)_deleteErrorIfInvalid
{
  v19 = *MEMORY[0x1E69E9840];
  syncError = [(EKCalendarItem *)self syncError];
  v4 = syncError;
  if (syncError && ([syncError isNew] & 1) == 0)
  {
    userInfo = [v4 userInfo];
    v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E6992E70]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        while (2)
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [(EKEvent *)self _eventKitPropertyKeyForCalendarItemErrorPropertyKey:*(*(&v14 + 1) + 8 * v11), v14];
            if (v12 && [(EKObject *)self _hasChangesForKey:v12])
            {

              [(EKCalendarItem *)self setSyncError:0];
              [(EKObject *)self updatePersistentValueForKeyIfNeeded:*MEMORY[0x1E69926F0]];
              goto LABEL_15;
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_15:
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_eventKitPropertyKeyForCalendarItemErrorPropertyKey:(id)key
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E6992E78];
  v10[0] = *MEMORY[0x1E6992560];
  v3 = MEMORY[0x1E695DF20];
  keyCopy = key;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v5 objectForKeyedSubscript:keyCopy];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_saveUndeletedDetachedOccurrence
{
  [(EKObject *)self _initChangeSetIfNone];
  originalItem = [(EKCalendarItem *)self originalItem];
  originalStartDate = [(EKEvent *)self originalStartDate];
  [originalItem _removeExceptionDate:originalStartDate];

  [originalItem updatePersistentValueForKeyIfNeeded:*MEMORY[0x1E69925A0]];
  frozenObject = [(EKObject *)self frozenObject];
  v5 = *MEMORY[0x1E6992598];
  [originalItem addMultiChangedObjectValue:frozenObject forKey:*MEMORY[0x1E6992598]];

  [originalItem emptyMeltedCacheForKey:v5];
  changeSet = [(EKObject *)self changeSet];
  frozenObject2 = [originalItem frozenObject];
  v8 = *MEMORY[0x1E6992630];
  [changeSet forceChangeValue:frozenObject2 forKey:*MEMORY[0x1E6992630]];

  changeSet2 = [(EKObject *)self changeSet];
  _generateNewUniqueID = [(EKEvent *)self _generateNewUniqueID];
  v11 = *MEMORY[0x1E6992700];
  [changeSet2 forceChangeValue:_generateNewUniqueID forKey:*MEMORY[0x1E6992700]];

  [(EKObject *)self updatePersistentValueForKeyIfNeeded:v11];
  [(EKObject *)self updatePersistentValueForKeyIfNeeded:v8];
  [(EKObject *)self addCoCommitObject:originalItem];
  [(EKObject *)self insertPersistentObjectIfNeeded];
}

- (BOOL)_saveUndetachedOccurrenceWithError:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  masterEvent = [(EKEvent *)self masterEvent];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  detachedItems = [masterEvent detachedItems];
  v6 = [detachedItems countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(detachedItems);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      originalStartDate = [v10 originalStartDate];
      startDate = [(EKEvent *)self startDate];
      v13 = [originalStartDate isEqualToDate:startDate];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [detachedItems countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v10;

    if (!v14)
    {
      goto LABEL_12;
    }

    [v14 _deleteSelfAndDetached];

    v15 = 1;
  }

  else
  {
LABEL_9:

LABEL_12:
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:5 description:@"Cannot undetach an event that is not detached"];
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)_extendConferenceURLExpirationDateToDate:(id)date
{
  v19 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  virtualConference = [(EKEvent *)self virtualConference];
  v6 = virtualConference;
  if (dateCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    joinMethods = [virtualConference joinMethods];
    v8 = [joinMethods countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(joinMethods);
          }

          v12 = [*(*(&v14 + 1) + 8 * v11) URL];
          [EKConferenceUtils renewConferenceURL:v12 toDate:dateCopy];

          ++v11;
        }

        while (v9 != v11);
        v9 = [joinMethods countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_updateModifiedPropertiesForThisEventAndAllDetachments
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "Updating modified properties for detached items: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_updateVideoConferenceOnlyModified
{
  v3 = *MEMORY[0x1E6992620];
  if (![(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992620]])
  {
    return;
  }

  v18 = [(EKEvent *)self committedValueForKey:v3];
  notes = [(EKCalendarItem *)self notes];
  v5 = [MEMORY[0x1E6992F38] deserializeConference:v18];
  v6 = [MEMORY[0x1E6992F38] deserializeConference:notes];
  conference = [v5 conference];
  conference2 = [v6 conference];
  if (conference == 0) != (conference2 != 0) && (!conference || ([conference isEqual:conference2]))
  {
    goto LABEL_14;
  }

  range = [v5 range];
  v11 = [v18 stringByReplacingCharactersInRange:range withString:{v10, &stru_1F1B49D68}];
  if ([v11 hasSuffix:@"\n\n"])
  {
    v12 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 2}];

    v11 = v12;
  }

  range2 = [v6 range];
  v15 = [notes stringByReplacingCharactersInRange:range2 withString:{v14, &stru_1F1B49D68}];
  if ([v15 hasSuffix:@"\n\n"])
  {
    v16 = [v15 substringToIndex:{objc_msgSend(v15, "length") - 2}];

    v15 = v16;
  }

  if ((!v11 || ([v11 isEqualToString:v15] & 1) == 0) && (objc_msgSend(v11, "length") || objc_msgSend(v15, "length")))
  {

LABEL_14:
    v17 = [(EKCalendarItem *)self modifiedProperties]& 0xFFFFDFFFLL;
    goto LABEL_15;
  }

  if (([(EKCalendarItem *)self modifiedProperties]& 0x20) != 0)
  {
    goto LABEL_16;
  }

  v17 = [(EKCalendarItem *)self modifiedProperties]| 0x2000;
LABEL_15:
  [(EKCalendarItem *)self setModifiedProperties:v17];
LABEL_16:
}

- (void)_updateModifiedProperties
{
  v20 = *MEMORY[0x1E69E9840];
  modifiedProperties = [self modifiedProperties];
  modifiedProperties2 = [self modifiedProperties];
  if (modifiedProperties2 == a2)
  {
    v8 = @"Modified properties changed: NO";
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Modified properties changed: YES. Old modified properties: %u", a2];
  }

  clearModifiedFlags = [self clearModifiedFlags];
  privacyDescription = [self privacyDescription];
  *buf = 67109890;
  v13 = modifiedProperties;
  v14 = 2114;
  v15 = v8;
  v16 = 2048;
  v17 = clearModifiedFlags;
  v18 = 2114;
  v19 = privacyDescription;
  _os_log_debug_impl(&dword_1A805E000, a3, OS_LOG_TYPE_DEBUG, "Updated modified properties: %u. %{public}@. Clear modified flags: %lu. Event: %{public}@", buf, 0x26u);

  if (modifiedProperties2 != a2)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)applyChangesFromEvent:(id)event toEvent:(id)toEvent ignoringDifferencesFrom:(id)from
{
  v19[5] = *MEMORY[0x1E69E9840];
  toEventCopy = toEvent;
  v9 = MEMORY[0x1E695DFA8];
  fromCopy = from;
  eventCopy = event;
  v12 = +[EKEvent knownKeysToSkipForFutureChanges];
  v13 = [v9 setWithArray:v12];

  constraints = [(EKEvent *)self constraints];
  LODWORD(v12) = [constraints requiresSeparateFilesForAllAttachments];

  if (v12)
  {
    [v13 addObject:*MEMORY[0x1E6992560]];
  }

  if (([toEventCopy isSelfOrganized] & 1) == 0 && objc_msgSend(toEventCopy, "isSignificantlyDetachedIgnoringParticipation"))
  {
    v15 = *MEMORY[0x1E6992538];
    v19[0] = *MEMORY[0x1E6992530];
    v19[1] = v15;
    v16 = *MEMORY[0x1E6992990];
    v19[2] = *MEMORY[0x1E6992518];
    v19[3] = v16;
    v19[4] = *MEMORY[0x1E69929B0];
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
    [v13 addObjectsFromArray:v17];
  }

  [v13 addObject:*MEMORY[0x1E6992650]];
  [EKObject addChangesFromObject:eventCopy toObject:toEventCopy exceptWhereObjectIsDifferentFrom:fromCopy skippingChanges:v13];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_updateRecurrenceEndDateForEvent:(id)event calendar:(id)calendar withOffset:(id)offset
{
  eventCopy = event;
  calendarCopy = calendar;
  offsetCopy = offset;
  singleRecurrenceRule = [eventCopy singleRecurrenceRule];
  v10 = singleRecurrenceRule;
  if (singleRecurrenceRule)
  {
    if ([singleRecurrenceRule interval] >= 1)
    {
      recurrenceEnd = [v10 recurrenceEnd];
      endDate = [recurrenceEnd endDate];

      if (endDate)
      {
        recurrenceEnd2 = [v10 recurrenceEnd];
        endDate2 = [recurrenceEnd2 endDate];
        v26 = [calendarCopy dateByAddingComponents:offsetCopy toDate:endDate2 options:0];

        v25 = [EKRecurrenceRule alloc];
        frequency = [v10 frequency];
        interval = [v10 interval];
        daysOfTheWeek = [v10 daysOfTheWeek];
        daysOfTheMonth = [v10 daysOfTheMonth];
        monthsOfTheYear = [v10 monthsOfTheYear];
        weeksOfTheYear = [v10 weeksOfTheYear];
        daysOfTheYear = [v10 daysOfTheYear];
        setPositions = [v10 setPositions];
        v20 = [EKRecurrenceEnd recurrenceEndWithEndDate:v26];
        v21 = [(EKRecurrenceRule *)v25 initRecurrenceWithFrequency:frequency interval:interval daysOfTheWeek:daysOfTheWeek daysOfTheMonth:daysOfTheMonth monthsOfTheYear:monthsOfTheYear weeksOfTheYear:weeksOfTheYear daysOfTheYear:daysOfTheYear setPositions:setPositions end:v20];

        [eventCopy removeRecurrenceRule:v10];
        [eventCopy addRecurrenceRule:v21];
      }
    }
  }
}

- (void)_propagateChangesToSlice:(id)slice originalItemBeforeSave:(id)save startDateOffset:(id)offset duration:(id)duration calendar:(id)calendar updateRecurrenceEnd:(BOOL)end
{
  endCopy = end;
  v59 = *MEMORY[0x1E69E9840];
  sliceCopy = slice;
  saveCopy = save;
  offsetCopy = offset;
  durationCopy = duration;
  calendarCopy = calendar;
  [(EKEvent *)self applyChangesFromEvent:self toEvent:sliceCopy ignoringDifferencesFrom:saveCopy];
  startCalendarDate = [saveCopy startCalendarDate];
  dayTimeComponents = [startCalendarDate dayTimeComponents];

  startCalendarDate2 = [sliceCopy startCalendarDate];
  dayTimeComponents2 = [startCalendarDate2 dayTimeComponents];

  if (endCopy)
  {
    [sliceCopy _updateRecurrenceEndDateForEvent:sliceCopy calendar:calendarCopy withOffset:offsetCopy];
  }

  hour = [dayTimeComponents hour];
  if (hour != [dayTimeComponents2 hour] || (v24 = objc_msgSend(dayTimeComponents, "minute"), v24 != objc_msgSend(dayTimeComponents2, "minute")) || (v25 = objc_msgSend(dayTimeComponents, "second"), v25 != objc_msgSend(dayTimeComponents2, "second")))
  {
    [offsetCopy setHour:0];
    [offsetCopy setMinute:0];
    [offsetCopy setSecond:0];
  }

  v48 = dayTimeComponents;
  [sliceCopy duration];
  v27 = v26;
  startDate = [sliceCopy startDate];
  v29 = [calendarCopy dateByAddingComponents:offsetCopy toDate:startDate options:0];
  [sliceCopy setStartDate:v29];

  [saveCopy duration];
  v47 = dayTimeComponents2;
  if (v30 == v27)
  {
    occurrenceStartDate = [sliceCopy occurrenceStartDate];
    v32 = [occurrenceStartDate calendarDateByComponentwiseAddingComponents:durationCopy];
    date = [v32 date];
  }

  else
  {
    occurrenceStartDate = [sliceCopy startDate];
    date = [occurrenceStartDate dateByAddingTimeInterval:v27];
  }

  v46 = date;
  [sliceCopy _updateEndDateForDate:date withAdjustmentMode:0];
  [sliceCopy _updateModifiedProperties];
  [sliceCopy updatePersistentObjectSkippingProperties:0];
  [(EKObject *)self addCoCommitObject:sliceCopy];
  detachedItems = [sliceCopy detachedItems];
  v51 = saveCopy;
  v49 = calendarCopy;
  v50 = durationCopy;
  [(EKEvent *)self _propagateChangesToDetachedEvents:detachedItems originalItemBeforeSave:saveCopy startDateOffset:offsetCopy duration:durationCopy calendar:calendarCopy];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = sliceCopy;
  detachedItems2 = [sliceCopy detachedItems];
  v36 = [detachedItems2 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v54;
    v39 = *MEMORY[0x1E6992598];
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v54 != v38)
        {
          objc_enumerationMutation(detachedItems2);
        }

        v41 = *(*(&v53 + 1) + 8 * i);
        [v41 _updateModifiedProperties];
        v42 = MEMORY[0x1E695DFD8];
        v57 = v39;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
        v44 = [v42 setWithArray:v43];
        [v41 updatePersistentObjectSkippingProperties:v44];
      }

      v37 = [detachedItems2 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v37);
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)_propagateChangesToDetachedEvents:(id)events originalItemBeforeSave:(id)save startDateOffset:(id)offset duration:(id)duration calendar:(id)calendar
{
  v103 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  saveCopy = save;
  offsetCopy = offset;
  durationCopy = duration;
  calendarCopy = calendar;
  constraints = [(EKEvent *)self constraints];
  requiresSeparateFilesForAllAttachments = [constraints requiresSeparateFilesForAllAttachments];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v15 = eventsCopy;
  v16 = [v15 countByEnumeratingWithState:&v95 objects:v102 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v96;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v96 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v95 + 1) + 8 * i);
        if (([v20 isEqual:self] & 1) == 0)
        {
          [(EKEvent *)self applyChangesFromEvent:self toEvent:v20 ignoringDifferencesFrom:saveCopy];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v95 objects:v102 count:16];
    }

    while (v17);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v15;
  v21 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
  v22 = offsetCopy;
  if (v21)
  {
    v23 = v21;
    v24 = *v92;
    v78 = *v92;
    selfCopy = self;
    do
    {
      v25 = 0;
      v80 = v23;
      do
      {
        if (*v92 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v91 + 1) + 8 * v25);
        originalStartDate = [v26 originalStartDate];
        if (originalStartDate)
        {
          v28 = [calendarCopy dateByAddingComponents:v22 toDate:originalStartDate options:0];
          [v26 setOriginalStartDate:v28];

          if ([v26 isEqual:self])
          {
            goto LABEL_35;
          }

          v29 = MEMORY[0x1E69930C8];
          startDate = originalStartDate;
        }

        else
        {
          if ([v26 isEqual:self])
          {
            goto LABEL_35;
          }

          v29 = MEMORY[0x1E69930C8];
          startDate = [v26 startDate];
          v77 = startDate;
        }

        timeZone = [calendarCopy timeZone];
        v32 = [v29 calendarDateWithDate:startDate timeZone:timeZone];

        if (!originalStartDate)
        {
        }

        v33 = MEMORY[0x1E69930C8];
        startDate2 = [v26 startDate];
        v35 = calendarCopy;
        timeZone2 = [calendarCopy timeZone];
        v37 = [v33 calendarDateWithDate:startDate2 timeZone:timeZone2];

        v38 = objc_opt_new();
        hour = [v32 hour];
        if (hour == [v37 hour])
        {
          minute = [v32 minute];
          if (minute == [v37 minute])
          {
            second = [v32 second];
            if (second == [v37 second])
            {
              [v38 setHour:{objc_msgSend(v22, "hour")}];
              [v38 setMinute:{objc_msgSend(v22, "minute")}];
              [v38 setSecond:{objc_msgSend(v22, "second")}];
            }
          }
        }

        v42 = [v32 era];
        if (v42 == [v37 era])
        {
          year = [v32 year];
          if (year == [v37 year])
          {
            month = [v32 month];
            if (month == [v37 month])
            {
              v45 = [v32 day];
              if (v45 == [v37 day])
              {
                [v38 setEra:{objc_msgSend(v22, "era")}];
                [v38 setYear:{objc_msgSend(v22, "year")}];
                [v38 setMonth:{objc_msgSend(v22, "month")}];
                [v38 setDay:{objc_msgSend(v22, "day")}];
              }
            }
          }
        }

        [v26 duration];
        v47 = v46;
        startDate3 = [v26 startDate];
        v49 = [v35 dateByAddingComponents:v38 toDate:startDate3 options:0];
        [v26 setStartDate:v49];

        [saveCopy duration];
        if (v50 == v47)
        {
          occurrenceStartDate = [v26 occurrenceStartDate];
          v52 = [occurrenceStartDate calendarDateByComponentwiseAddingComponents:durationCopy];
          date = [v52 date];

          v22 = offsetCopy;
        }

        else
        {
          occurrenceStartDate = [v26 startDate];
          date = [occurrenceStartDate dateByAddingTimeInterval:v47];
        }

        [v26 _updateEndDateForDate:date withAdjustmentMode:0];
        calendarCopy = v35;
        v24 = v78;
        self = selfCopy;
        v23 = v80;
LABEL_35:

        ++v25;
      }

      while (v23 != v25);
      v23 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
    }

    while (v23);
  }

  v54 = MEMORY[0x1E695DFA8];
  v55 = +[EKEvent knownKeysToUseForFutureChanges];
  v56 = [v54 setWithArray:v55];

  if (requiresSeparateFilesForAllAttachments)
  {
    [v56 removeObject:*MEMORY[0x1E6992560]];
    [(EKEvent *)self _duplicateAddedAttachmentsToDetachedEvents:obj];
  }

  selfAttendee = [(EKCalendarItem *)self selfAttendee];
  changeSet = [(EKObject *)self changeSet];
  v59 = [changeSet hasUnsavedChangeForKey:*MEMORY[0x1E6992650]];

  if (v59)
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v60 = obj;
    v61 = [v60 countByEnumeratingWithState:&v87 objects:v100 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v88;
      do
      {
        for (j = 0; j != v62; ++j)
        {
          if (*v88 != v63)
          {
            objc_enumerationMutation(v60);
          }

          [*(*(&v87 + 1) + 8 * j) _updateSelfAttendeeToMatchSelfAttendee:selfAttendee];
        }

        v62 = [v60 countByEnumeratingWithState:&v87 objects:v100 count:16];
      }

      while (v62);
    }
  }

  if ([(EKEvent *)self isDetached])
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v65 = obj;
    v66 = [v65 countByEnumeratingWithState:&v83 objects:v99 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v84;
      do
      {
        v69 = 0;
        do
        {
          if (*v84 != v68)
          {
            objc_enumerationMutation(v65);
          }

          __102__EKEvent__propagateChangesToDetachedEvents_originalItemBeforeSave_startDateOffset_duration_calendar___block_invoke(v66, *(*(&v83 + 1) + 8 * v69++));
        }

        while (v67 != v69);
        v66 = [v65 countByEnumeratingWithState:&v83 objects:v99 count:16];
        v67 = v66;
      }

      while (v66);
    }

    originalStartDate2 = [(EKEvent *)self originalStartDate];

    if (originalStartDate2)
    {
      originalStartDate3 = [(EKEvent *)self originalStartDate];
      v72 = [calendarCopy dateByAddingComponents:offsetCopy toDate:originalStartDate3 options:0];
      [(EKEvent *)self setOriginalStartDate:v72];
    }
  }

  v73 = *MEMORY[0x1E69E9840];
}

void __102__EKEvent__propagateChangesToDetachedEvents_originalItemBeforeSave_startDateOffset_duration_calendar___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  [v2 _updateModifiedProperties];
  v3 = MEMORY[0x1E695DFD8];
  v7[0] = *MEMORY[0x1E6992598];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v3 setWithArray:v4];
  [v2 updatePersistentObjectSkippingProperties:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_updateSelfAttendeeToMatchSelfAttendee:(id)attendee
{
  v16 = *MEMORY[0x1E69E9840];
  attendeeCopy = attendee;
  if (attendeeCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    attendeesRaw = [(EKCalendarItem *)self attendeesRaw];
    v6 = [attendeesRaw countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(attendeesRaw);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 isEqualToParticipant:attendeeCopy])
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [attendeesRaw countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    v6 = 0;
  }

  [(EKCalendarItem *)self setSelfAttendee:v6];

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_multiValueRelatedObject:(id)object isAlsoASingleValueRelatedObjectForKey:(id)key
{
  objectCopy = object;
  if ([key isEqualToString:*MEMORY[0x1E6992568]])
  {
    v7 = objectCopy;
    selfAttendee = [(EKCalendarItem *)self selfAttendee];
    v9 = [v7 isEqualToParticipant:selfAttendee];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_duplicateAddedAttachmentsToDetachedEvents:(id)events
{
  v60 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  changeSet = [(EKObject *)self changeSet];
  v6 = *MEMORY[0x1E6992560];
  v7 = [changeSet hasUnsavedMultiValueAdditionForKey:*MEMORY[0x1E6992560]];

  if (v7)
  {
    selfCopy = self;
    changeSet2 = [(EKObject *)self changeSet];
    multiValueAdditions = [changeSet2 multiValueAdditions];
    v10 = [multiValueAdditions objectForKeyedSubscript:v6];

    v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v52;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v51 + 1) + 8 * i);
          uniqueIdentifier = [v17 uniqueIdentifier];
          if (uniqueIdentifier)
          {
            [v11 addObject:uniqueIdentifier];
          }

          else
          {
            v19 = EKLogHandle;
            if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v58 = v17;
              _os_log_error_impl(&dword_1A805E000, v19, OS_LOG_TYPE_ERROR, "Ignoring added attachment without a UUID: %@", buf, 0xCu);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v14);
    }

    v40 = eventsCopy;

    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    attachments = [(EKCalendarItem *)selfCopy attachments];
    v22 = [attachments countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v48;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(attachments);
          }

          v26 = *(*(&v47 + 1) + 8 * j);
          uniqueIdentifier2 = [v26 uniqueIdentifier];
          v28 = [v11 containsObject:uniqueIdentifier2];

          if (v28)
          {
            [v20 addObject:v26];
          }
        }

        v23 = [attachments countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v23);
    }

    v29 = [v20 count];
    if (v29 != [v11 count])
    {
      v30 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(EKEvent *)v30 _duplicateAddedAttachmentsToDetachedEvents:v20, v11];
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__EKEvent__duplicateAddedAttachmentsToDetachedEvents___block_invoke;
    aBlock[3] = &unk_1E77FF0A0;
    v31 = v20;
    v46 = v31;
    v32 = _Block_copy(aBlock);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v33 = v40;
    v34 = [v33 countByEnumeratingWithState:&v41 objects:v55 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v42;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v42 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v32[2](v32, *(*(&v41 + 1) + 8 * k));
        }

        v35 = [v33 countByEnumeratingWithState:&v41 objects:v55 count:16];
      }

      while (v35);
    }

    eventsCopy = v40;
  }

  v38 = *MEMORY[0x1E69E9840];
}

void __54__EKEvent__duplicateAddedAttachmentsToDetachedEvents___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) duplicateWithNewIdentity];
        [v3 addAttachment:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_updateUUIDForNewParticipants
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = [(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992568]];
  v4 = [(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992628]];
  if (v4 || v3)
  {
    if (v4)
    {
      organizer = [(EKCalendarItem *)self organizer];
      if ([organizer isNew])
      {
        v6 = organizer;
      }

      else
      {
        v6 = 0;
      }

      if (v3)
      {
LABEL_11:
        attendeesRaw = [(EKCalendarItem *)self attendeesRaw];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v9 = [attendeesRaw countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v9)
        {
          v10 = v9;
          v7 = 0;
          v11 = *v47;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v47 != v11)
              {
                objc_enumerationMutation(attendeesRaw);
              }

              v13 = *(*(&v46 + 1) + 8 * i);
              if ([v13 isNew])
              {
                if (!v7)
                {
                  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(attendeesRaw, "count")}];
                }

                [v7 addObject:v13];
              }
            }

            v10 = [attendeesRaw countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v10);
        }

        else
        {
          v7 = 0;
        }

        if (v6)
        {
          goto LABEL_26;
        }

LABEL_25:
        if (![v7 count])
        {
LABEL_43:

          goto LABEL_44;
        }

LABEL_26:
        v14 = objc_opt_new();
        v15 = objc_opt_new();
        originalItem = [(EKCalendarItem *)self originalItem];
        v17 = originalItem;
        if (originalItem)
        {
          selfCopy = originalItem;
        }

        else
        {
          selfCopy = self;
        }

        v19 = selfCopy;

        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __40__EKEvent__updateUUIDForNewParticipants__block_invoke_2;
        v42[3] = &unk_1E77FF0E8;
        v42[4] = self;
        v45 = &__block_literal_global_258;
        v20 = v15;
        v43 = v20;
        v21 = v14;
        v44 = v21;
        v36 = v19;
        [(EKCalendarItem *)v19 _recursivelyPerformBlockOnSelfAndDetachedItems:v42 forSavingItem:self];
        v22 = MEMORY[0x1E6992B08];
        if (v6)
        {
          generateSemanticIdentifier = [v6 generateSemanticIdentifier];
          v24 = [v20 objectForKeyedSubscript:generateSemanticIdentifier];
          if (v24)
          {
            [v6 setUUID:v24];
            [v6 updatePersistentValueForKeyIfNeeded:*v22];
          }
        }

        v35 = v20;
        v37 = v6;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v25 = v7;
        v26 = [v25 countByEnumeratingWithState:&v38 objects:v50 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v39;
          v29 = *v22;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v39 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v31 = *(*(&v38 + 1) + 8 * j);
              generateSemanticIdentifier2 = [v31 generateSemanticIdentifier];
              v33 = [v21 objectForKeyedSubscript:generateSemanticIdentifier2];
              if (v33)
              {
                [v31 setUUID:v33];
                [v31 updatePersistentValueForKeyIfNeeded:v29];
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v38 objects:v50 count:16];
          }

          while (v27);
        }

        v6 = v37;
        goto LABEL_43;
      }
    }

    else
    {
      v6 = 0;
      if (v3)
      {
        goto LABEL_11;
      }
    }

    v7 = 0;
    if (v6)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_44:
  v34 = *MEMORY[0x1E69E9840];
}

void __40__EKEvent__updateUUIDForNewParticipants__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  v5 = [v4 generateSemanticIdentifier];
  v6 = [v4 UUID];

  if (v5)
  {
    if (v6)
    {
      v7 = [v8 objectForKeyedSubscript:v5];

      if (!v7)
      {
        [v8 setObject:v6 forKeyedSubscript:v5];
      }
    }
  }
}

void __40__EKEvent__updateUUIDForNewParticipants__block_invoke_2(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1[4] != v3)
  {
    v5 = a1[7];
    v6 = a1[5];
    v7 = [v3 organizer];
    (*(v5 + 16))(v5, v6, v7);

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v4 attendeesRaw];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          v14 = a1[6];
          (*(a1[7] + 16))();
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)isSignificantlyDetached
{
  selfCopy = self;
  originalItem = [(EKCalendarItem *)self originalItem];
  LOBYTE(selfCopy) = [(EKEvent *)selfCopy _isSignificantlyDetachedComparedToMaster:originalItem shouldIgnorePartStat:0];

  return selfCopy;
}

- (BOOL)isSignificantlyDetachedIgnoringParticipation
{
  selfCopy = self;
  originalItem = [(EKCalendarItem *)self originalItem];
  LOBYTE(selfCopy) = [(EKEvent *)selfCopy _isSignificantlyDetachedComparedToMaster:originalItem shouldIgnorePartStat:1];

  return selfCopy;
}

- (BOOL)_isSignificantlyDetachedComparedToMaster:(id)master shouldIgnorePartStat:(BOOL)stat
{
  v54 = *MEMORY[0x1E69E9840];
  masterCopy = master;
  v7 = masterCopy;
  if (!masterCopy)
  {
    v13 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      privacyDescription = [(EKEvent *)self privacyDescription];
      v52 = 138543362;
      v53 = privacyDescription;
      _os_log_impl(&dword_1A805E000, v14, OS_LOG_TYPE_INFO, "Event %{public}@ is not significantly detached because it is not detached", &v52, 0xCu);
    }

    goto LABEL_7;
  }

  if ([masterCopy isPhantom])
  {
    v8 = EKLogHandle;
    v9 = 1;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      v10 = v8;
      privacyDescription2 = [(EKEvent *)self privacyDescription];
      v52 = 138543362;
      v53 = privacyDescription2;
      v12 = "Event %{public}@ is significantly detached because its master is a phantom";
LABEL_31:
      _os_log_impl(&dword_1A805E000, v10, OS_LOG_TYPE_INFO, v12, &v52, 0xCu);

      goto LABEL_35;
    }

    goto LABEL_35;
  }

  startDate = [(EKEvent *)self startDate];
  originalStartDate = [(EKEvent *)self originalStartDate];
  v18 = [startDate isEqualToDate:originalStartDate];

  if (v18)
  {
    occurrenceStartDate = [(EKEvent *)self occurrenceStartDate];
    occurrenceEndDate = [(EKEvent *)self occurrenceEndDate];
    occurrenceStartDate2 = [v7 occurrenceStartDate];
    occurrenceEndDate2 = [v7 occurrenceEndDate];
    v23 = -[EKEvent _calculateDurationWithStart:end:allDay:](self, "_calculateDurationWithStart:end:allDay:", occurrenceStartDate2, occurrenceEndDate2, [v7 occurrenceIsAllDay]);
    v24 = [occurrenceStartDate calendarDateByComponentwiseAddingComponents:v23];
    if (([v24 isEqual:occurrenceEndDate] & 1) == 0)
    {
      v42 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
      {
        v43 = v42;
        privacyDescription3 = [(EKEvent *)self privacyDescription];
        v52 = 138543362;
        v53 = privacyDescription3;
        _os_log_impl(&dword_1A805E000, v43, OS_LOG_TYPE_INFO, "Event %{public}@ is significantly detached because its end date differs", &v52, 0xCu);
      }

      v9 = 1;
      goto LABEL_35;
    }

    locationWithoutPrediction = [(EKEvent *)self locationWithoutPrediction];
    if (locationWithoutPrediction || ([v7 locationWithoutPrediction], (occurrenceEndDate = objc_claimAutoreleasedReturnValue()) != 0))
    {
      locationWithoutPrediction2 = [(EKEvent *)self locationWithoutPrediction];
      locationWithoutPrediction3 = [v7 locationWithoutPrediction];
      v28 = [locationWithoutPrediction2 isEqualToString:locationWithoutPrediction3];

      if (locationWithoutPrediction)
      {

        if (v28)
        {
          goto LABEL_14;
        }
      }

      else
      {

        if (v28)
        {
          goto LABEL_14;
        }
      }

      v47 = EKLogHandle;
      v9 = 1;
      if (!os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v10 = v47;
      privacyDescription2 = [(EKEvent *)self privacyDescription];
      v52 = 138543362;
      v53 = privacyDescription2;
      v12 = "Event %{public}@ is significantly detached because its location differs";
      goto LABEL_31;
    }

LABEL_14:
    title = [(EKEvent *)self title];
    if (title || ([v7 title], (occurrenceEndDate = objc_claimAutoreleasedReturnValue()) != 0))
    {
      title2 = [(EKEvent *)self title];
      title3 = [v7 title];
      v32 = [title2 isEqualToString:title3];

      if (title)
      {

        if (v32)
        {
          goto LABEL_18;
        }

LABEL_40:
        v48 = EKLogHandle;
        v9 = 1;
        if (!os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_35;
        }

        v10 = v48;
        privacyDescription2 = [(EKEvent *)self privacyDescription];
        v52 = 138543362;
        v53 = privacyDescription2;
        v12 = "Event %{public}@ is significantly detached because its title differs";
        goto LABEL_31;
      }

      if ((v32 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_18:
    status = [(EKEvent *)self status];
    if (status != [v7 status])
    {
      v49 = EKLogHandle;
      v9 = 1;
      if (!os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v10 = v49;
      privacyDescription2 = [(EKEvent *)self privacyDescription];
      v52 = 138543362;
      v53 = privacyDescription2;
      v12 = "Event %{public}@ is significantly detached because its status differs";
      goto LABEL_31;
    }

    if (!stat)
    {
      if ([(EKCalendarItem *)self isExternallyOrganizedInvitation])
      {
        status = [(EKEvent *)self participationStatus];
        participationStatus = [v7 participationStatus];
        if (status != participationStatus)
        {
          v35 = participationStatus;
          status = [EKParticipant needsResponseForParticipantStatus:status];
          v36 = [EKParticipant needsResponseForParticipantStatus:v35];
          if (!status || !v36)
          {
            v51 = EKLogHandle;
            v9 = 1;
            if (!os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
            {
              goto LABEL_35;
            }

            v10 = v51;
            privacyDescription2 = [(EKEvent *)self privacyDescription];
            v52 = 138543362;
            v53 = privacyDescription2;
            v12 = "Event %{public}@ is significantly detached because it is externally organized and its participation status differs";
            goto LABEL_31;
          }
        }
      }
    }

    organizer = [(EKCalendarItem *)self organizer];
    if (organizer || ([v7 organizer], (status = objc_claimAutoreleasedReturnValue()) != EKEventStatusNone))
    {
      organizer2 = [(EKCalendarItem *)self organizer];
      organizer3 = [v7 organizer];
      v40 = [organizer2 isEqualToParticipant:organizer3];

      if (organizer)
      {

        if ((v40 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {

        if ((v40 & 1) == 0)
        {
LABEL_45:
          v50 = EKLogHandle;
          v9 = 1;
          if (!os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
          {
            goto LABEL_35;
          }

          v10 = v50;
          privacyDescription2 = [(EKEvent *)self privacyDescription];
          v52 = 138543362;
          v53 = privacyDescription2;
          v12 = "Event %{public}@ is significantly detached because its organizer differs";
          goto LABEL_31;
        }
      }
    }

LABEL_7:
    v9 = 0;
    goto LABEL_35;
  }

  v41 = EKLogHandle;
  v9 = 1;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
  {
    v10 = v41;
    privacyDescription2 = [(EKEvent *)self privacyDescription];
    v52 = 138543362;
    v53 = privacyDescription2;
    v12 = "Event %{public}@ is significantly detached because its start date differs";
    goto LABEL_31;
  }

LABEL_35:

  v45 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)_updateMasterDate:(id)date forChangeToOccurrenceDate:(id)occurrenceDate fromOriginalOccurrenceDate:(id)originalOccurrenceDate
{
  dateCopy = date;
  originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
  occurrenceStartDate = [(EKEvent *)self occurrenceStartDate];
  v9 = [occurrenceStartDate differenceAsDateComponents:originalOccurrenceStartDate units:254];
  v10 = [dateCopy calendarDateByComponentwiseAddingComponents:v9];

  date = [v10 date];

  return date;
}

- (void)_applyTimeChangesToMaster
{
  v3 = *MEMORY[0x1E69926C8];
  v4 = [(EKObject *)self _hasChangesForKey:*MEMORY[0x1E69926C8]];
  v5 = *MEMORY[0x1E6992968];
  v6 = [(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992968]];
  v7 = v6;
  if (v4 || v6)
  {
    v8 = [EKEvent alloc];
    persistentObject = [(EKObject *)self persistentObject];
    v18 = [(EKEvent *)v8 initWithPersistentObject:persistentObject];

    if (v4)
    {
      occurrenceStartDate = [(EKEvent *)v18 occurrenceStartDate];
      occurrenceStartDate2 = [(EKEvent *)self occurrenceStartDate];
      originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
      v13 = [(EKEvent *)self _updateMasterDate:occurrenceStartDate forChangeToOccurrenceDate:occurrenceStartDate2 fromOriginalOccurrenceDate:originalOccurrenceStartDate];
      [(EKEvent *)v18 setStartDateRaw:v13];

      [(EKObject *)v18 updatePersistentValueForKeyIfNeeded:v3];
    }

    if (v7)
    {
      occurrenceEndDate = [(EKEvent *)v18 occurrenceEndDate];
      occurrenceEndDate2 = [(EKEvent *)self occurrenceEndDate];
      originalOccurrenceEndDate = [(EKEvent *)self originalOccurrenceEndDate];
      v17 = [(EKEvent *)self _updateMasterDate:occurrenceEndDate forChangeToOccurrenceDate:occurrenceEndDate2 fromOriginalOccurrenceDate:originalOccurrenceEndDate];
      [(EKEvent *)v18 setEndDateRaw:v17];

      [(EKObject *)v18 updatePersistentValueForKeyIfNeeded:v5];
    }
  }
}

- (void)_clearExceptionDatesAndUpdateDetachedOriginalDates:(id)dates
{
  v36 = *MEMORY[0x1E69E9840];
  datesCopy = dates;
  if ([(EKEvent *)self isDetached])
  {
    originalItem = [(EKCalendarItem *)self originalItem];
    [originalItem _clearExceptionDatesAndUpdateDetachedOriginalDates:datesCopy];
  }

  else
  {
    [(EKCalendarItem *)self setExceptionDates:0];
    if (![(EKEvent *)self isAllDay])
    {
      detachedItems = [(EKCalendarItem *)self detachedItems];
      if ([detachedItems count])
      {
        if ([(EKEvent *)self isFloating])
        {
          [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
        }

        else
        {
          [(EKCalendarItem *)self timeZone];
        }
        v7 = ;
        startDateRaw = [(EKEvent *)self startDateRaw];
        [startDateRaw timeIntervalSinceReferenceDate];
        MEMORY[0x1AC568C80](v7);

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v24 = detachedItems;
        obj = detachedItems;
        v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v31;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v31 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v30 + 1) + 8 * i);
              if ([v13 isEqual:datesCopy])
              {
                v14 = datesCopy;
              }

              else
              {
                v14 = v13;
              }

              v15 = v14;
              originalStartDate = [v15 originalStartDate];
              [originalStartDate timeIntervalSinceReferenceDate];
              MEMORY[0x1AC568C80](v7);
              v17 = MEMORY[0x1E695DF00];
              CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
              v18 = [v17 dateWithTimeIntervalSinceReferenceDate:?];

              [v15 setOriginalStartDate:v18];
            }

            v10 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
          }

          while (v10);
        }

        detachedItems = v24;
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    originalItem = [(EKCalendarItem *)self recurrenceRules];
    v19 = [originalItem countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(originalItem);
          }

          [*(*(&v26 + 1) + 8 * j) invalidateCachedEndDate];
        }

        v20 = [originalItem countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v20);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)_attemptToUpdateComplexRecurrenceRule
{
  v182[1] = *MEMORY[0x1E69E9840];
  if ([(EKCalendarItem *)self hasComplexRecurrence])
  {
    singleRecurrenceRule = [(EKEvent *)self singleRecurrenceRule];
    v4 = MEMORY[0x1E695DEE8];
    timeZone = [(EKCalendarItem *)self timeZone];
    v6 = [v4 CalGregorianCalendarForTimeZone:timeZone];

    [v6 setFirstWeekday:1];
    originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
    date = [originalOccurrenceStartDate date];
    v9 = [v6 components:5656 fromDate:date];

    startDate = [(EKEvent *)self startDate];
    v11 = [v6 components:5656 fromDate:startDate];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__EKEvent__attemptToUpdateComplexRecurrenceRule__block_invoke;
    aBlock[3] = &unk_1E77FF110;
    v12 = singleRecurrenceRule;
    v168 = v12;
    v13 = v11;
    v169 = v13;
    v14 = v9;
    v170 = v14;
    selfCopy = self;
    v15 = v6;
    v172 = v15;
    v16 = _Block_copy(aBlock);
    setPositions = [v12 setPositions];
    if ([(EKRecurrenceRule *)setPositions count]> 1)
    {
      goto LABEL_12;
    }

    weeksOfTheYear = [v12 weeksOfTheYear];
    if ([(EKRecurrenceDayOfWeek *)weeksOfTheYear count])
    {
LABEL_4:
      v19 = 0;
LABEL_5:

LABEL_13:
      goto LABEL_14;
    }

    daysOfTheYear = [v12 daysOfTheYear];
    v21 = [daysOfTheYear count];

    if (v21)
    {
LABEL_8:
      v19 = 0;
LABEL_14:

      goto LABEL_15;
    }

    if ([v12 frequency] == 1)
    {
      setPositions = [v12 daysOfTheWeek];
      weeksOfTheYear = [v12 daysOfTheMonth];
      if ([(EKRecurrenceDayOfWeek *)weeksOfTheYear count])
      {
        goto LABEL_4;
      }

      monthsOfTheYear = [v12 monthsOfTheYear];
      v23 = [monthsOfTheYear count];

      if (!v23)
      {
        if ([(EKRecurrenceRule *)setPositions count]== 1)
        {
          v38 = [(EKRecurrenceRule *)setPositions objectAtIndexedSubscript:0];
          dayOfTheWeek = [v38 dayOfTheWeek];
          weekday = [v13 weekday];

          if (dayOfTheWeek == weekday)
          {
            v147 = [EKRecurrenceRule alloc];
            frequency = [v12 frequency];
            interval = [v12 interval];
            recurrenceEnd = [v12 recurrenceEnd];
            weeksOfTheYear = [(EKRecurrenceRule *)v147 initRecurrenceWithFrequency:frequency interval:interval daysOfTheWeek:0 daysOfTheMonth:0 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:recurrenceEnd];

            [(EKEvent *)self setRecurrenceRule:weeksOfTheYear];
            v19 = 1;
            goto LABEL_5;
          }
        }

        else if ([(EKRecurrenceRule *)setPositions count]>= 2)
        {
          weeksOfTheYear = -[EKRecurrenceDayOfWeek initWithDayOfTheWeek:weekNumber:]([EKRecurrenceDayOfWeek alloc], "initWithDayOfTheWeek:weekNumber:", [v13 weekday], 0);
          v45 = objc_alloc(MEMORY[0x1E695DF70]);
          v182[0] = weeksOfTheYear;
          v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:1];
          obj = [v45 initWithArray:v46];

          v165 = 0u;
          v166 = 0u;
          v163 = 0u;
          v164 = 0u;
          setPositions = setPositions;
          v137 = [(EKRecurrenceRule *)setPositions countByEnumeratingWithState:&v163 objects:v181 count:16];
          if (v137)
          {
            v130 = *v164;
            while (2)
            {
              for (i = 0; i != v137; ++i)
              {
                if (*v164 != v130)
                {
                  objc_enumerationMutation(setPositions);
                }

                v48 = *(*(&v163 + 1) + 8 * i);
                if ([v48 weekNumber] || (v148 = objc_msgSend(v48, "dayOfTheWeek"), v148 == objc_msgSend(v13, "weekday")))
                {
                  v19 = 0;
                  v51 = setPositions;
                  goto LABEL_87;
                }

                dayOfTheWeek2 = [v48 dayOfTheWeek];
                if (dayOfTheWeek2 != [v14 weekday])
                {
                  [obj addObject:v48];
                }
              }

              v137 = [(EKRecurrenceRule *)setPositions countByEnumeratingWithState:&v163 objects:v181 count:16];
              if (v137)
              {
                continue;
              }

              break;
            }
          }

          [obj sortUsingComparator:&__block_literal_global_268];
          v150 = [EKRecurrenceRule alloc];
          frequency2 = [v12 frequency];
          interval2 = [v12 interval];
          recurrenceEnd2 = [v12 recurrenceEnd];
          v51 = [(EKRecurrenceRule *)v150 initRecurrenceWithFrequency:frequency2 interval:interval2 daysOfTheWeek:obj daysOfTheMonth:0 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:recurrenceEnd2];

          [(EKEvent *)self setRecurrenceRule:v51];
          v19 = 1;
LABEL_87:

          goto LABEL_5;
        }

        v19 = 1;
        goto LABEL_13;
      }

LABEL_12:
      v19 = 0;
      goto LABEL_13;
    }

    if ([v12 frequency] == 2)
    {
      setPositions = [v12 daysOfTheWeek];
      weeksOfTheYear = [v12 daysOfTheMonth];
      setPositions2 = [v12 setPositions];
      if ([setPositions2 count] == 1 && !-[EKRecurrenceRule count](setPositions, "count") || -[EKRecurrenceDayOfWeek count](weeksOfTheYear, "count") && objc_msgSend(setPositions2, "count"))
      {
        goto LABEL_100;
      }

      v146 = setPositions2;
      monthsOfTheYear2 = [v12 monthsOfTheYear];
      v28 = [monthsOfTheYear2 count];

      if (!v28)
      {
        if ([(EKRecurrenceDayOfWeek *)weeksOfTheYear count]== 1)
        {
          v29 = [(EKRecurrenceDayOfWeek *)weeksOfTheYear objectAtIndexedSubscript:0];
          integerValue = [v29 integerValue];
          v30 = [v13 day];

          if (integerValue == v30)
          {
LABEL_24:
            v136 = [EKRecurrenceRule alloc];
            frequency3 = [v12 frequency];
            interval3 = [v12 interval];
            recurrenceEnd3 = [v12 recurrenceEnd];
            v33 = [(EKRecurrenceRule *)v136 initRecurrenceWithFrequency:frequency3 interval:interval3 daysOfTheWeek:0 daysOfTheMonth:0 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:recurrenceEnd3];

            selfCopy2 = self;
            v35 = v33;
            [(EKEvent *)selfCopy2 setRecurrenceRule:v33];
            v19 = 1;
LABEL_93:
            setPositions2 = v146;

            goto LABEL_101;
          }

          v19 = 1;
LABEL_30:
          setPositions2 = v146;
LABEL_101:

          goto LABEL_5;
        }

        if ([(EKRecurrenceDayOfWeek *)weeksOfTheYear count]>= 2)
        {
          v52 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "day")}];
          v53 = objc_alloc(MEMORY[0x1E695DF70]);
          v110 = v52;
          v180 = v52;
          v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v180 count:1];
          v116 = [v53 initWithArray:v54];

          v161 = 0u;
          v162 = 0u;
          v159 = 0u;
          v160 = 0u;
          v114 = weeksOfTheYear;
          obja = weeksOfTheYear;
          v139 = [(EKRecurrenceDayOfWeek *)obja countByEnumeratingWithState:&v159 objects:v179 count:16];
          if (v139)
          {
            v131 = *v160;
            while (2)
            {
              for (j = 0; j != v139; ++j)
              {
                if (*v160 != v131)
                {
                  objc_enumerationMutation(obja);
                }

                v56 = *(*(&v159 + 1) + 8 * j);
                integerValue2 = [v56 integerValue];
                if (integerValue2 == [v13 day])
                {
                  v19 = 0;
                  goto LABEL_92;
                }

                integerValue3 = [v56 integerValue];
                if (integerValue3 != [v14 day])
                {
                  [v116 addObject:v56];
                }
              }

              v139 = [(EKRecurrenceDayOfWeek *)obja countByEnumeratingWithState:&v159 objects:v179 count:16];
              if (v139)
              {
                continue;
              }

              break;
            }
          }

          [v116 sortUsingComparator:&__block_literal_global_271];
          v140 = [EKRecurrenceRule alloc];
          frequency4 = [v12 frequency];
          interval4 = [v12 interval];
          recurrenceEnd4 = [v12 recurrenceEnd];
          v61 = [(EKRecurrenceRule *)v140 initRecurrenceWithFrequency:frequency4 interval:interval4 daysOfTheWeek:0 daysOfTheMonth:v116 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:recurrenceEnd4];

          obja = v61;
          [(EKEvent *)self setRecurrenceRule:v61];
          v19 = 1;
LABEL_92:

          v35 = v110;
          weeksOfTheYear = v114;
          goto LABEL_93;
        }

        if ([(EKRecurrenceRule *)setPositions count]== 1)
        {
          v133 = [EKRecurrenceRule alloc];
          objd = [v12 frequency];
          interval5 = [v12 interval];
          v143 = v16[2](v16);
          v178 = v143;
          v19 = 1;
          v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v178 count:1];
          recurrenceEnd5 = [v12 recurrenceEnd];
          v111 = [(EKRecurrenceRule *)v133 initRecurrenceWithFrequency:objd interval:interval5 daysOfTheWeek:v86 daysOfTheMonth:0 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:recurrenceEnd5];

          selfCopy3 = self;
          v35 = v111;
          [(EKEvent *)selfCopy3 setRecurrenceRule:v111];
          goto LABEL_93;
        }

        setPositions2 = v146;
        if (-[EKRecurrenceRule count](setPositions, "count") == 7 && [v146 count] == 1)
        {
          v88 = [v146 objectAtIndexedSubscript:0];
          integerValue4 = [v88 integerValue];

          if (integerValue4 > 0)
          {
            goto LABEL_24;
          }

          v90 = [v146 objectAtIndexedSubscript:0];
          integerValue5 = [v90 integerValue];

          if (integerValue5 < 0)
          {
            startDate2 = [(EKEvent *)self startDate];
            v93 = [v15 daysInMonthContainingDate:startDate2];

            v94 = v93 - [v13 day];
            if (v94 <= 1)
            {
              v134 = [EKRecurrenceRule alloc];
              obje = [v12 frequency];
              interval6 = [v12 interval];
              v144 = [MEMORY[0x1E696AD98] numberWithInteger:~v94];
              v177 = v144;
              v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v177 count:1];
              recurrenceEnd6 = [v12 recurrenceEnd];
              v112 = [(EKRecurrenceRule *)v134 initRecurrenceWithFrequency:obje interval:interval6 daysOfTheWeek:setPositions daysOfTheMonth:0 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:v95 end:recurrenceEnd6];

              selfCopy4 = self;
              v35 = v112;
              [(EKEvent *)selfCopy4 setRecurrenceRule:v112];
              v19 = 1;
              goto LABEL_93;
            }

            goto LABEL_24;
          }

          goto LABEL_29;
        }

LABEL_100:
        v19 = 0;
        goto LABEL_101;
      }

LABEL_29:
      v19 = 0;
      goto LABEL_30;
    }

    if ([v12 frequency] != 3)
    {
      goto LABEL_8;
    }

    setPositions = [v12 daysOfTheWeek];
    weeksOfTheYear = [v12 setPositions];
    setPositions2 = [v12 monthsOfTheYear];
    if ([(EKRecurrenceDayOfWeek *)weeksOfTheYear count]== 1 && ![(EKRecurrenceRule *)setPositions count])
    {
      goto LABEL_100;
    }

    v146 = setPositions2;
    daysOfTheMonth = [v12 daysOfTheMonth];
    v37 = [daysOfTheMonth count];

    if (v37 || [(EKRecurrenceDayOfWeek *)weeksOfTheYear count]&& [(EKRecurrenceRule *)setPositions count]!= 1 && [(EKRecurrenceRule *)setPositions count]!= 7)
    {
      goto LABEL_29;
    }

    month = [v13 month];
    v113 = weeksOfTheYear;
    if (month == [v14 month])
    {
      v129 = v146;
    }

    else
    {
      v62 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "month")}];
      v63 = objc_alloc(MEMORY[0x1E695DF70]);
      v117 = v62;
      v176 = v62;
      v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v176 count:1];
      v129 = [v63 initWithArray:v64];

      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      objb = v146;
      v151 = [objb countByEnumeratingWithState:&v155 objects:v175 count:16];
      if (v151)
      {
        v141 = *v156;
        while (2)
        {
          for (k = 0; k != v151; ++k)
          {
            if (*v156 != v141)
            {
              objc_enumerationMutation(objb);
            }

            v66 = *(*(&v155 + 1) + 8 * k);
            integerValue6 = [v66 integerValue];
            if (integerValue6 == [v13 month])
            {
              v84 = objb;

              v19 = 0;
              v85 = v117;
              goto LABEL_109;
            }

            integerValue7 = [v66 integerValue];
            if (integerValue7 != [v14 month])
            {
              [v129 addObject:v66];
            }
          }

          v151 = [objb countByEnumeratingWithState:&v155 objects:v175 count:16];
          if (v151)
          {
            continue;
          }

          break;
        }
      }

      [v129 sortUsingComparator:&__block_literal_global_273];
      weeksOfTheYear = v113;
    }

    if ([(EKRecurrenceRule *)setPositions count]== 7 && [(EKRecurrenceDayOfWeek *)weeksOfTheYear count]== 1)
    {
      v69 = [(EKRecurrenceDayOfWeek *)weeksOfTheYear objectAtIndexedSubscript:0];
      integerValue8 = [v69 integerValue];

      if (integerValue8 > 0)
      {
LABEL_79:
        v71 = [EKRecurrenceRule alloc];
        frequency5 = [v12 frequency];
        interval7 = [v12 interval];
        recurrenceEnd7 = [v12 recurrenceEnd];
        v108 = recurrenceEnd7;
        v74 = v71;
        v75 = frequency5;
        v76 = interval7;
        v77 = 0;
LABEL_108:
        v84 = v129;
        v85 = [(EKRecurrenceRule *)v74 initRecurrenceWithFrequency:v75 interval:v76 daysOfTheWeek:v77 daysOfTheMonth:0 monthsOfTheYear:v129 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:v108];

        [(EKEvent *)self setRecurrenceRule:v85];
        v19 = 1;
        goto LABEL_109;
      }

      weeksOfTheYear = v113;
      v99 = [(EKRecurrenceDayOfWeek *)v113 objectAtIndexedSubscript:0];
      integerValue9 = [v99 integerValue];

      if (integerValue9 < 0)
      {
        startDate3 = [(EKEvent *)self startDate];
        v102 = [v15 daysInMonthContainingDate:startDate3];

        v103 = v102 - [v13 day];
        if (v103 > 1)
        {
          goto LABEL_79;
        }

        v104 = [EKRecurrenceRule alloc];
        frequency6 = [v12 frequency];
        objf = [v12 interval];
        v153 = [MEMORY[0x1E696AD98] numberWithInteger:~v103];
        v174 = v153;
        v118 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v174 count:1];
        recurrenceEnd8 = [v12 recurrenceEnd];
        v107 = v118;
        v109 = recurrenceEnd8;
        v80 = v104;
        v81 = frequency6;
        v82 = objf;
        v83 = setPositions;
LABEL_82:
        v84 = v129;
        v85 = [(EKRecurrenceRule *)v80 initRecurrenceWithFrequency:v81 interval:v82 daysOfTheWeek:v83 daysOfTheMonth:0 monthsOfTheYear:v129 weeksOfTheYear:0 daysOfTheYear:0 setPositions:v107 end:v109];

        [(EKEvent *)self setRecurrenceRule:v85];
        v19 = 1;
LABEL_109:

        setPositions2 = v84;
        weeksOfTheYear = v113;
        goto LABEL_101;
      }
    }

    else
    {
      if ([(EKRecurrenceRule *)setPositions count]== 1)
      {
        objc = [EKRecurrenceRule alloc];
        frequency7 = [v12 frequency];
        interval8 = [v12 interval];
        v153 = v16[2](v16);
        v173 = v153;
        v118 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v173 count:1];
        recurrenceEnd8 = [v12 recurrenceEnd];
        v107 = 0;
        v109 = recurrenceEnd8;
        v80 = objc;
        v81 = frequency7;
        v82 = interval8;
        v83 = v118;
        goto LABEL_82;
      }

      if (![(EKRecurrenceRule *)setPositions count])
      {
        month2 = [v13 month];
        if (month2 == [v14 month])
        {
          v19 = 1;
          setPositions2 = v129;
          goto LABEL_101;
        }

        v105 = [EKRecurrenceRule alloc];
        frequency8 = [v12 frequency];
        interval9 = [v12 interval];
        recurrenceEnd7 = [v12 recurrenceEnd];
        v108 = recurrenceEnd7;
        v74 = v105;
        v75 = frequency8;
        v76 = interval9;
        v77 = setPositions;
        goto LABEL_108;
      }
    }

    goto LABEL_4;
  }

  v19 = 1;
LABEL_15:
  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

EKRecurrenceDayOfWeek *__48__EKEvent__attemptToUpdateComplexRecurrenceRule__block_invoke(id *a1)
{
  v2 = [a1[4] daysOfTheWeek];
  v3 = [v2 firstObject];

  v4 = [a1[5] weekOfMonth];
  if (v4 == [a1[6] weekOfMonth])
  {
    v5 = [EKRecurrenceDayOfWeek alloc];
    v6 = [a1[5] weekday];
    v7 = [v3 weekNumber];
    v8 = v5;
    v9 = v6;
LABEL_5:
    v12 = [(EKRecurrenceDayOfWeek *)v8 initWithDayOfTheWeek:v9 weekNumber:v7];
    goto LABEL_6;
  }

  if ([v3 weekNumber] >= 1)
  {
    v10 = [EKRecurrenceDayOfWeek alloc];
    v11 = [a1[5] weekday];
    v7 = [a1[5] weekdayOrdinal];
    v8 = v10;
    v9 = v11;
    goto LABEL_5;
  }

  v14 = [a1[5] month];
  v15 = [a1[7] startDate];
  v16 = a1[8];
  v17 = [a1[7] startDate];
  v18 = [v16 components:5656 fromDate:v17];

  if ([v18 month] != v14)
  {
    v19 = 0;
LABEL_17:
    v27 = [EKRecurrenceDayOfWeek alloc];
    v26 = [a1[5] weekday];
    v24 = ~v19;
    v25 = v27;
    goto LABEL_18;
  }

  v19 = 0;
  do
  {
    v20 = v15;
    v21 = v18;
    v15 = [a1[8] dateByAddingUnit:4096 value:1 toDate:v15 options:0];

    v18 = [a1[8] components:5656 fromDate:v15];

    if ([v18 month] == v14)
    {
      ++v19;
    }
  }

  while ([v18 month] == v14);
  if (v19 <= 1)
  {
    goto LABEL_17;
  }

  v22 = [EKRecurrenceDayOfWeek alloc];
  v23 = [a1[5] weekday];
  v24 = [a1[5] weekdayOrdinal];
  v25 = v22;
  v26 = v23;
LABEL_18:
  v12 = [(EKRecurrenceDayOfWeek *)v25 initWithDayOfTheWeek:v26 weekNumber:v24];

LABEL_6:

  return v12;
}

uint64_t __48__EKEvent__attemptToUpdateComplexRecurrenceRule__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "dayOfTheWeek")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 dayOfTheWeek];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)_filterExceptionDatesAndDetachments
{
  v87 = *MEMORY[0x1E69E9840];
  changeSet = [(EKObject *)self changeSet];
  v4 = [changeSet hasUnsavedMultiValueRemovalForKey:*MEMORY[0x1E6992648]];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
    v7 = [recurrenceRules countByEnumeratingWithState:&v79 objects:v86 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v80;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v80 != v9)
          {
            objc_enumerationMutation(recurrenceRules);
          }

          if ([*(*(&v79 + 1) + 8 * i) dirtyStateMayAffectExceptionDates])
          {
            v5 = 1;
            goto LABEL_13;
          }
        }

        v8 = [recurrenceRules countByEnumeratingWithState:&v79 objects:v86 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_13:
  }

  exceptionDates = [(EKCalendarItem *)self exceptionDates];
  detachedItems = [(EKCalendarItem *)self detachedItems];
  v13 = detachedItems;
  if (!exceptionDates)
  {
    v14 = 0;
    if (detachedItems)
    {
      goto LABEL_16;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v14 = [exceptionDates count] != 0;
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_16:
  v15 = [v13 count] != 0;
LABEL_19:
  if ((v5 & v14 & 1) != 0 || v15)
  {
    startDateRaw = [(EKEvent *)self startDateRaw];
    if (v5)
    {
      allObjects = [exceptionDates allObjects];
      exceptionDatesAdjustedForFloatingEvents = [(EKCalendarItem *)self exceptionDatesAdjustedForFloatingEvents];
      allObjects2 = [exceptionDatesAdjustedForFloatingEvents allObjects];
    }

    else
    {
      allObjects2 = MEMORY[0x1E695E0F0];
      allObjects = MEMORY[0x1E695E0F0];
    }

    v63 = allObjects2;
    v19 = [allObjects2 valueForKeyPath:@"@max.self"];
    v20 = v19;
    v65 = startDateRaw;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = startDateRaw;
    }

    v66 = v21;

    v22 = MEMORY[0x1E695DF90];
    detachedItems2 = [(EKCalendarItem *)self detachedItems];
    v24 = [v22 dictionaryWithCapacity:{objc_msgSend(detachedItems2, "count")}];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    detachedItems3 = [(EKCalendarItem *)self detachedItems];
    v26 = [detachedItems3 countByEnumeratingWithState:&v75 objects:v85 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v76;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v76 != v28)
          {
            objc_enumerationMutation(detachedItems3);
          }

          v30 = *(*(&v75 + 1) + 8 * j);
          originalStartDate = [v30 originalStartDate];
          [v24 setObject:v30 forKeyedSubscript:originalStartDate];
        }

        v27 = [detachedItems3 countByEnumeratingWithState:&v75 objects:v85 count:16];
      }

      while (v27);
    }

    allKeys = [v24 allKeys];
    v33 = [allKeys valueForKeyPath:@"@max.self"];
    v34 = v33;
    v35 = v65;
    if (v33)
    {
      v36 = v33;
    }

    else
    {
      v36 = v65;
    }

    v37 = v36;

    v38 = [v66 laterDate:v37];
    v39 = [v38 dateByAddingTimeInterval:1.0];

    timeZone = [(EKCalendarItem *)self timeZone];
    v41 = objc_alloc_init(EKRecurrenceGenerator);
    LOBYTE(v58) = 1;
    v42 = [(EKRecurrenceGenerator *)v41 copyOccurrenceDatesWithEKEvent:self startDate:v65 endDate:v39 timeZone:timeZone exceptionDates:0 limit:0 adjustDatesForAllDayEvents:v58];
    if ([v42 count])
    {
      v59 = v41;
      v60 = timeZone;
      v61 = v39;
      v62 = v37;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v43 = allObjects;
      v44 = [v43 countByEnumeratingWithState:&v71 objects:v84 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v72;
        do
        {
          for (k = 0; k != v45; ++k)
          {
            if (*v72 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v71 + 1) + 8 * k);
            if (([v42 containsObject:v48] & 1) == 0)
            {
              [(EKCalendarItem *)self _removeExceptionDate:v48];
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v71 objects:v84 count:16];
        }

        while (v45);
      }

      allKeys2 = [v24 allKeys];
      v50 = [(EKEvent *)self _leftoversInDates:allKeys2 withGeneratedDates:v42];

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v51 = v50;
      v52 = [v51 countByEnumeratingWithState:&v67 objects:v83 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v68;
        do
        {
          for (m = 0; m != v53; ++m)
          {
            if (*v68 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = [v24 objectForKeyedSubscript:*(*(&v67 + 1) + 8 * m)];
            [(EKCalendarItem *)self _removeDetachedItem:v56];
          }

          v53 = [v51 countByEnumeratingWithState:&v67 objects:v83 count:16];
        }

        while (v53);
      }

      v35 = v65;
      v39 = v61;
      v37 = v62;
      v41 = v59;
      timeZone = v60;
    }

    else
    {
      [(EKCalendarItem *)self setExceptionDates:0];
      [(EKCalendarItem *)self setDetachedItems:0];
    }
  }

  v57 = *MEMORY[0x1E69E9840];
}

- (id)_leftoversInDates:(id)dates withGeneratedDates:(id)generatedDates
{
  v5 = MEMORY[0x1E695DFD8];
  datesCopy = dates;
  v7 = [v5 setWithArray:generatedDates];
  v8 = [MEMORY[0x1E695DFA8] setWithArray:datesCopy];

  v9 = [v8 mutableCopy];
  [v9 intersectSet:v7];
  [v8 minusSet:v9];

  return v8;
}

- (void)_removeInvalidAlarmsDuringSave
{
  v80 = *MEMORY[0x1E69E9840];
  if (![(EKObject *)self isPropertyUnavailable:*MEMORY[0x1E6992558]])
  {
    alarms = [(EKCalendarItem *)self alarms];
    if ([alarms count])
    {
      constraints = [(EKEvent *)self constraints];
      supportsAlarmTriggerDates = [constraints supportsAlarmTriggerDates];

      if ((supportsAlarmTriggerDates & 1) == 0)
      {
        alarms2 = [(EKCalendarItem *)self alarms];
        v7 = [alarms2 copy];

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v72 objects:v79 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v73;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v73 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v72 + 1) + 8 * i);
              if ([v13 isAbsolute])
              {
                [(EKCalendarItem *)self removeAlarm:v13];
                constraints2 = [(EKEvent *)self constraints];
                supportsAlarmTriggerIntervals = [constraints2 supportsAlarmTriggerIntervals];

                if (supportsAlarmTriggerIntervals)
                {
                  absoluteDate = [v13 absoluteDate];
                  startDate = [(EKEvent *)self startDate];
                  [absoluteDate timeIntervalSinceDate:startDate];
                  v19 = v18;

                  v20 = [EKAlarm alarmWithRelativeOffset:v19];
                  [(EKCalendarItem *)self addAlarm:v20];
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v72 objects:v79 count:16];
          }

          while (v10);
        }
      }

      constraints3 = [(EKEvent *)self constraints];
      supportsAlarmTriggerIntervals2 = [constraints3 supportsAlarmTriggerIntervals];

      if ((supportsAlarmTriggerIntervals2 & 1) == 0)
      {
        alarms3 = [(EKCalendarItem *)self alarms];
        v24 = [alarms3 copy];

        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v68 objects:v78 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v69;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v69 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v68 + 1) + 8 * j);
              if (([v30 isAbsolute] & 1) == 0)
              {
                [(EKCalendarItem *)self removeAlarm:v30];
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v68 objects:v78 count:16];
          }

          while (v27);
        }
      }

      constraints4 = [(EKEvent *)self constraints];
      supportsAlarmsTriggeringAfterStartDate = [constraints4 supportsAlarmsTriggeringAfterStartDate];

      if ((supportsAlarmsTriggeringAfterStartDate & 1) == 0)
      {
        alarms4 = [(EKCalendarItem *)self alarms];
        v34 = [alarms4 copy];

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v35 = v34;
        v36 = [v35 countByEnumeratingWithState:&v64 objects:v77 count:16];
        if (!v36)
        {
          goto LABEL_39;
        }

        v37 = v36;
        v38 = *v65;
        while (1)
        {
          for (k = 0; k != v37; ++k)
          {
            if (*v65 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v64 + 1) + 8 * k);
            if (![v40 isAbsolute])
            {
              [v40 relativeOffset];
              if (v44 <= 0.0)
              {
                continue;
              }

LABEL_36:
              [(EKCalendarItem *)self removeAlarm:v40];
              continue;
            }

            absoluteDate2 = [v40 absoluteDate];
            startDate2 = [(EKEvent *)self startDate];
            v43 = [absoluteDate2 compare:startDate2];

            if (v43 == 1)
            {
              goto LABEL_36;
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v64 objects:v77 count:16];
          if (!v37)
          {
LABEL_39:

            break;
          }
        }
      }

      constraints5 = [(EKEvent *)self constraints];
      LODWORD(v46) = [constraints5 maxAlarmsAllowed];

      sortedAlarms = [(EKCalendarItem *)self sortedAlarms];
      v48 = [sortedAlarms count];
      if ((v46 & 0x80000000) == 0)
      {
        v49 = v48;
        v46 = v46;
        if (v48 > v46)
        {
          do
          {
            v50 = [sortedAlarms objectAtIndexedSubscript:v46];
            [(EKCalendarItem *)self removeAlarm:v50];

            ++v46;
          }

          while (v49 != v46);
        }
      }
    }

    constraints6 = [(EKEvent *)self constraints];
    supportsDefaultAlarms = [constraints6 supportsDefaultAlarms];

    if ((supportsDefaultAlarms & 1) == 0)
    {
      allAlarms = [(EKCalendarItem *)self allAlarms];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v54 = [allAlarms countByEnumeratingWithState:&v60 objects:v76 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v61;
        do
        {
          for (m = 0; m != v55; ++m)
          {
            if (*v61 != v56)
            {
              objc_enumerationMutation(allAlarms);
            }

            v58 = *(*(&v60 + 1) + 8 * m);
            if ([v58 isDefaultAlarm])
            {
              [(EKCalendarItem *)self removeAlarm:v58];
            }
          }

          v55 = [allAlarms countByEnumeratingWithState:&v60 objects:v76 count:16];
        }

        while (v55);
      }
    }
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (void)_adjustRecurrenceRulesAfterMovingOrCopyingFromCalendar:(id)calendar toCalendar:(id)toCalendar notes:(id)notes
{
  toCalendarCopy = toCalendar;
  notesCopy = notes;
  if (![(EKCalendarItem *)self hasRecurrenceRules])
  {
    goto LABEL_29;
  }

  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  constraints = [toCalendarCopy constraints];
  maxRecurrencesAllowed = [constraints maxRecurrencesAllowed];

  v11 = [recurrenceRules count];
  if ((maxRecurrencesAllowed & 0x80000000) == 0)
  {
    v12 = v11 - maxRecurrencesAllowed;
    if (v11 > maxRecurrencesAllowed)
    {
      do
      {
        recurrenceRules2 = [(EKCalendarItem *)self recurrenceRules];
        firstObject = [recurrenceRules2 firstObject];

        [(EKCalendarItem *)self removeRecurrenceRule:firstObject];
        --v12;
      }

      while (v12);
    }
  }

  firstObject2 = [recurrenceRules firstObject];
  if ([firstObject2 frequency] != 2)
  {
LABEL_11:
    if ([firstObject2 frequency] == 3)
    {
      monthsOfTheYear = [firstObject2 monthsOfTheYear];
      if ([monthsOfTheYear count] <= 1)
      {
      }

      else
      {
        constraints2 = [toCalendarCopy constraints];
        prohibitsMultipleMonthsInYearlyRecurrence = [constraints2 prohibitsMultipleMonthsInYearlyRecurrence];

        if (prohibitsMultipleMonthsInYearlyRecurrence)
        {
          v19 = [firstObject2 copy];
          [v19 setMonthsOfTheYear:0];
          if (!v19)
          {
            goto LABEL_24;
          }

LABEL_21:
          if (notesCopy)
          {
            v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
            v26 = [v25 localizedStringForKey:@"repeat" value:&stru_1F1B49D68 table:0];

            startDate = [(EKEvent *)self startDate];
            v28 = [firstObject2 humanReadableDescriptionWithStartDate:startDate];
            [notesCopy appendFormat:@"\n%@:%@", v26, v28];
          }

          [(EKCalendarItem *)self removeRecurrenceRule:firstObject2];
          [(EKCalendarItem *)self addRecurrenceRule:v19];

          goto LABEL_24;
        }
      }
    }

    if ([firstObject2 frequency] != 3)
    {
      goto LABEL_24;
    }

    if ([firstObject2 interval] < 2)
    {
      goto LABEL_24;
    }

    constraints3 = [toCalendarCopy constraints];
    prohibitsYearlyRecurrenceInterval = [constraints3 prohibitsYearlyRecurrenceInterval];

    if (!prohibitsYearlyRecurrenceInterval)
    {
      goto LABEL_24;
    }

    v19 = [firstObject2 copy];
    [v19 setInterval:1];
    if (!v19)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  daysOfTheMonth = [firstObject2 daysOfTheMonth];
  if ([daysOfTheMonth count] <= 1)
  {

    goto LABEL_11;
  }

  constraints4 = [toCalendarCopy constraints];
  prohibitsMultipleDaysInMonthlyRecurrence = [constraints4 prohibitsMultipleDaysInMonthlyRecurrence];

  if (!prohibitsMultipleDaysInMonthlyRecurrence)
  {
    goto LABEL_11;
  }

  v19 = [firstObject2 copy];
  [v19 setDaysOfTheMonth:0];
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_24:
  constraints5 = [toCalendarCopy constraints];
  requiresOccurrencesConformToRecurrenceRule = [constraints5 requiresOccurrencesConformToRecurrenceRule];

  if (requiresOccurrencesConformToRecurrenceRule)
  {
    suggestedStartDateForCurrentRecurrenceRule = [(EKEvent *)self suggestedStartDateForCurrentRecurrenceRule];
    startDate2 = [(EKEvent *)self startDate];
    v33 = [startDate2 isEqualToDate:suggestedStartDateForCurrentRecurrenceRule];

    if ((v33 & 1) == 0)
    {
      endDateUnadjustedForLegacyClients = [(EKEvent *)self endDateUnadjustedForLegacyClients];
      startDate3 = [(EKEvent *)self startDate];
      [endDateUnadjustedForLegacyClients timeIntervalSinceDate:startDate3];
      v37 = v36;

      [(EKEvent *)self setStartDate:suggestedStartDateForCurrentRecurrenceRule];
      v38 = MEMORY[0x1E695DF00];
      startDate4 = [(EKEvent *)self startDate];
      v40 = [v38 dateWithTimeInterval:startDate4 sinceDate:v37];
      [(EKEvent *)self setEndDateUnadjustedForLegacyClients:v40];
    }
  }

LABEL_29:
}

- (void)_adjustAfterMovingOrCopyingFromOldCalendar:(id)calendar toNewCalendar:(id)newCalendar cachedConstraintsForOldCalendar:(id)oldCalendar savingItem:(id)item
{
  itemCopy = item;
  oldCalendarCopy = oldCalendar;
  newCalendarCopy = newCalendar;
  calendarCopy = calendar;
  [(EKEvent *)self _adjustAttendeesAfterMovingOrCopyingFromCalendar:calendarCopy toCalendar:newCalendarCopy];
  [(EKEvent *)self _adjustPrivacyAfterMovingOrCopyingFromCalendar:calendarCopy toCalendar:newCalendarCopy cachedConstraintsForOldCalendar:oldCalendarCopy savingItem:itemCopy];
  [(EKEvent *)self _adjustAvailabilityAfterMovingOrCopyingFromCalendar:calendarCopy toCalendar:newCalendarCopy];
  [(EKEvent *)self _adjustScheduleAgentAfterMovingOrCopyingFromCalendar:calendarCopy toCalendar:newCalendarCopy cachedConstraintsForOldCalendar:oldCalendarCopy];
  [(EKEvent *)self _adjustAttachmentsAfterMovingOrCopyingFromCalendar:calendarCopy toCalendar:newCalendarCopy cachedConstraintsForOldCalendar:oldCalendarCopy savingItem:itemCopy];

  v21 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [(EKEvent *)self _adjustURLAfterMovingOrCopyingToCalendar:newCalendarCopy notes:v21];
  [(EKEvent *)self _adjustAlarmsAfterMovingOrCopyingFromCalendar:calendarCopy toCalendar:newCalendarCopy];
  [(EKEvent *)self _adjustRecurrenceRulesAfterMovingOrCopyingFromCalendar:calendarCopy toCalendar:newCalendarCopy notes:v21];
  [(EKEvent *)self _adjustTimeZoneAfterMovingOrCopyingToCalendar:newCalendarCopy notes:v21];
  [(EKEvent *)self _adjustExternalFieldsAfterMovingOrCopyingFromCalendar:calendarCopy toCalendar:newCalendarCopy cachedConstraintsForOldCalendar:oldCalendarCopy];

  if ([v21 length])
  {
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"The following information couldn’t be added to Exchange:" value:&stru_1F1B49D68 table:0];

    notes = [(EKCalendarItem *)self notes];
    v17 = [notes length];
    v18 = MEMORY[0x1E696AEC0];
    if (v17)
    {
      notes2 = [(EKCalendarItem *)self notes];
      v20 = [v18 stringWithFormat:@"%@\n\n%@%@", notes2, v15, v21];
      [(EKEvent *)self setNotes:v20];
    }

    else
    {
      notes2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v15, v21];
      [(EKEvent *)self setNotes:notes2];
    }
  }

  [(EKEvent *)self _invalidateRecurrenceIdentifier];
}

- (void)_adjustExternalFieldsAfterMovingOrCopyingFromCalendar:(id)calendar toCalendar:(id)toCalendar cachedConstraintsForOldCalendar:(id)oldCalendar
{
  calendarCopy = calendar;
  toCalendarCopy = toCalendar;
  oldCalendarCopy = oldCalendar;
  v10 = oldCalendarCopy;
  if (oldCalendarCopy)
  {
    constraints = oldCalendarCopy;
  }

  else
  {
    constraints = [calendarCopy constraints];
  }

  v12 = constraints;
  externalDataFormat = [constraints externalDataFormat];
  constraints2 = [toCalendarCopy constraints];
  externalDataFormat2 = [constraints2 externalDataFormat];

  if (externalDataFormat != externalDataFormat2)
  {
    [(EKCalendarItem *)self setExternalData:0];
    eventStore = [(EKObject *)self eventStore];
    eventAccessLevel = [eventStore eventAccessLevel];

    if (eventAccessLevel == 1)
    {
      changeSet = [(EKObject *)self changeSet];
      [changeSet forceChangeValue:0 forKey:*MEMORY[0x1E69925B8]];
    }
  }
}

- (void)_adjustAttendeesAfterMovingOrCopyingFromCalendar:(id)calendar toCalendar:(id)toCalendar
{
  v24 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  toCalendarCopy = toCalendar;
  if ([(EKEvent *)self _requirementsToMoveToCalendarHelperRemoveAttendeesRequiredToMoveEventFromCalendar:calendarCopy toCalendar:toCalendarCopy])
  {
    [(EKCalendarItem *)self setAttendees:0];
    [(EKCalendarItem *)self setOrganizer:0];
  }

  else
  {
    source = [calendarCopy source];
    source2 = [toCalendarCopy source];
    v10 = [source isEqual:source2];

    if (v10)
    {
      organizer = 0;
    }

    else
    {
      organizer = [(EKCalendarItem *)self organizer];
      [(EKCalendarItem *)self setOrganizer:0];
      [(EKCalendarItem *)self setSelfAttendee:0];
      [(EKCalendarItem *)self addOrganizerAndSelfAttendeeForNewInvitation];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    attendees = [(EKCalendarItem *)self attendees];
    v13 = [attendees countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(attendees);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          if (([organizer isEqualToParticipant:v17] & 1) != 0 || !-[EKEvent _isValidAttendee:forCalendar:selfAttendeeIsValid:](self, "_isValidAttendee:forCalendar:selfAttendeeIsValid:", v17, toCalendarCopy, 1))
          {
            [(EKCalendarItem *)self removeAttendee:v17];
          }
        }

        v14 = [attendees countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_adjustPrivacyAfterMovingOrCopyingFromCalendar:(id)calendar toCalendar:(id)toCalendar cachedConstraintsForOldCalendar:(id)oldCalendar savingItem:(id)item
{
  calendarCopy = calendar;
  toCalendarCopy = toCalendar;
  oldCalendarCopy = oldCalendar;
  itemCopy = item;
  if ([(EKEvent *)self isPrivacySet]&& ![(EKEvent *)self allowsPrivacyLevelModifications])
  {
    [(EKEvent *)self setPrivacyLevelWithoutVerifyingPrivacyModificationsAllowed:0];
  }

  else
  {
    if (oldCalendarCopy)
    {
      constraints = oldCalendarCopy;
    }

    else
    {
      constraints = [calendarCopy constraints];
    }

    v15 = constraints;
    constraints2 = [toCalendarCopy constraints];
    requiresSamePrivacyLevelAcrossRecurrenceSeries = [constraints2 requiresSamePrivacyLevelAcrossRecurrenceSeries];

    requiresSamePrivacyLevelAcrossRecurrenceSeries2 = [v15 requiresSamePrivacyLevelAcrossRecurrenceSeries];
    constraints3 = [toCalendarCopy constraints];
    v20 = +[EKSource _calEventPrivacyLevelToEKPrivacyLevel:](EKSource, "_calEventPrivacyLevelToEKPrivacyLevel:", [constraints3 strictestEventPrivateValue]);

    if (v20 != +[EKSource _calEventPrivacyLevelToEKPrivacyLevel:](EKSource, "_calEventPrivacyLevelToEKPrivacyLevel:", [v15 strictestEventPrivateValue]) || (requiresSamePrivacyLevelAcrossRecurrenceSeries & (requiresSamePrivacyLevelAcrossRecurrenceSeries2 ^ 1)) != 0)
    {
      v21 = 0;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      if (requiresSamePrivacyLevelAcrossRecurrenceSeries)
      {
        v22 = [(EKEvent *)self privacyLevel]!= 0;
        *(v29 + 24) = v22;
        detachedItems = [(EKCalendarItem *)self detachedItems];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __112__EKEvent__adjustPrivacyAfterMovingOrCopyingFromCalendar_toCalendar_cachedConstraintsForOldCalendar_savingItem___block_invoke;
        v27[3] = &unk_1E77FF178;
        v27[4] = &v28;
        [detachedItems enumerateObjectsUsingBlock:v27];

        v21 = *(v29 + 24);
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __112__EKEvent__adjustPrivacyAfterMovingOrCopyingFromCalendar_toCalendar_cachedConstraintsForOldCalendar_savingItem___block_invoke_2;
      v25[3] = &__block_descriptor_41_e24_v16__0__EKCalendarItem_8l;
      v26 = v21 & 1;
      v25[4] = v20;
      [(EKCalendarItem *)self _recursivelyPerformBlockOnSelfAndDetachedItems:v25 forSavingItem:itemCopy];
      _Block_object_dispose(&v28, 8);
    }

    calendarCopy = v24;
  }
}

uint64_t __112__EKEvent__adjustPrivacyAfterMovingOrCopyingFromCalendar_toCalendar_cachedConstraintsForOldCalendar_savingItem___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 privacyLevel];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __112__EKEvent__adjustPrivacyAfterMovingOrCopyingFromCalendar_toCalendar_cachedConstraintsForOldCalendar_savingItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 40) & 1) != 0 || [v3 privacyLevel])
  {
    [v3 setPrivacyLevel:*(a1 + 32)];
  }
}

- (void)_adjustAvailabilityAfterMovingOrCopyingFromCalendar:(id)calendar toCalendar:(id)toCalendar
{
  calendarCopy = calendar;
  toCalendarCopy = toCalendar;
  eventStore = [(EKObject *)self eventStore];
  eventAccessLevel = [eventStore eventAccessLevel];

  if (eventAccessLevel != 1)
  {
    source = [calendarCopy source];
    source2 = [toCalendarCopy source];
    sourceType = [source sourceType];
    sourceType2 = [source2 sourceType];
    if (sourceType == 5 && sourceType2 != 5)
    {
      suggestionInfo = [(EKEvent *)self suggestionInfo];

      if (suggestionInfo)
      {
        v22 = 0;
        v23 = &v22;
        v24 = 0x2020000000;
        v15 = getkSuggestionsEKEventAvailabilityStateSymbolLoc_ptr;
        v25 = getkSuggestionsEKEventAvailabilityStateSymbolLoc_ptr;
        if (!getkSuggestionsEKEventAvailabilityStateSymbolLoc_ptr)
        {
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __getkSuggestionsEKEventAvailabilityStateSymbolLoc_block_invoke;
          v21[3] = &unk_1E77FCFD8;
          v21[4] = &v22;
          __getkSuggestionsEKEventAvailabilityStateSymbolLoc_block_invoke(v21);
          v15 = v23[3];
        }

        _Block_object_dispose(&v22, 8);
        if (!v15)
        {
          [EKEvent _adjustAvailabilityAfterMovingOrCopyingFromCalendar:toCalendar:];
        }

        v16 = [(EKCalendarItem *)self localCustomObjectForKey:*v15];
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            integerValue = [v16 integerValue];
            v18 = objc_opt_class();
            calendar = [(EKCalendarItem *)self calendar];
            v20 = [v18 _coercedEventAvailabilityForDesiredAvailability:integerValue supportedAvailabilities:{objc_msgSend(calendar, "supportedEventAvailabilities")}];

            [(EKEvent *)self setAvailability:v20];
          }
        }
      }
    }
  }
}

- (void)_adjustAttachmentsAfterMovingOrCopyingFromCalendar:(id)calendar toCalendar:(id)toCalendar cachedConstraintsForOldCalendar:(id)oldCalendar savingItem:(id)item
{
  calendarCopy = calendar;
  toCalendarCopy = toCalendar;
  oldCalendarCopy = oldCalendar;
  itemCopy = item;
  source = [calendarCopy source];
  source2 = [toCalendarCopy source];
  v16 = [source isEqual:source2];

  if ((v16 & 1) == 0)
  {
    if (oldCalendarCopy)
    {
      constraints = oldCalendarCopy;
    }

    else
    {
      constraints = [calendarCopy constraints];
    }

    v18 = constraints;
    constraints2 = [toCalendarCopy constraints];
    if ([constraints2 supportsAttachments])
    {
      constraints3 = [toCalendarCopy constraints];
      if (![constraints3 requiresOpeningAttachmentAsLink])
      {
        requiresOpeningAttachmentAsLink = [v18 requiresOpeningAttachmentAsLink];

        if ((requiresOpeningAttachmentAsLink & 1) == 0)
        {
          if (self == itemCopy)
          {
            selfCopy = [(EKCalendarItem *)self originalItem];
            if (!selfCopy)
            {
              selfCopy = self;
            }

            constraints4 = [toCalendarCopy constraints];
            requiresSeparateFilesForAllAttachments = [constraints4 requiresSeparateFilesForAllAttachments];

            if (requiresSeparateFilesForAllAttachments)
            {
              v25 = 0;
            }

            else
            {
              v25 = objc_opt_new();
            }

            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __116__EKEvent__adjustAttachmentsAfterMovingOrCopyingFromCalendar_toCalendar_cachedConstraintsForOldCalendar_savingItem___block_invoke;
            v27[3] = &unk_1E77FF1C0;
            v28 = v25;
            selfCopy2 = self;
            v26 = v25;
            [(EKCalendarItem *)selfCopy _recursivelyPerformBlockOnSelfAndDetachedItems:v27 forSavingItem:self];
          }

          goto LABEL_10;
        }

LABEL_9:
        [(EKCalendarItem *)self setAttachments:0];
LABEL_10:

        goto LABEL_11;
      }
    }

    goto LABEL_9;
  }

LABEL_11:
}

void __116__EKEvent__adjustAttachmentsAfterMovingOrCopyingFromCalendar_toCalendar_cachedConstraintsForOldCalendar_savingItem___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [a2 attachments];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [v9 UUID];
        v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
        if (v11)
        {
          v12 = v11;
          [v9 assignIdentity:v11];
          [v9 invalidateLocalFilePropertiesForNewCopiedFile];
LABEL_10:
          [v9 setExternalID:0];
          [v9 setURL:0];

          goto LABEL_11;
        }

        [v9 assignNewIdentity];
        if ([v9 copyLocalFileToNewSource])
        {
          v12 = [v9 UUID];
          [*(a1 + 32) setObject:v12 forKeyedSubscript:v10];
          goto LABEL_10;
        }

        v13 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          __116__EKEvent__adjustAttachmentsAfterMovingOrCopyingFromCalendar_toCalendar_cachedConstraintsForOldCalendar_savingItem___block_invoke_cold_1(&v16, v17, v13);
        }

        [*(a1 + 40) removeAttachment:v9];
LABEL_11:

        ++v8;
      }

      while (v6 != v8);
      v14 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v6 = v14;
    }

    while (v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_adjustURLAfterMovingOrCopyingToCalendar:(id)calendar notes:(id)notes
{
  calendarCopy = calendar;
  notesCopy = notes;
  v7 = [(EKEvent *)self URL];
  if (v7)
  {
    v8 = v7;
    constraints = [calendarCopy constraints];
    supportsURLField = [constraints supportsURLField];

    if ((supportsURLField & 1) == 0)
    {
      if (notesCopy)
      {
        v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"url" value:&stru_1F1B49D68 table:0];

        v13 = MEMORY[0x1E696AEC0];
        v14 = [(EKEvent *)self URL];
        absoluteString = [v14 absoluteString];
        v16 = [v13 stringWithFormat:@"\n%@:%@", v12, absoluteString];

        [notesCopy appendString:v16];
      }

      [(EKEvent *)self setURL:0];
    }
  }
}

- (void)_adjustTimeZoneAfterMovingOrCopyingToCalendar:(id)calendar notes:(id)notes
{
  calendarCopy = calendar;
  notesCopy = notes;
  timeZone = [(EKCalendarItem *)self timeZone];
  if (!timeZone && ![(EKEvent *)self isAllDay])
  {
    constraints = [calendarCopy constraints];
    supportsFloatingTimeZone = [constraints supportsFloatingTimeZone];

    if (supportsFloatingTimeZone)
    {
      goto LABEL_8;
    }

    if (notesCopy)
    {
      v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"time zone" value:&stru_1F1B49D68 table:0];

      v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"Floating" value:&stru_1F1B49D68 table:0];

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@:%@", v11, v13];
      [notesCopy appendString:v14];
    }

    timeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    [(EKEvent *)self setTimeZone:timeZone];
  }

LABEL_8:
}

+ (int64_t)_coercedEventAvailabilityForDesiredAvailability:(int64_t)availability supportedAvailabilities:(unint64_t)availabilities
{
  if (availabilities)
  {
    result = availability;
    if (availability <= 0)
    {
      if (availability == -1)
      {
        return result;
      }

      if (!availability && (availabilities & 1) != 0)
      {
        return 0;
      }
    }

    else if (availability == 1)
    {
      if ((availabilities & 2) != 0)
      {
        return 1;
      }
    }

    else if (availability == 2)
    {
      if ((availabilities & 4) != 0)
      {
        return 2;
      }
    }

    else if (availability == 3 && (availabilities & 8) != 0)
    {
      return 3;
    }
  }

  return -1;
}

- (void)markAsSaved
{
  [(EKEvent *)self _addOrganizerToRecentsIfNeeded];
  [(EKEvent *)self _addNewAttendeesToRecentsIfNeeded];
  v3.receiver = self;
  v3.super_class = EKEvent;
  [(EKObject *)&v3 markAsSaved];
  [(EKEvent *)self _clearOriginalDateFields];
}

- (void)markAsCommitted
{
  v3.receiver = self;
  v3.super_class = EKEvent;
  [(EKObject *)&v3 markAsCommitted];
  [(EKEvent *)self setClearModifiedFlags:0];
  [(EKEvent *)self invalidateRemovedVirtualConferences];
}

- (void)markAsUndeleted
{
  if ([(EKCalendarItem *)self _hadRecurrenceRules]&& ![(EKEvent *)self isDetached])
  {

    [(EKObject *)self _markAsUndeletedCommon];
  }

  else
  {
    uniqueId = [(EKEvent *)self uniqueId];
    calendarItemIdentifier = [(EKCalendarItem *)self calendarItemIdentifier];
    externalID = [(EKCalendarItem *)self externalID];
    v9.receiver = self;
    v9.super_class = EKEvent;
    [(EKObject *)&v9 markAsUndeleted];
    [(EKObject *)self _initChangeSetIfNone];
    changeSet = [(EKObject *)self changeSet];
    [changeSet forceChangeValue:uniqueId forKey:*MEMORY[0x1E6992700]];

    changeSet2 = [(EKObject *)self changeSet];
    [changeSet2 forceChangeValue:calendarItemIdentifier forKey:*MEMORY[0x1E6992B08]];

    changeSet3 = [(EKObject *)self changeSet];
    [changeSet3 forceChangeValue:externalID forKey:*MEMORY[0x1E69925C0]];
  }
}

- (void)markAsUndetachedWithStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  [(EKObject *)self _initChangeSetIfNone];
  changeSet = [(EKObject *)self changeSet];
  [changeSet setIsUndetached:1];

  [(EKEvent *)self setStartDate:dateCopy];
  [(EKEvent *)self setEndDateUnadjustedForLegacyClients:endDateCopy];
}

- (BOOL)isUndetached
{
  changeSet = [(EKObject *)self changeSet];
  isUndetached = [changeSet isUndetached];

  return isUndetached;
}

- (BOOL)isOrWasIntegrationEvent
{
  if ([(EKEvent *)self isIntegrationEvent])
  {
    return 1;
  }

  v4 = *MEMORY[0x1E6992570];
  if (![(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992570]])
  {
    return 0;
  }

  v5 = [(EKObject *)self _previousValueForKey:v4];
  eventStore = [(EKObject *)self eventStore];
  v7 = [v5 meltedObjectInStore:eventStore];

  source = [v7 source];
  v3 = [source sourceType] == 6;

  return v3;
}

uint64_t __27__EKEvent__integrationType__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) calendar];
  v2 = [v1 source];
  v3 = [v2 sourceType];

  if (v3 == 6)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = MEMORY[0x1E696AD98];

  return [v5 numberWithUnsignedInteger:v4];
}

- (id)_nextReminderOccurrenceDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__EKEvent__nextReminderOccurrenceDate__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"nextReminderOccurrenceDateKey" populateBlock:v4];

  return v2;
}

void *__38__EKEvent__nextReminderOccurrenceDate__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) nextOccurrence];
  v3 = [v2 startDate];

  v4 = [*(a1 + 32) startDate];
  v5 = [*(a1 + 32) exceptionDates];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
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
        if ([v10 isAfterDate:v4] && objc_msgSend(v10, "isBeforeDate:", v3))
        {
          v11 = v10;

          v3 = v11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = v3;

  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)privacySafeIntegrationEventDescription
{
  v3 = MEMORY[0x1E696AD60];
  uniqueID = [(EKCalendarItem *)self uniqueID];
  v5 = [v3 stringWithFormat:@"[Event: %@: ", uniqueID];

  timeZone = [(EKCalendarItem *)self timeZone];
  v7 = timeZone;
  if (timeZone)
  {
    defaultTimeZone = timeZone;
  }

  else
  {
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  v32 = defaultTimeZone;
  v9 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:defaultTimeZone];
  isAllDay = [(EKEvent *)self isAllDay];
  v11 = isAllDay;
  if (isAllDay)
  {
    v12 = 28;
  }

  else
  {
    v12 = 124;
  }

  startDate = [(EKEvent *)self startDate];
  v31 = v9;
  v14 = [v9 components:v12 fromDate:startDate];
  year = [v14 year];
  month = [v14 month];
  v17 = [v14 day];
  v18 = v17;
  if (v11)
  {
    [v5 appendFormat:@"%li-%li-%li", year, month, v17, v27, v28];
  }

  else
  {
    hour = [v14 hour];
    minute = [v14 minute];
    if (v7)
    {
      v29 = minute;
      v30 = hour;
      v21 = [v7 abbreviationForDate:startDate];
      v22 = v21;
      if (v21)
      {
        name = v21;
      }

      else
      {
        name = [v7 name];
      }

      v24 = name;

      [v5 appendFormat:@"%li-%li-%li %li:%02li %@", year, month, v18, v30, v29, v24];
    }

    else
    {
      [v5 appendFormat:@"%li-%li-%li %li:%02li float", year, month, v18, hour, minute];
    }
  }

  [v5 appendString:{@", "}];
  if ([(EKEvent *)self completed])
  {
    v25 = @"complete";
  }

  else
  {
    v25 = @"incomplete";
  }

  [v5 appendString:v25];
  [v5 appendString:@"]"];

  return v5;
}

- (void)_addOrganizerToRecentsIfNeeded
{
  if ([(EKEvent *)self _isParticipationStatusDirty])
  {
    participationStatus = [(EKEvent *)self participationStatus];
    if (participationStatus == 4 || participationStatus == 2)
    {
      organizer = [(EKCalendarItem *)self organizer];
      name = [organizer name];
      emailAddress = [organizer emailAddress];
      phoneNumber = [organizer phoneNumber];
      [EKRecents recordRecentForContactWithName:name emailAddress:emailAddress phoneNumber:phoneNumber];
    }
  }
}

- (void)_addNewAttendeesToRecentsIfNeeded
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6992568];
  if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992568]])
  {
    changeSet = [(EKObject *)self changeSet];
    v5 = [changeSet unsavedMultiValueAddedObjectsForKey:v3];

    if ([v5 count])
    {
      v6 = MEMORY[0x1E695DF90];
      attendees = [(EKCalendarItem *)self attendees];
      v8 = [v6 dictionaryWithCapacity:{objc_msgSend(attendees, "count")}];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      attendees2 = [(EKCalendarItem *)self attendees];
      v10 = [attendees2 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v33;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(attendees2);
            }

            v14 = *(*(&v32 + 1) + 8 * i);
            uniqueIdentifier = [v14 uniqueIdentifier];
            [v8 setObject:v14 forKeyedSubscript:uniqueIdentifier];
          }

          v11 = [attendees2 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v11);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = v5;
      obj = v5;
      v16 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(obj);
            }

            uniqueIdentifier2 = [*(*(&v28 + 1) + 8 * j) uniqueIdentifier];
            v21 = [v8 objectForKeyedSubscript:uniqueIdentifier2];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              name = [v21 name];
              emailAddress = [v21 emailAddress];
              phoneNumber = [v21 phoneNumber];
              [EKRecents recordRecentForContactWithName:name emailAddress:emailAddress phoneNumber:phoneNumber];
            }
          }

          v17 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v17);
      }

      v5 = v26;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  [(EKEvent *)self setPredictedLocationFrozen:0];
  v3.receiver = self;
  v3.super_class = EKEvent;
  [(EKObject *)&v3 reset];
}

- (BOOL)_reset
{
  v23.receiver = self;
  v23.super_class = EKEvent;
  if (![(EKObject *)&v23 _reset])
  {
    return 0;
  }

  [(EKEvent *)self clearDetectedConferenceURL];
  [(EKEvent *)self clearParsedConference];
  [(EKEvent *)self clearVirtualConferenceURLsQueuedForInvalidation];
  [(EKEvent *)self setClearModifiedFlags:0];
  originalOccurrenceStartDate = self->_originalOccurrenceStartDate;
  if (originalOccurrenceStartDate)
  {
    objc_storeStrong(&self->_occurrenceStartDate, originalOccurrenceStartDate);
    v4 = self->_originalOccurrenceStartDate;
    self->_originalOccurrenceStartDate = 0;
  }

  originalOccurrenceEndDate = self->_originalOccurrenceEndDate;
  if (originalOccurrenceEndDate)
  {
    objc_storeStrong(&self->_occurrenceEndDate, originalOccurrenceEndDate);
    v6 = self->_originalOccurrenceEndDate;
    self->_originalOccurrenceEndDate = 0;
  }

  originalOccurrenceIsAllDay = self->_originalOccurrenceIsAllDay;
  if (originalOccurrenceIsAllDay)
  {
    self->_occurrenceIsAllDay = [(NSNumber *)originalOccurrenceIsAllDay BOOLValue];
    v8 = self->_originalOccurrenceIsAllDay;
    self->_originalOccurrenceIsAllDay = 0;
  }

  if (![(EKEvent *)self validateOccurrenceDateStillMatchesRecurrenceRules])
  {
    return 0;
  }

  _committedStartDate = [(EKEvent *)self _committedStartDate];
  v22 = 0;
  v10 = [(EKEvent *)self adjustedPersistedDateForDate:_committedStartDate withAdjustmentMode:1 pinMode:0 clientCalendarDate:&v22];
  v11 = v22;
  v12 = v22;

  if (![(EKCalendarItem *)self _hadRecurrenceRules])
  {
    objc_storeStrong(&self->_originalOccurrenceStartDate, v11);
    objc_storeStrong(&self->_occurrenceStartDate, v11);
  }

  _committedEndDate = [(EKEvent *)self _committedEndDate];
  v21 = 0;
  v14 = 1;
  v15 = [(EKEvent *)self adjustedPersistedDateForDate:_committedEndDate withAdjustmentMode:1 pinMode:1 clientCalendarDate:&v21];
  v16 = v21;

  v17 = [(EKEvent *)self _calculateDurationWithStart:v12 end:v16 allDay:[(EKEvent *)self _isAllDay]];
  occurrenceStartDate = [(EKEvent *)self occurrenceStartDate];
  v19 = [occurrenceStartDate calendarDateByComponentwiseAddingComponents:v17];
  [(EKEvent *)self setOccurrenceEndDate:v19];

  [(EKEvent *)self setOccurrenceIsAllDay:[(EKEvent *)self _isAllDay]];
  return v14;
}

- (id)coCommitEvents
{
  v25 = *MEMORY[0x1E69E9840];
  persistentObject = [(EKObject *)self persistentObject];
  coCommitObjects = [persistentObject coCommitObjects];
  v5 = [coCommitObjects count];

  if (v5)
  {
    v6 = MEMORY[0x1E695DF70];
    persistentObject2 = [(EKObject *)self persistentObject];
    coCommitObjects2 = [persistentObject2 coCommitObjects];
    v9 = [v6 arrayWithCapacity:{objc_msgSend(coCommitObjects2, "count")}];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    persistentObject3 = [(EKObject *)self persistentObject];
    coCommitObjects3 = [persistentObject3 coCommitObjects];

    v12 = [coCommitObjects3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(coCommitObjects3);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [[EKEvent alloc] initWithPersistentObject:v16];
            [v9 addObject:v17];
          }
        }

        v13 = [coCommitObjects3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v9 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)_revertIncludingCoCommits:(BOOL)commits
{
  commitsCopy = commits;
  v35 = *MEMORY[0x1E69E9840];
  uniqueIdentifier = [(EKObject *)self uniqueIdentifier];
  if ([(EKObject *)self hasNeverBeenCommitted])
  {
    isDetached = [(EKEvent *)self isDetached];
  }

  else
  {
    isDetached = 0;
  }

  originalItem = [(EKCalendarItem *)self originalItem];
  occurrenceStartDate = [(EKEvent *)self occurrenceStartDate];
  occurrenceEndDate = [(EKEvent *)self occurrenceEndDate];
  occurrenceIsAllDay = [(EKEvent *)self occurrenceIsAllDay];
  v11 = occurrenceIsAllDay;
  if (commitsCopy)
  {
    v28 = occurrenceStartDate;
    v12 = occurrenceIsAllDay;
    v13 = originalItem;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    coCommitEvents = [(EKEvent *)self coCommitEvents];
    v15 = [coCommitEvents countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        v18 = 0;
        do
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(coCommitEvents);
          }

          [*(*(&v30 + 1) + 8 * v18++) _revertIncludingCoCommits:0];
        }

        while (v16 != v18);
        v16 = [coCommitEvents countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v16);
    }

    originalItem = v13;
    v11 = v12;
    occurrenceStartDate = v28;
  }

  v29.receiver = self;
  v29.super_class = EKEvent;
  revert = [(EKObject *)&v29 revert];
  if (isDetached)
  {
    backingObject = [originalItem backingObject];
    [(EKObject *)self setBackingObject:backingObject];

    [(EKObject *)self _resetAfterUpdatingChangeSetOrBackingObject];
    [(EKEvent *)self reset];
    [(EKEvent *)self setOccurrenceStartDate:occurrenceStartDate];
    [(EKEvent *)self setOccurrenceEndDate:occurrenceEndDate];
    [(EKEvent *)self setOccurrenceIsAllDay:v11];
  }

  else
  {
    originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
    [(EKEvent *)self setOccurrenceStartDate:originalOccurrenceStartDate];

    originalOccurrenceEndDate = [(EKEvent *)self originalOccurrenceEndDate];
    [(EKEvent *)self setOccurrenceEndDate:originalOccurrenceEndDate];

    originalOccurrenceIsAllDay = [(EKEvent *)self originalOccurrenceIsAllDay];

    if (originalOccurrenceIsAllDay)
    {
      originalOccurrenceIsAllDay2 = [(EKEvent *)self originalOccurrenceIsAllDay];
      -[EKEvent setOccurrenceIsAllDay:](self, "setOccurrenceIsAllDay:", [originalOccurrenceIsAllDay2 BOOLValue]);
    }
  }

  [(EKEvent *)self _clearOriginalDateFields];
  [(EKEvent *)self setPredictedLocationFrozen:0];
  v25 = [objc_opt_class() _modifiedNotificationUserInfoWithIdentifier:uniqueIdentifier forRevert:1];
  [(EKEvent *)self postModifiedNotificationWithUserInfo:v25];

  v26 = *MEMORY[0x1E69E9840];
  return revert;
}

- (void)rollback
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992620]])
  {
    virtualConference = [(EKEvent *)self virtualConference];
    _originallyCommittedVirtualConference = [(EKEvent *)self _originallyCommittedVirtualConference];
    v5 = [virtualConference isEqual:_originallyCommittedVirtualConference];

    if ((v5 & 1) == 0)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      virtualConference2 = [(EKEvent *)self virtualConference];
      joinMethods = [virtualConference2 joinMethods];

      v8 = [joinMethods countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(joinMethods);
            }

            v12 = [*(*(&v19 + 1) + 8 * v11) URL];
            [EKConferenceUtils invalidateConferenceURL:v12];

            ++v11;
          }

          while (v9 != v11);
          v9 = [joinMethods countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }
    }
  }

  v18.receiver = self;
  v18.super_class = EKEvent;
  [(EKObject *)&v18 rollback];
  [(EKEvent *)self clearDetectedConferenceURL];
  [(EKEvent *)self clearParsedConference];
  [(EKEvent *)self clearVirtualConferenceURLsQueuedForInvalidation];
  originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
  [(EKEvent *)self setOccurrenceStartDate:originalOccurrenceStartDate];

  originalOccurrenceEndDate = [(EKEvent *)self originalOccurrenceEndDate];
  [(EKEvent *)self setOccurrenceEndDate:originalOccurrenceEndDate];

  originalOccurrenceIsAllDay = [(EKEvent *)self originalOccurrenceIsAllDay];

  if (originalOccurrenceIsAllDay)
  {
    originalOccurrenceIsAllDay2 = [(EKEvent *)self originalOccurrenceIsAllDay];
    -[EKEvent setOccurrenceIsAllDay:](self, "setOccurrenceIsAllDay:", [originalOccurrenceIsAllDay2 BOOLValue]);
  }

  [(EKEvent *)self setPredictedLocationFrozen:0];
  v17 = *MEMORY[0x1E69E9840];
}

- (id)nextOccurrence
{
  startDate = [(EKEvent *)self startDate];
  v4 = [(EKEvent *)self nextOccurrenceOrDetachmentAfter:startDate];

  return v4;
}

- (id)nextOccurrenceOrDetachmentAfter:(id)after
{
  v59 = *MEMORY[0x1E69E9840];
  afterCopy = after;
  singleRecurrenceRule = [(EKEvent *)self singleRecurrenceRule];

  if (singleRecurrenceRule)
  {
    v6 = objc_alloc_init(EKRecurrenceGenerator);
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__17;
    v56 = __Block_byref_object_dispose__17;
    v57 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__17;
    v50 = __Block_byref_object_dispose__17;
    v51 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __43__EKEvent_nextOccurrenceOrDetachmentAfter___block_invoke;
    aBlock[3] = &unk_1E77FF1E8;
    v31 = v6;
    v37 = v31;
    v38 = afterCopy;
    v39 = &v52;
    v40 = &v46;
    v41 = &v42;
    v7 = _Block_copy(aBlock);
    masterEvent = [(EKEvent *)self masterEvent];
    v9 = masterEvent;
    if (masterEvent)
    {
      selfCopy = masterEvent;
    }

    else
    {
      selfCopy = self;
    }

    v11 = selfCopy;

    recurrenceSet = [(EKEvent *)v11 recurrenceSet];

    if (recurrenceSet)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      eventStore = [(EKObject *)self eventStore];
      v14 = [eventStore eventsWithSameRecurrenceSetAsEvent:v11];

      v15 = [v14 countByEnumeratingWithState:&v32 objects:v58 count:16];
      if (v15)
      {
        v16 = *v33;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v33 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v32 + 1) + 8 * i);
            masterEvent2 = [v18 masterEvent];
            v20 = masterEvent2;
            if (masterEvent2)
            {
              v21 = masterEvent2;
            }

            else
            {
              v21 = v18;
            }

            v7[2](v7, v21);
          }

          v15 = [v14 countByEnumeratingWithState:&v32 objects:v58 count:16];
        }

        while (v15);
      }
    }

    else
    {
      (v7)[2](v7, v11);
    }

    if (v53[5])
    {
      if ((v43[3] & 1) == 0)
      {
        v25 = [EKEvent alloc];
        persistentObject = [v47[5] persistentObject];
        v27 = [(EKEvent *)v25 initWithPersistentObject:persistentObject occurrenceDate:v53[5]];
        v28 = v47[5];
        v47[5] = v27;
      }

      selfCopy2 = v47[5];
    }

    else
    {
      selfCopy2 = 0;
    }

    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);

    _Block_object_dispose(&v52, 8);
  }

  else
  {
    startDate = [(EKEvent *)self startDate];
    v23 = [startDate isAfterDate:afterCopy];

    if (v23)
    {
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return selfCopy2;
}

void __43__EKEvent_nextOccurrenceOrDetachmentAfter___block_invoke(void *a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [v4 exceptionDates];
  v6 = [v4 detachedItems];
  v36 = v5;
  if ([v6 count])
  {
    v7 = [v5 mutableCopy];
    if (!v7)
    {
      v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
    }
  }

  else
  {
    v7 = 0;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v41 + 1) + 8 * i) recurrenceDate];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v10);
  }

  v14 = [v4 singleRecurrenceRule];

  if (v14)
  {
    obj = a2;
    v34 = a1[4];
    v35 = [v4 singleRecurrenceRule];
    v46 = v35;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    if (v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = v36;
    }

    v17 = [v4 startCalendarDate];
    v18 = MEMORY[0x1E69930C8];
    v19 = a1[5];
    v20 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v21 = [v18 calendarDateWithDate:v19 timeZone:v20];
    v22 = [v34 nextOccurrenceDateWithEKRecurrences:v15 forCalendarItem:v4 exceptionDates:v16 initialDate:v17 afterDate:v21];

    v23 = *(*(a1[6] + 8) + 40);
    if ((!v23 || [v23 isAfterDate:v22]) && objc_msgSend(v22, "isAfterDate:", a1[5]))
    {
      objc_storeStrong((*(a1[6] + 8) + 40), v22);
      objc_storeStrong((*(a1[7] + 8) + 40), obj);
      *(*(a1[8] + 8) + 24) = 0;
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = v8;
  v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v38;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v37 + 1) + 8 * j);
        v30 = [v29 startDate];
        v31 = *(*(a1[6] + 8) + 40);
        if (!v31 || [v31 isAfterDate:v30])
        {
          if ([v30 isAfterDate:a1[5]])
          {
            objc_storeStrong((*(a1[6] + 8) + 40), v30);
            objc_storeStrong((*(a1[7] + 8) + 40), v29);
            *(*(a1[8] + 8) + 24) = 1;
          }
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v26);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (id)previousOccurrence
{
  startDate = [(EKEvent *)self startDate];
  v4 = [(EKEvent *)self previousOccurrenceOrDetachmentBefore:startDate];

  return v4;
}

- (id)previousOccurrenceOrDetachmentBefore:(id)before
{
  v60 = *MEMORY[0x1E69E9840];
  beforeCopy = before;
  singleRecurrenceRule = [(EKEvent *)self singleRecurrenceRule];

  if (singleRecurrenceRule)
  {
    v6 = objc_alloc_init(EKRecurrenceGenerator);
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__17;
    v57 = __Block_byref_object_dispose__17;
    v58 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__17;
    v51 = __Block_byref_object_dispose__17;
    v52 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__EKEvent_previousOccurrenceOrDetachmentBefore___block_invoke;
    aBlock[3] = &unk_1E77FF238;
    v31 = v6;
    v37 = v31;
    v38 = beforeCopy;
    selfCopy = self;
    v40 = &v53;
    v41 = &v47;
    v42 = &v43;
    v7 = _Block_copy(aBlock);
    masterEvent = [(EKEvent *)self masterEvent];
    v9 = masterEvent;
    if (masterEvent)
    {
      selfCopy2 = masterEvent;
    }

    else
    {
      selfCopy2 = self;
    }

    v11 = selfCopy2;

    recurrenceSet = [(EKEvent *)v11 recurrenceSet];

    if (recurrenceSet)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      eventStore = [(EKObject *)self eventStore];
      v14 = [eventStore eventsWithSameRecurrenceSetAsEvent:v11];

      v15 = [v14 countByEnumeratingWithState:&v32 objects:v59 count:16];
      if (v15)
      {
        v16 = *v33;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v33 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v32 + 1) + 8 * i);
            masterEvent2 = [v18 masterEvent];
            v20 = masterEvent2;
            if (masterEvent2)
            {
              v21 = masterEvent2;
            }

            else
            {
              v21 = v18;
            }

            v7[2](v7, v21);
          }

          v15 = [v14 countByEnumeratingWithState:&v32 objects:v59 count:16];
        }

        while (v15);
      }
    }

    else
    {
      (v7)[2](v7, v11);
    }

    if (v54[5])
    {
      if ((v44[3] & 1) == 0)
      {
        v25 = [EKEvent alloc];
        persistentObject = [v48[5] persistentObject];
        v27 = [(EKEvent *)v25 initWithPersistentObject:persistentObject occurrenceDate:v54[5]];
        v28 = v48[5];
        v48[5] = v27;
      }

      selfCopy3 = v48[5];
    }

    else
    {
      selfCopy3 = 0;
    }

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v47, 8);

    _Block_object_dispose(&v53, 8);
  }

  else
  {
    startDate = [(EKEvent *)self startDate];
    v23 = [startDate isBeforeDate:beforeCopy];

    if (v23)
    {
      selfCopy3 = self;
    }

    else
    {
      selfCopy3 = 0;
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return selfCopy3;
}

void __48__EKEvent_previousOccurrenceOrDetachmentBefore___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 exceptionDates];
  v5 = [v3 detachedItems];
  if ([v5 count])
  {
    v6 = [v4 mutableCopy];
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
    }
  }

  else
  {
    v6 = 0;
  }

  v35 = v4;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v46 + 1) + 8 * i) recurrenceDate];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v9);
  }

  v13 = *(a1 + 32);
  v14 = [v3 startDate];
  v15 = *(a1 + 40);
  [v3 duration];
  v17 = [v15 dateByAddingTimeInterval:-v16];
  v18 = [*(a1 + 48) effectiveTimeZone];
  LOBYTE(v33) = 1;
  v19 = [v13 copyOccurrenceDatesWithEKEvent:v3 startDate:v14 endDate:v17 timeZone:v18 exceptionDates:0 limit:1000 adjustDatesForAllDayEvents:v33];

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __48__EKEvent_previousOccurrenceOrDetachmentBefore___block_invoke_2;
  v40[3] = &unk_1E77FF210;
  v41 = *(a1 + 40);
  v20 = v6;
  v42 = v20;
  v44 = *(a1 + 56);
  v21 = v3;
  v22 = *(a1 + 72);
  v43 = v21;
  v45 = v22;
  v34 = v19;
  [v19 enumerateObjectsWithOptions:2 usingBlock:v40];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = v7;
  v24 = [v23 countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v37;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v36 + 1) + 8 * j);
        v29 = [v28 startDate];
        v30 = v29;
        if (v29 && [v29 isBeforeDate:*(a1 + 40)])
        {
          v31 = *(*(a1 + 56) + 8);
          if (*(v31 + 40))
          {
            if (![v30 isAfterDate:?])
            {
              goto LABEL_25;
            }

            v31 = *(*(a1 + 56) + 8);
          }

          objc_storeStrong((v31 + 40), v30);
          objc_storeStrong((*(*(a1 + 64) + 8) + 40), v28);
          *(*(*(a1 + 72) + 8) + 24) = 1;
        }

LABEL_25:
      }

      v25 = [v23 countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v25);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __48__EKEvent_previousOccurrenceOrDetachmentBefore___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([v8 isBeforeDate:*(a1 + 32)] && (objc_msgSend(*(a1 + 40), "containsObject:", v8) & 1) == 0)
  {
    v7 = *(*(a1 + 56) + 8);
    if (*(v7 + 40))
    {
      if (![v8 isAfterDate:?])
      {
        goto LABEL_7;
      }

      v7 = *(*(a1 + 56) + 8);
    }

    objc_storeStrong((v7 + 40), a2);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 48));
    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_7:
}

- (id)earliestOccurrenceEndingAfter:(id)after excludeSignificantDetachments:(BOOL)detachments excludeCanceledDetachments:(BOOL)canceledDetachments excludeDeclinedDetachments:(BOOL)declinedDetachments
{
  declinedDetachmentsCopy = declinedDetachments;
  canceledDetachmentsCopy = canceledDetachments;
  detachmentsCopy = detachments;
  v65 = *MEMORY[0x1E69E9840];
  afterCopy = after;
  if ([(EKCalendarItem *)self hasRecurrenceRules])
  {
    v54 = afterCopy;
    v53 = objc_alloc_init(EKRecurrenceGenerator);
    exceptionDates = [(EKCalendarItem *)self exceptionDates];
    detachedItems = [(EKCalendarItem *)self detachedItems];
    allObjects = [detachedItems allObjects];
    v13 = [allObjects sortedArrayUsingSelector:sel_compareStartDateWithEvent_];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v59 objects:v64 count:16];
    v52 = exceptionDates;
    if (v15)
    {
      v16 = v15;
      selfCopy = self;
      v17 = *v60;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v60 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v59 + 1) + 8 * i);
          if ((!detachmentsCopy || ([*(*(&v59 + 1) + 8 * i) isSignificantlyDetached] & 1) == 0) && (!canceledDetachmentsCopy || objc_msgSend(v19, "status") != 3) && (!declinedDetachmentsCopy || objc_msgSend(v19, "selfParticipantStatus") != 3))
          {
            endDateUnadjustedForLegacyClients = [v19 endDateUnadjustedForLegacyClients];
            v21 = [endDateUnadjustedForLegacyClients CalIsAfterDate:v54];

            if (v21)
            {
              v50 = v19;
              goto LABEL_20;
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v59 objects:v64 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v50 = 0;
LABEL_20:
      exceptionDates = v52;
      self = selfCopy;
    }

    else
    {
      v50 = 0;
    }

    if ([v14 count])
    {
      v25 = [exceptionDates mutableCopy];
      if (!v25)
      {
        v25 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v14, "count")}];
      }
    }

    else
    {
      v25 = 0;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v26 = v14;
    v27 = [v26 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v56;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v56 != v29)
          {
            objc_enumerationMutation(v26);
          }

          recurrenceDate = [*(*(&v55 + 1) + 8 * j) recurrenceDate];
          if (recurrenceDate)
          {
            [v25 addObject:recurrenceDate];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v28);
    }

    [(EKEvent *)self duration];
    afterCopy = v54;
    v33 = [v54 dateByAddingTimeInterval:-v32];
    recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
    if (v25)
    {
      v35 = v25;
    }

    else
    {
      v35 = exceptionDates;
    }

    startCalendarDate = [(EKEvent *)self startCalendarDate];
    v37 = MEMORY[0x1E69930C8];
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v49 = v33;
    v39 = [v37 calendarDateWithDate:v33 timeZone:defaultTimeZone];
    v40 = [(EKRecurrenceGenerator *)v53 nextOccurrenceDateWithEKRecurrences:recurrenceRules forCalendarItem:self exceptionDates:v35 initialDate:startCalendarDate afterDate:v39];

    if (v40)
    {
      v41 = v50;
      if (!v50 || ([v50 startDate], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "CalIsBeforeDate:", v40), v42, !v43))
      {
        v44 = [EKEvent alloc];
        persistentObject = [(EKObject *)self persistentObject];
        selfCopy2 = [(EKEvent *)v44 initWithPersistentObject:persistentObject occurrenceDate:v40];

LABEL_45:
        goto LABEL_46;
      }
    }

    else
    {
      v41 = v50;
    }

    selfCopy2 = [v41 copy];
    goto LABEL_45;
  }

  endDateUnadjustedForLegacyClients2 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
  v23 = [endDateUnadjustedForLegacyClients2 CalIsAfterDate:afterCopy];

  if (v23)
  {
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

LABEL_46:

  v46 = *MEMORY[0x1E69E9840];

  return selfCopy2;
}

- (id)copyToCalendar:(id)calendar withOptions:(int64_t)options
{
  calendarCopy = calendar;
  calendar = [(EKCalendarItem *)self calendar];
  v8 = [(EKEvent *)self _requirementsToMoveToCalendarHelperRemoveAttendeesRequiredToMoveEventFromCalendar:calendar toCalendar:calendarCopy];

  if (v8)
  {
    optionsCopy = options | 4;
  }

  else
  {
    optionsCopy = options;
  }

  v10 = [(EKEvent *)self duplicateWithOptions:optionsCopy];
  [v10 setCalendar:calendarCopy];
  calendar2 = [(EKCalendarItem *)self calendar];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__EKEvent_copyToCalendar_withOptions___block_invoke;
  v18[3] = &unk_1E77FF260;
  v19 = calendar2;
  v20 = calendarCopy;
  v12 = v10;
  v21 = v12;
  v13 = calendarCopy;
  v14 = calendar2;
  [v12 _recursivelyPerformBlockOnSelfAndDetachedItems:v18 forSavingItem:v12];
  v15 = v21;
  v16 = v12;

  return v16;
}

- (id)duplicateWithOptions:(int64_t)options
{
  v25 = *MEMORY[0x1E69E9840];
  duplicate = [(EKObject *)self duplicate];
  selfCopy = self;
  v6 = [(EKEvent *)self _keysToChangeForDuplicateWithOptions:options];
  allKeys = [v6 allKeys];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:v12];
        null = [MEMORY[0x1E695DFB0] null];

        if (v13 == null)
        {

          v13 = 0;
        }

        [duplicate setValue:v13 forKey:v12];
      }

      v9 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  if ((options & 0x20) != 0)
  {
    [duplicate removeAllSnoozedAlarms];
  }

  if ((options & 2) != 0)
  {
    startDate = [(EKEvent *)selfCopy startDate];
    [duplicate _updateStartDateForDate:startDate withAdjustmentMode:0];

    endDateUnadjustedForLegacyClients = [(EKEvent *)selfCopy endDateUnadjustedForLegacyClients];
    [duplicate _updateEndDateForDate:endDateUnadjustedForLegacyClients withAdjustmentMode:0];
  }

  v17 = *MEMORY[0x1E69E9840];

  return duplicate;
}

- (id)_keysToChangeForDuplicateWithOptions:(int64_t)options
{
  optionsCopy = options;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (optionsCopy)
  {
    if ((optionsCopy & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    if (!date || (v8 = date, v9 = MEMORY[0x1E695DF00], [date timeIntervalSinceReferenceDate], objc_msgSend(v9, "dateWithTimeIntervalSinceReferenceDate:", floor(v10)), null = objc_claimAutoreleasedReturnValue(), v8, !null))
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    [dictionary setObject:null forKeyedSubscript:*MEMORY[0x1E6992588]];

    if ((optionsCopy & 2) == 0)
    {
LABEL_3:
      if ((optionsCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  null2 = [MEMORY[0x1E695DFB0] null];
  [dictionary setObject:null2 forKeyedSubscript:*MEMORY[0x1E6992648]];

  null3 = [MEMORY[0x1E695DFB0] null];
  [dictionary setObject:null3 forKeyedSubscript:*MEMORY[0x1E6992598]];

  null4 = [MEMORY[0x1E695DFB0] null];
  [dictionary setObject:null4 forKeyedSubscript:*MEMORY[0x1E6992630]];

  null5 = [MEMORY[0x1E695DFB0] null];
  [dictionary setObject:null5 forKeyedSubscript:*MEMORY[0x1E69929A8]];

  null6 = [MEMORY[0x1E695DFB0] null];
  [dictionary setObject:null6 forKeyedSubscript:*MEMORY[0x1E69925A0]];

  if ((optionsCopy & 4) == 0)
  {
LABEL_4:
    if ((optionsCopy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  null7 = [MEMORY[0x1E695DFB0] null];
  [dictionary setObject:null7 forKeyedSubscript:*MEMORY[0x1E6992568]];

  null8 = [MEMORY[0x1E695DFB0] null];
  [dictionary setObject:null8 forKeyedSubscript:*MEMORY[0x1E6992650]];

  null9 = [MEMORY[0x1E695DFB0] null];
  [dictionary setObject:null9 forKeyedSubscript:*MEMORY[0x1E6992628]];

  null10 = [MEMORY[0x1E695DFB0] null];
  [dictionary setObject:null10 forKeyedSubscript:*MEMORY[0x1E69929B0]];

  [dictionary setObject:&unk_1F1B6AC48 forKeyedSubscript:*MEMORY[0x1E6992990]];
  [dictionary setObject:&unk_1F1B6AC60 forKeyedSubscript:*MEMORY[0x1E6992988]];
  null11 = [MEMORY[0x1E695DFB0] null];
  [dictionary setObject:null11 forKeyedSubscript:*MEMORY[0x1E69929D0]];

  [dictionary setObject:&unk_1F1B6AC48 forKeyedSubscript:*MEMORY[0x1E6992998]];
  if ((optionsCopy & 8) == 0)
  {
LABEL_5:
    if ((optionsCopy & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_16:
  null12 = [MEMORY[0x1E695DFB0] null];
  [dictionary setObject:null12 forKeyedSubscript:*MEMORY[0x1E6992560]];

  if ((optionsCopy & 0x10) != 0)
  {
LABEL_6:
    null13 = [MEMORY[0x1E695DFB0] null];
    [dictionary setObject:null13 forKeyedSubscript:@"suggestionInfo"];
  }

LABEL_7:

  return dictionary;
}

- (unint64_t)countOfAttendeeProposedTimes
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(EKCalendarItem *)self isSelfOrganizedInvitation])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    attendees = [(EKCalendarItem *)self attendees];
    v4 = [attendees countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(attendees);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            v11 = [v10 proposedStartDateForEvent:self];
            if (v11)
            {
              v12 = v11;
              proposedStartDateStatus = [v10 proposedStartDateStatus];

              if (proposedStartDateStatus != 3)
              {
                ++v6;
              }
            }
          }
        }

        v5 = [attendees countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)committedConstraints
{
  eventStore = [(EKObject *)self eventStore];
  eventAccessLevel = [eventStore eventAccessLevel];

  if (eventAccessLevel == 1)
  {
    eventStore2 = [(EKObject *)self eventStore];
    cADObjectID = [(EKObject *)self CADObjectID];
    constraints = [eventStore2 cachedConstraintsForEventOrSourceWithCADObjectID:cADObjectID];
  }

  else
  {
    eventStore2 = [(EKEvent *)self committedValueForKey:*MEMORY[0x1E6992570]];
    constraints = [eventStore2 constraints];
  }

  return constraints;
}

- (BOOL)validateRecurrenceRule:(id)rule error:(id *)error
{
  ruleCopy = rule;
  v7 = ruleCopy;
  if (ruleCopy)
  {
    frequency = [ruleCopy frequency];
    constraints = [(EKEvent *)self constraints];
    if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992570]])
    {
      committedConstraints = [(EKEvent *)self committedConstraints];
    }

    else
    {
      committedConstraints = 0;
    }

    v12 = EKBundle();
    v13 = [v12 localizedStringForKey:@"Choose another way to repeat this event or move it to another calendar." value:&stru_1F1B49D68 table:0];
    if ([committedConstraints prohibitsMultipleMonthsInYearlyRecurrence])
    {
      if ([constraints prohibitsMultipleMonthsInYearlyRecurrence])
      {
        if (frequency == 3)
        {
          monthsOfTheYear = [v7 monthsOfTheYear];
          v15 = [monthsOfTheYear count];

          if (v15 >= 2)
          {
            v16 = [v12 localizedStringForKey:@"This Calendar Cannot Repeat Events on Multiple Months in a Year" value:&stru_1F1B49D68 table:0];
            v17 = 45;
            if (!error)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }
        }
      }
    }

    if ([committedConstraints prohibitsMultipleDaysInMonthlyRecurrence] && objc_msgSend(constraints, "prohibitsMultipleDaysInMonthlyRecurrence") && frequency == 2 && (objc_msgSend(v7, "daysOfTheMonth"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v19 >= 2))
    {
      v16 = [v12 localizedStringForKey:@"This Calendar Cannot Repeat Events on Multiple Days in a Month" value:&stru_1F1B49D68 table:0];
      v17 = 46;
      if (error)
      {
LABEL_17:
        *error = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:v17 description:v13 reason:v16];
      }
    }

    else
    {
      if (![committedConstraints prohibitsYearlyRecurrenceInterval] || !objc_msgSend(constraints, "prohibitsYearlyRecurrenceInterval") || objc_msgSend(v7, "frequency") != 3 || objc_msgSend(v7, "interval") < 2)
      {
        v11 = 1;
        goto LABEL_26;
      }

      v20 = MEMORY[0x1E696AEC0];
      v21 = [v12 localizedStringForKey:@"This Calendar Cannot Repeat Events Every %ld Years" value:&stru_1F1B49D68 table:0];
      v16 = [v20 localizedStringWithFormat:v21, objc_msgSend(v7, "interval")];

      v17 = 47;
      if (error)
      {
        goto LABEL_17;
      }
    }

LABEL_18:

    v11 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v11 = 1;
LABEL_27:

  return v11;
}

- (BOOL)overlapsWithOrIsSameDayAsEventInSeries
{
  occurrenceStartDate = [(EKEvent *)self occurrenceStartDate];
  if (!occurrenceStartDate)
  {
    return 0;
  }

  originalOccurrenceStartDate = self->_originalOccurrenceStartDate;

  if (!originalOccurrenceStartDate)
  {
    return 0;
  }

  date = [(EKCalendarDate *)self->_originalOccurrenceStartDate date];
  startDate = [(EKEvent *)self startDate];
  timeZone = [(EKCalendarItem *)self timeZone];
  if (![(EKEvent *)self isFloating])
  {
    eventStore = [(EKObject *)self eventStore];
    timeZone2 = [eventStore timeZone];
    v10 = [date dateInTimeZone:timeZone fromTimeZone:timeZone2];

    eventStore2 = [(EKObject *)self eventStore];
    timeZone3 = [eventStore2 timeZone];
    v13 = [startDate dateInTimeZone:timeZone fromTimeZone:timeZone3];

    startDate = v13;
    date = v10;
  }

  v14 = [date dateForStartOfDayInTimeZone:timeZone];
  v15 = [startDate dateForStartOfDayInTimeZone:timeZone];
  [v14 timeIntervalSinceReferenceDate];
  v17 = v16;
  [v15 timeIntervalSinceReferenceDate];
  if (vabdd_f64(v17, v18) >= 2.22044605e-16)
  {
    startDate2 = [(EKEvent *)self startDate];
    occurrenceStartDate2 = [(EKEvent *)self occurrenceStartDate];
    timeZone4 = [occurrenceStartDate2 timeZone];
    v19 = [(EKEvent *)self _occurrenceExistsOnDate:startDate2 timeZone:timeZone4];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)_validateDatesAndRecurrencesGivenSpan:(int64_t)span error:(id *)error
{
  if (([MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement] & 1) == 0)
  {
    constraints = [(EKEvent *)self constraints];
    if (constraints)
    {
      startDate = [(EKEvent *)self startDate];
      [startDate timeIntervalSinceReferenceDate];
      eventStore = [(EKObject *)self eventStore];
      timeZone = [eventStore timeZone];
      GregorianDateWithFallbackToDefaultTimeZone = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
      v14 = v13;

      if ([(EKEvent *)self isAllDay])
      {
        GregorianDateWithFallbackToDefaultTimeZone = CalGregorianDateGetGregorianDateForDay();
        v14 = v15;
      }

      eventStore2 = [(EKObject *)self eventStore];
      timeZone2 = [eventStore2 timeZone];
      error = [(EKEvent *)self _checkStartDateConstraintAgainstDate:GregorianDateWithFallbackToDefaultTimeZone timeZone:v14 error:timeZone2, error];

      if (!error)
      {
        goto LABEL_28;
      }

      if ([constraints eventDurationConstrainedToRecurrenceInterval] && -[EKEvent durationOverlapsRecurrenceInterval](self, "durationOverlapsRecurrenceInterval"))
      {
        if (error)
        {
          v19 = MEMORY[0x1E696ABC0];
          v20 = 7;
LABEL_20:
          [v19 errorWithEKErrorCode:v20];
          *error = v7 = 0;
LABEL_29:

          return v7;
        }

        goto LABEL_28;
      }

      if (![(EKObject *)self isNew])
      {
        requiresOccurrencesConformToRecurrenceRule = [constraints requiresOccurrencesConformToRecurrenceRule];
        if (span)
        {
          if (requiresOccurrencesConformToRecurrenceRule)
          {
            recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
            v23 = [(EKEvent *)self conformsToRecurrenceRules:recurrenceRules];

            if (!v23 && ![(EKEvent *)self _isSimpleRepeatingEvent])
            {
              if (error)
              {
                v24 = MEMORY[0x1E696ABC0];
                v25 = EKBundle();
                v26 = [v25 localizedStringForKey:@"Choose another way to repeat this event or move it to another calendar." value:&stru_1F1B49D68 table:0];
                v27 = EKBundle();
                v28 = [v27 localizedStringForKey:@"That calendar does not allow events to start outside of their recurrence patterns." value:&stru_1F1B49D68 table:0];
                *error = [v24 errorWithEKErrorCode:13 description:v26 reason:v28];
              }

              goto LABEL_28;
            }
          }
        }
      }

      if ([constraints occurrencesMustOccurOnSeparateDays] && -[EKEvent overlapsWithOrIsSameDayAsEventInSeries](self, "overlapsWithOrIsSameDayAsEventInSeries"))
      {
        if (error)
        {
          v19 = MEMORY[0x1E696ABC0];
          v20 = 10;
          goto LABEL_20;
        }

LABEL_28:
        v7 = 0;
        goto LABEL_29;
      }

      if ([constraints occurrenceOrderEnforcedAfterDetachment] && -[EKEvent isOutOfOrderWithEventInSeries](self, "isOutOfOrderWithEventInSeries"))
      {
        if (error)
        {
          v19 = MEMORY[0x1E696ABC0];
          v20 = 69;
          goto LABEL_20;
        }

        goto LABEL_28;
      }
    }

    v7 = 1;
    goto LABEL_29;
  }

  return 1;
}

- (BOOL)durationOverlapsRecurrenceInterval
{
  v28 = *MEMORY[0x1E69E9840];
  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  if ([recurrenceRules count])
  {
    v4 = MEMORY[0x1E695DEE8];
    eventStore = [(EKObject *)self eventStore];
    timeZone = [eventStore timeZone];
    v7 = [v4 CalGregorianCalendarForTimeZone:timeZone];

    startDate = [(EKEvent *)self startDate];
    endDateUnadjustedForLegacyClients = [(EKEvent *)self endDateUnadjustedForLegacyClients];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = recurrenceRules;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v22 = recurrenceRules;
      v13 = *v24;
      v14 = 1;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          if ([v16 interval] >= 1)
          {
            dateComponents = [v16 dateComponents];
            v18 = [v7 dateByAddingComponents:dateComponents toDate:startDate options:0];
            v14 &= [v18 CalIsBeforeDate:endDateUnadjustedForLegacyClients] ^ 1;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
      v19 = v14 ^ 1;
      recurrenceRules = v22;
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

  v20 = *MEMORY[0x1E69E9840];
  return v19 & 1;
}

+ (BOOL)_notDetachedOccurrenceOfEvent:(id)event existsInDateRangeWithStartDate:(id)date endDate:(id)endDate inTimeZone:(id)zone
{
  eventCopy = event;
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  if ([eventCopy hasRecurrenceRules])
  {
    recurrenceRules = [eventCopy recurrenceRules];
    [eventCopy duration];
    v14 = v13;
    v39 = recurrenceRules;
    if ([recurrenceRules count])
    {
      LOBYTE(v15) = 0;
      v16 = 0;
      v41 = 0;
      v42 = 0;
      v17 = 0;
      v18 = v14;
      v43 = eventCopy;
      while (1)
      {
        v19 = dateCopy;
        if ((v15 & 1) == 0)
        {
          break;
        }

LABEL_36:

        if (++v17 >= [v39 count])
        {
          goto LABEL_40;
        }
      }

      while (1)
      {
        if (![v19 CalIsBeforeOrSameAsDate:endDateCopy])
        {
          goto LABEL_36;
        }

        v20 = objc_alloc_init(EKRecurrenceGenerator);
        LOBYTE(v37) = 1;
        v21 = [(EKRecurrenceGenerator *)v20 copyOccurrenceDatesWithEKEvent:eventCopy startDate:v19 endDate:endDateCopy timeZone:zoneCopy exceptionDates:0 limit:1 adjustDatesForAllDayEvents:v37];
        if (![v21 count])
        {
          v23 = 0;
LABEL_35:

          goto LABEL_36;
        }

        v22 = [v21 objectAtIndex:0];
        v23 = v22;
        if (!v22 || ![v22 CalIsBeforeOrSameAsDate:endDateCopy])
        {
          goto LABEL_35;
        }

        if (![v23 CalIsAfterOrSameAsDate:v19])
        {
          goto LABEL_29;
        }

        if (!v16)
        {
          exceptionDatesAdjustedForFloatingEvents = [eventCopy exceptionDatesAdjustedForFloatingEvents];
          v25 = exceptionDatesAdjustedForFloatingEvents;
          if (exceptionDatesAdjustedForFloatingEvents)
          {
            v26 = exceptionDatesAdjustedForFloatingEvents;
          }

          else
          {
            v26 = [MEMORY[0x1E695DFD8] set];
          }

          v16 = v26;

          detachedItems = [v43 detachedItems];
          v28 = [detachedItems valueForKey:@"originalStartDate"];

          if (v28)
          {
            v29 = [v16 setByAddingObjectsFromSet:v28];

            v16 = v29;
          }

          v42 = [v16 count];
          if ([v43 isFloating] && !v41)
          {
            v41 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
          }

          eventCopy = v43;
        }

        if (v42)
        {
          break;
        }

        v42 = 0;
        v15 = 1;
LABEL_31:

        if (v15)
        {
          goto LABEL_36;
        }
      }

      v30 = v23;
      v31 = v30;
      if (v41)
      {
        v32 = zoneCopy;
        if (!zoneCopy)
        {
          defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
          v32 = defaultTimeZone;
        }

        v33 = [v31 dateInTimeZone:v41 fromTimeZone:v32];

        if (!zoneCopy)
        {
        }
      }

      else
      {
        v33 = v30;
      }

      v34 = [v16 containsObject:v33];

      if (v34)
      {
LABEL_29:
        v35 = [v23 dateByAddingTimeInterval:v18];

        v15 = 0;
        v19 = v35;
      }

      else
      {
        v15 = 1;
      }

      eventCopy = v43;
      goto LABEL_31;
    }

    v41 = 0;
    v16 = 0;
    LOBYTE(v15) = 0;
LABEL_40:
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15 & 1;
}

- (BOOL)_occurrenceExistsOnDate:(id)date timeZone:(id)zone
{
  v38 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  zoneCopy = zone;
  requiresDetach = [(EKEvent *)self requiresDetach];
  selfCopy = self;
  v10 = selfCopy;
  v11 = selfCopy;
  if (!requiresDetach)
  {
    originalItem = [(EKCalendarItem *)selfCopy originalItem];
    if (!originalItem)
    {
      v15 = 0;
      v11 = v10;
      goto LABEL_22;
    }

    v11 = originalItem;
  }

  v13 = [dateCopy dateForStartOfDayInTimeZone:zoneCopy];
  v14 = [v13 ek_ios_dateForEndOfDayInTimeZone:zoneCopy];
  if ([objc_opt_class() _notDetachedOccurrenceOfEvent:v11 existsInDateRangeWithStartDate:v13 endDate:v14 inTimeZone:zoneCopy])
  {
    v15 = 1;
  }

  else
  {
    v30 = v14;
    v31 = v11;
    v32 = dateCopy;
    detachedItems = [v11 detachedItems];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = [detachedItems countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v15 = 0;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(detachedItems);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          if (([v21 isEqual:v10] & 1) == 0)
          {
            startDate = [v21 startDate];
            if ([v21 isFloating])
            {
              v23 = [startDate dateInTimeZone:zoneCopy fromTimeZone:0];

              startDate = v23;
            }

            v24 = [startDate dateForStartOfDayInTimeZone:zoneCopy];
            [v13 timeIntervalSinceReferenceDate];
            v26 = v25;
            [v24 timeIntervalSinceReferenceDate];
            v15 |= vabdd_f64(v26, v27) < 2.22044605e-16;
          }
        }

        v18 = [detachedItems countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    else
    {
      v15 = 0;
    }

    v11 = v31;
    dateCopy = v32;
    v14 = v30;
  }

LABEL_22:
  v28 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

- (BOOL)_checkStartDateConstraintAgainstDate:(id)date timeZone:(id)zone error:(id *)error
{
  zoneCopy = zone;
  constraints = [(EKEvent *)self constraints];
  futureStartDateLimitedToOccurrenceCacheBounds = [constraints futureStartDateLimitedToOccurrenceCacheBounds];

  if (futureStartDateLimitedToOccurrenceCacheBounds)
  {
    CalEventOccurrenceCacheCopyBoundsForTimeZone();
  }

  return 1;
}

- (BOOL)conformsToRecurrenceRules:(id)rules
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = rules;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        if ([v8 frequency])
        {
          v9 = objc_alloc_init(EKRecurrenceGenerator);
          startDate = [(EKEvent *)self startDate];
          timeZone = [(EKCalendarItem *)self timeZone];
          v12 = [startDate dateForDayInTimeZone:timeZone];

          endDateUnadjustedForLegacyClients = [(EKEvent *)self endDateUnadjustedForLegacyClients];
          timeZone2 = [(EKCalendarItem *)self timeZone];
          v15 = [endDateUnadjustedForLegacyClients ek_ios_dateForEndOfDayInTimeZone:timeZone2];

          timeZone3 = [(EKCalendarItem *)self timeZone];
          v17 = [(EKRecurrenceGenerator *)v9 copyOccurrenceDatesWithEKEvent:self recurrenceRule:v8 startDate:v12 endDate:v15 timeZone:timeZone3 limit:1];

          v18 = [v17 count];
          if (!v18)
          {
            v19 = 0;
            goto LABEL_12;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_12:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)allowsSpansOtherThanThisEvent
{
  constraints = [(EKEvent *)self constraints];
  requiresOccurrencesConformToRecurrenceRule = [constraints requiresOccurrencesConformToRecurrenceRule];

  if (!requiresOccurrencesConformToRecurrenceRule || [(EKEvent *)self _isSimpleRepeatingEvent])
  {
    return 1;
  }

  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  v7 = [(EKEvent *)self conformsToRecurrenceRules:recurrenceRules];

  return v7;
}

- (BOOL)allowsResponseCommentModifications
{
  if (![(EKEvent *)self allowsParticipationStatusModifications])
  {
    return 0;
  }

  constraints = [(EKEvent *)self constraints];
  if ([constraints supportsResponseComments])
  {
    v4 = [(EKCalendarItem *)self actionsState]== 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)allowsClearingCommentsAsOrganizer
{
  constraints = [(EKEvent *)self constraints];
  supportsClearingPrivateComments = [constraints supportsClearingPrivateComments];

  return supportsClearingPrivateComments;
}

- (BOOL)_isSimpleRepeatingEvent
{
  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  if ([recurrenceRules count] == 1)
  {
    recurrenceRules2 = [(EKCalendarItem *)self recurrenceRules];
    v5 = [recurrenceRules2 objectAtIndexedSubscript:0];
    isSimpleRule = [v5 isSimpleRule];
  }

  else
  {
    isSimpleRule = 0;
  }

  return isSimpleRule;
}

- (BOOL)_shouldCancelInsteadOfDeleteWithSpan:(int64_t)span
{
  if (span == 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = currentHandler;
    v15 = @"EKSpanAutomaticChange not allowed here";
    v16 = a2;
    selfCopy2 = self;
    v18 = 7323;
LABEL_16:
    [currentHandler handleFailureInMethod:v16 object:selfCopy2 file:@"EKEvent.m" lineNumber:v18 description:v15];

    goto LABEL_3;
  }

  if (span == 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = currentHandler;
    v15 = @"EKSpanEveryOccurrenceUnlessAlreadyDetached not allowed here";
    v16 = a2;
    selfCopy2 = self;
    v18 = 7324;
    goto LABEL_16;
  }

LABEL_3:
  constraints = [(EKEvent *)self constraints];
  shouldCancelDeletedEvents = [constraints shouldCancelDeletedEvents];

  if (!shouldCancelDeletedEvents || [(EKEvent *)self isDetached]|| ![(EKCalendarItem *)self _hadAttendees])
  {
    return 0;
  }

  v8 = [(EKEvent *)self committedValueForKey:*MEMORY[0x1E6992628]];
  v9 = v8;
  if (v8)
  {
    isCurrentUser = [v8 isCurrentUser];
    if ((span & 0xFFFFFFFFFFFFFFFBLL) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = isCurrentUser;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_shouldDeclineInsteadOfDelete
{
  constraints = [(EKEvent *)self constraints];
  shouldDeclineDeletedInvitations = [constraints shouldDeclineDeletedInvitations];

  if (!shouldDeclineDeletedInvitations || ![(EKCalendarItem *)self _hadAttendees])
  {
    return 0;
  }

  v5 = [(EKEvent *)self committedValueForKey:*MEMORY[0x1E6992628]];
  v6 = v5;
  v7 = v5 && ([v5 isCurrentUser] & 1) == 0 && -[EKEvent status](self, "status") != EKEventStatusCanceled;

  return v7;
}

- (void)_deleteWithSpan:(int64_t)span
{
  v52 = *MEMORY[0x1E69E9840];
  if (span >= 1)
  {
    if (span > 1)
    {
      switch(span)
      {
        case 4:
          if ([(EKEvent *)self isDetached])
          {
            selfCopy = [(EKCalendarItem *)self originalItem];
          }

          else
          {
            selfCopy = self;
          }

          originalItem2 = selfCopy;
          recurrenceSet = [(EKEvent *)selfCopy recurrenceSet];

          if (recurrenceSet)
          {
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            eventStore = [(EKObject *)self eventStore];
            v25 = [eventStore eventsWithSameRecurrenceSetAsEvent:originalItem2];

            v26 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v43;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v43 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v42 + 1) + 8 * i);
                  eventOccurrenceID = [v30 eventOccurrenceID];
                  eventOccurrenceID2 = [(EKEvent *)self eventOccurrenceID];
                  v33 = [eventOccurrenceID isEqualToString:eventOccurrenceID2];

                  if ((v33 & 1) == 0)
                  {
                    [v30 _deleteSelfAndDetached];
                    [v30 updatePersistentObject];
                    [(EKObject *)self addCoCommitObject:v30];
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
              }

              while (v27);
            }
          }

          [originalItem2 _deleteSelfAndDetached];
LABEL_52:

          goto LABEL_53;
        case 3:
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v37 = @"EKSpanAutomaticChange not allowed here";
          originalStartDate = currentHandler;
          v38 = a2;
          selfCopy3 = self;
          v40 = 7368;
          break;
        case 2:
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v37 = @"EKSpanEveryOccurrenceUnlessAlreadyDetached not allowed here";
          originalStartDate = currentHandler;
          v38 = a2;
          selfCopy3 = self;
          v40 = 7369;
          break;
        default:
          goto LABEL_53;
      }

      [currentHandler handleFailureInMethod:v38 object:selfCopy3 file:@"EKEvent.m" lineNumber:v40 description:v37];
    }

    else
    {
      if ([(EKEvent *)self isDetached])
      {
        originalStartDate = [(EKEvent *)self originalStartDate];
      }

      else
      {
        originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
        originalStartDate = [originalOccurrenceStartDate date];
      }

      if ([(EKEvent *)self isFloating])
      {
        eventStore2 = [(EKObject *)self eventStore];
        timeZone = [eventStore2 timeZone];
        v19 = [originalStartDate dateInTimeZone:0 fromTimeZone:timeZone];

        originalStartDate = v19;
      }

      if ([(EKEvent *)self isDetached])
      {
        originalItem = [(EKCalendarItem *)self originalItem];
        [originalItem _deleteFromOccurrenceDateOnward:originalStartDate includeSlices:1];
      }

      else
      {
        [(EKEvent *)self _deleteFromOccurrenceDateOnward:originalStartDate includeSlices:1];
      }
    }

    v21 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (span)
    {
LABEL_53:
      v34 = *MEMORY[0x1E69E9840];
      return;
    }

    if ([(EKEvent *)self isDetached])
    {
      originalItem2 = [(EKCalendarItem *)self originalItem];
      originalStartDate2 = [(EKEvent *)self originalStartDate];
      [originalItem2 _addExceptionDate:originalStartDate2];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      detachedItems = [originalItem2 detachedItems];
      v7 = [detachedItems countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v47;
LABEL_6:
        v10 = 0;
        while (1)
        {
          if (*v47 != v9)
          {
            objc_enumerationMutation(detachedItems);
          }

          v11 = *(*(&v46 + 1) + 8 * v10);
          if ([v11 isEqual:self])
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [detachedItems countByEnumeratingWithState:&v46 objects:v51 count:16];
            if (v8)
            {
              goto LABEL_6;
            }

            goto LABEL_25;
          }
        }

        v15 = v11;

        if (!v15)
        {
          goto LABEL_26;
        }

        [originalItem2 _removeDetachedItem:v15];
        detachedItems = v15;
      }

LABEL_25:

LABEL_26:
      [(EKCalendarItem *)self _deleteSelfAndDetached];
      [(EKObject *)self addCoCommitObject:originalItem2];
      goto LABEL_52;
    }

    singleRecurrenceRule = [(EKEvent *)self singleRecurrenceRule];

    if (singleRecurrenceRule)
    {
      v13 = *MEMORY[0x1E69E9840];

      [(EKEvent *)self _deleteThisOccurrence];
    }

    else
    {
      v22 = *MEMORY[0x1E69E9840];

      [(EKCalendarItem *)self _deleteSelfAndDetached];
    }
  }
}

- (void)_deleteFromOccurrenceDateOnward:(id)onward includeSlices:(BOOL)slices
{
  slicesCopy = slices;
  v104 = *MEMORY[0x1E69E9840];
  onwardCopy = onward;
  _committedStartDate = [(EKEvent *)self _committedStartDate];
  timeZone = [(EKCalendarItem *)self timeZone];
  if (timeZone)
  {
    if (!slicesCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
    timeZone = CalTimeZoneCopyCFTimeZone();
    if (!slicesCopy)
    {
      goto LABEL_15;
    }
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  eventStore = [(EKObject *)self eventStore];
  v9 = [eventStore eventsWithSameRecurrenceSetAsEvent:self];

  v10 = [v9 countByEnumeratingWithState:&v95 objects:v103 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v96;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v96 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v95 + 1) + 8 * i);
        startDate = [v14 startDate];
        v16 = [startDate isAfterDate:onwardCopy];

        if (v16)
        {
          [v14 _deleteSelfAndDetached];
          [(EKObject *)self addCoCommitObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v95 objects:v103 count:16];
    }

    while (v11);
  }

LABEL_15:
  constraints = [(EKEvent *)self constraints];
  recurrenceSeriesMustIncludeMoreThanFirstOccurrence = [constraints recurrenceSeriesMustIncludeMoreThanFirstOccurrence];

  v74 = recurrenceSeriesMustIncludeMoreThanFirstOccurrence;
  if (recurrenceSeriesMustIncludeMoreThanFirstOccurrence)
  {
    v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v73 = 0;
  }

  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  if ([recurrenceRules count])
  {
    v20 = _committedStartDate;
    v21 = [onwardCopy dateByAddingTimeInterval:-1.0];
    v76 = objc_alloc_init(EKRecurrenceGenerator);
  }

  else
  {
    v76 = 0;
    v21 = 0;
    v20 = 0;
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = recurrenceRules;
  v71 = v20;
  v72 = v21;
  v78 = [obj countByEnumeratingWithState:&v91 objects:v102 count:16];
  if (v78)
  {
    v77 = *v92;
    v69 = timeZone;
LABEL_23:
    v22 = 0;
    while (1)
    {
      if (*v92 != v77)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v91 + 1) + 8 * v22);
      recurrenceEnd = [v23 recurrenceEnd];
      if (![recurrenceEnd occurrenceCount])
      {
        break;
      }

      LOBYTE(v67) = [(EKEvent *)self isAllDay];
      v25 = [(EKRecurrenceGenerator *)v76 copyOccurrenceDatesWithEKEvent:self recurrenceRule:v23 startDate:v20 endDate:v21 timeZone:timeZone exceptionDates:0 limit:0 adjustDatesForAllDayEvents:v67];
      v26 = [v25 count];
      v27 = v26;
      if (v26 >= 2)
      {
        goto LABEL_38;
      }

      if (v26 != 1)
      {
        [(EKCalendarItem *)self _deleteSelfAndDetached];
        v65 = obj;
        v51 = obj;
        goto LABEL_82;
      }

      if (!v74)
      {
        v27 = 1;
LABEL_38:
        v30 = [EKRecurrenceEnd recurrenceEndWithOccurrenceCount:v27];
        [v23 setRecurrenceEnd:v30];
        goto LABEL_47;
      }

      [v73 addObject:v23];
LABEL_48:

      if (v78 == ++v22)
      {
        v78 = [obj countByEnumeratingWithState:&v91 objects:v102 count:16];
        if (v78)
        {
          goto LABEL_23;
        }

        goto LABEL_50;
      }
    }

    endDate = [recurrenceEnd endDate];
    v25 = endDate;
    if (endDate && ![endDate CalIsAfterOrSameAsDate:onwardCopy])
    {
      goto LABEL_48;
    }

    LOBYTE(v67) = 0;
    v29 = [(EKRecurrenceGenerator *)v76 copyOccurrenceDatesWithEKEvent:self recurrenceRule:v23 startDate:v20 endDate:v21 timeZone:timeZone exceptionDates:0 limit:0 adjustDatesForAllDayEvents:v67];
    v30 = v29;
    if (v74)
    {
      v31 = [v29 count];
      if (v31 < 2)
      {
        if (v31 == 1)
        {
          [v73 addObject:v23];
        }

        goto LABEL_47;
      }

      lastObject = [v30 lastObject];
      v33 = [EKRecurrenceEnd recurrenceEndWithEndDate:lastObject];
      [v23 setRecurrenceEnd:v33];

      v20 = v71;
    }

    else
    {
      lastObject2 = [v29 lastObject];
      if (!lastObject2)
      {
        [(EKCalendarItem *)self _deleteSelfAndDetached];

        v65 = obj;
        v51 = obj;
        v21 = v72;
        goto LABEL_82;
      }

      v35 = lastObject2;
      if ([(EKEvent *)self isAllDay])
      {
        v36 = [EKRecurrenceEnd recurrenceEndWithEndDate:v35];
        [v23 setRecurrenceEnd:v36];
      }

      else
      {
        v37 = MEMORY[0x1E69930C8];
        effectiveTimeZone = [(EKEvent *)self effectiveTimeZone];
        v36 = [v37 calendarDateWithDate:v35 timeZone:effectiveTimeZone];

        calendarDateForEndOfDay = [v36 calendarDateForEndOfDay];
        [calendarDateForEndOfDay date];
        v40 = v70 = v30;

        v41 = [EKRecurrenceEnd recurrenceEndWithEndDate:v40];
        [v23 setRecurrenceEnd:v41];

        timeZone = v69;
        v30 = v70;
      }

      v20 = v71;
    }

    v21 = v72;
LABEL_47:

    goto LABEL_48;
  }

LABEL_50:

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v42 = v73;
  v43 = [v42 countByEnumeratingWithState:&v87 objects:v101 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v88;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v88 != v45)
        {
          objc_enumerationMutation(v42);
        }

        [(EKCalendarItem *)self removeRecurrenceRule:*(*(&v87 + 1) + 8 * j)];
      }

      v44 = [v42 countByEnumeratingWithState:&v87 objects:v101 count:16];
    }

    while (v44);
  }

  recurrenceRules2 = [(EKCalendarItem *)self recurrenceRules];
  v48 = [recurrenceRules2 count];

  if (!v48)
  {
    [(EKEvent *)self _updateSelfFromDetachedEventIfNeededForDelete];
  }

  detachedItems = [(EKCalendarItem *)self detachedItems];
  allObjects = [detachedItems allObjects];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v51 = allObjects;
  v52 = [v51 countByEnumeratingWithState:&v83 objects:v100 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v84;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v84 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v83 + 1) + 8 * k);
        if (([v56 hasRecurrenceRules] & 1) == 0)
        {
          originalStartDate = [v56 originalStartDate];
          if ([originalStartDate CalIsAfterOrSameAsDate:onwardCopy])
          {
            [(EKCalendarItem *)self _removeDetachedItem:v56];
          }
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v83 objects:v100 count:16];
    }

    while (v53);
  }

  exceptionDates = [(EKCalendarItem *)self exceptionDates];
  allObjects2 = [exceptionDates allObjects];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v25 = allObjects2;
  v60 = [v25 countByEnumeratingWithState:&v79 objects:v99 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v80;
    do
    {
      for (m = 0; m != v61; ++m)
      {
        if (*v80 != v62)
        {
          objc_enumerationMutation(v25);
        }

        v64 = *(*(&v79 + 1) + 8 * m);
        if ([v64 CalIsAfterDate:onwardCopy])
        {
          [(EKCalendarItem *)self _removeExceptionDate:v64];
        }
      }

      v61 = [v25 countByEnumeratingWithState:&v79 objects:v99 count:16];
    }

    while (v61);
  }

  recurrenceEnd = v25;
  v20 = v71;
  v21 = v72;
  v65 = obj;
LABEL_82:

  v66 = *MEMORY[0x1E69E9840];
}

- (void)_updateSelfFromDetachedEventIfNeededForDelete
{
  v78 = *MEMORY[0x1E69E9840];
  _committedStartDate = [(EKEvent *)self _committedStartDate];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  detachedItems = [(EKCalendarItem *)self detachedItems];
  v5 = [detachedItems countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v70;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v70 != v7)
      {
        objc_enumerationMutation(detachedItems);
      }

      v9 = *(*(&v69 + 1) + 8 * v8);
      originalStartDate = [v9 originalStartDate];
      v11 = [originalStartDate isEqualToDate:_committedStartDate];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [detachedItems countByEnumeratingWithState:&v69 objects:v77 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v9;

    if (!v12)
    {
      goto LABEL_45;
    }

    startDate = [v12 startDate];
    [(EKEvent *)self setStartDate:startDate];

    endDateUnadjustedForLegacyClients = [v12 endDateUnadjustedForLegacyClients];
    [(EKEvent *)self setEndDateUnadjustedForLegacyClients:endDateUnadjustedForLegacyClients];

    timeZone = [v12 timeZone];
    [(EKEvent *)self setTimeZone:timeZone];

    title = [v12 title];
    [(EKEvent *)self setTitle:title];

    structuredLocationWithoutPrediction = [v12 structuredLocationWithoutPrediction];
    duplicate = [structuredLocationWithoutPrediction duplicate];
    [(EKEvent *)self setStructuredLocation:duplicate];

    clientLocation = [v12 clientLocation];
    duplicate2 = [clientLocation duplicate];
    [(EKCalendarItem *)self setClientLocation:duplicate2];

    notes = [v12 notes];
    [(EKEvent *)self setNotes:notes];

    -[EKEvent setStatus:](self, "setStatus:", [v12 status]);
    -[EKEvent setAvailability:](self, "setAvailability:", [v12 availability]);
    -[EKEvent setPrivacyLevel:](self, "setPrivacyLevel:", [v12 privacyLevel]);
    [v12 travelTime];
    [(EKEvent *)self setTravelTime:?];
    v22 = [v12 URL];
    [(EKEvent *)self setURL:v22];

    -[EKEvent setTravelAdvisoryBehavior:](self, "setTravelAdvisoryBehavior:", [v12 travelAdvisoryBehavior]);
    [(EKCalendarItem *)self setAlarms:0];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    alarms = [v12 alarms];
    v24 = [alarms countByEnumeratingWithState:&v65 objects:v76 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v66;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v66 != v26)
          {
            objc_enumerationMutation(alarms);
          }

          duplicate3 = [*(*(&v65 + 1) + 8 * i) duplicate];
          [(EKCalendarItem *)self addAlarm:duplicate3];
        }

        v25 = [alarms countByEnumeratingWithState:&v65 objects:v76 count:16];
      }

      while (v25);
    }

    selfAttendee = [(EKCalendarItem *)self selfAttendee];
    attendees = [(EKCalendarItem *)self attendees];
    v31 = [attendees copy];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v32 = v31;
    v33 = [v32 countByEnumeratingWithState:&v61 objects:v75 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v62;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v62 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v61 + 1) + 8 * j);
          if (([v37 isEqual:selfAttendee] & 1) == 0)
          {
            [(EKCalendarItem *)self removeAttendee:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v61 objects:v75 count:16];
      }

      while (v34);
    }

    selfAttendee2 = [v12 selfAttendee];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    attendees2 = [v12 attendees];
    v40 = [attendees2 countByEnumeratingWithState:&v57 objects:v74 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v58;
      do
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v58 != v42)
          {
            objc_enumerationMutation(attendees2);
          }

          v44 = *(*(&v57 + 1) + 8 * k);
          if (([v44 isEqual:selfAttendee2] & 1) == 0)
          {
            v45 = [v44 copy];
            [(EKCalendarItem *)self addAttendee:v45];
          }
        }

        v41 = [attendees2 countByEnumeratingWithState:&v57 objects:v74 count:16];
      }

      while (v41);
    }

    [(EKCalendarItem *)self setAttachments:0];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    attachments = [v12 attachments];
    v47 = [attachments countByEnumeratingWithState:&v53 objects:v73 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v54;
      do
      {
        for (m = 0; m != v48; ++m)
        {
          if (*v54 != v49)
          {
            objc_enumerationMutation(attachments);
          }

          duplicate4 = [*(*(&v53 + 1) + 8 * m) duplicate];
          [(EKCalendarItem *)self addAttachment:duplicate4];
        }

        v48 = [attachments countByEnumeratingWithState:&v53 objects:v73 count:16];
      }

      while (v48);
    }

    [(EKCalendarItem *)self _removeDetachedItem:v12];
  }

  else
  {
LABEL_9:
    v12 = detachedItems;
  }

LABEL_45:
  v52 = *MEMORY[0x1E69E9840];
}

- (void)_deleteThisOccurrence
{
  v63 = *MEMORY[0x1E69E9840];
  originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
  date = [originalOccurrenceStartDate date];
  if ([(EKEvent *)self isFloating])
  {
    eventStore = [(EKObject *)self eventStore];
    timeZone = [eventStore timeZone];
    v5 = [date dateInTimeZone:0 fromTimeZone:timeZone];

    date = v5;
  }

  exceptionDates = [(EKCalendarItem *)self exceptionDates];
  v7 = [exceptionDates mutableCopy];

  v44 = v7;
  [v7 addObject:date];
  v45 = objc_alloc_init(EKRecurrenceGenerator);
  _committedStartDate = [(EKEvent *)self _committedStartDate];
  v8 = MEMORY[0x1E69930C8];
  timeZone2 = [(EKCalendarItem *)self timeZone];
  v10 = [v8 calendarDateWithDate:_committedStartDate timeZone:timeZone2];

  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v58 = 0u;
  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  v12 = [recurrenceRules copy];

  obj = v12;
  v43 = [v12 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (!v43)
  {

    v13 = 0;
    goto LABEL_34;
  }

  v13 = 0;
  v41 = 0;
  v42 = *v59;
  do
  {
    for (i = 0; i != v43; ++i)
    {
      if (*v59 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v58 + 1) + 8 * i);
      v16 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
      v17 = [(EKRecurrenceGenerator *)v45 nextOccurrenceDateWithEKRecurrences:v16 forCalendarItem:self exceptionDates:v44 initialDate:v10 afterDate:v10];

      if (!v17)
      {
        [(EKCalendarItem *)self removeRecurrenceRule:v15];
        v13 = 1;
        goto LABEL_29;
      }

      recurrenceEnd = [v15 recurrenceEnd];
      if (recurrenceEnd)
      {
        v19 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
        v20 = [(EKRecurrenceGenerator *)v45 nextOccurrenceDateWithEKRecurrences:v19 forCalendarItem:self exceptionDates:v44 initialDate:v10 afterDate:originalOccurrenceStartDate];

        if (!v20)
        {
          _committedStartDate2 = [(EKEvent *)self _committedStartDate];
          if ([(EKEvent *)self isFloating])
          {
            eventStore2 = [(EKObject *)self eventStore];
            timeZone3 = [eventStore2 timeZone];
            v24 = [_committedStartDate2 dateInTimeZone:0 fromTimeZone:timeZone3];

            _committedStartDate2 = v24;
          }

          endDate = [recurrenceEnd endDate];

          v26 = endDate == 0;
          date2 = [originalOccurrenceStartDate date];
          timeZone4 = [(EKCalendarItem *)self timeZone];
          if (v26)
          {
            v29 = [(EKRecurrenceGenerator *)v45 copyOccurrenceDatesWithEKEvent:self recurrenceRule:v15 startDate:_committedStartDate2 endDate:date2 timeZone:timeZone4 exceptionDates:0 limit:0];

            v54 = 0;
            v55 = &v54;
            v56 = 0x2020000000;
            v57 = 0;
            v50 = 0;
            v51 = &v50;
            v52 = 0x2020000000;
            v53 = 0;
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __32__EKEvent__deleteThisOccurrence__block_invoke;
            v46[3] = &unk_1E77FF288;
            v47 = v44;
            v48 = &v50;
            v49 = &v54;
            [v29 enumerateObjectsWithOptions:2 usingBlock:v46];
            if (*(v55 + 24) == 1)
            {
              v31 = [EKRecurrenceEnd recurrenceEndWithOccurrenceCount:v51[3]];
            }

            else
            {
              v31 = 0;
            }

            _Block_object_dispose(&v50, 8);
            _Block_object_dispose(&v54, 8);
          }

          else
          {
            v29 = [(EKRecurrenceGenerator *)v45 copyOccurrenceDatesWithEKEvent:self recurrenceRule:v15 startDate:_committedStartDate2 endDate:date2 timeZone:timeZone4 exceptionDates:v44 limit:0];

            if ([v29 count])
            {
              lastObject = [v29 lastObject];
            }

            else
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:a2 object:self file:@"EKEvent.m" lineNumber:7779 description:@"Unexpected number of occurrences (0) remaining in series after deleting the last remaining occurrence."];

              lastObject = 0;
            }

            v31 = [EKRecurrenceEnd recurrenceEndWithEndDate:lastObject];
          }

          [v15 setRecurrenceEnd:v31];
          v13 = 1;
          goto LABEL_28;
        }
      }

      if (v41)
      {
        v41 = 1;
      }

      else
      {
        v41 = [(EKRecurrenceGenerator *)v45 occurrenceDate:originalOccurrenceStartDate matchesRecurrenceRule:v15 forEvent:self includeDetachedEventsInSeries:1];
      }

LABEL_28:

LABEL_29:
    }

    v43 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  }

  while (v43);

  if (v41)
  {
    [(EKCalendarItem *)self _addExceptionDate:date];
  }

LABEL_34:
  recurrenceRules2 = [(EKCalendarItem *)self recurrenceRules];
  v34 = [recurrenceRules2 count] == 0;

  if (v34)
  {
    [(EKEvent *)self _updateSelfFromDetachedEventIfNeededForDelete];
  }

  if (v13)
  {
    [(EKEvent *)self _filterExceptionDatesAndDetachments];
  }

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t __32__EKEvent__deleteThisOccurrence__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3 + 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)_cancelWithSpan:(int64_t)span error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  switch(span)
  {
    case 4:
      [(EKEvent *)self setStatus:3, error];
      [(EKEvent *)self _cancelDetachedEvents];
      v17 = 1;
      goto LABEL_11;
    case 3:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = currentHandler;
      v35 = @"EKSpanAutomaticChange not allowed here";
      v36 = a2;
      selfCopy2 = self;
      v38 = 7858;
      break;
    case 2:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = currentHandler;
      v35 = @"EKSpanEveryOccurrenceUnlessAlreadyDetached not allowed here";
      v36 = a2;
      selfCopy2 = self;
      v38 = 7859;
      break;
    default:
      goto LABEL_4;
  }

  [currentHandler handleFailureInMethod:v36 object:selfCopy2 file:@"EKEvent.m" lineNumber:v38 description:v35];

LABEL_4:
  if ([(EKCalendarItem *)self _hadRecurrenceRules])
  {
    originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
    date = [originalOccurrenceStartDate date];

    occurrenceStartDate = [(EKEvent *)self occurrenceStartDate];
    date2 = [occurrenceStartDate date];

    if ([(EKEvent *)self isFloating])
    {
      eventStore = [(EKObject *)self eventStore];
      timeZone = [eventStore timeZone];
      v13 = [date dateInTimeZone:0 fromTimeZone:timeZone];

      eventStore2 = [(EKObject *)self eventStore];
      timeZone2 = [eventStore2 timeZone];
      v16 = [date2 dateInTimeZone:0 fromTimeZone:timeZone2];

      date2 = v16;
      date = v13;
    }

    [(EKEvent *)self _detachOrSliceWithSpan:span withOriginalStartDate:date newStartDate:date2];
    [(EKObject *)self insertPersistentObjectIfNeeded];
  }

  [(EKEvent *)self setStatus:3];
  if (span == 1)
  {
    v17 = 0;
LABEL_11:
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    eventStore3 = [(EKObject *)self eventStore];
    v19 = [eventStore3 eventsWithSameRecurrenceSetAsEvent:self];

    v20 = [v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v40;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v39 + 1) + 8 * i);
          eventOccurrenceID = [v24 eventOccurrenceID];
          eventOccurrenceID2 = [(EKEvent *)self eventOccurrenceID];
          v27 = [eventOccurrenceID isEqualToString:eventOccurrenceID2];

          if ((v27 & 1) == 0)
          {
            if ((v17 & 1) != 0 || ([v24 startDate], v28 = objc_claimAutoreleasedReturnValue(), -[EKEvent startDate](self, "startDate"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "isAfterDate:", v29), v29, v28, v30))
            {
              [v24 setStatus:3];
              if (([v24 modifiedProperties] & 0x200) != 0)
              {
                [v24 setModifiedProperties:{objc_msgSend(v24, "modifiedProperties") & 0xFFFFFDFFLL}];
              }

              [(EKObject *)self addCoCommitObject:v24];
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v21);
    }
  }

  if (([(EKCalendarItem *)self modifiedProperties]& 0x200) != 0)
  {
    [(EKCalendarItem *)self setModifiedProperties:[(EKCalendarItem *)self modifiedProperties]& 0xFFFFFDFFLL];
  }

  v31 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)_cancelDetachedEvents
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  detachedItems = [(EKCalendarItem *)self detachedItems];
  v3 = [detachedItems countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(detachedItems);
        }

        [*(*(&v8 + 1) + 8 * v6++) setStatus:3];
      }

      while (v4 != v6);
      v4 = [detachedItems countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_validateSpanForRemove:(int64_t)remove error:(id *)error
{
  result = 1;
  if (remove >= 2 && remove != 2 && remove != 4)
  {
    if (error)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:13];
      v7 = v6;
      result = 0;
      *error = v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)removeWithSpan:(int64_t)span error:(id *)error
{
  spanCopy = span;
  v29 = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_class() _validateSpanForRemove:span error:error];
  if (!v7)
  {
    goto LABEL_36;
  }

  if (-[EKEvent isDetached](self, "isDetached") && ![objc_opt_class() _allowSlicingFromDetachedOccurrence])
  {
    spanCopy = 0;
  }

  if (![(EKEvent *)self isOrWasPartOfRecurringSeries])
  {
    recurrenceSet = [(EKEvent *)self recurrenceSet];

    if (!recurrenceSet)
    {
LABEL_12:
      spanCopy = 4;
      goto LABEL_14;
    }
  }

  if (!spanCopy)
  {
    goto LABEL_10;
  }

  if (spanCopy == 2)
  {
    if ([(EKEvent *)self isDetached])
    {
LABEL_10:
      if ([(EKEvent *)self _eventIsTheOnlyRemainingOccurrence])
      {
        recurrenceSet2 = [(EKEvent *)self recurrenceSet];
        v10 = recurrenceSet2 == 0;

        spanCopy = 4 * v10;
      }

      else
      {
        spanCopy = 0;
      }

      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ([(EKEvent *)self isFirstOccurrenceIncludingSlices]&& spanCopy == 1)
  {
    spanCopy = 4;
  }

  if ([(EKEvent *)self _shouldCancelInsteadOfDeleteWithSpan:spanCopy])
  {
    v7 = [(EKEvent *)self _cancelWithSpan:spanCopy error:error];
    if (!v7)
    {
      goto LABEL_36;
    }
  }

  else if ([(EKEvent *)self _shouldDeclineInsteadOfDelete])
  {
    recurrenceSet3 = [(EKEvent *)self recurrenceSet];

    if (recurrenceSet3)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      eventStore = [(EKObject *)self eventStore];
      v13 = [eventStore eventsWithSameRecurrenceSetAsEvent:self];

      v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v24 + 1) + 8 * i);
            [v18 setParticipationStatus:3];
            [v18 setInvitationStatus:0];
            eventOccurrenceID = [v18 eventOccurrenceID];
            eventOccurrenceID2 = [(EKEvent *)self eventOccurrenceID];
            v21 = [eventOccurrenceID isEqualToString:eventOccurrenceID2];

            if ((v21 & 1) == 0)
            {
              [(EKObject *)self addCoCommitObject:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v15);
      }
    }

    else
    {
      [(EKEvent *)self setParticipationStatus:3];
      [(EKEvent *)self setInvitationStatus:0];
    }
  }

  else
  {
    [(EKEvent *)self _deleteWithSpan:spanCopy];
  }

  [(EKObject *)self updatePersistentObject];
  if (!spanCopy)
  {
    [(EKObject *)self clearCachedValueForKey:@"isFirstOccurrenceIncludingSlices"];
  }

  LOBYTE(v7) = 1;
LABEL_36:
  v22 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isFirstOccurrenceIncludingSlices
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__EKEvent_isFirstOccurrenceIncludingSlices__block_invoke;
  v5[3] = &unk_1E77FCF40;
  v5[4] = self;
  v2 = [(EKObject *)self cachedValueForKey:@"isFirstOccurrenceIncludingSlices" populateBlock:v5];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

id __43__EKEvent_isFirstOccurrenceIncludingSlices__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) originalItem];
  v3 = [*(a1 + 32) eventStore];
  v4 = v3;
  v5 = v2;
  if (!v2)
  {
    v5 = *(a1 + 32);
  }

  v6 = [v3 eventsWithSameRecurrenceSetAsEvent:v5];

  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_392];
  if (![v7 count])
  {
    goto LABEL_8;
  }

  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v8 startDate];
  v10 = [*(a1 + 32) originalStartDate];
  if (!v10)
  {
    v10 = [*(a1 + 32) startDate];
  }

  v11 = v10;
  v12 = [v9 isBeforeDate:v10];

  if (v12)
  {
    v13 = MEMORY[0x1E695E110];
  }

  else
  {
LABEL_8:
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "_noRemainingEarlierOccurrences")}];
  }

  return v13;
}

uint64_t __43__EKEvent_isFirstOccurrenceIncludingSlices__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)masterEvent
{
  originalItem = [(EKCalendarItem *)self originalItem];
  if (originalItem || ([(EKCalendarItem *)self _hadRecurrenceRules]|| [(EKEvent *)self isPhantom]) && (originalItem = self) != 0)
  {
    v4 = originalItem;
    v5 = [EKEvent alloc];
    persistentObject = [(EKObject *)v4 persistentObject];
    v7 = [(EKEvent *)v5 initWithPersistentObject:persistentObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_eventIsTheOnlyRemainingOccurrence
{
  v47 = *MEMORY[0x1E69E9840];
  if ([(EKEvent *)self isDetached])
  {
    selfCopy = [(EKCalendarItem *)self originalItem];
  }

  else
  {
    if (![(EKCalendarItem *)self hasRecurrenceRules])
    {
      v6 = 1;
      goto LABEL_32;
    }

    selfCopy = self;
  }

  v4 = selfCopy;
  if ([(EKEvent *)selfCopy isPhantom])
  {
    detachedItems = [(EKCalendarItem *)v4 detachedItems];
    v6 = [detachedItems count] < 2;
  }

  else
  {
    eventStore = [(EKObject *)self eventStore];
    v8 = [eventStore eventsWithSameRecurrenceSetAsEvent:v4];
    v9 = [v8 count];

    if (v9 <= 1)
    {
      originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
      date = [originalOccurrenceStartDate date];
      if ([(EKEvent *)self isFloating])
      {
        eventStore2 = [(EKObject *)self eventStore];
        timeZone = [eventStore2 timeZone];
        v14 = [date dateInTimeZone:0 fromTimeZone:timeZone];

        date = v14;
      }

      exceptionDates = [(EKCalendarItem *)v4 exceptionDates];
      if (exceptionDates)
      {
        v16 = exceptionDates;
        exceptionDates2 = [(EKCalendarItem *)v4 exceptionDates];
        v18 = [exceptionDates2 setByAddingObject:date];
      }

      else
      {
        v18 = [MEMORY[0x1E695DFD8] setWithObject:date];
      }

      v19 = [v18 count];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = [(EKCalendarItem *)v4 recurrenceRules];
      v20 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v20)
      {
        v21 = v20;
        v36 = date;
        v37 = originalOccurrenceStartDate;
        v40 = v19 + 2;
        v41 = v18;
        v39 = *v43;
        v22 = *MEMORY[0x1E6992600];
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v43 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v42 + 1) + 8 * i);
            v25 = objc_alloc_init(EKRecurrenceGenerator);
            v26 = [(EKEvent *)self committedValueForKey:v22];
            bOOLValue = [v26 BOOLValue];

            if (bOOLValue)
            {
              eventStore3 = [(EKObject *)self eventStore];
              timeZone2 = [eventStore3 timeZone];
            }

            else
            {
              timeZone2 = [(EKCalendarItem *)v4 timeZone];
            }

            distantPast = [MEMORY[0x1E695DF00] distantPast];
            distantFuture = [MEMORY[0x1E695DF00] distantFuture];
            v32 = [(EKRecurrenceGenerator *)v25 copyOccurrenceDatesWithEKEvent:v4 recurrenceRule:v24 startDate:distantPast endDate:distantFuture timeZone:timeZone2 exceptionDates:v41 limit:v40];

            v33 = [v32 count];
            if (v33)
            {
              v6 = 0;
              goto LABEL_28;
            }
          }

          v21 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }

        v6 = 1;
LABEL_28:
        date = v36;
        originalOccurrenceStartDate = v37;
        v18 = v41;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_32:
  v34 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_noRemainingEarlierOccurrences
{
  if (![(EKEvent *)self isOrWasPartOfRecurringSeries])
  {
    return 1;
  }

  v3 = [(EKEvent *)self committedValueForKey:*MEMORY[0x1E6992600]];
  bOOLValue = [v3 BOOLValue];

  v5 = [(EKEvent *)self isFloating]& (bOOLValue ^ 1);
  if (v5)
  {
    eventStore = [(EKObject *)self eventStore];
    timeZone = [eventStore timeZone];
  }

  else
  {
    timeZone = [(EKCalendarItem *)self timeZone];
  }

  originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
  date = [originalOccurrenceStartDate date];

  if (v5)
  {
    v11 = [date dateInTimeZone:0 fromTimeZone:timeZone];

    date = v11;
  }

  if ([(EKEvent *)self isDetached])
  {
    selfCopy = [(EKCalendarItem *)self originalItem];
  }

  else
  {
    selfCopy = self;
  }

  v13 = selfCopy;
  eventStore2 = [(EKObject *)self eventStore];
  v15 = [eventStore2 eventsWithSameRecurrenceSetAsEvent:v13];

  v32 = v15;
  v16 = [v15 sortedArrayUsingComparator:&__block_literal_global_394];
  if (![v16 count])
  {
    goto LABEL_14;
  }

  v17 = [v16 objectAtIndexedSubscript:0];
  startDate = [v17 startDate];
  startDate2 = [(EKEvent *)v13 startDate];
  v20 = [startDate isBeforeDate:startDate2];

  if (v20)
  {
    v8 = 0;
  }

  else
  {
LABEL_14:
    v31 = timeZone;
    recurrenceRules = [(EKCalendarItem *)v13 recurrenceRules];
    firstObject = [recurrenceRules firstObject];

    exceptionDates = [(EKCalendarItem *)v13 exceptionDates];
    v24 = [exceptionDates count] + 1;
    v25 = objc_alloc_init(EKRecurrenceGenerator);
    if (bOOLValue)
    {
      eventStore3 = [(EKObject *)self eventStore];
      timeZone2 = [eventStore3 timeZone];
    }

    else
    {
      timeZone2 = [(EKCalendarItem *)v13 timeZone];
    }

    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v29 = [(EKRecurrenceGenerator *)v25 copyOccurrenceDatesWithEKEvent:v13 recurrenceRule:firstObject startDate:distantPast endDate:date timeZone:timeZone2 exceptionDates:exceptionDates limit:v24];

    v8 = [v29 count] == 0;
    timeZone = v31;
  }

  return v8;
}

uint64_t __41__EKEvent__noRemainingEarlierOccurrences__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)rebaseToEventStore:(id)store
{
  storeCopy = store;
  constraints = [(EKEvent *)self constraints];
  requiresSeparateFilesForAllAttachments = [constraints requiresSeparateFilesForAllAttachments];

  selfAttendee = [(EKCalendarItem *)self selfAttendee];
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6992918], *MEMORY[0x1E69926F0], *MEMORY[0x1E6992650], 0}];
  [(EKEvent *)self rebaseSkippingRelationProperties:v7 toEventStore:storeCopy];

  if (requiresSeparateFilesForAllAttachments)
  {
    [(EKEvent *)self _recursivelyAssignAllAttachmentsNewIdentities];
  }

  if (selfAttendee)
  {
    [(EKEvent *)self _updateSelfAttendeeToMatchSelfAttendee:selfAttendee];
  }
}

- (void)rebaseSkippingRelationProperties:(id)properties toEventStore:(id)store
{
  v65 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  storeCopy = store;
  allAlarms = [(EKCalendarItem *)self allAlarms];
  v9 = *MEMORY[0x1E6992558];
  v10 = [propertiesCopy setByAddingObject:*MEMORY[0x1E6992558]];
  v61.receiver = self;
  v61.super_class = EKEvent;
  [(EKObject *)&v61 rebaseSkippingRelationProperties:v10 toEventStore:storeCopy];

  if (([propertiesCopy containsObject:v9] & 1) == 0)
  {
    v44 = propertiesCopy;
    v11 = objc_alloc(MEMORY[0x1E695DF90]);
    selfCopy = self;
    allAlarms2 = [(EKCalendarItem *)self allAlarms];
    v13 = [v11 initWithCapacity:{objc_msgSend(allAlarms2, "count")}];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v43 = allAlarms;
    v14 = allAlarms;
    v15 = [v14 countByEnumeratingWithState:&v57 objects:v64 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v58;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v58 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v57 + 1) + 8 * i);
          if ([v19 isSnoozed])
          {
            originalAlarm = [v19 originalAlarm];
            uUID = [originalAlarm UUID];
            v22 = [v13 objectForKeyedSubscript:uUID];

            if (!v22)
            {
              v22 = objc_opt_new();
              uUID2 = [originalAlarm UUID];
              [v13 setObject:v22 forKeyedSubscript:uUID2];
            }

            [v22 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v16);
    }

    v24 = MEMORY[0x1E695DFA8];
    allAlarms3 = [(EKCalendarItem *)selfCopy allAlarms];
    v26 = [v24 setWithCapacity:{objc_msgSend(allAlarms3, "count")}];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v14;
    v27 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v54;
      v46 = *v54;
      do
      {
        v30 = 0;
        v47 = v28;
        do
        {
          if (*v54 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v53 + 1) + 8 * v30);
          if (([v31 isSnoozed] & 1) == 0)
          {
            v32 = [v31 duplicateToEventStore:storeCopy];
            [v26 addObject:v32];
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            uUID3 = [v31 UUID];
            v34 = v13;
            v35 = [v13 objectForKeyedSubscript:uUID3];

            v36 = [v35 countByEnumeratingWithState:&v49 objects:v62 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v50;
              do
              {
                for (j = 0; j != v37; ++j)
                {
                  if (*v50 != v38)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v40 = [*(*(&v49 + 1) + 8 * j) duplicateToEventStore:storeCopy];
                  [v40 setOriginalAlarm:v32];
                  [v26 addObject:v40];
                }

                v37 = [v35 countByEnumeratingWithState:&v49 objects:v62 count:16];
              }

              while (v37);
            }

            v13 = v34;
            v29 = v46;
            v28 = v47;
          }

          ++v30;
        }

        while (v30 != v28);
        v28 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v28);
    }

    allObjects = [v26 allObjects];
    [(EKCalendarItem *)selfCopy setAllAlarms:allObjects];

    allAlarms = v43;
    propertiesCopy = v44;
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)rebaseSkippingRelationProperties:(id)properties
{
  propertiesCopy = properties;
  constraints = [(EKEvent *)self constraints];
  if ([constraints requiresSeparateFilesForAllAttachments])
  {
    v6 = [propertiesCopy containsObject:*MEMORY[0x1E6992560]];

    v7.receiver = self;
    v7.super_class = EKEvent;
    [(EKObject *)&v7 rebaseSkippingRelationProperties:propertiesCopy];

    if ((v6 & 1) == 0)
    {
      [(EKEvent *)self _recursivelyAssignAllAttachmentsNewIdentities];
    }
  }

  else
  {

    v7.receiver = self;
    v7.super_class = EKEvent;
    [(EKObject *)&v7 rebaseSkippingRelationProperties:propertiesCopy];
  }
}

- (void)_recursivelyAssignAllAttachmentsNewIdentities
{
  v14 = *MEMORY[0x1E69E9840];
  [(EKEvent *)self _assignAllAttachmentsNewIdentities];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  detachedItems = [(EKCalendarItem *)self detachedItems];
  v4 = [detachedItems countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(detachedItems);
        }

        [*(*(&v9 + 1) + 8 * v7++) _assignAllAttachmentsNewIdentities];
      }

      while (v5 != v7);
      v5 = [detachedItems countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_assignAllAttachmentsNewIdentities
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  attachments = [(EKCalendarItem *)self attachments];
  v3 = [attachments countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(attachments);
        }

        [*(*(&v8 + 1) + 8 * v6++) assignNewIdentity];
      }

      while (v4 != v6);
      v4 = [attachments countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldPreserveFutureWhenSlicingWithStartDate:(id)date newStartDate:(id)startDate
{
  v4 = [(EKEvent *)self constraints:date];
  supportsRecurrenceSplit = [v4 supportsRecurrenceSplit];

  return supportsRecurrenceSplit;
}

- (void)_detachOrSliceWithSpan:(int64_t)span withOriginalStartDate:(id)date newStartDate:(id)startDate
{
  selfCopy = self;
  startDateCopy = startDate;
  dateCopy = date;
  v17 = selfCopy;
  if ([(EKEvent *)selfCopy isDetached])
  {
    if (!span)
    {
      v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot detach an already detached occurrence" userInfo:0];
      [v11 raise];
    }

    v12 = [EKEvent alloc];
    originalItem = [(EKCalendarItem *)selfCopy originalItem];
    persistentObject = [originalItem persistentObject];
    originalStartDate = [(EKEvent *)selfCopy originalStartDate];
    v17 = [(EKEvent *)v12 initWithPersistentObject:persistentObject occurrenceDate:originalStartDate];

    if ([(EKObject *)selfCopy _hasChangesForKey:*MEMORY[0x1E6992648]])
    {
      recurrenceRules = [(EKCalendarItem *)selfCopy recurrenceRules];
      [(EKEvent *)v17 setRecurrenceRules:recurrenceRules];
    }
  }

  [objc_opt_class() _detachOrSliceEvent:v17 withSpan:span savingEvent:selfCopy withOriginalStartDate:dateCopy newStartDate:startDateCopy];

  selfCopy->_isMainOccurrence = ![(EKEvent *)selfCopy isDetached];
}

+ (void)_detachOrSliceEvent:(id)event withSpan:(int64_t)span savingEvent:(id)savingEvent withOriginalStartDate:(id)date newStartDate:(id)startDate
{
  v198 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  savingEventCopy = savingEvent;
  dateCopy = date;
  startDateCopy = startDate;
  if (span == 1)
  {
    v15 = [savingEventCopy _shouldPreserveFutureWhenSlicingWithStartDate:dateCopy newStartDate:startDateCopy];
  }

  else
  {
    v15 = 0;
  }

  isFirstOccurrence = [savingEventCopy isFirstOccurrence];
  v154 = [dateCopy isEqual:startDateCopy];
  originalStartDate = [savingEventCopy originalStartDate];
  v17 = originalStartDate;
  if (originalStartDate)
  {
    v18 = originalStartDate;
  }

  else
  {
    v18 = dateCopy;
  }

  v157 = v18;

  masterEvent = [savingEventCopy masterEvent];
  selfAttendee = [eventCopy selfAttendee];
  attendees = [eventCopy attendees];
  alarms = [eventCopy alarms];
  recurrenceRules = [eventCopy recurrenceRules];
  v21 = *MEMORY[0x1E6992918];
  v22 = *MEMORY[0x1E69926F0];
  v23 = *MEMORY[0x1E6992650];
  v156 = v15;
  if (v15)
  {
    v153 = *MEMORY[0x1E6992598];
    v24 = [MEMORY[0x1E695DFD8] setWithObjects:{v21, v22, *MEMORY[0x1E6992598], v23, 0}];
    [masterEvent rebaseSkippingRelationProperties:v24];

    _generateNewUniqueID = [eventCopy _generateNewUniqueID];
    [masterEvent setUniqueID:_generateNewUniqueID];

    [savingEventCopy addCoCommitObject:masterEvent];
  }

  else
  {
    v153 = *MEMORY[0x1E6992598];
    v26 = [MEMORY[0x1E695DFA8] setWithObjects:{v21, v22, *MEMORY[0x1E6992568], v23, *MEMORY[0x1E69925A0], *MEMORY[0x1E6992598], *MEMORY[0x1E6992558], 0}];
    v27 = v26;
    if (!span)
    {
      [v26 addObject:*MEMORY[0x1E6992648]];
    }

    persistentObject = [eventCopy persistentObject];
    [eventCopy rebaseSkippingRelationProperties:v27];
    persistentObject2 = [eventCopy persistentObject];
    [persistentObject2 addCoCommitObject:persistentObject];

    allObjects = [v27 allObjects];
    [eventCopy emptyMeltedCacheForKeys:allObjects];

    _generateNewUniqueID2 = [eventCopy _generateNewUniqueID];
    [eventCopy setUniqueID:_generateNewUniqueID2];

    if (savingEventCopy != eventCopy)
    {
      [savingEventCopy addCoCommitObject:eventCopy];
      if ([savingEventCopy _hasChangesForKey:*MEMORY[0x1E6992570]])
      {
        calendar = [savingEventCopy calendar];
        [eventCopy setCalendar:calendar];
      }
    }

    v15 = 0;
  }

  if (span == 1)
  {
    recurrenceSet = [eventCopy recurrenceSet];

    if (!recurrenceSet)
    {
      recurrenceSet2 = [masterEvent recurrenceSet];

      if (recurrenceSet2)
      {
        recurrenceSet3 = [masterEvent recurrenceSet];
        [eventCopy setRecurrenceSet:recurrenceSet3];
      }

      else
      {
        recurrenceSet3 = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [recurrenceSet3 UUIDString];
        [eventCopy setRecurrenceSet:uUIDString];
      }
    }

    recurrenceSet4 = [eventCopy recurrenceSet];
    [masterEvent setRecurrenceSet:recurrenceSet4];
  }

  [savingEventCopy setStartDateRaw:startDateCopy];
  [savingEventCopy duration];
  v38 = [startDateCopy dateByAddingTimeInterval:?];
  [savingEventCopy setEndDateRaw:v38];

  if (eventCopy != savingEventCopy)
  {
    [eventCopy setStartDateRaw:v157];
    [masterEvent duration];
    v39 = [v157 dateByAddingTimeInterval:?];
    [eventCopy setEndDateRaw:v39];
  }

  v146 = savingEventCopy;
  spanCopy = span;
  v151 = masterEvent;
  if (v15)
  {
    [masterEvent _updateSelfAttendeeToMatchSelfAttendee:selfAttendee];
  }

  else
  {
    [eventCopy setAttendees:MEMORY[0x1E695E0F0]];
    constraints = [eventCopy constraints];
    attendeesUseDeletedByOrganizerStatus = [constraints attendeesUseDeletedByOrganizerStatus];

    if (attendeesUseDeletedByOrganizerStatus)
    {
      v136 = selfAttendee;
      v138 = startDateCopy;
      v140 = dateCopy;
      v42 = MEMORY[0x1E695DFD8];
      v43 = [attendees valueForKey:*MEMORY[0x1E6992B08]];
      v44 = [v42 setWithArray:v43];

      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      attendees2 = [masterEvent attendees];
      v46 = [attendees2 countByEnumeratingWithState:&v186 objects:v197 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v187;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v187 != v48)
            {
              objc_enumerationMutation(attendees2);
            }

            v50 = *(*(&v186 + 1) + 8 * i);
            uUID = [v50 UUID];
            v52 = [v44 containsObject:uUID];

            if ((v52 & 1) == 0)
            {
              v53 = [EKAttendee alloc];
              persistentObject3 = [v50 persistentObject];
              v55 = [(EKObject *)v53 initWithPersistentObject:persistentObject3];

              [(EKObject *)v55 rebase];
              [(EKAttendee *)v55 setParticipantStatus:-1];
              [eventCopy addAttendee:v55];
            }
          }

          v47 = [attendees2 countByEnumeratingWithState:&v186 objects:v197 count:16];
        }

        while (v47);
      }

      startDateCopy = v138;
      dateCopy = v140;
      selfAttendee = v136;
    }

    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v56 = attendees;
    v57 = [v56 countByEnumeratingWithState:&v182 objects:v196 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v183;
      do
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v183 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = *(*(&v182 + 1) + 8 * j);
          v62 = [v61 isEqual:selfAttendee];
          [v61 rebase];
          [eventCopy addAttendee:v61];
          if (v62)
          {
            [eventCopy setSelfAttendee:selfAttendee];
            persistentObject4 = [v61 persistentObject];
            [selfAttendee setPersistentObject:persistentObject4];

            [selfAttendee _resetAfterUpdatingChangeSetOrBackingObject];
          }
        }

        v58 = [v56 countByEnumeratingWithState:&v182 objects:v196 count:16];
      }

      while (v58);
    }

    [eventCopy setAllAlarms:MEMORY[0x1E695E0F0]];
    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    v64 = alarms;
    v65 = [v64 countByEnumeratingWithState:&v178 objects:v195 count:16];
    masterEvent = v151;
    if (v65)
    {
      v66 = v65;
      v67 = *v179;
      do
      {
        for (k = 0; k != v66; ++k)
        {
          if (*v179 != v67)
          {
            objc_enumerationMutation(v64);
          }

          v69 = *(*(&v178 + 1) + 8 * k);
          [v69 rebaseForDetachment];
          [eventCopy addAlarm:v69];
        }

        v66 = [v64 countByEnumeratingWithState:&v178 objects:v195 count:16];
      }

      while (v66);
    }

    savingEventCopy = v146;
    span = spanCopy;
    v15 = v156;
  }

  if (span == 1)
  {
    if (eventCopy == savingEventCopy)
    {
      v70 = v154;
    }

    else
    {
      v70 = 1;
    }

    if (v70)
    {
      if (v15)
      {
        exceptionDates = [eventCopy exceptionDates];
        v174 = 0u;
        v175 = 0u;
        v176 = 0u;
        v177 = 0u;
        v72 = [exceptionDates countByEnumeratingWithState:&v174 objects:v194 count:16];
        if (v72)
        {
          v73 = v72;
          v74 = *v175;
          do
          {
            for (m = 0; m != v73; ++m)
            {
              if (*v175 != v74)
              {
                objc_enumerationMutation(exceptionDates);
              }

              v76 = *(*(&v174 + 1) + 8 * m);
              if ([v76 CalIsBeforeDate:v157])
              {
                [eventCopy _removeExceptionDate:v76];
              }
            }

            v73 = [exceptionDates countByEnumeratingWithState:&v174 objects:v194 count:16];
          }

          while (v73);
        }
      }

      else
      {
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        exceptionDates = [masterEvent exceptionDates];
        v77 = [exceptionDates countByEnumeratingWithState:&v170 objects:v193 count:16];
        if (v77)
        {
          v78 = v77;
          v79 = *v171;
          do
          {
            for (n = 0; n != v78; ++n)
            {
              if (*v171 != v79)
              {
                objc_enumerationMutation(exceptionDates);
              }

              v81 = *(*(&v170 + 1) + 8 * n);
              if ([v81 CalIsAfterDate:v157])
              {
                [eventCopy _addExceptionDate:v81];
              }
            }

            v78 = [exceptionDates countByEnumeratingWithState:&v170 objects:v193 count:16];
          }

          while (v78);
        }
      }
    }

    else
    {
      [eventCopy setExceptionDates:0];
    }

    v139 = startDateCopy;
    v141 = dateCopy;
    v155 = eventCopy;
    startDate = [masterEvent startDate];
    timeZone = [masterEvent timeZone];
    if (!timeZone)
    {
      timeZone = CalTimeZoneCopyCFTimeZone();
    }

    v137 = selfAttendee;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v82 = recurrenceRules;
    v83 = [v82 countByEnumeratingWithState:&v166 objects:v192 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v167;
      do
      {
        for (ii = 0; ii != v84; ++ii)
        {
          if (*v167 != v85)
          {
            objc_enumerationMutation(v82);
          }

          v87 = *(*(&v166 + 1) + 8 * ii);
          recurrenceEnd = [v87 recurrenceEnd];
          endDate = [recurrenceEnd endDate];
          if (endDate && (v90 = endDate, [recurrenceEnd endDate], v91 = objc_claimAutoreleasedReturnValue(), v92 = objc_msgSend(v91, "CalIsBeforeDate:", v157), v91, v90, v92))
          {
            [v155 removeRecurrenceRule:v87];
          }

          else if ([recurrenceEnd occurrenceCount])
          {
            occurrenceCount = [recurrenceEnd occurrenceCount];
            v94 = objc_alloc_init(EKRecurrenceGenerator);
            v95 = [v157 dateByAddingTimeInterval:-1.0];
            LOBYTE(v135) = 0;
            v96 = [(EKRecurrenceGenerator *)v94 copyOccurrenceDatesWithEKEvent:v151 recurrenceRule:v87 startDate:startDate endDate:v95 timeZone:timeZone exceptionDates:0 limit:0 adjustDatesForAllDayEvents:v135];

            v97 = [v96 count];
            if (occurrenceCount == v97)
            {
              [v155 removeRecurrenceRule:v87];
            }

            else
            {
              v98 = [EKRecurrenceEnd recurrenceEndWithOccurrenceCount:occurrenceCount - v97];
              [v87 setRecurrenceEnd:v98];
            }
          }
        }

        v84 = [v82 countByEnumeratingWithState:&v166 objects:v192 count:16];
      }

      while (v84);
    }

    if (v156)
    {
      v99 = v155;
    }

    else
    {
      v99 = v151;
    }

    if (v156)
    {
      v100 = v151;
    }

    else
    {
      v100 = v155;
    }

    v101 = v99;
    v102 = v100;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v152 = v101;
    detachedItems = [v101 detachedItems];
    v104 = [detachedItems countByEnumeratingWithState:&v162 objects:v191 count:16];
    savingEventCopy = v146;
    if (v104)
    {
      v105 = v104;
      v106 = *v163;
      v148 = *MEMORY[0x1E6992630];
      do
      {
        for (jj = 0; jj != v105; ++jj)
        {
          if (*v163 != v106)
          {
            objc_enumerationMutation(detachedItems);
          }

          v108 = *(*(&v162 + 1) + 8 * jj);
          v109 = v108;
          if ([v108 isEqual:v146])
          {
            v109 = v146;
          }

          originalStartDate2 = [v109 originalStartDate];
          if (v156 == [originalStartDate2 CalIsBeforeDate:v157])
          {
            [v152 _removeDetachedItem:v108];
            persistentObject5 = [v109 persistentObject];
            isNew = [persistentObject5 isNew];

            if ((isNew & 1) == 0)
            {
              persistentObject6 = [v109 persistentObject];
              [v109 rebase];
              eventStore = [v155 eventStore];
              [eventStore _deleteObject:persistentObject6];

              persistentObject7 = [v146 persistentObject];
              [persistentObject7 addCoCommitObject:persistentObject6];
            }

            frozenObject = [v109 frozenObject];
            [v102 addMultiChangedObjectValue:frozenObject forKey:v153];

            [v109 setOriginalItem:v102];
            v117 = objc_opt_class();
            calendar2 = [v102 calendar];
            v119 = [v117 generateUniqueIDWithEvent:v109 originalEvent:v102 calendar:calendar2];
            [v109 setUniqueID:v119];

            if (v109 != v146)
            {
              v120 = [MEMORY[0x1E695DFD8] setWithObject:v148];
              [v109 updatePersistentObjectSkippingProperties:v120];

              [v109 insertPersistentObjectIfNeeded];
            }
          }
        }

        v105 = [detachedItems countByEnumeratingWithState:&v162 objects:v191 count:16];
      }

      while (v105);
    }

    [v102 emptyMeltedCacheForKey:v153];
    masterEvent = v151;
    [v151 _deleteFromOccurrenceDateOnward:v157 includeSlices:0];

    eventCopy = v155;
    startDateCopy = v139;
    dateCopy = v141;
    selfAttendee = v137;
    span = spanCopy;
  }

  if (isFirstOccurrence)
  {
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    alarms2 = [masterEvent alarms];
    v122 = [alarms2 countByEnumeratingWithState:&v158 objects:v190 count:16];
    if (v122)
    {
      v123 = v122;
      v124 = *v159;
      do
      {
        for (kk = 0; kk != v123; ++kk)
        {
          if (*v159 != v124)
          {
            objc_enumerationMutation(alarms2);
          }

          v126 = *(*(&v158 + 1) + 8 * kk);
          if ([v126 isAbsolute])
          {
            [masterEvent removeAlarm:v126];
          }
        }

        v123 = [alarms2 countByEnumeratingWithState:&v158 objects:v190 count:16];
      }

      while (v123);
    }

    savingEventCopy = v146;
    span = spanCopy;
  }

  if (span)
  {
    [masterEvent _updatePersistentObjectOfSelfAndDetachedItemsExceptForSavingItem:savingEventCopy];
    [masterEvent updatePersistentValueForKeyIfNeeded:v153];
  }

  else
  {
    frozenObject2 = [eventCopy frozenObject];
    [masterEvent addMultiChangedObjectValue:frozenObject2 forKey:v153];

    [masterEvent emptyMeltedCacheForKey:v153];
    [eventCopy setOriginalItem:masterEvent];
    [eventCopy setOriginalStartDate:dateCopy];
    v128 = objc_opt_class();
    calendar3 = [masterEvent calendar];
    v130 = [v128 generateUniqueIDWithEvent:eventCopy originalEvent:masterEvent calendar:calendar3];
    [eventCopy setUniqueID:v130];

    v131 = [MEMORY[0x1E695DFD8] setWithObject:v153];
    [masterEvent updatePersistentObjectSkippingProperties:v131];
  }

  eventStore2 = [eventCopy eventStore];
  [eventStore2 _addObjectToPendingCommits:masterEvent];

  [savingEventCopy emptyMeltedCacheForKey:*MEMORY[0x1E6992630]];
  if (eventCopy != savingEventCopy)
  {
    [eventCopy _updatePersistentObjectOfSelfAndDetachedItemsExceptForSavingItem:savingEventCopy];
    [eventCopy updatePersistentValueForKeyIfNeeded:v153];
    eventStore3 = [eventCopy eventStore];
    [eventStore3 _addObjectToPendingCommits:eventCopy];
  }

  v134 = *MEMORY[0x1E69E9840];
}

- (id)privacyLevelString
{
  privacyLevel = [(EKEvent *)self privacyLevel];
  if (privacyLevel > 3)
  {
    return 0;
  }

  else
  {
    return off_1E77FF370[privacyLevel];
  }
}

- (void)setSuggestionInfo:(id)info
{
  v4 = *MEMORY[0x1E69929E8];
  infoCopy = info;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:infoCopy forKey:v4 frozenClass:objc_opt_class()];
}

- (BOOL)_fetchedEventIsConflict:(id)conflict forStartDate:(id)date endDate:(id)endDate
{
  conflictCopy = conflict;
  dateCopy = date;
  endDateCopy = endDate;
  uniqueId = [(EKEvent *)self uniqueId];
  v12 = [uniqueId componentsSeparatedByString:@"/RID="];
  firstObject = [v12 firstObject];

  uniqueId2 = [conflictCopy uniqueId];
  v15 = [uniqueId2 componentsSeparatedByString:@"/RID="];
  firstObject2 = [v15 firstObject];

  if (([firstObject isEqual:firstObject2] & 1) == 0 && objc_msgSend(conflictCopy, "status") != 3 && objc_msgSend(conflictCopy, "participationStatus") != 3 && (objc_msgSend(conflictCopy, "status") || (objc_msgSend(conflictCopy, "isAllDay") & 1) == 0) && (!objc_msgSend(conflictCopy, "status") || objc_msgSend(conflictCopy, "availability") != 1))
  {
    endDateUnadjustedForLegacyClients = [conflictCopy endDateUnadjustedForLegacyClients];
    if ([endDateUnadjustedForLegacyClients isEqualToDate:dateCopy])
    {
    }

    else
    {
      startDate = [conflictCopy startDate];
      v19 = [startDate isEqualToDate:endDateCopy];

      if (!v19)
      {
        v20 = 1;
        goto LABEL_12;
      }
    }
  }

  v20 = 0;
LABEL_12:

  return v20;
}

- (id)potentialConflictOccurrenceDatesInTimePeriod:(double *)period
{
  v22[1] = *MEMORY[0x1E69E9840];
  if ([(EKEvent *)self isAllDay]|| ([(EKEvent *)self endDateUnadjustedForLegacyClients], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v7 = 0;
  }

  else
  {
    startDate = [(EKEvent *)self startDate];
    v22[0] = startDate;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

    recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
    firstObject = [recurrenceRules firstObject];

    v10 = 0;
    if (firstObject && [firstObject frequency] != 3)
    {
      frequency = [firstObject frequency];
      if (frequency > 2)
      {
        v12 = 1;
        v10 = 0x417E133800000000;
      }

      else
      {
        v10 = qword_1A81C3DB8[frequency];
        v12 = qword_1A81C3DD0[frequency];
      }

      v13 = objc_alloc_init(EKRecurrenceGenerator);
      startCalendarDate = [(EKEvent *)self startCalendarDate];
      date = [startCalendarDate date];
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      timeZone = [(EKCalendarItem *)self timeZone];
      v18 = [(EKRecurrenceGenerator *)v13 copyOccurrenceDatesWithEKEvent:self recurrenceRule:firstObject startDate:date endDate:distantFuture timeZone:timeZone limit:v12];

      if ([v18 count] > v12)
      {
        v19 = [v18 subarrayWithRange:{0, v12}];

        v18 = v19;
      }

      v7 = v18;
    }

    if (period)
    {
      *period = v10;
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)scanForConflicts
{
  v115 = *MEMORY[0x1E69E9840];
  if ([(EKEvent *)self isAllDay]|| ([(EKEvent *)self endDateUnadjustedForLegacyClients], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v43 = [EKConflictDetails infoWithConflicts:0 needsAction:0 event:0];
  }

  else
  {
    calendar = [(EKCalendarItem *)self calendar];
    source = [calendar source];

    v6 = MEMORY[0x1E695DF70];
    v7 = [source calendarsForEntityType:0];
    allObjects = [v7 allObjects];
    v9 = [v6 arrayWithArray:allObjects];

    v75 = source;
    supportsAvailabilityRequests = [source supportsAvailabilityRequests];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v11 = [v9 copy];
    v12 = [v11 countByEnumeratingWithState:&v107 objects:v114 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v108;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v108 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v107 + 1) + 8 * i);
          if (supportsAvailabilityRequests && ![*(*(&v107 + 1) + 8 * i) isAffectingAvailability] || !objc_msgSend(v16, "allowsScheduling") || (objc_msgSend(v16, "isFacebookBirthdayCalendar") & 1) != 0 || (objc_msgSend(v16, "isSubscribedHolidayCalendar") & 1) != 0 || (objc_msgSend(v16, "isSuggestedEventCalendar") & 1) != 0 || objc_msgSend(v16, "isNaturalLanguageSuggestedEventCalendar"))
          {
            [v9 removeObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v107 objects:v114 count:16];
      }

      while (v13);
    }

    v106 = 0.0;
    v17 = [(EKEvent *)self potentialConflictOccurrenceDatesInTimePeriod:&v106];
    v104 = 0;
    v105 = 0;
    CalEventOccurrenceCacheGetIdealRangeAndTimeZone();
    v18 = 0;
    v19 = 0;
    v20 = [v19 dateByAddingTimeInterval:-176400.0];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __27__EKEvent_scanForConflicts__block_invoke;
    aBlock[3] = &unk_1E77FF2D0;
    v21 = v18;
    v102 = v21;
    v74 = v20;
    v103 = v74;
    v22 = _Block_copy(aBlock);
    v82 = v9;
    v78 = v22;
    if ([v17 count] > 1)
    {
      v71 = v21;
      v77 = objc_opt_new();
      endDateUnadjustedForLegacyClients = [(EKEvent *)self endDateUnadjustedForLegacyClients];
      startDate = [(EKEvent *)self startDate];
      [endDateUnadjustedForLegacyClients timeIntervalSinceDate:startDate];
      v47 = v46;

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v73 = v17;
      v48 = v17;
      v88 = [v48 countByEnumeratingWithState:&v93 objects:v112 count:16];
      if (v88)
      {
        obja = 0;
        v49 = 0;
        v50 = *v94;
        v79 = *v94;
        v81 = v48;
        do
        {
          for (j = 0; j != v88; ++j)
          {
            if (*v94 != v50)
            {
              objc_enumerationMutation(v48);
            }

            v52 = *(*(&v93 + 1) + 8 * j);
            v53 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v52 sinceDate:{v47, v71}];
            if (v22[2](v22, v52) && (v22)[2](v22, v53))
            {
              eventStore = [(EKObject *)self eventStore];
              v55 = [eventStore predicateForEventsWithStartDate:v52 endDate:v53 calendars:v9 loadDefaultProperties:0];

              eventStore2 = [(EKObject *)self eventStore];
              v57 = [eventStore2 eventsMatchingPredicate:v55];

              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v58 = v57;
              v59 = [v58 countByEnumeratingWithState:&v89 objects:v111 count:16];
              if (v59)
              {
                v60 = v59;
                v86 = v49;
                v61 = *v90;
                while (2)
                {
                  for (k = 0; k != v60; ++k)
                  {
                    if (*v90 != v61)
                    {
                      objc_enumerationMutation(v58);
                    }

                    if ([(EKEvent *)self _fetchedEventIsConflict:*(*(&v89 + 1) + 8 * k) forStartDate:v52 endDate:v53])
                    {
                      ++obja;
                      [v77 addObject:v52];
                      goto LABEL_53;
                    }
                  }

                  v60 = [v58 countByEnumeratingWithState:&v89 objects:v111 count:16];
                  if (v60)
                  {
                    continue;
                  }

                  break;
                }

LABEL_53:
                v22 = v78;
                v49 = v86;
              }

              ++v49;

              v48 = v81;
              v9 = v82;
              v50 = v79;
            }
          }

          v88 = [v48 countByEnumeratingWithState:&v93 objects:v112 count:16];
        }

        while (v88);
      }

      else
      {
        obja = 0;
        v49 = 0;
      }

      v64 = v49;
      v65 = MEMORY[0x1E6992F70];
      startCalendarDate = [(EKEvent *)self startCalendarDate];
      date = [startCalendarDate date];
      endDateUnadjustedForLegacyClients2 = [v65 rangeWithStartDate:date duration:v106];

      v63 = v77;
      v43 = [EKConflictDetails infoWithConflictsInSeries:obja outOf:v64 withPeriod:endDateUnadjustedForLegacyClients2 conflictingDates:v77];
      v21 = v71;
      v17 = v73;
    }

    else
    {
      startDate2 = [(EKEvent *)self startDate];
      endDateUnadjustedForLegacyClients2 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
      v76 = startDate2;
      if (v22[2](v22, startDate2) && ((v22[2])(v22, endDateUnadjustedForLegacyClients2) & 1) != 0)
      {
        v70 = v21;
        v72 = v17;
        eventStore3 = [(EKObject *)self eventStore];
        startDate3 = [(EKEvent *)self startDate];
        endDateUnadjustedForLegacyClients3 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
        v28 = [eventStore3 predicateForEventsWithStartDate:startDate3 endDate:endDateUnadjustedForLegacyClients3 calendars:v9 loadDefaultProperties:0];

        eventStore4 = [(EKObject *)self eventStore];
        v80 = v28;
        v30 = [eventStore4 eventsMatchingPredicate:v28];

        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        obj = v30;
        v31 = [obj countByEnumeratingWithState:&v97 objects:v113 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = 0;
          v34 = 0;
          v85 = *v98;
          v87 = 0;
          do
          {
            for (m = 0; m != v32; ++m)
            {
              v36 = endDateUnadjustedForLegacyClients2;
              if (*v98 != v85)
              {
                objc_enumerationMutation(obj);
              }

              v37 = *(*(&v97 + 1) + 8 * m);
              startDate4 = [(EKEvent *)self startDate];
              endDateUnadjustedForLegacyClients4 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
              v40 = [(EKEvent *)self _fetchedEventIsConflict:v37 forStartDate:startDate4 endDate:endDateUnadjustedForLegacyClients4];

              if (v40)
              {
                isTentative = [v37 isTentative];
                v33 += isTentative ^ 1;
                v34 += isTentative;
                if (v33 + v34 == 1)
                {
                  v42 = v37;
                }

                else
                {
                  v42 = 0;
                }

                endDateUnadjustedForLegacyClients2 = v36;

                v87 = v42;
              }

              else
              {
                endDateUnadjustedForLegacyClients2 = v36;
              }
            }

            v32 = [obj countByEnumeratingWithState:&v97 objects:v113 count:16];
          }

          while (v32);
        }

        else
        {
          v87 = 0;
          v33 = 0;
          v34 = 0;
        }

        v43 = [EKConflictDetails infoWithConflicts:v33 needsAction:v34 event:v87];

        v9 = v82;
        v21 = v70;
        v17 = v72;
        v63 = v76;
        v22 = v78;
      }

      else
      {
        v43 = [EKConflictDetails infoWithConflicts:0 needsAction:0 event:0];
        v63 = startDate2;
      }
    }
  }

  v68 = *MEMORY[0x1E69E9840];

  return v43;
}

uint64_t __27__EKEvent_scanForConflicts__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 CalIsAfterOrSameAsDate:*(a1 + 32)])
  {
    v4 = [v3 CalIsBeforeOrSameAsDate:*(a1 + 40)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)updateWithGeocodedMapItemAndSaveWithCommit:(id)commit eventStore:(id)store error:(id *)error
{
  storeCopy = store;
  commitCopy = commit;
  structuredLocationWithoutPrediction = [(EKCalendarItem *)self structuredLocationWithoutPrediction];
  duplicate = [structuredLocationWithoutPrediction duplicate];

  [duplicate updateFromMapItem:commitCopy];
  if (![(EKEvent *)self isEditable])
  {
    goto LABEL_6;
  }

  constraints = [(EKEvent *)self constraints];
  if (([constraints supportsStructuredLocations] & 1) == 0)
  {

    goto LABEL_6;
  }

  constraints2 = [(EKEvent *)self constraints];
  supportsAutoGeocodingStructuredLocations = [constraints2 supportsAutoGeocodingStructuredLocations];

  if (!supportsAutoGeocodingStructuredLocations)
  {
LABEL_6:
    [(EKCalendarItem *)self setClientLocation:duplicate];
    goto LABEL_7;
  }

  [(EKEvent *)self setStructuredLocation:duplicate];
LABEL_7:
  v15 = [storeCopy saveEvent:self span:3 commit:1 error:error];

  return v15;
}

- (NSURL)launchURL
{
  objectID = [(EKObject *)self objectID];
  databaseID = [objectID databaseID];
  v5 = *MEMORY[0x1E6992E18];
  v6 = MEMORY[0x1E695DFF8];
  v7 = MEMORY[0x1E696AEC0];
  startDate = [(EKEvent *)self startDate];
  [startDate timeIntervalSinceReferenceDate];
  if (databaseID == v5)
  {
    [v7 stringWithFormat:@"calshow:%lf?eventid=%d", v9, objc_msgSend(objectID, "rowID"), v13];
  }

  else
  {
    [v7 stringWithFormat:@"calshow:%lf?eventid=%d_%d", v9, objc_msgSend(objectID, "databaseID"), objc_msgSend(objectID, "rowID")];
  }
  v10 = ;
  v11 = [v6 URLWithString:v10];

  return v11;
}

+ (id)generateUniqueIDWithEvent:(id)event originalEvent:(id)originalEvent calendar:(id)calendar
{
  eventCopy = event;
  originalEventCopy = originalEvent;
  constraints = [eventCopy constraints];
  requiresMSFormattedUID = [constraints requiresMSFormattedUID];

  if (requiresMSFormattedUID)
  {
    startTimeZone = [eventCopy startTimeZone];
    if (startTimeZone)
    {
      if (originalEventCopy)
      {
LABEL_4:
        uniqueID = [originalEventCopy uniqueID];
        originalStartDate = [eventCopy originalStartDate];
        [eventCopy isAllDay];
        v13 = _EKMSUUIDStringForDetachedEvent();

LABEL_11:
        goto LABEL_14;
      }
    }

    else
    {
      startTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
      if (originalEventCopy)
      {
        goto LABEL_4;
      }
    }

    v13 = _EKMSUUIDString();
    goto LABEL_11;
  }

  if ([originalEventCopy isReminderIntegrationEvent])
  {
    uniqueID2 = [originalEventCopy uniqueID];
  }

  else
  {
    if (originalEventCopy)
    {
      v15 = MEMORY[0x1E696AEC0];
      uniqueID3 = [originalEventCopy uniqueID];
      originalStartDate2 = [eventCopy originalStartDate];
      [originalStartDate2 timeIntervalSinceReferenceDate];
      v13 = [v15 stringWithFormat:@"%@/RID=%llu", uniqueID3, v18];

      goto LABEL_14;
    }

    uniqueID2 = EKUUIDString();
  }

  v13 = uniqueID2;
LABEL_14:

  return v13;
}

+ (id)uniqueIDForDetachedOccurrenceOfEvent:(id)event withOriginalStartDate:(id)date timeZone:(id)zone allDay:(BOOL)day
{
  eventCopy = event;
  zoneCopy = zone;
  dateCopy = date;
  constraints = [eventCopy constraints];
  requiresMSFormattedUID = [constraints requiresMSFormattedUID];

  if (requiresMSFormattedUID)
  {
    if (!zoneCopy)
    {
      zoneCopy = [MEMORY[0x1E695DFE8] defaultTimeZone];
    }

    uniqueID = [eventCopy uniqueID];
    v14 = _EKMSUUIDStringForDetachedEvent();
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    uniqueID = [eventCopy uniqueID];
    [dateCopy timeIntervalSinceReferenceDate];
    v17 = v16;

    v14 = [v15 stringWithFormat:@"%@/RID=%llu", uniqueID, v17];
  }

  return v14;
}

- (void)dismissAcceptedProposeNewTimeNotification
{
  [(EKEvent *)self _clearAttendeeChangedFlags];
  [(EKEvent *)self setInvitationStatus:0];
  v3 = [(EKEvent *)self clearModifiedFlags]| 0x200;

  [(EKEvent *)self setClearModifiedFlags:v3];
}

- (void)_clearAttendeeChangedFlags
{
  [(EKEvent *)self setAttendeeComment:0];
  [(EKEvent *)self setAttendeeStatus:0];
  [(EKEvent *)self setAttendeeProposedStartDate:0];

  [(EKEvent *)self setAttendeeDeclinedStartDate:0];
}

- (void)dismissAttendeeRepliedNotification
{
  v16 = *MEMORY[0x1E69E9840];
  [(EKEvent *)self setInvitationStatus:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  attendees = [(EKCalendarItem *)self attendees];
  v4 = [attendees countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(attendees);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          [v9 setCommentChanged:0];
          [v9 setStatusChanged:0];
          [v9 setProposedStartDateChanged:0];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [attendees countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_respondToProposedTimeFromAttendee:(id)attendee shouldAccept:(BOOL)accept
{
  acceptCopy = accept;
  attendeeCopy = attendee;
  [attendeeCopy setCommentChanged:0];
  [attendeeCopy setStatusChanged:0];
  [attendeeCopy setProposedStartDateChanged:0];
  if (acceptCopy)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  [attendeeCopy setProposedStartDateStatus:v6];
  v7 = attendeeCopy;
  if (acceptCopy)
  {
    v8 = [attendeeCopy proposedStartDateForEvent:self];
    if (v8)
    {
      endDateUnadjustedForLegacyClients = [(EKEvent *)self endDateUnadjustedForLegacyClients];
      startDate = [(EKEvent *)self startDate];
      [endDateUnadjustedForLegacyClients timeIntervalSinceDate:startDate];
      v12 = v11;

      [(EKEvent *)self setStartDate:v8];
      v13 = [v8 dateByAddingTimeInterval:v12];
      [(EKEvent *)self setEndDateUnadjustedForLegacyClients:v13];
    }

    [(EKEvent *)self dismissAcceptedProposeNewTimeNotification];

    v7 = attendeeCopy;
  }
}

- (id)committedCopy
{
  if ([(EKEvent *)self isDetached]&& [(EKObject *)self hasNeverBeenCommitted])
  {
    v3 = objc_alloc(objc_opt_class());
    originalItem = [(EKCalendarItem *)self originalItem];
    persistentObject = [originalItem persistentObject];
    originalStartDate = [(EKEvent *)self originalStartDate];
    v7 = [v3 initWithPersistentObject:persistentObject occurrenceDate:originalStartDate];

    committedCopy = [v7 committedCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = EKEvent;
    committedCopy = [(EKObject *)&v10 committedCopy];
  }

  return committedCopy;
}

- (id)diffFromCommitted
{
  committedCopy = [(EKEvent *)self committedCopy];
  v4 = committedCopy;
  if (committedCopy)
  {
    [committedCopy diffWithObject:self];
  }

  else
  {
    [EKDiff diffBetweenObject:0 andObject:self];
  }
  v5 = ;

  return v5;
}

+ (id)knownRequireRSVPKeys
{
  if (knownRequireRSVPKeys_onceToken != -1)
  {
    +[EKEvent knownRequireRSVPKeys];
  }

  v3 = knownRequireRSVPKeys_knownRequireRSVPKeys;

  return v3;
}

void __31__EKEvent_knownRequireRSVPKeys__block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69926D8];
  v5[0] = *MEMORY[0x1E6992968];
  v5[1] = v0;
  v1 = *MEMORY[0x1E69926C8];
  v5[2] = *MEMORY[0x1E6992648];
  v5[3] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = knownRequireRSVPKeys_knownRequireRSVPKeys;
  knownRequireRSVPKeys_knownRequireRSVPKeys = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)knownPerUserPropertyKeys
{
  if (knownPerUserPropertyKeys_onceToken != -1)
  {
    +[EKEvent knownPerUserPropertyKeys];
  }

  v3 = knownPerUserPropertyKeys_knownPerUserPropertyKeys;

  return v3;
}

void __35__EKEvent_knownPerUserPropertyKeys__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69929F8];
  v4[0] = @"alarms";
  v4[1] = v0;
  v4[2] = *MEMORY[0x1E6992920];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = knownPerUserPropertyKeys_knownPerUserPropertyKeys;
  knownPerUserPropertyKeys_knownPerUserPropertyKeys = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)_diff:(id)_diff isDifferentFromCommittedEventHelperRequiresReschedule:(BOOL)reschedule
{
  rescheduleCopy = reschedule;
  _diffCopy = _diff;
  v7 = [(EKEvent *)self isDifferentWithDiff:_diffCopy];
  differentKeys = [_diffCopy differentKeys];
  if (-[EKCalendarItem hasAttendees](self, "hasAttendees") || [differentKeys containsObject:*MEMORY[0x1E6992568]])
  {
    v9 = MEMORY[0x1E695DFA8];
    knownRequireRSVPKeys = [objc_opt_class() knownRequireRSVPKeys];
    masterEvent = [v9 setWithArray:knownRequireRSVPKeys];

    firstObject = [_diffCopy firstObject];
    secondObject = [_diffCopy secondObject];
    if (([firstObject isDetached] & 1) == 0 && objc_msgSend(secondObject, "isDetached"))
    {
      startDate = [firstObject startDate];
      startDate2 = [secondObject startDate];
      v16 = [startDate isEqual:startDate2];

      if (v16)
      {
        [masterEvent removeObject:*MEMORY[0x1E69926C8]];
      }

      endDateUnadjustedForLegacyClients = [firstObject endDateUnadjustedForLegacyClients];
      endDateUnadjustedForLegacyClients2 = [secondObject endDateUnadjustedForLegacyClients];
      v19 = [endDateUnadjustedForLegacyClients isEqual:endDateUnadjustedForLegacyClients2];

      if (v19)
      {
        [masterEvent removeObject:*MEMORY[0x1E6992968]];
      }

      [masterEvent removeObject:*MEMORY[0x1E6992648]];
    }

    if (rescheduleCopy)
    {
      [masterEvent addObject:*MEMORY[0x1E6992568]];
      [masterEvent addObject:*MEMORY[0x1E69929D0]];
    }

    location = [firstObject location];
    location2 = [secondObject location];
    v22 = [location isEqual:location2];

    if (v22)
    {
      [masterEvent removeObject:*MEMORY[0x1E69926D8]];
    }

    hasAttendees = [differentKeys intersectsSet:masterEvent];
  }

  else
  {
    if (!v7)
    {
      hasAttendees = 0;
      goto LABEL_16;
    }

    masterEvent = [(EKEvent *)self masterEvent];
    hasAttendees = [masterEvent hasAttendees];
  }

LABEL_16:
  return hasAttendees;
}

- (BOOL)isDifferentAndModifiedAttendeesWithDiff:(id)diff
{
  diffCopy = diff;
  if ([(EKEvent *)self isDifferentWithDiff:diffCopy])
  {
    differentKeys = [diffCopy differentKeys];
    if ([differentKeys containsObject:*MEMORY[0x1E6992568]] && (objc_msgSend(differentKeys, "containsObject:", *MEMORY[0x1E6992920]) & 1) == 0)
    {
      v6 = [differentKeys containsObject:*MEMORY[0x1E6992650]] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isDifferentAndHasForwardedAttendeesWithDiff:(id)diff
{
  diffCopy = diff;
  v5 = [(EKEvent *)self status]!= EKEventStatusCanceled && [(EKEvent *)self currentUserGeneralizedParticipantRole]== 1 && [(EKEvent *)self allowsAttendeesModifications]&& [(EKEvent *)self isDifferentAndModifiedAttendeesWithDiff:diffCopy];

  return v5;
}

- (BOOL)isDifferentAndHasNewProposedTimeWithDiff:(id)diff
{
  diffCopy = diff;
  if ([(EKEvent *)self isDifferentWithDiff:diffCopy])
  {
    summaryDictionary = [diffCopy summaryDictionary];
    v6 = [summaryDictionary objectForKey:*MEMORY[0x1E69929C0]];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDifferentExceptingPerUserPropertiesWithDiff:(id)diff
{
  diffCopy = diff;
  if ([(EKEvent *)self isDifferentWithDiff:diffCopy])
  {
    v5 = MEMORY[0x1E695DFA8];
    knownPerUserPropertyKeys = [objc_opt_class() knownPerUserPropertyKeys];
    v7 = [v5 setWithArray:knownPerUserPropertyKeys];

    v8 = objc_alloc(MEMORY[0x1E695DFA8]);
    differentKeys = [diffCopy differentKeys];
    v10 = [v8 initWithSet:differentKeys];

    [v10 minusSet:v7];
    v11 = [v10 count] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isDifferentFromCommittedEventAndRequiresReschedule
{
  selfCopy = self;
  diffFromCommitted = [(EKEvent *)self diffFromCommitted];
  LOBYTE(selfCopy) = [(EKEvent *)selfCopy isDifferentAndRequiresRescheduleWithDiff:diffFromCommitted];

  return selfCopy;
}

- (BOOL)isDifferentFromCommittedEventAndRequiresRSVP
{
  selfCopy = self;
  diffFromCommitted = [(EKEvent *)self diffFromCommitted];
  LOBYTE(selfCopy) = [(EKEvent *)selfCopy isDifferentAndRequiresRSVPWithDiff:diffFromCommitted];

  return selfCopy;
}

- (BOOL)isDifferentAndHasUnscheduledAttendeesWithDiff:(id)diff
{
  summaryDictionary = [diff summaryDictionary];
  v4 = [EKDiff summaryKeyForMultiValueAddOfPropertyKey:*MEMORY[0x1E6992568]];
  v5 = [summaryDictionary objectForKey:v4];
  v6 = v5 != 0;

  return v6;
}

- (BOOL)isDifferentFromCommittedEventAndHasUnscheduledAttendees
{
  selfCopy = self;
  diffFromCommitted = [(EKEvent *)self diffFromCommitted];
  LOBYTE(selfCopy) = [(EKEvent *)selfCopy isDifferentAndHasUnscheduledAttendeesWithDiff:diffFromCommitted];

  return selfCopy;
}

- (int64_t)requirementsToMoveFromCalendar:(id)calendar toCalendar:(id)toCalendar
{
  calendarCopy = calendar;
  toCalendarCopy = toCalendar;
  if ([(EKEvent *)self _requirementsToMoveOrCopyToCalendarHelperAllowedToMoveOrCopyEventFromCalendar:calendarCopy toCalendar:toCalendarCopy])
  {
    if ([(EKEvent *)self _requirementsToMoveToCalendarHelperDuplicationRequiredToMoveEventFromCalendar:calendarCopy toCalendar:toCalendarCopy])
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    if ([(EKEvent *)self _requirementsToMoveToCalendarHelperAlterationsRequiredToMoveEventFromCalendar:calendarCopy toCalendar:toCalendarCopy])
    {
      v9 = v8 | 8;
    }

    else
    {
      v9 = v8;
    }

    if ([(EKEvent *)self _requirementsToMoveToCalendarHelperReinviteAttendeesRequiredToMoveEventFromCalendar:calendarCopy toCalendar:toCalendarCopy])
    {
      v10 = v9 | 0x20;
      if (!_bitmaskContainsOption(v9 | 0x20, 4) && [(EKEvent *)self _requirementsToMoveToCalendarHelperNeedToRemoveOriginalToMoveEventFromCalendar:calendarCopy toCalendar:toCalendarCopy])
      {
        v10 = v9 | 0x30;
      }
    }

    else if ([(EKEvent *)self _requirementsToMoveToCalendarHelperRemoveAttendeesRequiredToMoveEventFromCalendar:calendarCopy toCalendar:toCalendarCopy])
    {
      v10 = v9 | 0x40;
    }

    else
    {
      v10 = v9;
    }

    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 2;
  }

  return v11;
}

- (int64_t)requirementsToMoveToCalendar:(id)calendar
{
  calendarCopy = calendar;
  calendar = [(EKCalendarItem *)self calendar];
  v6 = [(EKEvent *)self requirementsToMoveFromCalendar:calendar toCalendar:calendarCopy];

  return v6;
}

- (BOOL)_canMoveOrCopyFromCalendar:(id)calendar toCalendar:(id)toCalendar allowedRequirements:(int64_t)requirements error:(id *)error
{
  calendarCopy = calendar;
  toCalendarCopy = toCalendar;
  source = [toCalendarCopy source];
  if (source)
  {
    source2 = [toCalendarCopy source];
    isEnabledForEvents = [source2 isEnabledForEvents];
  }

  else
  {
    isEnabledForEvents = 1;
  }

  if (![toCalendarCopy allowEvents] || (isEnabledForEvents & 1) == 0)
  {
    if (error)
    {
      v17 = 22;
      goto LABEL_15;
    }

LABEL_21:
    v18 = 0;
    goto LABEL_22;
  }

  if ([toCalendarCopy type] == 6 || objc_msgSend(calendarCopy, "type") == 6)
  {
    goto LABEL_21;
  }

  if (([calendarCopy isEqual:toCalendarCopy] & 1) != 0 || (-[EKEvent constraints](self, "constraints"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "requiresOutgoingInvitationsInDefaultCalendar"), v15, !v16) || !-[EKCalendarItem isSelfOrganizedInvitation](self, "isSelfOrganizedInvitation"))
  {
    v19 = [(EKEvent *)self requirementsToMoveFromCalendar:calendarCopy toCalendar:toCalendarCopy];
    if (v19 != 2 && _bitmaskContainsOption(requirements, v19))
    {
      v18 = 1;
      goto LABEL_22;
    }

    if (error)
    {
      v17 = 0;
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  if (!error)
  {
    goto LABEL_21;
  }

  v17 = 12;
LABEL_15:
  [MEMORY[0x1E696ABC0] errorWithEKErrorCode:v17];
  *error = v18 = 0;
LABEL_22:

  return v18;
}

- (BOOL)seriesHasOutOfOrderEvents
{
  v48 = *MEMORY[0x1E69E9840];
  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  if (![recurrenceRules count])
  {

    goto LABEL_14;
  }

  detachedItems = [(EKCalendarItem *)self detachedItems];
  v5 = [detachedItems count];

  if (!v5)
  {
LABEL_14:
    v30 = 0;
    goto LABEL_15;
  }

  masterEvent = [(EKEvent *)self masterEvent];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v7 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  detachedItems2 = [masterEvent detachedItems];
  v9 = [detachedItems2 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v9)
  {
    v10 = *v44;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(detachedItems2);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        startDate = [v12 startDate];
        [v7 setObject:v12 forKeyedSubscript:startDate];

        startDate2 = [v12 startDate];
        v15 = [startDate2 isAfterDate:distantPast];

        if (v15)
        {
          startDate3 = [v12 startDate];

          distantPast = startDate3;
        }
      }

      v9 = [detachedItems2 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v9);
  }

  recurrenceRules2 = [(EKCalendarItem *)self recurrenceRules];
  v18 = [recurrenceRules2 objectAtIndexedSubscript:0];

  v19 = MEMORY[0x1E695DEE8];
  timeZone = [(EKCalendarItem *)self timeZone];
  v21 = [v19 CalGregorianCalendarForTimeZone:timeZone];

  dateComponents = [v18 dateComponents];
  v23 = [v21 dateByAddingComponents:dateComponents toDate:distantPast options:0];

  v24 = objc_alloc_init(EKRecurrenceGenerator);
  startDate4 = [masterEvent startDate];
  timeZone2 = [(EKCalendarItem *)self timeZone];
  LOBYTE(v33) = 1;
  v27 = [(EKRecurrenceGenerator *)v24 copyOccurrenceDatesWithEKEvent:self startDate:startDate4 endDate:v23 timeZone:timeZone2 exceptionDates:0 limit:0 adjustDatesForAllDayEvents:v33];

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __36__EKEvent_seriesHasOutOfOrderEvents__block_invoke;
  v35[3] = &unk_1E77FF2F8;
  v28 = v7;
  v36 = v28;
  v29 = v27;
  v37 = v29;
  v38 = &v39;
  [v29 enumerateObjectsUsingBlock:v35];
  v30 = *(v40 + 24);

  _Block_object_dispose(&v39, 8);
LABEL_15:
  v31 = *MEMORY[0x1E69E9840];
  return v30 & 1;
}

void __36__EKEvent_seriesHasOutOfOrderEvents__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v7)
  {
    v14 = v7;
    if (a3)
    {
      v8 = [*(a1 + 40) objectAtIndexedSubscript:a3 - 1];
      v9 = [v14 startDate];
      v10 = [v9 isBeforeDate:v8];

      if (v10)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }

    if ([*(a1 + 40) count] - 1 > a3)
    {
      v11 = [*(a1 + 40) objectAtIndexedSubscript:a3 + 1];
      v12 = [v14 startDate];
      v13 = [v12 isAfterDate:v11];

      if (v13)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }

    v7 = v14;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }
}

- (BOOL)isOutOfOrderWithEventInSeries
{
  v56 = *MEMORY[0x1E69E9840];
  selfCopy = [(EKCalendarItem *)self originalItem];
  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  v5 = [recurrenceRules count];

  if (v5 || selfCopy)
  {
    if (!selfCopy)
    {
      selfCopy = self;
    }

    originalStartDate = [(EKEvent *)self originalStartDate];
    if (!originalStartDate)
    {
      originalOccurrenceStartDate = [(EKEvent *)self originalOccurrenceStartDate];
      originalStartDate = [originalOccurrenceStartDate date];
    }

    [(EKEvent *)self startDate];
    v45 = v44 = selfCopy;
    detachedItems = [(EKCalendarItem *)selfCopy detachedItems];
    v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(detachedItems, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v11 = detachedItems;
    v12 = [v11 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v51;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v51 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v50 + 1) + 8 * i);
          originalStartDate2 = [v16 originalStartDate];
          v18 = [originalStartDate2 compare:originalStartDate];
          if (v18)
          {
            v19 = v18;
            [v10 addObject:originalStartDate2];
            startDate = [v16 startDate];
            v21 = [startDate compare:v45];

            if (v21 != v19)
            {
              LOBYTE(v6) = 1;
              exceptionDates = v11;
              v22 = v44;
              goto LABEL_37;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v22 = v44;
    exceptionDates = [(EKCalendarItem *)v44 exceptionDates];
    v24 = v45;
    v25 = [v45 isBeforeDate:originalStartDate];
    if (v25)
    {
      v26 = v45;
    }

    else
    {
      v26 = originalStartDate;
    }

    if (v25)
    {
      v24 = originalStartDate;
    }

    originalStartDate2 = v26;
    v43 = v24;
    v27 = objc_alloc_init(EKRecurrenceGenerator);
    effectiveTimeZone = [(EKEvent *)v44 effectiveTimeZone];
    recurrenceRules2 = [(EKCalendarItem *)v44 recurrenceRules];
    firstObject = [recurrenceRules2 firstObject];

    LOBYTE(v39) = 1;
    v41 = effectiveTimeZone;
    v42 = v27;
    v40 = firstObject;
    v31 = firstObject;
    v32 = v43;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v33 = [(EKRecurrenceGenerator *)v27 copyOccurrenceDatesWithEKEvent:v44 recurrenceRule:v31 startDate:originalStartDate2 endDate:v43 timeZone:effectiveTimeZone exceptionDates:0 limit:0 adjustDatesForAllDayEvents:v39];
    v6 = [v33 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v6)
    {
      v34 = *v47;
      while (2)
      {
        for (j = 0; j != v6; ++j)
        {
          if (*v47 != v34)
          {
            objc_enumerationMutation(v33);
          }

          v36 = *(*(&v46 + 1) + 8 * j);
          if (([v36 isEqualToDate:originalStartDate] & 1) == 0 && (objc_msgSend(exceptionDates, "containsObject:", v36) & 1) == 0 && !objc_msgSend(v10, "containsObject:", v36))
          {
            LOBYTE(v6) = 1;
            goto LABEL_35;
          }
        }

        v6 = [v33 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

LABEL_35:
      v32 = v43;
      v22 = v44;
    }

LABEL_37:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)seriesHasOverlappingOrOnSameDayOrOutOfOrderEvents
{
  v18 = *MEMORY[0x1E69E9840];
  recurrenceRuleString = [(EKCalendarItem *)self recurrenceRuleString];

  if (recurrenceRuleString)
  {
    masterEvent = [(EKEvent *)self masterEvent];
    if ([masterEvent overlapsWithOrIsSameDayAsEventInSeries])
    {
LABEL_14:
      seriesHasOutOfOrderEvents = 1;
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      detachedItems = [(EKCalendarItem *)self detachedItems];
      v6 = [detachedItems countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(detachedItems);
            }

            if ([*(*(&v13 + 1) + 8 * i) overlapsWithOrIsSameDayAsEventInSeries])
            {

              goto LABEL_14;
            }
          }

          v7 = [detachedItems countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      seriesHasOutOfOrderEvents = [(EKEvent *)self seriesHasOutOfOrderEvents];
    }
  }

  else
  {
    seriesHasOutOfOrderEvents = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return seriesHasOutOfOrderEvents;
}

- (BOOL)_requirementsToMoveOrCopyToCalendarHelperAllowedToMoveOrCopyEventFromCalendar:(id)calendar toCalendar:(id)toCalendar
{
  calendarCopy = calendar;
  toCalendarCopy = toCalendar;
  if (([toCalendarCopy allowsContentModifications] & 1) == 0)
  {
    suggestionInfo = [(EKEvent *)self suggestionInfo];
    if (!suggestionInfo)
    {
      goto LABEL_17;
    }

    v9 = suggestionInfo;
    isSuggestedEventCalendar = [toCalendarCopy isSuggestedEventCalendar];

    if (!isSuggestedEventCalendar)
    {
      goto LABEL_17;
    }
  }

  if ([calendarCopy sharingStatus] == 2)
  {
    if (![(EKEvent *)self privacyLevel])
    {
      goto LABEL_11;
    }
  }

  else
  {
    source = [calendarCopy source];
    if (([source isDelegate] & 1) == 0)
    {

      goto LABEL_11;
    }

    privacyLevel = [(EKEvent *)self privacyLevel];

    if (!privacyLevel)
    {
LABEL_11:
      constraints = [toCalendarCopy constraints];
      if ([constraints eventDurationConstrainedToRecurrenceInterval])
      {
        durationOverlapsRecurrenceInterval = [(EKEvent *)self durationOverlapsRecurrenceInterval];

        if (durationOverlapsRecurrenceInterval)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      constraints2 = [toCalendarCopy constraints];
      if ([constraints2 occurrencesMustOccurOnSeparateDays])
      {
        seriesHasOverlappingOrOnSameDayOrOutOfOrderEvents = [(EKEvent *)self seriesHasOverlappingOrOnSameDayOrOutOfOrderEvents];

        if (seriesHasOverlappingOrOnSameDayOrOutOfOrderEvents)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      v17 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v17 = 0;
LABEL_18:

  return v17;
}

- (BOOL)_hasAbsoluteAlarms
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(EKCalendarItem *)self hasAlarms])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    alarms = [(EKCalendarItem *)self alarms];
    v4 = [alarms countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(alarms);
          }

          absoluteDate = [*(*(&v10 + 1) + 8 * i) absoluteDate];

          if (absoluteDate)
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [alarms countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
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
    LOBYTE(v4) = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)_nsCalendar
{
  if ([(EKEvent *)self isAllDay]|| ([(EKCalendarItem *)self timeZone], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    calGregorianGMTCalendar = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
  }

  else
  {
    v4 = MEMORY[0x1E695DEE8];
    timeZone = [(EKCalendarItem *)self timeZone];
    calGregorianGMTCalendar = [v4 CalGregorianCalendarForTimeZone:timeZone];
  }

  return calGregorianGMTCalendar;
}

- (BOOL)_suggestedStartDateHelperRecurrenceRuleRequiresExpansion:(id)expansion forDate:(id)date
{
  expansionCopy = expansion;
  dateCopy = date;
  if ([expansionCopy frequency] == 3)
  {
    daysOfTheYear = [expansionCopy daysOfTheYear];
    if ([daysOfTheYear count])
    {
    }

    else
    {
      monthsOfTheYear = [expansionCopy monthsOfTheYear];
      v12 = [monthsOfTheYear count];

      if (v12)
      {
        _nsCalendar = [(EKEvent *)self _nsCalendar];
        v14 = [_nsCalendar component:8 fromDate:dateCopy];

        monthsOfTheYear2 = [expansionCopy monthsOfTheYear];
        daysOfTheWeek = [MEMORY[0x1E696AD98] numberWithInteger:v14];
        v9 = [monthsOfTheYear2 containsObject:daysOfTheWeek] ^ 1;
        goto LABEL_22;
      }
    }
  }

  if (([expansionCopy isPinnedToEndOfFrequency] & 1) == 0)
  {
    monthsOfTheYear2 = [expansionCopy daysOfTheMonth];
    if ([monthsOfTheYear2 count])
    {
      LOBYTE(v9) = 1;
LABEL_23:

      goto LABEL_24;
    }

    daysOfTheWeek = [expansionCopy daysOfTheWeek];
    if ([daysOfTheWeek count])
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      daysOfTheYear2 = [expansionCopy daysOfTheYear];
      if ([daysOfTheYear2 count])
      {
        LOBYTE(v9) = 1;
      }

      else
      {
        monthsOfTheYear3 = [expansionCopy monthsOfTheYear];
        if ([monthsOfTheYear3 count])
        {
          LOBYTE(v9) = 1;
        }

        else
        {
          setPositions = [expansionCopy setPositions];
          if ([setPositions count])
          {
            LOBYTE(v9) = 1;
          }

          else
          {
            weeksOfTheYear = [expansionCopy weeksOfTheYear];
            LOBYTE(v9) = [weeksOfTheYear count] != 0;
          }
        }
      }
    }

LABEL_22:

    goto LABEL_23;
  }

  LOBYTE(v9) = 0;
LABEL_24:

  return v9;
}

- (id)suggestedStartDateForCurrentRecurrenceRuleWithSimulatedNowDate:(id)date
{
  dateCopy = date;
  startDate = [(EKEvent *)self startDate];
  recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
  firstObject = [recurrenceRules firstObject];

  if (firstObject && [(EKEvent *)self _suggestedStartDateHelperRecurrenceRuleRequiresExpansion:firstObject forDate:startDate])
  {
    if ([firstObject interval] != 1)
    {
      v8 = [firstObject copy];

      [v8 setInterval:1];
      firstObject = v8;
    }

    _nsCalendar = [(EKEvent *)self _nsCalendar];
    v10 = [_nsCalendar copy];

    [v10 setFirstWeekday:{objc_msgSend(firstObject, "firstDayOfTheWeek")}];
    if (dateCopy)
    {
      date = dateCopy;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
    }

    v12 = date;
    v13 = MEMORY[0x1E695DF00];
    startDate2 = [(EKEvent *)self startDate];
    v29 = v12;
    v15 = [v13 dateWithDatePartFromDate:v12 timePartFromDate:startDate2 inCalendar:v10];

    startDate3 = [(EKEvent *)self startDate];
    LODWORD(v12) = [startDate3 isSameWeekAsDate:v15 inCalendar:v10];

    startDate4 = [(EKEvent *)self startDate];
    startDate6 = startDate4;
    if (v12)
    {
      if ([startDate4 isBeforeDate:v15])
      {
        startDate5 = [(EKEvent *)self startDate];
      }

      else
      {
        startDate5 = v15;
      }
    }

    else
    {
      v20 = [startDate4 isAfterDate:v15];

      startDate6 = [(EKEvent *)self startDate];
      if (!v20)
      {
LABEL_15:
        v22 = MEMORY[0x1E69930C8];
        timeZone = [(EKCalendarItem *)self timeZone];
        v24 = [v22 calendarDateWithDate:startDate6 timeZone:timeZone];

        v25 = objc_alloc_init(EKRecurrenceGenerator);
        [(CalRecurrenceGenerator *)v25 setOnlyIncludeInitialDateIfItMatchesRecurrence:1];
        recurrenceRules2 = [(EKCalendarItem *)self recurrenceRules];
        v27 = [(EKRecurrenceGenerator *)v25 nextOccurrenceDateWithEKRecurrences:recurrenceRules2 forCalendarItem:self initialDate:v24 afterDate:v24 inclusive:1];

        startDate = v27;
        goto LABEL_16;
      }

      startDate5 = [startDate6 roundToCurrentWeekInCalendar:v10 withFirstWeekdayIndex:{objc_msgSend(firstObject, "firstDayOfTheWeek")}];
    }

    v21 = startDate5;

    startDate6 = v21;
    goto LABEL_15;
  }

LABEL_16:

  return startDate;
}

- (BOOL)_isValidAttendee:(id)attendee forCalendar:(id)calendar selfAttendeeIsValid:(BOOL)valid
{
  validCopy = valid;
  v42 = *MEMORY[0x1E69E9840];
  attendeeCopy = attendee;
  calendarCopy = calendar;
  if (!validCopy || (-[EKCalendarItem selfAttendee](self, "selfAttendee"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToParticipant:attendeeCopy], v10, (v11 & 1) == 0))
  {
    v13 = [attendeeCopy URL];
    uRLForNoMail = [MEMORY[0x1E695DFF8] URLForNoMail];
    v15 = [v13 isEqual:uRLForNoMail];

    if (v15 & 1) != 0 || ([calendarCopy ownerIdentityAddress], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v13, "isEqual:", v16), v16, (v17))
    {
      v12 = 0;
LABEL_31:

      goto LABEL_32;
    }

    emailAddress = [attendeeCopy emailAddress];
    ownerIdentityAddress = [calendarCopy ownerIdentityAddress];
    resourceSpecifier = [ownerIdentityAddress resourceSpecifier];

    ownerIdentityEmail = [calendarCopy ownerIdentityEmail];
    if ([emailAddress isEqual:ownerIdentityEmail])
    {

LABEL_10:
      v12 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v22 = [emailAddress isEqual:resourceSpecifier];

    if (v22)
    {
      goto LABEL_10;
    }

    phoneNumber = [attendeeCopy phoneNumber];
    ownerIdentityPhoneNumber = [calendarCopy ownerIdentityPhoneNumber];
    if ([phoneNumber isEqual:ownerIdentityPhoneNumber])
    {
    }

    else
    {
      v25 = [phoneNumber isEqual:resourceSpecifier];

      if ((v25 & 1) == 0)
      {
        absoluteString = [v13 absoluteString];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        source = [calendarCopy source];
        ownerAddresses = [source ownerAddresses];

        obj = ownerAddresses;
        v28 = [ownerAddresses countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v38;
          while (2)
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v38 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v37 + 1) + 8 * i);
              if ([emailAddress isEqual:v32] & 1) != 0 || (objc_msgSend(phoneNumber, "isEqual:", v32) & 1) != 0 || (objc_msgSend(absoluteString, "isEqual:", v32))
              {
                v12 = 0;
                goto LABEL_28;
              }
            }

            v29 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
            v12 = 1;
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v12 = 1;
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    v12 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v12 = 1;
LABEL_32:

  v33 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)attendeesNotIncludingOrganizer
{
  v22 = *MEMORY[0x1E69E9840];
  attendees = [(EKCalendarItem *)self attendees];
  organizer = [(EKCalendarItem *)self organizer];

  if (organizer)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = attendees;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          if ([(EKEvent *)self isAttendeeSameAsOrganizer:v10, v16])
          {
            v20 = v10;
            v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
            v13 = [v5 arrayByExcludingObjectsInArray:v12];

            goto LABEL_14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = v5;
  }

  else
  {
    v11 = attendees;
  }

  v13 = v11;
LABEL_14:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)isAttendeeSameAsOrganizer:(id)organizer
{
  organizerCopy = organizer;
  if (organizerCopy)
  {
    organizer = [(EKCalendarItem *)self organizer];
    if (organizer)
    {
      organizer2 = [(EKCalendarItem *)self organizer];
      v7 = [organizer2 isEqualToParticipant:organizerCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)attendeesNotIncludingOrganizerOrLocationsOrResources
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  attendees = [(EKCalendarItem *)self attendees];
  v5 = [v3 initWithCapacity:{objc_msgSend(attendees, "count")}];

  organizer = [(EKCalendarItem *)self organizer];
  if (([organizer isNew] & 1) != 0 || (v12 = objc_msgSend(organizer, "existsInStore"), !organizer) || v12)
  {
    attendees2 = [(EKCalendarItem *)self attendees];
    eventStore = [(EKObject *)self eventStore];
    v9 = [EKObject objectsIDsExistingInStoreFromObjects:attendees2 eventStore:eventStore];

    attendees3 = [(EKCalendarItem *)self attendees];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__EKEvent_attendeesNotIncludingOrganizerOrLocationsOrResources__block_invoke;
    v15[3] = &unk_1E77FF320;
    v16 = v9;
    v17 = organizer;
    v18 = v5;
    v11 = v9;
    [attendees3 enumerateObjectsUsingBlock:v15];
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];

  return v13;
}

void __63__EKEvent_attendeesNotIncludingOrganizerOrLocationsOrResources__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 isNew])
  {
    if ([v6 participantType] == 2 || objc_msgSend(v6, "participantType") == 3)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  v3 = *(a1 + 32);
  v4 = [v6 CADObjectID];
  if (([v3 containsObject:v4] & 1) == 0 || objc_msgSend(v6, "participantType") == 2)
  {

    goto LABEL_8;
  }

  v5 = [v6 participantType];

  if (v5 != 3)
  {
LABEL_12:
    if (([v6 isEqualToParticipant:*(a1 + 40)] & 1) == 0)
    {
      [*(a1 + 48) addObject:v6];
    }
  }

LABEL_8:
}

- (void)prefetchAttendeesWithAdditionalProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = +[EKPersistentAttendee defaultPropertiesToLoad];
  v5 = v4;
  if ([propertiesCopy count])
  {
    v5 = [propertiesCopy arrayByAddingObjectsFromArray:v4];
  }

  eventStore = [(EKObject *)self eventStore];
  attendeesRaw = [(EKCalendarItem *)self attendeesRaw];
  [eventStore ensureLoadedProperties:v5 forObjects:attendeesRaw];
}

- (BOOL)_requirementsToMoveToCalendarHelperAlterationsRequiredToMoveEventFromCalendar:(id)calendar toCalendar:(id)toCalendar
{
  v54 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  toCalendarCopy = toCalendar;
  if ([(EKEvent *)self isPrivacySet])
  {
    source = [toCalendarCopy source];
    if ([source supportsPrivateEvents])
    {
      v9 = [toCalendarCopy sharingStatus] == 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  alarms = [(EKCalendarItem *)self alarms];
  if ([alarms count] < 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = [toCalendarCopy supportsMultipleAlarms] ^ 1;
  }

  v12 = v11 | v9;

  if ([(EKEvent *)self _hasAbsoluteAlarms])
  {
    constraints = [toCalendarCopy constraints];
    v12 |= [constraints supportsAlarmTriggerDates] ^ 1;
  }

  if ([(EKCalendarItem *)self hasRecurrenceRules])
  {
    constraints2 = [toCalendarCopy constraints];
    if ([constraints2 requiresOccurrencesConformToRecurrenceRule])
    {
      startDate = [(EKEvent *)self startDate];
      suggestedStartDateForCurrentRecurrenceRule = [(EKEvent *)self suggestedStartDateForCurrentRecurrenceRule];
      v12 |= [startDate isEqualToDate:suggestedStartDateForCurrentRecurrenceRule] ^ 1;
    }
  }

  v17 = [(EKEvent *)self URL];
  if (v17)
  {
    constraints3 = [toCalendarCopy constraints];
    v19 = [constraints3 supportsURLField] ^ 1;

    v12 |= v19;
  }

  source2 = [calendarCopy source];
  sourceIdentifier = [source2 sourceIdentifier];
  source3 = [toCalendarCopy source];
  sourceIdentifier2 = [source3 sourceIdentifier];
  if (([sourceIdentifier isEqualToString:sourceIdentifier2] & 1) == 0)
  {
    attachments = [(EKCalendarItem *)self attachments];
    v25 = [attachments count];

    if (v25)
    {
      v12 = 1;
    }
  }

  timeZone = [(EKCalendarItem *)self timeZone];
  if (timeZone)
  {
  }

  else
  {
    constraints4 = [toCalendarCopy constraints];
    supportsFloatingTimeZone = [constraints4 supportsFloatingTimeZone];

    if ((supportsFloatingTimeZone & 1) == 0)
    {
      v12 |= ![(EKEvent *)self isAllDay];
    }
  }

  if ([(EKCalendarItem *)self hasAttendees])
  {
    source4 = [calendarCopy source];
    sourceIdentifier3 = [source4 sourceIdentifier];
    source5 = [toCalendarCopy source];
    sourceIdentifier4 = [source5 sourceIdentifier];
    v33 = [sourceIdentifier3 isEqualToString:sourceIdentifier4];

    if ((v33 & 1) == 0)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      attendees = [(EKCalendarItem *)self attendees];
      v35 = [attendees countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v50;
        while (2)
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v50 != v37)
            {
              objc_enumerationMutation(attendees);
            }

            if (![(EKEvent *)self isValidAttendee:*(*(&v49 + 1) + 8 * i) forCalendar:toCalendarCopy])
            {
              LOBYTE(v12) = 1;
              goto LABEL_37;
            }
          }

          v36 = [attendees countByEnumeratingWithState:&v49 objects:v53 count:16];
          if (v36)
          {
            continue;
          }

          break;
        }
      }

LABEL_37:
    }

    if (![calendarCopy type] && objc_msgSend(toCalendarCopy, "type") != 2 && objc_msgSend(toCalendarCopy, "type"))
    {
      organizer = [(EKCalendarItem *)self organizer];
      LOBYTE(v12) = v12 | ([organizer scheduleAgent] != 1);
    }
  }

  if ([(EKCalendarItem *)self hasRecurrenceRules])
  {
    recurrenceRules = [(EKCalendarItem *)self recurrenceRules];
    firstObject = [recurrenceRules firstObject];

    if ([firstObject frequency] == 2)
    {
      daysOfTheMonth = [firstObject daysOfTheMonth];
      if ([daysOfTheMonth count] >= 2)
      {
        constraints5 = [toCalendarCopy constraints];
        LOBYTE(v12) = v12 | [constraints5 prohibitsMultipleDaysInMonthlyRecurrence];
      }
    }

    v12 &= 1u;
    if ([firstObject frequency] == 3)
    {
      monthsOfTheYear = [firstObject monthsOfTheYear];
      if ([monthsOfTheYear count] >= 2)
      {
        constraints6 = [toCalendarCopy constraints];
        v12 |= [constraints6 prohibitsMultipleMonthsInYearlyRecurrence];
      }
    }

    if ([firstObject frequency] == 3 && objc_msgSend(firstObject, "interval") >= 2)
    {
      constraints7 = [toCalendarCopy constraints];
      LOBYTE(v12) = v12 | [constraints7 prohibitsYearlyRecurrenceInterval];
    }
  }

  v47 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

+ (BOOL)_calendarsAreSharedToMeInSameSourceAndHaveSameOwner:(id)owner
{
  v26 = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  if ([ownerCopy count])
  {
    v4 = [ownerCopy objectAtIndexedSubscript:0];
    source = [v4 source];

    v6 = [ownerCopy objectAtIndexedSubscript:0];
    sharedOwnerAddress = [v6 sharedOwnerAddress];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = ownerCopy;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          if ([v13 sharingStatus] != 2)
          {
            goto LABEL_13;
          }

          source2 = [v13 source];
          v15 = [source isEqual:source2];

          if (v15)
          {
            sharedOwnerAddress2 = [v13 sharedOwnerAddress];
            v17 = [sharedOwnerAddress isEqualToString:sharedOwnerAddress2];

            if (v17)
            {
              continue;
            }
          }

LABEL_13:
          v18 = 0;
          goto LABEL_16;
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v18 = 1;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v18 = 1;
    }

LABEL_16:
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)_requirementsToMoveToCalendarHelperDuplicationRequiredToMoveEventFromCalendar:(id)calendar toCalendar:(id)toCalendar
{
  v25[2] = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  toCalendarCopy = toCalendar;
  if ([calendarCopy allowsContentModifications])
  {
    v8 = 0;
  }

  else
  {
    v8 = [calendarCopy isSuggestedEventCalendar] ^ 1;
  }

  if ([(EKCalendarItem *)self hasAttendees])
  {
    if ([calendarCopy type] && (-[EKCalendarItem organizer](self, "organizer"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "scheduleAgent"), v9, v10 != 1))
    {
      if ([(EKEvent *)self isCurrentUserInvitedAttendee]|| ![(EKEvent *)self currentUserMayActAsOrganizer])
      {
        if ([calendarCopy sharingStatus] == 2 || objc_msgSend(toCalendarCopy, "sharingStatus") == 2)
        {
          v25[0] = calendarCopy;
          v25[1] = toCalendarCopy;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
          v15 = ![EKEvent _calendarsAreSharedToMeInSameSourceAndHaveSameOwner:v14];

          if ([calendarCopy sharingStatus] == 2)
          {
            v16 = [calendarCopy allowsScheduling] ^ 1;
          }

          else
          {
            LOBYTE(v16) = 0;
          }

          v17 = v16 | v15;
          if ([toCalendarCopy sharingStatus] == 2)
          {
            v18 = [toCalendarCopy allowsScheduling] ^ 1;
          }

          else
          {
            LOBYTE(v18) = 0;
          }

          LOBYTE(v8) = v8 | v18 | v17;
        }

        else
        {
          source = [calendarCopy source];
          sourceIdentifier = [source sourceIdentifier];
          source2 = [toCalendarCopy source];
          sourceIdentifier2 = [source2 sourceIdentifier];
          v8 |= [sourceIdentifier isEqualToString:sourceIdentifier2] ^ 1;
        }
      }
    }

    else if ([(EKEvent *)self isCurrentUserInvitedAttendee])
    {
      sharingStatus = [toCalendarCopy sharingStatus];
      type = [toCalendarCopy type];
      if (sharingStatus == 2 || type == 2)
      {
        LOBYTE(v8) = 1;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_requirementsToMoveToCalendarHelperNeedToRemoveOriginalToMoveEventFromCalendar:(id)calendar toCalendar:(id)toCalendar
{
  v19[2] = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  toCalendarCopy = toCalendar;
  organizer = [(EKCalendarItem *)self organizer];
  if ([organizer scheduleAgent] == 1)
  {

LABEL_9:
    LOBYTE(v16) = 0;
    goto LABEL_10;
  }

  type = [calendarCopy type];

  if (!type || ![(EKCalendarItem *)self hasAttendees])
  {
    goto LABEL_9;
  }

  v19[0] = calendarCopy;
  v19[1] = toCalendarCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  source = [calendarCopy source];
  sourceIdentifier = [source sourceIdentifier];
  source2 = [toCalendarCopy source];
  sourceIdentifier2 = [source2 sourceIdentifier];
  v15 = [sourceIdentifier isEqualToString:sourceIdentifier2];

  if (v15)
  {
    if ([calendarCopy sharingStatus] == 2 || objc_msgSend(toCalendarCopy, "sharingStatus") == 2)
    {
      v16 = ![EKEvent _calendarsAreSharedToMeInSameSourceAndHaveSameOwner:v10];
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 1;
  }

LABEL_10:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_requirementsToMoveToCalendarHelperReinviteAttendeesRequiredToMoveEventFromCalendar:(id)calendar toCalendar:(id)toCalendar
{
  v17[2] = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  toCalendarCopy = toCalendar;
  if (![(EKCalendarItem *)self hasAttendees]|| ![(EKEvent *)self currentUserMayActAsOrganizer])
  {
    goto LABEL_17;
  }

  organizer = [(EKCalendarItem *)self organizer];
  if ([organizer scheduleAgent] != 1)
  {
    type = [calendarCopy type];

    if (!type || [calendarCopy type] != 2 && objc_msgSend(toCalendarCopy, "type") == 2 || objc_msgSend(calendarCopy, "sharingStatus") == 2 && objc_msgSend(toCalendarCopy, "sharingStatus") != 2 && -[EKEvent isCurrentUserInvitedAttendee](self, "isCurrentUserInvitedAttendee"))
    {
      goto LABEL_17;
    }

    if ([calendarCopy sharingStatus] == 2 || objc_msgSend(toCalendarCopy, "sharingStatus") == 2)
    {
      if ([calendarCopy sharingStatus] != 2 || (objc_msgSend(calendarCopy, "allowsScheduling") & 1) != 0 || objc_msgSend(toCalendarCopy, "sharingStatus") != 2 || (objc_msgSend(toCalendarCopy, "allowsScheduling") & 1) != 0)
      {
        goto LABEL_17;
      }

      v17[0] = calendarCopy;
      v17[1] = toCalendarCopy;
      source = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      v10 = ![EKEvent _calendarsAreSharedToMeInSameSourceAndHaveSameOwner:source];
    }

    else
    {
      source = [calendarCopy source];
      sourceIdentifier = [source sourceIdentifier];
      source2 = [toCalendarCopy source];
      sourceIdentifier2 = [source2 sourceIdentifier];
      v10 = [sourceIdentifier isEqualToString:sourceIdentifier2] ^ 1;
    }

    goto LABEL_18;
  }

LABEL_17:
  LOBYTE(v10) = 0;
LABEL_18:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_requirementsToMoveToCalendarHelperRemoveAttendeesRequiredToMoveEventFromCalendar:(id)calendar toCalendar:(id)toCalendar
{
  calendarCopy = calendar;
  toCalendarCopy = toCalendar;
  if ([(EKCalendarItem *)self hasAttendees])
  {
    if ([calendarCopy type] != 2 && objc_msgSend(toCalendarCopy, "type") == 2 || objc_msgSend(calendarCopy, "sharingStatus") == 2 && objc_msgSend(toCalendarCopy, "sharingStatus") != 2 && -[EKEvent isCurrentUserInvitedAttendee](self, "isCurrentUserInvitedAttendee"))
    {
      v8 = 1;
    }

    else
    {
      v8 = [(EKEvent *)self _requirementsToMoveToCalendarHelperDuplicationRequiredToMoveEventFromCalendar:calendarCopy toCalendar:toCalendarCopy];
      if ([(EKEvent *)self currentUserMayActAsOrganizer])
      {
        if ([toCalendarCopy sharingStatus] == 2)
        {
          v9 = [toCalendarCopy allowsScheduling] ^ 1;
        }

        else
        {
          LOBYTE(v9) = 0;
        }

        v8 |= v9;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)eventFromICSEvent:(id)event inStore:(id)store
{
  v19[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  storeCopy = store;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(MEMORY[0x1E69E3C68]);
  v19[0] = eventCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v8 setComponents:v9 options:0];

  v10 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithCalendar:v8];
  v11 = [v10 ICSDataWithOptions:0];
  v12 = [[EKEventStore alloc] initWithEKOptions:48];
  defaultCalendarForNewEvents = [(EKEventStore *)v12 defaultCalendarForNewEvents];
  v14 = [(EKEventStore *)v12 importICSData:v11 intoCalendar:defaultCalendarForNewEvents options:*MEMORY[0x1E6992E28]];

  firstObject = [v14 firstObject];
  v16 = [firstObject duplicateToEventStore:storeCopy];
  [v16 setCalendar:0];

  objc_autoreleasePoolPop(v7);
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)setRecurrenceRuleFromICSString:(id)string
{
  v9[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = [MEMORY[0x1E69E3CD8] recurrenceRuleFromICSString:stringCopy];
  if (v5)
  {
    v6 = [(EKEvent *)self _ekRecurrenceRuleFromICSRecurrenceRule:v5];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [(EKEvent *)self setRecurrenceRules:v7];
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEvent setRecurrenceRuleFromICSString:];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_ekRecurrenceRuleFromICSRecurrenceRule:(id)rule
{
  v30[1] = *MEMORY[0x1E69E9840];
  ruleCopy = rule;
  if (ruleCopy)
  {
    selfCopy = self;
    context = objc_autoreleasePoolPush();
    v5 = objc_opt_new();
    [v5 setSummary:@"Temp event"];
    v28 = ruleCopy;
    v30[0] = ruleCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [v5 setRrule:v6];

    v7 = objc_alloc(MEMORY[0x1E69E3C90]);
    v8 = [MEMORY[0x1E69E3CA0] dateFromICSString:@"20220717T000000Z"];
    v9 = [v7 initWithValue:v8];
    [v5 setDtstart:v9];

    dtstart = [v5 dtstart];
    [v5 setDtend:dtstart];

    v11 = objc_alloc_init(MEMORY[0x1E69E3C68]);
    v29 = v5;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    [v11 setComponents:v12 options:0];

    v13 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithCalendar:v11];
    v14 = [v13 ICSDataWithOptions:0];
    v15 = [[EKEventStore alloc] initWithEKOptions:48];
    defaultCalendarForNewEvents = [(EKEventStore *)v15 defaultCalendarForNewEvents];
    v17 = [(EKEventStore *)v15 importICSData:v14 intoCalendar:defaultCalendarForNewEvents options:0];

    firstObject = [v17 firstObject];
    recurrenceRules = [firstObject recurrenceRules];
    lastObject = [recurrenceRules lastObject];

    if (lastObject)
    {
      eventStore = [(EKObject *)selfCopy eventStore];
      v22 = [lastObject duplicateToEventStore:eventStore];
    }

    else
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [EKEvent _ekRecurrenceRuleFromICSRecurrenceRule:];
      }

      v22 = 0;
    }

    ruleCopy = v28;

    objc_autoreleasePoolPop(context);
    if (lastObject)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)updateWithVCSEntity:(id)entity inCalendar:(id)calendar
{
  v73[1] = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  v70.receiver = self;
  v70.super_class = EKEvent;
  [(EKCalendarItem *)&v70 updateWithVCSEntity:entityCopy inCalendar:calendar];
  v7 = entityCopy;
  startDate = [v7 startDate];
  effectiveTimeZone = [(EKEvent *)self effectiveTimeZone];
  v10 = [startDate nsDateWithLocalTimeZone:effectiveTimeZone];

  endDate = [v7 endDate];
  effectiveTimeZone2 = [(EKEvent *)self effectiveTimeZone];
  v13 = [endDate nsDateWithLocalTimeZone:effectiveTimeZone2];

  if ([startDate floating])
  {
    [(EKEvent *)self setTimeZone:0];
  }

  else
  {
    effectiveTimeZone3 = [(EKEvent *)self effectiveTimeZone];
    [(EKEvent *)self setTimeZone:effectiveTimeZone3];
  }

  -[EKEvent setAllDay:](self, "setAllDay:", [startDate dateOnly]);
  [(EKEvent *)self setStartDate:v10];
  [(EKEvent *)self setEndDateUnadjustedForLegacyClients:v13];
  v15 = [v7 propertyForName:@"LOCATION"];
  singleValue = [v15 singleValue];
  value = [singleValue value];
  v18 = [value componentsJoinedByString:@" "];;

  if ([v18 length])
  {
    v19 = objc_alloc_init(EKStructuredLocation);
    [(EKStructuredLocation *)v19 setTitle:v18];
    [(EKEvent *)self setStructuredLocation:v19];
  }

  v20 = [v7 propertyForName:@"RRULE"];
  singleValue2 = [v20 singleValue];
  value2 = [singleValue2 value];

  if (value2)
  {
    v23 = [(EKEvent *)self _ekRecurrenceRuleFromVCSRecurrenceRule:value2];
    v24 = v23;
    if (v23)
    {
      v73[0] = v23;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
      [(EKEvent *)self setRecurrenceRules:v25];
    }
  }

  v61 = v10;
  v26 = [v7 propertyForName:@"TRANSP"];
  singleValue3 = [v26 singleValue];
  value3 = [singleValue3 value];
  unsignedIntegerValue = [value3 unsignedIntegerValue];

  if (unsignedIntegerValue > 2)
  {
    if (unsignedIntegerValue == 3)
    {
      calendar = [(EKCalendarItem *)self calendar];
      if (([calendar supportedEventAvailabilities] & 0x10) != 0)
      {
        unsignedIntegerValue = 4;
      }

      else
      {
        unsignedIntegerValue = 3;
      }
    }

    else
    {
      if (unsignedIntegerValue != 4)
      {
        unsignedIntegerValue = 0;
        goto LABEL_26;
      }

      calendar = [(EKCalendarItem *)self calendar];
      if (([calendar supportedEventAvailabilities] & 0x20) != 0)
      {
        unsignedIntegerValue = 5;
      }

      else
      {
        unsignedIntegerValue = 3;
      }
    }

    goto LABEL_26;
  }

  if (unsignedIntegerValue == 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = 0;
  }

  if (unsignedIntegerValue != 1)
  {
    unsignedIntegerValue = v30;
  }

LABEL_26:
  [(EKEvent *)self setAvailability:unsignedIntegerValue];
  v59 = v18;
  v60 = v13;
  v57 = value2;
  if (![v7 hasPropertyWithName:@"STATUS"])
  {
LABEL_31:
    v36 = 0;
    goto LABEL_32;
  }

  v32 = [v7 propertyForName:{@"STATUS", value2, v18, v13}];
  singleValue4 = [v32 singleValue];
  value4 = [singleValue4 value];
  unsignedIntegerValue2 = [value4 unsignedIntegerValue];

  if (unsignedIntegerValue2)
  {
    if (unsignedIntegerValue2 != 7)
    {
      if (unsignedIntegerValue2 == 1)
      {
        v36 = 1;
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v36 = 3;
  }

  else
  {
    v36 = 2;
  }

LABEL_32:
  [(EKEvent *)self setStatus:v36, v57];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v37 = [v7 propertyForName:@"ATTENDEE"];
  values = [v37 values];

  v39 = [values countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v67;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v67 != v41)
        {
          objc_enumerationMutation(values);
        }

        value5 = [*(*(&v66 + 1) + 8 * i) value];
        v44 = [EKAttendee attendeeWithName:0 url:value5];
        [(EKCalendarItem *)self addAttendee:v44];
      }

      v40 = [values countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v40);
  }

  v45 = [v7 propertyForName:@"EXDATE"];
  values2 = [v45 values];

  v47 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(values2, "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v48 = values2;
  v49 = [v48 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v63;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v63 != v51)
        {
          objc_enumerationMutation(v48);
        }

        value6 = [*(*(&v62 + 1) + 8 * j) value];
        v54 = [value6 nsDateWithLocalTimeZone:0];
        [v47 addObject:v54];
      }

      v50 = [v48 countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v50);
  }

  [(EKCalendarItem *)self setExceptionDates:v47];
  eventStore = [(EKObject *)self eventStore];
  [eventStore saveEvent:self span:1 commit:0 error:0];

  v56 = *MEMORY[0x1E69E9840];
}

- (id)_ekRecurrenceRuleFromVCSRecurrenceRule:(id)rule
{
  v51 = *MEMORY[0x1E69E9840];
  ruleCopy = rule;
  v4 = ruleCopy;
  if (!ruleCopy)
  {
    goto LABEL_35;
  }

  recurrenceType = [ruleCopy recurrenceType];
  v6 = 0;
  if (recurrenceType > 4)
  {
    if ((recurrenceType - 5) < 2)
    {
      v6 = 3;
    }

    goto LABEL_9;
  }

  if ((recurrenceType - 3) >= 2)
  {
    if (recurrenceType)
    {
      v6 = recurrenceType == 2;
      goto LABEL_9;
    }

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKEvent _ekRecurrenceRuleFromVCSRecurrenceRule:];
    }

LABEL_35:
    v31 = 0;
    goto LABEL_36;
  }

  v6 = 2;
LABEL_9:
  v35 = v6;
  if ([v4 hasDuration] && objc_msgSend(v4, "duration") >= 1)
  {
    v34 = -[EKRecurrenceEnd initWithOccurrenceCount:]([EKRecurrenceEnd alloc], "initWithOccurrenceCount:", [v4 duration]);
  }

  else
  {
    endDate = [v4 endDate];

    if (endDate)
    {
      endDate2 = [v4 endDate];
      v9 = [endDate2 nsDateWithLocalTimeZone:0];

      v34 = [[EKRecurrenceEnd alloc] initWithEndDate:v9];
    }

    else
    {
      v34 = 0;
    }
  }

  v10 = MEMORY[0x1E695DF70];
  weekdayList = [v4 weekdayList];
  v12 = [v10 arrayWithCapacity:{objc_msgSend(weekdayList, "count")}];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [v4 weekdayList];
  v13 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    v36 = *v46;
    v37 = v4;
    do
    {
      v16 = 0;
      v38 = v14;
      do
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v45 + 1) + 8 * v16);
        occurrenceList = [v4 occurrenceList];
        v19 = [occurrenceList count];

        if (v19)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          occurrenceList2 = [v4 occurrenceList];
          v21 = [occurrenceList2 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v21)
          {
            v22 = v21;
            v40 = v16;
            v23 = *v42;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v42 != v23)
                {
                  objc_enumerationMutation(occurrenceList2);
                }

                v25 = +[EKRecurrenceDayOfWeek dayOfWeek:weekNumber:](EKRecurrenceDayOfWeek, "dayOfWeek:weekNumber:", [objc_opt_class() ekWeekDayFromVCSWeekDay:{objc_msgSend(v17, "unsignedIntegerValue")}], objc_msgSend(*(*(&v41 + 1) + 8 * i), "integerValue"));
                [v12 addObject:v25];
              }

              v22 = [occurrenceList2 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v22);
            v15 = v36;
            v4 = v37;
            v14 = v38;
            v16 = v40;
          }
        }

        else
        {
          occurrenceList2 = +[EKRecurrenceDayOfWeek dayOfWeek:](EKRecurrenceDayOfWeek, "dayOfWeek:", [objc_opt_class() ekWeekDayFromVCSWeekDay:{objc_msgSend(v17, "unsignedIntegerValue")}]);
          [v12 addObject:occurrenceList2];
        }

        ++v16;
      }

      while (v16 != v14);
      v14 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v14);
  }

  v26 = [EKRecurrenceRule alloc];
  interval = [v4 interval];
  dayNumberList = [v4 dayNumberList];
  monthList = [v4 monthList];
  dayList = [v4 dayList];
  v31 = [(EKRecurrenceRule *)v26 initRecurrenceWithFrequency:v35 interval:interval daysOfTheWeek:v12 daysOfTheMonth:dayNumberList monthsOfTheYear:monthList weeksOfTheYear:0 daysOfTheYear:dayList setPositions:0 end:v34];

LABEL_36:
  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

+ (int64_t)ekWeekDayFromVCSWeekDay:(unint64_t)day
{
  if (day - 1 < 6)
  {
    return day + 1;
  }

  else
  {
    return 1;
  }
}

void __43__EKEvent_EKEvent_Shared__cachedJunkStatus__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __43__EKEvent_EKEvent_Shared__cachedJunkStatus__block_invoke_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setProposedStartDate:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 privacyDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Tried to set proposed start date on invalid event: %@", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_hasRecurrenceRuleChangeRequiringSpanAll
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  recurrenceRules = [a2 recurrenceRules];
  v8[0] = 67109376;
  v8[1] = [recurrenceRules count];
  v9 = 1024;
  v10 = [a3 count];
  _os_log_error_impl(&dword_1A805E000, selfCopy, OS_LOG_TYPE_ERROR, "Calling _hasRecurrenceRuleChangeRequiringSpanAll on an event that has or had multiple recurrence rules is not supported. Results may be unpredictable. Current count = %d, previous = %d", v8, 0xEu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_duplicateAddedAttachmentsToDetachedEvents:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v7 = 134218498;
  v8 = [a2 count];
  v9 = 2048;
  v10 = [a3 count];
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_1A805E000, v5, OS_LOG_TYPE_ERROR, "Found the wrong number of added attachments (found %lu, should have had %lu) and those attachments were %@", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_adjustAvailabilityAfterMovingOrCopyingFromCalendar:toCalendar:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSuggestionsEKEventAvailabilityState(void)"];
  [v0 handleFailureInFunction:v1 file:@"EKEvent.m" lineNumber:111 description:{@"%s", dlerror()}];

  __break(1u);
}

void __116__EKEvent__adjustAttachmentsAfterMovingOrCopyingFromCalendar_toCalendar_cachedConstraintsForOldCalendar_savingItem___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Couldn't copy attachment file, so we're just going to have to remove the attachment from the moved event", buf, 2u);
}

- (void)updateEventToEvent:commit:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, v0, v1, "[EKEvent updateEventToEvent:] was given a nil event and will CANCEL itself [%@] with EKSuggestedEventInfo [%@]");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)updateEventToEvent:commit:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateEventToEvent:commit:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "[EKEvent updateEventToEvent:] CANCEL finished correctly [%@], now attempting to save", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateEventToEvent:commit:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateEventToEvent:commit:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "[EKEvent updateEventToEvent:] saved itself correctly [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateEventToEvent:commit:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateEventToEvent:commit:.cold.7()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, v0, v1, "[EKEvent updateEventToEvent:] is about to save itself [%@] with EKSuggestedEventInfo [%@]");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)setRecurrenceRuleFromICSString:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end