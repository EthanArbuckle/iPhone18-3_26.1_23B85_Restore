@interface EKCalendarEventInvitationNotification
- (BOOL)acknowledgeWithEventStore:(id)a3 error:(id *)a4;
- (BOOL)containsBlockedAttendee;
- (BOOL)containsCachedBlockedAttendee;
- (BOOL)couldBeJunk;
- (BOOL)hasRecurrenceRules;
- (BOOL)isProposedNewTime;
- (BOOL)needsReply;
- (BOOL)proposedStartDateIsInFutureForAttendee:(id)a3;
- (EKCalendarEventInvitationNotification)initWithEvent:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)nearestProposedTime;
@end

@implementation EKCalendarEventInvitationNotification

- (EKCalendarEventInvitationNotification)initWithEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 status];
  if (v5 == 3)
  {
    v6 = 0;
    v7 = 2;
  }

  else if ([v4 attendeeReplyChanged])
  {
    v6 = 1;
    v7 = 3;
  }

  else if ([v4 dateChanged] & 1) != 0 || (objc_msgSend(v4, "timeChanged") & 1) != 0 || (objc_msgSend(v4, "titleChanged") & 1) != 0 || (objc_msgSend(v4, "locationChanged") & 1) != 0 || (objc_msgSend(v4, "videoConferenceChanged"))
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = [v4 recurrenceChanged];
  }

  v74.receiver = self;
  v74.super_class = EKCalendarEventInvitationNotification;
  v8 = [(EKCalendarNotification *)&v74 initWithType:v7];
  if (v8)
  {
    v9 = [v4 title];
    [(EKCalendarNotification *)v8 setTitle:v9];

    v10 = [v4 locationWithoutPrediction];
    [(EKCalendarEventInvitationNotification *)v8 setLocation:v10];

    v11 = [v4 organizer];
    v12 = [v11 name];
    [(EKCalendarNotification *)v8 setName:v12];

    v13 = [v4 selfAttendee];
    v14 = [v13 name];
    [(EKCalendarNotification *)v8 setRecipientName:v14];

    v15 = [v4 organizer];
    v16 = [v15 firstName];
    [(EKCalendarNotification *)v8 setFirstName:v16];

    v17 = [v4 organizer];
    v18 = [v17 lastName];
    [(EKCalendarNotification *)v8 setLastName:v18];

    v19 = [v4 organizer];
    v20 = [v19 emailAddress];
    [(EKCalendarNotification *)v8 setEmailAddress:v20];

    v21 = [v4 organizer];
    v22 = [v21 phoneNumber];
    [(EKCalendarNotification *)v8 setPhoneNumber:v22];

    -[EKCalendarNotification setHiddenFromNotificationCenter:](v8, "setHiddenFromNotificationCenter:", [v4 invitationStatus] == 1);
    v23 = [v4 calendar];
    -[EKCalendarNotification setDotColor:](v8, "setDotColor:", [v23 CGColor]);

    -[EKCalendarNotification setAlerted:](v8, "setAlerted:", [v4 invitationStatus] != 3);
    v24 = [v4 calendar];
    v25 = [v24 source];
    [(EKCalendarNotification *)v8 setSource:v25];

    v26 = [v4 objectID];
    [(EKCalendarNotification *)v8 setObjectID:v26];

    v27 = [v4 externalURL];
    [(EKCalendarNotification *)v8 setURL:v27];

    -[EKCalendarEventInvitationNotification setStatus:](v8, "setStatus:", [v4 status]);
    v28 = [v4 startDate];
    [(EKCalendarEventInvitationNotification *)v8 setStartDate:v28];

    v29 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
    v30 = [v4 earliestOccurrenceEndingAfter:v29 excludeSignificantDetachments:1 excludeCanceledDetachments:v5 != 3 excludeDeclinedDetachments:1];
    v31 = [v30 startDate];
    [(EKCalendarEventInvitationNotification *)v8 setStartDateForNextOccurrence:v31];

    v32 = [v4 endDateUnadjustedForLegacyClients];
    [(EKCalendarEventInvitationNotification *)v8 setEndDate:v32];

    -[EKCalendarEventInvitationNotification setAllDay:](v8, "setAllDay:", [v4 isAllDay]);
    v33 = [v4 timeZone];
    [(EKCalendarEventInvitationNotification *)v8 setTimeZone:v33];

    v34 = [v4 recurrenceRules];
    v35 = [v34 firstObject];
    [(EKCalendarEventInvitationNotification *)v8 setRecurrenceRule:v35];

    v36 = [v4 participationStatusModifiedDate];
    [(EKCalendarEventInvitationNotification *)v8 setParticipationStatusModifiedDate:v36];

    -[EKCalendarEventInvitationNotification setParticipationStatus:](v8, "setParticipationStatus:", [v4 participationStatus]);
    -[EKCalendarEventInvitationNotification setTimeChanged:](v8, "setTimeChanged:", [v4 timeChanged]);
    -[EKCalendarEventInvitationNotification setDateChanged:](v8, "setDateChanged:", [v4 dateChanged]);
    -[EKCalendarEventInvitationNotification setTitleChanged:](v8, "setTitleChanged:", [v4 titleChanged]);
    -[EKCalendarEventInvitationNotification setLocationChanged:](v8, "setLocationChanged:", [v4 locationChanged]);
    -[EKCalendarEventInvitationNotification setVideoConferenceChanged:](v8, "setVideoConferenceChanged:", [v4 videoConferenceChanged]);
    -[EKCalendarEventInvitationNotification setRecurrenceChanged:](v8, "setRecurrenceChanged:", [v4 recurrenceChanged]);
    -[EKCalendarEventInvitationNotification setAttendeeReplyChanged:](v8, "setAttendeeReplyChanged:", [v4 attendeeReplyChanged]);
    [(EKCalendarNotification *)v8 setEvent:v4];
    v37 = [v4 calendar];
    [(EKCalendarNotification *)v8 setCalendar:v37];

    v38 = [v4 selfAttendee];
    v39 = [v38 inviterNameString];
    v40 = [v39 length];

    if (v40)
    {
      v41 = [v4 selfAttendee];
      v42 = [v41 inviterNameString];
      invitedBy = v8->_invitedBy;
      v8->_invitedBy = v42;
    }

    if (v6)
    {
      v44 = objc_opt_new();
      v45 = [v4 attendees];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __55__EKCalendarEventInvitationNotification_initWithEvent___block_invoke;
      v71[3] = &unk_1E77FE2F0;
      v72 = v4;
      v46 = v44;
      v73 = v46;
      [v45 enumerateObjectsUsingBlock:v71];

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
        v49 = [v48 name];
        [(EKCalendarNotification *)v8 setName:v49];

        v50 = [v66[5] firstName];
        [(EKCalendarNotification *)v8 setFirstName:v50];

        v51 = [v66[5] lastName];
        [(EKCalendarNotification *)v8 setLastName:v51];

        v52 = [v66[5] emailAddress];
        [(EKCalendarNotification *)v8 setEmailAddress:v52];

        v53 = [v66[5] phoneNumber];
        [(EKCalendarNotification *)v8 setPhoneNumber:v53];

        v54 = [v66[5] participantType] == 2 && objc_msgSend(v66[5], "participantStatus") == 3;
        [(EKCalendarEventInvitationNotification *)v8 setIsLocationDecline:v54];
      }

      _Block_object_dispose(&v65, 8);
    }

    v55 = [v4 organizer];

    if (v55)
    {
      v56 = [EKCalendarEventInvitationNotificationAttendee alloc];
      v57 = [v4 organizer];
      v58 = [(EKCalendarEventInvitationNotificationAttendee *)v56 initWithParticipant:v57 forEvent:v4];
      owner = v8->_owner;
      v8->_owner = v58;
    }

    v60 = [v4 eventStore];
    v61 = [v60 blockList];
    blockList = v8->_blockList;
    v8->_blockList = v61;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [EKCalendarEventInvitationNotification alloc];
  v5 = [(EKCalendarNotification *)self event];
  v6 = [(EKCalendarEventInvitationNotification *)v4 initWithEvent:v5];

  return v6;
}

