@interface EKCalendarEventInvitationNotification
- (BOOL)acknowledgeWithEventStore:(id)store error:(id *)error;
- (BOOL)containsBlockedAttendee;
- (BOOL)containsCachedBlockedAttendee;
- (BOOL)couldBeJunk;
- (BOOL)hasRecurrenceRules;
- (BOOL)isProposedNewTime;
- (BOOL)needsReply;
- (BOOL)proposedStartDateIsInFutureForAttendee:(id)attendee;
- (EKCalendarEventInvitationNotification)initWithEvent:(id)event;
- (id)copyWithZone:(_NSZone *)zone;
- (id)nearestProposedTime;
@end

@implementation EKCalendarEventInvitationNotification

- (EKCalendarEventInvitationNotification)initWithEvent:(id)event
{
  eventCopy = event;
  status = [eventCopy status];
  if (status == 3)
  {
    v6 = 0;
    recurrenceChanged = 2;
  }

  else if ([eventCopy attendeeReplyChanged])
  {
    v6 = 1;
    recurrenceChanged = 3;
  }

  else if ([eventCopy dateChanged] & 1) != 0 || (objc_msgSend(eventCopy, "timeChanged") & 1) != 0 || (objc_msgSend(eventCopy, "titleChanged") & 1) != 0 || (objc_msgSend(eventCopy, "locationChanged") & 1) != 0 || (objc_msgSend(eventCopy, "videoConferenceChanged"))
  {
    v6 = 0;
    recurrenceChanged = 1;
  }

  else
  {
    v6 = 0;
    recurrenceChanged = [eventCopy recurrenceChanged];
  }

  v74.receiver = self;
  v74.super_class = EKCalendarEventInvitationNotification;
  v8 = [(EKCalendarNotification *)&v74 initWithType:recurrenceChanged];
  if (v8)
  {
    title = [eventCopy title];
    [(EKCalendarNotification *)v8 setTitle:title];

    locationWithoutPrediction = [eventCopy locationWithoutPrediction];
    [(EKCalendarEventInvitationNotification *)v8 setLocation:locationWithoutPrediction];

    organizer = [eventCopy organizer];
    name = [organizer name];
    [(EKCalendarNotification *)v8 setName:name];

    selfAttendee = [eventCopy selfAttendee];
    name2 = [selfAttendee name];
    [(EKCalendarNotification *)v8 setRecipientName:name2];

    organizer2 = [eventCopy organizer];
    firstName = [organizer2 firstName];
    [(EKCalendarNotification *)v8 setFirstName:firstName];

    organizer3 = [eventCopy organizer];
    lastName = [organizer3 lastName];
    [(EKCalendarNotification *)v8 setLastName:lastName];

    organizer4 = [eventCopy organizer];
    emailAddress = [organizer4 emailAddress];
    [(EKCalendarNotification *)v8 setEmailAddress:emailAddress];

    organizer5 = [eventCopy organizer];
    phoneNumber = [organizer5 phoneNumber];
    [(EKCalendarNotification *)v8 setPhoneNumber:phoneNumber];

    -[EKCalendarNotification setHiddenFromNotificationCenter:](v8, "setHiddenFromNotificationCenter:", [eventCopy invitationStatus] == 1);
    calendar = [eventCopy calendar];
    -[EKCalendarNotification setDotColor:](v8, "setDotColor:", [calendar CGColor]);

    -[EKCalendarNotification setAlerted:](v8, "setAlerted:", [eventCopy invitationStatus] != 3);
    calendar2 = [eventCopy calendar];
    source = [calendar2 source];
    [(EKCalendarNotification *)v8 setSource:source];

    objectID = [eventCopy objectID];
    [(EKCalendarNotification *)v8 setObjectID:objectID];

    externalURL = [eventCopy externalURL];
    [(EKCalendarNotification *)v8 setURL:externalURL];

    -[EKCalendarEventInvitationNotification setStatus:](v8, "setStatus:", [eventCopy status]);
    startDate = [eventCopy startDate];
    [(EKCalendarEventInvitationNotification *)v8 setStartDate:startDate];

    calSimulatedDateForNow = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
    v30 = [eventCopy earliestOccurrenceEndingAfter:calSimulatedDateForNow excludeSignificantDetachments:1 excludeCanceledDetachments:status != 3 excludeDeclinedDetachments:1];
    startDate2 = [v30 startDate];
    [(EKCalendarEventInvitationNotification *)v8 setStartDateForNextOccurrence:startDate2];

    endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
    [(EKCalendarEventInvitationNotification *)v8 setEndDate:endDateUnadjustedForLegacyClients];

    -[EKCalendarEventInvitationNotification setAllDay:](v8, "setAllDay:", [eventCopy isAllDay]);
    timeZone = [eventCopy timeZone];
    [(EKCalendarEventInvitationNotification *)v8 setTimeZone:timeZone];

    recurrenceRules = [eventCopy recurrenceRules];
    firstObject = [recurrenceRules firstObject];
    [(EKCalendarEventInvitationNotification *)v8 setRecurrenceRule:firstObject];

    participationStatusModifiedDate = [eventCopy participationStatusModifiedDate];
    [(EKCalendarEventInvitationNotification *)v8 setParticipationStatusModifiedDate:participationStatusModifiedDate];

    -[EKCalendarEventInvitationNotification setParticipationStatus:](v8, "setParticipationStatus:", [eventCopy participationStatus]);
    -[EKCalendarEventInvitationNotification setTimeChanged:](v8, "setTimeChanged:", [eventCopy timeChanged]);
    -[EKCalendarEventInvitationNotification setDateChanged:](v8, "setDateChanged:", [eventCopy dateChanged]);
    -[EKCalendarEventInvitationNotification setTitleChanged:](v8, "setTitleChanged:", [eventCopy titleChanged]);
    -[EKCalendarEventInvitationNotification setLocationChanged:](v8, "setLocationChanged:", [eventCopy locationChanged]);
    -[EKCalendarEventInvitationNotification setVideoConferenceChanged:](v8, "setVideoConferenceChanged:", [eventCopy videoConferenceChanged]);
    -[EKCalendarEventInvitationNotification setRecurrenceChanged:](v8, "setRecurrenceChanged:", [eventCopy recurrenceChanged]);
    -[EKCalendarEventInvitationNotification setAttendeeReplyChanged:](v8, "setAttendeeReplyChanged:", [eventCopy attendeeReplyChanged]);
    [(EKCalendarNotification *)v8 setEvent:eventCopy];
    calendar3 = [eventCopy calendar];
    [(EKCalendarNotification *)v8 setCalendar:calendar3];

    selfAttendee2 = [eventCopy selfAttendee];
    inviterNameString = [selfAttendee2 inviterNameString];
    v40 = [inviterNameString length];

    if (v40)
    {
      selfAttendee3 = [eventCopy selfAttendee];
      inviterNameString2 = [selfAttendee3 inviterNameString];
      invitedBy = v8->_invitedBy;
      v8->_invitedBy = inviterNameString2;
    }

    if (v6)
    {
      v44 = objc_opt_new();
      attendees = [eventCopy attendees];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __55__EKCalendarEventInvitationNotification_initWithEvent___block_invoke;
      v71[3] = &unk_1E77FE2F0;
      v72 = eventCopy;
      v46 = v44;
      v73 = v46;
      [attendees enumerateObjectsUsingBlock:v71];

      objc_storeStrong(&v8->_attendees, v44);
      v65 = 0;
      v66 = &v65;
      v67 = 0x3032000000;
      v68 = __Block_byref_object_copy__9;
      v69 = __Block_byref_object_dispose__9;
      v70 = 0;
      attendees = v8->_attendees;
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __55__EKCalendarEventInvitationNotification_initWithEvent___block_invoke_10;
      v64[3] = &unk_1E77FE318;
      v64[4] = &v65;
      [(NSArray *)attendees enumerateObjectsUsingBlock:v64];
      v48 = v66[5];
      if (v48)
      {
        name3 = [v48 name];
        [(EKCalendarNotification *)v8 setName:name3];

        firstName2 = [v66[5] firstName];
        [(EKCalendarNotification *)v8 setFirstName:firstName2];

        lastName2 = [v66[5] lastName];
        [(EKCalendarNotification *)v8 setLastName:lastName2];

        emailAddress2 = [v66[5] emailAddress];
        [(EKCalendarNotification *)v8 setEmailAddress:emailAddress2];

        phoneNumber2 = [v66[5] phoneNumber];
        [(EKCalendarNotification *)v8 setPhoneNumber:phoneNumber2];

        v54 = [v66[5] participantType] == 2 && objc_msgSend(v66[5], "participantStatus") == 3;
        [(EKCalendarEventInvitationNotification *)v8 setIsLocationDecline:v54];
      }

      _Block_object_dispose(&v65, 8);
    }

    organizer6 = [eventCopy organizer];

    if (organizer6)
    {
      v56 = [EKCalendarEventInvitationNotificationAttendee alloc];
      organizer7 = [eventCopy organizer];
      v58 = [(EKCalendarEventInvitationNotificationAttendee *)v56 initWithParticipant:organizer7 forEvent:eventCopy];
      owner = v8->_owner;
      v8->_owner = v58;
    }

    eventStore = [eventCopy eventStore];
    blockList = [eventStore blockList];
    blockList = v8->_blockList;
    v8->_blockList = blockList;
  }

  return v8;
}

