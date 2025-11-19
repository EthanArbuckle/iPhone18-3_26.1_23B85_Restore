@interface EKSourceConstraints
+ (id)allAllowSourceConstraints;
- (EKSourceConstraints)init;
- (EKSourceConstraints)initWithCDBSourceConstraintFlags:(id *)a3;
- (EKSourceConstraints)initWithCoder:(id)a3;
- (EKSourceConstraints)initWithData:(id)a3;
- (id)serialized;
- (void)setAllowsCalendarAddDeleteModify:(BOOL)a3;
- (void)setAllowsEvents:(BOOL)a3;
- (void)setAllowsPrivateEventAccessByDelegate:(BOOL)a3;
- (void)setAllowsProposeNewTime:(BOOL)a3;
- (void)setAllowsTasks:(BOOL)a3;
- (void)setAttendeesUseDeletedByOrganizerStatus:(BOOL)a3;
- (void)setCanSetAvailability:(BOOL)a3;
- (void)setDeclinedStatusChangeRequiresNoPendingStatus:(BOOL)a3;
- (void)setDeliverySourceOrExternalIDRequiredForResponse:(BOOL)a3;
- (void)setEventAvailabilityLimited:(BOOL)a3;
- (void)setEventDurationConstrainedToRecurrenceInterval:(BOOL)a3;
- (void)setFutureStartDateLimitedToOccurrenceCacheBounds:(BOOL)a3;
- (void)setInviteesCanSeeAttendeeStatuses:(BOOL)a3;
- (void)setIsFacebook:(BOOL)a3;
- (void)setMustAcknowledgeMasterEvent:(BOOL)a3;
- (void)setOccurrenceOrderEnforcedAfterDetachment:(BOOL)a3;
- (void)setOccurrencesMustOccurOnSeparateDays:(BOOL)a3;
- (void)setOrganizerCanSeeAttendeeStatuses:(BOOL)a3;
- (void)setProhibitsDetachmentOnCommentChange:(BOOL)a3;
- (void)setProhibitsICSImport:(BOOL)a3;
- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)a3;
- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)a3;
- (void)setProhibitsPrivateEventsWithAttendees:(BOOL)a3;
- (void)setProhibitsSlicingEventsWithAttendees:(BOOL)a3;
- (void)setProhibitsUsingEventOrganizerEmailWhenComposingMail:(BOOL)a3;
- (void)setProhibitsYearlyRecurrenceInterval:(BOOL)a3;
- (void)setProposedStatusRequiredForResponse:(BOOL)a3;
- (void)setRecurrenceSeriesMustIncludeMoreThanFirstOccurrence:(BOOL)a3;
- (void)setRecurrencesShouldPinToMonthDays:(BOOL)a3;
- (void)setRequiresAttendeeSearchInSingleAccount:(BOOL)a3;
- (void)setRequiresMSFormattedUID:(BOOL)a3;
- (void)setRequiresOccurrencesConformToRecurrenceRule:(BOOL)a3;
- (void)setRequiresOpeningAttachmentAsLink:(BOOL)a3;
- (void)setRequiresOutgoingInvitationsInDefaultCalendar:(BOOL)a3;
- (void)setRequiresSamePrivacyLevelAcrossRecurrenceSeries:(BOOL)a3;
- (void)setRequiresSeparateFilesForAllAttachments:(BOOL)a3;
- (void)setShouldCancelDeletedEvents:(BOOL)a3;
- (void)setShouldDeclineDeletedInvitations:(BOOL)a3;
- (void)setShouldUseDeleteAndAddInsteadOfMoveBetweenCalendars:(BOOL)a3;
- (void)setSnoozeAlarmRequiresDetach:(BOOL)a3;
- (void)setStatusesAreAccurate:(BOOL)a3;
- (void)setSupportsAlarmProximity:(BOOL)a3;
- (void)setSupportsAlarmTriggerDates:(BOOL)a3;
- (void)setSupportsAlarmTriggerIntervals:(BOOL)a3;
- (void)setSupportsAlarmsTriggeringAfterStartDate:(BOOL)a3;
- (void)setSupportsAllDayDueDates:(BOOL)a3;
- (void)setSupportsAttachments:(BOOL)a3;
- (void)setSupportsAutoGeocodingStructuredLocations:(BOOL)a3;
- (void)setSupportsAvailabilityRequests:(BOOL)a3;
- (void)setSupportsClearingPrivateComments:(BOOL)a3;
- (void)setSupportsDefaultAlarms:(BOOL)a3;
- (void)setSupportsDelegation:(BOOL)a3;
- (void)setSupportsEventForwarding:(BOOL)a3;
- (void)setSupportsFloatingTimeZone:(BOOL)a3;
- (void)setSupportsIgnoringEventsInAvailabilityRequests:(BOOL)a3;
- (void)setSupportsInboxAvailability:(BOOL)a3;
- (void)setSupportsIncomingInvitations:(BOOL)a3;
- (void)setSupportsInvitationModifications:(BOOL)a3;
- (void)setSupportsInvitationModificationsWithoutNotification:(BOOL)a3;
- (void)setSupportsJunkReporting:(BOOL)a3;
- (void)setSupportsLocationDirectorySearches:(BOOL)a3;
- (void)setSupportsManagedSubscribedCalendars:(BOOL)a3;
- (void)setSupportsOutgoingInvitations:(BOOL)a3;
- (void)setSupportsParticipantRoles:(BOOL)a3;
- (void)setSupportsPhoneNumbers:(BOOL)a3;
- (void)setSupportsPrivateEvents:(BOOL)a3;
- (void)setSupportsPush:(BOOL)a3;
- (void)setSupportsRecurrenceSplit:(BOOL)a3;
- (void)setSupportsRecurrencesOnDetachedEvents:(BOOL)a3;
- (void)setSupportsReminderActions:(BOOL)a3;
- (void)setSupportsReminderLocations:(BOOL)a3;
- (void)setSupportsResponseComments:(BOOL)a3;
- (void)setSupportsSharedCalendars:(BOOL)a3;
- (void)setSupportsStructuredLocations:(BOOL)a3;
- (void)setSupportsSubscribedCalendars:(BOOL)a3;
- (void)setSupportsSubscriptionMirroring:(BOOL)a3;
- (void)setSupportsTravelTime:(BOOL)a3;
- (void)setSupportsURLField:(BOOL)a3;
@end

