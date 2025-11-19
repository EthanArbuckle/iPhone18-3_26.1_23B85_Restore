@interface EKEvent
+ (BOOL)_calendarsAreSharedToMeInSameSourceAndHaveSameOwner:(id)a3;
+ (BOOL)_notDetachedOccurrenceOfEvent:(id)a3 existsInDateRangeWithStartDate:(id)a4 endDate:(id)a5 inTimeZone:(id)a6;
+ (BOOL)_validateSpanForRemove:(int64_t)a3 error:(id *)a4;
+ (BOOL)isMultiDayTimedEventWithStartDate:(id)a3 endDate:(id)a4 allDay:(BOOL)a5 inCalendar:(id)a6;
+ (EKEvent)eventWithEventStore:(EKEventStore *)eventStore;
+ (id)EKObjectChangeSummarizer_multiValueDiffKeys;
+ (id)EKObjectChangeSummarizer_singleValueDiffKeys;
+ (id)_basicChangesRequiringSpanAll;
+ (id)_locationStringForLocations:(id)a3;
+ (id)_modifiedNotificationUserInfoWithIdentifier:(id)a3 forRevert:(BOOL)a4;
+ (id)_relatedCachedTimeKeys;
+ (id)eventFromICSEvent:(id)a3 inStore:(id)a4;
+ (id)generateUniqueIDWithEvent:(id)a3 originalEvent:(id)a4 calendar:(id)a5;
+ (id)knownKeysToSkipForFutureChanges;
+ (id)knownKeysToUseForFutureChanges;
+ (id)knownPerUserPropertyKeys;
+ (id)knownRelationshipMultiValueKeys;
+ (id)knownRelationshipSingleValueKeys;
+ (id)knownRequireRSVPKeys;
+ (id)knownSingleValueKeysForComparison;
+ (id)uniqueIDForDetachedOccurrenceOfEvent:(id)a3 withOriginalStartDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6;
+ (int64_t)_coercedEventAvailabilityForDesiredAvailability:(int64_t)a3 supportedAvailabilities:(unint64_t)a4;
+ (int64_t)_eventAvailabilityForParticipantStatus:(int64_t)a3 supportedEventAvailabilities:(unint64_t)a4 isAllDayEvent:(BOOL)a5;
+ (int64_t)ekWeekDayFromVCSWeekDay:(unint64_t)a3;
+ (void)_detachOrSliceEvent:(id)a3 withSpan:(int64_t)a4 savingEvent:(id)a5 withOriginalStartDate:(id)a6 newStartDate:(id)a7;
- (BOOL)_attemptToUpdateComplexRecurrenceRule;
- (BOOL)_canMoveOrCopyFromCalendar:(id)a3 toCalendar:(id)a4 allowedRequirements:(int64_t)a5 error:(id *)a6;
- (BOOL)_cancelWithSpan:(int64_t)a3 error:(id *)a4;
- (BOOL)_changesRequireDetachOrSlice;
- (BOOL)_checkStartDateConstraintAgainstDate:(id)a3 timeZone:(id)a4 error:(id *)a5;
- (BOOL)_couldBeJunkCommon;
- (BOOL)_detectedConferenceURLOnBackingObjectMayBeInvalid;
- (BOOL)_diff:(id)a3 isDifferentFromCommittedEventHelperRequiresReschedule:(BOOL)a4;
- (BOOL)_eligibleForTravelAdvisoriesIncludePotential:(BOOL)a3;
- (BOOL)_eventIsTheOnlyRemainingOccurrence;
- (BOOL)_fetchedEventIsConflict:(id)a3 forStartDate:(id)a4 endDate:(id)a5;
- (BOOL)_hasAbsoluteAlarms;
- (BOOL)_hasBasicChangesRequiringSpanAll;
- (BOOL)_hasExternalIDOrDeliverySource;
- (BOOL)_hasOrHadRecurrenceRule;
- (BOOL)_hasRecurrenceRuleChangeRequiringSpanAll;
- (BOOL)_isAllDay;
- (BOOL)_isOnlyChangeToAttendeesSelfAttendeeParticipationStatus;
- (BOOL)_isOriginalOccurrenceStartDateSameAsCommittedStartDate;
- (BOOL)_isParticipationStatusDirty;
- (BOOL)_isSignificantlyDetachedComparedToMaster:(id)a3 shouldIgnorePartStat:(BOOL)a4;
- (BOOL)_isSimpleRepeatingEvent;
- (BOOL)_isValidAttendee:(id)a3 forCalendar:(id)a4 selfAttendeeIsValid:(BOOL)a5;
- (BOOL)_multiValueRelatedObject:(id)a3 isAlsoASingleValueRelatedObjectForKey:(id)a4;
- (BOOL)_needsAttendeePartStatReset;
- (BOOL)_noRemainingEarlierOccurrences;
- (BOOL)_occurrenceExistsOnDate:(id)a3 timeZone:(id)a4;
- (BOOL)_requirementsToMoveOrCopyToCalendarHelperAllowedToMoveOrCopyEventFromCalendar:(id)a3 toCalendar:(id)a4;
- (BOOL)_requirementsToMoveToCalendarHelperAlterationsRequiredToMoveEventFromCalendar:(id)a3 toCalendar:(id)a4;
- (BOOL)_requirementsToMoveToCalendarHelperDuplicationRequiredToMoveEventFromCalendar:(id)a3 toCalendar:(id)a4;
- (BOOL)_requirementsToMoveToCalendarHelperNeedToRemoveOriginalToMoveEventFromCalendar:(id)a3 toCalendar:(id)a4;
- (BOOL)_requirementsToMoveToCalendarHelperReinviteAttendeesRequiredToMoveEventFromCalendar:(id)a3 toCalendar:(id)a4;
- (BOOL)_requirementsToMoveToCalendarHelperRemoveAttendeesRequiredToMoveEventFromCalendar:(id)a3 toCalendar:(id)a4;
- (BOOL)_reset;
- (BOOL)_revertIncludingCoCommits:(BOOL)a3;
- (BOOL)_saveUndetachedOccurrenceWithError:(id *)a3;
- (BOOL)_shouldAlertInviteeDeclines;
- (BOOL)_shouldCancelInsteadOfDeleteWithSpan:(int64_t)a3;
- (BOOL)_shouldDeclineInsteadOfDelete;
- (BOOL)_shouldPreserveFutureWhenSlicingWithStartDate:(id)a3 newStartDate:(id)a4;
- (BOOL)_suggestedStartDateHelperRecurrenceRuleRequiresExpansion:(id)a3 forDate:(id)a4;
- (BOOL)_userAddressesRepresentInvitedAttendee:(id)a3 checkEmailAddresses:(BOOL)a4;
- (BOOL)_validateDatesAndRecurrencesGivenSpan:(int64_t)a3 error:(id *)a4;
- (BOOL)allowsAllDayModifications;
- (BOOL)allowsAttendeesModifications;
- (BOOL)allowsAvailabilityModifications;
- (BOOL)allowsCalendarModifications;
- (BOOL)allowsClearingCommentsAsOrganizer;
- (BOOL)allowsParticipationStatusModifications;
- (BOOL)allowsPrivacyLevelModifications;
- (BOOL)allowsProposedTimeModifications;
- (BOOL)allowsRecurrenceModificationsForSpan:(int64_t)a3;
- (BOOL)allowsResponseCommentModifications;
- (BOOL)allowsSpansOtherThanThisEvent;
- (BOOL)allowsTravelTimeModifications;
- (BOOL)automaticLocationGeocodingAllowed;
- (BOOL)canDetachSingleOccurrence;
- (BOOL)canForward;
- (BOOL)canWeInferUpdateToComplexRecurrenceRule;
- (BOOL)changingAllDayPropertyIsAllowed;
- (BOOL)conferenceURLForDisplayCached;
- (BOOL)conformsToRecurrenceRules:(id)a3;
- (BOOL)currentUserMayActAsOrganizer;
- (BOOL)disallowProposeNewTime;
- (BOOL)durationOverlapsRecurrenceInterval;
- (BOOL)firedTTL;
- (BOOL)futureOccurrencesCannotBeAffectedByChangingStartDateToDate:(id)a3;
- (BOOL)hasADateChangeAndComplexRecurrenceWeDontKnowHowToUpdate;
- (BOOL)hasAttendeeProposedTimes;
- (BOOL)hasChangesRequiringSpanAll;
- (BOOL)hasCustomRecurrence;
- (BOOL)hasPredictedLocation;
- (BOOL)hasValidEventAction;
- (BOOL)isAttendeeSameAsOrganizer:(id)a3;
- (BOOL)isBirthday;
- (BOOL)isCurrentUserInvitedAttendee;
- (BOOL)isDetached;
- (BOOL)isDifferentAndHasForwardedAttendeesWithDiff:(id)a3;
- (BOOL)isDifferentAndHasNewProposedTimeWithDiff:(id)a3;
- (BOOL)isDifferentAndHasUnscheduledAttendeesWithDiff:(id)a3;
- (BOOL)isDifferentAndModifiedAttendeesWithDiff:(id)a3;
- (BOOL)isDifferentExceptingPerUserPropertiesWithDiff:(id)a3;
- (BOOL)isDifferentFromCommittedEventAndHasUnscheduledAttendees;
- (BOOL)isDifferentFromCommittedEventAndRequiresRSVP;
- (BOOL)isDifferentFromCommittedEventAndRequiresReschedule;
- (BOOL)isEditable;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFirstOccurrence;
- (BOOL)isFirstOccurrenceIncludingSlices;
- (BOOL)isFloating;
- (BOOL)isMasterOrDetachedOccurrence;
- (BOOL)isMultiDayTimedEventInCalendar:(id)a3;
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
- (BOOL)removeWithSpan:(int64_t)a3 error:(id *)a4;
- (BOOL)requiresDetach;
- (BOOL)responseMustApplyToAll;
- (BOOL)saveWithSpan:(int64_t)a3 error:(id *)a4;
- (BOOL)seriesHasOutOfOrderEvents;
- (BOOL)seriesHasOverlappingOrOnSameDayOrOutOfOrderEvents;
- (BOOL)serverSupportedProposeNewTime;
- (BOOL)shouldHaveDefaultAlarms;
- (BOOL)supportsAddingAttachments;
- (BOOL)supportsJunkReporting;
- (BOOL)supportsParticipationStatusModificationsWithoutNotification;
- (BOOL)travelAdvisoryBehaviorIsEffectivelyEnabled;
- (BOOL)updateWithGeocodedMapItemAndSaveWithCommit:(id)a3 eventStore:(id)a4 error:(id *)a5;
- (BOOL)validateOccurrenceDateStillMatchesRecurrenceRules;
- (BOOL)validateRecurrenceRule:(id)a3 error:(id *)a4;
- (BOOL)validateWithSpan:(int64_t)a3 error:(id *)a4;
- (EKCalendarDate)originalOccurrenceEndDate;
- (EKCalendarDate)originalOccurrenceStartDate;
- (EKCalendarDate)startCalendarDateIncludingTravelTime;
- (EKEvent)init;
- (EKEvent)initWithEventStore:(id)a3;
- (EKEvent)initWithPersistentObject:(id)a3 objectForCopy:(id)a4;
- (EKEvent)initWithPersistentObject:(id)a3 occurrenceDate:(id)a4;
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
- (id)_adjustDateIfFloatingForDate:(id)a3;
- (id)_buildConferenceStringFromNotesWithoutConference:(id)a3 serializedConference:(id)a4;
- (id)_cachedPredictedLocation;
- (id)_calculateDurationWithStart:(id)a3 end:(id)a4 allDay:(BOOL)a5;
- (id)_committedEndDate;
- (id)_committedStartDate;
- (id)_conferenceRoomDisplayStrings;
- (id)_defaultAlarmOffset;
- (id)_detectConferenceURL;
- (id)_ekRecurrenceRuleFromICSRecurrenceRule:(id)a3;
- (id)_ekRecurrenceRuleFromVCSRecurrenceRule:(id)a3;
- (id)_eventKitPropertyKeyForCalendarItemErrorPropertyKey:(id)a3;
- (id)_firstNonConferenceRoomLocationTitle;
- (id)_generateNewUniqueID;
- (id)_keysToChangeForDuplicateWithOptions:(int64_t)a3;
- (id)_lastRecurrenceDate;
- (id)_leftoversInDates:(id)a3 withGeneratedDates:(id)a4;
- (id)_nextReminderOccurrenceDate;
- (id)_nsCalendar;
- (id)_occurrenceDatesForCount:(unint64_t)a3;
- (id)_originallyCommittedVirtualConference;
- (id)_pinDate:(id)a3 withPinMode:(unint64_t)a4;
- (id)_prioritizedConferencesSources;
- (id)_travelTimeInternalDescription;
- (id)_updateMasterDate:(id)a3 forChangeToOccurrenceDate:(id)a4 fromOriginalOccurrenceDate:(id)a5;
- (id)adjustedPersistedDateForDate:(id)a3 withAdjustmentMode:(unint64_t)a4 pinMode:(unint64_t)a5 clientCalendarDate:(id *)a6;
- (id)attendeesNotIncludingOrganizer;
- (id)attendeesNotIncludingOrganizerOrLocationsOrResources;
- (id)cachedPredictedLocation;
- (id)coCommitEvents;
- (id)committedConstraints;
- (id)committedCopy;
- (id)committedValueForKey:(id)a3;
- (id)conferenceURLDetected;
- (id)conferenceURLForDisplay;
- (id)constraints;
- (id)copyToCalendar:(id)a3 withOptions:(int64_t)a4;
- (id)defaultAlarm;
- (id)defaultAlarms;
- (id)diffFromCommitted;
- (id)displayNotes;
- (id)duplicateWithOptions:(int64_t)a3;
- (id)earliestOccurrenceEndingAfter:(id)a3 excludeSignificantDetachments:(BOOL)a4 excludeCanceledDetachments:(BOOL)a5 excludeDeclinedDetachments:(BOOL)a6;
- (id)effectiveTimeZone;
- (id)masterEvent;
- (id)nextOccurrence;
- (id)nextOccurrenceOrDetachmentAfter:(id)a3;
- (id)potentialConflictOccurrenceDatesInTimePeriod:(double *)a3;
- (id)predictedLocation;
- (id)previousOccurrence;
- (id)previousOccurrenceOrDetachmentBefore:(id)a3;
- (id)previouslySavedCopy;
- (id)privacyDescription;
- (id)privacyLevelString;
- (id)privacySafeIntegrationEventDescription;
- (id)propertiesThatCanBeModifiedOnReadOnlyCalendars;
- (id)recurrenceRule;
- (id)roomAttendees;
- (id)scanForConflicts;
- (id)singleRecurrenceRule;
- (id)snapshotCopyWithPropertyKeysToCopy:(id)a3 propertyKeysToSkip:(id)a4;
- (id)startOfDayForEndDateInCalendar:(id)a3;
- (id)startOfDayForStartDateInCalendar:(id)a3;
- (id)suggestedStartDateForCurrentRecurrenceRuleWithSimulatedNowDate:(id)a3;
- (id)title;
- (int)externalTrackingStatus;
- (int64_t)_parentParticipationStatus;
- (int64_t)compareOriginalStartDateWithEvent:(id)a3;
- (int64_t)compareStartDateIncludingTravelWithEvent:(id)a3;
- (int64_t)currentUserGeneralizedParticipantRole;
- (int64_t)daysSpannedInCalendar:(id)a3;
- (int64_t)locationPredictionState;
- (int64_t)participationStatus;
- (int64_t)pendingParticipationStatus;
- (int64_t)privacyLevel;
- (int64_t)requirementsToMoveFromCalendar:(id)a3 toCalendar:(id)a4;
- (int64_t)requirementsToMoveToCalendar:(id)a3;
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
- (void)_adjustAfterMovingOrCopyingFromOldCalendar:(id)a3 toNewCalendar:(id)a4 cachedConstraintsForOldCalendar:(id)a5 savingItem:(id)a6;
- (void)_adjustAttachmentsAfterMovingOrCopyingFromCalendar:(id)a3 toCalendar:(id)a4 cachedConstraintsForOldCalendar:(id)a5 savingItem:(id)a6;
- (void)_adjustAttendeesAfterMovingOrCopyingFromCalendar:(id)a3 toCalendar:(id)a4;
- (void)_adjustAvailabilityAfterMovingOrCopyingFromCalendar:(id)a3 toCalendar:(id)a4;
- (void)_adjustExternalFieldsAfterMovingOrCopyingFromCalendar:(id)a3 toCalendar:(id)a4 cachedConstraintsForOldCalendar:(id)a5;
- (void)_adjustPrivacyAfterMovingOrCopyingFromCalendar:(id)a3 toCalendar:(id)a4 cachedConstraintsForOldCalendar:(id)a5 savingItem:(id)a6;
- (void)_adjustRecurrenceRulesAfterMovingOrCopyingFromCalendar:(id)a3 toCalendar:(id)a4 notes:(id)a5;
- (void)_adjustTimeZoneAfterMovingOrCopyingToCalendar:(id)a3 notes:(id)a4;
- (void)_adjustURLAfterMovingOrCopyingToCalendar:(id)a3 notes:(id)a4;
- (void)_applyTimeChangesToMaster;
- (void)_assignAllAttachmentsNewIdentities;
- (void)_cancelDetachedEvents;
- (void)_clearAttendeeChangedFlags;
- (void)_clearExceptionDatesAndUpdateDetachedOriginalDates:(id)a3;
- (void)_clearLocationPredictionCacheIfNotFrozen;
- (void)_clearLocationPredictionCacheIfNotFrozenHoldingLock;
- (void)_clearOriginalDateFields;
- (void)_deleteErrorIfInvalid;
- (void)_deleteFromOccurrenceDateOnward:(id)a3 includeSlices:(BOOL)a4;
- (void)_deleteThisOccurrence;
- (void)_deleteWithSpan:(int64_t)a3;
- (void)_detachOrSliceWithSpan:(int64_t)a3 withOriginalStartDate:(id)a4 newStartDate:(id)a5;
- (void)_duplicateAddedAttachmentsToDetachedEvents:(id)a3;
- (void)_extendConferenceURLExpirationDateToDate:(id)a3;
- (void)_filterExceptionDatesAndDetachments;
- (void)_hasRecurrenceRuleChangeRequiringSpanAll;
- (void)_propagateChangesToDetachedEvents:(id)a3 originalItemBeforeSave:(id)a4 startDateOffset:(id)a5 duration:(id)a6 calendar:(id)a7;
- (void)_propagateChangesToSlice:(id)a3 originalItemBeforeSave:(id)a4 startDateOffset:(id)a5 duration:(id)a6 calendar:(id)a7 updateRecurrenceEnd:(BOOL)a8;
- (void)_recursivelyAssignAllAttachmentsNewIdentities;
- (void)_removeInvalidAlarmsDuringSave;
- (void)_respondToProposedTimeFromAttendee:(id)a3 shouldAccept:(BOOL)a4;
- (void)_saveUndeletedDetachedOccurrence;
- (void)_setEndDateUnadjustedForLegacyClients:(id)a3 allowSettingIfNotEditable:(BOOL)a4;
- (void)_setInvitationChangedProperty:(BOOL)a3 forFlag:(unsigned int)a4;
- (void)_setInvitationStatusAlertedIfNecessary;
- (void)_setInvitationStatusUnalertedIfNecessary;
- (void)_setStartDate:(id)a3 andClearProposedTimes:(BOOL)a4 allowSettingIfNotEditable:(BOOL)a5;
- (void)_snoozeAlarm:(id)a3 withTimeIntervalFromNow:(double)a4 orTargetDate:(id)a5 pinsTriggerToStartDate:(BOOL)a6;
- (void)_updateEndDateForDate:(id)a3 withAdjustmentMode:(unint64_t)a4 adjustStartDate:(BOOL)a5;
- (void)_updateModifiedProperties;
- (void)_updateModifiedPropertiesForThisEventAndAllDetachments;
- (void)_updateRecurrenceEndDateForEvent:(id)a3 calendar:(id)a4 withOffset:(id)a5;
- (void)_updateRecurrenceEndDatesWithAdjustmentMode:(unint64_t)a3;
- (void)_updateSelfAttendeeToMatchSelfAttendee:(id)a3;
- (void)_updateSelfFromDetachedEventIfNeededForDelete;
- (void)_updateStartDateForDate:(id)a3 withAdjustmentMode:(unint64_t)a4 adjustEndDate:(BOOL)a5;
- (void)_updateUUIDForNewParticipants;
- (void)_updateVideoConferenceOnlyModified;
- (void)_willSave;
- (void)addConferenceRooms:(id)a3;
- (void)adjustedDatesForDate:(id)a3 persistedDateIsInUTC:(BOOL)a4 withAdjustmentMode:(unint64_t)a5 pinMode:(unint64_t)a6 outClientCalendarDate:(id *)a7 outPersistedDate:(id *)a8;
- (void)applyChangesFromEvent:(id)a3 toEvent:(id)a4 ignoringDifferencesFrom:(id)a5;
- (void)clearCachedTimeValues;
- (void)clearInvitationStatus;
- (void)clearVirtualConferenceURLsQueuedForInvalidation;
- (void)confirmPredictedLocation:(id)a3;
- (void)dismissAcceptedProposeNewTimeNotification;
- (void)dismissAttendeeRepliedNotification;
- (void)forceSetTimeZone:(id)a3;
- (void)invalidateRemovedVirtualConferences;
- (void)invalidateVirtualConferenceURLIfNeededOnCommit:(id)a3;
- (void)makeRecurrenceEndCountBased;
- (void)makeRecurrenceEndDateBased;
- (void)markAsCommitted;
- (void)markAsSaved;
- (void)markAsUndeleted;
- (void)markAsUndetachedWithStartDate:(id)a3 endDate:(id)a4;
- (void)markEventAsAttendeeForward;
- (void)parsedConference:(id *)a3 andNotes:(id *)a4;
- (void)postModifiedNotification;
- (void)postModifiedNotificationWithUserInfo:(id)a3;
- (void)prefetchAttendeesWithAdditionalProperties:(id)a3;
- (void)rebaseSkippingRelationProperties:(id)a3;
- (void)rebaseSkippingRelationProperties:(id)a3 toEventStore:(id)a4;
- (void)rebaseToEventStore:(id)a3;
- (void)rejectPredictedLocation;
- (void)removeConferenceRooms:(id)a3;
- (void)removeServerRefreshRelatedProperties;
- (void)reset;
- (void)rollback;
- (void)setAvailability:(EKEventAvailability)availability;
- (void)setBirthdayContact:(id)a3;
- (void)setCachedJunkStatus:(unint64_t)a3;
- (void)setCalendar:(id)a3;
- (void)setColor:(id)a3;
- (void)setConferenceURL:(id)a3;
- (void)setDisplayNotes:(id)a3;
- (void)setEndDateRaw:(id)a3;
- (void)setEndLocation:(id)a3;
- (void)setFlag:(unint64_t)a3 value:(BOOL)a4;
- (void)setFlags:(unint64_t)a3;
- (void)setImage:(id)a3;
- (void)setInvitationStatus:(unint64_t)a3;
- (void)setIsAlerted:(BOOL)a3;
- (void)setIsJunk:(BOOL)a3 shouldSave:(BOOL)a4;
- (void)setJunkStatus:(unint64_t)a3;
- (void)setLocationPredictionAllowed:(BOOL)a3;
- (void)setLocationPredictionState:(int64_t)a3;
- (void)setLocations:(id)a3;
- (void)setNotes:(id)a3;
- (void)setNotesCommon:(id)a3;
- (void)setParticipationStatus:(int64_t)a3;
- (void)setPredictedLocationFrozen:(BOOL)a3;
- (void)setPrivacyLevel:(int64_t)a3;
- (void)setPrivacyLevelWithoutVerifyingPrivacyModificationsAllowed:(int64_t)a3;
- (void)setProposedStartDate:(id)a3;
- (void)setRecurrenceRule:(id)a3;
- (void)setRecurrenceRuleFromICSString:(id)a3;
- (void)setRecurrenceRules:(id)a3;
- (void)setSpecialDayType:(int64_t)a3;
- (void)setStartDateComponentsPreservingDuration:(id)a3;
- (void)setStartDateRaw:(id)a3;
- (void)setStatus:(int64_t)a3;
- (void)setStructuredLocation:(EKStructuredLocation *)structuredLocation;
- (void)setStructuredLocation:(id)a3 preserveConferenceRooms:(BOOL)a4;
- (void)setSuggestionInfo:(id)a3;
- (void)setTimeZone:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTravelAdvisoryBehavior:(int64_t)a3;
- (void)setTravelTime:(double)a3;
- (void)setURL:(id)a3;
- (void)setVirtualConference:(id)a3;
- (void)updateDefaultAlarms;
- (void)updateWithVCSEntity:(id)a3 inCalendar:(id)a4;
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
  v3 = [(EKEvent *)self originalOccurrenceStartDate];
  v4 = [(EKEvent *)self _committedStartDate];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  [v3 absoluteTime];
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
  block[4] = a1;
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

  v4 = [(EKCalendarItem *)self originalItem];
  if ([(EKCalendarItem *)self hasRecurrenceRules]|| ([(EKCalendarItem *)self originalItem], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if (v4)
    {
      v6 = [(EKEvent *)self originalStartDate];
      v7 = [v4 _committedStartDate];
      v3 = [v6 isEqualToDate:v7];
    }

    else
    {
      v3 = [(EKEvent *)self _isOriginalOccurrenceStartDateSameAsCommittedStartDate];
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)isFloating
{
  v2 = [(EKCalendarItem *)self timeZone];
  v3 = v2 == 0;

  return v3;
}

+ (id)knownRelationshipSingleValueKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EKEvent_knownRelationshipSingleValueKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  v3 = [(EKCalendarItem *)self timeZone];
  if (!v3)
  {
    v4 = [(EKObject *)self eventStore];
    v3 = [v4 timeZone];
  }

  return v3;
}

- (EKStructuredLocation)structuredLocation
{
  v3 = [(EKEvent *)self predictedLocation];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(EKCalendarItem *)self structuredLocationWithoutPrediction];
  }

  v6 = v5;

  return v6;
}

- (id)title
{
  v15.receiver = self;
  v15.super_class = EKEvent;
  v3 = [(EKCalendarItem *)&v15 title];
  v4 = [(__CFString *)v3 length];
  v5 = [(EKEvent *)self privacyLevel];
  if (![(EKObject *)self isNew]&& (!v4 ? (v6 = (v5 & 0xFFFFFFFFFFFFFFFELL) == 2) : (v6 = 0), v6))
  {
    v7 = EKBundle();
    v8 = [v7 localizedStringForKey:@"Private Event" value:&stru_1F1B49D68 table:0];

    v3 = v8;
  }

  else
  {
    v9 = [(EKEvent *)self birthdayContactIdentifier];

    if (v9)
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
  if (v3)
  {
    v11 = v3;
  }

  v10 = v11;
  v3 = v10;
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
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v3 = [(EKEvent *)self proposedStartDate];
  if (v3)
  {
    v4 = [(EKEvent *)self proposedStartDate];
    v5 = [(EKEvent *)self startDate];
    v6 = [v4 isEqualToDate:v5];
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
  v3 = [v2 integerValue];

  return v3;
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
    v3 = [(EKCalendarItem *)self attendees];
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v3);
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
              v12 = [v9 proposedStartDateStatus];

              if (v12 != 3)
              {

                v13 = 1;
                goto LABEL_16;
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v3 = [v2 integerValue];

  return v3;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = EKEvent;
  v3 = [(EKObject *)&v8 hash];
  v4 = [(EKEvent *)self occurrenceStartDate];
  [v4 absoluteTime];
  v6 = v5;

  return v3 ^ v6;
}

- (NSDate)endDateUnadjustedForLegacyClients
{
  v2 = [(EKEvent *)self occurrenceEndDate];
  v3 = [v2 date];

  return v3;
}

- (NSString)eventIdentifier
{
  v3 = [(EKCalendarItem *)self uniqueID];
  v4 = [(EKObject *)self eventStore];
  v5 = [v4 sourceIdentifierForEvent:self];

  v6 = 0;
  if (v3 && v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v5, *MEMORY[0x1E6993180], v3];
  }

  return v6;
}

- (NSString)locationWithoutPrediction
{
  v3 = [(EKEvent *)self preferredLocationWithoutPrediction];
  v4 = [v3 title];

  v5 = [(EKEvent *)self preferredLocationWithoutPrediction];
  v6 = [v5 address];

  v7 = [MEMORY[0x1E6992FD8] fullDisplayStringWithTitle:v4 address:v6];

  return v7;
}

- (EKStructuredLocation)preferredLocationWithoutPrediction
{
  v3 = [(EKCalendarItem *)self clientLocation];
  if (!v3)
  {
    v3 = [(EKCalendarItem *)self structuredLocationWithoutPrediction];
  }

  return v3;
}

- (EKVirtualConference)virtualConference
{
  v5 = 0;
  [(EKEvent *)self parsedConference:&v5 andNotes:0];
  v2 = v5;
  v3 = [v2 conference];

  return v3;
}

- (BOOL)conferenceURLForDisplayCached
{
  v3 = [(EKCalendarItem *)self calendar];
  v4 = [v3 source];
  v5 = [v4 sourceType];

  if (v5 == 2)
  {
    v6 = [(EKObject *)self cachedValueForKey:@"conferenceURLDetectedKey" populateBlock:0];
    v7 = v6 != 0;
  }

  else
  {
    v6 = [(EKEvent *)self conferenceURL];
    if (v6)
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
  v2 = [(EKEvent *)self locationWithoutPrediction];
  v3 = [v2 componentsSeparatedByString:@" "];;

  return v3;
}

- (unint64_t)flags
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69925D8]];
  v3 = [v2 intValue];

  return v3;
}

- (unint64_t)reminderOccurrenceType
{
  if (![(EKEvent *)self isReminderIntegrationEvent]|| ![(EKCalendarItem *)self hasRecurrenceRules])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  v4 = [(EKEvent *)self startDate];
  v5 = MEMORY[0x1E695DEE8];
  v6 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v7 = [v5 CalGregorianCalendarForTimeZone:v6];

  v8 = [v4 compareDateIgnoringTimeComponents:v3 inCalendar:v7];
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
      v9 = [(EKEvent *)self _nextReminderOccurrenceDate];
      v8 = [v9 compareDateIgnoringTimeComponents:v3 inCalendar:v7] != 1;
    }
  }

  return v8;
}

- (BOOL)isBirthday
{
  v2 = [(EKEvent *)self birthdayContactIdentifier];
  v3 = v2 != 0;

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
  v2 = [(EKCalendarItem *)self selfAttendee];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 participantStatus];
  }

  else
  {
    v4 = 2;
  }

  return v4;
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

  v4 = [(EKCalendarItem *)self selfAttendee];

  if (v4)
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
  v2 = [(EKCalendarItem *)self originalItem];
  v3 = [v2 isPhantom];

  return v3;
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
  v3 = [(EKEvent *)self originalStartDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else if ([(EKCalendarItem *)self hasRecurrenceRules])
  {
    v6 = [(EKEvent *)self originalOccurrenceStartDate];
    v5 = [v6 date];

    v7 = [(EKCalendarItem *)self timeZone];

    if (!v7)
    {
      v8 = [(EKEvent *)self effectiveTimeZone];
      v9 = [v5 dateInTimeZone:0 fromTimeZone:v8];

      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
    v3 = appEntityIdentifierOverride;
LABEL_5:
    v5 = v3;
    goto LABEL_6;
  }

  if ([(EKEvent *)self isDetached])
  {
    v3 = [(EKCalendarItem *)self UUID];
    goto LABEL_5;
  }

  v7 = [(EKEvent *)self recurrenceIdentifier];
  v5 = [v7 identifierString];

LABEL_6:

  return v5;
}

- (int64_t)travelRoutingMode
{
  v2 = MEMORY[0x1E6992FD8];
  v3 = [(EKCalendarItem *)self travelStartLocation];
  v4 = [v3 routing];
  v5 = [v2 routingModeEnumForCalRouteType:v4];

  return v5;
}

- (double)travelTime
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69929F8]];
  [v2 doubleValue];
  v4 = v3;

  return fmax(v4, 0.0);
}

- (void)setIsJunk:(BOOL)a3 shouldSave:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [(EKEvent *)self setJunkStatus:v7];
  if (v4)
  {
    v8 = [(EKObject *)self eventStore];
    v11 = 0;
    [v8 saveEvent:self span:2 commit:1 error:&v11];
    v9 = v11;

    if (v9)
    {
      v10 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(EKEvent(EKEvent_Shared) *)a3 setIsJunk:v9 shouldSave:v10];
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
  v3 = [v2 unsignedIntegerValue];

  return v3;
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

- (void)setCachedJunkStatus:(unint64_t)a3
{
  if (a3)
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
  v2 = [(EKEvent *)self cachedJunkStatus];
  v3 = +[EKLogSubsystem junk];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2 == 3)
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

  return v2 == 3;
}

- (NSArray)locations
{
  v2 = [(EKCalendarItem *)self location];
  v3 = [v2 componentsSeparatedByString:@" "];;

  return v3;
}

- (void)setLocations:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _locationStringForLocations:v4];

  [(EKCalendarItem *)self setLocation:v5];
}

+ (id)_locationStringForLocations:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:@" "];;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setNotesCommon:(id)a3
{
  [(EKEvent *)self clearDetectedConferenceURL];

  [(EKEvent *)self clearParsedConference];
}

- (void)parsedConference:(id *)a3 andNotes:(id *)a4
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__EKEvent_EKEvent_Shared__parsedConference_andNotes___block_invoke;
  v12[3] = &unk_1E77FCF40;
  v12[4] = self;
  v6 = [(EKObject *)self cachedValueForKey:@"parsedConferenceKey" populateBlock:v12];
  v7 = [MEMORY[0x1E695DFB0] null];

  if (v6 == v7)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
      *a4 = 0;
    }
  }

  else
  {
    v8 = [v6 objectForKey:@"parseResult"];
    v9 = [v6 objectForKey:@"notes"];
    if (a3)
    {
      v10 = v8;
      *a3 = v8;
    }

    if (a4)
    {
      v11 = v9;
      *a4 = v9;
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
  v3 = [(EKCalendarItem *)self calendar];
  v4 = [v3 source];
  v5 = [v4 sourceType];

  if (v5 == 2)
  {
    v6 = [(EKEvent *)self conferenceURLDetected];
    if (!v6)
    {
      v7 = [(EKEvent *)self conferenceURL];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v6 = [(EKEvent *)self conferenceURL];
  if (v6)
  {
LABEL_5:
    v7 = v6;
    v6 = v7;
    goto LABEL_7;
  }

  v7 = [(EKEvent *)self conferenceURLDetected];
LABEL_7:
  v8 = v7;

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
    v3 = [(EKObject *)self cachedValueForKey:@"conferenceURLDetectedKey" populateBlock:v8];
    v4 = [MEMORY[0x1E695DFB0] null];

    if (v3 != v4)
    {
      v5 = v3;
LABEL_6:
      v6 = v5;
      goto LABEL_8;
    }
  }

  else
  {
    v3 = [(EKEvent *)self conferenceURLDetectedString];
    if (v3)
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v3];
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

  v5 = [(EKCalendarItem *)self preferredLocation];
  if ([v5 _hasChangesForKey:*MEMORY[0x1E6992A88]])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v5 _hasChangesForKey:*MEMORY[0x1E6992A30]];
  }

  return v3;
}

- (id)_detectConferenceURL
{
  v2 = MEMORY[0x1E6992F40];
  v3 = [(EKEvent *)self _prioritizedConferencesSources];
  v4 = [v2 conferenceURLFromSources:v3];

  return v4;
}

- (id)_prioritizedConferencesSources
{
  v3 = objc_opt_new();
  v4 = [(EKEvent *)self locationWithoutPrediction];

  if (v4)
  {
    v5 = [(EKEvent *)self locationWithoutPrediction];
    [v3 addObject:v5];
  }

  v6 = [(EKEvent *)self displayNotes];

  if (v6)
  {
    v7 = [(EKEvent *)self displayNotes];
    [v3 addObject:v7];
  }

  v8 = [(EKEvent *)self URL];

  if (v8)
  {
    v9 = [(EKEvent *)self URL];
    v10 = [v9 absoluteString];
    [v3 addObject:v10];
  }

  return v3;
}

+ (id)EKObjectChangeSummarizer_singleValueDiffKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__EKEvent_EKObjectChangeSummarizer__EKObjectChangeSummarizer_singleValueDiffKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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
  v5 = [[a1 alloc] initWithEventStore:v4];

  return v5;
}

- (EKEvent)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"You must use [EKEvent eventWithEventStore:] to create an event"];

  return 0;
}

- (EKEvent)initWithEventStore:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKEvent initWithEventStore:];
  }

  v5 = objc_alloc_init(EKPersistentEvent);
  [v4 _registerObject:v5];
  v6 = [(EKEvent *)self initWithPersistentObject:v5 occurrenceDate:0];
  v7 = EKUUIDString();
  [(EKCalendarItem *)v6 setCalendarItemIdentifier:v7];

  v8 = [v4 timeZone];
  [(EKEvent *)v6 setTimeZone:v8];

  v9 = [(EKEvent *)v6 defaultAlarms];
  v10 = [v9 anyObject];

  if (!v10)
  {
    v10 = [EKAlarm alarmWithRelativeOffset:0.0];
    [v10 setDefaultAlarm:1];
  }

  [(EKCalendarItem *)v6 addAlarm:v10];

  return v6;
}

- (EKEvent)initWithPersistentObject:(id)a3 objectForCopy:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v12 = v7;
  v13 = [v12 originalOccurrenceStartDate];
  v14 = [v13 date];
  v15 = [(EKEvent *)self initWithPersistentObject:v6 occurrenceDate:v14];

  LOBYTE(v14) = v12[92];
  v15->_isMainOccurrence = v14;

  return v15;
}

- (EKEvent)initWithPersistentObject:(id)a3 occurrenceDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Can't create EKEvent without persistent event"];
  }

  v26.receiver = self;
  v26.super_class = EKEvent;
  v8 = [(EKObject *)&v26 initWithPersistentObject:v6];
  v9 = v8;
  if (v8)
  {
    v8->_locationPredictionLock._os_unfair_lock_opaque = 0;
    v8->_locationPredictionAllowed = 1;
    [(EKEvent *)v8 setOccurrenceIsAllDay:[(EKEvent *)v8 _isAllDay]];
    v10 = [(EKEvent *)v9 startDateRaw];
    v25 = 0;
    v11 = [(EKEvent *)v9 adjustedPersistedDateForDate:v10 withAdjustmentMode:1 pinMode:0 clientCalendarDate:&v25];
    v12 = v25;

    v13 = [(EKEvent *)v9 endDateRaw];
    v24 = 0;
    v14 = [(EKEvent *)v9 adjustedPersistedDateForDate:v13 withAdjustmentMode:1 pinMode:1 clientCalendarDate:&v24];
    v15 = v24;

    if (v7)
    {
      v16 = MEMORY[0x1E69930C8];
      v17 = [(EKEvent *)v9 effectiveTimeZone];
      v18 = [v16 calendarDateWithDate:v7 timeZone:v17];

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
    if ([v6 isNew] && -[EKEvent isReminderIntegrationEvent](v9, "isReminderIntegrationEvent") && !-[EKEvent isDetached](v9, "isDetached"))
    {
      v22 = [v6 eventStore];
      [v22 addPendingIntegrationEvent:v9];
    }
  }

  return v9;
}

- (id)_calculateDurationWithStart:(id)a3 end:(id)a4 allDay:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a5)
  {
    v10 = [v8 differenceAsDateComponents:v7 units:242];
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
    v11 = [v7 timeZone];
    v12 = [v7 date];
    v13 = [v9 date];
    v14 = [v11 secondsFromGMTForDate:v12];
    v15 = [v11 secondsFromGMTForDate:v13];
    v16 = v14 <= v15;
    v17 = v14 - v15;
    if (v16)
    {

      v10 = [v9 differenceAsDateComponents:v7 units:242];
    }

    else
    {
      v18 = [v7 calendar];
      v19 = [v12 dateByAddingTimeInterval:v17];
      v10 = [v18 components:242 fromDate:v19 toDate:v13 options:0];
    }
  }

  return v10;
}

- (NSString)eventOccurrenceID
{
  v2 = [(EKEvent *)self recurrenceIdentifier];
  v3 = [v2 identifierString];

  return v3;
}

- (NSURL)externalURL
{
  v3 = [(EKCalendarItem *)self calendar];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 source];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 sourceIdentifier];
      if (v7)
      {
        v8 = [(EKEvent *)self uniqueId];
        if (v8)
        {
          if (externalURL_onceToken != -1)
          {
            [EKEvent externalURL];
          }

          v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:externalURL_allowedCharacters];
          v10 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:externalURL_allowedCharacters];
          v11 = MEMORY[0x1E696AEC0];
          v12 = [(EKEvent *)self startDate];
          [v12 timeIntervalSinceReferenceDate];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = [(EKObject *)v4 objectID];
      v8 = [(EKObject *)self objectID];
      if ([v7 isEqual:v8])
      {
        v9 = [(EKEvent *)v4 originalOccurrenceStartDate];
        v10 = [(EKEvent *)self originalOccurrenceStartDate];
        if (v9 == v10)
        {
          v6 = 1;
        }

        else
        {
          v11 = [(EKEvent *)v4 originalOccurrenceStartDate];
          v12 = [(EKEvent *)self originalOccurrenceStartDate];
          v6 = [v11 isEqual:v12];
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

+ (id)_modifiedNotificationUserInfoWithIdentifier:(id)a3 forRevert:(BOOL)a4
{
  v4 = a4;
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v16[0] = @"EKEventStoreModifiedEventIdentifier";
      v16[1] = @"EKEventStoreRevert";
      v17[0] = v5;
      v17[1] = MEMORY[0x1E695E118];
      v7 = MEMORY[0x1E695DF20];
      v8 = v17;
      v9 = v16;
      v10 = 2;
    }

    else
    {
      v14 = @"EKEventStoreModifiedEventIdentifier";
      v15 = v5;
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
  v5 = [(EKObject *)self uniqueIdentifier];
  v4 = [v3 _modifiedNotificationUserInfoWithIdentifier:v5 forRevert:0];
  [(EKEvent *)self postModifiedNotificationWithUserInfo:v4];
}

- (void)postModifiedNotificationWithUserInfo:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"EKEventModifiedNotification" object:self userInfo:v4];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__EKEvent_postModifiedNotificationWithUserInfo___block_invoke;
    v6[3] = &unk_1E77FD580;
    v6[4] = self;
    v7 = v4;
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
  v2 = self;
  v3 = [(EKObject *)self eventStore];
  LOBYTE(v2) = [v3 needsGeocodingForEvent:v2];

  return v2;
}

- (id)constraints
{
  v3 = [(EKObject *)self eventStore];
  v4 = [v3 cachedConstraintsForEvent:self];

  return v4;
}

- (id)committedValueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x1E69926C8]])
  {
    v5 = [(EKEvent *)self originalOccurrenceStartDate];
LABEL_5:
    v6 = v5;
    v7 = [v5 date];

    goto LABEL_7;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E6992968]])
  {
    v5 = [(EKEvent *)self originalOccurrenceEndDate];
    goto LABEL_5;
  }

  v9.receiver = self;
  v9.super_class = EKEvent;
  v7 = [(EKObject *)&v9 committedValueForKey:v4];
LABEL_7:

  return v7;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  [(EKEvent *)self _clearLocationPredictionCacheIfNotFrozen];
  v5.receiver = self;
  v5.super_class = EKEvent;
  [(EKCalendarItem *)&v5 setTitle:v4];
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
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateDefaultAlarms
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(EKCalendarItem *)self alarms];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isDefaultAlarm] && (objc_msgSend(v8, "isAbsolute") & 1) == 0)
        {
          v9 = [(EKEvent *)self _defaultAlarmOffset];
          v10 = v9;
          if (v9)
          {
            [v9 doubleValue];
            if (v11 != 9.22337204e18)
            {
              [v10 doubleValue];
              [v8 setRelativeOffset:?];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateRecurrenceEndDatesWithAdjustmentMode:(unint64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self;
  v6 = [(EKCalendarItem *)self recurrenceRules];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 recurrenceEnd];
        v13 = [v12 endDate];

        if (v13)
        {
          v14 = [(EKEvent *)v5 adjustedPersistedDateForDate:v13 withAdjustmentMode:a3 pinMode:1 clientCalendarDate:0];
          v15 = [EKRecurrenceEnd recurrenceEndWithEndDate:v14];
          [v11 setRecurrenceEnd:v15];
        }

        [v4 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  [(EKEvent *)v5 setRecurrenceRules:v4];
  v16 = *MEMORY[0x1E69E9840];
}

- (EKCalendarDate)startCalendarDateIncludingTravelTime
{
  v3 = MEMORY[0x1E69930C8];
  v4 = [(EKEvent *)self startDateIncludingTravel];
  v5 = [(EKCalendarItem *)self timeZone];
  v6 = [v3 calendarDateWithDate:v4 timeZone:v5];

  return v6;
}

- (void)setStartDateRaw:(id)a3
{
  [(EKObject *)self setSingleChangedValue:a3 forKey:*MEMORY[0x1E69926C8]];

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
  v3 = [(EKEvent *)self isAllDay];
  occurrenceStartDate = self->_occurrenceStartDate;
  if (v3)
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

- (void)setStartDateComponentsPreservingDuration:(id)a3
{
  v24 = a3;
  v4 = [v24 CalHasTimeComponents];
  v5 = [MEMORY[0x1E6992FB0] shared];
  [v5 defaultEventDuration];
  v7 = v6;

  if ([(EKEvent *)self isAllDay])
  {
    v8 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
    v9 = [v8 dateByAddingTimeInterval:1.0];

    v10 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v11 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:v10];
    v12 = [(EKEvent *)self startDate];
    v13 = [v11 components:16 fromDate:v12 toDate:v9 options:0];

    v14 = [v13 day];
  }

  else
  {
    [(EKEvent *)self duration];
    v7 = v15;
    v14 = 1;
  }

  v16 = [v24 timeZone];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  v19 = v18;
  v20 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:v18];
  v21 = [v20 dateFromComponents:v24];
  [(EKEvent *)self setAllDay:v4 ^ 1u];
  [(EKEvent *)self setTimeZone:v17];
  [(EKEvent *)self setStartDate:v21];
  if (v4)
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

- (id)_pinDate:(id)a3 withPinMode:(unint64_t)a4
{
  v6 = a3;
  if ([(EKEvent *)self isAllDay])
  {
    if (a4 == 1)
    {
      v7 = [(EKEvent *)self effectiveTimeZone];
      v8 = [v6 ek_ios_dateForEndOfDayInTimeZone:v7];
      goto LABEL_8;
    }

    if (!a4)
    {
      v7 = [(EKEvent *)self effectiveTimeZone];
      v8 = [v6 dateForDayInTimeZone:v7];
LABEL_8:
      v11 = v8;

      goto LABEL_11;
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid pin mode: %d", a4}];
  }

  else if (v6)
  {
    v9 = MEMORY[0x1E695DF00];
    [v6 timeIntervalSinceReferenceDate];
    v11 = [v9 dateWithTimeIntervalSinceReferenceDate:floor(v10)];
    goto LABEL_11;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)adjustedPersistedDateForDate:(id)a3 withAdjustmentMode:(unint64_t)a4 pinMode:(unint64_t)a5 clientCalendarDate:(id *)a6
{
  v10 = a3;
  v11 = [(EKEvent *)self isFloating]|| [(EKEvent *)self isAllDay];
  v15 = 0;
  [(EKEvent *)self adjustedDatesForDate:v10 persistedDateIsInUTC:v11 withAdjustmentMode:a4 pinMode:a5 outClientCalendarDate:a6 outPersistedDate:&v15];
  v12 = v15;
  v13 = v15;

  return v12;
}

- (void)adjustedDatesForDate:(id)a3 persistedDateIsInUTC:(BOOL)a4 withAdjustmentMode:(unint64_t)a5 pinMode:(unint64_t)a6 outClientCalendarDate:(id *)a7 outPersistedDate:(id *)a8
{
  v12 = a4;
  v21 = a3;
  v14 = [(EKEvent *)self effectiveTimeZone];
  if (a5 == 1)
  {
    if (v12)
    {
      v18 = [v21 dateInTimeZone:v14 fromTimeZone:0];
    }

    else
    {
      v18 = v21;
    }

    v16 = v18;
    v17 = v21;
LABEL_12:
    v19 = v17;
    if (!a7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!a5)
  {
    v15 = [(EKEvent *)self _pinDate:v21 withPinMode:a6];
    v16 = v15;
    if (v12)
    {
      v17 = [v15 dateInTimeZone:0 fromTimeZone:v14];
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
  if (a7)
  {
LABEL_13:
    *a7 = [MEMORY[0x1E69930C8] calendarDateWithDate:v16 timeZone:v14];
  }

LABEL_14:
  if (a8)
  {
    v20 = v19;
    *a8 = v19;
  }
}

- (void)_updateStartDateForDate:(id)a3 withAdjustmentMode:(unint64_t)a4 adjustEndDate:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (![(EKObject *)self isNew]&& !self->_originalOccurrenceStartDate)
  {
    v9 = [(EKEvent *)self occurrenceStartDate];
    [(EKEvent *)self setOriginalOccurrenceStartDate:v9];

    v10 = [(EKEvent *)self occurrenceEndDate];
    [(EKEvent *)self setOriginalOccurrenceEndDate:v10];
  }

  v16 = 0;
  v11 = [(EKEvent *)self adjustedPersistedDateForDate:v8 withAdjustmentMode:a4 pinMode:0 clientCalendarDate:&v16];
  v12 = v16;
  [(EKEvent *)self setOccurrenceStartDate:v12];
  [(EKEvent *)self setStartDateRaw:v11];
  if (v5 && ![(EKEvent *)self isEndDateDirty])
  {
    v13 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
    v14 = [(EKEvent *)self adjustedPersistedDateForDate:v13 withAdjustmentMode:a4 pinMode:1 clientCalendarDate:0];

    v15 = [(EKObject *)self changeSet];
    [v15 forceChangeValue:v14 forKey:*MEMORY[0x1E6992968]];
  }
}

- (void)_setStartDate:(id)a3 andClearProposedTimes:(BOOL)a4 allowSettingIfNotEditable:(BOOL)a5
{
  v6 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a5 || [(EKEvent *)self isEditable])
  {
    v9 = [(EKEvent *)self startDate];
    v10 = [v9 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      [(EKEvent *)self _updateStartDateForDate:v8 withAdjustmentMode:0];
      if (v6)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = [(EKCalendarItem *)self attendees];
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v18 + 1) + 8 * i);
              [v16 setProposedStartDate:0 forEvent:self];
              [v16 setProposedStartDateChanged:0];
              [v16 setCommentChanged:0];
              [v16 setStatusChanged:0];
              [v16 setProposedStartDateStatus:0];
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v3 = [(EKEvent *)self occurrenceEndDate];
  v4 = [v3 date];
  v5 = [(EKCalendarDate *)self->_occurrenceStartDate date];
  [v4 timeIntervalSinceDate:v5];
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

- (void)setEndDateRaw:(id)a3
{
  [(EKObject *)self setSingleChangedValue:a3 forKey:*MEMORY[0x1E6992968]];

  [(EKEvent *)self clearCachedTimeValues];
}

- (void)_setEndDateUnadjustedForLegacyClients:(id)a3 allowSettingIfNotEditable:(BOOL)a4
{
  v8 = a3;
  if (a4 || [(EKEvent *)self isEditable])
  {
    v6 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
    v7 = [v6 isEqual:v8];

    if ((v7 & 1) == 0)
    {
      [(EKEvent *)self _updateEndDateForDate:v8 withAdjustmentMode:0];
    }
  }
}

- (void)_updateEndDateForDate:(id)a3 withAdjustmentMode:(unint64_t)a4 adjustStartDate:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (![(EKObject *)self isNew]&& !self->_originalOccurrenceEndDate)
  {
    v9 = [(EKEvent *)self occurrenceStartDate];
    [(EKEvent *)self setOriginalOccurrenceStartDate:v9];

    v10 = [(EKEvent *)self occurrenceEndDate];
    [(EKEvent *)self setOriginalOccurrenceEndDate:v10];
  }

  v18 = 0;
  v11 = [(EKEvent *)self adjustedPersistedDateForDate:v8 withAdjustmentMode:a4 pinMode:1 clientCalendarDate:&v18];
  v12 = v18;
  [(EKEvent *)self setOccurrenceEndDate:v12];
  v13 = [(EKEvent *)self endDateRaw];
  v14 = [v13 isEqual:v11];

  if ((v14 & 1) == 0)
  {
    [(EKEvent *)self setEndDateRaw:v11];
    if (v5 && ![(EKEvent *)self isStartDateDirty])
    {
      v15 = [(EKEvent *)self startDate];
      v16 = [(EKEvent *)self adjustedPersistedDateForDate:v15 withAdjustmentMode:a4 pinMode:0 clientCalendarDate:0];

      v17 = [(EKObject *)self changeSet];
      [v17 forceChangeValue:v16 forKey:*MEMORY[0x1E69926C8]];
    }
  }
}

- (void)forceSetTimeZone:(id)a3
{
  v3.receiver = self;
  v3.super_class = EKEvent;
  [(EKCalendarItem *)&v3 setTimeZone:a3];
}

- (void)setTimeZone:(id)a3
{
  v4 = a3;
  v5 = [(EKCalendarItem *)self timeZone];
  if ([(EKEvent *)self isEditable])
  {
    v18.receiver = self;
    v18.super_class = EKEvent;
    [(EKCalendarItem *)&v18 setTimeZone:v4];
    if (v4)
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

      if (v5)
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
      v8 = v5 != 0;
    }

    v9 = [(EKEvent *)self startDate];
    [(EKEvent *)self _updateStartDateForDate:v9 withAdjustmentMode:0];

    v10 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
    [(EKEvent *)self _updateEndDateForDate:v10 withAdjustmentMode:0];

    if ([(EKEvent *)self _settingTimeZoneChangesStartEndDates])
    {
      if (!v8)
      {
        v11 = [(EKObject *)self eventStore];
        v12 = [v11 timeZone];

        v5 = v12;
      }

LABEL_16:
      v13 = [(EKEvent *)self effectiveTimeZone];
      v14 = [(EKEvent *)self startDate];
      v15 = [v14 dateInTimeZone:v13 fromTimeZone:v5];

      [(EKEvent *)self setStartDate:v15];
      v16 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
      v17 = [v16 dateInTimeZone:v13 fromTimeZone:v5];

      [(EKEvent *)self setEndDateUnadjustedForLegacyClients:v17];
    }
  }

LABEL_17:
}

- (NSDate)initialStartDate
{
  if ([(EKObject *)self isNew])
  {
    v3 = [(EKEvent *)self startDate];
  }

  else
  {
    v4 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E69926C8]];
    v5 = [(EKEvent *)self originalOccurrenceIsAllDay];
    if (v5)
    {
      v6 = [(EKEvent *)self originalOccurrenceIsAllDay];
      v7 = [v6 BOOLValue];
    }

    else
    {
      v7 = [(EKEvent *)self occurrenceIsAllDay];
    }

    v8 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E69926D0]];
    v9 = [objc_opt_class() timeZoneFromTimeZoneName:v8 withFloatingTimeZone:0];
    v10 = v9 == 0;

    v13 = 0;
    [(EKEvent *)self adjustedDatesForDate:v4 persistedDateIsInUTC:(v10 | v7) & 1 withAdjustmentMode:1 pinMode:0 outClientCalendarDate:&v13 outPersistedDate:0];
    v11 = v13;
    v3 = [v11 date];
  }

  return v3;
}

- (NSDate)initialEndDate
{
  if ([(EKObject *)self isNew])
  {
    v3 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
  }

  else
  {
    v4 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E6992968]];
    v5 = [(EKEvent *)self originalOccurrenceIsAllDay];
    if (v5)
    {
      v6 = [(EKEvent *)self originalOccurrenceIsAllDay];
      v7 = [v6 BOOLValue];
    }

    else
    {
      v7 = [(EKEvent *)self occurrenceIsAllDay];
    }

    v8 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E69926D0]];
    v9 = [objc_opt_class() timeZoneFromTimeZoneName:v8 withFloatingTimeZone:0];
    v10 = v9 == 0;

    v13 = 0;
    [(EKEvent *)self adjustedDatesForDate:v4 persistedDateIsInUTC:(v10 | v7) & 1 withAdjustmentMode:1 pinMode:1 outClientCalendarDate:&v13 outPersistedDate:0];
    v11 = v13;
    v3 = [v11 date];
  }

  return v3;
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
    v3 = originalOccurrenceEndDate;
  }

  else
  {
    v3 = [(EKEvent *)self occurrenceEndDate];
  }

  return v3;
}

- (NSDate)occurrenceDate
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E90000FFFFFFFFLL] && -[EKEvent isDetached](self, "isDetached"))
  {
    v3 = [(EKEvent *)self originalStartDate];
  }

  else
  {
    v4 = [(EKEvent *)self occurrenceStartDate];
    v3 = [v4 date];
  }

  return v3;
}

- (void)setStatus:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69929E0]];
}

- (int64_t)locationPredictionState
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69929A0]];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setLocationPredictionState:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69929A0]];
}

- (BOOL)firedTTL
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992978]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)_isParticipationStatusDirty
{
  v2 = [(EKCalendarItem *)self selfAttendee];
  v3 = [v2 _isParticipantStatusDirty];

  return v3;
}

- (BOOL)_isOnlyChangeToAttendeesSelfAttendeeParticipationStatus
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(EKCalendarItem *)self selfAttendee];
  if (v3)
  {
    v4 = [(EKObject *)self _previousValueForKey:*MEMORY[0x1E6992650]];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6992538], *MEMORY[0x1E6992530], 0}];
      if (+[EKObject _compareAllKnownKeysExceptKeys:forObject:againstObject:compareIdentityKeys:](EKObject, "_compareAllKnownKeysExceptKeys:forObject:againstObject:compareIdentityKeys:", v5, v3, v4, 0) && (-[EKObject changeSet](self, "changeSet"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasUnsavedMultiValueRemovalForKey:*MEMORY[0x1E6992568]], v6, (v7 & 1) == 0))
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
              if (v14 != v3 && ([v14 hasChanges] & 1) != 0)
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

- (void)setParticipationStatus:(int64_t)a3
{
  if (![(EKEvent *)self allowsParticipationStatusModifications])
  {
    return;
  }

  v5 = [(EKCalendarItem *)self selfAttendee];
  if (!v5)
  {
    goto LABEL_16;
  }

  v12 = v5;
  v6 = [v5 participantStatus] == a3;
  v5 = v12;
  if (v6)
  {
    goto LABEL_16;
  }

  [v12 setParticipantStatus:a3];
  [(EKCalendarItem *)self setModifiedProperties:[(EKCalendarItem *)self modifiedProperties]| 0x40];
  if (a3 == 3)
  {
    v7 = 1;
  }

  else
  {
    v8 = objc_opt_class();
    v9 = [(EKCalendarItem *)self calendar];
    v7 = [v8 _eventAvailabilityForParticipantStatus:a3 supportedEventAvailabilities:objc_msgSend(v9 isAllDayEvent:{"supportedEventAvailabilities"), -[EKEvent isAllDay](self, "isAllDay")}];

    if (v7 == -1 || [(EKEvent *)self isAllDay]&& [(EKEvent *)self availability]!= EKEventAvailabilityFree)
    {
      goto LABEL_11;
    }
  }

  [(EKEvent *)self setAvailability:v7];
LABEL_11:
  v10 = [(EKCalendarItem *)self calendar];
  v11 = [v10 source];
  if ([v11 sourceType] != 1)
  {

    goto LABEL_15;
  }

  v5 = v12;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(EKEvent *)self setProposedStartDate:0];
LABEL_15:
    v5 = v12;
  }

LABEL_16:
}

- (BOOL)supportsParticipationStatusModificationsWithoutNotification
{
  v4 = [(EKCalendarItem *)self organizer];
  if (v4)
  {
    v2 = [(EKCalendarItem *)self organizer];
    if ([v2 scheduleAgent] == 1)
    {
      v5 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v6 = [(EKEvent *)self constraints];
  if ([v6 supportsInvitationModificationsWithoutNotification])
  {
    v5 = 1;
  }

  else
  {
    v7 = [(EKCalendarItem *)self calendar];
    v8 = [v7 source];
    v5 = [v8 sourceType] == 0;
  }

  if (v4)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (BOOL)_userAddressesRepresentInvitedAttendee:(id)a3 checkEmailAddresses:(BOOL)a4
{
  v36 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = v5;
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

        v12 = [*(*(&v41 + 1) + 8 * i) stringRemovingMailto];
        v13 = [v12 lowercaseString];
        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v9);
  }

  v14 = [(EKCalendarItem *)self organizer];
  v15 = [v14 URL];
  v16 = [v15 absoluteString];
  v17 = [v16 stringRemovingMailto];
  v18 = [v17 lowercaseString];

  if ([v6 containsObject:v18])
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
      v34 = v18;
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
          v26 = [v25 absoluteString];
          v27 = [v26 stringRemovingMailto];
          v28 = [v27 lowercaseString];

          if (v28 && ([v6 containsObject:v28] & 1) != 0)
          {
            goto LABEL_26;
          }

          if (v36)
          {
            v29 = [v24 emailAddress];
            v30 = [v29 stringRemovingMailto];
            v31 = [v30 lowercaseString];

            if (v31 && ([v6 containsObject:v31] & 1) != 0)
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
      v18 = v34;
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

  v3 = [(EKCalendarItem *)self selfAttendee];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)currentUserMayActAsOrganizer
{
  v3 = [(EKCalendarItem *)self calendar];
  v4 = [v3 allowsContentModifications];

  if (!v4)
  {
    return 0;
  }

  if ([(EKCalendarItem *)self isSelfOrganized])
  {
    return 1;
  }

  v6 = [(EKCalendarItem *)self calendar];
  if ([v6 allowsScheduling])
  {
    v7 = [(EKCalendarItem *)self calendar];
    v5 = [v7 sharingStatus] == 2 && -[EKCalendarItem isOrganizedBySharedCalendarOwner](self, "isOrganizedBySharedCalendarOwner");
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

+ (int64_t)_eventAvailabilityForParticipantStatus:(int64_t)a3 supportedEventAvailabilities:(unint64_t)a4 isAllDayEvent:(BOOL)a5
{
  v5 = -1;
  if (a4)
  {
    v5 = 1;
  }

  v6 = -1;
  if (a3 == 4)
  {
    v6 = (a4 >> 1) & 2;
  }

  if (a3 == 2)
  {
    v6 = 0;
  }

  if (a5)
  {
    v6 = v5;
  }

  if (a4)
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
  v2 = [(EKCalendarItem *)self originalItem];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 participationStatus];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setImage:(id)a3
{
  v4 = *MEMORY[0x1E6992980];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:objc_opt_class()];
}

- (void)setColor:(id)a3
{
  v4 = *MEMORY[0x1E6992948];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:objc_opt_class()];
}

- (NSInteger)birthdayPersonID
{
  v2 = [(EKEvent *)self birthdayID];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setBirthdayContact:(id)a3
{
  v4 = a3;
  v5 = [v4 CalDisplayName];
  [(EKObject *)self setSingleChangedValue:v5 forKey:*MEMORY[0x1E6992930]];

  v6 = [v4 identifier];

  [(EKEvent *)self setBirthdayContactIdentifier:v6];
}

- (BOOL)isNewRecurringSeries
{
  if ([(EKEvent *)self isDetached])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(EKCalendarItem *)self hasRecurrenceRules];
    if (v3)
    {
      LOBYTE(v3) = ![(EKCalendarItem *)self _hadRecurrenceRules];
    }
  }

  return v3;
}

- (id)recurrenceRule
{
  if ([(EKCalendarItem *)self hasRecurrenceRules])
  {
    v3 = [(EKCalendarItem *)self recurrenceRules];
    v4 = [v3 objectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRecurrenceRule:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v5, 0}];
    [(EKEvent *)self setRecurrenceRules:v4];
  }

  else
  {
    [(EKEvent *)self setRecurrenceRules:0];
  }
}

- (void)setRecurrenceRules:(id)a3
{
  v4.receiver = self;
  v4.super_class = EKEvent;
  [(EKCalendarItem *)&v4 setRecurrenceRules:a3];
  [(EKEvent *)self clearNextCachedReminderOccurrenceDate];
}

- (id)singleRecurrenceRule
{
  if ([(EKEvent *)self isDetached])
  {
    v3 = [(EKCalendarItem *)self originalItem];
    v4 = [v3 singleRecurrenceRule];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = EKEvent;
    v4 = [(EKCalendarItem *)&v6 singleRecurrenceRule];
  }

  return v4;
}

- (void)makeRecurrenceEndDateBased
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(EKCalendarItem *)self recurrenceRules];
  v4 = [v3 lastObject];

  if (v4)
  {
    v5 = [v4 recurrenceEnd];
    v6 = [v5 endDate];

    if (!v6)
    {
      v7 = [(EKEvent *)self _lastRecurrenceDate];
      v8 = [MEMORY[0x1E695DEE8] sharedAutoupdatingCurrentCalendar];
      v9 = [v8 copy];

      v10 = [(EKEvent *)self effectiveTimeZone];
      [v9 setTimeZone:v10];

      v11 = [v7 dateByAddingDays:1 inCalendar:v9];

      v12 = [v11 dateRemovingTimeComponentsInCalendar:v9];

      v6 = [v12 dateByAddingTimeInterval:-1.0];
    }

    v13 = [EKRecurrenceEnd recurrenceEndWithEndDate:v6];
    [v4 setRecurrenceEnd:v13];
    v16[0] = v4;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [(EKEvent *)self setRecurrenceRules:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_occurrenceDatesForCount:(unint64_t)a3
{
  v5 = [(EKEvent *)self masterEvent];
  v6 = [v5 startDate];
  v7 = [(EKEvent *)self _adjustDateIfFloatingForDate:v6];

  v8 = objc_alloc_init(EKRecurrenceGenerator);
  v9 = [(EKCalendarItem *)self recurrenceRules];
  v10 = [v9 lastObject];
  v11 = [MEMORY[0x1E695DF00] distantFuture];
  v12 = [(EKEvent *)self effectiveTimeZone];
  LOBYTE(v15) = 0;
  v13 = [(EKRecurrenceGenerator *)v8 copyOccurrenceDatesWithEKEvent:self recurrenceRule:v10 startDate:v7 endDate:v11 timeZone:v12 exceptionDates:0 limit:a3 adjustDatesForAllDayEvents:v15];

  return v13;
}

- (id)_lastRecurrenceDate
{
  v3 = [(EKCalendarItem *)self recurrenceRules];
  v4 = [v3 lastObject];

  v5 = [v4 recurrenceEnd];
  v6 = [v5 occurrenceCount];

  if (v6)
  {
    v7 = [v4 recurrenceEnd];
    v8 = -[EKEvent _occurrenceDatesForCount:](self, "_occurrenceDatesForCount:", [v7 occurrenceCount]);

    [v8 lastObject];
  }

  else
  {
    v8 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
    [(EKEvent *)self _adjustDateIfFloatingForDate:v8];
  }
  v9 = ;

  return v9;
}

- (id)_adjustDateIfFloatingForDate:(id)a3
{
  v4 = a3;
  if ([(EKEvent *)self isFloating])
  {
    v5 = [(EKEvent *)self effectiveTimeZone];
    v6 = [v4 dateInTimeZone:0 fromTimeZone:v5];
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (void)makeRecurrenceEndCountBased
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = [(EKEvent *)self singleRecurrenceRule];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_18;
  }

  v5 = [v3 recurrenceEnd];
  v6 = [v5 occurrenceCount];

  if (!v6)
  {
    v7 = [v4 recurrenceEnd];
    v8 = [v7 endDate];
    if (v8)
    {

LABEL_7:
      v10 = [(EKEvent *)self masterEvent];
      v11 = [v10 startDate];
      v12 = [(EKEvent *)self _adjustDateIfFloatingForDate:v11];

      if (v12)
      {
        v13 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
        v14 = [(EKEvent *)self _adjustDateIfFloatingForDate:v13];

        v15 = [v4 recurrenceEnd];
        v16 = [v15 endDate];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }

        v19 = v18;

        v20 = objc_alloc_init(EKRecurrenceGenerator);
        v21 = [(EKEvent *)self effectiveTimeZone];
        LOBYTE(v27) = 0;
        v22 = [(EKRecurrenceGenerator *)v20 copyOccurrenceDatesWithEKEvent:self recurrenceRule:v4 startDate:v12 endDate:v19 timeZone:v21 exceptionDates:0 limit:0 adjustDatesForAllDayEvents:v27];

        v6 = [v22 count];
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_14;
    }

    v9 = [(EKEvent *)self isMainOccurrence];

    if (!v9)
    {
      goto LABEL_7;
    }

    v6 = 0;
  }

LABEL_14:
  if (v6 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v6;
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
    v3 = [(EKEvent *)self singleRecurrenceRule];
    v4 = [v3 daysOfTheYear];
    if ([v4 count])
    {
      v5 = 0;
LABEL_4:

LABEL_11:
      return v5;
    }

    v6 = [v3 weeksOfTheYear];
    v7 = [v6 count];

    if (v7)
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (![v3 frequency] || objc_msgSend(v3, "frequency") == 1)
    {
      v5 = 1;
      goto LABEL_11;
    }

    v4 = [v3 daysOfTheWeek];
    v9 = [v3 daysOfTheMonth];
    v10 = [v3 setPositions];
    v11 = [v3 monthsOfTheYear];
    if ([v3 frequency] == 2)
    {
      if ([v9 count] && !objc_msgSend(v10, "count") || objc_msgSend(v4, "count") == 1 && objc_msgSend(v10, "count") == 1 || objc_msgSend(v4, "count") == 7 && objc_msgSend(v10, "count") == 1)
      {
        v5 = 1;
LABEL_25:

        goto LABEL_4;
      }
    }

    else if ([v3 frequency] == 3 && !objc_msgSend(v10, "count") && objc_msgSend(v4, "count") <= 1)
    {
      v5 = [v11 count] != 0;
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

  v3 = [(EKEvent *)self startDate];
  v4 = [(EKEvent *)self occurrenceStartDate];
  v5 = [v4 timeZone];
  v6 = [(EKEvent *)self _occurrenceExistsOnDate:v3 timeZone:v5];

  if (v6)
  {
    return 0;
  }

  return [(EKEvent *)self canWeInferUpdateToComplexRecurrenceRule];
}

- (BOOL)hasCustomRecurrence
{
  v3 = [(EKEvent *)self singleRecurrenceRule];
  v4 = [MEMORY[0x1E695DEE8] sharedAutoupdatingCurrentCalendar];
  v5 = [(EKCalendarItem *)self timeZone];
  [v4 setTimeZone:v5];

  if (!v3)
  {
    goto LABEL_4;
  }

  v6 = [(EKEvent *)self startDate];

  if (v6)
  {
    if ([v3 isPinnedToEndOfFrequency])
    {
LABEL_4:
      LOBYTE(v6) = 0;
      goto LABEL_30;
    }

    v7 = [(EKEvent *)self startDate];
    v8 = [v4 components:536 fromDate:v7];

    if ([v3 frequency])
    {
      if ([v3 frequency] == 1)
      {
        if ([v3 interval] == 1)
        {
          v9 = [v3 daysOfTheWeek];
          v6 = v9;
          if (v9)
          {
            if ([v9 count] == 1)
            {
              v10 = [v6 objectAtIndexedSubscript:0];
              v11 = [v10 dayOfTheWeek];
              v12 = [v8 weekday];
              goto LABEL_11;
            }

            goto LABEL_27;
          }

LABEL_29:

          goto LABEL_30;
        }

LABEL_28:
        LOBYTE(v6) = 1;
        goto LABEL_29;
      }

      if ([v3 frequency] != 2)
      {
        if ([v3 frequency] != 3)
        {
          goto LABEL_28;
        }

        if ([v3 interval] != 1)
        {
          goto LABEL_28;
        }

        v16 = [v3 daysOfTheWeek];
        v17 = [v16 count];

        if (v17)
        {
          goto LABEL_28;
        }

        v18 = [v3 monthsOfTheYear];
        v6 = v18;
        if (!v18)
        {
          goto LABEL_29;
        }

        if ([v18 count] == 1)
        {
          v10 = [v6 objectAtIndexedSubscript:0];
          v11 = [v10 integerValue];
          v12 = [v8 month];
LABEL_11:
          v13 = v12;

          if (v11 != v13)
          {
            goto LABEL_28;
          }

          goto LABEL_14;
        }

LABEL_27:

        goto LABEL_28;
      }

      if ([v3 interval] != 1)
      {
        goto LABEL_28;
      }

      v14 = [v3 daysOfTheWeek];
      v15 = [v14 count];

      if (v15)
      {
        goto LABEL_28;
      }

      v6 = [v3 daysOfTheMonth];
      if ([v6 count])
      {
        if ([v6 count] == 1)
        {
          v10 = [v6 objectAtIndexedSubscript:0];
          v11 = [v10 integerValue];
          v12 = [v8 day];
          goto LABEL_11;
        }

        goto LABEL_27;
      }
    }

    else if ([v3 interval] != 1)
    {
      goto LABEL_28;
    }

LABEL_14:
    LOBYTE(v6) = 0;
    goto LABEL_29;
  }

LABEL_30:

  return v6;
}

- (BOOL)futureOccurrencesCannotBeAffectedByChangingStartDateToDate:(id)a3
{
  v4 = a3;
  v5 = [(EKCalendarItem *)self recurrenceRules];
  v6 = [v5 firstObject];

  if ([v6 hasDuplicateMonthsOfYear])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v6 endDate];
    if ([v4 isAfterDate:v8])
    {
      v7 = 1;
    }

    else
    {
      v9 = [(EKEvent *)self startDate];
      v10 = [(EKEvent *)self _nsCalendar];
      if ([v6 newStartDateIsInvalid:v4 currentStartDate:v9 calendar:v10])
      {
        v7 = [v6 interval] > 1;
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
  v4 = [v3 intValue];

  return v4;
}

- (void)setAvailability:(EKEventAvailability)availability
{
  v5 = [(EKEvent *)self allowsAvailabilityModifications];
  if (availability != EKEventAvailabilityNotSupported && v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:availability];
    [(EKObject *)self setSingleChangedValue:v6 forKey:*MEMORY[0x1E6992920]];
  }
}

- (id)_defaultAlarmOffset
{
  v3 = [(EKEvent *)self isAllDay];
  v4 = [(EKCalendarItem *)self calendar];
  v5 = [v4 source];
  v6 = v5;
  if (!v3)
  {
    v7 = [v5 defaultAlarmOffset];
    if (!v7)
    {
      v8 = [(EKObject *)self eventStore];
      v9 = [v8 defaultTimedAlarmOffset];
      goto LABEL_7;
    }

LABEL_5:
    v7 = v7;
    v10 = v7;
    goto LABEL_8;
  }

  v7 = [v5 defaultAllDayAlarmOffset];
  if (v7)
  {
    goto LABEL_5;
  }

  v8 = [(EKObject *)self eventStore];
  v9 = [v8 defaultAllDayAlarmOffset];
LABEL_7:
  v10 = v9;

LABEL_8:

  return v10;
}

- (BOOL)shouldHaveDefaultAlarms
{
  v2 = [(EKEvent *)self _defaultAlarmOffset];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue] != 0x7FFFFFFFFFFFFFFFLL;
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
  v3 = [(EKCalendarItem *)self alarms];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      if ([v8 isDefaultAlarm])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = v8;

    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v10 = [(EKEvent *)self defaultAlarms];
  v9 = [v10 anyObject];

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)defaultAlarms
{
  v2 = [(EKEvent *)self _defaultAlarmOffset];
  v3 = v2;
  if (v2 && [v2 integerValue] != 0x7FFFFFFFFFFFFFFFLL && (+[EKAlarm alarmWithRelativeOffset:](EKAlarm, "alarmWithRelativeOffset:", objc_msgSend(v3, "integerValue")), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "setDefaultAlarm:", 1), v4))
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
  v2 = [(EKEvent *)self virtualConference];
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [v2 title];

  if (v4)
  {
    v5 = [v2 title];
    [v3 appendFormat:@"%@\n\n", v5];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v2 joinMethods];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 title];

        if (v12)
        {
          v13 = [v11 title];
          [v3 appendFormat:@"%@\n", v13];
        }

        v14 = [v11 URL];
        v15 = [v14 absoluteString];
        [v3 appendFormat:@"%@\n\n", v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = [v2 conferenceDetails];

  if (v16)
  {
    v17 = [v2 conferenceDetails];
    [v3 appendString:v17];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_originallyCommittedVirtualConference
{
  v2 = [(EKEvent *)self committedValueForKey:*MEMORY[0x1E6992620]];
  if (v2)
  {
    v3 = [EKConferencePersistence deserializeConference:v2];
    v4 = [v3 conference];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setVirtualConference:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKEvent *)self virtualConference];
  v6 = v5;
  if (v5)
  {
    if (![v5 isWritable])
    {
      goto LABEL_21;
    }

    if (v4)
    {
      if (![v4 isWritable])
      {
LABEL_11:
        v13 = [(EKEvent *)self _originallyCommittedVirtualConference];
        if (([v13 isEqual:v6] & 1) == 0)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v14 = [v6 joinMethods];
          v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
                  objc_enumerationMutation(v14);
                }

                v19 = [*(*(&v21 + 1) + 8 * i) URL];
                [EKConferenceUtils invalidateConferenceURL:v19];
              }

              v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
            }

            while (v16);
          }
        }

        goto LABEL_21;
      }

      v7 = [EKConferencePersistence serializeConference:v4];
      v8 = [(EKEvent *)self displayNotes];
      v9 = [(EKEvent *)self _buildConferenceStringFromNotesWithoutConference:v8 serializedConference:v7];
      [(EKEvent *)self setNotes:v9];
    }

    else
    {
      v7 = [(EKEvent *)self displayNotes];
      [(EKEvent *)self setNotes:v7];
    }

    goto LABEL_11;
  }

  if (v4 && [v4 isWritable])
  {
    v10 = [EKConferencePersistence serializeConference:v4];
    v11 = [(EKCalendarItem *)self notes];
    v12 = [(EKEvent *)self _buildConferenceStringFromNotesWithoutConference:v11 serializedConference:v10];
    [(EKEvent *)self setNotes:v12];
  }

LABEL_21:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)invalidateVirtualConferenceURLIfNeededOnCommit:(id)a3
{
  v4 = a3;
  if (v4)
  {
    virtualConferenceURLsToInvalidateOnCommit = self->_virtualConferenceURLsToInvalidateOnCommit;
    v8 = v4;
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
        v9 = [(EKObject *)self eventStore];
        [EKConferenceUtils invalidateConferenceURLIfNeeded:v8 inEventStore:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_buildConferenceStringFromNotesWithoutConference:(id)a3 serializedConference:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = &stru_1F1B49D68;
  }

  v7 = [MEMORY[0x1E696AD60] stringWithString:v6];
  if ([v7 length] && objc_msgSend(v5, "length") && (objc_msgSend(v7, "hasSuffix:", @"\n\n") & 1) == 0)
  {
    [v7 appendString:@"\n\n"];
  }

  if ([v5 length])
  {
    [v7 appendString:v5];
  }

  return v7;
}

- (int64_t)specialDayType
{
  v3 = [(EKCalendarItem *)self calendar];
  v4 = [v3 isChinaHolidayCalendar];

  if (!v4)
  {
    return 0;
  }

  v5 = [(EKEvent *)self specialDayString];
  v6 = v5;
  if (v5)
  {
    if ([v5 isEqualToString:*MEMORY[0x1E69E3DE0]])
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

- (void)setSpecialDayType:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 3)
    {
      v3 = MEMORY[0x1E69E3DD8];
    }

    else
    {
      if (a3 != 1)
      {
        return;
      }

      v3 = MEMORY[0x1E69E3DE0];
    }

    a3 = *v3;
  }

  [(EKEvent *)self setSpecialDayString:a3];
}

- (void)removeServerRefreshRelatedProperties
{
  [(EKCalendarItem *)self setExternalModificationTag:0];

  [(EKCalendarItem *)self setExternalID:0];
}

- (void)setFlags:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69925D8]];
}

- (void)setFlag:(unint64_t)a3 value:(BOOL)a4
{
  v4 = a4;
  v7 = [(EKEvent *)self flags];
  if (v4)
  {
    v8 = v7 | a3;
  }

  else
  {
    v8 = v7 & ~a3;
  }

  [(EKEvent *)self setFlags:v8];
}

- (unint64_t)invitationStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992990]];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setInvitationStatus:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992990]];
}

- (void)clearInvitationStatus
{
  v2 = [(EKObject *)self persistentObject];
  [v2 unloadPropertyForKey:*MEMORY[0x1E6992990]];
}

- (void)setIsAlerted:(BOOL)a3
{
  if (a3)
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
  v3 = [(EKEvent *)self invitationChangedProperties];
  v4 = [(EKEvent *)self _shouldAlertInviteeDeclines];
  if (v3 != 32 || v4)
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
  v2 = [(EKObject *)self eventStore];
  v3 = [v2 preferences];
  v4 = [v3 alertInviteeDeclines];

  return v4;
}

- (int)externalTrackingStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992970]];
  v3 = [v2 intValue];

  return v3;
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
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
    v5 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v5 sinceDate:v3];
    v7 = [v4 components:96 fromDate:v5 toDate:v6 options:0];
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
  v3 = [(EKEvent *)self startDate];
  [(EKEvent *)self travelTime];
  v5 = [v3 dateByAddingTimeInterval:-v4];

  return v5;
}

- (void)setTravelTime:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(a3, 0.0)}];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69929F8]];
}

- (void)setProposedStartDate:(id)a3
{
  v4 = a3;
  v5 = [(EKCalendarItem *)self selfAttendee];
  if (v5 && (v6 = v5, v7 = [(EKCalendarItem *)self isExternallyOrganizedInvitation], v6, v7))
  {
    [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69929C0]];
    v8 = [(EKCalendarItem *)self selfAttendee];
    [v8 setProposedStartDate:v4 forEvent:self];

    if (v4)
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
  v3 = [(EKEvent *)self proposedStartDate];
  [(EKEvent *)self duration];
  v4 = [v3 dateByAddingTimeInterval:?];

  return v4;
}

- (BOOL)allowsAttendeesModifications
{
  if ([(EKEvent *)self status]== EKEventStatusCanceled)
  {
    return 0;
  }

  v4 = [(EKObject *)self eventStore];
  v5 = [v4 skipModificationValidation];

  if (v5 & 1) != 0 || ([MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement])
  {
    return 1;
  }

  if ([(EKEvent *)self currentUserMayActAsOrganizer])
  {
    v7 = 1;
  }

  else if ([(EKCalendarItem *)self isExternallyOrganizedInvitation])
  {
    v7 = [(EKEvent *)self canForward];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(EKEvent *)self constraints];
  v9 = [v8 supportsOutgoingInvitations];

  v3 = 0;
  if (v7 && v9)
  {
    v10 = [(EKCalendarItem *)self calendar];
    if ([v10 allowsScheduling])
    {
      v11 = [(EKCalendarItem *)self calendar];
      v12 = [v11 allowsContentModifications];

      if (!v12)
      {
        return 0;
      }

      v10 = [(EKEvent *)self constraints];
      if ([v10 requiresOutgoingInvitationsInDefaultCalendar])
      {
        v13 = [(EKCalendarItem *)self hasAttendees];

        if (v13)
        {
          return 1;
        }

        v10 = [(EKCalendarItem *)self calendar];
        v3 = [v10 isDefaultSchedulingCalendar];
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
  }

  return v3;
}

- (BOOL)allowsTravelTimeModifications
{
  v3 = [(EKCalendarItem *)self calendar];
  if ([v3 allowsContentModifications])
  {
    v4 = [(EKEvent *)self constraints];
    if ([v4 supportsTravelTime])
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
  v3 = [(EKObject *)self eventStore];
  v4 = [v3 skipModificationValidation];

  if ((v4 & 1) == 0)
  {
    v6 = [(EKCalendarItem *)self calendar];
    v7 = [(EKEvent *)self constraints];
    if ([v7 supportsPrivateEvents])
    {
      if ([MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement])
      {
LABEL_5:
        LOBYTE(v5) = 1;
LABEL_10:

        return v5;
      }

      v8 = [v6 source];
      v9 = [v8 isDelegate];

      v10 = [v6 sharingStatus];
      if (v10 == 2 || !v9)
      {
        if (v10 == 2)
        {
          goto LABEL_9;
        }
      }

      else if (([v7 allowsPrivateEventAccessByDelegate] & 1) == 0)
      {
        goto LABEL_9;
      }

      if ([v7 prohibitsPrivateEventsWithAttendees])
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
      v4 = [(EKCalendarItem *)self detachedItems];
      v3 = [v4 count] == 0;

      return v3;
    }
  }

  return 0;
}

- (void)setPrivacyLevel:(int64_t)a3
{
  if ([(EKEvent *)self allowsPrivacyLevelModifications])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(EKObject *)self setSingleChangedValue:v5 forKey:*MEMORY[0x1E69929B8]];
  }
}

- (void)setPrivacyLevelWithoutVerifyingPrivacyModificationsAllowed:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69929B8]];
}

- (BOOL)locationIsAConferenceRoom
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(EKEvent *)self locationWithoutPrediction];
  v4 = v3;
  if (v3 && [v3 length] && -[EKCalendarItem hasAttendees](self, "hasAttendees"))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(EKCalendarItem *)self attendees];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([v9 participantType] == 2)
          {
            v10 = [v9 name];
            v11 = [v10 isEqualToString:v4];

            if (v11)
            {
              LOBYTE(v6) = 1;
              goto LABEL_17;
            }
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
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (void)_setInvitationChangedProperty:(BOOL)a3 forFlag:(unsigned int)a4
{
  v5 = a3;
  v7 = [(EKEvent *)self invitationChangedProperties];
  if (v5)
  {
    v8 = v7 | a4;
  }

  else
  {
    v8 = v7 & ~a4;
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
    v5 = [(EKEvent *)self constraints];
    v6 = [v5 supportsEventForwarding];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)serverSupportedProposeNewTime
{
  v3 = [(EKEvent *)self constraints];
  if ([v3 allowsProposeNewTime])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(EKEvent *)self constraints];
    v4 = [v5 supportsResponseComments];
  }

  return v4;
}

- (BOOL)disallowProposeNewTime
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992960]];
  v3 = [v2 BOOLValue];

  return v3;
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

  v3 = [(EKCalendarItem *)self calendar];
  v4 = [v3 allowsContentModifications];

  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = [(EKCalendarItem *)self isExternallyOrganizedInvitation];
  if (v5)
  {
    v6 = [(EKCalendarItem *)self selfAttendee];

    if (v6)
    {
      if (![(EKCalendarItem *)self isOrganizedBySharedCalendarOwner])
      {
        v7 = [(EKCalendarItem *)self calendar];
        v8 = [v7 allowsScheduling];

        if (v8)
        {
          if ([(EKEvent *)self serverSupportedProposeNewTime])
          {
            goto LABEL_12;
          }

          v9 = [(EKCalendarItem *)self organizer];
          v10 = [v9 emailAddress];

          if (v10)
          {
            v11 = [(EKCalendarItem *)self calendar];
            v12 = [v11 source];
            v13 = [v12 hasOwnerEmailAddress];

            if (v13)
            {
LABEL_12:
              LOBYTE(v5) = 1;
              return v5;
            }
          }
        }
      }
    }

LABEL_13:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)supportsAddingAttachments
{
  if ([(EKCalendarItem *)self isExternallyOrganizedInvitation])
  {
    return 0;
  }

  v3 = [(EKCalendarItem *)self calendar];
  v4 = [v3 allowsContentModifications];

  if (!v4)
  {
    return 0;
  }

  v5 = [(EKEvent *)self constraints];
  v6 = [v5 supportsAttachments];

  return v6;
}

- (void)setNotes:(id)a3
{
  v4 = a3;
  v5 = [(EKCalendarItem *)self notes];
  if ([v5 isEqual:v4])
  {
  }

  else
  {
    if ([v4 isEqualToString:&stru_1F1B49D68])
    {
      v6 = [(EKCalendarItem *)self notes];

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v7.receiver = self;
    v7.super_class = EKEvent;
    [(EKCalendarItem *)&v7 setNotes:v4];
    [(EKEvent *)self setNotesCommon:v4];
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
    v5 = [v3 range];
    v7 = [v4 stringByReplacingCharactersInRange:v5 withString:{v6, &stru_1F1B49D68}];

    if (![v7 hasSuffix:@"\n\n"])
    {
      goto LABEL_6;
    }

    v8 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 2}];
  }

  else
  {
    v8 = [(EKCalendarItem *)self notes];
    v7 = v4;
  }

  v7 = v8;
LABEL_6:
  v9 = [v7 CDVStringByXMLUnquoting];

  return v9;
}

- (void)setDisplayNotes:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = 0;
  [(EKEvent *)self parsedConference:&v12 andNotes:&v11];
  v5 = v12;
  v6 = v11;
  v7 = v4;
  if (v5)
  {
    v8 = [v5 range];
    v10 = [v6 substringWithRange:{v8, v9}];
    v7 = [(EKEvent *)self _buildConferenceStringFromNotesWithoutConference:v4 serializedConference:v10];
  }

  [(EKEvent *)self setNotes:v7];
}

- (void)setURL:(id)a3
{
  v5.receiver = self;
  v5.super_class = EKEvent;
  v4 = a3;
  [(EKCalendarItem *)&v5 setURL:v4];
  [(EKEvent *)self setURLCommon:v4, v5.receiver, v5.super_class];
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
    v8 = [(EKEvent *)self birthdayContactIdentifier];
    v9 = [v7 stringWithFormat:@"addressbook://%@", v8];
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

- (void)setStructuredLocation:(id)a3 preserveConferenceRooms:(BOOL)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    v7 = MEMORY[0x1E695DF70];
    v8 = [(EKEvent *)self _conferenceRoomDisplayStrings];
    v9 = [v7 arrayWithArray:v8];

    if (v6)
    {
      v10 = [v6 title];

      if (v10)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = [v6 title];
        v12 = [v11 componentsSeparatedByString:@" "];;

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

    [(EKEvent *)self setStructuredLocation:v6];
    v18 = [objc_opt_class() _locationStringForLocations:v9];
    v19 = [(EKEvent *)self structuredLocation];

    if (v19)
    {
      v20 = [(EKEvent *)self structuredLocation];
      [v20 setTitle:v18];
    }

    else
    {
      v20 = [EKStructuredLocation locationWithTitle:v18];
      [(EKEvent *)self setStructuredLocation:v20];
    }
  }

  else
  {
    v21 = [(EKEvent *)self roomAttendees];
    [(EKEvent *)self removeConferenceRooms:v21];

    [(EKEvent *)self setStructuredLocation:v6];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)roomAttendees
{
  v2 = [(EKCalendarItem *)self attendees];
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_153];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (void)addConferenceRooms:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
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

        [(EKCalendarItem *)self addAttendee:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [(EKEvent *)self structuredLocation];
  [(EKEvent *)self setStructuredLocation:v9 preserveConferenceRooms:1];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeConferenceRooms:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKEvent *)self roomAttendees];
  v6 = [MEMORY[0x1E695DF70] arrayWithArray:v5];
  [v6 removeObjectsInArray:v4];
  if ([v6 count])
  {
    v24 = 0;
  }

  else
  {
    v7 = [(EKEvent *)self locations];
    v8 = [v7 count];
    v24 = v8 == [v5 count];
  }

  v9 = MEMORY[0x1E695DF70];
  v10 = [(EKEvent *)self structuredLocation];
  v11 = [v10 title];
  v12 = [v11 componentsSeparatedByString:@" "];;
  v13 = [v9 arrayWithArray:v12];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v4;
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
        v20 = [v19 displayString];
        if (v20)
        {
          [v13 removeObject:v20];
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
    v22 = [(EKEvent *)self structuredLocation];
    [v22 setTitle:v21];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_conferenceRoomDisplayStrings
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(EKEvent *)self roomAttendees];
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

        v9 = [*(*(&v12 + 1) + 8 * i) displayString];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_firstNonConferenceRoomLocationTitle
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(EKEvent *)self locationsWithoutPrediction];
  if ([(EKCalendarItem *)self hasAttendees])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v3;
    v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v4)
    {
      v5 = v4;
      v21 = *v27;
      v19 = v3;
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
        v8 = [(EKCalendarItem *)self attendees];
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * v12);
          if ([v13 participantType] == 2)
          {
            v14 = [v13 name];
            v15 = [v14 isEqualToString:v7];

            if (v15)
            {
              break;
            }
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
        v3 = v19;
        if (!v5)
        {
          goto LABEL_23;
        }
      }

LABEL_21:

      v16 = v7;
      v3 = v19;
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
  v3 = [(EKEvent *)self _cachedPredictedLocation];
  os_unfair_lock_unlock(&self->_locationPredictionLock);

  return v3;
}

- (id)predictedLocation
{
  v3 = [(EKEvent *)self cachedPredictedLocation];
  v4 = [v3 fetchPredictedLocationWithDelegate:self];

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

- (void)confirmPredictedLocation:(id)a3
{
  v4 = a3;
  [(EKEvent *)self setPredictedLocationFrozen:0];
  if (!v4)
  {
    v4 = [(EKEvent *)self structuredLocation];
  }

  v8 = [v4 duplicate];

  [v8 setPredictedLOI:0];
  if (-[EKEvent isEditable](self, "isEditable") && (-[EKEvent constraints](self, "constraints"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 supportsStructuredLocations], v5, v6))
  {
    [(EKEvent *)self setStructuredLocation:v8];
  }

  else
  {
    v7 = [(EKEvent *)self locationWithoutPrediction];
    [v8 setDerivedFrom:v7];

    [(EKCalendarItem *)self setClientLocation:v8];
  }

  [(EKEvent *)self setLocationPredictionState:2];
}

- (void)rejectPredictedLocation
{
  [(EKEvent *)self setPredictedLocationFrozen:0];
  v3 = [(EKEvent *)self preferredLocationWithoutPrediction];
  [(EKEvent *)self setStructuredLocation:v3];

  [(EKEvent *)self setLocationPredictionState:3];
}

- (BOOL)hasPredictedLocation
{
  v2 = [(EKCalendarItem *)self preferredLocation];
  v3 = [v2 isPrediction];

  return v3;
}

- (void)setPredictedLocationFrozen:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_locationPredictionLock);
  if (self->_locationPredictionFrozen != v3)
  {
    self->_locationPredictionFrozen = v3;
    if (v3)
    {
      v5 = [(EKEvent *)self _cachedPredictedLocation];
      v6 = [v5 frozenCopy];
      [(EKObject *)self setCachedValue:v6 forKey:@"PredictedLocation"];
    }

    else
    {
      [(EKEvent *)self _clearLocationPredictionCacheIfNotFrozenHoldingLock];
    }
  }

  os_unfair_lock_unlock(&self->_locationPredictionLock);
}

- (void)setLocationPredictionAllowed:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_locationPredictionLock);
  if (self->_locationPredictionAllowed != v3)
  {
    self->_locationPredictionAllowed = v3;
    if (v3)
    {
      [(EKEvent *)self _clearLocationPredictionCacheIfNotFrozenHoldingLock];
    }
  }

  os_unfair_lock_unlock(&self->_locationPredictionLock);
}

- (NSURL)conferenceURL
{
  v2 = [(EKEvent *)self conferenceURLString];
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

- (void)setConferenceURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(EKEvent *)self setConferenceURLString:v4];
}

- (void)setCalendar:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12.receiver = self;
    v12.super_class = EKEvent;
    [(EKCalendarItem *)&v12 setCalendar:0];
    goto LABEL_11;
  }

  v6 = [(EKCalendarItem *)self calendar];
  v7 = [v6 source];
  if (v7 || ([v5 source], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = [(EKCalendarItem *)self calendar];
    v9 = [v8 source];
    v10 = [v5 source];
    v11 = [v9 isEqual:v10] ^ 1;

    if (v7)
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
  [(EKCalendarItem *)&v12 setCalendar:v5];
  if (v11)
  {
    [(EKEvent *)self updateDefaultAlarms];
  }

LABEL_11:
  [(EKEvent *)self clearIntegrationType];
}

- (void)setEndLocation:(id)a3
{
  v4 = *MEMORY[0x1E69925A8];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKStructuredLocation frozenClass]];
}

- (BOOL)isTentative
{
  v3 = [(EKEvent *)self participationStatus];
  if (v3 == 2)
  {
    return 0;
  }

  v4 = v3;
  if (![(EKCalendarItem *)self isExternallyOrganizedInvitation])
  {
    return 0;
  }

  v5 = [(EKEvent *)self status];
  v6 = v5 != EKEventStatusCanceled;
  if (v4 == 4 && v5 != EKEventStatusCanceled)
  {
    v7 = [(EKEvent *)self constraints];
    v8 = v7;
    if (v7)
    {
      v6 = [v7 statusesAreAccurate];
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (NSComparisonResult)compareStartDateWithEvent:(EKEvent *)other
{
  v4 = other;
  v5 = [(EKEvent *)self occurrenceStartDate];
  v6 = [(EKEvent *)v4 occurrenceStartDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (int64_t)compareStartDateIncludingTravelWithEvent:(id)a3
{
  v4 = a3;
  v5 = [(EKEvent *)self startDateIncludingTravel];
  v6 = [v4 startDateIncludingTravel];

  v7 = [v5 compare:v6];
  return v7;
}

- (int64_t)compareOriginalStartDateWithEvent:(id)a3
{
  v4 = a3;
  if ([(EKEvent *)self isDetached])
  {
    [(EKEvent *)self originalStartDate];
  }

  else
  {
    [(EKEvent *)self startDate];
  }
  v5 = ;
  if ([v4 isDetached])
  {
    [v4 originalStartDate];
  }

  else
  {
    [v4 startDate];
  }
  v6 = ;
  v7 = [v5 compare:v6];

  return v7;
}

- (BOOL)isEditable
{
  v3 = [(EKObject *)self eventStore];
  if ([v3 skipModificationValidation])
  {

    return 1;
  }

  v4 = [MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement];

  if (v4)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = EKEvent;
  v6 = [(EKCalendarItem *)&v7 isEditable];
  return ![(EKEvent *)self isPrivateEventSharedToMe]& v6;
}

- (BOOL)isPrivateEventSharedToMe
{
  v3 = [(EKEvent *)self privacyLevel];
  v4 = [(EKCalendarItem *)self calendar];
  v5 = [v4 source];
  v6 = [v5 isDelegate];

  v7 = [(EKCalendarItem *)self calendar];
  v8 = [v7 sharingStatus];

  if (v8 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  return v3 && v9;
}

- (BOOL)allowsRecurrenceModificationsForSpan:(int64_t)a3
{
  v5 = [(EKEvent *)self isEditable];
  if ([(EKEvent *)self isDetached])
  {
    if (a3 != 1 && a3 != 4)
    {
      v6 = [(EKCalendarItem *)self calendar];

      if (v6)
      {
        v7 = [(EKEvent *)self constraints];
        v5 = [v7 supportsRecurrencesOnDetachedEvents];
      }
    }
  }

  return v5;
}

- (BOOL)allowsCalendarModifications
{
  v5.receiver = self;
  v5.super_class = EKEvent;
  v3 = [(EKCalendarItem *)&v5 allowsCalendarModifications];
  if (v3)
  {
    if ([(EKObject *)self isNew])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = ![(EKCalendarItem *)self isExternallyOrganizedInvitation];
    }
  }

  return v3;
}

- (BOOL)responseMustApplyToAll
{
  if (![(EKEvent *)self isOrWasPartOfRecurringSeries])
  {
    return 0;
  }

  v3 = [(EKEvent *)self constraints];
  v4 = [v3 mustAcknowledgeMasterEvent];

  if (!v4)
  {
    return 0;
  }

  v5 = [(EKCalendarItem *)self originalItem];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = self;
  }

  v8 = v7;

  if ([(EKEvent *)v8 participationStatus]== 1)
  {
    v9 = 1;
  }

  else
  {
    v10 = [(EKCalendarItem *)v8 externalID];
    v9 = v10 == 0;
  }

  return v9;
}

- (BOOL)_changesRequireDetachOrSlice
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(EKObject *)self changeSet];
  v4 = [v3 changedKeys];

  v5 = [v4 count];
  v6 = [MEMORY[0x1E695DFA8] setWithObject:*MEMORY[0x1E6992570]];
  v7 = [(EKEvent *)self constraints];
  v8 = [v7 requiresSamePrivacyLevelAcrossRecurrenceSeries];

  if (v8)
  {
    [v6 addObject:*MEMORY[0x1E69929B8]];
  }

  v9 = [(EKEvent *)self constraints];
  if ([v9 prohibitsDetachmentOnCommentChange])
  {
    v10 = [v4 containsObject:*MEMORY[0x1E69929C0]];

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
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        objc_enumerationMutation(v11);
      }

      v5 -= [v4 containsObject:{*(*(&v19 + 1) + 8 * i), v19}];
    }

    v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v13);

  if (v5)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (![(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992648]])
  {
    v11 = [v6 allObjects];
    v16 = [(EKObject *)self hasUnsavedChangesIgnoreKeys:v11];
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
    v3 = [(EKEvent *)self singleRecurrenceRule];
    v4 = [v3 hasChanges];

    if (v4)
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

  v4 = [(EKCalendarItem *)self calendar];
  v5 = [v4 source];
  v3 = [v5 sourceType] != 1;

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
  v3 = [objc_opt_class() _basicChangesRequiringSpanAll];
  if ([(EKEvent *)self _hasOrHadRecurrenceRule])
  {
    v4 = [(EKObject *)self hasUnsavedChangesInKeys:v3];
  }

  else
  {
    v5 = [(EKCalendarItem *)self originalItem];
    if ([v5 _hasOrHadRecurrenceRule])
    {
      v4 = [(EKObject *)self hasUnsavedChangesInKeys:v3];
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
  v5 = [(EKCalendarItem *)self hasRecurrenceRules];
  if (!v5 || v4)
  {
    if (!v5)
    {
      LOBYTE(v6) = v4 != 0;
      goto LABEL_13;
    }

    v7 = [(EKCalendarItem *)self recurrenceRules];
    if ([v7 count] == 1)
    {
      v8 = [v3 count];

      if (v8 == 1)
      {
LABEL_12:
        v10 = [(EKCalendarItem *)self recurrenceRules];
        v11 = [v10 firstObject];

        v12 = [EKRecurrenceRule alloc];
        v13 = [v3 anyObject];
        v14 = [(EKObject *)v12 initWithPersistentObject:v13];

        v6 = [v11 isEqualToRecurrenceRule:v14] ^ 1;
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
  v2 = [(EKCalendarItem *)self calendar];
  v3 = [v2 automaticEventLocationGeocodingAllowed];

  return v3;
}

- (BOOL)_eligibleForTravelAdvisoriesIncludePotential:(BOOL)a3
{
  v3 = a3;
  if ([(EKEvent *)self isAllDay]|| [(EKEvent *)self selfParticipantStatus]== 3 || [(EKEvent *)self status]== EKEventStatusCanceled || [(EKEvent *)self locationIsAConferenceRoom])
  {
    return 0;
  }

  v7 = [(EKCalendarItem *)self preferredLocation];
  if (([v7 hasKnownSpatialData] & 1) != 0 || v3 && -[EKEvent automaticLocationGeocodingAllowed](self, "automaticLocationGeocodingAllowed"))
  {
    if ([v7 isPrediction] && (objc_msgSend(v7, "predictedLOI"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "type"), v8, v9 <= 1))
    {
      v10 = [(EKEvent *)self conferenceURLForDisplay];
      if (v10)
      {
        v5 = 0;
      }

      else
      {
        v11 = [(EKEvent *)self virtualConference];
        v5 = v11 == 0;
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
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTravelAdvisoryBehavior:(int64_t)a3
{
  if ([(EKEvent *)self eligibleForTravelAdvisories])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(EKObject *)self setSingleChangedValue:v5 forKey:*MEMORY[0x1E69929F0]];
  }
}

- (BOOL)travelAdvisoryBehaviorIsEffectivelyEnabled
{
  v2 = [(EKEvent *)self travelAdvisoryBehavior];
  if (v2 == 2)
  {
    return 0;
  }

  if (v2)
  {
    return 1;
  }

  v3 = [MEMORY[0x1E6992DF0] shared];
  v4 = [v3 get_enableTravelAdvisoriesForAutomaticBehavior];

  return v4;
}

- (unint64_t)junkStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992998]];
  v3 = [v2 intValue];

  return v3;
}

- (void)setJunkStatus:(unint64_t)a3
{
  [(EKEvent *)self setCachedJunkStatus:?];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(EKObject *)self setSingleChangedValue:v5 forKey:*MEMORY[0x1E6992998]];
}

- (NSString)sendersEmail
{
  v2 = [(EKCalendarItem *)self organizer];
  v3 = [v2 emailAddress];

  return v3;
}

- (NSString)sendersPhoneNumber
{
  v2 = [(EKCalendarItem *)self organizer];
  v3 = [v2 phoneNumber];

  return v3;
}

- (BOOL)supportsJunkReporting
{
  v2 = [(EKCalendarItem *)self calendar];
  v3 = [v2 supportsJunkReporting];

  return v3;
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
  v3 = [objc_opt_class() _relatedCachedTimeKeys];
  [(EKObject *)self clearCachedValuesForKeys:v3];
}

- (id)startOfDayForStartDateInCalendar:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _relatedCachedTimeKeys];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__EKEvent_startOfDayForStartDateInCalendar___block_invoke;
  v9[3] = &unk_1E77FF050;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = [(EKObject *)self cachedValueForKey:@"cachedStartOfDayForStartDate" expectingCachedValue:v6 forMasterKey:@"cachedTimeValuesCalendar" relatedKeys:v5 populateBlock:v9];

  return v7;
}

id __44__EKEvent_startOfDayForStartDateInCalendar___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) startDate];
  v3 = [v1 startOfDayForDate:v2];

  return v3;
}

- (id)startOfDayForEndDateInCalendar:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _relatedCachedTimeKeys];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__EKEvent_startOfDayForEndDateInCalendar___block_invoke;
  v9[3] = &unk_1E77FF050;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [(EKObject *)self cachedValueForKey:@"cachedStartOfDayForEndDate" expectingCachedValue:v6 forMasterKey:@"cachedTimeValuesCalendar" relatedKeys:v5 populateBlock:v9];

  return v7;
}

id __42__EKEvent_startOfDayForEndDateInCalendar___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) startOfDayForStartDateInCalendar:*(a1 + 40)];
  v3 = [v2 dateByAddingDays:objc_msgSend(*(a1 + 32) inCalendar:{"daysSpannedInCalendar:", *(a1 + 40)) - 1, *(a1 + 40)}];

  return v3;
}

- (int64_t)daysSpannedInCalendar:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _relatedCachedTimeKeys];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __33__EKEvent_daysSpannedInCalendar___block_invoke;
  v13 = &unk_1E77FF050;
  v14 = self;
  v15 = v4;
  v6 = v4;
  v7 = [(EKObject *)self cachedValueForKey:@"cachedDaysSpanned" expectingCachedValue:v6 forMasterKey:@"cachedTimeValuesCalendar" relatedKeys:v5 populateBlock:&v10];

  v8 = [v7 integerValue];
  return v8;
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

- (BOOL)isMultiDayTimedEventInCalendar:(id)a3
{
  v4 = a3;
  v5 = [(EKEvent *)self startDate];
  if (v5 && (v6 = v5, [(EKEvent *)self endDateUnadjustedForLegacyClients], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [objc_opt_class() _relatedCachedTimeKeys];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __42__EKEvent_isMultiDayTimedEventInCalendar___block_invoke;
    v15 = &unk_1E77FF050;
    v16 = self;
    v17 = v4;
    v9 = [(EKObject *)self cachedValueForKey:@"cachedIsMultiDayTimedEvent" expectingCachedValue:v17 forMasterKey:@"cachedTimeValuesCalendar" relatedKeys:v8 populateBlock:&v12];

    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
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

+ (BOOL)isMultiDayTimedEventWithStartDate:(id)a3 endDate:(id)a4 allDay:(BOOL)a5 inCalendar:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = 0;
  if (v9 && v10 && !a5)
  {
    if ([v9 isSameDayAsDate:v10 inCalendar:v11])
    {
      v12 = 0;
    }

    else
    {
      v13 = [v11 startOfDayForDate:v9];
      v14 = [v13 dateByAddingDays:1 inCalendar:v11];
      v15 = [v14 dateOnlyComponentsInCalendar:v11];

      [v15 setHour:5];
      v16 = [v11 dateFromComponents:v15];
      v12 = [v10 isAfterDate:v16];
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

- (id)snapshotCopyWithPropertyKeysToCopy:(id)a3 propertyKeysToSkip:(id)a4
{
  v9.receiver = self;
  v9.super_class = EKEvent;
  v5 = [(EKObject *)&v9 snapshotCopyWithPropertyKeysToCopy:a3 propertyKeysToSkip:a4];
  [v5 setOccurrenceIsAllDay:{-[EKEvent occurrenceIsAllDay](self, "occurrenceIsAllDay")}];
  v6 = [(EKEvent *)self occurrenceStartDate];
  [v5 setOccurrenceStartDate:v6];

  v7 = [(EKEvent *)self occurrenceEndDate];
  [v5 setOccurrenceEndDate:v7];

  return v5;
}

- (id)previouslySavedCopy
{
  v9.receiver = self;
  v9.super_class = EKEvent;
  v3 = [(EKObject *)&v9 previouslySavedCopy];
  v4 = [(EKEvent *)self originalOccurrenceIsAllDay];

  if (v4)
  {
    v5 = [(EKEvent *)self originalOccurrenceIsAllDay];
    [v3 setOccurrenceIsAllDay:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v3 setOccurrenceIsAllDay:{-[EKEvent occurrenceIsAllDay](self, "occurrenceIsAllDay")}];
  }

  v6 = [(EKEvent *)self originalOccurrenceStartDate];
  [v3 setOccurrenceStartDate:v6];

  v7 = [(EKEvent *)self originalOccurrenceEndDate];
  [v3 setOccurrenceEndDate:v7];

  return v3;
}

- (int64_t)pendingParticipationStatus
{
  v2 = [(EKCalendarItem *)self selfAttendee];
  v3 = [v2 pendingStatus];

  return v3;
}

- (BOOL)allowsAvailabilityModifications
{
  v3 = [(EKObject *)self eventStore];
  v4 = [v3 skipModificationValidation];

  if (v4)
  {
    return 1;
  }

  if ([(EKEvent *)self status]== EKEventStatusCanceled)
  {
    return 0;
  }

  v6 = [(EKCalendarItem *)self calendar];
  v7 = [v6 supportedEventAvailabilities];

  if (!v7)
  {
    return 0;
  }

  if (![(EKEvent *)self privacyLevel])
  {
    return 1;
  }

  v8 = [(EKCalendarItem *)self calendar];
  v5 = [v8 sharingStatus] != 2;

  return v5;
}

- (BOOL)_hasExternalIDOrDeliverySource
{
  v3 = [(EKCalendarItem *)self externalID];

  if (v3)
  {
    return 1;
  }

  v4 = [(EKCalendarItem *)self originalItem];
  v5 = [v4 externalID];

  if (v5)
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
  v2 = [(EKEvent *)self actions];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 externalID];
        if (v7)
        {
          v8 = [v6 externalFolderID];

          if (v8)
          {

            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(EKObject *)self eventStore];
  v4 = [v3 skipModificationValidation];

  if (v4)
  {
    return 1;
  }

  if ([(EKObject *)self isNew])
  {
    return 0;
  }

  v7 = [(EKEvent *)self status];
  v8 = [(EKCalendarItem *)self isExternallyOrganizedInvitation];
  v9 = [(EKCalendarItem *)self selfAttendee];

  v5 = 0;
  if (v7 != EKEventStatusCanceled && v8 && v9)
  {
    if ([(EKCalendarItem *)self isOrganizedBySharedCalendarOwner])
    {
      return 0;
    }

    v10 = [(EKEvent *)self constraints];
    v11 = [(EKCalendarItem *)self calendar];
    v12 = v11;
    v5 = 0;
    if (v10 && v11)
    {
      v13 = [(EKCalendarItem *)self organizer];
      objc_opt_class();
      v5 = (objc_opt_isKindOfClass() & 1) != 0 && [v13 scheduleAgent] != 1 && objc_msgSend(v12, "allowsContentModifications") && (!objc_msgSend(v10, "proposedStatusRequiredForResponse") || v7 == EKEventStatusConfirmed) && objc_msgSend(v10, "supportsInvitationModifications") && objc_msgSend(v12, "allowsScheduling") && (!objc_msgSend(v10, "deliverySourceOrExternalIDRequiredForResponse") || -[EKEvent _hasExternalIDOrDeliverySource](self, "_hasExternalIDOrDeliverySource")) && (-[EKEvent participationStatus](self, "participationStatus") != 3 || !objc_msgSend(v10, "declinedStatusChangeRequiresNoPendingStatus") || !-[EKEvent pendingParticipationStatus](self, "pendingParticipationStatus"));
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
    v3 = [(EKCalendarItem *)self recurrenceRules];
    v16 = [v3 objectAtIndex:0];
  }

  else
  {
    v16 = 0;
  }

  v15 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v4 = [(EKCalendarItem *)self location];
  v5 = [(EKEvent *)self structuredLocation];
  v6 = [(EKEvent *)self startDate];
  v7 = [(EKEvent *)self endDate];
  v8 = [(EKEvent *)self isAllDay];
  v9 = [(EKEvent *)self isFloating];
  v10 = [(EKEvent *)self _travelTimeInternalDescription];
  v11 = [(EKCalendarItem *)self travelStartLocation];
  v12 = [v15 stringWithFormat:@"%@ <%p>\n{\n\t %@ \n\t location = \t%@; \n\t structuredLocation = \t%@; \n\t startDate = \t%@; \n\t endDate = \t\t%@; \n\t allDay = \t\t%u; \n\t floating = \t%u; \n\t recurrence = \t%@; \n\t travelTime = \t%@; \n\t startLocation = \t%@;\n};", v14, self, v17, v4, v5, v6, v7, v8, v9, v16, v10, v11];;

  return v12;
}

- (id)privacyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKObject *)self objectID];
  v6 = [v5 rowID];
  v7 = [(EKCalendarItem *)self UUID];
  v8 = [(EKEvent *)self startDate];
  v9 = [v8 debugDescription];
  v10 = [v3 stringWithFormat:@"<%@ rowid=[%d] UUID=[%@] start-date=[%@]>", v4, v6, v7, v9];

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
    v4 = [(EKEvent *)self originalOccurrenceStartDate];
    v5 = [(EKRecurrenceGenerator *)v3 isOccurrenceDate:v4 validForEvent:self];

    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

- (void)_snoozeAlarm:(id)a3 withTimeIntervalFromNow:(double)a4 orTargetDate:(id)a5 pinsTriggerToStartDate:(BOOL)a6
{
  v27 = a3;
  v10 = a5;
  if (v27)
  {
    v11 = [MEMORY[0x1E695DF00] date];
    v12 = [(EKEvent *)self constraints];
    v13 = [v12 snoozeAlarmRequiresDetach];

    if (v13)
    {
      v14 = v27;
      [(EKEvent *)self setRequiresDetachDueToSnoozedAlarm:1];
    }

    else
    {
      v14 = [v27 duplicate];
      [v27 setAcknowledgedDate:v11];
    }

    [v14 setDefaultAlarm:0];
    if (!v10)
    {
      v10 = [v11 dateByAddingTimeInterval:a4];
    }

    v15 = [(EKEvent *)self startDate];
    v16 = [v11 isAfterDate:v15];

    v17 = [(EKEvent *)self startDate];
    [v10 timeIntervalSinceDate:v17];
    v19 = v18;

    v20 = !a6;
    if (v19 <= 0.0)
    {
      v20 = 1;
    }

    v21 = (v20 | v16) ^ 1;
    if (v19 > 0.0 && (((v20 | v16) ^ 1) & 1) == 0)
    {
      v22 = [(EKEvent *)self constraints];
      v21 = [v22 supportsAlarmsTriggeringAfterStartDate] ^ 1;
    }

    v23 = 0.0;
    if ((v21 & 1) == 0)
    {
      v23 = v19;
    }

    [v14 setRelativeOffset:v23];
    v24 = [(EKEvent *)self constraints];
    v25 = [v24 snoozeAlarmRequiresDetach];

    if (v25)
    {
      [(EKCalendarItem *)self setModifiedProperties:[(EKCalendarItem *)self modifiedProperties]| 0x80];
    }

    else
    {
      v26 = [(EKCalendarItem *)self findOriginalAlarmStartingWith:v27];
      [v14 setOriginalAlarm:v26];
      [(EKCalendarItem *)self addAlarm:v14];
    }
  }
}

- (id)propertiesThatCanBeModifiedOnReadOnlyCalendars
{
  v5.receiver = self;
  v5.super_class = EKEvent;
  v2 = [(EKCalendarItem *)&v5 propertiesThatCanBeModifiedOnReadOnlyCalendars];
  v3 = [v2 setByAddingObject:*MEMORY[0x1E6992580]];

  return v3;
}

- (BOOL)validateWithSpan:(int64_t)a3 error:(id *)a4
{
  v73 = *MEMORY[0x1E69E9840];
  v70.receiver = self;
  v70.super_class = EKEvent;
  LODWORD(v7) = [(EKCalendarItem *)&v70 validate:a4];
  if (v7)
  {
    v8 = [(EKCalendarItem *)self calendar];
    v9 = [v8 allowEvents];

    if ((v9 & 1) == 0)
    {
      if (a4)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 22;
        goto LABEL_18;
      }

LABEL_102:
      LOBYTE(v7) = 0;
      goto LABEL_103;
    }

    v10 = [(EKEvent *)self startDate];

    if (!v10)
    {
      if (a4)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 2;
        goto LABEL_18;
      }

      goto LABEL_102;
    }

    v11 = [(EKEvent *)self endDateUnadjustedForLegacyClients];

    if (!v11)
    {
      if (a4)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 3;
        goto LABEL_18;
      }

      goto LABEL_102;
    }

    v12 = [(EKEvent *)self startDate];
    v13 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
    v14 = [v12 compare:v13];

    if (v14 >= 1)
    {
      if (a4)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 4;
LABEL_18:
        v18 = [v15 errorWithEKErrorCode:v16];
        v7 = v18;
        LOBYTE(v7) = 0;
        *a4 = v18;
        goto LABEL_103;
      }

      goto LABEL_102;
    }

    v17 = [(EKEvent *)self _isParticipationStatusDirty];
    if (a3 == 1 && v17)
    {
      if (a4)
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
        v20 = [(EKCalendarItem *)self recurrenceRules];
        v21 = [v20 objectAtIndexedSubscript:0];

        if (v21 && ![(EKEvent *)self validateRecurrenceRule:v21 error:a4])
        {

          goto LABEL_102;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    LODWORD(v7) = [(EKEvent *)self _validateDatesAndRecurrencesGivenSpan:a3 error:a4];
    if (!v7)
    {
      goto LABEL_103;
    }

    v22 = [(EKObject *)self eventStore];
    if ([v22 skipModificationValidation] & 1) != 0 || (objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessHasSyncClientEntitlement"))
    {
    }

    else
    {
      if ([(EKObject *)self isNew])
      {
        v28 = [(EKCalendarItem *)self hasAttendees];

        if (!v28)
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

                v56 = [*(*(&v66 + 1) + 8 * i) changeSet];
                v57 = [v56 hasUnsavedChangeForKey:v53];

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

          if (a4 && v54)
          {
            *a4 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:41];
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
        v33 = [v31 allObjects];
        v34 = [v32 arrayWithArray:v33];

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
        if (a4 && v40)
        {
          *a4 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:41];

          goto LABEL_102;
        }

        if (v41)
        {
          goto LABEL_102;
        }
      }

      else if ([(EKCalendarItem *)self hasAttendees])
      {
        v42 = [(EKCalendarItem *)self calendar];
        v43 = [v42 allowsScheduling];

        if ((v43 & 1) == 0)
        {
          if (a4)
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
      if (a4)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 40;
        goto LABEL_18;
      }

      goto LABEL_102;
    }

    if ([(EKObject *)self _hasChangesForKey:v19]&& ![(EKEvent *)self allowsRecurrenceModificationsForSpan:a3])
    {
      if (a4)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 39;
        goto LABEL_18;
      }

      goto LABEL_102;
    }

    if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E69929B8]]&& ![(EKEvent *)self allowsPrivacyLevelModifications])
    {
      if (a4)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = 38;
        goto LABEL_18;
      }

      goto LABEL_102;
    }

    if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992948]])
    {
      v23 = [(EKCalendarItem *)self calendar];
      v24 = [v23 source];

      v25 = [(EKEvent *)self color];
      v26 = [v25 source];
      v27 = v26;
      if (v26 && v24)
      {
        if (([v24 isEqual:v26] & 1) == 0)
        {
          if (a4)
          {
            *a4 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:71];
          }

          goto LABEL_102;
        }
      }

      else if (v24 && v25 && !v26)
      {
        [v25 setSource:v24];
      }
    }

    v44 = [(EKEvent *)self constraints];
    if (![v44 supportsStructuredLocations])
    {
      v45 = [(EKCalendarItem *)self calendar];
      if (![v45 isSuggestedEventCalendar])
      {
        v46 = [(EKCalendarItem *)self calendar];
        v47 = [v46 isNaturalLanguageSuggestedEventCalendar];

        if ((v47 & 1) == 0)
        {
          if ([(EKObject *)self _hasChangesForKey:@"endLocation"])
          {
            v48 = [(EKEvent *)self endLocation];
            v49 = [v48 isStructured];

            if (v49)
            {
              if (a4)
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
    v5 = [v3 newObjectID];
    v6 = [v5 urlRepresentation];
    v7 = [v6 absoluteString];
  }

  else
  {
    v8 = objc_opt_class();
    v9 = [(EKCalendarItem *)self originalItem];
    v10 = [(EKCalendarItem *)self calendar];
    v7 = [v8 generateUniqueIDWithEvent:self originalEvent:v9 calendar:v10];
  }

  return v7;
}

- (void)_willSave
{
  v3.receiver = self;
  v3.super_class = EKEvent;
  [(EKCalendarItem *)&v3 _willSave];
  [(EKEvent *)self _removeInvalidAlarmsDuringSave];
}

- (BOOL)saveWithSpan:(int64_t)a3 error:(id *)a4
{
  v6 = self;
  v291 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  if (![(EKObject *)self hasChanges])
  {
    goto LABEL_9;
  }

  if ([(EKObject *)v6 isUndeleted])
  {
    if (a3 && a3 != 3)
    {
      if (!a4)
      {
        goto LABEL_34;
      }

      v10 = MEMORY[0x1E696ABC0];
      v11 = @"Cannot undelete an event with the given span";
LABEL_32:
      v12 = 13;
      goto LABEL_33;
    }

    if ([(EKEvent *)v6 isDetached])
    {
      [(EKEvent *)v6 _saveUndeletedDetachedOccurrence];
LABEL_9:
      v7 = 1;
LABEL_10:
      v8 = *MEMORY[0x1E69E9840];
      return v7;
    }

    if ([(EKCalendarItem *)v6 hasRecurrenceRules])
    {
      if (a4)
      {
        v10 = MEMORY[0x1E696ABC0];
        v11 = @"Cannot undelete an event that is part of a recurring series and not detached";
        v12 = 5;
LABEL_33:
        [v10 errorWithEKErrorCode:v12 description:v11];
        *a4 = v7 = 0;
        goto LABEL_10;
      }

LABEL_34:
      v7 = 0;
      goto LABEL_10;
    }
  }

  if (![(EKEvent *)v6 isUndetached])
  {
    v14 = a3;
    if ((a3 - 4) >= 0xFFFFFFFFFFFFFFFELL)
    {
      if ([(EKEvent *)v6 isDetached])
      {
        v14 = 0;
      }

      else
      {
        v14 = 4;
      }
    }

    if ([(EKObject *)v6 _hasChangesForKey:*MEMORY[0x1E6992620]])
    {
      v15 = [(EKEvent *)v6 _originallyCommittedVirtualConference];
      v16 = [(EKEvent *)v6 virtualConference];
      if ([v15 isEqual:v16])
      {
        v237 = 0;
      }

      else
      {
        v237 = v15;
      }
    }

    else
    {
      v237 = 0;
    }

    if ([(EKEvent *)v6 _detectedConferenceURLOnBackingObjectMayBeInvalid])
    {
      v17 = [(EKEvent *)v6 conferenceURLDetected];
      v18 = [v17 absoluteString];
      [(EKObject *)v6 setSingleChangedValue:v18 forKey:*MEMORY[0x1E6992950]];
    }

    if ([(EKEvent *)v6 _needsAttendeePartStatReset])
    {
      [(EKEvent *)v6 dismissAttendeeRepliedNotification];
      v280 = 0u;
      v281 = 0u;
      v278 = 0u;
      v279 = 0u;
      v19 = [(EKEvent *)v6 attendeesNotIncludingOrganizer];
      v20 = [v19 countByEnumeratingWithState:&v278 objects:v290 count:16];
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
              objc_enumerationMutation(v19);
            }

            [*(*(&v278 + 1) + 8 * i) setParticipantStatus:1];
          }

          v21 = [v19 countByEnumeratingWithState:&v278 objects:v290 count:16];
        }

        while (v21);
      }
    }

    v240 = *MEMORY[0x1E6992968];
    v24 = [(EKEvent *)v6 committedValueForKey:?];
    v25 = [MEMORY[0x1E695DF00] date];
    v236 = v24;
    v26 = [v24 compare:v25];
    v27 = MEMORY[0x1E6992648];
    if (v26 == -1)
    {
      v37 = [(EKEvent *)v6 virtualConference];

      if (v37)
      {
        if ([(EKObject *)v6 _hasChangesForKey:*v27])
        {
          v231 = [(EKCalendarItem *)v6 hasRecurrenceRules];
          goto LABEL_50;
        }

        if ([(EKObject *)v6 _hasChangesForKey:v240])
        {
          v55 = [(EKEvent *)v6 endDateUnadjustedForLegacyClients];
          v231 = [v25 compare:v55] == -1;

LABEL_50:
          v235 = v25;
          if ([(EKObject *)v6 isPropertyUnavailable:*MEMORY[0x1E6992568]])
          {
            if ([(EKObject *)v6 isPropertyUnavailable:*MEMORY[0x1E6992650]])
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
            v29 = [(EKCalendarItem *)v6 attendees];
            v30 = [v29 countByEnumeratingWithState:&v274 objects:v289 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = v14;
              v33 = *v275;
              v34 = *MEMORY[0x1E6992538];
              while (2)
              {
                for (j = 0; j != v31; ++j)
                {
                  if (*v275 != v33)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v36 = *(*(&v274 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 && ([v36 _hasChangesForKey:v34])
                  {
                    v28 = 1;
                    goto LABEL_67;
                  }
                }

                v31 = [v29 countByEnumeratingWithState:&v274 objects:v289 count:16];
                if (v31)
                {
                  continue;
                }

                break;
              }

              v28 = 0;
LABEL_67:
              v14 = v32;
              v27 = MEMORY[0x1E6992648];
            }

            else
            {
              v28 = 0;
            }

            if ([(EKObject *)v6 isPropertyUnavailable:*MEMORY[0x1E6992650]])
            {
              if (!v28)
              {
                goto LABEL_75;
              }

              goto LABEL_74;
            }
          }

          v38 = [(EKCalendarItem *)v6 selfAttendee];
          v39 = [v38 _hasChangesForKey:*MEMORY[0x1E6992538]];

          if (v28 & 1) != 0 || (v39)
          {
LABEL_74:
            v40 = [MEMORY[0x1E695DF00] date];
            [(EKEvent *)v6 setParticipationStatusModifiedDate:v40];
          }

LABEL_75:
          v41 = *MEMORY[0x1E6992920];
          if ([(EKObject *)v6 _hasChangesForKey:*MEMORY[0x1E6992920]])
          {
            v42 = [(EKCalendarItem *)v6 calendar];
            v43 = [v42 supportedEventAvailabilities];

            if (!v43)
            {
              [(EKObject *)v6 setSingleChangedValue:&unk_1F1B6AC30 forKey:v41];
            }
          }

          v230 = [(EKEvent *)v6 isMasterOrDetachedOccurrence];
          v44 = [(EKEvent *)v6 originalOccurrenceStartDate];
          v45 = [v44 date];

          v46 = *MEMORY[0x1E69926C8];
          if ([(EKObject *)v6 _hasChangesForKey:*MEMORY[0x1E69926C8]]|| [(EKObject *)v6 _hasChangesForKey:v240]|| [(EKObject *)v6 _hasChangesForKey:*MEMORY[0x1E6992600]])
          {
            v47 = [(EKEvent *)v6 recurrenceDate];
            if (v47)
            {
              v273 = 0;
              v48 = [(EKEvent *)v6 adjustedPersistedDateForDate:v47 withAdjustmentMode:1 pinMode:0 clientCalendarDate:&v273];
              v49 = v273;
              v50 = [v49 date];

              v45 = v50;
            }
          }

          v51 = [(EKObject *)v6 _hasChangesForKey:v46];
          v52 = [MEMORY[0x1E695DEE8] currentCalendar];
          v244 = [v52 copy];

          v229 = v51;
          if (v51)
          {
            if (v14)
            {
              if (![(EKObject *)v6 _hasChangesForKey:*v27])
              {
                v53 = [(EKEvent *)v6 startDate];
                v54 = [v45 isSameDayAsDate:v53 inCalendar:v244];

                if ((v54 & 1) == 0)
                {
                  if ([(EKCalendarItem *)v6 hasComplexRecurrence])
                  {
                    if (![(EKEvent *)v6 _attemptToUpdateComplexRecurrenceRule])
                    {
                      v14 = 0;
                    }
                  }

                  else
                  {
                    [(EKCalendarItem *)v6 pinRecurrenceRuleToEndsOfFreqency];
                  }
                }
              }
            }
          }

          v56 = [(EKObject *)v6 eventStore];
          v239 = v45;
          if ([v56 eventAccessLevel] == 1)
          {
            v57 = [(EKCalendarItem *)v6 calendar];
            v58 = [v57 isNew];

            if (v58)
            {
              if (a4)
              {
                v59 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:61];
                v60 = 0;
LABEL_99:
                v7 = 0;
                *a4 = v59;
LABEL_119:
                v67 = v236;
                v68 = v237;
LABEL_293:

                goto LABEL_10;
              }

              v60 = 0;
              goto LABEL_118;
            }
          }

          else
          {
          }

          v238 = v46;
          if ([(EKObject *)v6 isNew])
          {
            v60 = 0;
          }

          else
          {
            v61 = [(EKEvent *)v6 _changesRequireDetachOrSlice];
            if ([(EKEvent *)v6 isDetached])
            {
              v62 = [objc_opt_class() _allowSlicingFromDetachedOccurrence];
              if (v14 == 1)
              {
                v63 = v62;
              }

              else
              {
                v63 = 1;
              }

              if (v63)
              {
                v64 = v14;
              }

              else
              {
                v64 = 0;
              }

              v65 = v64 == 1 && v61;
              if (v64)
              {
                v66 = [(EKCalendarItem *)v6 originalItem];
                v60 = [v66 previouslySavedCopy];
              }

              else
              {
                v14 = 0;
                v60 = 0;
              }
            }

            else
            {
              v65 = v61 && [(EKCalendarItem *)v6 _hadRecurrenceRules];
              v60 = [(EKEvent *)v6 previouslySavedCopy];
            }

            if ([(EKObject *)v6 _hasChangesForKey:*MEMORY[0x1E6992570]])
            {
              v241 = a3;
              v69 = [(EKCalendarItem *)v6 calendar];
              [(EKCalendarItem *)v6 moveToCalendar:v69];

              if ([(EKEvent *)v6 isDetached])
              {
                v70 = [(EKCalendarItem *)v6 originalItem];
                v71 = [v70 calendar];
                v72 = [(EKCalendarItem *)v6 calendar];
                v73 = [v71 isEqual:v72];

                if ((v73 & 1) == 0)
                {
                  if (a4)
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
              v74 = v60;
              v227 = v14;
              v271 = 0u;
              v272 = 0u;
              v269 = 0u;
              v270 = 0u;
              v75 = [(EKCalendarItem *)v6 detachedItems];
              v76 = [v75 countByEnumeratingWithState:&v269 objects:v288 count:16];
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
                      objc_enumerationMutation(v75);
                    }

                    v80 = [*(*(&v269 + 1) + 8 * k) calendar];
                    v81 = [(EKCalendarItem *)v6 calendar];
                    v82 = [v80 isEqual:v81];

                    if ((v82 & 1) == 0)
                    {
                      if (a4)
                      {
                        *a4 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:37];
                      }

                      v7 = 0;
                      v67 = v236;
                      v68 = v237;
                      v60 = v74;
                      goto LABEL_293;
                    }
                  }

                  v77 = [v75 countByEnumeratingWithState:&v269 objects:v288 count:16];
                  if (v77)
                  {
                    continue;
                  }

                  break;
                }
              }

              v14 = v227;
              v60 = v74;
              a3 = v241;
              v65 = v245;
            }

            if ([(EKEvent *)v6 _isParticipationStatusDirty]&& !v14)
            {
              if (-[EKCalendarItem hasRecurrenceRules](v6, "hasRecurrenceRules") && (-[EKEvent constraints](v6, "constraints"), v83 = objc_claimAutoreleasedReturnValue(), v84 = [v83 mustAcknowledgeMasterEvent], v83, v84))
              {
                if ([(EKEvent *)v6 responseMustApplyToAll])
                {
                  v14 = 4;
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
            }

            v85 = [(EKEvent *)v6 constraints];
            v86 = [v85 snoozeAlarmRequiresDetach];

            if (v86 && [(EKEvent *)v6 requiresDetachDueToSnoozedAlarm])
            {
              v14 = 0;
            }

            if ([(EKObject *)v6 _hasChangesForKey:v238]|| [(EKObject *)v6 _hasChangesForKey:v240]|| [(EKObject *)v6 _hasChangesForKey:*MEMORY[0x1E6992600]])
            {
              [(EKCalendarItem *)v6 removeAllSnoozedAlarms];
            }

            else if ([(EKCalendarItem *)v6 isAlarmAcknowledgedPropertyDirty])
            {
              [(EKCalendarItem *)v6 removeAcknowledgedSnoozedAlarms];
            }

            if ([(EKEvent *)v6 isFirstOccurrence]&& v14 == 1)
            {
              v14 = 4;
            }

            if (v14 != 4 && v65)
            {
              v87 = [(EKEvent *)v6 originalOccurrenceStartDate];
              v88 = [v87 date];

              v89 = [(EKEvent *)v6 occurrenceStartDate];
              v90 = [v89 date];

              if ([(EKEvent *)v6 isFloating])
              {
                v91 = [(EKObject *)v6 eventStore];
                v92 = [v91 timeZone];
                v93 = [v88 dateInTimeZone:0 fromTimeZone:v92];

                v94 = [(EKObject *)v6 eventStore];
                v95 = [v94 timeZone];
                v96 = [v90 dateInTimeZone:0 fromTimeZone:v95];

                v88 = v93;
                v90 = v96;
              }

              [(EKEvent *)v6 _detachOrSliceWithSpan:v14 withOriginalStartDate:v88 newStartDate:v90];
            }

            if ([(EKEvent *)v6 requiresDetachDueToSnoozedAlarm])
            {
              [(EKEvent *)v6 setRequiresDetachDueToSnoozedAlarm:0];
            }

            else if (([(EKCalendarItem *)v6 modifiedProperties]& 0x80) != 0)
            {
              [(EKCalendarItem *)v6 setModifiedProperties:[(EKCalendarItem *)v6 modifiedProperties]& 0xFFFFFF7FLL];
            }

            [(EKCalendarItem *)v6 _updateModifiedAlarmByAcknowledging];
            if (([(EKCalendarItem *)v6 modifiedProperties]& 0x200) != 0 && ![(EKObject *)v6 _hasChangesForKey:*MEMORY[0x1E6992990]])
            {
              [(EKCalendarItem *)v6 setModifiedProperties:[(EKCalendarItem *)v6 modifiedProperties]& 0xFFFFFDFFLL];
            }
          }

          [(EKCalendarItem *)v6 addOrganizerAndSelfAttendeeForNewInvitation];
          [(EKCalendarItem *)v6 removeLastExtraneousOrganizerAndSelfAttendee];
          [(EKEvent *)v6 _updateUUIDForNewParticipants];
          v97 = [(EKEvent *)v6 constraints];
          v98 = [v97 requiresOccurrencesConformToRecurrenceRule];

          if (v98)
          {
            if ([(EKEvent *)v6 _isSimpleRepeatingEvent])
            {
              v99 = [(EKCalendarItem *)v6 recurrenceRules];
              v100 = [(EKEvent *)v6 conformsToRecurrenceRules:v99];

              if (!v100)
              {
                if (v14)
                {
                  v101 = [(EKCalendarItem *)v6 recurrenceRules];
                  v102 = [v101 objectAtIndexedSubscript:0];

                  v103 = [v102 frequency];
                  v104 = [v102 interval];
                  v105 = [v102 recurrenceEnd];
                  v106 = [EKRecurrenceRule recurrenceRuleWithType:v103 interval:v104 end:v105];
                  v287 = v106;
                  v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v287 count:1];
                  [(EKEvent *)v6 setRecurrenceRules:v107];
                }
              }
            }
          }

          if ([(EKEvent *)v6 _isParticipationStatusDirty])
          {
            v108 = [(EKEvent *)v6 constraints];
            v109 = [v108 mustAcknowledgeMasterEvent];

            if (v109)
            {
              if ([(EKEvent *)v6 isDetached]&& v14 == 4)
              {
                v110 = [(EKCalendarItem *)v6 originalItem];
                if (v110)
                {
                  v111 = [(EKEvent *)v6 participationStatus];
                  if (v111 == 3)
                  {
                    v112 = 4;
                  }

                  else
                  {
                    v112 = v111;
                  }

                  [v110 setParticipationStatus:v112];
                }
              }
            }
          }

          v113 = *MEMORY[0x1E6992980];
          if ([(EKObject *)v6 _hasChangesForKey:*MEMORY[0x1E6992980]])
          {
            v114 = [(EKEvent *)v6 image];
            v115 = [(EKCalendarItem *)v6 calendar];
            [v114 saveInCalendar:v115];

            v116 = [(EKObject *)v6 changeSet];
            v117 = [(EKEvent *)v6 image];
            v118 = [v117 backingObject];
            [v116 forceChangeValue:v118 forKey:v113];
          }

          if ([(EKEvent *)v6 isDetached])
          {
            v119 = *MEMORY[0x1E6992648];
            if ([(EKObject *)v6 _hasChangesForKey:*MEMORY[0x1E6992648]])
            {
              v120 = [(EKCalendarItem *)v6 recurrenceRules];
              v121 = [(EKCalendarItem *)v6 originalItem];
              [v121 setRecurrenceRules:v120];

              v122 = [(EKCalendarItem *)v6 originalItem];
              LOBYTE(v121) = [v122 hasRecurrenceRules];

              v123 = [(EKCalendarItem *)v6 originalItem];
              v124 = v123;
              if (v121)
              {
                [v123 _filterExceptionDatesAndDetachments];
              }

              else
              {
                [v123 setExceptionDates:0];

                v124 = [(EKCalendarItem *)v6 originalItem];
                [v124 setDetachedItems:0];
              }

              v125 = [(EKCalendarItem *)v6 originalItem];
              [v125 _updateModifiedProperties];

              v126 = [(EKCalendarItem *)v6 originalItem];
              [v126 updatePersistentValueForKeyIfNeeded:v119];

              v127 = [(EKCalendarItem *)v6 originalItem];
              [(EKObject *)v6 addCoCommitObject:v127];

              v128 = [(EKObject *)v6 changeSet];
              v286 = v119;
              v129 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v286 count:1];
              [v128 rollbackChangesForKeys:v129];

              [(EKObject *)v6 emptyMeltedCacheForKey:v119];
            }
          }

          v132 = a3 != 3 && v14 != 0 && v60 != 0;
          v133 = [(EKCalendarItem *)v6 timeZone];
          [v244 setTimeZone:v133];

          v134 = MEMORY[0x1E6992598];
          v228 = v14;
          v234 = v60;
          if (v132)
          {
            v135 = 0x1E695D000uLL;
            v136 = objc_opt_new();
            v137 = [(EKCalendarItem *)v6 originalItem];
            v138 = v137;
            if (v137)
            {
              v139 = v137;
            }

            else
            {
              v139 = v6;
            }

            v140 = v139;

            v141 = [v140 singleRecurrenceRule];
            v142 = [v141 recurrenceEnd];

            v243 = v136;
            v226 = v140;
            v225 = v142;
            if (v142)
            {
              if ([v142 occurrenceCount])
              {
                v143 = objc_alloc_init(EKRecurrenceGenerator);
                v144 = [v140 singleRecurrenceRule];
                [v226 startDate];
                v146 = v145 = v134;
                v147 = [MEMORY[0x1E695DF00] distantFuture];
                v148 = [(EKEvent *)v6 effectiveTimeZone];
                v149 = v142;
                v150 = v148;
                LOBYTE(v224) = 0;
                v151 = a3;
                v152 = -[EKRecurrenceGenerator copyOccurrenceDatesWithEKEvent:recurrenceRule:startDate:endDate:timeZone:exceptionDates:limit:adjustDatesForAllDayEvents:](v143, "copyOccurrenceDatesWithEKEvent:recurrenceRule:startDate:endDate:timeZone:exceptionDates:limit:adjustDatesForAllDayEvents:", v226, v144, v146, v147, v148, 0, [v149 occurrenceCount], v224);

                v136 = v243;
                v134 = v145;
                v135 = 0x1E695D000;

                v140 = v226;
                v142 = [v152 lastObject];

                a3 = v151;
              }

              else
              {
                v142 = [v142 endDate];
              }
            }

            v242 = a3;
            if (v228 == 4)
            {
              [v140 emptyMeltedCacheForKey:*v134];
            }

            v267 = 0u;
            v268 = 0u;
            v265 = 0u;
            v266 = 0u;
            v153 = [v140 detachedItems];
            v154 = [v153 countByEnumeratingWithState:&v265 objects:v285 count:16];
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
                    objc_enumerationMutation(v153);
                  }

                  v158 = *(*(&v265 + 1) + 8 * m);
                  if (v142)
                  {
                    v159 = [*(*(&v265 + 1) + 8 * m) startDate];
                    v160 = [v159 isBeforeOrSameDayAsDate:v142 inCalendar:v244];

                    v136 = v243;
                    if (!v160)
                    {
                      continue;
                    }
                  }

                  [v136 addObject:v158];
                }

                v155 = [v153 countByEnumeratingWithState:&v265 objects:v285 count:16];
              }

              while (v155);
            }

            if ([(EKEvent *)v6 isDetached])
            {
              v161 = [(EKCalendarItem *)v6 originalItem];
              [v136 addObject:v161];
            }

            v162 = [(EKEvent *)v6 startDate];
            v233 = [v244 components:254 fromDate:v239 toDate:v162 options:0];

            v163 = [(EKEvent *)v6 occurrenceStartDate];
            v164 = [(EKEvent *)v6 occurrenceEndDate];
            v232 = [(EKEvent *)v6 _calculateDurationWithStart:v163 end:v164 allDay:[(EKEvent *)v6 occurrenceIsAllDay]];

            v165 = *(v135 + 3952);
            v246 = objc_opt_new();
            v261 = 0u;
            v262 = 0u;
            v263 = 0u;
            v264 = 0u;
            v166 = [(EKObject *)v6 eventStore];
            v167 = [v166 eventsWithSameRecurrenceSetAsEvent:v6];

            v168 = [v167 countByEnumeratingWithState:&v261 objects:v284 count:16];
            v169 = v242;
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

                  v174 = [*(*(&v261 + 1) + 8 * n) startDate];
                  [(EKEvent *)v6 startDate];
                  v176 = v175 = v6;
                  v177 = [v174 isAfterDate:v176];

                  v6 = v175;
                  v169 = v242;
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

          [(EKObject *)v6 insertPersistentObjectIfNeeded];
          [(EKEvent *)v6 _willSave];
          [(EKEvent *)v6 _updateVideoConferenceOnlyModified];
          v178 = [(EKObject *)v6 eventStore];
          v179 = [v178 allowsIntegrationModifications];

          if ((v179 & 1) == 0 && [(EKEvent *)v6 isOrWasIntegrationEvent])
          {
            v180 = [(EKObject *)v6 eventStore];
            v181 = [(EKObject *)v6 backingObject];
            [v180 _markObjectUncommittable:v181];

            v182 = [(EKObject *)v6 persistentObject];
            if (![v182 isNew])
            {
LABEL_242:

              goto LABEL_243;
            }

            v183 = [(EKEvent *)v6 isDetached];

            if (!v183)
            {
              v184 = v134;
              v182 = [(EKEvent *)v6 committedValueForKey:*MEMORY[0x1E6992700]];
              v185 = [(EKCalendarItem *)v6 uniqueID];
              v186 = v185;
              if (v182 && v185 && ([v185 isEqualToString:v182] & 1) == 0 && !-[EKEvent isDetached](v6, "isDetached"))
              {
                v187 = [(EKObject *)v6 eventStore];
                [v187 pendingIntegrationEventChangedIdentifierFrom:v182 to:v186];
              }

              v188 = [(EKObject *)v6 eventStore];
              [v188 addPendingIntegrationEvent:v6];

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
          [(EKObject *)v6 updatePersistentObjectSkippingProperties:v196];

          if (v132)
          {
            if ([v243 count])
            {
              [(EKEvent *)v6 _propagateChangesToDetachedEvents:v243 originalItemBeforeSave:v234 startDateOffset:v233 duration:v232 calendar:v244];
            }

            if ([v246 count])
            {
              [(EKEvent *)v6 _updateRecurrenceEndDateForEvent:v6 calendar:v244 withOffset:v233];
              v255[0] = MEMORY[0x1E69E9820];
              v255[1] = 3221225472;
              v255[2] = __30__EKEvent_saveWithSpan_error___block_invoke;
              v255[3] = &unk_1E77FF078;
              v255[4] = v6;
              v256 = v234;
              v257 = v233;
              v258 = v232;
              v259 = v244;
              v260 = v246;
              [v260 enumerateObjectsUsingBlock:v255];
            }
          }

          v197 = *MEMORY[0x1E6992600];
          if ([(EKObject *)v6 _hasChangesForKey:*MEMORY[0x1E6992600]])
          {
            v198 = v6;
            v199 = [MEMORY[0x1E696AD98] numberWithBool:{-[EKEvent occurrenceIsAllDay](v6, "occurrenceIsAllDay")}];
            [(EKEvent *)v198 setOriginalOccurrenceIsAllDay:v199];

            v6 = v198;
          }

          if (v229 && ![(EKObject *)v6 isNew]&& v228)
          {
            [(EKEvent *)v6 _clearExceptionDatesAndUpdateDetachedOriginalDates:v6];
          }

          else if ([(EKObject *)v6 _hasChangesForKey:v194])
          {
            if ([(EKCalendarItem *)v6 hasRecurrenceRules])
            {
              [(EKEvent *)v6 _filterExceptionDatesAndDetachments];
            }

            else
            {
              [(EKCalendarItem *)v6 setExceptionDates:0];
              [(EKCalendarItem *)v6 setDetachedItems:0];
            }
          }

          [(EKObject *)v6 updatePersistentValueForKeyIfNeeded:v193];
          if (!v230 && [(EKCalendarItem *)v6 hasRecurrenceRules]&& v228 == 4)
          {
            [(EKEvent *)v6 _applyTimeChangesToMaster];
          }

          else
          {
            [(EKObject *)v6 updatePersistentValueForKeyIfNeeded:v238];
            [(EKObject *)v6 updatePersistentValueForKeyIfNeeded:v240];
          }

          [(EKObject *)v6 updatePersistentValueForKeyIfNeeded:v189];
          [(EKObject *)v6 updatePersistentValueForKeyIfNeeded:v191];
          [(EKEvent *)v6 _updateModifiedPropertiesForThisEventAndAllDetachments];
          v200 = [(EKCalendarItem *)v6 originalItem];
          v201 = v200;
          if (v200)
          {
            v202 = v200;
          }

          else
          {
            v202 = v6;
          }

          v203 = v202;

          [(EKObject *)v203 updatePersistentValueForKeyIfNeeded:v195];
          v204 = v6;
          if ([(EKObject *)v6 _hasChangesForKey:v197]|| [(EKObject *)v6 _hasChangesForKey:v194])
          {
            if ([(EKEvent *)v6 isAllDay])
            {
              v205 = [(EKCalendarItem *)v6 recurrenceRules];
              v206 = [v205 lastObject];
              v207 = [v206 endDate];

              if (v207)
              {
                [(EKEvent *)v204 _updateRecurrenceEndDatesWithAdjustmentMode:0];
              }
            }
          }

          [(EKObject *)v203 updatePersistentValueForKeyIfNeeded:v194];
          [(EKObject *)v204 updatePersistentValueForKeyIfNeeded:v192];
          [(EKEvent *)v204 setPredictedLocationFrozen:0];
          v208 = [(EKEvent *)v204 occurrenceStartDate];
          [(EKEvent *)v204 setOriginalOccurrenceStartDate:v208];

          v209 = [(EKEvent *)v204 occurrenceEndDate];
          [(EKEvent *)v204 setOriginalOccurrenceEndDate:v209];

          [(EKEvent *)v204 _invalidateRecurrenceIdentifier];
          v68 = v237;
          v210 = v204;
          v60 = v234;
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
            v217 = [v237 joinMethods];
            v218 = [v217 countByEnumeratingWithState:&v247 objects:v282 count:16];
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
                    objc_enumerationMutation(v217);
                  }

                  v222 = [*(*(&v247 + 1) + 8 * jj) URL];
                  [(EKEvent *)v210 invalidateVirtualConferenceURLIfNeededOnCommit:v222];
                }

                v219 = [v217 countByEnumeratingWithState:&v247 objects:v282 count:16];
              }

              while (v219);
            }
          }

          if (v231)
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

    v231 = 0;
    goto LABEL_50;
  }

  if (a3 && a3 != 3)
  {
    if (!a4)
    {
      goto LABEL_34;
    }

    v10 = MEMORY[0x1E696ABC0];
    v11 = @"Cannot undetach an event with the given span";
    goto LABEL_32;
  }

  v13 = *MEMORY[0x1E69E9840];

  return [(EKEvent *)v6 _saveUndetachedOccurrenceWithError:a4];
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
  v3 = [(EKCalendarItem *)self syncError];
  v4 = v3;
  if (v3 && ([v3 isNew] & 1) == 0)
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6992E70]];
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

- (id)_eventKitPropertyKeyForCalendarItemErrorPropertyKey:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E6992E78];
  v10[0] = *MEMORY[0x1E6992560];
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_saveUndeletedDetachedOccurrence
{
  [(EKObject *)self _initChangeSetIfNone];
  v12 = [(EKCalendarItem *)self originalItem];
  v3 = [(EKEvent *)self originalStartDate];
  [v12 _removeExceptionDate:v3];

  [v12 updatePersistentValueForKeyIfNeeded:*MEMORY[0x1E69925A0]];
  v4 = [(EKObject *)self frozenObject];
  v5 = *MEMORY[0x1E6992598];
  [v12 addMultiChangedObjectValue:v4 forKey:*MEMORY[0x1E6992598]];

  [v12 emptyMeltedCacheForKey:v5];
  v6 = [(EKObject *)self changeSet];
  v7 = [v12 frozenObject];
  v8 = *MEMORY[0x1E6992630];
  [v6 forceChangeValue:v7 forKey:*MEMORY[0x1E6992630]];

  v9 = [(EKObject *)self changeSet];
  v10 = [(EKEvent *)self _generateNewUniqueID];
  v11 = *MEMORY[0x1E6992700];
  [v9 forceChangeValue:v10 forKey:*MEMORY[0x1E6992700]];

  [(EKObject *)self updatePersistentValueForKeyIfNeeded:v11];
  [(EKObject *)self updatePersistentValueForKeyIfNeeded:v8];
  [(EKObject *)self addCoCommitObject:v12];
  [(EKObject *)self insertPersistentObjectIfNeeded];
}

- (BOOL)_saveUndetachedOccurrenceWithError:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [(EKEvent *)self masterEvent];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 detachedItems];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      v11 = [v10 originalStartDate];
      v12 = [(EKEvent *)self startDate];
      v13 = [v11 isEqualToDate:v12];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
    if (a3)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:5 description:@"Cannot undetach an event that is not detached"];
      *a3 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)_extendConferenceURLExpirationDateToDate:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKEvent *)self virtualConference];
  v6 = v5;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v5 joinMethods];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * v11) URL];
          [EKConferenceUtils renewConferenceURL:v12 toDate:v4];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v4 = [(EKCalendarItem *)self notes];
  v5 = [MEMORY[0x1E6992F38] deserializeConference:v18];
  v6 = [MEMORY[0x1E6992F38] deserializeConference:v4];
  v7 = [v5 conference];
  v8 = [v6 conference];
  if (v7 == 0) != (v8 != 0) && (!v7 || ([v7 isEqual:v8]))
  {
    goto LABEL_14;
  }

  v9 = [v5 range];
  v11 = [v18 stringByReplacingCharactersInRange:v9 withString:{v10, &stru_1F1B49D68}];
  if ([v11 hasSuffix:@"\n\n"])
  {
    v12 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 2}];

    v11 = v12;
  }

  v13 = [v6 range];
  v15 = [v4 stringByReplacingCharactersInRange:v13 withString:{v14, &stru_1F1B49D68}];
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
  v6 = [a1 modifiedProperties];
  v7 = [a1 modifiedProperties];
  if (v7 == a2)
  {
    v8 = @"Modified properties changed: NO";
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Modified properties changed: YES. Old modified properties: %u", a2];
  }

  v9 = [a1 clearModifiedFlags];
  v10 = [a1 privacyDescription];
  *buf = 67109890;
  v13 = v6;
  v14 = 2114;
  v15 = v8;
  v16 = 2048;
  v17 = v9;
  v18 = 2114;
  v19 = v10;
  _os_log_debug_impl(&dword_1A805E000, a3, OS_LOG_TYPE_DEBUG, "Updated modified properties: %u. %{public}@. Clear modified flags: %lu. Event: %{public}@", buf, 0x26u);

  if (v7 != a2)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)applyChangesFromEvent:(id)a3 toEvent:(id)a4 ignoringDifferencesFrom:(id)a5
{
  v19[5] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = MEMORY[0x1E695DFA8];
  v10 = a5;
  v11 = a3;
  v12 = +[EKEvent knownKeysToSkipForFutureChanges];
  v13 = [v9 setWithArray:v12];

  v14 = [(EKEvent *)self constraints];
  LODWORD(v12) = [v14 requiresSeparateFilesForAllAttachments];

  if (v12)
  {
    [v13 addObject:*MEMORY[0x1E6992560]];
  }

  if (([v8 isSelfOrganized] & 1) == 0 && objc_msgSend(v8, "isSignificantlyDetachedIgnoringParticipation"))
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
  [EKObject addChangesFromObject:v11 toObject:v8 exceptWhereObjectIsDifferentFrom:v10 skippingChanges:v13];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_updateRecurrenceEndDateForEvent:(id)a3 calendar:(id)a4 withOffset:(id)a5
{
  v27 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v27 singleRecurrenceRule];
  v10 = v9;
  if (v9)
  {
    if ([v9 interval] >= 1)
    {
      v11 = [v10 recurrenceEnd];
      v12 = [v11 endDate];

      if (v12)
      {
        v13 = [v10 recurrenceEnd];
        v14 = [v13 endDate];
        v26 = [v7 dateByAddingComponents:v8 toDate:v14 options:0];

        v25 = [EKRecurrenceRule alloc];
        v24 = [v10 frequency];
        v23 = [v10 interval];
        v22 = [v10 daysOfTheWeek];
        v15 = [v10 daysOfTheMonth];
        v16 = [v10 monthsOfTheYear];
        v17 = [v10 weeksOfTheYear];
        v18 = [v10 daysOfTheYear];
        v19 = [v10 setPositions];
        v20 = [EKRecurrenceEnd recurrenceEndWithEndDate:v26];
        v21 = [(EKRecurrenceRule *)v25 initRecurrenceWithFrequency:v24 interval:v23 daysOfTheWeek:v22 daysOfTheMonth:v15 monthsOfTheYear:v16 weeksOfTheYear:v17 daysOfTheYear:v18 setPositions:v19 end:v20];

        [v27 removeRecurrenceRule:v10];
        [v27 addRecurrenceRule:v21];
      }
    }
  }
}

- (void)_propagateChangesToSlice:(id)a3 originalItemBeforeSave:(id)a4 startDateOffset:(id)a5 duration:(id)a6 calendar:(id)a7 updateRecurrenceEnd:(BOOL)a8
{
  v8 = a8;
  v59 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  [(EKEvent *)self applyChangesFromEvent:self toEvent:v14 ignoringDifferencesFrom:v15];
  v19 = [v15 startCalendarDate];
  v20 = [v19 dayTimeComponents];

  v21 = [v14 startCalendarDate];
  v22 = [v21 dayTimeComponents];

  if (v8)
  {
    [v14 _updateRecurrenceEndDateForEvent:v14 calendar:v18 withOffset:v16];
  }

  v23 = [v20 hour];
  if (v23 != [v22 hour] || (v24 = objc_msgSend(v20, "minute"), v24 != objc_msgSend(v22, "minute")) || (v25 = objc_msgSend(v20, "second"), v25 != objc_msgSend(v22, "second")))
  {
    [v16 setHour:0];
    [v16 setMinute:0];
    [v16 setSecond:0];
  }

  v48 = v20;
  [v14 duration];
  v27 = v26;
  v28 = [v14 startDate];
  v29 = [v18 dateByAddingComponents:v16 toDate:v28 options:0];
  [v14 setStartDate:v29];

  [v15 duration];
  v47 = v22;
  if (v30 == v27)
  {
    v31 = [v14 occurrenceStartDate];
    v32 = [v31 calendarDateByComponentwiseAddingComponents:v17];
    v33 = [v32 date];
  }

  else
  {
    v31 = [v14 startDate];
    v33 = [v31 dateByAddingTimeInterval:v27];
  }

  v46 = v33;
  [v14 _updateEndDateForDate:v33 withAdjustmentMode:0];
  [v14 _updateModifiedProperties];
  [v14 updatePersistentObjectSkippingProperties:0];
  [(EKObject *)self addCoCommitObject:v14];
  v34 = [v14 detachedItems];
  v51 = v15;
  v49 = v18;
  v50 = v17;
  [(EKEvent *)self _propagateChangesToDetachedEvents:v34 originalItemBeforeSave:v15 startDateOffset:v16 duration:v17 calendar:v18];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = v14;
  v35 = [v14 detachedItems];
  v36 = [v35 countByEnumeratingWithState:&v53 objects:v58 count:16];
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
          objc_enumerationMutation(v35);
        }

        v41 = *(*(&v53 + 1) + 8 * i);
        [v41 _updateModifiedProperties];
        v42 = MEMORY[0x1E695DFD8];
        v57 = v39;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
        v44 = [v42 setWithArray:v43];
        [v41 updatePersistentObjectSkippingProperties:v44];
      }

      v37 = [v35 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v37);
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)_propagateChangesToDetachedEvents:(id)a3 originalItemBeforeSave:(id)a4 startDateOffset:(id)a5 duration:(id)a6 calendar:(id)a7
{
  v103 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v82 = a4;
  v76 = a5;
  v75 = a6;
  v13 = a7;
  v14 = [(EKEvent *)self constraints];
  v74 = [v14 requiresSeparateFilesForAllAttachments];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v15 = v12;
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
          [(EKEvent *)self applyChangesFromEvent:self toEvent:v20 ignoringDifferencesFrom:v82];
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
  v22 = v76;
  if (v21)
  {
    v23 = v21;
    v24 = *v92;
    v78 = *v92;
    v79 = self;
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
        v27 = [v26 originalStartDate];
        if (v27)
        {
          v28 = [v13 dateByAddingComponents:v22 toDate:v27 options:0];
          [v26 setOriginalStartDate:v28];

          if ([v26 isEqual:self])
          {
            goto LABEL_35;
          }

          v29 = MEMORY[0x1E69930C8];
          v30 = v27;
        }

        else
        {
          if ([v26 isEqual:self])
          {
            goto LABEL_35;
          }

          v29 = MEMORY[0x1E69930C8];
          v30 = [v26 startDate];
          v77 = v30;
        }

        v31 = [v13 timeZone];
        v32 = [v29 calendarDateWithDate:v30 timeZone:v31];

        if (!v27)
        {
        }

        v33 = MEMORY[0x1E69930C8];
        v34 = [v26 startDate];
        v35 = v13;
        v36 = [v13 timeZone];
        v37 = [v33 calendarDateWithDate:v34 timeZone:v36];

        v38 = objc_opt_new();
        v39 = [v32 hour];
        if (v39 == [v37 hour])
        {
          v40 = [v32 minute];
          if (v40 == [v37 minute])
          {
            v41 = [v32 second];
            if (v41 == [v37 second])
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
          v43 = [v32 year];
          if (v43 == [v37 year])
          {
            v44 = [v32 month];
            if (v44 == [v37 month])
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
        v48 = [v26 startDate];
        v49 = [v35 dateByAddingComponents:v38 toDate:v48 options:0];
        [v26 setStartDate:v49];

        [v82 duration];
        if (v50 == v47)
        {
          v51 = [v26 occurrenceStartDate];
          v52 = [v51 calendarDateByComponentwiseAddingComponents:v75];
          v53 = [v52 date];

          v22 = v76;
        }

        else
        {
          v51 = [v26 startDate];
          v53 = [v51 dateByAddingTimeInterval:v47];
        }

        [v26 _updateEndDateForDate:v53 withAdjustmentMode:0];
        v13 = v35;
        v24 = v78;
        self = v79;
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

  if (v74)
  {
    [v56 removeObject:*MEMORY[0x1E6992560]];
    [(EKEvent *)self _duplicateAddedAttachmentsToDetachedEvents:obj];
  }

  v57 = [(EKCalendarItem *)self selfAttendee];
  v58 = [(EKObject *)self changeSet];
  v59 = [v58 hasUnsavedChangeForKey:*MEMORY[0x1E6992650]];

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

          [*(*(&v87 + 1) + 8 * j) _updateSelfAttendeeToMatchSelfAttendee:v57];
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

    v70 = [(EKEvent *)self originalStartDate];

    if (v70)
    {
      v71 = [(EKEvent *)self originalStartDate];
      v72 = [v13 dateByAddingComponents:v76 toDate:v71 options:0];
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

- (void)_updateSelfAttendeeToMatchSelfAttendee:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(EKCalendarItem *)self attendeesRaw];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 isEqualToParticipant:v4])
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)_multiValueRelatedObject:(id)a3 isAlsoASingleValueRelatedObjectForKey:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:*MEMORY[0x1E6992568]])
  {
    v7 = v6;
    v8 = [(EKCalendarItem *)self selfAttendee];
    v9 = [v7 isEqualToParticipant:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_duplicateAddedAttachmentsToDetachedEvents:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKObject *)self changeSet];
  v6 = *MEMORY[0x1E6992560];
  v7 = [v5 hasUnsavedMultiValueAdditionForKey:*MEMORY[0x1E6992560]];

  if (v7)
  {
    v39 = self;
    v8 = [(EKObject *)self changeSet];
    v9 = [v8 multiValueAdditions];
    v10 = [v9 objectForKeyedSubscript:v6];

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
          v18 = [v17 uniqueIdentifier];
          if (v18)
          {
            [v11 addObject:v18];
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

    v40 = v4;

    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v21 = [(EKCalendarItem *)v39 attachments];
    v22 = [v21 countByEnumeratingWithState:&v47 objects:v56 count:16];
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
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v47 + 1) + 8 * j);
          v27 = [v26 uniqueIdentifier];
          v28 = [v11 containsObject:v27];

          if (v28)
          {
            [v20 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v47 objects:v56 count:16];
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

    v4 = v40;
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
      v5 = [(EKCalendarItem *)self organizer];
      if ([v5 isNew])
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      if (v3)
      {
LABEL_11:
        v8 = [(EKCalendarItem *)self attendeesRaw];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v46 objects:v51 count:16];
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
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v46 + 1) + 8 * i);
              if ([v13 isNew])
              {
                if (!v7)
                {
                  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
                }

                [v7 addObject:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v46 objects:v51 count:16];
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
        v16 = [(EKCalendarItem *)self originalItem];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = self;
        }

        v19 = v18;

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
          v23 = [v6 generateSemanticIdentifier];
          v24 = [v20 objectForKeyedSubscript:v23];
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
              v32 = [v31 generateSemanticIdentifier];
              v33 = [v21 objectForKeyedSubscript:v32];
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
  v2 = self;
  v3 = [(EKCalendarItem *)self originalItem];
  LOBYTE(v2) = [(EKEvent *)v2 _isSignificantlyDetachedComparedToMaster:v3 shouldIgnorePartStat:0];

  return v2;
}

- (BOOL)isSignificantlyDetachedIgnoringParticipation
{
  v2 = self;
  v3 = [(EKCalendarItem *)self originalItem];
  LOBYTE(v2) = [(EKEvent *)v2 _isSignificantlyDetachedComparedToMaster:v3 shouldIgnorePartStat:1];

  return v2;
}

- (BOOL)_isSignificantlyDetachedComparedToMaster:(id)a3 shouldIgnorePartStat:(BOOL)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v13 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      v15 = [(EKEvent *)self privacyDescription];
      v52 = 138543362;
      v53 = v15;
      _os_log_impl(&dword_1A805E000, v14, OS_LOG_TYPE_INFO, "Event %{public}@ is not significantly detached because it is not detached", &v52, 0xCu);
    }

    goto LABEL_7;
  }

  if ([v6 isPhantom])
  {
    v8 = EKLogHandle;
    v9 = 1;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      v10 = v8;
      v11 = [(EKEvent *)self privacyDescription];
      v52 = 138543362;
      v53 = v11;
      v12 = "Event %{public}@ is significantly detached because its master is a phantom";
LABEL_31:
      _os_log_impl(&dword_1A805E000, v10, OS_LOG_TYPE_INFO, v12, &v52, 0xCu);

      goto LABEL_35;
    }

    goto LABEL_35;
  }

  v16 = [(EKEvent *)self startDate];
  v17 = [(EKEvent *)self originalStartDate];
  v18 = [v16 isEqualToDate:v17];

  if (v18)
  {
    v19 = [(EKEvent *)self occurrenceStartDate];
    v20 = [(EKEvent *)self occurrenceEndDate];
    v21 = [v7 occurrenceStartDate];
    v22 = [v7 occurrenceEndDate];
    v23 = -[EKEvent _calculateDurationWithStart:end:allDay:](self, "_calculateDurationWithStart:end:allDay:", v21, v22, [v7 occurrenceIsAllDay]);
    v24 = [v19 calendarDateByComponentwiseAddingComponents:v23];
    if (([v24 isEqual:v20] & 1) == 0)
    {
      v42 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
      {
        v43 = v42;
        v44 = [(EKEvent *)self privacyDescription];
        v52 = 138543362;
        v53 = v44;
        _os_log_impl(&dword_1A805E000, v43, OS_LOG_TYPE_INFO, "Event %{public}@ is significantly detached because its end date differs", &v52, 0xCu);
      }

      v9 = 1;
      goto LABEL_35;
    }

    v25 = [(EKEvent *)self locationWithoutPrediction];
    if (v25 || ([v7 locationWithoutPrediction], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = [(EKEvent *)self locationWithoutPrediction];
      v27 = [v7 locationWithoutPrediction];
      v28 = [v26 isEqualToString:v27];

      if (v25)
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
      v11 = [(EKEvent *)self privacyDescription];
      v52 = 138543362;
      v53 = v11;
      v12 = "Event %{public}@ is significantly detached because its location differs";
      goto LABEL_31;
    }

LABEL_14:
    v29 = [(EKEvent *)self title];
    if (v29 || ([v7 title], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = [(EKEvent *)self title];
      v31 = [v7 title];
      v32 = [v30 isEqualToString:v31];

      if (v29)
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
        v11 = [(EKEvent *)self privacyDescription];
        v52 = 138543362;
        v53 = v11;
        v12 = "Event %{public}@ is significantly detached because its title differs";
        goto LABEL_31;
      }

      if ((v32 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_18:
    v33 = [(EKEvent *)self status];
    if (v33 != [v7 status])
    {
      v49 = EKLogHandle;
      v9 = 1;
      if (!os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v10 = v49;
      v11 = [(EKEvent *)self privacyDescription];
      v52 = 138543362;
      v53 = v11;
      v12 = "Event %{public}@ is significantly detached because its status differs";
      goto LABEL_31;
    }

    if (!a4)
    {
      if ([(EKCalendarItem *)self isExternallyOrganizedInvitation])
      {
        v33 = [(EKEvent *)self participationStatus];
        v34 = [v7 participationStatus];
        if (v33 != v34)
        {
          v35 = v34;
          v33 = [EKParticipant needsResponseForParticipantStatus:v33];
          v36 = [EKParticipant needsResponseForParticipantStatus:v35];
          if (!v33 || !v36)
          {
            v51 = EKLogHandle;
            v9 = 1;
            if (!os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
            {
              goto LABEL_35;
            }

            v10 = v51;
            v11 = [(EKEvent *)self privacyDescription];
            v52 = 138543362;
            v53 = v11;
            v12 = "Event %{public}@ is significantly detached because it is externally organized and its participation status differs";
            goto LABEL_31;
          }
        }
      }
    }

    v37 = [(EKCalendarItem *)self organizer];
    if (v37 || ([v7 organizer], (v33 = objc_claimAutoreleasedReturnValue()) != EKEventStatusNone))
    {
      v38 = [(EKCalendarItem *)self organizer];
      v39 = [v7 organizer];
      v40 = [v38 isEqualToParticipant:v39];

      if (v37)
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
          v11 = [(EKEvent *)self privacyDescription];
          v52 = 138543362;
          v53 = v11;
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
    v11 = [(EKEvent *)self privacyDescription];
    v52 = 138543362;
    v53 = v11;
    v12 = "Event %{public}@ is significantly detached because its start date differs";
    goto LABEL_31;
  }

LABEL_35:

  v45 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)_updateMasterDate:(id)a3 forChangeToOccurrenceDate:(id)a4 fromOriginalOccurrenceDate:(id)a5
{
  v6 = a3;
  v7 = [(EKEvent *)self originalOccurrenceStartDate];
  v8 = [(EKEvent *)self occurrenceStartDate];
  v9 = [v8 differenceAsDateComponents:v7 units:254];
  v10 = [v6 calendarDateByComponentwiseAddingComponents:v9];

  v11 = [v10 date];

  return v11;
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
    v9 = [(EKObject *)self persistentObject];
    v18 = [(EKEvent *)v8 initWithPersistentObject:v9];

    if (v4)
    {
      v10 = [(EKEvent *)v18 occurrenceStartDate];
      v11 = [(EKEvent *)self occurrenceStartDate];
      v12 = [(EKEvent *)self originalOccurrenceStartDate];
      v13 = [(EKEvent *)self _updateMasterDate:v10 forChangeToOccurrenceDate:v11 fromOriginalOccurrenceDate:v12];
      [(EKEvent *)v18 setStartDateRaw:v13];

      [(EKObject *)v18 updatePersistentValueForKeyIfNeeded:v3];
    }

    if (v7)
    {
      v14 = [(EKEvent *)v18 occurrenceEndDate];
      v15 = [(EKEvent *)self occurrenceEndDate];
      v16 = [(EKEvent *)self originalOccurrenceEndDate];
      v17 = [(EKEvent *)self _updateMasterDate:v14 forChangeToOccurrenceDate:v15 fromOriginalOccurrenceDate:v16];
      [(EKEvent *)v18 setEndDateRaw:v17];

      [(EKObject *)v18 updatePersistentValueForKeyIfNeeded:v5];
    }
  }
}

- (void)_clearExceptionDatesAndUpdateDetachedOriginalDates:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(EKEvent *)self isDetached])
  {
    v5 = [(EKCalendarItem *)self originalItem];
    [v5 _clearExceptionDatesAndUpdateDetachedOriginalDates:v4];
  }

  else
  {
    [(EKCalendarItem *)self setExceptionDates:0];
    if (![(EKEvent *)self isAllDay])
    {
      v6 = [(EKCalendarItem *)self detachedItems];
      if ([v6 count])
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
        v8 = [(EKEvent *)self startDateRaw];
        [v8 timeIntervalSinceReferenceDate];
        MEMORY[0x1AC568C80](v7);

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v24 = v6;
        obj = v6;
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
              if ([v13 isEqual:v4])
              {
                v14 = v4;
              }

              else
              {
                v14 = v13;
              }

              v15 = v14;
              v16 = [v15 originalStartDate];
              [v16 timeIntervalSinceReferenceDate];
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

        v6 = v24;
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [(EKCalendarItem *)self recurrenceRules];
    v19 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v26 + 1) + 8 * j) invalidateCachedEndDate];
        }

        v20 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
    v3 = [(EKEvent *)self singleRecurrenceRule];
    v4 = MEMORY[0x1E695DEE8];
    v5 = [(EKCalendarItem *)self timeZone];
    v6 = [v4 CalGregorianCalendarForTimeZone:v5];

    [v6 setFirstWeekday:1];
    v7 = [(EKEvent *)self originalOccurrenceStartDate];
    v8 = [v7 date];
    v9 = [v6 components:5656 fromDate:v8];

    v10 = [(EKEvent *)self startDate];
    v11 = [v6 components:5656 fromDate:v10];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__EKEvent__attemptToUpdateComplexRecurrenceRule__block_invoke;
    aBlock[3] = &unk_1E77FF110;
    v12 = v3;
    v168 = v12;
    v13 = v11;
    v169 = v13;
    v14 = v9;
    v170 = v14;
    v171 = self;
    v15 = v6;
    v172 = v15;
    v16 = _Block_copy(aBlock);
    v17 = [v12 setPositions];
    if ([(EKRecurrenceRule *)v17 count]> 1)
    {
      goto LABEL_12;
    }

    v18 = [v12 weeksOfTheYear];
    if ([(EKRecurrenceDayOfWeek *)v18 count])
    {
LABEL_4:
      v19 = 0;
LABEL_5:

LABEL_13:
      goto LABEL_14;
    }

    v20 = [v12 daysOfTheYear];
    v21 = [v20 count];

    if (v21)
    {
LABEL_8:
      v19 = 0;
LABEL_14:

      goto LABEL_15;
    }

    if ([v12 frequency] == 1)
    {
      v17 = [v12 daysOfTheWeek];
      v18 = [v12 daysOfTheMonth];
      if ([(EKRecurrenceDayOfWeek *)v18 count])
      {
        goto LABEL_4;
      }

      v22 = [v12 monthsOfTheYear];
      v23 = [v22 count];

      if (!v23)
      {
        if ([(EKRecurrenceRule *)v17 count]== 1)
        {
          v38 = [(EKRecurrenceRule *)v17 objectAtIndexedSubscript:0];
          v39 = [v38 dayOfTheWeek];
          v40 = [v13 weekday];

          if (v39 == v40)
          {
            v147 = [EKRecurrenceRule alloc];
            v41 = [v12 frequency];
            v42 = [v12 interval];
            v43 = [v12 recurrenceEnd];
            v18 = [(EKRecurrenceRule *)v147 initRecurrenceWithFrequency:v41 interval:v42 daysOfTheWeek:0 daysOfTheMonth:0 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:v43];

            [(EKEvent *)self setRecurrenceRule:v18];
            v19 = 1;
            goto LABEL_5;
          }
        }

        else if ([(EKRecurrenceRule *)v17 count]>= 2)
        {
          v18 = -[EKRecurrenceDayOfWeek initWithDayOfTheWeek:weekNumber:]([EKRecurrenceDayOfWeek alloc], "initWithDayOfTheWeek:weekNumber:", [v13 weekday], 0);
          v45 = objc_alloc(MEMORY[0x1E695DF70]);
          v182[0] = v18;
          v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:1];
          obj = [v45 initWithArray:v46];

          v165 = 0u;
          v166 = 0u;
          v163 = 0u;
          v164 = 0u;
          v17 = v17;
          v137 = [(EKRecurrenceRule *)v17 countByEnumeratingWithState:&v163 objects:v181 count:16];
          if (v137)
          {
            v130 = *v164;
            while (2)
            {
              for (i = 0; i != v137; ++i)
              {
                if (*v164 != v130)
                {
                  objc_enumerationMutation(v17);
                }

                v48 = *(*(&v163 + 1) + 8 * i);
                if ([v48 weekNumber] || (v148 = objc_msgSend(v48, "dayOfTheWeek"), v148 == objc_msgSend(v13, "weekday")))
                {
                  v19 = 0;
                  v51 = v17;
                  goto LABEL_87;
                }

                v149 = [v48 dayOfTheWeek];
                if (v149 != [v14 weekday])
                {
                  [obj addObject:v48];
                }
              }

              v137 = [(EKRecurrenceRule *)v17 countByEnumeratingWithState:&v163 objects:v181 count:16];
              if (v137)
              {
                continue;
              }

              break;
            }
          }

          [obj sortUsingComparator:&__block_literal_global_268];
          v150 = [EKRecurrenceRule alloc];
          v138 = [v12 frequency];
          v49 = [v12 interval];
          v50 = [v12 recurrenceEnd];
          v51 = [(EKRecurrenceRule *)v150 initRecurrenceWithFrequency:v138 interval:v49 daysOfTheWeek:obj daysOfTheMonth:0 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:v50];

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
      v17 = [v12 daysOfTheWeek];
      v18 = [v12 daysOfTheMonth];
      v26 = [v12 setPositions];
      if ([v26 count] == 1 && !-[EKRecurrenceRule count](v17, "count") || -[EKRecurrenceDayOfWeek count](v18, "count") && objc_msgSend(v26, "count"))
      {
        goto LABEL_100;
      }

      v146 = v26;
      v27 = [v12 monthsOfTheYear];
      v28 = [v27 count];

      if (!v28)
      {
        if ([(EKRecurrenceDayOfWeek *)v18 count]== 1)
        {
          v29 = [(EKRecurrenceDayOfWeek *)v18 objectAtIndexedSubscript:0];
          v135 = [v29 integerValue];
          v30 = [v13 day];

          if (v135 == v30)
          {
LABEL_24:
            v136 = [EKRecurrenceRule alloc];
            v128 = [v12 frequency];
            v31 = [v12 interval];
            v32 = [v12 recurrenceEnd];
            v33 = [(EKRecurrenceRule *)v136 initRecurrenceWithFrequency:v128 interval:v31 daysOfTheWeek:0 daysOfTheMonth:0 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:v32];

            v34 = self;
            v35 = v33;
            [(EKEvent *)v34 setRecurrenceRule:v33];
            v19 = 1;
LABEL_93:
            v26 = v146;

            goto LABEL_101;
          }

          v19 = 1;
LABEL_30:
          v26 = v146;
LABEL_101:

          goto LABEL_5;
        }

        if ([(EKRecurrenceDayOfWeek *)v18 count]>= 2)
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
          v114 = v18;
          obja = v18;
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
                v57 = [v56 integerValue];
                if (v57 == [v13 day])
                {
                  v19 = 0;
                  goto LABEL_92;
                }

                v58 = [v56 integerValue];
                if (v58 != [v14 day])
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
          v132 = [v12 frequency];
          v59 = [v12 interval];
          v60 = [v12 recurrenceEnd];
          v61 = [(EKRecurrenceRule *)v140 initRecurrenceWithFrequency:v132 interval:v59 daysOfTheWeek:0 daysOfTheMonth:v116 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:v60];

          obja = v61;
          [(EKEvent *)self setRecurrenceRule:v61];
          v19 = 1;
LABEL_92:

          v35 = v110;
          v18 = v114;
          goto LABEL_93;
        }

        if ([(EKRecurrenceRule *)v17 count]== 1)
        {
          v133 = [EKRecurrenceRule alloc];
          objd = [v12 frequency];
          v119 = [v12 interval];
          v143 = v16[2](v16);
          v178 = v143;
          v19 = 1;
          v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v178 count:1];
          v115 = [v12 recurrenceEnd];
          v111 = [(EKRecurrenceRule *)v133 initRecurrenceWithFrequency:objd interval:v119 daysOfTheWeek:v86 daysOfTheMonth:0 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:v115];

          v87 = self;
          v35 = v111;
          [(EKEvent *)v87 setRecurrenceRule:v111];
          goto LABEL_93;
        }

        v26 = v146;
        if (-[EKRecurrenceRule count](v17, "count") == 7 && [v146 count] == 1)
        {
          v88 = [v146 objectAtIndexedSubscript:0];
          v89 = [v88 integerValue];

          if (v89 > 0)
          {
            goto LABEL_24;
          }

          v90 = [v146 objectAtIndexedSubscript:0];
          v91 = [v90 integerValue];

          if (v91 < 0)
          {
            v92 = [(EKEvent *)self startDate];
            v93 = [v15 daysInMonthContainingDate:v92];

            v94 = v93 - [v13 day];
            if (v94 <= 1)
            {
              v134 = [EKRecurrenceRule alloc];
              obje = [v12 frequency];
              v120 = [v12 interval];
              v144 = [MEMORY[0x1E696AD98] numberWithInteger:~v94];
              v177 = v144;
              v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v177 count:1];
              v96 = [v12 recurrenceEnd];
              v112 = [(EKRecurrenceRule *)v134 initRecurrenceWithFrequency:obje interval:v120 daysOfTheWeek:v17 daysOfTheMonth:0 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:v95 end:v96];

              v97 = self;
              v35 = v112;
              [(EKEvent *)v97 setRecurrenceRule:v112];
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

    v17 = [v12 daysOfTheWeek];
    v18 = [v12 setPositions];
    v26 = [v12 monthsOfTheYear];
    if ([(EKRecurrenceDayOfWeek *)v18 count]== 1 && ![(EKRecurrenceRule *)v17 count])
    {
      goto LABEL_100;
    }

    v146 = v26;
    v36 = [v12 daysOfTheMonth];
    v37 = [v36 count];

    if (v37 || [(EKRecurrenceDayOfWeek *)v18 count]&& [(EKRecurrenceRule *)v17 count]!= 1 && [(EKRecurrenceRule *)v17 count]!= 7)
    {
      goto LABEL_29;
    }

    v44 = [v13 month];
    v113 = v18;
    if (v44 == [v14 month])
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
            v67 = [v66 integerValue];
            if (v67 == [v13 month])
            {
              v84 = objb;

              v19 = 0;
              v85 = v117;
              goto LABEL_109;
            }

            v68 = [v66 integerValue];
            if (v68 != [v14 month])
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
      v18 = v113;
    }

    if ([(EKRecurrenceRule *)v17 count]== 7 && [(EKRecurrenceDayOfWeek *)v18 count]== 1)
    {
      v69 = [(EKRecurrenceDayOfWeek *)v18 objectAtIndexedSubscript:0];
      v70 = [v69 integerValue];

      if (v70 > 0)
      {
LABEL_79:
        v71 = [EKRecurrenceRule alloc];
        v152 = [v12 frequency];
        v72 = [v12 interval];
        v73 = [v12 recurrenceEnd];
        v108 = v73;
        v74 = v71;
        v75 = v152;
        v76 = v72;
        v77 = 0;
LABEL_108:
        v84 = v129;
        v85 = [(EKRecurrenceRule *)v74 initRecurrenceWithFrequency:v75 interval:v76 daysOfTheWeek:v77 daysOfTheMonth:0 monthsOfTheYear:v129 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:v108];

        [(EKEvent *)self setRecurrenceRule:v85];
        v19 = 1;
        goto LABEL_109;
      }

      v18 = v113;
      v99 = [(EKRecurrenceDayOfWeek *)v113 objectAtIndexedSubscript:0];
      v100 = [v99 integerValue];

      if (v100 < 0)
      {
        v101 = [(EKEvent *)self startDate];
        v102 = [v15 daysInMonthContainingDate:v101];

        v103 = v102 - [v13 day];
        if (v103 > 1)
        {
          goto LABEL_79;
        }

        v104 = [EKRecurrenceRule alloc];
        v145 = [v12 frequency];
        objf = [v12 interval];
        v153 = [MEMORY[0x1E696AD98] numberWithInteger:~v103];
        v174 = v153;
        v118 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v174 count:1];
        v79 = [v12 recurrenceEnd];
        v107 = v118;
        v109 = v79;
        v80 = v104;
        v81 = v145;
        v82 = objf;
        v83 = v17;
LABEL_82:
        v84 = v129;
        v85 = [(EKRecurrenceRule *)v80 initRecurrenceWithFrequency:v81 interval:v82 daysOfTheWeek:v83 daysOfTheMonth:0 monthsOfTheYear:v129 weeksOfTheYear:0 daysOfTheYear:0 setPositions:v107 end:v109];

        [(EKEvent *)self setRecurrenceRule:v85];
        v19 = 1;
LABEL_109:

        v26 = v84;
        v18 = v113;
        goto LABEL_101;
      }
    }

    else
    {
      if ([(EKRecurrenceRule *)v17 count]== 1)
      {
        objc = [EKRecurrenceRule alloc];
        v78 = [v12 frequency];
        v142 = [v12 interval];
        v153 = v16[2](v16);
        v173 = v153;
        v118 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v173 count:1];
        v79 = [v12 recurrenceEnd];
        v107 = 0;
        v109 = v79;
        v80 = objc;
        v81 = v78;
        v82 = v142;
        v83 = v118;
        goto LABEL_82;
      }

      if (![(EKRecurrenceRule *)v17 count])
      {
        v98 = [v13 month];
        if (v98 == [v14 month])
        {
          v19 = 1;
          v26 = v129;
          goto LABEL_101;
        }

        v105 = [EKRecurrenceRule alloc];
        v154 = [v12 frequency];
        v106 = [v12 interval];
        v73 = [v12 recurrenceEnd];
        v108 = v73;
        v74 = v105;
        v75 = v154;
        v76 = v106;
        v77 = v17;
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
  v3 = [(EKObject *)self changeSet];
  v4 = [v3 hasUnsavedMultiValueRemovalForKey:*MEMORY[0x1E6992648]];

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
    v6 = [(EKCalendarItem *)self recurrenceRules];
    v7 = [v6 countByEnumeratingWithState:&v79 objects:v86 count:16];
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
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v79 + 1) + 8 * i) dirtyStateMayAffectExceptionDates])
          {
            v5 = 1;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v79 objects:v86 count:16];
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

  v11 = [(EKCalendarItem *)self exceptionDates];
  v12 = [(EKCalendarItem *)self detachedItems];
  v13 = v12;
  if (!v11)
  {
    v14 = 0;
    if (v12)
    {
      goto LABEL_16;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v14 = [v11 count] != 0;
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_16:
  v15 = [v13 count] != 0;
LABEL_19:
  if ((v5 & v14 & 1) != 0 || v15)
  {
    v16 = [(EKEvent *)self startDateRaw];
    if (v5)
    {
      v64 = [v11 allObjects];
      v17 = [(EKCalendarItem *)self exceptionDatesAdjustedForFloatingEvents];
      v18 = [v17 allObjects];
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
      v64 = MEMORY[0x1E695E0F0];
    }

    v63 = v18;
    v19 = [v18 valueForKeyPath:@"@max.self"];
    v20 = v19;
    v65 = v16;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v16;
    }

    v66 = v21;

    v22 = MEMORY[0x1E695DF90];
    v23 = [(EKCalendarItem *)self detachedItems];
    v24 = [v22 dictionaryWithCapacity:{objc_msgSend(v23, "count")}];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v25 = [(EKCalendarItem *)self detachedItems];
    v26 = [v25 countByEnumeratingWithState:&v75 objects:v85 count:16];
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
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v75 + 1) + 8 * j);
          v31 = [v30 originalStartDate];
          [v24 setObject:v30 forKeyedSubscript:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v75 objects:v85 count:16];
      }

      while (v27);
    }

    v32 = [v24 allKeys];
    v33 = [v32 valueForKeyPath:@"@max.self"];
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

    v40 = [(EKCalendarItem *)self timeZone];
    v41 = objc_alloc_init(EKRecurrenceGenerator);
    LOBYTE(v58) = 1;
    v42 = [(EKRecurrenceGenerator *)v41 copyOccurrenceDatesWithEKEvent:self startDate:v65 endDate:v39 timeZone:v40 exceptionDates:0 limit:0 adjustDatesForAllDayEvents:v58];
    if ([v42 count])
    {
      v59 = v41;
      v60 = v40;
      v61 = v39;
      v62 = v37;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v43 = v64;
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

      v49 = [v24 allKeys];
      v50 = [(EKEvent *)self _leftoversInDates:v49 withGeneratedDates:v42];

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
      v40 = v60;
    }

    else
    {
      [(EKCalendarItem *)self setExceptionDates:0];
      [(EKCalendarItem *)self setDetachedItems:0];
    }
  }

  v57 = *MEMORY[0x1E69E9840];
}

- (id)_leftoversInDates:(id)a3 withGeneratedDates:(id)a4
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = a3;
  v7 = [v5 setWithArray:a4];
  v8 = [MEMORY[0x1E695DFA8] setWithArray:v6];

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
    v3 = [(EKCalendarItem *)self alarms];
    if ([v3 count])
    {
      v4 = [(EKEvent *)self constraints];
      v5 = [v4 supportsAlarmTriggerDates];

      if ((v5 & 1) == 0)
      {
        v6 = [(EKCalendarItem *)self alarms];
        v7 = [v6 copy];

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
                v14 = [(EKEvent *)self constraints];
                v15 = [v14 supportsAlarmTriggerIntervals];

                if (v15)
                {
                  v16 = [v13 absoluteDate];
                  v17 = [(EKEvent *)self startDate];
                  [v16 timeIntervalSinceDate:v17];
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

      v21 = [(EKEvent *)self constraints];
      v22 = [v21 supportsAlarmTriggerIntervals];

      if ((v22 & 1) == 0)
      {
        v23 = [(EKCalendarItem *)self alarms];
        v24 = [v23 copy];

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

      v31 = [(EKEvent *)self constraints];
      v32 = [v31 supportsAlarmsTriggeringAfterStartDate];

      if ((v32 & 1) == 0)
      {
        v33 = [(EKCalendarItem *)self alarms];
        v34 = [v33 copy];

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

            v41 = [v40 absoluteDate];
            v42 = [(EKEvent *)self startDate];
            v43 = [v41 compare:v42];

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

      v45 = [(EKEvent *)self constraints];
      LODWORD(v46) = [v45 maxAlarmsAllowed];

      v47 = [(EKCalendarItem *)self sortedAlarms];
      v48 = [v47 count];
      if ((v46 & 0x80000000) == 0)
      {
        v49 = v48;
        v46 = v46;
        if (v48 > v46)
        {
          do
          {
            v50 = [v47 objectAtIndexedSubscript:v46];
            [(EKCalendarItem *)self removeAlarm:v50];

            ++v46;
          }

          while (v49 != v46);
        }
      }
    }

    v51 = [(EKEvent *)self constraints];
    v52 = [v51 supportsDefaultAlarms];

    if ((v52 & 1) == 0)
    {
      v53 = [(EKCalendarItem *)self allAlarms];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v54 = [v53 countByEnumeratingWithState:&v60 objects:v76 count:16];
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
              objc_enumerationMutation(v53);
            }

            v58 = *(*(&v60 + 1) + 8 * m);
            if ([v58 isDefaultAlarm])
            {
              [(EKCalendarItem *)self removeAlarm:v58];
            }
          }

          v55 = [v53 countByEnumeratingWithState:&v60 objects:v76 count:16];
        }

        while (v55);
      }
    }
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (void)_adjustRecurrenceRulesAfterMovingOrCopyingFromCalendar:(id)a3 toCalendar:(id)a4 notes:(id)a5
{
  v41 = a4;
  v7 = a5;
  if (![(EKCalendarItem *)self hasRecurrenceRules])
  {
    goto LABEL_29;
  }

  v8 = [(EKCalendarItem *)self recurrenceRules];
  v9 = [v41 constraints];
  v10 = [v9 maxRecurrencesAllowed];

  v11 = [v8 count];
  if ((v10 & 0x80000000) == 0)
  {
    v12 = v11 - v10;
    if (v11 > v10)
    {
      do
      {
        v13 = [(EKCalendarItem *)self recurrenceRules];
        v14 = [v13 firstObject];

        [(EKCalendarItem *)self removeRecurrenceRule:v14];
        --v12;
      }

      while (v12);
    }
  }

  v15 = [v8 firstObject];
  if ([v15 frequency] != 2)
  {
LABEL_11:
    if ([v15 frequency] == 3)
    {
      v20 = [v15 monthsOfTheYear];
      if ([v20 count] <= 1)
      {
      }

      else
      {
        v21 = [v41 constraints];
        v22 = [v21 prohibitsMultipleMonthsInYearlyRecurrence];

        if (v22)
        {
          v19 = [v15 copy];
          [v19 setMonthsOfTheYear:0];
          if (!v19)
          {
            goto LABEL_24;
          }

LABEL_21:
          if (v7)
          {
            v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
            v26 = [v25 localizedStringForKey:@"repeat" value:&stru_1F1B49D68 table:0];

            v27 = [(EKEvent *)self startDate];
            v28 = [v15 humanReadableDescriptionWithStartDate:v27];
            [v7 appendFormat:@"\n%@:%@", v26, v28];
          }

          [(EKCalendarItem *)self removeRecurrenceRule:v15];
          [(EKCalendarItem *)self addRecurrenceRule:v19];

          goto LABEL_24;
        }
      }
    }

    if ([v15 frequency] != 3)
    {
      goto LABEL_24;
    }

    if ([v15 interval] < 2)
    {
      goto LABEL_24;
    }

    v23 = [v41 constraints];
    v24 = [v23 prohibitsYearlyRecurrenceInterval];

    if (!v24)
    {
      goto LABEL_24;
    }

    v19 = [v15 copy];
    [v19 setInterval:1];
    if (!v19)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v16 = [v15 daysOfTheMonth];
  if ([v16 count] <= 1)
  {

    goto LABEL_11;
  }

  v17 = [v41 constraints];
  v18 = [v17 prohibitsMultipleDaysInMonthlyRecurrence];

  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = [v15 copy];
  [v19 setDaysOfTheMonth:0];
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_24:
  v29 = [v41 constraints];
  v30 = [v29 requiresOccurrencesConformToRecurrenceRule];

  if (v30)
  {
    v31 = [(EKEvent *)self suggestedStartDateForCurrentRecurrenceRule];
    v32 = [(EKEvent *)self startDate];
    v33 = [v32 isEqualToDate:v31];

    if ((v33 & 1) == 0)
    {
      v34 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
      v35 = [(EKEvent *)self startDate];
      [v34 timeIntervalSinceDate:v35];
      v37 = v36;

      [(EKEvent *)self setStartDate:v31];
      v38 = MEMORY[0x1E695DF00];
      v39 = [(EKEvent *)self startDate];
      v40 = [v38 dateWithTimeInterval:v39 sinceDate:v37];
      [(EKEvent *)self setEndDateUnadjustedForLegacyClients:v40];
    }
  }

LABEL_29:
}

- (void)_adjustAfterMovingOrCopyingFromOldCalendar:(id)a3 toNewCalendar:(id)a4 cachedConstraintsForOldCalendar:(id)a5 savingItem:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(EKEvent *)self _adjustAttendeesAfterMovingOrCopyingFromCalendar:v13 toCalendar:v12];
  [(EKEvent *)self _adjustPrivacyAfterMovingOrCopyingFromCalendar:v13 toCalendar:v12 cachedConstraintsForOldCalendar:v11 savingItem:v10];
  [(EKEvent *)self _adjustAvailabilityAfterMovingOrCopyingFromCalendar:v13 toCalendar:v12];
  [(EKEvent *)self _adjustScheduleAgentAfterMovingOrCopyingFromCalendar:v13 toCalendar:v12 cachedConstraintsForOldCalendar:v11];
  [(EKEvent *)self _adjustAttachmentsAfterMovingOrCopyingFromCalendar:v13 toCalendar:v12 cachedConstraintsForOldCalendar:v11 savingItem:v10];

  v21 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [(EKEvent *)self _adjustURLAfterMovingOrCopyingToCalendar:v12 notes:v21];
  [(EKEvent *)self _adjustAlarmsAfterMovingOrCopyingFromCalendar:v13 toCalendar:v12];
  [(EKEvent *)self _adjustRecurrenceRulesAfterMovingOrCopyingFromCalendar:v13 toCalendar:v12 notes:v21];
  [(EKEvent *)self _adjustTimeZoneAfterMovingOrCopyingToCalendar:v12 notes:v21];
  [(EKEvent *)self _adjustExternalFieldsAfterMovingOrCopyingFromCalendar:v13 toCalendar:v12 cachedConstraintsForOldCalendar:v11];

  if ([v21 length])
  {
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"The following information couldn’t be added to Exchange:" value:&stru_1F1B49D68 table:0];

    v16 = [(EKCalendarItem *)self notes];
    v17 = [v16 length];
    v18 = MEMORY[0x1E696AEC0];
    if (v17)
    {
      v19 = [(EKCalendarItem *)self notes];
      v20 = [v18 stringWithFormat:@"%@\n\n%@%@", v19, v15, v21];
      [(EKEvent *)self setNotes:v20];
    }

    else
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v15, v21];
      [(EKEvent *)self setNotes:v19];
    }
  }

  [(EKEvent *)self _invalidateRecurrenceIdentifier];
}

- (void)_adjustExternalFieldsAfterMovingOrCopyingFromCalendar:(id)a3 toCalendar:(id)a4 cachedConstraintsForOldCalendar:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v19 constraints];
  }

  v12 = v11;
  v13 = [v11 externalDataFormat];
  v14 = [v8 constraints];
  v15 = [v14 externalDataFormat];

  if (v13 != v15)
  {
    [(EKCalendarItem *)self setExternalData:0];
    v16 = [(EKObject *)self eventStore];
    v17 = [v16 eventAccessLevel];

    if (v17 == 1)
    {
      v18 = [(EKObject *)self changeSet];
      [v18 forceChangeValue:0 forKey:*MEMORY[0x1E69925B8]];
    }
  }
}

- (void)_adjustAttendeesAfterMovingOrCopyingFromCalendar:(id)a3 toCalendar:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(EKEvent *)self _requirementsToMoveToCalendarHelperRemoveAttendeesRequiredToMoveEventFromCalendar:v6 toCalendar:v7])
  {
    [(EKCalendarItem *)self setAttendees:0];
    [(EKCalendarItem *)self setOrganizer:0];
  }

  else
  {
    v8 = [v6 source];
    v9 = [v7 source];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = [(EKCalendarItem *)self organizer];
      [(EKCalendarItem *)self setOrganizer:0];
      [(EKCalendarItem *)self setSelfAttendee:0];
      [(EKCalendarItem *)self addOrganizerAndSelfAttendeeForNewInvitation];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [(EKCalendarItem *)self attendees];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          if (([v11 isEqualToParticipant:v17] & 1) != 0 || !-[EKEvent _isValidAttendee:forCalendar:selfAttendeeIsValid:](self, "_isValidAttendee:forCalendar:selfAttendeeIsValid:", v17, v7, 1))
          {
            [(EKCalendarItem *)self removeAttendee:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_adjustPrivacyAfterMovingOrCopyingFromCalendar:(id)a3 toCalendar:(id)a4 cachedConstraintsForOldCalendar:(id)a5 savingItem:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(EKEvent *)self isPrivacySet]&& ![(EKEvent *)self allowsPrivacyLevelModifications])
  {
    [(EKEvent *)self setPrivacyLevelWithoutVerifyingPrivacyModificationsAllowed:0];
  }

  else
  {
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v10 constraints];
    }

    v15 = v14;
    v16 = [v11 constraints];
    v17 = [v16 requiresSamePrivacyLevelAcrossRecurrenceSeries];

    v18 = [v15 requiresSamePrivacyLevelAcrossRecurrenceSeries];
    v19 = [v11 constraints];
    v20 = +[EKSource _calEventPrivacyLevelToEKPrivacyLevel:](EKSource, "_calEventPrivacyLevelToEKPrivacyLevel:", [v19 strictestEventPrivateValue]);

    if (v20 != +[EKSource _calEventPrivacyLevelToEKPrivacyLevel:](EKSource, "_calEventPrivacyLevelToEKPrivacyLevel:", [v15 strictestEventPrivateValue]) || (v17 & (v18 ^ 1)) != 0)
    {
      v21 = 0;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      if (v17)
      {
        v22 = [(EKEvent *)self privacyLevel]!= 0;
        *(v29 + 24) = v22;
        v23 = [(EKCalendarItem *)self detachedItems];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __112__EKEvent__adjustPrivacyAfterMovingOrCopyingFromCalendar_toCalendar_cachedConstraintsForOldCalendar_savingItem___block_invoke;
        v27[3] = &unk_1E77FF178;
        v27[4] = &v28;
        [v23 enumerateObjectsUsingBlock:v27];

        v21 = *(v29 + 24);
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __112__EKEvent__adjustPrivacyAfterMovingOrCopyingFromCalendar_toCalendar_cachedConstraintsForOldCalendar_savingItem___block_invoke_2;
      v25[3] = &__block_descriptor_41_e24_v16__0__EKCalendarItem_8l;
      v26 = v21 & 1;
      v25[4] = v20;
      [(EKCalendarItem *)self _recursivelyPerformBlockOnSelfAndDetachedItems:v25 forSavingItem:v13];
      _Block_object_dispose(&v28, 8);
    }

    v10 = v24;
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

- (void)_adjustAvailabilityAfterMovingOrCopyingFromCalendar:(id)a3 toCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EKObject *)self eventStore];
  v9 = [v8 eventAccessLevel];

  if (v9 != 1)
  {
    v10 = [v6 source];
    v11 = [v7 source];
    v12 = [v10 sourceType];
    v13 = [v11 sourceType];
    if (v12 == 5 && v13 != 5)
    {
      v14 = [(EKEvent *)self suggestionInfo];

      if (v14)
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
            v17 = [v16 integerValue];
            v18 = objc_opt_class();
            v19 = [(EKCalendarItem *)self calendar];
            v20 = [v18 _coercedEventAvailabilityForDesiredAvailability:v17 supportedAvailabilities:{objc_msgSend(v19, "supportedEventAvailabilities")}];

            [(EKEvent *)self setAvailability:v20];
          }
        }
      }
    }
  }
}

- (void)_adjustAttachmentsAfterMovingOrCopyingFromCalendar:(id)a3 toCalendar:(id)a4 cachedConstraintsForOldCalendar:(id)a5 savingItem:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 source];
  v15 = [v11 source];
  v16 = [v14 isEqual:v15];

  if ((v16 & 1) == 0)
  {
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = [v10 constraints];
    }

    v18 = v17;
    v19 = [v11 constraints];
    if ([v19 supportsAttachments])
    {
      v20 = [v11 constraints];
      if (![v20 requiresOpeningAttachmentAsLink])
      {
        v21 = [v18 requiresOpeningAttachmentAsLink];

        if ((v21 & 1) == 0)
        {
          if (self == v13)
          {
            v22 = [(EKCalendarItem *)self originalItem];
            if (!v22)
            {
              v22 = self;
            }

            v23 = [v11 constraints];
            v24 = [v23 requiresSeparateFilesForAllAttachments];

            if (v24)
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
            v29 = self;
            v26 = v25;
            [(EKCalendarItem *)v22 _recursivelyPerformBlockOnSelfAndDetachedItems:v27 forSavingItem:self];
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

- (void)_adjustURLAfterMovingOrCopyingToCalendar:(id)a3 notes:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(EKEvent *)self URL];
  if (v7)
  {
    v8 = v7;
    v9 = [v17 constraints];
    v10 = [v9 supportsURLField];

    if ((v10 & 1) == 0)
    {
      if (v6)
      {
        v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"url" value:&stru_1F1B49D68 table:0];

        v13 = MEMORY[0x1E696AEC0];
        v14 = [(EKEvent *)self URL];
        v15 = [v14 absoluteString];
        v16 = [v13 stringWithFormat:@"\n%@:%@", v12, v15];

        [v6 appendString:v16];
      }

      [(EKEvent *)self setURL:0];
    }
  }
}

- (void)_adjustTimeZoneAfterMovingOrCopyingToCalendar:(id)a3 notes:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(EKCalendarItem *)self timeZone];
  if (!v7 && ![(EKEvent *)self isAllDay])
  {
    v8 = [v15 constraints];
    v9 = [v8 supportsFloatingTimeZone];

    if (v9)
    {
      goto LABEL_8;
    }

    if (v6)
    {
      v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"time zone" value:&stru_1F1B49D68 table:0];

      v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"Floating" value:&stru_1F1B49D68 table:0];

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@:%@", v11, v13];
      [v6 appendString:v14];
    }

    v7 = [MEMORY[0x1E695DFE8] localTimeZone];
    [(EKEvent *)self setTimeZone:v7];
  }

LABEL_8:
}

+ (int64_t)_coercedEventAvailabilityForDesiredAvailability:(int64_t)a3 supportedAvailabilities:(unint64_t)a4
{
  if (a4)
  {
    result = a3;
    if (a3 <= 0)
    {
      if (a3 == -1)
      {
        return result;
      }

      if (!a3 && (a4 & 1) != 0)
      {
        return 0;
      }
    }

    else if (a3 == 1)
    {
      if ((a4 & 2) != 0)
      {
        return 1;
      }
    }

    else if (a3 == 2)
    {
      if ((a4 & 4) != 0)
      {
        return 2;
      }
    }

    else if (a3 == 3 && (a4 & 8) != 0)
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
    v3 = [(EKEvent *)self uniqueId];
    v4 = [(EKCalendarItem *)self calendarItemIdentifier];
    v5 = [(EKCalendarItem *)self externalID];
    v9.receiver = self;
    v9.super_class = EKEvent;
    [(EKObject *)&v9 markAsUndeleted];
    [(EKObject *)self _initChangeSetIfNone];
    v6 = [(EKObject *)self changeSet];
    [v6 forceChangeValue:v3 forKey:*MEMORY[0x1E6992700]];

    v7 = [(EKObject *)self changeSet];
    [v7 forceChangeValue:v4 forKey:*MEMORY[0x1E6992B08]];

    v8 = [(EKObject *)self changeSet];
    [v8 forceChangeValue:v5 forKey:*MEMORY[0x1E69925C0]];
  }
}

- (void)markAsUndetachedWithStartDate:(id)a3 endDate:(id)a4
{
  v8 = a4;
  v6 = a3;
  [(EKObject *)self _initChangeSetIfNone];
  v7 = [(EKObject *)self changeSet];
  [v7 setIsUndetached:1];

  [(EKEvent *)self setStartDate:v6];
  [(EKEvent *)self setEndDateUnadjustedForLegacyClients:v8];
}

- (BOOL)isUndetached
{
  v2 = [(EKObject *)self changeSet];
  v3 = [v2 isUndetached];

  return v3;
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
  v6 = [(EKObject *)self eventStore];
  v7 = [v5 meltedObjectInStore:v6];

  v8 = [v7 source];
  v3 = [v8 sourceType] == 6;

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
  v4 = [(EKCalendarItem *)self uniqueID];
  v5 = [v3 stringWithFormat:@"[Event: %@: ", v4];

  v6 = [(EKCalendarItem *)self timeZone];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  v32 = v8;
  v9 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:v8];
  v10 = [(EKEvent *)self isAllDay];
  v11 = v10;
  if (v10)
  {
    v12 = 28;
  }

  else
  {
    v12 = 124;
  }

  v13 = [(EKEvent *)self startDate];
  v31 = v9;
  v14 = [v9 components:v12 fromDate:v13];
  v15 = [v14 year];
  v16 = [v14 month];
  v17 = [v14 day];
  v18 = v17;
  if (v11)
  {
    [v5 appendFormat:@"%li-%li-%li", v15, v16, v17, v27, v28];
  }

  else
  {
    v19 = [v14 hour];
    v20 = [v14 minute];
    if (v7)
    {
      v29 = v20;
      v30 = v19;
      v21 = [v7 abbreviationForDate:v13];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = [v7 name];
      }

      v24 = v23;

      [v5 appendFormat:@"%li-%li-%li %li:%02li %@", v15, v16, v18, v30, v29, v24];
    }

    else
    {
      [v5 appendFormat:@"%li-%li-%li %li:%02li float", v15, v16, v18, v19, v20];
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
    v3 = [(EKEvent *)self participationStatus];
    if (v3 == 4 || v3 == 2)
    {
      v7 = [(EKCalendarItem *)self organizer];
      v4 = [v7 name];
      v5 = [v7 emailAddress];
      v6 = [v7 phoneNumber];
      [EKRecents recordRecentForContactWithName:v4 emailAddress:v5 phoneNumber:v6];
    }
  }
}

- (void)_addNewAttendeesToRecentsIfNeeded
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6992568];
  if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992568]])
  {
    v4 = [(EKObject *)self changeSet];
    v5 = [v4 unsavedMultiValueAddedObjectsForKey:v3];

    if ([v5 count])
    {
      v6 = MEMORY[0x1E695DF90];
      v7 = [(EKCalendarItem *)self attendees];
      v8 = [v6 dictionaryWithCapacity:{objc_msgSend(v7, "count")}];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v9 = [(EKCalendarItem *)self attendees];
      v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v32 + 1) + 8 * i);
            v15 = [v14 uniqueIdentifier];
            [v8 setObject:v14 forKeyedSubscript:v15];
          }

          v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
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

            v20 = [*(*(&v28 + 1) + 8 * j) uniqueIdentifier];
            v21 = [v8 objectForKeyedSubscript:v20];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [v21 name];
              v23 = [v21 emailAddress];
              v24 = [v21 phoneNumber];
              [EKRecents recordRecentForContactWithName:v22 emailAddress:v23 phoneNumber:v24];
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

  v9 = [(EKEvent *)self _committedStartDate];
  v22 = 0;
  v10 = [(EKEvent *)self adjustedPersistedDateForDate:v9 withAdjustmentMode:1 pinMode:0 clientCalendarDate:&v22];
  v11 = v22;
  v12 = v22;

  if (![(EKCalendarItem *)self _hadRecurrenceRules])
  {
    objc_storeStrong(&self->_originalOccurrenceStartDate, v11);
    objc_storeStrong(&self->_occurrenceStartDate, v11);
  }

  v13 = [(EKEvent *)self _committedEndDate];
  v21 = 0;
  v14 = 1;
  v15 = [(EKEvent *)self adjustedPersistedDateForDate:v13 withAdjustmentMode:1 pinMode:1 clientCalendarDate:&v21];
  v16 = v21;

  v17 = [(EKEvent *)self _calculateDurationWithStart:v12 end:v16 allDay:[(EKEvent *)self _isAllDay]];
  v18 = [(EKEvent *)self occurrenceStartDate];
  v19 = [v18 calendarDateByComponentwiseAddingComponents:v17];
  [(EKEvent *)self setOccurrenceEndDate:v19];

  [(EKEvent *)self setOccurrenceIsAllDay:[(EKEvent *)self _isAllDay]];
  return v14;
}

- (id)coCommitEvents
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(EKObject *)self persistentObject];
  v4 = [v3 coCommitObjects];
  v5 = [v4 count];

  if (v5)
  {
    v6 = MEMORY[0x1E695DF70];
    v7 = [(EKObject *)self persistentObject];
    v8 = [v7 coCommitObjects];
    v9 = [v6 arrayWithCapacity:{objc_msgSend(v8, "count")}];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [(EKObject *)self persistentObject];
    v11 = [v10 coCommitObjects];

    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [[EKEvent alloc] initWithPersistentObject:v16];
            [v9 addObject:v17];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (BOOL)_revertIncludingCoCommits:(BOOL)a3
{
  v3 = a3;
  v35 = *MEMORY[0x1E69E9840];
  v5 = [(EKObject *)self uniqueIdentifier];
  if ([(EKObject *)self hasNeverBeenCommitted])
  {
    v6 = [(EKEvent *)self isDetached];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(EKCalendarItem *)self originalItem];
  v8 = [(EKEvent *)self occurrenceStartDate];
  v9 = [(EKEvent *)self occurrenceEndDate];
  v10 = [(EKEvent *)self occurrenceIsAllDay];
  v11 = v10;
  if (v3)
  {
    v28 = v8;
    v12 = v10;
    v13 = v7;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = [(EKEvent *)self coCommitEvents];
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(v14);
          }

          [*(*(&v30 + 1) + 8 * v18++) _revertIncludingCoCommits:0];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v16);
    }

    v7 = v13;
    v11 = v12;
    v8 = v28;
  }

  v29.receiver = self;
  v29.super_class = EKEvent;
  v19 = [(EKObject *)&v29 revert];
  if (v6)
  {
    v20 = [v7 backingObject];
    [(EKObject *)self setBackingObject:v20];

    [(EKObject *)self _resetAfterUpdatingChangeSetOrBackingObject];
    [(EKEvent *)self reset];
    [(EKEvent *)self setOccurrenceStartDate:v8];
    [(EKEvent *)self setOccurrenceEndDate:v9];
    [(EKEvent *)self setOccurrenceIsAllDay:v11];
  }

  else
  {
    v21 = [(EKEvent *)self originalOccurrenceStartDate];
    [(EKEvent *)self setOccurrenceStartDate:v21];

    v22 = [(EKEvent *)self originalOccurrenceEndDate];
    [(EKEvent *)self setOccurrenceEndDate:v22];

    v23 = [(EKEvent *)self originalOccurrenceIsAllDay];

    if (v23)
    {
      v24 = [(EKEvent *)self originalOccurrenceIsAllDay];
      -[EKEvent setOccurrenceIsAllDay:](self, "setOccurrenceIsAllDay:", [v24 BOOLValue]);
    }
  }

  [(EKEvent *)self _clearOriginalDateFields];
  [(EKEvent *)self setPredictedLocationFrozen:0];
  v25 = [objc_opt_class() _modifiedNotificationUserInfoWithIdentifier:v5 forRevert:1];
  [(EKEvent *)self postModifiedNotificationWithUserInfo:v25];

  v26 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)rollback
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992620]])
  {
    v3 = [(EKEvent *)self virtualConference];
    v4 = [(EKEvent *)self _originallyCommittedVirtualConference];
    v5 = [v3 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = [(EKEvent *)self virtualConference];
      v7 = [v6 joinMethods];

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(v7);
            }

            v12 = [*(*(&v19 + 1) + 8 * v11) URL];
            [EKConferenceUtils invalidateConferenceURL:v12];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  v13 = [(EKEvent *)self originalOccurrenceStartDate];
  [(EKEvent *)self setOccurrenceStartDate:v13];

  v14 = [(EKEvent *)self originalOccurrenceEndDate];
  [(EKEvent *)self setOccurrenceEndDate:v14];

  v15 = [(EKEvent *)self originalOccurrenceIsAllDay];

  if (v15)
  {
    v16 = [(EKEvent *)self originalOccurrenceIsAllDay];
    -[EKEvent setOccurrenceIsAllDay:](self, "setOccurrenceIsAllDay:", [v16 BOOLValue]);
  }

  [(EKEvent *)self setPredictedLocationFrozen:0];
  v17 = *MEMORY[0x1E69E9840];
}

- (id)nextOccurrence
{
  v3 = [(EKEvent *)self startDate];
  v4 = [(EKEvent *)self nextOccurrenceOrDetachmentAfter:v3];

  return v4;
}

- (id)nextOccurrenceOrDetachmentAfter:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKEvent *)self singleRecurrenceRule];

  if (v5)
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
    v38 = v4;
    v39 = &v52;
    v40 = &v46;
    v41 = &v42;
    v7 = _Block_copy(aBlock);
    v8 = [(EKEvent *)self masterEvent];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = self;
    }

    v11 = v10;

    v12 = [(EKEvent *)v11 recurrenceSet];

    if (v12)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v13 = [(EKObject *)self eventStore];
      v14 = [v13 eventsWithSameRecurrenceSetAsEvent:v11];

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
            v19 = [v18 masterEvent];
            v20 = v19;
            if (v19)
            {
              v21 = v19;
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
        v26 = [v47[5] persistentObject];
        v27 = [(EKEvent *)v25 initWithPersistentObject:v26 occurrenceDate:v53[5]];
        v28 = v47[5];
        v47[5] = v27;
      }

      v24 = v47[5];
    }

    else
    {
      v24 = 0;
    }

    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);

    _Block_object_dispose(&v52, 8);
  }

  else
  {
    v22 = [(EKEvent *)self startDate];
    v23 = [v22 isAfterDate:v4];

    if (v23)
    {
      v24 = self;
    }

    else
    {
      v24 = 0;
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v24;
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
  v3 = [(EKEvent *)self startDate];
  v4 = [(EKEvent *)self previousOccurrenceOrDetachmentBefore:v3];

  return v4;
}

- (id)previousOccurrenceOrDetachmentBefore:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKEvent *)self singleRecurrenceRule];

  if (v5)
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
    v38 = v4;
    v39 = self;
    v40 = &v53;
    v41 = &v47;
    v42 = &v43;
    v7 = _Block_copy(aBlock);
    v8 = [(EKEvent *)self masterEvent];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = self;
    }

    v11 = v10;

    v12 = [(EKEvent *)v11 recurrenceSet];

    if (v12)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v13 = [(EKObject *)self eventStore];
      v14 = [v13 eventsWithSameRecurrenceSetAsEvent:v11];

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
            v19 = [v18 masterEvent];
            v20 = v19;
            if (v19)
            {
              v21 = v19;
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
        v26 = [v48[5] persistentObject];
        v27 = [(EKEvent *)v25 initWithPersistentObject:v26 occurrenceDate:v54[5]];
        v28 = v48[5];
        v48[5] = v27;
      }

      v24 = v48[5];
    }

    else
    {
      v24 = 0;
    }

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v47, 8);

    _Block_object_dispose(&v53, 8);
  }

  else
  {
    v22 = [(EKEvent *)self startDate];
    v23 = [v22 isBeforeDate:v4];

    if (v23)
    {
      v24 = self;
    }

    else
    {
      v24 = 0;
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v24;
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

- (id)earliestOccurrenceEndingAfter:(id)a3 excludeSignificantDetachments:(BOOL)a4 excludeCanceledDetachments:(BOOL)a5 excludeDeclinedDetachments:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v65 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if ([(EKCalendarItem *)self hasRecurrenceRules])
  {
    v54 = v10;
    v53 = objc_alloc_init(EKRecurrenceGenerator);
    v11 = [(EKCalendarItem *)self exceptionDates];
    v51 = [(EKCalendarItem *)self detachedItems];
    v12 = [v51 allObjects];
    v13 = [v12 sortedArrayUsingSelector:sel_compareStartDateWithEvent_];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v59 objects:v64 count:16];
    v52 = v11;
    if (v15)
    {
      v16 = v15;
      v48 = self;
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
          if ((!v8 || ([*(*(&v59 + 1) + 8 * i) isSignificantlyDetached] & 1) == 0) && (!v7 || objc_msgSend(v19, "status") != 3) && (!v6 || objc_msgSend(v19, "selfParticipantStatus") != 3))
          {
            v20 = [v19 endDateUnadjustedForLegacyClients];
            v21 = [v20 CalIsAfterDate:v54];

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
      v11 = v52;
      self = v48;
    }

    else
    {
      v50 = 0;
    }

    if ([v14 count])
    {
      v25 = [v11 mutableCopy];
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

          v31 = [*(*(&v55 + 1) + 8 * j) recurrenceDate];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v28);
    }

    [(EKEvent *)self duration];
    v10 = v54;
    v33 = [v54 dateByAddingTimeInterval:-v32];
    v34 = [(EKCalendarItem *)self recurrenceRules];
    if (v25)
    {
      v35 = v25;
    }

    else
    {
      v35 = v11;
    }

    v36 = [(EKEvent *)self startCalendarDate];
    v37 = MEMORY[0x1E69930C8];
    v38 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v49 = v33;
    v39 = [v37 calendarDateWithDate:v33 timeZone:v38];
    v40 = [(EKRecurrenceGenerator *)v53 nextOccurrenceDateWithEKRecurrences:v34 forCalendarItem:self exceptionDates:v35 initialDate:v36 afterDate:v39];

    if (v40)
    {
      v41 = v50;
      if (!v50 || ([v50 startDate], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "CalIsBeforeDate:", v40), v42, !v43))
      {
        v44 = [EKEvent alloc];
        v45 = [(EKObject *)self persistentObject];
        v24 = [(EKEvent *)v44 initWithPersistentObject:v45 occurrenceDate:v40];

LABEL_45:
        goto LABEL_46;
      }
    }

    else
    {
      v41 = v50;
    }

    v24 = [v41 copy];
    goto LABEL_45;
  }

  v22 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
  v23 = [v22 CalIsAfterDate:v10];

  if (v23)
  {
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

LABEL_46:

  v46 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)copyToCalendar:(id)a3 withOptions:(int64_t)a4
{
  v6 = a3;
  v7 = [(EKCalendarItem *)self calendar];
  v8 = [(EKEvent *)self _requirementsToMoveToCalendarHelperRemoveAttendeesRequiredToMoveEventFromCalendar:v7 toCalendar:v6];

  if (v8)
  {
    v9 = a4 | 4;
  }

  else
  {
    v9 = a4;
  }

  v10 = [(EKEvent *)self duplicateWithOptions:v9];
  [v10 setCalendar:v6];
  v11 = [(EKCalendarItem *)self calendar];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__EKEvent_copyToCalendar_withOptions___block_invoke;
  v18[3] = &unk_1E77FF260;
  v19 = v11;
  v20 = v6;
  v12 = v10;
  v21 = v12;
  v13 = v6;
  v14 = v11;
  [v12 _recursivelyPerformBlockOnSelfAndDetachedItems:v18 forSavingItem:v12];
  v15 = v21;
  v16 = v12;

  return v16;
}

- (id)duplicateWithOptions:(int64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [(EKObject *)self duplicate];
  v19 = self;
  v6 = [(EKEvent *)self _keysToChangeForDuplicateWithOptions:a3];
  v7 = [v6 allKeys];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:v12];
        v14 = [MEMORY[0x1E695DFB0] null];

        if (v13 == v14)
        {

          v13 = 0;
        }

        [v5 setValue:v13 forKey:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  if ((a3 & 0x20) != 0)
  {
    [v5 removeAllSnoozedAlarms];
  }

  if ((a3 & 2) != 0)
  {
    v15 = [(EKEvent *)v19 startDate];
    [v5 _updateStartDateForDate:v15 withAdjustmentMode:0];

    v16 = [(EKEvent *)v19 endDateUnadjustedForLegacyClients];
    [v5 _updateEndDateForDate:v16 withAdjustmentMode:0];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_keysToChangeForDuplicateWithOptions:(int64_t)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  if (v3)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DF00] date];
    if (!v7 || (v8 = v7, v9 = MEMORY[0x1E695DF00], [v7 timeIntervalSinceReferenceDate], objc_msgSend(v9, "dateWithTimeIntervalSinceReferenceDate:", floor(v10)), v11 = objc_claimAutoreleasedReturnValue(), v8, !v11))
    {
      v11 = [MEMORY[0x1E695DFB0] null];
    }

    [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6992588]];

    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v12 = [MEMORY[0x1E695DFB0] null];
  [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6992648]];

  v13 = [MEMORY[0x1E695DFB0] null];
  [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6992598]];

  v14 = [MEMORY[0x1E695DFB0] null];
  [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x1E6992630]];

  v15 = [MEMORY[0x1E695DFB0] null];
  [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69929A8]];

  v16 = [MEMORY[0x1E695DFB0] null];
  [v4 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69925A0]];

  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v17 = [MEMORY[0x1E695DFB0] null];
  [v4 setObject:v17 forKeyedSubscript:*MEMORY[0x1E6992568]];

  v18 = [MEMORY[0x1E695DFB0] null];
  [v4 setObject:v18 forKeyedSubscript:*MEMORY[0x1E6992650]];

  v19 = [MEMORY[0x1E695DFB0] null];
  [v4 setObject:v19 forKeyedSubscript:*MEMORY[0x1E6992628]];

  v20 = [MEMORY[0x1E695DFB0] null];
  [v4 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69929B0]];

  [v4 setObject:&unk_1F1B6AC48 forKeyedSubscript:*MEMORY[0x1E6992990]];
  [v4 setObject:&unk_1F1B6AC60 forKeyedSubscript:*MEMORY[0x1E6992988]];
  v21 = [MEMORY[0x1E695DFB0] null];
  [v4 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69929D0]];

  [v4 setObject:&unk_1F1B6AC48 forKeyedSubscript:*MEMORY[0x1E6992998]];
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_16:
  v22 = [MEMORY[0x1E695DFB0] null];
  [v4 setObject:v22 forKeyedSubscript:*MEMORY[0x1E6992560]];

  if ((v3 & 0x10) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:v5 forKeyedSubscript:@"suggestionInfo"];
  }

LABEL_7:

  return v4;
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
    v3 = [(EKCalendarItem *)self attendees];
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v3);
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
              v13 = [v10 proposedStartDateStatus];

              if (v13 != 3)
              {
                ++v6;
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v3 = [(EKObject *)self eventStore];
  v4 = [v3 eventAccessLevel];

  if (v4 == 1)
  {
    v5 = [(EKObject *)self eventStore];
    v6 = [(EKObject *)self CADObjectID];
    v7 = [v5 cachedConstraintsForEventOrSourceWithCADObjectID:v6];
  }

  else
  {
    v5 = [(EKEvent *)self committedValueForKey:*MEMORY[0x1E6992570]];
    v7 = [v5 constraints];
  }

  return v7;
}

- (BOOL)validateRecurrenceRule:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 frequency];
    v9 = [(EKEvent *)self constraints];
    if ([(EKObject *)self _hasChangesForKey:*MEMORY[0x1E6992570]])
    {
      v10 = [(EKEvent *)self committedConstraints];
    }

    else
    {
      v10 = 0;
    }

    v12 = EKBundle();
    v13 = [v12 localizedStringForKey:@"Choose another way to repeat this event or move it to another calendar." value:&stru_1F1B49D68 table:0];
    if ([v10 prohibitsMultipleMonthsInYearlyRecurrence])
    {
      if ([v9 prohibitsMultipleMonthsInYearlyRecurrence])
      {
        if (v8 == 3)
        {
          v14 = [v7 monthsOfTheYear];
          v15 = [v14 count];

          if (v15 >= 2)
          {
            v16 = [v12 localizedStringForKey:@"This Calendar Cannot Repeat Events on Multiple Months in a Year" value:&stru_1F1B49D68 table:0];
            v17 = 45;
            if (!a4)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }
        }
      }
    }

    if ([v10 prohibitsMultipleDaysInMonthlyRecurrence] && objc_msgSend(v9, "prohibitsMultipleDaysInMonthlyRecurrence") && v8 == 2 && (objc_msgSend(v7, "daysOfTheMonth"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v19 >= 2))
    {
      v16 = [v12 localizedStringForKey:@"This Calendar Cannot Repeat Events on Multiple Days in a Month" value:&stru_1F1B49D68 table:0];
      v17 = 46;
      if (a4)
      {
LABEL_17:
        *a4 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:v17 description:v13 reason:v16];
      }
    }

    else
    {
      if (![v10 prohibitsYearlyRecurrenceInterval] || !objc_msgSend(v9, "prohibitsYearlyRecurrenceInterval") || objc_msgSend(v7, "frequency") != 3 || objc_msgSend(v7, "interval") < 2)
      {
        v11 = 1;
        goto LABEL_26;
      }

      v20 = MEMORY[0x1E696AEC0];
      v21 = [v12 localizedStringForKey:@"This Calendar Cannot Repeat Events Every %ld Years" value:&stru_1F1B49D68 table:0];
      v16 = [v20 localizedStringWithFormat:v21, objc_msgSend(v7, "interval")];

      v17 = 47;
      if (a4)
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
  v3 = [(EKEvent *)self occurrenceStartDate];
  if (!v3)
  {
    return 0;
  }

  originalOccurrenceStartDate = self->_originalOccurrenceStartDate;

  if (!originalOccurrenceStartDate)
  {
    return 0;
  }

  v5 = [(EKCalendarDate *)self->_originalOccurrenceStartDate date];
  v6 = [(EKEvent *)self startDate];
  v7 = [(EKCalendarItem *)self timeZone];
  if (![(EKEvent *)self isFloating])
  {
    v8 = [(EKObject *)self eventStore];
    v9 = [v8 timeZone];
    v10 = [v5 dateInTimeZone:v7 fromTimeZone:v9];

    v11 = [(EKObject *)self eventStore];
    v12 = [v11 timeZone];
    v13 = [v6 dateInTimeZone:v7 fromTimeZone:v12];

    v6 = v13;
    v5 = v10;
  }

  v14 = [v5 dateForStartOfDayInTimeZone:v7];
  v15 = [v6 dateForStartOfDayInTimeZone:v7];
  [v14 timeIntervalSinceReferenceDate];
  v17 = v16;
  [v15 timeIntervalSinceReferenceDate];
  if (vabdd_f64(v17, v18) >= 2.22044605e-16)
  {
    v20 = [(EKEvent *)self startDate];
    v21 = [(EKEvent *)self occurrenceStartDate];
    v22 = [v21 timeZone];
    v19 = [(EKEvent *)self _occurrenceExistsOnDate:v20 timeZone:v22];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)_validateDatesAndRecurrencesGivenSpan:(int64_t)a3 error:(id *)a4
{
  if (([MEMORY[0x1E6992FA0] currentProcessHasSyncClientEntitlement] & 1) == 0)
  {
    v8 = [(EKEvent *)self constraints];
    if (v8)
    {
      v9 = [(EKEvent *)self startDate];
      [v9 timeIntervalSinceReferenceDate];
      v10 = [(EKObject *)self eventStore];
      v11 = [v10 timeZone];
      GregorianDateWithFallbackToDefaultTimeZone = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
      v14 = v13;

      if ([(EKEvent *)self isAllDay])
      {
        GregorianDateWithFallbackToDefaultTimeZone = CalGregorianDateGetGregorianDateForDay();
        v14 = v15;
      }

      v16 = [(EKObject *)self eventStore];
      v17 = [v16 timeZone];
      v18 = [(EKEvent *)self _checkStartDateConstraintAgainstDate:GregorianDateWithFallbackToDefaultTimeZone timeZone:v14 error:v17, a4];

      if (!v18)
      {
        goto LABEL_28;
      }

      if ([v8 eventDurationConstrainedToRecurrenceInterval] && -[EKEvent durationOverlapsRecurrenceInterval](self, "durationOverlapsRecurrenceInterval"))
      {
        if (a4)
        {
          v19 = MEMORY[0x1E696ABC0];
          v20 = 7;
LABEL_20:
          [v19 errorWithEKErrorCode:v20];
          *a4 = v7 = 0;
LABEL_29:

          return v7;
        }

        goto LABEL_28;
      }

      if (![(EKObject *)self isNew])
      {
        v21 = [v8 requiresOccurrencesConformToRecurrenceRule];
        if (a3)
        {
          if (v21)
          {
            v22 = [(EKCalendarItem *)self recurrenceRules];
            v23 = [(EKEvent *)self conformsToRecurrenceRules:v22];

            if (!v23 && ![(EKEvent *)self _isSimpleRepeatingEvent])
            {
              if (a4)
              {
                v24 = MEMORY[0x1E696ABC0];
                v25 = EKBundle();
                v26 = [v25 localizedStringForKey:@"Choose another way to repeat this event or move it to another calendar." value:&stru_1F1B49D68 table:0];
                v27 = EKBundle();
                v28 = [v27 localizedStringForKey:@"That calendar does not allow events to start outside of their recurrence patterns." value:&stru_1F1B49D68 table:0];
                *a4 = [v24 errorWithEKErrorCode:13 description:v26 reason:v28];
              }

              goto LABEL_28;
            }
          }
        }
      }

      if ([v8 occurrencesMustOccurOnSeparateDays] && -[EKEvent overlapsWithOrIsSameDayAsEventInSeries](self, "overlapsWithOrIsSameDayAsEventInSeries"))
      {
        if (a4)
        {
          v19 = MEMORY[0x1E696ABC0];
          v20 = 10;
          goto LABEL_20;
        }

LABEL_28:
        v7 = 0;
        goto LABEL_29;
      }

      if ([v8 occurrenceOrderEnforcedAfterDetachment] && -[EKEvent isOutOfOrderWithEventInSeries](self, "isOutOfOrderWithEventInSeries"))
      {
        if (a4)
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
  v3 = [(EKCalendarItem *)self recurrenceRules];
  if ([v3 count])
  {
    v4 = MEMORY[0x1E695DEE8];
    v5 = [(EKObject *)self eventStore];
    v6 = [v5 timeZone];
    v7 = [v4 CalGregorianCalendarForTimeZone:v6];

    v8 = [(EKEvent *)self startDate];
    v9 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v3;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v22 = v3;
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
            v17 = [v16 dateComponents];
            v18 = [v7 dateByAddingComponents:v17 toDate:v8 options:0];
            v14 &= [v18 CalIsBeforeDate:v9] ^ 1;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
      v19 = v14 ^ 1;
      v3 = v22;
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

+ (BOOL)_notDetachedOccurrenceOfEvent:(id)a3 existsInDateRangeWithStartDate:(id)a4 endDate:(id)a5 inTimeZone:(id)a6
{
  v9 = a3;
  v40 = a4;
  v10 = a5;
  v11 = a6;
  if ([v9 hasRecurrenceRules])
  {
    v12 = [v9 recurrenceRules];
    [v9 duration];
    v14 = v13;
    v39 = v12;
    if ([v12 count])
    {
      LOBYTE(v15) = 0;
      v16 = 0;
      v41 = 0;
      v42 = 0;
      v17 = 0;
      v18 = v14;
      v43 = v9;
      while (1)
      {
        v19 = v40;
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
        if (![v19 CalIsBeforeOrSameAsDate:v10])
        {
          goto LABEL_36;
        }

        v20 = objc_alloc_init(EKRecurrenceGenerator);
        LOBYTE(v37) = 1;
        v21 = [(EKRecurrenceGenerator *)v20 copyOccurrenceDatesWithEKEvent:v9 startDate:v19 endDate:v10 timeZone:v11 exceptionDates:0 limit:1 adjustDatesForAllDayEvents:v37];
        if (![v21 count])
        {
          v23 = 0;
LABEL_35:

          goto LABEL_36;
        }

        v22 = [v21 objectAtIndex:0];
        v23 = v22;
        if (!v22 || ![v22 CalIsBeforeOrSameAsDate:v10])
        {
          goto LABEL_35;
        }

        if (![v23 CalIsAfterOrSameAsDate:v19])
        {
          goto LABEL_29;
        }

        if (!v16)
        {
          v24 = [v9 exceptionDatesAdjustedForFloatingEvents];
          v25 = v24;
          if (v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = [MEMORY[0x1E695DFD8] set];
          }

          v16 = v26;

          v27 = [v43 detachedItems];
          v28 = [v27 valueForKey:@"originalStartDate"];

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

          v9 = v43;
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
        v32 = v11;
        if (!v11)
        {
          v38 = [MEMORY[0x1E695DFE8] defaultTimeZone];
          v32 = v38;
        }

        v33 = [v31 dateInTimeZone:v41 fromTimeZone:v32];

        if (!v11)
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

      v9 = v43;
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

- (BOOL)_occurrenceExistsOnDate:(id)a3 timeZone:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EKEvent *)self requiresDetach];
  v9 = self;
  v10 = v9;
  v11 = v9;
  if (!v8)
  {
    v12 = [(EKCalendarItem *)v9 originalItem];
    if (!v12)
    {
      v15 = 0;
      v11 = v10;
      goto LABEL_22;
    }

    v11 = v12;
  }

  v13 = [v6 dateForStartOfDayInTimeZone:v7];
  v14 = [v13 ek_ios_dateForEndOfDayInTimeZone:v7];
  if ([objc_opt_class() _notDetachedOccurrenceOfEvent:v11 existsInDateRangeWithStartDate:v13 endDate:v14 inTimeZone:v7])
  {
    v15 = 1;
  }

  else
  {
    v30 = v14;
    v31 = v11;
    v32 = v6;
    v16 = [v11 detachedItems];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          if (([v21 isEqual:v10] & 1) == 0)
          {
            v22 = [v21 startDate];
            if ([v21 isFloating])
            {
              v23 = [v22 dateInTimeZone:v7 fromTimeZone:0];

              v22 = v23;
            }

            v24 = [v22 dateForStartOfDayInTimeZone:v7];
            [v13 timeIntervalSinceReferenceDate];
            v26 = v25;
            [v24 timeIntervalSinceReferenceDate];
            v15 |= vabdd_f64(v26, v27) < 2.22044605e-16;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    else
    {
      v15 = 0;
    }

    v11 = v31;
    v6 = v32;
    v14 = v30;
  }

LABEL_22:
  v28 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

- (BOOL)_checkStartDateConstraintAgainstDate:(id)a3 timeZone:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [(EKEvent *)self constraints];
  v8 = [v7 futureStartDateLimitedToOccurrenceCacheBounds];

  if (v8)
  {
    CalEventOccurrenceCacheCopyBoundsForTimeZone();
  }

  return 1;
}

- (BOOL)conformsToRecurrenceRules:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a3;
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
          v10 = [(EKEvent *)self startDate];
          v11 = [(EKCalendarItem *)self timeZone];
          v12 = [v10 dateForDayInTimeZone:v11];

          v13 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
          v14 = [(EKCalendarItem *)self timeZone];
          v15 = [v13 ek_ios_dateForEndOfDayInTimeZone:v14];

          v16 = [(EKCalendarItem *)self timeZone];
          v17 = [(EKRecurrenceGenerator *)v9 copyOccurrenceDatesWithEKEvent:self recurrenceRule:v8 startDate:v12 endDate:v15 timeZone:v16 limit:1];

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
  v3 = [(EKEvent *)self constraints];
  v4 = [v3 requiresOccurrencesConformToRecurrenceRule];

  if (!v4 || [(EKEvent *)self _isSimpleRepeatingEvent])
  {
    return 1;
  }

  v6 = [(EKCalendarItem *)self recurrenceRules];
  v7 = [(EKEvent *)self conformsToRecurrenceRules:v6];

  return v7;
}

- (BOOL)allowsResponseCommentModifications
{
  if (![(EKEvent *)self allowsParticipationStatusModifications])
  {
    return 0;
  }

  v3 = [(EKEvent *)self constraints];
  if ([v3 supportsResponseComments])
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
  v2 = [(EKEvent *)self constraints];
  v3 = [v2 supportsClearingPrivateComments];

  return v3;
}

- (BOOL)_isSimpleRepeatingEvent
{
  v3 = [(EKCalendarItem *)self recurrenceRules];
  if ([v3 count] == 1)
  {
    v4 = [(EKCalendarItem *)self recurrenceRules];
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 isSimpleRule];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldCancelInsteadOfDeleteWithSpan:(int64_t)a3
{
  if (a3 == 3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = v13;
    v15 = @"EKSpanAutomaticChange not allowed here";
    v16 = a2;
    v17 = self;
    v18 = 7323;
LABEL_16:
    [v13 handleFailureInMethod:v16 object:v17 file:@"EKEvent.m" lineNumber:v18 description:v15];

    goto LABEL_3;
  }

  if (a3 == 2)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = v13;
    v15 = @"EKSpanEveryOccurrenceUnlessAlreadyDetached not allowed here";
    v16 = a2;
    v17 = self;
    v18 = 7324;
    goto LABEL_16;
  }

LABEL_3:
  v6 = [(EKEvent *)self constraints];
  v7 = [v6 shouldCancelDeletedEvents];

  if (!v7 || [(EKEvent *)self isDetached]|| ![(EKCalendarItem *)self _hadAttendees])
  {
    return 0;
  }

  v8 = [(EKEvent *)self committedValueForKey:*MEMORY[0x1E6992628]];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 isCurrentUser];
    if ((a3 & 0xFFFFFFFFFFFFFFFBLL) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
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
  v3 = [(EKEvent *)self constraints];
  v4 = [v3 shouldDeclineDeletedInvitations];

  if (!v4 || ![(EKCalendarItem *)self _hadAttendees])
  {
    return 0;
  }

  v5 = [(EKEvent *)self committedValueForKey:*MEMORY[0x1E6992628]];
  v6 = v5;
  v7 = v5 && ([v5 isCurrentUser] & 1) == 0 && -[EKEvent status](self, "status") != EKEventStatusCanceled;

  return v7;
}

- (void)_deleteWithSpan:(int64_t)a3
{
  v52 = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    if (a3 > 1)
    {
      switch(a3)
      {
        case 4:
          if ([(EKEvent *)self isDetached])
          {
            v14 = [(EKCalendarItem *)self originalItem];
          }

          else
          {
            v14 = self;
          }

          v4 = v14;
          v23 = [(EKEvent *)v14 recurrenceSet];

          if (v23)
          {
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v24 = [(EKObject *)self eventStore];
            v25 = [v24 eventsWithSameRecurrenceSetAsEvent:v4];

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
                  v31 = [v30 eventOccurrenceID];
                  v32 = [(EKEvent *)self eventOccurrenceID];
                  v33 = [v31 isEqualToString:v32];

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

          [v4 _deleteSelfAndDetached];
LABEL_52:

          goto LABEL_53;
        case 3:
          v36 = [MEMORY[0x1E696AAA8] currentHandler];
          v37 = @"EKSpanAutomaticChange not allowed here";
          v41 = v36;
          v38 = a2;
          v39 = self;
          v40 = 7368;
          break;
        case 2:
          v36 = [MEMORY[0x1E696AAA8] currentHandler];
          v37 = @"EKSpanEveryOccurrenceUnlessAlreadyDetached not allowed here";
          v41 = v36;
          v38 = a2;
          v39 = self;
          v40 = 7369;
          break;
        default:
          goto LABEL_53;
      }

      [v36 handleFailureInMethod:v38 object:v39 file:@"EKEvent.m" lineNumber:v40 description:v37];
    }

    else
    {
      if ([(EKEvent *)self isDetached])
      {
        v41 = [(EKEvent *)self originalStartDate];
      }

      else
      {
        v16 = [(EKEvent *)self originalOccurrenceStartDate];
        v41 = [v16 date];
      }

      if ([(EKEvent *)self isFloating])
      {
        v17 = [(EKObject *)self eventStore];
        v18 = [v17 timeZone];
        v19 = [v41 dateInTimeZone:0 fromTimeZone:v18];

        v41 = v19;
      }

      if ([(EKEvent *)self isDetached])
      {
        v20 = [(EKCalendarItem *)self originalItem];
        [v20 _deleteFromOccurrenceDateOnward:v41 includeSlices:1];
      }

      else
      {
        [(EKEvent *)self _deleteFromOccurrenceDateOnward:v41 includeSlices:1];
      }
    }

    v21 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (a3)
    {
LABEL_53:
      v34 = *MEMORY[0x1E69E9840];
      return;
    }

    if ([(EKEvent *)self isDetached])
    {
      v4 = [(EKCalendarItem *)self originalItem];
      v5 = [(EKEvent *)self originalStartDate];
      [v4 _addExceptionDate:v5];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v6 = [v4 detachedItems];
      v7 = [v6 countByEnumeratingWithState:&v46 objects:v51 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v46 + 1) + 8 * v10);
          if ([v11 isEqual:self])
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [v6 countByEnumeratingWithState:&v46 objects:v51 count:16];
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

        [v4 _removeDetachedItem:v15];
        v6 = v15;
      }

LABEL_25:

LABEL_26:
      [(EKCalendarItem *)self _deleteSelfAndDetached];
      [(EKObject *)self addCoCommitObject:v4];
      goto LABEL_52;
    }

    v12 = [(EKEvent *)self singleRecurrenceRule];

    if (v12)
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

- (void)_deleteFromOccurrenceDateOnward:(id)a3 includeSlices:(BOOL)a4
{
  v4 = a4;
  v104 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v68 = [(EKEvent *)self _committedStartDate];
  v7 = [(EKCalendarItem *)self timeZone];
  if (v7)
  {
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = CalTimeZoneCopyCFTimeZone();
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v8 = [(EKObject *)self eventStore];
  v9 = [v8 eventsWithSameRecurrenceSetAsEvent:self];

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
        v15 = [v14 startDate];
        v16 = [v15 isAfterDate:v6];

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
  v17 = [(EKEvent *)self constraints];
  v18 = [v17 recurrenceSeriesMustIncludeMoreThanFirstOccurrence];

  v74 = v18;
  if (v18)
  {
    v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v73 = 0;
  }

  v19 = [(EKCalendarItem *)self recurrenceRules];
  if ([v19 count])
  {
    v20 = v68;
    v21 = [v6 dateByAddingTimeInterval:-1.0];
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
  obj = v19;
  v71 = v20;
  v72 = v21;
  v78 = [obj countByEnumeratingWithState:&v91 objects:v102 count:16];
  if (v78)
  {
    v77 = *v92;
    v69 = v7;
LABEL_23:
    v22 = 0;
    while (1)
    {
      if (*v92 != v77)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v91 + 1) + 8 * v22);
      v24 = [v23 recurrenceEnd];
      if (![v24 occurrenceCount])
      {
        break;
      }

      LOBYTE(v67) = [(EKEvent *)self isAllDay];
      v25 = [(EKRecurrenceGenerator *)v76 copyOccurrenceDatesWithEKEvent:self recurrenceRule:v23 startDate:v20 endDate:v21 timeZone:v7 exceptionDates:0 limit:0 adjustDatesForAllDayEvents:v67];
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

    v28 = [v24 endDate];
    v25 = v28;
    if (v28 && ![v28 CalIsAfterOrSameAsDate:v6])
    {
      goto LABEL_48;
    }

    LOBYTE(v67) = 0;
    v29 = [(EKRecurrenceGenerator *)v76 copyOccurrenceDatesWithEKEvent:self recurrenceRule:v23 startDate:v20 endDate:v21 timeZone:v7 exceptionDates:0 limit:0 adjustDatesForAllDayEvents:v67];
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

      v32 = [v30 lastObject];
      v33 = [EKRecurrenceEnd recurrenceEndWithEndDate:v32];
      [v23 setRecurrenceEnd:v33];

      v20 = v71;
    }

    else
    {
      v34 = [v29 lastObject];
      if (!v34)
      {
        [(EKCalendarItem *)self _deleteSelfAndDetached];

        v65 = obj;
        v51 = obj;
        v21 = v72;
        goto LABEL_82;
      }

      v35 = v34;
      if ([(EKEvent *)self isAllDay])
      {
        v36 = [EKRecurrenceEnd recurrenceEndWithEndDate:v35];
        [v23 setRecurrenceEnd:v36];
      }

      else
      {
        v37 = MEMORY[0x1E69930C8];
        v38 = [(EKEvent *)self effectiveTimeZone];
        v36 = [v37 calendarDateWithDate:v35 timeZone:v38];

        v39 = [v36 calendarDateForEndOfDay];
        [v39 date];
        v40 = v70 = v30;

        v41 = [EKRecurrenceEnd recurrenceEndWithEndDate:v40];
        [v23 setRecurrenceEnd:v41];

        v7 = v69;
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

  v47 = [(EKCalendarItem *)self recurrenceRules];
  v48 = [v47 count];

  if (!v48)
  {
    [(EKEvent *)self _updateSelfFromDetachedEventIfNeededForDelete];
  }

  v49 = [(EKCalendarItem *)self detachedItems];
  v50 = [v49 allObjects];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v51 = v50;
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
          v57 = [v56 originalStartDate];
          if ([v57 CalIsAfterOrSameAsDate:v6])
          {
            [(EKCalendarItem *)self _removeDetachedItem:v56];
          }
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v83 objects:v100 count:16];
    }

    while (v53);
  }

  v58 = [(EKCalendarItem *)self exceptionDates];
  v59 = [v58 allObjects];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v25 = v59;
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
        if ([v64 CalIsAfterDate:v6])
        {
          [(EKCalendarItem *)self _removeExceptionDate:v64];
        }
      }

      v61 = [v25 countByEnumeratingWithState:&v79 objects:v99 count:16];
    }

    while (v61);
  }

  v24 = v25;
  v20 = v71;
  v21 = v72;
  v65 = obj;
LABEL_82:

  v66 = *MEMORY[0x1E69E9840];
}

- (void)_updateSelfFromDetachedEventIfNeededForDelete
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = [(EKEvent *)self _committedStartDate];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v4 = [(EKCalendarItem *)self detachedItems];
  v5 = [v4 countByEnumeratingWithState:&v69 objects:v77 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v69 + 1) + 8 * v8);
      v10 = [v9 originalStartDate];
      v11 = [v10 isEqualToDate:v3];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v69 objects:v77 count:16];
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

    v13 = [v12 startDate];
    [(EKEvent *)self setStartDate:v13];

    v14 = [v12 endDateUnadjustedForLegacyClients];
    [(EKEvent *)self setEndDateUnadjustedForLegacyClients:v14];

    v15 = [v12 timeZone];
    [(EKEvent *)self setTimeZone:v15];

    v16 = [v12 title];
    [(EKEvent *)self setTitle:v16];

    v17 = [v12 structuredLocationWithoutPrediction];
    v18 = [v17 duplicate];
    [(EKEvent *)self setStructuredLocation:v18];

    v19 = [v12 clientLocation];
    v20 = [v19 duplicate];
    [(EKCalendarItem *)self setClientLocation:v20];

    v21 = [v12 notes];
    [(EKEvent *)self setNotes:v21];

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
    v23 = [v12 alarms];
    v24 = [v23 countByEnumeratingWithState:&v65 objects:v76 count:16];
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
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v65 + 1) + 8 * i) duplicate];
          [(EKCalendarItem *)self addAlarm:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v65 objects:v76 count:16];
      }

      while (v25);
    }

    v29 = [(EKCalendarItem *)self selfAttendee];
    v30 = [(EKCalendarItem *)self attendees];
    v31 = [v30 copy];

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
          if (([v37 isEqual:v29] & 1) == 0)
          {
            [(EKCalendarItem *)self removeAttendee:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v61 objects:v75 count:16];
      }

      while (v34);
    }

    v38 = [v12 selfAttendee];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v39 = [v12 attendees];
    v40 = [v39 countByEnumeratingWithState:&v57 objects:v74 count:16];
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
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v57 + 1) + 8 * k);
          if (([v44 isEqual:v38] & 1) == 0)
          {
            v45 = [v44 copy];
            [(EKCalendarItem *)self addAttendee:v45];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v57 objects:v74 count:16];
      }

      while (v41);
    }

    [(EKCalendarItem *)self setAttachments:0];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v46 = [v12 attachments];
    v47 = [v46 countByEnumeratingWithState:&v53 objects:v73 count:16];
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
            objc_enumerationMutation(v46);
          }

          v51 = [*(*(&v53 + 1) + 8 * m) duplicate];
          [(EKCalendarItem *)self addAttachment:v51];
        }

        v48 = [v46 countByEnumeratingWithState:&v53 objects:v73 count:16];
      }

      while (v48);
    }

    [(EKCalendarItem *)self _removeDetachedItem:v12];
  }

  else
  {
LABEL_9:
    v12 = v4;
  }

LABEL_45:
  v52 = *MEMORY[0x1E69E9840];
}

- (void)_deleteThisOccurrence
{
  v63 = *MEMORY[0x1E69E9840];
  v40 = [(EKEvent *)self originalOccurrenceStartDate];
  v37 = [v40 date];
  if ([(EKEvent *)self isFloating])
  {
    v3 = [(EKObject *)self eventStore];
    v4 = [v3 timeZone];
    v5 = [v37 dateInTimeZone:0 fromTimeZone:v4];

    v37 = v5;
  }

  v6 = [(EKCalendarItem *)self exceptionDates];
  v7 = [v6 mutableCopy];

  v44 = v7;
  [v7 addObject:v37];
  v45 = objc_alloc_init(EKRecurrenceGenerator);
  v36 = [(EKEvent *)self _committedStartDate];
  v8 = MEMORY[0x1E69930C8];
  v9 = [(EKCalendarItem *)self timeZone];
  v10 = [v8 calendarDateWithDate:v36 timeZone:v9];

  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v58 = 0u;
  v11 = [(EKCalendarItem *)self recurrenceRules];
  v12 = [v11 copy];

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

      v18 = [v15 recurrenceEnd];
      if (v18)
      {
        v19 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
        v20 = [(EKRecurrenceGenerator *)v45 nextOccurrenceDateWithEKRecurrences:v19 forCalendarItem:self exceptionDates:v44 initialDate:v10 afterDate:v40];

        if (!v20)
        {
          v21 = [(EKEvent *)self _committedStartDate];
          if ([(EKEvent *)self isFloating])
          {
            v22 = [(EKObject *)self eventStore];
            v23 = [v22 timeZone];
            v24 = [v21 dateInTimeZone:0 fromTimeZone:v23];

            v21 = v24;
          }

          v25 = [v18 endDate];

          v26 = v25 == 0;
          v27 = [v40 date];
          v28 = [(EKCalendarItem *)self timeZone];
          if (v26)
          {
            v29 = [(EKRecurrenceGenerator *)v45 copyOccurrenceDatesWithEKEvent:self recurrenceRule:v15 startDate:v21 endDate:v27 timeZone:v28 exceptionDates:0 limit:0];

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
            v29 = [(EKRecurrenceGenerator *)v45 copyOccurrenceDatesWithEKEvent:self recurrenceRule:v15 startDate:v21 endDate:v27 timeZone:v28 exceptionDates:v44 limit:0];

            if ([v29 count])
            {
              v30 = [v29 lastObject];
            }

            else
            {
              v32 = [MEMORY[0x1E696AAA8] currentHandler];
              [v32 handleFailureInMethod:a2 object:self file:@"EKEvent.m" lineNumber:7779 description:@"Unexpected number of occurrences (0) remaining in series after deleting the last remaining occurrence."];

              v30 = 0;
            }

            v31 = [EKRecurrenceEnd recurrenceEndWithEndDate:v30];
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
        v41 = [(EKRecurrenceGenerator *)v45 occurrenceDate:v40 matchesRecurrenceRule:v15 forEvent:self includeDetachedEventsInSeries:1];
      }

LABEL_28:

LABEL_29:
    }

    v43 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  }

  while (v43);

  if (v41)
  {
    [(EKCalendarItem *)self _addExceptionDate:v37];
  }

LABEL_34:
  v33 = [(EKCalendarItem *)self recurrenceRules];
  v34 = [v33 count] == 0;

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

- (BOOL)_cancelWithSpan:(int64_t)a3 error:(id *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 4:
      [(EKEvent *)self setStatus:3, a4];
      [(EKEvent *)self _cancelDetachedEvents];
      v17 = 1;
      goto LABEL_11;
    case 3:
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = v33;
      v35 = @"EKSpanAutomaticChange not allowed here";
      v36 = a2;
      v37 = self;
      v38 = 7858;
      break;
    case 2:
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = v33;
      v35 = @"EKSpanEveryOccurrenceUnlessAlreadyDetached not allowed here";
      v36 = a2;
      v37 = self;
      v38 = 7859;
      break;
    default:
      goto LABEL_4;
  }

  [v33 handleFailureInMethod:v36 object:v37 file:@"EKEvent.m" lineNumber:v38 description:v35];

LABEL_4:
  if ([(EKCalendarItem *)self _hadRecurrenceRules])
  {
    v7 = [(EKEvent *)self originalOccurrenceStartDate];
    v8 = [v7 date];

    v9 = [(EKEvent *)self occurrenceStartDate];
    v10 = [v9 date];

    if ([(EKEvent *)self isFloating])
    {
      v11 = [(EKObject *)self eventStore];
      v12 = [v11 timeZone];
      v13 = [v8 dateInTimeZone:0 fromTimeZone:v12];

      v14 = [(EKObject *)self eventStore];
      v15 = [v14 timeZone];
      v16 = [v10 dateInTimeZone:0 fromTimeZone:v15];

      v10 = v16;
      v8 = v13;
    }

    [(EKEvent *)self _detachOrSliceWithSpan:a3 withOriginalStartDate:v8 newStartDate:v10];
    [(EKObject *)self insertPersistentObjectIfNeeded];
  }

  [(EKEvent *)self setStatus:3];
  if (a3 == 1)
  {
    v17 = 0;
LABEL_11:
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = [(EKObject *)self eventStore];
    v19 = [v18 eventsWithSameRecurrenceSetAsEvent:self];

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
          v25 = [v24 eventOccurrenceID];
          v26 = [(EKEvent *)self eventOccurrenceID];
          v27 = [v25 isEqualToString:v26];

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
  v2 = [(EKCalendarItem *)self detachedItems];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setStatus:3];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_validateSpanForRemove:(int64_t)a3 error:(id *)a4
{
  result = 1;
  if (a3 >= 2 && a3 != 2 && a3 != 4)
  {
    if (a4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:13];
      v7 = v6;
      result = 0;
      *a4 = v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)removeWithSpan:(int64_t)a3 error:(id *)a4
{
  v5 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_class() _validateSpanForRemove:a3 error:a4];
  if (!v7)
  {
    goto LABEL_36;
  }

  if (-[EKEvent isDetached](self, "isDetached") && ![objc_opt_class() _allowSlicingFromDetachedOccurrence])
  {
    v5 = 0;
  }

  if (![(EKEvent *)self isOrWasPartOfRecurringSeries])
  {
    v8 = [(EKEvent *)self recurrenceSet];

    if (!v8)
    {
LABEL_12:
      v5 = 4;
      goto LABEL_14;
    }
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  if (v5 == 2)
  {
    if ([(EKEvent *)self isDetached])
    {
LABEL_10:
      if ([(EKEvent *)self _eventIsTheOnlyRemainingOccurrence])
      {
        v9 = [(EKEvent *)self recurrenceSet];
        v10 = v9 == 0;

        v5 = 4 * v10;
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ([(EKEvent *)self isFirstOccurrenceIncludingSlices]&& v5 == 1)
  {
    v5 = 4;
  }

  if ([(EKEvent *)self _shouldCancelInsteadOfDeleteWithSpan:v5])
  {
    v7 = [(EKEvent *)self _cancelWithSpan:v5 error:a4];
    if (!v7)
    {
      goto LABEL_36;
    }
  }

  else if ([(EKEvent *)self _shouldDeclineInsteadOfDelete])
  {
    v11 = [(EKEvent *)self recurrenceSet];

    if (v11)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = [(EKObject *)self eventStore];
      v13 = [v12 eventsWithSameRecurrenceSetAsEvent:self];

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
            v19 = [v18 eventOccurrenceID];
            v20 = [(EKEvent *)self eventOccurrenceID];
            v21 = [v19 isEqualToString:v20];

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
    [(EKEvent *)self _deleteWithSpan:v5];
  }

  [(EKObject *)self updatePersistentObject];
  if (!v5)
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
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [(EKCalendarItem *)self originalItem];
  if (v3 || ([(EKCalendarItem *)self _hadRecurrenceRules]|| [(EKEvent *)self isPhantom]) && (v3 = self) != 0)
  {
    v4 = v3;
    v5 = [EKEvent alloc];
    v6 = [(EKObject *)v4 persistentObject];
    v7 = [(EKEvent *)v5 initWithPersistentObject:v6];
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
    v3 = [(EKCalendarItem *)self originalItem];
  }

  else
  {
    if (![(EKCalendarItem *)self hasRecurrenceRules])
    {
      v6 = 1;
      goto LABEL_32;
    }

    v3 = self;
  }

  v4 = v3;
  if ([(EKEvent *)v3 isPhantom])
  {
    v5 = [(EKCalendarItem *)v4 detachedItems];
    v6 = [v5 count] < 2;
  }

  else
  {
    v7 = [(EKObject *)self eventStore];
    v8 = [v7 eventsWithSameRecurrenceSetAsEvent:v4];
    v9 = [v8 count];

    if (v9 <= 1)
    {
      v10 = [(EKEvent *)self originalOccurrenceStartDate];
      v11 = [v10 date];
      if ([(EKEvent *)self isFloating])
      {
        v12 = [(EKObject *)self eventStore];
        v13 = [v12 timeZone];
        v14 = [v11 dateInTimeZone:0 fromTimeZone:v13];

        v11 = v14;
      }

      v15 = [(EKCalendarItem *)v4 exceptionDates];
      if (v15)
      {
        v16 = v15;
        v17 = [(EKCalendarItem *)v4 exceptionDates];
        v18 = [v17 setByAddingObject:v11];
      }

      else
      {
        v18 = [MEMORY[0x1E695DFD8] setWithObject:v11];
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
        v36 = v11;
        v37 = v10;
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
            v27 = [v26 BOOLValue];

            if (v27)
            {
              v28 = [(EKObject *)self eventStore];
              v29 = [v28 timeZone];
            }

            else
            {
              v29 = [(EKCalendarItem *)v4 timeZone];
            }

            v30 = [MEMORY[0x1E695DF00] distantPast];
            v31 = [MEMORY[0x1E695DF00] distantFuture];
            v32 = [(EKRecurrenceGenerator *)v25 copyOccurrenceDatesWithEKEvent:v4 recurrenceRule:v24 startDate:v30 endDate:v31 timeZone:v29 exceptionDates:v41 limit:v40];

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
        v11 = v36;
        v10 = v37;
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
  v4 = [v3 BOOLValue];

  v5 = [(EKEvent *)self isFloating]& (v4 ^ 1);
  if (v5)
  {
    v6 = [(EKObject *)self eventStore];
    v7 = [v6 timeZone];
  }

  else
  {
    v7 = [(EKCalendarItem *)self timeZone];
  }

  v9 = [(EKEvent *)self originalOccurrenceStartDate];
  v10 = [v9 date];

  if (v5)
  {
    v11 = [v10 dateInTimeZone:0 fromTimeZone:v7];

    v10 = v11;
  }

  if ([(EKEvent *)self isDetached])
  {
    v12 = [(EKCalendarItem *)self originalItem];
  }

  else
  {
    v12 = self;
  }

  v13 = v12;
  v14 = [(EKObject *)self eventStore];
  v15 = [v14 eventsWithSameRecurrenceSetAsEvent:v13];

  v32 = v15;
  v16 = [v15 sortedArrayUsingComparator:&__block_literal_global_394];
  if (![v16 count])
  {
    goto LABEL_14;
  }

  v17 = [v16 objectAtIndexedSubscript:0];
  v18 = [v17 startDate];
  v19 = [(EKEvent *)v13 startDate];
  v20 = [v18 isBeforeDate:v19];

  if (v20)
  {
    v8 = 0;
  }

  else
  {
LABEL_14:
    v31 = v7;
    v21 = [(EKCalendarItem *)v13 recurrenceRules];
    v22 = [v21 firstObject];

    v23 = [(EKCalendarItem *)v13 exceptionDates];
    v24 = [v23 count] + 1;
    v25 = objc_alloc_init(EKRecurrenceGenerator);
    if (v4)
    {
      v26 = [(EKObject *)self eventStore];
      v27 = [v26 timeZone];
    }

    else
    {
      v27 = [(EKCalendarItem *)v13 timeZone];
    }

    v28 = [MEMORY[0x1E695DF00] distantPast];
    v29 = [(EKRecurrenceGenerator *)v25 copyOccurrenceDatesWithEKEvent:v13 recurrenceRule:v22 startDate:v28 endDate:v10 timeZone:v27 exceptionDates:v23 limit:v24];

    v8 = [v29 count] == 0;
    v7 = v31;
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

- (void)rebaseToEventStore:(id)a3
{
  v4 = a3;
  v5 = [(EKEvent *)self constraints];
  v6 = [v5 requiresSeparateFilesForAllAttachments];

  v8 = [(EKCalendarItem *)self selfAttendee];
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6992918], *MEMORY[0x1E69926F0], *MEMORY[0x1E6992650], 0}];
  [(EKEvent *)self rebaseSkippingRelationProperties:v7 toEventStore:v4];

  if (v6)
  {
    [(EKEvent *)self _recursivelyAssignAllAttachmentsNewIdentities];
  }

  if (v8)
  {
    [(EKEvent *)self _updateSelfAttendeeToMatchSelfAttendee:v8];
  }
}

- (void)rebaseSkippingRelationProperties:(id)a3 toEventStore:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EKCalendarItem *)self allAlarms];
  v9 = *MEMORY[0x1E6992558];
  v10 = [v6 setByAddingObject:*MEMORY[0x1E6992558]];
  v61.receiver = self;
  v61.super_class = EKEvent;
  [(EKObject *)&v61 rebaseSkippingRelationProperties:v10 toEventStore:v7];

  if (([v6 containsObject:v9] & 1) == 0)
  {
    v44 = v6;
    v11 = objc_alloc(MEMORY[0x1E695DF90]);
    v45 = self;
    v12 = [(EKCalendarItem *)self allAlarms];
    v13 = [v11 initWithCapacity:{objc_msgSend(v12, "count")}];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v43 = v8;
    v14 = v8;
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
            v20 = [v19 originalAlarm];
            v21 = [v20 UUID];
            v22 = [v13 objectForKeyedSubscript:v21];

            if (!v22)
            {
              v22 = objc_opt_new();
              v23 = [v20 UUID];
              [v13 setObject:v22 forKeyedSubscript:v23];
            }

            [v22 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v16);
    }

    v24 = MEMORY[0x1E695DFA8];
    v25 = [(EKCalendarItem *)v45 allAlarms];
    v26 = [v24 setWithCapacity:{objc_msgSend(v25, "count")}];

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
            v32 = [v31 duplicateToEventStore:v7];
            [v26 addObject:v32];
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v33 = [v31 UUID];
            v34 = v13;
            v35 = [v13 objectForKeyedSubscript:v33];

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

                  v40 = [*(*(&v49 + 1) + 8 * j) duplicateToEventStore:v7];
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

    v41 = [v26 allObjects];
    [(EKCalendarItem *)v45 setAllAlarms:v41];

    v8 = v43;
    v6 = v44;
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)rebaseSkippingRelationProperties:(id)a3
{
  v4 = a3;
  v5 = [(EKEvent *)self constraints];
  if ([v5 requiresSeparateFilesForAllAttachments])
  {
    v6 = [v4 containsObject:*MEMORY[0x1E6992560]];

    v7.receiver = self;
    v7.super_class = EKEvent;
    [(EKObject *)&v7 rebaseSkippingRelationProperties:v4];

    if ((v6 & 1) == 0)
    {
      [(EKEvent *)self _recursivelyAssignAllAttachmentsNewIdentities];
    }
  }

  else
  {

    v7.receiver = self;
    v7.super_class = EKEvent;
    [(EKObject *)&v7 rebaseSkippingRelationProperties:v4];
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
  v3 = [(EKCalendarItem *)self detachedItems];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) _assignAllAttachmentsNewIdentities];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(EKCalendarItem *)self attachments];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) assignNewIdentity];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldPreserveFutureWhenSlicingWithStartDate:(id)a3 newStartDate:(id)a4
{
  v4 = [(EKEvent *)self constraints:a3];
  v5 = [v4 supportsRecurrenceSplit];

  return v5;
}

- (void)_detachOrSliceWithSpan:(int64_t)a3 withOriginalStartDate:(id)a4 newStartDate:(id)a5
{
  v8 = self;
  v9 = a5;
  v10 = a4;
  v17 = v8;
  if ([(EKEvent *)v8 isDetached])
  {
    if (!a3)
    {
      v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot detach an already detached occurrence" userInfo:0];
      [v11 raise];
    }

    v12 = [EKEvent alloc];
    v13 = [(EKCalendarItem *)v8 originalItem];
    v14 = [v13 persistentObject];
    v15 = [(EKEvent *)v8 originalStartDate];
    v17 = [(EKEvent *)v12 initWithPersistentObject:v14 occurrenceDate:v15];

    if ([(EKObject *)v8 _hasChangesForKey:*MEMORY[0x1E6992648]])
    {
      v16 = [(EKCalendarItem *)v8 recurrenceRules];
      [(EKEvent *)v17 setRecurrenceRules:v16];
    }
  }

  [objc_opt_class() _detachOrSliceEvent:v17 withSpan:a3 savingEvent:v8 withOriginalStartDate:v10 newStartDate:v9];

  v8->_isMainOccurrence = ![(EKEvent *)v8 isDetached];
}

+ (void)_detachOrSliceEvent:(id)a3 withSpan:(int64_t)a4 savingEvent:(id)a5 withOriginalStartDate:(id)a6 newStartDate:(id)a7
{
  v198 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (a4 == 1)
  {
    v15 = [v12 _shouldPreserveFutureWhenSlicingWithStartDate:v13 newStartDate:v14];
  }

  else
  {
    v15 = 0;
  }

  v142 = [v12 isFirstOccurrence];
  v154 = [v13 isEqual:v14];
  v16 = [v12 originalStartDate];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v13;
  }

  v157 = v18;

  v19 = [v12 masterEvent];
  v20 = [v11 selfAttendee];
  v147 = [v11 attendees];
  v145 = [v11 alarms];
  v144 = [v11 recurrenceRules];
  v21 = *MEMORY[0x1E6992918];
  v22 = *MEMORY[0x1E69926F0];
  v23 = *MEMORY[0x1E6992650];
  v156 = v15;
  if (v15)
  {
    v153 = *MEMORY[0x1E6992598];
    v24 = [MEMORY[0x1E695DFD8] setWithObjects:{v21, v22, *MEMORY[0x1E6992598], v23, 0}];
    [v19 rebaseSkippingRelationProperties:v24];

    v25 = [v11 _generateNewUniqueID];
    [v19 setUniqueID:v25];

    [v12 addCoCommitObject:v19];
  }

  else
  {
    v153 = *MEMORY[0x1E6992598];
    v26 = [MEMORY[0x1E695DFA8] setWithObjects:{v21, v22, *MEMORY[0x1E6992568], v23, *MEMORY[0x1E69925A0], *MEMORY[0x1E6992598], *MEMORY[0x1E6992558], 0}];
    v27 = v26;
    if (!a4)
    {
      [v26 addObject:*MEMORY[0x1E6992648]];
    }

    v28 = [v11 persistentObject];
    [v11 rebaseSkippingRelationProperties:v27];
    v29 = [v11 persistentObject];
    [v29 addCoCommitObject:v28];

    v30 = [v27 allObjects];
    [v11 emptyMeltedCacheForKeys:v30];

    v31 = [v11 _generateNewUniqueID];
    [v11 setUniqueID:v31];

    if (v12 != v11)
    {
      [v12 addCoCommitObject:v11];
      if ([v12 _hasChangesForKey:*MEMORY[0x1E6992570]])
      {
        v32 = [v12 calendar];
        [v11 setCalendar:v32];
      }
    }

    v15 = 0;
  }

  if (a4 == 1)
  {
    v33 = [v11 recurrenceSet];

    if (!v33)
    {
      v34 = [v19 recurrenceSet];

      if (v34)
      {
        v35 = [v19 recurrenceSet];
        [v11 setRecurrenceSet:v35];
      }

      else
      {
        v35 = [MEMORY[0x1E696AFB0] UUID];
        v36 = [v35 UUIDString];
        [v11 setRecurrenceSet:v36];
      }
    }

    v37 = [v11 recurrenceSet];
    [v19 setRecurrenceSet:v37];
  }

  [v12 setStartDateRaw:v14];
  [v12 duration];
  v38 = [v14 dateByAddingTimeInterval:?];
  [v12 setEndDateRaw:v38];

  if (v11 != v12)
  {
    [v11 setStartDateRaw:v157];
    [v19 duration];
    v39 = [v157 dateByAddingTimeInterval:?];
    [v11 setEndDateRaw:v39];
  }

  v146 = v12;
  v143 = a4;
  v151 = v19;
  if (v15)
  {
    [v19 _updateSelfAttendeeToMatchSelfAttendee:v20];
  }

  else
  {
    [v11 setAttendees:MEMORY[0x1E695E0F0]];
    v40 = [v11 constraints];
    v41 = [v40 attendeesUseDeletedByOrganizerStatus];

    if (v41)
    {
      v136 = v20;
      v138 = v14;
      v140 = v13;
      v42 = MEMORY[0x1E695DFD8];
      v43 = [v147 valueForKey:*MEMORY[0x1E6992B08]];
      v44 = [v42 setWithArray:v43];

      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      v45 = [v19 attendees];
      v46 = [v45 countByEnumeratingWithState:&v186 objects:v197 count:16];
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
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v186 + 1) + 8 * i);
            v51 = [v50 UUID];
            v52 = [v44 containsObject:v51];

            if ((v52 & 1) == 0)
            {
              v53 = [EKAttendee alloc];
              v54 = [v50 persistentObject];
              v55 = [(EKObject *)v53 initWithPersistentObject:v54];

              [(EKObject *)v55 rebase];
              [(EKAttendee *)v55 setParticipantStatus:-1];
              [v11 addAttendee:v55];
            }
          }

          v47 = [v45 countByEnumeratingWithState:&v186 objects:v197 count:16];
        }

        while (v47);
      }

      v14 = v138;
      v13 = v140;
      v20 = v136;
    }

    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v56 = v147;
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
          v62 = [v61 isEqual:v20];
          [v61 rebase];
          [v11 addAttendee:v61];
          if (v62)
          {
            [v11 setSelfAttendee:v20];
            v63 = [v61 persistentObject];
            [v20 setPersistentObject:v63];

            [v20 _resetAfterUpdatingChangeSetOrBackingObject];
          }
        }

        v58 = [v56 countByEnumeratingWithState:&v182 objects:v196 count:16];
      }

      while (v58);
    }

    [v11 setAllAlarms:MEMORY[0x1E695E0F0]];
    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    v64 = v145;
    v65 = [v64 countByEnumeratingWithState:&v178 objects:v195 count:16];
    v19 = v151;
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
          [v11 addAlarm:v69];
        }

        v66 = [v64 countByEnumeratingWithState:&v178 objects:v195 count:16];
      }

      while (v66);
    }

    v12 = v146;
    a4 = v143;
    v15 = v156;
  }

  if (a4 == 1)
  {
    if (v11 == v12)
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
        v71 = [v11 exceptionDates];
        v174 = 0u;
        v175 = 0u;
        v176 = 0u;
        v177 = 0u;
        v72 = [v71 countByEnumeratingWithState:&v174 objects:v194 count:16];
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
                objc_enumerationMutation(v71);
              }

              v76 = *(*(&v174 + 1) + 8 * m);
              if ([v76 CalIsBeforeDate:v157])
              {
                [v11 _removeExceptionDate:v76];
              }
            }

            v73 = [v71 countByEnumeratingWithState:&v174 objects:v194 count:16];
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
        v71 = [v19 exceptionDates];
        v77 = [v71 countByEnumeratingWithState:&v170 objects:v193 count:16];
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
                objc_enumerationMutation(v71);
              }

              v81 = *(*(&v170 + 1) + 8 * n);
              if ([v81 CalIsAfterDate:v157])
              {
                [v11 _addExceptionDate:v81];
              }
            }

            v78 = [v71 countByEnumeratingWithState:&v170 objects:v193 count:16];
          }

          while (v78);
        }
      }
    }

    else
    {
      [v11 setExceptionDates:0];
    }

    v139 = v14;
    v141 = v13;
    v155 = v11;
    v149 = [v19 startDate];
    v150 = [v19 timeZone];
    if (!v150)
    {
      v150 = CalTimeZoneCopyCFTimeZone();
    }

    v137 = v20;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v82 = v144;
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
          v88 = [v87 recurrenceEnd];
          v89 = [v88 endDate];
          if (v89 && (v90 = v89, [v88 endDate], v91 = objc_claimAutoreleasedReturnValue(), v92 = objc_msgSend(v91, "CalIsBeforeDate:", v157), v91, v90, v92))
          {
            [v155 removeRecurrenceRule:v87];
          }

          else if ([v88 occurrenceCount])
          {
            v93 = [v88 occurrenceCount];
            v94 = objc_alloc_init(EKRecurrenceGenerator);
            v95 = [v157 dateByAddingTimeInterval:-1.0];
            LOBYTE(v135) = 0;
            v96 = [(EKRecurrenceGenerator *)v94 copyOccurrenceDatesWithEKEvent:v151 recurrenceRule:v87 startDate:v149 endDate:v95 timeZone:v150 exceptionDates:0 limit:0 adjustDatesForAllDayEvents:v135];

            v97 = [v96 count];
            if (v93 == v97)
            {
              [v155 removeRecurrenceRule:v87];
            }

            else
            {
              v98 = [EKRecurrenceEnd recurrenceEndWithOccurrenceCount:v93 - v97];
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
    v103 = [v101 detachedItems];
    v104 = [v103 countByEnumeratingWithState:&v162 objects:v191 count:16];
    v12 = v146;
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
            objc_enumerationMutation(v103);
          }

          v108 = *(*(&v162 + 1) + 8 * jj);
          v109 = v108;
          if ([v108 isEqual:v146])
          {
            v109 = v146;
          }

          v110 = [v109 originalStartDate];
          if (v156 == [v110 CalIsBeforeDate:v157])
          {
            [v152 _removeDetachedItem:v108];
            v111 = [v109 persistentObject];
            v112 = [v111 isNew];

            if ((v112 & 1) == 0)
            {
              v113 = [v109 persistentObject];
              [v109 rebase];
              v114 = [v155 eventStore];
              [v114 _deleteObject:v113];

              v115 = [v146 persistentObject];
              [v115 addCoCommitObject:v113];
            }

            v116 = [v109 frozenObject];
            [v102 addMultiChangedObjectValue:v116 forKey:v153];

            [v109 setOriginalItem:v102];
            v117 = objc_opt_class();
            v118 = [v102 calendar];
            v119 = [v117 generateUniqueIDWithEvent:v109 originalEvent:v102 calendar:v118];
            [v109 setUniqueID:v119];

            if (v109 != v146)
            {
              v120 = [MEMORY[0x1E695DFD8] setWithObject:v148];
              [v109 updatePersistentObjectSkippingProperties:v120];

              [v109 insertPersistentObjectIfNeeded];
            }
          }
        }

        v105 = [v103 countByEnumeratingWithState:&v162 objects:v191 count:16];
      }

      while (v105);
    }

    [v102 emptyMeltedCacheForKey:v153];
    v19 = v151;
    [v151 _deleteFromOccurrenceDateOnward:v157 includeSlices:0];

    v11 = v155;
    v14 = v139;
    v13 = v141;
    v20 = v137;
    a4 = v143;
  }

  if (v142)
  {
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v121 = [v19 alarms];
    v122 = [v121 countByEnumeratingWithState:&v158 objects:v190 count:16];
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
            objc_enumerationMutation(v121);
          }

          v126 = *(*(&v158 + 1) + 8 * kk);
          if ([v126 isAbsolute])
          {
            [v19 removeAlarm:v126];
          }
        }

        v123 = [v121 countByEnumeratingWithState:&v158 objects:v190 count:16];
      }

      while (v123);
    }

    v12 = v146;
    a4 = v143;
  }

  if (a4)
  {
    [v19 _updatePersistentObjectOfSelfAndDetachedItemsExceptForSavingItem:v12];
    [v19 updatePersistentValueForKeyIfNeeded:v153];
  }

  else
  {
    v127 = [v11 frozenObject];
    [v19 addMultiChangedObjectValue:v127 forKey:v153];

    [v19 emptyMeltedCacheForKey:v153];
    [v11 setOriginalItem:v19];
    [v11 setOriginalStartDate:v13];
    v128 = objc_opt_class();
    v129 = [v19 calendar];
    v130 = [v128 generateUniqueIDWithEvent:v11 originalEvent:v19 calendar:v129];
    [v11 setUniqueID:v130];

    v131 = [MEMORY[0x1E695DFD8] setWithObject:v153];
    [v19 updatePersistentObjectSkippingProperties:v131];
  }

  v132 = [v11 eventStore];
  [v132 _addObjectToPendingCommits:v19];

  [v12 emptyMeltedCacheForKey:*MEMORY[0x1E6992630]];
  if (v11 != v12)
  {
    [v11 _updatePersistentObjectOfSelfAndDetachedItemsExceptForSavingItem:v12];
    [v11 updatePersistentValueForKeyIfNeeded:v153];
    v133 = [v11 eventStore];
    [v133 _addObjectToPendingCommits:v11];
  }

  v134 = *MEMORY[0x1E69E9840];
}

- (id)privacyLevelString
{
  v2 = [(EKEvent *)self privacyLevel];
  if (v2 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E77FF370[v2];
  }
}

- (void)setSuggestionInfo:(id)a3
{
  v4 = *MEMORY[0x1E69929E8];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:objc_opt_class()];
}

- (BOOL)_fetchedEventIsConflict:(id)a3 forStartDate:(id)a4 endDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(EKEvent *)self uniqueId];
  v12 = [v11 componentsSeparatedByString:@"/RID="];
  v13 = [v12 firstObject];

  v14 = [v8 uniqueId];
  v15 = [v14 componentsSeparatedByString:@"/RID="];
  v16 = [v15 firstObject];

  if (([v13 isEqual:v16] & 1) == 0 && objc_msgSend(v8, "status") != 3 && objc_msgSend(v8, "participationStatus") != 3 && (objc_msgSend(v8, "status") || (objc_msgSend(v8, "isAllDay") & 1) == 0) && (!objc_msgSend(v8, "status") || objc_msgSend(v8, "availability") != 1))
  {
    v17 = [v8 endDateUnadjustedForLegacyClients];
    if ([v17 isEqualToDate:v9])
    {
    }

    else
    {
      v18 = [v8 startDate];
      v19 = [v18 isEqualToDate:v10];

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

- (id)potentialConflictOccurrenceDatesInTimePeriod:(double *)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  if ([(EKEvent *)self isAllDay]|| ([(EKEvent *)self endDateUnadjustedForLegacyClients], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v7 = 0;
  }

  else
  {
    v6 = [(EKEvent *)self startDate];
    v22[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

    v8 = [(EKCalendarItem *)self recurrenceRules];
    v9 = [v8 firstObject];

    v10 = 0;
    if (v9 && [v9 frequency] != 3)
    {
      v11 = [v9 frequency];
      if (v11 > 2)
      {
        v12 = 1;
        v10 = 0x417E133800000000;
      }

      else
      {
        v10 = qword_1A81C3DB8[v11];
        v12 = qword_1A81C3DD0[v11];
      }

      v13 = objc_alloc_init(EKRecurrenceGenerator);
      v14 = [(EKEvent *)self startCalendarDate];
      v15 = [v14 date];
      v16 = [MEMORY[0x1E695DF00] distantFuture];
      v17 = [(EKCalendarItem *)self timeZone];
      v18 = [(EKRecurrenceGenerator *)v13 copyOccurrenceDatesWithEKEvent:self recurrenceRule:v9 startDate:v15 endDate:v16 timeZone:v17 limit:v12];

      if ([v18 count] > v12)
      {
        v19 = [v18 subarrayWithRange:{0, v12}];

        v18 = v19;
      }

      v7 = v18;
    }

    if (a3)
    {
      *a3 = v10;
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
    v4 = [(EKCalendarItem *)self calendar];
    v5 = [v4 source];

    v6 = MEMORY[0x1E695DF70];
    v7 = [v5 calendarsForEntityType:0];
    v8 = [v7 allObjects];
    v9 = [v6 arrayWithArray:v8];

    v75 = v5;
    v10 = [v5 supportsAvailabilityRequests];
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
          if (v10 && ![*(*(&v107 + 1) + 8 * i) isAffectingAvailability] || !objc_msgSend(v16, "allowsScheduling") || (objc_msgSend(v16, "isFacebookBirthdayCalendar") & 1) != 0 || (objc_msgSend(v16, "isSubscribedHolidayCalendar") & 1) != 0 || (objc_msgSend(v16, "isSuggestedEventCalendar") & 1) != 0 || objc_msgSend(v16, "isNaturalLanguageSuggestedEventCalendar"))
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
      v44 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
      v45 = [(EKEvent *)self startDate];
      [v44 timeIntervalSinceDate:v45];
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
              v54 = [(EKObject *)self eventStore];
              v55 = [v54 predicateForEventsWithStartDate:v52 endDate:v53 calendars:v9 loadDefaultProperties:0];

              v56 = [(EKObject *)self eventStore];
              v57 = [v56 eventsMatchingPredicate:v55];

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
      v66 = [(EKEvent *)self startCalendarDate];
      v67 = [v66 date];
      v24 = [v65 rangeWithStartDate:v67 duration:v106];

      v63 = v77;
      v43 = [EKConflictDetails infoWithConflictsInSeries:obja outOf:v64 withPeriod:v24 conflictingDates:v77];
      v21 = v71;
      v17 = v73;
    }

    else
    {
      v23 = [(EKEvent *)self startDate];
      v24 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
      v76 = v23;
      if (v22[2](v22, v23) && ((v22[2])(v22, v24) & 1) != 0)
      {
        v70 = v21;
        v72 = v17;
        v25 = [(EKObject *)self eventStore];
        v26 = [(EKEvent *)self startDate];
        v27 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
        v28 = [v25 predicateForEventsWithStartDate:v26 endDate:v27 calendars:v9 loadDefaultProperties:0];

        v29 = [(EKObject *)self eventStore];
        v80 = v28;
        v30 = [v29 eventsMatchingPredicate:v28];

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
              v36 = v24;
              if (*v98 != v85)
              {
                objc_enumerationMutation(obj);
              }

              v37 = *(*(&v97 + 1) + 8 * m);
              v38 = [(EKEvent *)self startDate];
              v39 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
              v40 = [(EKEvent *)self _fetchedEventIsConflict:v37 forStartDate:v38 endDate:v39];

              if (v40)
              {
                v41 = [v37 isTentative];
                v33 += v41 ^ 1;
                v34 += v41;
                if (v33 + v34 == 1)
                {
                  v42 = v37;
                }

                else
                {
                  v42 = 0;
                }

                v24 = v36;

                v87 = v42;
              }

              else
              {
                v24 = v36;
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
        v63 = v23;
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

- (BOOL)updateWithGeocodedMapItemAndSaveWithCommit:(id)a3 eventStore:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(EKCalendarItem *)self structuredLocationWithoutPrediction];
  v11 = [v10 duplicate];

  [v11 updateFromMapItem:v9];
  if (![(EKEvent *)self isEditable])
  {
    goto LABEL_6;
  }

  v12 = [(EKEvent *)self constraints];
  if (([v12 supportsStructuredLocations] & 1) == 0)
  {

    goto LABEL_6;
  }

  v13 = [(EKEvent *)self constraints];
  v14 = [v13 supportsAutoGeocodingStructuredLocations];

  if (!v14)
  {
LABEL_6:
    [(EKCalendarItem *)self setClientLocation:v11];
    goto LABEL_7;
  }

  [(EKEvent *)self setStructuredLocation:v11];
LABEL_7:
  v15 = [v8 saveEvent:self span:3 commit:1 error:a5];

  return v15;
}

- (NSURL)launchURL
{
  v3 = [(EKObject *)self objectID];
  v4 = [v3 databaseID];
  v5 = *MEMORY[0x1E6992E18];
  v6 = MEMORY[0x1E695DFF8];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(EKEvent *)self startDate];
  [v8 timeIntervalSinceReferenceDate];
  if (v4 == v5)
  {
    [v7 stringWithFormat:@"calshow:%lf?eventid=%d", v9, objc_msgSend(v3, "rowID"), v13];
  }

  else
  {
    [v7 stringWithFormat:@"calshow:%lf?eventid=%d_%d", v9, objc_msgSend(v3, "databaseID"), objc_msgSend(v3, "rowID")];
  }
  v10 = ;
  v11 = [v6 URLWithString:v10];

  return v11;
}

+ (id)generateUniqueIDWithEvent:(id)a3 originalEvent:(id)a4 calendar:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 constraints];
  v9 = [v8 requiresMSFormattedUID];

  if (v9)
  {
    v10 = [v6 startTimeZone];
    if (v10)
    {
      if (v7)
      {
LABEL_4:
        v11 = [v7 uniqueID];
        v12 = [v6 originalStartDate];
        [v6 isAllDay];
        v13 = _EKMSUUIDStringForDetachedEvent();

LABEL_11:
        goto LABEL_14;
      }
    }

    else
    {
      v10 = [MEMORY[0x1E695DFE8] defaultTimeZone];
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v13 = _EKMSUUIDString();
    goto LABEL_11;
  }

  if ([v7 isReminderIntegrationEvent])
  {
    v14 = [v7 uniqueID];
  }

  else
  {
    if (v7)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = [v7 uniqueID];
      v17 = [v6 originalStartDate];
      [v17 timeIntervalSinceReferenceDate];
      v13 = [v15 stringWithFormat:@"%@/RID=%llu", v16, v18];

      goto LABEL_14;
    }

    v14 = EKUUIDString();
  }

  v13 = v14;
LABEL_14:

  return v13;
}

+ (id)uniqueIDForDetachedOccurrenceOfEvent:(id)a3 withOriginalStartDate:(id)a4 timeZone:(id)a5 allDay:(BOOL)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 constraints];
  v12 = [v11 requiresMSFormattedUID];

  if (v12)
  {
    if (!v9)
    {
      v9 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    }

    v13 = [v8 uniqueID];
    v14 = _EKMSUUIDStringForDetachedEvent();
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    v13 = [v8 uniqueID];
    [v10 timeIntervalSinceReferenceDate];
    v17 = v16;

    v14 = [v15 stringWithFormat:@"%@/RID=%llu", v13, v17];
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
  v3 = [(EKCalendarItem *)self attendees];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_respondToProposedTimeFromAttendee:(id)a3 shouldAccept:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  [v14 setCommentChanged:0];
  [v14 setStatusChanged:0];
  [v14 setProposedStartDateChanged:0];
  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  [v14 setProposedStartDateStatus:v6];
  v7 = v14;
  if (v4)
  {
    v8 = [v14 proposedStartDateForEvent:self];
    if (v8)
    {
      v9 = [(EKEvent *)self endDateUnadjustedForLegacyClients];
      v10 = [(EKEvent *)self startDate];
      [v9 timeIntervalSinceDate:v10];
      v12 = v11;

      [(EKEvent *)self setStartDate:v8];
      v13 = [v8 dateByAddingTimeInterval:v12];
      [(EKEvent *)self setEndDateUnadjustedForLegacyClients:v13];
    }

    [(EKEvent *)self dismissAcceptedProposeNewTimeNotification];

    v7 = v14;
  }
}

- (id)committedCopy
{
  if ([(EKEvent *)self isDetached]&& [(EKObject *)self hasNeverBeenCommitted])
  {
    v3 = objc_alloc(objc_opt_class());
    v4 = [(EKCalendarItem *)self originalItem];
    v5 = [v4 persistentObject];
    v6 = [(EKEvent *)self originalStartDate];
    v7 = [v3 initWithPersistentObject:v5 occurrenceDate:v6];

    v8 = [v7 committedCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = EKEvent;
    v8 = [(EKObject *)&v10 committedCopy];
  }

  return v8;
}

- (id)diffFromCommitted
{
  v3 = [(EKEvent *)self committedCopy];
  v4 = v3;
  if (v3)
  {
    [v3 diffWithObject:self];
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

- (BOOL)_diff:(id)a3 isDifferentFromCommittedEventHelperRequiresReschedule:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(EKEvent *)self isDifferentWithDiff:v6];
  v8 = [v6 differentKeys];
  if (-[EKCalendarItem hasAttendees](self, "hasAttendees") || [v8 containsObject:*MEMORY[0x1E6992568]])
  {
    v9 = MEMORY[0x1E695DFA8];
    v10 = [objc_opt_class() knownRequireRSVPKeys];
    v11 = [v9 setWithArray:v10];

    v12 = [v6 firstObject];
    v13 = [v6 secondObject];
    if (([v12 isDetached] & 1) == 0 && objc_msgSend(v13, "isDetached"))
    {
      v14 = [v12 startDate];
      v15 = [v13 startDate];
      v16 = [v14 isEqual:v15];

      if (v16)
      {
        [v11 removeObject:*MEMORY[0x1E69926C8]];
      }

      v17 = [v12 endDateUnadjustedForLegacyClients];
      v18 = [v13 endDateUnadjustedForLegacyClients];
      v19 = [v17 isEqual:v18];

      if (v19)
      {
        [v11 removeObject:*MEMORY[0x1E6992968]];
      }

      [v11 removeObject:*MEMORY[0x1E6992648]];
    }

    if (v4)
    {
      [v11 addObject:*MEMORY[0x1E6992568]];
      [v11 addObject:*MEMORY[0x1E69929D0]];
    }

    v20 = [v12 location];
    v21 = [v13 location];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      [v11 removeObject:*MEMORY[0x1E69926D8]];
    }

    v23 = [v8 intersectsSet:v11];
  }

  else
  {
    if (!v7)
    {
      v23 = 0;
      goto LABEL_16;
    }

    v11 = [(EKEvent *)self masterEvent];
    v23 = [v11 hasAttendees];
  }

LABEL_16:
  return v23;
}

- (BOOL)isDifferentAndModifiedAttendeesWithDiff:(id)a3
{
  v4 = a3;
  if ([(EKEvent *)self isDifferentWithDiff:v4])
  {
    v5 = [v4 differentKeys];
    if ([v5 containsObject:*MEMORY[0x1E6992568]] && (objc_msgSend(v5, "containsObject:", *MEMORY[0x1E6992920]) & 1) == 0)
    {
      v6 = [v5 containsObject:*MEMORY[0x1E6992650]] ^ 1;
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

- (BOOL)isDifferentAndHasForwardedAttendeesWithDiff:(id)a3
{
  v4 = a3;
  v5 = [(EKEvent *)self status]!= EKEventStatusCanceled && [(EKEvent *)self currentUserGeneralizedParticipantRole]== 1 && [(EKEvent *)self allowsAttendeesModifications]&& [(EKEvent *)self isDifferentAndModifiedAttendeesWithDiff:v4];

  return v5;
}

- (BOOL)isDifferentAndHasNewProposedTimeWithDiff:(id)a3
{
  v4 = a3;
  if ([(EKEvent *)self isDifferentWithDiff:v4])
  {
    v5 = [v4 summaryDictionary];
    v6 = [v5 objectForKey:*MEMORY[0x1E69929C0]];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDifferentExceptingPerUserPropertiesWithDiff:(id)a3
{
  v4 = a3;
  if ([(EKEvent *)self isDifferentWithDiff:v4])
  {
    v5 = MEMORY[0x1E695DFA8];
    v6 = [objc_opt_class() knownPerUserPropertyKeys];
    v7 = [v5 setWithArray:v6];

    v8 = objc_alloc(MEMORY[0x1E695DFA8]);
    v9 = [v4 differentKeys];
    v10 = [v8 initWithSet:v9];

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
  v2 = self;
  v3 = [(EKEvent *)self diffFromCommitted];
  LOBYTE(v2) = [(EKEvent *)v2 isDifferentAndRequiresRescheduleWithDiff:v3];

  return v2;
}

- (BOOL)isDifferentFromCommittedEventAndRequiresRSVP
{
  v2 = self;
  v3 = [(EKEvent *)self diffFromCommitted];
  LOBYTE(v2) = [(EKEvent *)v2 isDifferentAndRequiresRSVPWithDiff:v3];

  return v2;
}

- (BOOL)isDifferentAndHasUnscheduledAttendeesWithDiff:(id)a3
{
  v3 = [a3 summaryDictionary];
  v4 = [EKDiff summaryKeyForMultiValueAddOfPropertyKey:*MEMORY[0x1E6992568]];
  v5 = [v3 objectForKey:v4];
  v6 = v5 != 0;

  return v6;
}

- (BOOL)isDifferentFromCommittedEventAndHasUnscheduledAttendees
{
  v2 = self;
  v3 = [(EKEvent *)self diffFromCommitted];
  LOBYTE(v2) = [(EKEvent *)v2 isDifferentAndHasUnscheduledAttendeesWithDiff:v3];

  return v2;
}

- (int64_t)requirementsToMoveFromCalendar:(id)a3 toCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(EKEvent *)self _requirementsToMoveOrCopyToCalendarHelperAllowedToMoveOrCopyEventFromCalendar:v6 toCalendar:v7])
  {
    if ([(EKEvent *)self _requirementsToMoveToCalendarHelperDuplicationRequiredToMoveEventFromCalendar:v6 toCalendar:v7])
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    if ([(EKEvent *)self _requirementsToMoveToCalendarHelperAlterationsRequiredToMoveEventFromCalendar:v6 toCalendar:v7])
    {
      v9 = v8 | 8;
    }

    else
    {
      v9 = v8;
    }

    if ([(EKEvent *)self _requirementsToMoveToCalendarHelperReinviteAttendeesRequiredToMoveEventFromCalendar:v6 toCalendar:v7])
    {
      v10 = v9 | 0x20;
      if (!_bitmaskContainsOption(v9 | 0x20, 4) && [(EKEvent *)self _requirementsToMoveToCalendarHelperNeedToRemoveOriginalToMoveEventFromCalendar:v6 toCalendar:v7])
      {
        v10 = v9 | 0x30;
      }
    }

    else if ([(EKEvent *)self _requirementsToMoveToCalendarHelperRemoveAttendeesRequiredToMoveEventFromCalendar:v6 toCalendar:v7])
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

- (int64_t)requirementsToMoveToCalendar:(id)a3
{
  v4 = a3;
  v5 = [(EKCalendarItem *)self calendar];
  v6 = [(EKEvent *)self requirementsToMoveFromCalendar:v5 toCalendar:v4];

  return v6;
}

- (BOOL)_canMoveOrCopyFromCalendar:(id)a3 toCalendar:(id)a4 allowedRequirements:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [v11 source];
  if (v12)
  {
    v13 = [v11 source];
    v14 = [v13 isEnabledForEvents];
  }

  else
  {
    v14 = 1;
  }

  if (![v11 allowEvents] || (v14 & 1) == 0)
  {
    if (a6)
    {
      v17 = 22;
      goto LABEL_15;
    }

LABEL_21:
    v18 = 0;
    goto LABEL_22;
  }

  if ([v11 type] == 6 || objc_msgSend(v10, "type") == 6)
  {
    goto LABEL_21;
  }

  if (([v10 isEqual:v11] & 1) != 0 || (-[EKEvent constraints](self, "constraints"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "requiresOutgoingInvitationsInDefaultCalendar"), v15, !v16) || !-[EKCalendarItem isSelfOrganizedInvitation](self, "isSelfOrganizedInvitation"))
  {
    v19 = [(EKEvent *)self requirementsToMoveFromCalendar:v10 toCalendar:v11];
    if (v19 != 2 && _bitmaskContainsOption(a5, v19))
    {
      v18 = 1;
      goto LABEL_22;
    }

    if (a6)
    {
      v17 = 0;
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  if (!a6)
  {
    goto LABEL_21;
  }

  v17 = 12;
LABEL_15:
  [MEMORY[0x1E696ABC0] errorWithEKErrorCode:v17];
  *a6 = v18 = 0;
LABEL_22:

  return v18;
}

- (BOOL)seriesHasOutOfOrderEvents
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = [(EKCalendarItem *)self recurrenceRules];
  if (![v3 count])
  {

    goto LABEL_14;
  }

  v4 = [(EKCalendarItem *)self detachedItems];
  v5 = [v4 count];

  if (!v5)
  {
LABEL_14:
    v30 = 0;
    goto LABEL_15;
  }

  v34 = [(EKEvent *)self masterEvent];
  v6 = [MEMORY[0x1E695DF00] distantPast];
  v7 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = [v34 detachedItems];
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v9)
  {
    v10 = *v44;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        v13 = [v12 startDate];
        [v7 setObject:v12 forKeyedSubscript:v13];

        v14 = [v12 startDate];
        v15 = [v14 isAfterDate:v6];

        if (v15)
        {
          v16 = [v12 startDate];

          v6 = v16;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v9);
  }

  v17 = [(EKCalendarItem *)self recurrenceRules];
  v18 = [v17 objectAtIndexedSubscript:0];

  v19 = MEMORY[0x1E695DEE8];
  v20 = [(EKCalendarItem *)self timeZone];
  v21 = [v19 CalGregorianCalendarForTimeZone:v20];

  v22 = [v18 dateComponents];
  v23 = [v21 dateByAddingComponents:v22 toDate:v6 options:0];

  v24 = objc_alloc_init(EKRecurrenceGenerator);
  v25 = [v34 startDate];
  v26 = [(EKCalendarItem *)self timeZone];
  LOBYTE(v33) = 1;
  v27 = [(EKRecurrenceGenerator *)v24 copyOccurrenceDatesWithEKEvent:self startDate:v25 endDate:v23 timeZone:v26 exceptionDates:0 limit:0 adjustDatesForAllDayEvents:v33];

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
  v3 = [(EKCalendarItem *)self originalItem];
  v4 = [(EKCalendarItem *)self recurrenceRules];
  v5 = [v4 count];

  if (v5 || v3)
  {
    if (!v3)
    {
      v3 = self;
    }

    v7 = [(EKEvent *)self originalStartDate];
    if (!v7)
    {
      v8 = [(EKEvent *)self originalOccurrenceStartDate];
      v7 = [v8 date];
    }

    [(EKEvent *)self startDate];
    v45 = v44 = v3;
    v9 = [(EKCalendarItem *)v3 detachedItems];
    v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v11 = v9;
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
          v17 = [v16 originalStartDate];
          v18 = [v17 compare:v7];
          if (v18)
          {
            v19 = v18;
            [v10 addObject:v17];
            v20 = [v16 startDate];
            v21 = [v20 compare:v45];

            if (v21 != v19)
            {
              LOBYTE(v6) = 1;
              v23 = v11;
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
    v23 = [(EKCalendarItem *)v44 exceptionDates];
    v24 = v45;
    v25 = [v45 isBeforeDate:v7];
    if (v25)
    {
      v26 = v45;
    }

    else
    {
      v26 = v7;
    }

    if (v25)
    {
      v24 = v7;
    }

    v17 = v26;
    v43 = v24;
    v27 = objc_alloc_init(EKRecurrenceGenerator);
    v28 = [(EKEvent *)v44 effectiveTimeZone];
    v29 = [(EKCalendarItem *)v44 recurrenceRules];
    v30 = [v29 firstObject];

    LOBYTE(v39) = 1;
    v41 = v28;
    v42 = v27;
    v40 = v30;
    v31 = v30;
    v32 = v43;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v33 = [(EKRecurrenceGenerator *)v27 copyOccurrenceDatesWithEKEvent:v44 recurrenceRule:v31 startDate:v17 endDate:v43 timeZone:v28 exceptionDates:0 limit:0 adjustDatesForAllDayEvents:v39];
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
          if (([v36 isEqualToDate:v7] & 1) == 0 && (objc_msgSend(v23, "containsObject:", v36) & 1) == 0 && !objc_msgSend(v10, "containsObject:", v36))
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
  v3 = [(EKCalendarItem *)self recurrenceRuleString];

  if (v3)
  {
    v4 = [(EKEvent *)self masterEvent];
    if ([v4 overlapsWithOrIsSameDayAsEventInSeries])
    {
LABEL_14:
      v10 = 1;
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [(EKCalendarItem *)self detachedItems];
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
              objc_enumerationMutation(v5);
            }

            if ([*(*(&v13 + 1) + 8 * i) overlapsWithOrIsSameDayAsEventInSeries])
            {

              goto LABEL_14;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v10 = [(EKEvent *)self seriesHasOutOfOrderEvents];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_requirementsToMoveOrCopyToCalendarHelperAllowedToMoveOrCopyEventFromCalendar:(id)a3 toCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 allowsContentModifications] & 1) == 0)
  {
    v8 = [(EKEvent *)self suggestionInfo];
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = v8;
    v10 = [v7 isSuggestedEventCalendar];

    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if ([v6 sharingStatus] == 2)
  {
    if (![(EKEvent *)self privacyLevel])
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = [v6 source];
    if (([v11 isDelegate] & 1) == 0)
    {

      goto LABEL_11;
    }

    v12 = [(EKEvent *)self privacyLevel];

    if (!v12)
    {
LABEL_11:
      v13 = [v7 constraints];
      if ([v13 eventDurationConstrainedToRecurrenceInterval])
      {
        v14 = [(EKEvent *)self durationOverlapsRecurrenceInterval];

        if (v14)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      v15 = [v7 constraints];
      if ([v15 occurrencesMustOccurOnSeparateDays])
      {
        v16 = [(EKEvent *)self seriesHasOverlappingOrOnSameDayOrOutOfOrderEvents];

        if (v16)
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
    v3 = [(EKCalendarItem *)self alarms];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = [*(*(&v10 + 1) + 8 * i) absoluteDate];

          if (v7)
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    v6 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
  }

  else
  {
    v4 = MEMORY[0x1E695DEE8];
    v5 = [(EKCalendarItem *)self timeZone];
    v6 = [v4 CalGregorianCalendarForTimeZone:v5];
  }

  return v6;
}

- (BOOL)_suggestedStartDateHelperRecurrenceRuleRequiresExpansion:(id)a3 forDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 frequency] == 3)
  {
    v8 = [v6 daysOfTheYear];
    if ([v8 count])
    {
    }

    else
    {
      v11 = [v6 monthsOfTheYear];
      v12 = [v11 count];

      if (v12)
      {
        v13 = [(EKEvent *)self _nsCalendar];
        v14 = [v13 component:8 fromDate:v7];

        v10 = [v6 monthsOfTheYear];
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
        v9 = [v10 containsObject:v15] ^ 1;
        goto LABEL_22;
      }
    }
  }

  if (([v6 isPinnedToEndOfFrequency] & 1) == 0)
  {
    v10 = [v6 daysOfTheMonth];
    if ([v10 count])
    {
      LOBYTE(v9) = 1;
LABEL_23:

      goto LABEL_24;
    }

    v15 = [v6 daysOfTheWeek];
    if ([v15 count])
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      v16 = [v6 daysOfTheYear];
      if ([v16 count])
      {
        LOBYTE(v9) = 1;
      }

      else
      {
        v17 = [v6 monthsOfTheYear];
        if ([v17 count])
        {
          LOBYTE(v9) = 1;
        }

        else
        {
          v18 = [v6 setPositions];
          if ([v18 count])
          {
            LOBYTE(v9) = 1;
          }

          else
          {
            v19 = [v6 weeksOfTheYear];
            LOBYTE(v9) = [v19 count] != 0;
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

- (id)suggestedStartDateForCurrentRecurrenceRuleWithSimulatedNowDate:(id)a3
{
  v4 = a3;
  v5 = [(EKEvent *)self startDate];
  v6 = [(EKCalendarItem *)self recurrenceRules];
  v7 = [v6 firstObject];

  if (v7 && [(EKEvent *)self _suggestedStartDateHelperRecurrenceRuleRequiresExpansion:v7 forDate:v5])
  {
    if ([v7 interval] != 1)
    {
      v8 = [v7 copy];

      [v8 setInterval:1];
      v7 = v8;
    }

    v9 = [(EKEvent *)self _nsCalendar];
    v10 = [v9 copy];

    [v10 setFirstWeekday:{objc_msgSend(v7, "firstDayOfTheWeek")}];
    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v11 = [MEMORY[0x1E695DF00] date];
    }

    v12 = v11;
    v13 = MEMORY[0x1E695DF00];
    v14 = [(EKEvent *)self startDate];
    v29 = v12;
    v15 = [v13 dateWithDatePartFromDate:v12 timePartFromDate:v14 inCalendar:v10];

    v16 = [(EKEvent *)self startDate];
    LODWORD(v12) = [v16 isSameWeekAsDate:v15 inCalendar:v10];

    v17 = [(EKEvent *)self startDate];
    v18 = v17;
    if (v12)
    {
      if ([v17 isBeforeDate:v15])
      {
        v19 = [(EKEvent *)self startDate];
      }

      else
      {
        v19 = v15;
      }
    }

    else
    {
      v20 = [v17 isAfterDate:v15];

      v18 = [(EKEvent *)self startDate];
      if (!v20)
      {
LABEL_15:
        v22 = MEMORY[0x1E69930C8];
        v23 = [(EKCalendarItem *)self timeZone];
        v24 = [v22 calendarDateWithDate:v18 timeZone:v23];

        v25 = objc_alloc_init(EKRecurrenceGenerator);
        [(CalRecurrenceGenerator *)v25 setOnlyIncludeInitialDateIfItMatchesRecurrence:1];
        v26 = [(EKCalendarItem *)self recurrenceRules];
        v27 = [(EKRecurrenceGenerator *)v25 nextOccurrenceDateWithEKRecurrences:v26 forCalendarItem:self initialDate:v24 afterDate:v24 inclusive:1];

        v5 = v27;
        goto LABEL_16;
      }

      v19 = [v18 roundToCurrentWeekInCalendar:v10 withFirstWeekdayIndex:{objc_msgSend(v7, "firstDayOfTheWeek")}];
    }

    v21 = v19;

    v18 = v21;
    goto LABEL_15;
  }

LABEL_16:

  return v5;
}

- (BOOL)_isValidAttendee:(id)a3 forCalendar:(id)a4 selfAttendeeIsValid:(BOOL)a5
{
  v5 = a5;
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v5 || (-[EKCalendarItem selfAttendee](self, "selfAttendee"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToParticipant:v8], v10, (v11 & 1) == 0))
  {
    v13 = [v8 URL];
    v14 = [MEMORY[0x1E695DFF8] URLForNoMail];
    v15 = [v13 isEqual:v14];

    if (v15 & 1) != 0 || ([v9 ownerIdentityAddress], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v13, "isEqual:", v16), v16, (v17))
    {
      v12 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v18 = [v8 emailAddress];
    v19 = [v9 ownerIdentityAddress];
    v20 = [v19 resourceSpecifier];

    v21 = [v9 ownerIdentityEmail];
    if ([v18 isEqual:v21])
    {

LABEL_10:
      v12 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v22 = [v18 isEqual:v20];

    if (v22)
    {
      goto LABEL_10;
    }

    v23 = [v8 phoneNumber];
    v24 = [v9 ownerIdentityPhoneNumber];
    if ([v23 isEqual:v24])
    {
    }

    else
    {
      v25 = [v23 isEqual:v20];

      if ((v25 & 1) == 0)
      {
        v36 = [v13 absoluteString];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v26 = [v9 source];
        v27 = [v26 ownerAddresses];

        obj = v27;
        v28 = [v27 countByEnumeratingWithState:&v37 objects:v41 count:16];
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
              if ([v18 isEqual:v32] & 1) != 0 || (objc_msgSend(v23, "isEqual:", v32) & 1) != 0 || (objc_msgSend(v36, "isEqual:", v32))
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
  v3 = [(EKCalendarItem *)self attendees];
  v4 = [(EKCalendarItem *)self organizer];

  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
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
    v11 = v3;
  }

  v13 = v11;
LABEL_14:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)isAttendeeSameAsOrganizer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(EKCalendarItem *)self organizer];
    if (v5)
    {
      v6 = [(EKCalendarItem *)self organizer];
      v7 = [v6 isEqualToParticipant:v4];
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
  v4 = [(EKCalendarItem *)self attendees];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [(EKCalendarItem *)self organizer];
  if (([v6 isNew] & 1) != 0 || (v12 = objc_msgSend(v6, "existsInStore"), !v6) || v12)
  {
    v7 = [(EKCalendarItem *)self attendees];
    v8 = [(EKObject *)self eventStore];
    v9 = [EKObject objectsIDsExistingInStoreFromObjects:v7 eventStore:v8];

    v10 = [(EKCalendarItem *)self attendees];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__EKEvent_attendeesNotIncludingOrganizerOrLocationsOrResources__block_invoke;
    v15[3] = &unk_1E77FF320;
    v16 = v9;
    v17 = v6;
    v18 = v5;
    v11 = v9;
    [v10 enumerateObjectsUsingBlock:v15];
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

- (void)prefetchAttendeesWithAdditionalProperties:(id)a3
{
  v8 = a3;
  v4 = +[EKPersistentAttendee defaultPropertiesToLoad];
  v5 = v4;
  if ([v8 count])
  {
    v5 = [v8 arrayByAddingObjectsFromArray:v4];
  }

  v6 = [(EKObject *)self eventStore];
  v7 = [(EKCalendarItem *)self attendeesRaw];
  [v6 ensureLoadedProperties:v5 forObjects:v7];
}

- (BOOL)_requirementsToMoveToCalendarHelperAlterationsRequiredToMoveEventFromCalendar:(id)a3 toCalendar:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(EKEvent *)self isPrivacySet])
  {
    v8 = [v7 source];
    if ([v8 supportsPrivateEvents])
    {
      v9 = [v7 sharingStatus] == 2;
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

  v10 = [(EKCalendarItem *)self alarms];
  if ([v10 count] < 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v7 supportsMultipleAlarms] ^ 1;
  }

  v12 = v11 | v9;

  if ([(EKEvent *)self _hasAbsoluteAlarms])
  {
    v13 = [v7 constraints];
    v12 |= [v13 supportsAlarmTriggerDates] ^ 1;
  }

  if ([(EKCalendarItem *)self hasRecurrenceRules])
  {
    v14 = [v7 constraints];
    if ([v14 requiresOccurrencesConformToRecurrenceRule])
    {
      v15 = [(EKEvent *)self startDate];
      v16 = [(EKEvent *)self suggestedStartDateForCurrentRecurrenceRule];
      v12 |= [v15 isEqualToDate:v16] ^ 1;
    }
  }

  v17 = [(EKEvent *)self URL];
  if (v17)
  {
    v18 = [v7 constraints];
    v19 = [v18 supportsURLField] ^ 1;

    v12 |= v19;
  }

  v20 = [v6 source];
  v21 = [v20 sourceIdentifier];
  v22 = [v7 source];
  v23 = [v22 sourceIdentifier];
  if (([v21 isEqualToString:v23] & 1) == 0)
  {
    v24 = [(EKCalendarItem *)self attachments];
    v25 = [v24 count];

    if (v25)
    {
      v12 = 1;
    }
  }

  v26 = [(EKCalendarItem *)self timeZone];
  if (v26)
  {
  }

  else
  {
    v27 = [v7 constraints];
    v28 = [v27 supportsFloatingTimeZone];

    if ((v28 & 1) == 0)
    {
      v12 |= ![(EKEvent *)self isAllDay];
    }
  }

  if ([(EKCalendarItem *)self hasAttendees])
  {
    v29 = [v6 source];
    v30 = [v29 sourceIdentifier];
    v31 = [v7 source];
    v32 = [v31 sourceIdentifier];
    v33 = [v30 isEqualToString:v32];

    if ((v33 & 1) == 0)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v34 = [(EKCalendarItem *)self attendees];
      v35 = [v34 countByEnumeratingWithState:&v49 objects:v53 count:16];
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
              objc_enumerationMutation(v34);
            }

            if (![(EKEvent *)self isValidAttendee:*(*(&v49 + 1) + 8 * i) forCalendar:v7])
            {
              LOBYTE(v12) = 1;
              goto LABEL_37;
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v49 objects:v53 count:16];
          if (v36)
          {
            continue;
          }

          break;
        }
      }

LABEL_37:
    }

    if (![v6 type] && objc_msgSend(v7, "type") != 2 && objc_msgSend(v7, "type"))
    {
      v39 = [(EKCalendarItem *)self organizer];
      LOBYTE(v12) = v12 | ([v39 scheduleAgent] != 1);
    }
  }

  if ([(EKCalendarItem *)self hasRecurrenceRules])
  {
    v40 = [(EKCalendarItem *)self recurrenceRules];
    v41 = [v40 firstObject];

    if ([v41 frequency] == 2)
    {
      v42 = [v41 daysOfTheMonth];
      if ([v42 count] >= 2)
      {
        v43 = [v7 constraints];
        LOBYTE(v12) = v12 | [v43 prohibitsMultipleDaysInMonthlyRecurrence];
      }
    }

    v12 &= 1u;
    if ([v41 frequency] == 3)
    {
      v44 = [v41 monthsOfTheYear];
      if ([v44 count] >= 2)
      {
        v45 = [v7 constraints];
        v12 |= [v45 prohibitsMultipleMonthsInYearlyRecurrence];
      }
    }

    if ([v41 frequency] == 3 && objc_msgSend(v41, "interval") >= 2)
    {
      v46 = [v7 constraints];
      LOBYTE(v12) = v12 | [v46 prohibitsYearlyRecurrenceInterval];
    }
  }

  v47 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

+ (BOOL)_calendarsAreSharedToMeInSameSourceAndHaveSameOwner:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 source];

    v6 = [v3 objectAtIndexedSubscript:0];
    v7 = [v6 sharedOwnerAddress];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v3;
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

          v14 = [v13 source];
          v15 = [v5 isEqual:v14];

          if (v15)
          {
            v16 = [v13 sharedOwnerAddress];
            v17 = [v7 isEqualToString:v16];

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

- (BOOL)_requirementsToMoveToCalendarHelperDuplicationRequiredToMoveEventFromCalendar:(id)a3 toCalendar:(id)a4
{
  v25[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 allowsContentModifications])
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 isSuggestedEventCalendar] ^ 1;
  }

  if ([(EKCalendarItem *)self hasAttendees])
  {
    if ([v6 type] && (-[EKCalendarItem organizer](self, "organizer"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "scheduleAgent"), v9, v10 != 1))
    {
      if ([(EKEvent *)self isCurrentUserInvitedAttendee]|| ![(EKEvent *)self currentUserMayActAsOrganizer])
      {
        if ([v6 sharingStatus] == 2 || objc_msgSend(v7, "sharingStatus") == 2)
        {
          v25[0] = v6;
          v25[1] = v7;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
          v15 = ![EKEvent _calendarsAreSharedToMeInSameSourceAndHaveSameOwner:v14];

          if ([v6 sharingStatus] == 2)
          {
            v16 = [v6 allowsScheduling] ^ 1;
          }

          else
          {
            LOBYTE(v16) = 0;
          }

          v17 = v16 | v15;
          if ([v7 sharingStatus] == 2)
          {
            v18 = [v7 allowsScheduling] ^ 1;
          }

          else
          {
            LOBYTE(v18) = 0;
          }

          LOBYTE(v8) = v8 | v18 | v17;
        }

        else
        {
          v19 = [v6 source];
          v20 = [v19 sourceIdentifier];
          v21 = [v7 source];
          v22 = [v21 sourceIdentifier];
          v8 |= [v20 isEqualToString:v22] ^ 1;
        }
      }
    }

    else if ([(EKEvent *)self isCurrentUserInvitedAttendee])
    {
      v11 = [v7 sharingStatus];
      v12 = [v7 type];
      if (v11 == 2 || v12 == 2)
      {
        LOBYTE(v8) = 1;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_requirementsToMoveToCalendarHelperNeedToRemoveOriginalToMoveEventFromCalendar:(id)a3 toCalendar:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EKCalendarItem *)self organizer];
  if ([v8 scheduleAgent] == 1)
  {

LABEL_9:
    LOBYTE(v16) = 0;
    goto LABEL_10;
  }

  v9 = [v6 type];

  if (!v9 || ![(EKCalendarItem *)self hasAttendees])
  {
    goto LABEL_9;
  }

  v19[0] = v6;
  v19[1] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v11 = [v6 source];
  v12 = [v11 sourceIdentifier];
  v13 = [v7 source];
  v14 = [v13 sourceIdentifier];
  v15 = [v12 isEqualToString:v14];

  if (v15)
  {
    if ([v6 sharingStatus] == 2 || objc_msgSend(v7, "sharingStatus") == 2)
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

- (BOOL)_requirementsToMoveToCalendarHelperReinviteAttendeesRequiredToMoveEventFromCalendar:(id)a3 toCalendar:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(EKCalendarItem *)self hasAttendees]|| ![(EKEvent *)self currentUserMayActAsOrganizer])
  {
    goto LABEL_17;
  }

  v8 = [(EKCalendarItem *)self organizer];
  if ([v8 scheduleAgent] != 1)
  {
    v9 = [v6 type];

    if (!v9 || [v6 type] != 2 && objc_msgSend(v7, "type") == 2 || objc_msgSend(v6, "sharingStatus") == 2 && objc_msgSend(v7, "sharingStatus") != 2 && -[EKEvent isCurrentUserInvitedAttendee](self, "isCurrentUserInvitedAttendee"))
    {
      goto LABEL_17;
    }

    if ([v6 sharingStatus] == 2 || objc_msgSend(v7, "sharingStatus") == 2)
    {
      if ([v6 sharingStatus] != 2 || (objc_msgSend(v6, "allowsScheduling") & 1) != 0 || objc_msgSend(v7, "sharingStatus") != 2 || (objc_msgSend(v7, "allowsScheduling") & 1) != 0)
      {
        goto LABEL_17;
      }

      v17[0] = v6;
      v17[1] = v7;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      v10 = ![EKEvent _calendarsAreSharedToMeInSameSourceAndHaveSameOwner:v13];
    }

    else
    {
      v13 = [v6 source];
      v14 = [v13 sourceIdentifier];
      v15 = [v7 source];
      v16 = [v15 sourceIdentifier];
      v10 = [v14 isEqualToString:v16] ^ 1;
    }

    goto LABEL_18;
  }

LABEL_17:
  LOBYTE(v10) = 0;
LABEL_18:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_requirementsToMoveToCalendarHelperRemoveAttendeesRequiredToMoveEventFromCalendar:(id)a3 toCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(EKCalendarItem *)self hasAttendees])
  {
    if ([v6 type] != 2 && objc_msgSend(v7, "type") == 2 || objc_msgSend(v6, "sharingStatus") == 2 && objc_msgSend(v7, "sharingStatus") != 2 && -[EKEvent isCurrentUserInvitedAttendee](self, "isCurrentUserInvitedAttendee"))
    {
      v8 = 1;
    }

    else
    {
      v8 = [(EKEvent *)self _requirementsToMoveToCalendarHelperDuplicationRequiredToMoveEventFromCalendar:v6 toCalendar:v7];
      if ([(EKEvent *)self currentUserMayActAsOrganizer])
      {
        if ([v7 sharingStatus] == 2)
        {
          v9 = [v7 allowsScheduling] ^ 1;
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

+ (id)eventFromICSEvent:(id)a3 inStore:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(MEMORY[0x1E69E3C68]);
  v19[0] = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v8 setComponents:v9 options:0];

  v10 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithCalendar:v8];
  v11 = [v10 ICSDataWithOptions:0];
  v12 = [[EKEventStore alloc] initWithEKOptions:48];
  v13 = [(EKEventStore *)v12 defaultCalendarForNewEvents];
  v14 = [(EKEventStore *)v12 importICSData:v11 intoCalendar:v13 options:*MEMORY[0x1E6992E28]];

  v15 = [v14 firstObject];
  v16 = [v15 duplicateToEventStore:v6];
  [v16 setCalendar:0];

  objc_autoreleasePoolPop(v7);
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)setRecurrenceRuleFromICSString:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69E3CD8] recurrenceRuleFromICSString:v4];
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

- (id)_ekRecurrenceRuleFromICSRecurrenceRule:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v26 = self;
    context = objc_autoreleasePoolPush();
    v5 = objc_opt_new();
    [v5 setSummary:@"Temp event"];
    v28 = v4;
    v30[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [v5 setRrule:v6];

    v7 = objc_alloc(MEMORY[0x1E69E3C90]);
    v8 = [MEMORY[0x1E69E3CA0] dateFromICSString:@"20220717T000000Z"];
    v9 = [v7 initWithValue:v8];
    [v5 setDtstart:v9];

    v10 = [v5 dtstart];
    [v5 setDtend:v10];

    v11 = objc_alloc_init(MEMORY[0x1E69E3C68]);
    v29 = v5;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    [v11 setComponents:v12 options:0];

    v13 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithCalendar:v11];
    v14 = [v13 ICSDataWithOptions:0];
    v15 = [[EKEventStore alloc] initWithEKOptions:48];
    v16 = [(EKEventStore *)v15 defaultCalendarForNewEvents];
    v17 = [(EKEventStore *)v15 importICSData:v14 intoCalendar:v16 options:0];

    v18 = [v17 firstObject];
    v19 = [v18 recurrenceRules];
    v20 = [v19 lastObject];

    if (v20)
    {
      v21 = [(EKObject *)v26 eventStore];
      v22 = [v20 duplicateToEventStore:v21];
    }

    else
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [EKEvent _ekRecurrenceRuleFromICSRecurrenceRule:];
      }

      v22 = 0;
    }

    v4 = v28;

    objc_autoreleasePoolPop(context);
    if (v20)
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

- (void)updateWithVCSEntity:(id)a3 inCalendar:(id)a4
{
  v73[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v70.receiver = self;
  v70.super_class = EKEvent;
  [(EKCalendarItem *)&v70 updateWithVCSEntity:v6 inCalendar:a4];
  v7 = v6;
  v8 = [v7 startDate];
  v9 = [(EKEvent *)self effectiveTimeZone];
  v10 = [v8 nsDateWithLocalTimeZone:v9];

  v11 = [v7 endDate];
  v12 = [(EKEvent *)self effectiveTimeZone];
  v13 = [v11 nsDateWithLocalTimeZone:v12];

  if ([v8 floating])
  {
    [(EKEvent *)self setTimeZone:0];
  }

  else
  {
    v14 = [(EKEvent *)self effectiveTimeZone];
    [(EKEvent *)self setTimeZone:v14];
  }

  -[EKEvent setAllDay:](self, "setAllDay:", [v8 dateOnly]);
  [(EKEvent *)self setStartDate:v10];
  [(EKEvent *)self setEndDateUnadjustedForLegacyClients:v13];
  v15 = [v7 propertyForName:@"LOCATION"];
  v16 = [v15 singleValue];
  v17 = [v16 value];
  v18 = [v17 componentsJoinedByString:@" "];;

  if ([v18 length])
  {
    v19 = objc_alloc_init(EKStructuredLocation);
    [(EKStructuredLocation *)v19 setTitle:v18];
    [(EKEvent *)self setStructuredLocation:v19];
  }

  v20 = [v7 propertyForName:@"RRULE"];
  v21 = [v20 singleValue];
  v22 = [v21 value];

  if (v22)
  {
    v23 = [(EKEvent *)self _ekRecurrenceRuleFromVCSRecurrenceRule:v22];
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
  v27 = [v26 singleValue];
  v28 = [v27 value];
  v29 = [v28 unsignedIntegerValue];

  if (v29 > 2)
  {
    if (v29 == 3)
    {
      v31 = [(EKCalendarItem *)self calendar];
      if (([v31 supportedEventAvailabilities] & 0x10) != 0)
      {
        v29 = 4;
      }

      else
      {
        v29 = 3;
      }
    }

    else
    {
      if (v29 != 4)
      {
        v29 = 0;
        goto LABEL_26;
      }

      v31 = [(EKCalendarItem *)self calendar];
      if (([v31 supportedEventAvailabilities] & 0x20) != 0)
      {
        v29 = 5;
      }

      else
      {
        v29 = 3;
      }
    }

    goto LABEL_26;
  }

  if (v29 == 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = 0;
  }

  if (v29 != 1)
  {
    v29 = v30;
  }

LABEL_26:
  [(EKEvent *)self setAvailability:v29];
  v59 = v18;
  v60 = v13;
  v57 = v22;
  if (![v7 hasPropertyWithName:@"STATUS"])
  {
LABEL_31:
    v36 = 0;
    goto LABEL_32;
  }

  v32 = [v7 propertyForName:{@"STATUS", v22, v18, v13}];
  v33 = [v32 singleValue];
  v34 = [v33 value];
  v35 = [v34 unsignedIntegerValue];

  if (v35)
  {
    if (v35 != 7)
    {
      if (v35 == 1)
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
  v38 = [v37 values];

  v39 = [v38 countByEnumeratingWithState:&v66 objects:v72 count:16];
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
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v66 + 1) + 8 * i) value];
        v44 = [EKAttendee attendeeWithName:0 url:v43];
        [(EKCalendarItem *)self addAttendee:v44];
      }

      v40 = [v38 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v40);
  }

  v45 = [v7 propertyForName:@"EXDATE"];
  v46 = [v45 values];

  v47 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v46, "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v48 = v46;
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

        v53 = [*(*(&v62 + 1) + 8 * j) value];
        v54 = [v53 nsDateWithLocalTimeZone:0];
        [v47 addObject:v54];
      }

      v50 = [v48 countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v50);
  }

  [(EKCalendarItem *)self setExceptionDates:v47];
  v55 = [(EKObject *)self eventStore];
  [v55 saveEvent:self span:1 commit:0 error:0];

  v56 = *MEMORY[0x1E69E9840];
}

- (id)_ekRecurrenceRuleFromVCSRecurrenceRule:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_35;
  }

  v5 = [v3 recurrenceType];
  v6 = 0;
  if (v5 > 4)
  {
    if ((v5 - 5) < 2)
    {
      v6 = 3;
    }

    goto LABEL_9;
  }

  if ((v5 - 3) >= 2)
  {
    if (v5)
    {
      v6 = v5 == 2;
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
    v7 = [v4 endDate];

    if (v7)
    {
      v8 = [v4 endDate];
      v9 = [v8 nsDateWithLocalTimeZone:0];

      v34 = [[EKRecurrenceEnd alloc] initWithEndDate:v9];
    }

    else
    {
      v34 = 0;
    }
  }

  v10 = MEMORY[0x1E695DF70];
  v11 = [v4 weekdayList];
  v12 = [v10 arrayWithCapacity:{objc_msgSend(v11, "count")}];

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
        v18 = [v4 occurrenceList];
        v19 = [v18 count];

        if (v19)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v20 = [v4 occurrenceList];
          v21 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
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
                  objc_enumerationMutation(v20);
                }

                v25 = +[EKRecurrenceDayOfWeek dayOfWeek:weekNumber:](EKRecurrenceDayOfWeek, "dayOfWeek:weekNumber:", [objc_opt_class() ekWeekDayFromVCSWeekDay:{objc_msgSend(v17, "unsignedIntegerValue")}], objc_msgSend(*(*(&v41 + 1) + 8 * i), "integerValue"));
                [v12 addObject:v25];
              }

              v22 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
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
          v20 = +[EKRecurrenceDayOfWeek dayOfWeek:](EKRecurrenceDayOfWeek, "dayOfWeek:", [objc_opt_class() ekWeekDayFromVCSWeekDay:{objc_msgSend(v17, "unsignedIntegerValue")}]);
          [v12 addObject:v20];
        }

        ++v16;
      }

      while (v16 != v14);
      v14 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v14);
  }

  v26 = [EKRecurrenceRule alloc];
  v27 = [v4 interval];
  v28 = [v4 dayNumberList];
  v29 = [v4 monthList];
  v30 = [v4 dayList];
  v31 = [(EKRecurrenceRule *)v26 initRecurrenceWithFrequency:v35 interval:v27 daysOfTheWeek:v12 daysOfTheMonth:v28 monthsOfTheYear:v29 weeksOfTheYear:0 daysOfTheYear:v30 setPositions:0 end:v34];

LABEL_36:
  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

+ (int64_t)ekWeekDayFromVCSWeekDay:(unint64_t)a3
{
  if (a3 - 1 < 6)
  {
    return a3 + 1;
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
  v5 = a1;
  v6 = [a2 recurrenceRules];
  v8[0] = 67109376;
  v8[1] = [v6 count];
  v9 = 1024;
  v10 = [a3 count];
  _os_log_error_impl(&dword_1A805E000, v5, OS_LOG_TYPE_ERROR, "Calling _hasRecurrenceRuleChangeRequiringSpanAll on an event that has or had multiple recurrence rules is not supported. Results may be unpredictable. Current count = %d, previous = %d", v8, 0xEu);

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