void __55__EKCalendarEventInvitationNotification_initWithEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[EKCalendarEventInvitationNotificationAttendee alloc] initWithParticipant:v3 forEvent:*(a1 + 32)];

  [*(a1 + 40) addObject:v4];
}

void __55__EKCalendarEventInvitationNotification_initWithEvent___block_invoke_10(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 proposedStartDateDeclined] && (objc_msgSend(v10, "isCurrentUser") & 1) != 0)
  {
    goto LABEL_13;
  }

  if ([v10 statusChanged] && objc_msgSend(v10, "participantStatus") == 3)
  {
LABEL_12:
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
LABEL_13:
    *a4 = 1;
    goto LABEL_14;
  }

  if ([v10 proposedStartDateChanged])
  {
    v7 = [v10 proposedStartDate];
    if (v7)
    {

      goto LABEL_12;
    }

    if (([v10 commentChanged] & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_11:
    v8 = [v10 comment];
    v9 = [v8 length];

    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if ([v10 commentChanged])
  {
    goto LABEL_11;
  }

LABEL_14:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [EKCalendarEventInvitationNotification alloc];
  event = [(EKCalendarNotification *)self event];
  v6 = [(EKCalendarEventInvitationNotification *)v4 initWithEvent:event];

  return v6;
}

- (BOOL)hasRecurrenceRules
{
  recurrenceRule = [(EKCalendarEventInvitationNotification *)self recurrenceRule];
  v3 = recurrenceRule != 0;

  return v3;
}

- (BOOL)needsReply
{
  event = [(EKCalendarNotification *)self event];
  if ([event isSelfOrganizedInvitation])
  {
    v3 = 0;
  }

  else
  {
    selfAttendee = [event selfAttendee];
    v3 = ([selfAttendee rsvpRequested] & 1) != 0 || objc_msgSend(selfAttendee, "participantStatus") == 1 || objc_msgSend(selfAttendee, "participantStatus") == 0;
  }

  return v3;
}

- (BOOL)isProposedNewTime
{
  if ([(EKCalendarEventInvitationNotification *)self expanded])
  {
    expandedProposedTimeAttendee = [(EKCalendarEventInvitationNotification *)self expandedProposedTimeAttendee];
    proposedStartDate = [expandedProposedTimeAttendee proposedStartDate];
    v5 = proposedStartDate != 0;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    attendees = [(EKCalendarEventInvitationNotification *)self attendees];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__EKCalendarEventInvitationNotification_isProposedNewTime__block_invoke;
    v8[3] = &unk_1E77FE340;
    v8[4] = &v13;
    v8[5] = &v9;
    [attendees enumerateObjectsUsingBlock:v8];

    v5 = (v10[3] & 1) == 0 && v14[3] > 0;
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
  }

  return v5;
}

void __58__EKCalendarEventInvitationNotification_isProposedNewTime__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 proposedStartDateChanged])
  {
    v6 = [v7 proposedStartDate];

    if (v6)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
      if ([v7 proposedStartDateDeclined])
      {
        if ([v7 isCurrentUser])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          *a4 = 1;
        }
      }
    }
  }
}

