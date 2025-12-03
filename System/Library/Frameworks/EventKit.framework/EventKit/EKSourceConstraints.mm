@interface EKSourceConstraints
+ (id)allAllowSourceConstraints;
- (EKSourceConstraints)init;
- (EKSourceConstraints)initWithCDBSourceConstraintFlags:(id *)flags;
- (EKSourceConstraints)initWithCoder:(id)coder;
- (EKSourceConstraints)initWithData:(id)data;
- (id)serialized;
- (void)setAllowsCalendarAddDeleteModify:(BOOL)modify;
- (void)setAllowsEvents:(BOOL)events;
- (void)setAllowsPrivateEventAccessByDelegate:(BOOL)delegate;
- (void)setAllowsProposeNewTime:(BOOL)time;
- (void)setAllowsTasks:(BOOL)tasks;
- (void)setAttendeesUseDeletedByOrganizerStatus:(BOOL)status;
- (void)setCanSetAvailability:(BOOL)availability;
- (void)setDeclinedStatusChangeRequiresNoPendingStatus:(BOOL)status;
- (void)setDeliverySourceOrExternalIDRequiredForResponse:(BOOL)response;
- (void)setEventAvailabilityLimited:(BOOL)limited;
- (void)setEventDurationConstrainedToRecurrenceInterval:(BOOL)interval;
- (void)setFutureStartDateLimitedToOccurrenceCacheBounds:(BOOL)bounds;
- (void)setInviteesCanSeeAttendeeStatuses:(BOOL)statuses;
- (void)setIsFacebook:(BOOL)facebook;
- (void)setMustAcknowledgeMasterEvent:(BOOL)event;
- (void)setOccurrenceOrderEnforcedAfterDetachment:(BOOL)detachment;
- (void)setOccurrencesMustOccurOnSeparateDays:(BOOL)days;
- (void)setOrganizerCanSeeAttendeeStatuses:(BOOL)statuses;
- (void)setProhibitsDetachmentOnCommentChange:(BOOL)change;
- (void)setProhibitsICSImport:(BOOL)import;
- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)recurrence;
- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)recurrence;
- (void)setProhibitsPrivateEventsWithAttendees:(BOOL)attendees;
- (void)setProhibitsSlicingEventsWithAttendees:(BOOL)attendees;
- (void)setProhibitsUsingEventOrganizerEmailWhenComposingMail:(BOOL)mail;
- (void)setProhibitsYearlyRecurrenceInterval:(BOOL)interval;
- (void)setProposedStatusRequiredForResponse:(BOOL)response;
- (void)setRecurrenceSeriesMustIncludeMoreThanFirstOccurrence:(BOOL)occurrence;
- (void)setRecurrencesShouldPinToMonthDays:(BOOL)days;
- (void)setRequiresAttendeeSearchInSingleAccount:(BOOL)account;
- (void)setRequiresMSFormattedUID:(BOOL)d;
- (void)setRequiresOccurrencesConformToRecurrenceRule:(BOOL)rule;
- (void)setRequiresOpeningAttachmentAsLink:(BOOL)link;
- (void)setRequiresOutgoingInvitationsInDefaultCalendar:(BOOL)calendar;
- (void)setRequiresSamePrivacyLevelAcrossRecurrenceSeries:(BOOL)series;
- (void)setRequiresSeparateFilesForAllAttachments:(BOOL)attachments;
- (void)setShouldCancelDeletedEvents:(BOOL)events;
- (void)setShouldDeclineDeletedInvitations:(BOOL)invitations;
- (void)setShouldUseDeleteAndAddInsteadOfMoveBetweenCalendars:(BOOL)calendars;
- (void)setSnoozeAlarmRequiresDetach:(BOOL)detach;
- (void)setStatusesAreAccurate:(BOOL)accurate;
- (void)setSupportsAlarmProximity:(BOOL)proximity;
- (void)setSupportsAlarmTriggerDates:(BOOL)dates;
- (void)setSupportsAlarmTriggerIntervals:(BOOL)intervals;
- (void)setSupportsAlarmsTriggeringAfterStartDate:(BOOL)date;
- (void)setSupportsAllDayDueDates:(BOOL)dates;
- (void)setSupportsAttachments:(BOOL)attachments;
- (void)setSupportsAutoGeocodingStructuredLocations:(BOOL)locations;
- (void)setSupportsAvailabilityRequests:(BOOL)requests;
- (void)setSupportsClearingPrivateComments:(BOOL)comments;
- (void)setSupportsDefaultAlarms:(BOOL)alarms;
- (void)setSupportsDelegation:(BOOL)delegation;
- (void)setSupportsEventForwarding:(BOOL)forwarding;
- (void)setSupportsFloatingTimeZone:(BOOL)zone;
- (void)setSupportsIgnoringEventsInAvailabilityRequests:(BOOL)requests;
- (void)setSupportsInboxAvailability:(BOOL)availability;
- (void)setSupportsIncomingInvitations:(BOOL)invitations;
- (void)setSupportsInvitationModifications:(BOOL)modifications;
- (void)setSupportsInvitationModificationsWithoutNotification:(BOOL)notification;
- (void)setSupportsJunkReporting:(BOOL)reporting;
- (void)setSupportsLocationDirectorySearches:(BOOL)searches;
- (void)setSupportsManagedSubscribedCalendars:(BOOL)calendars;
- (void)setSupportsOutgoingInvitations:(BOOL)invitations;
- (void)setSupportsParticipantRoles:(BOOL)roles;
- (void)setSupportsPhoneNumbers:(BOOL)numbers;
- (void)setSupportsPrivateEvents:(BOOL)events;
- (void)setSupportsPush:(BOOL)push;
- (void)setSupportsRecurrenceSplit:(BOOL)split;
- (void)setSupportsRecurrencesOnDetachedEvents:(BOOL)events;
- (void)setSupportsReminderActions:(BOOL)actions;
- (void)setSupportsReminderLocations:(BOOL)locations;
- (void)setSupportsResponseComments:(BOOL)comments;
- (void)setSupportsSharedCalendars:(BOOL)calendars;
- (void)setSupportsStructuredLocations:(BOOL)locations;
- (void)setSupportsSubscribedCalendars:(BOOL)calendars;
- (void)setSupportsSubscriptionMirroring:(BOOL)mirroring;
- (void)setSupportsTravelTime:(BOOL)time;
- (void)setSupportsURLField:(BOOL)field;
@end