- (BOOL)hasRecurrenceRules
{
  v2 = [(EKCalendarEventInvitationNotification *)self recurrenceRule];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)needsReply
{
  v2 = [(EKCalendarNotification *)self event];
  if ([v2 isSelfOrganizedInvitation])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 selfAttendee];
    v3 = ([v4 rsvpRequested] & 1) != 0 || objc_msgSend(v4, "participantStatus") == 1 || objc_msgSend(v4, "participantStatus") == 0;
  }

  return v3;
}

- (BOOL)isProposedNewTime
{
  if ([(EKCalendarEventInvitationNotification *)self expanded])
  {
    v3 = [(EKCalendarEventInvitationNotification *)self expandedProposedTimeAttendee];
    v4 = [v3 proposedStartDate];
    v5 = v4 != 0;
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
    v6 = [(EKCalendarEventInvitationNotification *)self attendees];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__EKCalendarEventInvitationNotification_isProposedNewTime__block_invoke;
    v8[3] = &unk_1E77FE340;
    v8[4] = &v13;
    v8[5] = &v9;
    [v6 enumerateObjectsUsingBlock:v8];

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
    v3 = [(EKCalendarEventInvitationNotification *)self expandedProposedTimeAttendee];
    v4 = [v3 proposedStartDate];
  }

  else
  {
    v3 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [(EKCalendarEventInvitationNotification *)self attendees];
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v4 = 0;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          if ([v10 proposedStartDateChanged])
          {
            v11 = [v10 proposedStartDate];
            if (v11)
            {
              v12 = v11;
              v13 = [v10 proposedStartDate];
              v14 = [v13 isAfterDate:v3];

              if (v14)
              {
                if (([v10 proposedStartDateDeclined] & 1) == 0)
                {
                  if (!v4 || ([v10 proposedStartDate], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isBeforeDate:", v4), v15, v16))
                  {
                    v17 = [v10 proposedStartDate];

                    v4 = v17;
                  }
                }
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    else
    {
      v4 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)proposedStartDateIsInFutureForAttendee:(id)a3
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a3;
  v5 = [v3 now];
  v6 = [v4 proposedStartDate];

  LOBYTE(v4) = [v6 isAfterDate:v5];
  return v4;
}

- (BOOL)acknowledgeWithEventStore:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(EKCalendarEventInvitationNotification *)self eventFromEventStore:v6];
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
    v9 = [v6 saveEvent:v7 span:2 commit:1 error:&v14];
    v10 = v14;
    if (v9)
    {
      goto LABEL_12;
    }

    v11 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKCalendarEventInvitationNotification *)v11 acknowledgeWithEventStore:v10 error:?];
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    else if (!a4)
    {
LABEL_12:

      goto LABEL_13;
    }

    v12 = v10;
    *a4 = v10;
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
  v2 = [(EKCalendarNotification *)self event];
  v3 = [v2 couldBeJunk];

  return v3;
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
    v5 = [(EKCalendarNotification *)self event];
    v6 = [v5 attendees];

    obj = v6;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          v11 = [v10 emailAddress];
          if (v11)
          {
            blockList = self->_blockList;
            v2 = [v10 emailAddress];
            if ([(CalBlockList *)blockList isBlockedWithEmail:v2])
            {

LABEL_21:
              v4 = 1;
              goto LABEL_22;
            }
          }

          v13 = [v10 phoneNumber];
          if (v13)
          {
            v14 = self->_blockList;
            v15 = [v10 phoneNumber];
            v16 = [(CalBlockList *)v14 isBlockedWithPhoneNumber:v15];

            if (v11)
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

            if (v11)
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
  v5 = [(EKCalendarNotification *)self event];
  v6 = [v5 attendees];

  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 emailAddress];
        if (v11)
        {
          [v3 addObject:v11];
        }

        v12 = [v10 phoneNumber];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
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