- (id)nearestProposedTime
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(EKCalendarEventInvitationNotification *)self expanded])
  {
    expandedProposedTimeAttendee = [(EKCalendarEventInvitationNotification *)self expandedProposedTimeAttendee];
    proposedStartDate = [expandedProposedTimeAttendee proposedStartDate];
  }

  else
  {
    expandedProposedTimeAttendee = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    attendees = [(EKCalendarEventInvitationNotification *)self attendees];
    v6 = [attendees countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      proposedStartDate = 0;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(attendees);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          if ([v10 proposedStartDateChanged])
          {
            proposedStartDate2 = [v10 proposedStartDate];
            if (proposedStartDate2)
            {
              v12 = proposedStartDate2;
              proposedStartDate3 = [v10 proposedStartDate];
              v14 = [proposedStartDate3 isAfterDate:expandedProposedTimeAttendee];

              if (v14)
              {
                if (([v10 proposedStartDateDeclined] & 1) == 0)
                {
                  if (!proposedStartDate || ([v10 proposedStartDate], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isBeforeDate:", proposedStartDate), v15, v16))
                  {
                    proposedStartDate4 = [v10 proposedStartDate];

                    proposedStartDate = proposedStartDate4;
                  }
                }
              }
            }
          }
        }

        v7 = [attendees countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    else
    {
      proposedStartDate = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return proposedStartDate;
}

- (BOOL)proposedStartDateIsInFutureForAttendee:(id)attendee
{
  v3 = MEMORY[0x1E695DF00];
  attendeeCopy = attendee;
  v5 = [v3 now];
  proposedStartDate = [attendeeCopy proposedStartDate];

  LOBYTE(attendeeCopy) = [proposedStartDate isAfterDate:v5];
  return attendeeCopy;
}

- (BOOL)acknowledgeWithEventStore:(id)store error:(id *)error
{
  storeCopy = store;
  v7 = [(EKCalendarEventInvitationNotification *)self eventFromEventStore:storeCopy];
  if (v7)
  {
    if ([(EKCalendarNotification *)self type]== 3)
    {
      [v7 dismissAttendeeRepliedNotification];
    }

    else
    {
      [v7 setInvitationStatus:0];
      [v7 setIsAlerted:1];
    }

    v14 = 0;
    v9 = [storeCopy saveEvent:v7 span:2 commit:1 error:&v14];
    v10 = v14;
    if (v9)
    {
      goto LABEL_12;
    }

    v11 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKCalendarEventInvitationNotification *)v11 acknowledgeWithEventStore:v10 error:?];
      if (!error)
      {
        goto LABEL_12;
      }
    }

    else if (!error)
    {
LABEL_12:

      goto LABEL_13;
    }

    v12 = v10;
    *error = v10;
    goto LABEL_12;
  }

  v8 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKCalendarEventInvitationNotification acknowledgeWithEventStore:v8 error:self];
  }

  v9 = 1;