@implementation EKSourceConstraints

+ (id)allAllowSourceConstraints
{
  v4[0] = xmmword_1A81C3A9C;
  *(v4 + 12) = *(&xmmword_1A81C3A9C + 12);
  v2 = [[EKSourceConstraints alloc] initWithCDBSourceConstraintFlags:v4];

  return v2;
}

- (EKSourceConstraints)initWithCDBSourceConstraintFlags:(id *)a3
{
  v6.receiver = self;
  v6.super_class = EKSourceConstraints;
  result = [(EKSourceConstraints *)&v6 init];
  if (result)
  {
    v5 = *&a3->var0;
    *&result->_flags.strictestEventPrivateValue = *&a3->var3;
    *&result->_flags.maxAlarmsAllowed = v5;
  }

  return result;
}

- (EKSourceConstraints)initWithData:(id)a3
{
  v4 = a3;
  memset(v10, 0, 28);
  if ([v4 length] == 28)
  {
    [v4 getBytes:v10 length:28];
    v5 = [EKSourceConstraints alloc];
    v9[0] = v10[0];
    *(v9 + 12) = *(v10 + 12);
    v6 = [(EKSourceConstraints *)v5 initWithCDBSourceConstraintFlags:v9];
  }

  else
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKSourceConstraints initWithData:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (EKSourceConstraints)init
{
  v3[0] = *MEMORY[0x1E6992E50];
  *(v3 + 12) = *(MEMORY[0x1E6992E50] + 12);
  return [(EKSourceConstraints *)self initWithCDBSourceConstraintFlags:v3];
}

- (id)serialized
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&self->_flags length:28];

  return v2;
}

- (EKSourceConstraints)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = EKSourceConstraints;
  v5 = [(EKSourceConstraints *)&v12 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v11 = 0;
  v6 = [v4 decodeBytesForKey:@"flags" returnedLength:&v11];
  if (v11 == 28)
  {
    v7 = *v6;
    *(v5 + 20) = *(v6 + 12);
    *(v5 + 8) = v7;
LABEL_4:
    v8 = v5;
    goto LABEL_8;
  }

  v9 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKSourceConstraints initWithData:v9];
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)setSupportsAlarmTriggerIntervals:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setSupportsAlarmTriggerDates:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setSupportsAlarmsTriggeringAfterStartDate:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setSupportsDefaultAlarms:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFEFFFF | v3;
}

