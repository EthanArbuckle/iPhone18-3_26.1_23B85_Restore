@interface CalendarSeparationSharedCalendar
- (CalendarSeparationSharedCalendar)initWithCalendar:(id)calendar;
- (id)displayDetail;
- (id)displayName;
- (int64_t)visibility;
- (void)makePrivateWithCompletion:(id)completion;
- (void)stopSharingWithParticipant:(id)participant completion:(id)completion;
@end

@implementation CalendarSeparationSharedCalendar

- (CalendarSeparationSharedCalendar)initWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  v23.receiver = self;
  v23.super_class = CalendarSeparationSharedCalendar;
  v6 = [(CalendarSeparationSharedCalendar *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calendar, calendar);
    v8 = objc_opt_new();
    [(CalendarSeparationSharedResource *)v7 setCsParticipants:v8];

    v9 = [[CalendarSeparationParticipant alloc] initWithEKCalendar:calendarCopy];
    objc_storeStrong(&v7->_owner, v9);
    csParticipants = [(CalendarSeparationSharedResource *)v7 csParticipants];
    [csParticipants addObject:v9];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    sharees = [calendarCopy sharees];
    v12 = [sharees countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(sharees);
          }

          v16 = [[CalendarSeparationParticipant alloc] initWithEKSharee:*(*(&v19 + 1) + 8 * v15)];
          csParticipants2 = [(CalendarSeparationSharedResource *)v7 csParticipants];
          [csParticipants2 addObject:v16];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [sharees countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v13);
    }
  }

  return v7;
}

- (id)displayName
{
  calendar = [(CalendarSeparationSharedCalendar *)self calendar];
  title = [calendar title];

  return title;
}

- (id)displayDetail
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Shared Calendar" value:&stru_8400 table:0];

  return v3;
}