@implementation EKSourceConstraints

+ (id)allAllowSourceConstraints
{
  v4[0] = xmmword_1A81C3A9C;
  *(v4 + 12) = *(&xmmword_1A81C3A9C + 12);
  v2 = [[EKSourceConstraints alloc] initWithCDBSourceConstraintFlags:v4];

  return v2;
}

- (EKSourceConstraints)initWithCDBSourceConstraintFlags:(id *)flags
{
  v6.receiver = self;
  v6.super_class = EKSourceConstraints;
  result = [(EKSourceConstraints *)&v6 init];
  if (result)
  {
    v5 = *&flags->var0;
    *&result->_flags.strictestEventPrivateValue = *&flags->var3;
    *&result->_flags.maxAlarmsAllowed = v5;
  }

  return result;
}

- (EKSourceConstraints)initWithData:(id)data
{
  dataCopy = data;
  memset(v10, 0, 28);
  if ([dataCopy length] == 28)
  {
    [dataCopy getBytes:v10 length:28];
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

- (EKSourceConstraints)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = EKSourceConstraints;
  v5 = [(EKSourceConstraints *)&v12 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v11 = 0;
  v6 = [coderCopy decodeBytesForKey:@"flags" returnedLength:&v11];
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

- (void)setSupportsAlarmTriggerIntervals:(BOOL)intervals
{
  v3 = 2;
  if (!intervals)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setSupportsAlarmTriggerDates:(BOOL)dates
{
  v3 = 4;
  if (!dates)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setSupportsAlarmsTriggeringAfterStartDate:(BOOL)date
{
  v3 = 8;
  if (!date)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setSupportsDefaultAlarms:(BOOL)alarms
{
  if (alarms)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFEFFFF | v3;
}

- (void)setSnoozeAlarmRequiresDetach:(BOOL)detach
{
  v3 = 16;
  if (!detach)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setOrganizerCanSeeAttendeeStatuses:(BOOL)statuses
{
  v3 = 32;
  if (!statuses)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setInviteesCanSeeAttendeeStatuses:(BOOL)statuses
{
  v3 = 64;
  if (!statuses)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setStatusesAreAccurate:(BOOL)accurate
{
  v3 = 128;
  if (!accurate)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setSupportsIncomingInvitations:(BOOL)invitations
{
  v3 = 256;
  if (!invitations)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setSupportsOutgoingInvitations:(BOOL)invitations
{
  v3 = 512;
  if (!invitations)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setRequiresOutgoingInvitationsInDefaultCalendar:(BOOL)calendar
{
  v3 = 1024;
  if (!calendar)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setSupportsInvitationModifications:(BOOL)modifications
{
  v3 = 2048;
  if (!modifications)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setSupportsEventForwarding:(BOOL)forwarding
{
  v3 = 4096;
  if (!forwarding)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setSupportsResponseComments:(BOOL)comments
{
  v3 = 0x2000;
  if (!comments)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setDeliverySourceOrExternalIDRequiredForResponse:(BOOL)response
{
  v3 = 0x4000;
  if (!response)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setProposedStatusRequiredForResponse:(BOOL)response
{
  v3 = 0x8000;
  if (!response)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setDeclinedStatusChangeRequiresNoPendingStatus:(BOOL)status
{
  v3 = 0x10000;
  if (!status)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setEventDurationConstrainedToRecurrenceInterval:(BOOL)interval
{
  v3 = 0x20000;
  if (!interval)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setOccurrencesMustOccurOnSeparateDays:(BOOL)days
{
  v3 = 0x80000;
  if (!days)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setFutureStartDateLimitedToOccurrenceCacheBounds:(BOOL)bounds
{
  v3 = 0x100000;
  if (!bounds)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setSupportsRecurrencesOnDetachedEvents:(BOOL)events
{
  v3 = 0x200000;
  if (!events)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setRecurrencesShouldPinToMonthDays:(BOOL)days
{
  v3 = 0x400000;
  if (!days)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setRequiresAttendeeSearchInSingleAccount:(BOOL)account
{
  v3 = 0x800000;
  if (!account)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setMustAcknowledgeMasterEvent:(BOOL)event
{
  v3 = 0x1000000;
  if (!event)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setCanSetAvailability:(BOOL)availability
{
  v3 = 0x2000000;
  if (!availability)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setEventAvailabilityLimited:(BOOL)limited
{
  v3 = 0x4000000;
  if (!limited)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setRequiresMSFormattedUID:(BOOL)d
{
  v3 = 0x8000000;
  if (!d)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setShouldCancelDeletedEvents:(BOOL)events
{
  v3 = 0x10000000;
  if (!events)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setShouldDeclineDeletedInvitations:(BOOL)invitations
{
  v3 = 0x20000000;
  if (!invitations)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setSupportsStructuredLocations:(BOOL)locations
{
  v3 = 0x40000000;
  if (!locations)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setSupportsReminderActions:(BOOL)actions
{
  v3 = 0x80000000;
  if (!actions)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setSupportsReminderLocations:(BOOL)locations
{
  v3 = 0x100000000;
  if (!locations)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setSupportsAlarmProximity:(BOOL)proximity
{
  v3 = 0x200000000;
  if (!proximity)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setAllowsCalendarAddDeleteModify:(BOOL)modify
{
  v3 = 0x400000000;
  if (!modify)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setAllowsTasks:(BOOL)tasks
{
  v3 = 0x800000000;
  if (!tasks)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setAllowsEvents:(BOOL)events
{
  v3 = 0x1000000000;
  if (!events)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setSupportsURLField:(BOOL)field
{
  v3 = 0x2000000000;
  if (!field)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setSupportsAllDayDueDates:(BOOL)dates
{
  v3 = 0x4000000000;
  if (!dates)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setSupportsSharedCalendars:(BOOL)calendars
{
  v3 = 0x8000000000;
  if (!calendars)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setIsFacebook:(BOOL)facebook
{
  v3 = 0x10000000000;
  if (!facebook)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setRecurrenceSeriesMustIncludeMoreThanFirstOccurrence:(BOOL)occurrence
{
  v3 = 0x20000000000;
  if (!occurrence)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setSupportsPrivateEvents:(BOOL)events
{
  v3 = 0x40000000000;
  if (!events)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setProhibitsPrivateEventsWithAttendees:(BOOL)attendees
{
  v3 = 0x80000000000;
  if (!attendees)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setSupportsAvailabilityRequests:(BOOL)requests
{
  v3 = 0x100000000000;
  if (!requests)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setSupportsIgnoringEventsInAvailabilityRequests:(BOOL)requests
{
  v3 = 0x200000000000;
  if (!requests)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setSupportsLocationDirectorySearches:(BOOL)searches
{
  v3 = 0x400000000000;
  if (!searches)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setRequiresSamePrivacyLevelAcrossRecurrenceSeries:(BOOL)series
{
  v3 = 0x800000000000;
  if (!series)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setSupportsInboxAvailability:(BOOL)availability
{
  v3 = 0x1000000000000;
  if (!availability)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)recurrence
{
  v3 = 0x2000000000000;
  if (!recurrence)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)recurrence
{
  v3 = 0x4000000000000;
  if (!recurrence)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (void)setProhibitsYearlyRecurrenceInterval:(BOOL)interval
{
  v3 = 0x8000000000000;
  if (!interval)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)setRequiresOccurrencesConformToRecurrenceRule:(BOOL)rule
{
  v3 = 0x10000000000000;
  if (!rule)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setProhibitsDetachmentOnCommentChange:(BOOL)change
{
  v3 = 0x20000000000000;
  if (!change)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)setAllowsProposeNewTime:(BOOL)time
{
  v3 = 0x40000000000000;
  if (!time)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFFBFFFFFFFFFFFFFLL | v3;
}

- (void)setProhibitsICSImport:(BOOL)import
{
  v3 = 0x80000000000000;
  if (!import)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)setSupportsAutoGeocodingStructuredLocations:(BOOL)locations
{
  v3 = 0x100000000000000;
  if (!locations)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setSupportsJunkReporting:(BOOL)reporting
{
  v3 = 0x200000000000000;
  if (!reporting)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (void)setSupportsPhoneNumbers:(BOOL)numbers
{
  v3 = 0x400000000000000;
  if (!numbers)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setAttendeesUseDeletedByOrganizerStatus:(BOOL)status
{
  v3 = 0x800000000000000;
  if (!status)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setProhibitsSlicingEventsWithAttendees:(BOOL)attendees
{
  v3 = 0x1000000000000000;
  if (!attendees)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setSupportsSubscribedCalendars:(BOOL)calendars
{
  v3 = 0x2000000000000000;
  if (!calendars)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)setSupportsManagedSubscribedCalendars:(BOOL)calendars
{
  if (calendars)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFF7F | v3;
}

- (void)setSupportsSubscriptionMirroring:(BOOL)mirroring
{
  if (mirroring)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFEFF | v3;
}

- (void)setSupportsParticipantRoles:(BOOL)roles
{
  if (roles)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFDFF | v3;
}

- (void)setSupportsAttachments:(BOOL)attachments
{
  v3 = 0x4000000000000000;
  if (!attachments)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setRequiresOpeningAttachmentAsLink:(BOOL)link
{
  if (link)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFFEF | v3;
}

- (void)setSupportsClearingPrivateComments:(BOOL)comments
{
  if (comments)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFF7FFF | v3;
}

- (void)setShouldUseDeleteAndAddInsteadOfMoveBetweenCalendars:(BOOL)calendars
{
  if (calendars)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFFDF | v3;
}

- (void)setSupportsFloatingTimeZone:(BOOL)zone
{
  if (zone)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFFFD | v3;
}

- (void)setProhibitsUsingEventOrganizerEmailWhenComposingMail:(BOOL)mail
{
  if (mail)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFFFB | v3;
}

- (void)setSupportsDelegation:(BOOL)delegation
{
  v3 = 0x8000000000000000;
  if (!delegation)
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = v3 & 0x8000000000000000 | *(&self->_flags + 2) & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setSupportsInvitationModificationsWithoutNotification:(BOOL)notification
{
  if (notification)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFFBF | v3;
}

- (void)setSupportsRecurrenceSplit:(BOOL)split
{
  if (split)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFFF7 | v3;
}

- (void)setSupportsPush:(BOOL)push
{
  if (push)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFFBFF | v3;
}

- (void)setSupportsTravelTime:(BOOL)time
{
  if (time)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFF7FF | v3;
}

- (void)setRequiresSeparateFilesForAllAttachments:(BOOL)attachments
{
  if (attachments)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFEFFF | v3;
}

- (void)setOccurrenceOrderEnforcedAfterDetachment:(BOOL)detachment
{
  if (detachment)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFFFFDFFF | v3;
}

- (void)setAllowsPrivateEventAccessByDelegate:(BOOL)delegate
{
  if (delegate)
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