- (void)setSnoozeAlarmRequiresDetach:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setOrganizerCanSeeAttendeeStatuses:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setInviteesCanSeeAttendeeStatuses:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setStatusesAreAccurate:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setSupportsIncomingInvitations:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setSupportsOutgoingInvitations:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setRequiresOutgoingInvitationsInDefaultCalendar:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setSupportsInvitationModifications:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setSupportsEventForwarding:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setSupportsResponseComments:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setDeliverySourceOrExternalIDRequiredForResponse:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setProposedStatusRequiredForResponse:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setDeclinedStatusChangeRequiresNoPendingStatus:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setEventDurationConstrainedToRecurrenceInterval:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setOccurrencesMustOccurOnSeparateDays:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setFutureStartDateLimitedToOccurrenceCacheBounds:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setSupportsRecurrencesOnDetachedEvents:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setRecurrencesShouldPinToMonthDays:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setRequiresAttendeeSearchInSingleAccount:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setMustAcknowledgeMasterEvent:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setCanSetAvailability:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setEventAvailabilityLimited:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setRequiresMSFormattedUID:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setShouldCancelDeletedEvents:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setShouldDeclineDeletedInvitations:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setSupportsStructuredLocations:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setSupportsReminderActions:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setSupportsReminderLocations:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setSupportsAlarmProximity:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setAllowsCalendarAddDeleteModify:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setAllowsTasks:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setAllowsEvents:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setSupportsURLField:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setSupportsAllDayDueDates:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setSupportsSharedCalendars:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setIsFacebook:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setRecurrenceSeriesMustIncludeMoreThanFirstOccurrence:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setSupportsPrivateEvents:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setProhibitsPrivateEventsWithAttendees:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setSupportsAvailabilityRequests:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setSupportsIgnoringEventsInAvailabilityRequests:(BOOL)a3
{
  v3 = 0x200000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setSupportsLocationDirectorySearches:(BOOL)a3
{
  v3 = 0x400000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setRequiresSamePrivacyLevelAcrossRecurrenceSeries:(BOOL)a3
{
  v3 = 0x800000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setSupportsInboxAvailability:(BOOL)a3
{
  v3 = 0x1000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)a3
{
  v3 = 0x2000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)a3
{
  v3 = 0x4000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (void)setProhibitsYearlyRecurrenceInterval:(BOOL)a3
{
  v3 = 0x8000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)setRequiresOccurrencesConformToRecurrenceRule:(BOOL)a3
{
  v3 = 0x10000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setProhibitsDetachmentOnCommentChange:(BOOL)a3
{
  v3 = 0x20000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)setAllowsProposeNewTime:(BOOL)a3
{
  v3 = 0x40000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFBFFFFFFFFFFFFFLL | v3;
}

- (void)setProhibitsICSImport:(BOOL)a3
{
  v3 = 0x80000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)setSupportsAutoGeocodingStructuredLocations:(BOOL)a3
{
  v3 = 0x100000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setSupportsJunkReporting:(BOOL)a3
{
  v3 = 0x200000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (void)setSupportsPhoneNumbers:(BOOL)a3
{
  v3 = 0x400000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setAttendeesUseDeletedByOrganizerStatus:(BOOL)a3
{
  v3 = 0x800000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setProhibitsSlicingEventsWithAttendees:(BOOL)a3
{
  v3 = 0x1000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setSupportsSubscribedCalendars:(BOOL)a3
{
  v3 = 0x2000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)setSupportsManagedSubscribedCalendars:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFF7F | v3;
}

- (void)setSupportsSubscriptionMirroring:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFEFF | v3;
}

- (void)setSupportsParticipantRoles:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFDFF | v3;
}

- (void)setSupportsAttachments:(BOOL)a3
{
  v3 = 0x4000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setRequiresOpeningAttachmentAsLink:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFFEF | v3;
}

- (void)setSupportsClearingPrivateComments:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFF7FFF | v3;
}

- (void)setShouldUseDeleteAndAddInsteadOfMoveBetweenCalendars:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFFDF | v3;
}

- (void)setSupportsFloatingTimeZone:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFFFD | v3;
}

- (void)setProhibitsUsingEventOrganizerEmailWhenComposingMail:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFFFB | v3;
}

- (void)setSupportsDelegation:(BOOL)a3
{
  v3 = 0x8000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = v3 & 0x8000000000000000 | *(&self->_flags + 2) & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setSupportsInvitationModificationsWithoutNotification:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFFBF | v3;
}

- (void)setSupportsRecurrenceSplit:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFFF7 | v3;
}

- (void)setSupportsPush:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFBFF | v3;
}

- (void)setSupportsTravelTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFF7FF | v3;
}

- (void)setRequiresSeparateFilesForAllAttachments:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFEFFF | v3;
}

- (void)setOccurrenceOrderEnforcedAfterDetachment:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFDFFF | v3;
}

- (void)setAllowsPrivateEventAccessByDelegate:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFBFFF | v3;
}

@end