- (int64_t)visibility
{
  calendar = [(CalendarSeparationSharedCalendar *)self calendar];
  isPublished = [calendar isPublished];

  if (isPublished)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)stopSharingWithParticipant:(id)participant completion:(id)completion
{
  participantCopy = participant;
  completionCopy = completion;
  calendar = [(CalendarSeparationSharedCalendar *)self calendar];

  if (!calendar)
  {
    v78 = NSLocalizedDescriptionKey;
    v79 = @"Resource is missing Calendar";
    v22 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v23 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v22];

    completionCopy[2](completionCopy, v23);
    goto LABEL_54;
  }

  calendar2 = [(CalendarSeparationSharedCalendar *)self calendar];
  eventStore = [calendar2 eventStore];

  calendar3 = [(CalendarSeparationSharedCalendar *)self calendar];
  sharingStatus = [calendar3 sharingStatus];

  if (sharingStatus == &dword_0 + 2)
  {
    if (participantCopy)
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      calendar4 = [(CalendarSeparationSharedCalendar *)self calendar];
      shareesAndOwner = [calendar4 shareesAndOwner];

      v15 = [shareesAndOwner countByEnumeratingWithState:&v74 objects:v90 count:16];
      if (v15)
      {
        v16 = v15;
        v60 = eventStore;
        v17 = *v75;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v75 != v17)
            {
              objc_enumerationMutation(shareesAndOwner);
            }

            v19 = [[CalendarSeparationParticipant alloc] initWithEKSharee:*(*(&v74 + 1) + 8 * i)];
            v20 = [(CalendarSeparationParticipant *)v19 matchesDSParticipation:participantCopy];

            if (v20)
            {

              eventStore = v60;
              goto LABEL_16;
            }
          }

          v16 = [shareesAndOwner countByEnumeratingWithState:&v74 objects:v90 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        v21 = 0;
        eventStore = v60;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
LABEL_16:
      calendar5 = [(CalendarSeparationSharedCalendar *)self calendar];
      v73 = 0;
      v25 = [eventStore removeCalendar:calendar5 commit:1 error:&v73];
      v21 = v73;

      if ((v25 & 1) != 0 || v21)
      {
        goto LABEL_21;
      }

      v88 = NSLocalizedDescriptionKey;
      v89 = @"Failed to remove calendar";
      shareesAndOwner = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v21 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:shareesAndOwner];
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_21:
  calendar6 = [(CalendarSeparationSharedCalendar *)self calendar];
  sharingStatus2 = [calendar6 sharingStatus];

  if (sharingStatus2 == &dword_0 + 1)
  {
    v58 = v21;
    v59 = completionCopy;
    v61 = eventStore;
    v28 = objc_opt_new();
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    calendar7 = [(CalendarSeparationSharedCalendar *)self calendar];
    sharees = [calendar7 sharees];

    v31 = [sharees countByEnumeratingWithState:&v69 objects:v87 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v70;
      do
      {
        for (j = 0; j != v32; j = j + 1)
        {
          if (*v70 != v33)
          {
            objc_enumerationMutation(sharees);
          }

          v35 = *(*(&v69 + 1) + 8 * j);
          v36 = [[CalendarSeparationParticipant alloc] initWithEKSharee:v35];
          v37 = v36;
          if (!participantCopy || [(CalendarSeparationParticipant *)v36 matchesDSParticipation:participantCopy])
          {
            [v35 setShareeMuteRemoval:1];
            [v28 addObject:v35];
          }
        }

        v32 = [sharees countByEnumeratingWithState:&v69 objects:v87 count:16];
      }

      while (v32);
    }

    calendar8 = [(CalendarSeparationSharedCalendar *)self calendar];
    v68 = v58;
    v39 = [eventStore saveCalendar:calendar8 commit:1 error:&v68];
    v40 = v68;

    if (v39)
    {
      completionCopy = v59;
    }

    else
    {
      completionCopy = v59;
      if (!v40)
      {
        v85 = NSLocalizedDescriptionKey;
        v86 = @"Failed to save sharee notification mute";
        v41 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v40 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v41];
      }
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v42 = v28;
    v43 = [v42 countByEnumeratingWithState:&v64 objects:v84 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v65;
      do
      {
        for (k = 0; k != v44; k = k + 1)
        {
          if (*v65 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v64 + 1) + 8 * k);
          calendar9 = [(CalendarSeparationSharedCalendar *)self calendar];
          [calendar9 removeSharee:v47];
        }

        v44 = [v42 countByEnumeratingWithState:&v64 objects:v84 count:16];
      }

      while (v44);
    }

    calendar10 = [(CalendarSeparationSharedCalendar *)self calendar];
    v63 = v40;
    eventStore = v61;
    v50 = [v61 saveCalendar:calendar10 commit:1 error:&v63];
    v21 = v63;

    if ((v50 & 1) == 0 && !v21)
    {
      v82 = NSLocalizedDescriptionKey;
      v83 = @"Failed to remove sharees from calendar";
      v51 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      v21 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v51];
    }
  }

  if (participantCopy || (-[CalendarSeparationSharedCalendar calendar](self, "calendar"), v52 = objc_claimAutoreleasedReturnValue(), v53 = [v52 isPublished], v52, !v53))
  {
    v23 = v21;
  }

  else
  {
    calendar11 = [(CalendarSeparationSharedCalendar *)self calendar];
    [calendar11 setIsPublished:0];

    calendar12 = [(CalendarSeparationSharedCalendar *)self calendar];
    v62 = v21;
    v56 = [eventStore saveCalendar:calendar12 commit:1 error:&v62];
    v23 = v62;

    if ((v56 & 1) == 0 && !v23)
    {
      v80 = NSLocalizedDescriptionKey;
      v81 = @"Failed to unpublish calendar";
      v57 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      v23 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v57];
    }
  }

  completionCopy[2](completionCopy, v23);

LABEL_54:
}

- (void)makePrivateWithCompletion:(id)completion
{
  completionCopy = completion;
  calendar = [(CalendarSeparationSharedCalendar *)self calendar];
  isPublished = [calendar isPublished];

  if (!isPublished)
  {
    goto LABEL_7;
  }

  calendar2 = [(CalendarSeparationSharedCalendar *)self calendar];
  eventStore = [calendar2 eventStore];

  calendar3 = [(CalendarSeparationSharedCalendar *)self calendar];
  [calendar3 setIsPublished:0];

  calendar4 = [(CalendarSeparationSharedCalendar *)self calendar];
  v17 = 0;
  v11 = [eventStore saveCalendar:calendar4 commit:1 error:&v17];
  v12 = v17;

  if ((v11 & 1) == 0 && !v12)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = @"Failed to unpublish calendar";
    v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v13];
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
LABEL_7:
    v15 = [CalendarSeparationSharedCalendar alloc];
    calendar5 = [(CalendarSeparationSharedCalendar *)self calendar];
    v14 = [(CalendarSeparationSharedCalendar *)v15 initWithCalendar:calendar5];

    v12 = 0;
  }

  completionCopy[2](completionCopy, v14, v12);
}

@end