LABEL_13:

  return v9;
}

- (BOOL)couldBeJunk
{
  event = [(EKCalendarNotification *)self event];
  couldBeJunk = [event couldBeJunk];

  return couldBeJunk;
}

- (BOOL)containsBlockedAttendee
{
  v26 = *MEMORY[0x1E69E9840];
  if (([(CalBlockList *)self->_blockList isEmpty]& 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    event = [(EKCalendarNotification *)self event];
    attendees = [event attendees];

    obj = attendees;
    v7 = [attendees countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v20 = *v22;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          emailAddress = [v10 emailAddress];
          if (emailAddress)
          {
            blockList = self->_blockList;
            emailAddress2 = [v10 emailAddress];
            if ([(CalBlockList *)blockList isBlockedWithEmail:emailAddress2])
            {

LABEL_21:
              v4 = 1;
              goto LABEL_22;
            }
          }

          phoneNumber = [v10 phoneNumber];
          if (phoneNumber)
          {
            v14 = self->_blockList;
            phoneNumber2 = [v10 phoneNumber];
            v16 = [(CalBlockList *)v14 isBlockedWithPhoneNumber:phoneNumber2];

            if (emailAddress)
            {

              if (v16)
              {
                goto LABEL_21;
              }
            }

            else if (v16)
            {
              goto LABEL_21;
            }
          }

          else
          {

            if (emailAddress)
            {
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
LABEL_22:
  }

  v17 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)containsCachedBlockedAttendee
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  event = [(EKCalendarNotification *)self event];
  attendees = [event attendees];

  v7 = [attendees countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(attendees);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        emailAddress = [v10 emailAddress];
        if (emailAddress)
        {
          [v3 addObject:emailAddress];
        }

        phoneNumber = [v10 phoneNumber];
        if (phoneNumber)
        {
          [v4 addObject:phoneNumber];
        }
      }

      v7 = [attendees countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  blockList = self->_blockList;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__EKCalendarEventInvitationNotification_containsCachedBlockedAttendee__block_invoke;
  v17[3] = &unk_1E77FE368;
  v17[4] = &v18;
  [(CalBlockList *)blockList batchCachedEmails:v3 phoneNumbers:v4 completionHandler:v17];
  v14 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  v15 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

void __70__EKCalendarEventInvitationNotification_containsCachedBlockedAttendee__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if ([a2 count])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v6 count] != 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
}

- (void)acknowledgeWithEventStore:(uint64_t)a3 error:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 objectID];
  v8 = 138543618;
  v9 = v6;
  v10 = 2112;
  v11 = a3;
  _os_log_error_impl(&dword_1A805E000, v5, OS_LOG_TYPE_ERROR, "Failed to clear attendee replied notification %{public}@: %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)acknowledgeWithEventStore:(void *)a1 error:(void *)a2 .cold.2(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 objectID];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Failed to fetch event for attendee replied notification %{public}@ when attempting to acknowledge. Silently ignoring.", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end