@interface CalendarSeparationSharedCalendar
- (CalendarSeparationSharedCalendar)initWithCalendar:(id)a3;
- (id)displayDetail;
- (id)displayName;
- (int64_t)visibility;
- (void)makePrivateWithCompletion:(id)a3;
- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4;
@end

@implementation CalendarSeparationSharedCalendar

- (CalendarSeparationSharedCalendar)initWithCalendar:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = CalendarSeparationSharedCalendar;
  v6 = [(CalendarSeparationSharedCalendar *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calendar, a3);
    v8 = objc_opt_new();
    [(CalendarSeparationSharedResource *)v7 setCsParticipants:v8];

    v9 = [[CalendarSeparationParticipant alloc] initWithEKCalendar:v5];
    objc_storeStrong(&v7->_owner, v9);
    v10 = [(CalendarSeparationSharedResource *)v7 csParticipants];
    [v10 addObject:v9];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [v5 sharees];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = [[CalendarSeparationParticipant alloc] initWithEKSharee:*(*(&v19 + 1) + 8 * v15)];
          v17 = [(CalendarSeparationSharedResource *)v7 csParticipants];
          [v17 addObject:v16];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v13);
    }
  }

  return v7;
}

- (id)displayName
{
  v2 = [(CalendarSeparationSharedCalendar *)self calendar];
  v3 = [v2 title];

  return v3;
}

- (id)displayDetail
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Shared Calendar" value:&stru_8400 table:0];

  return v3;
}

- (int64_t)visibility
{
  v2 = [(CalendarSeparationSharedCalendar *)self calendar];
  v3 = [v2 isPublished];

  if (v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CalendarSeparationSharedCalendar *)self calendar];

  if (!v8)
  {
    v78 = NSLocalizedDescriptionKey;
    v79 = @"Resource is missing Calendar";
    v22 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v23 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v22];

    v7[2](v7, v23);
    goto LABEL_54;
  }

  v9 = [(CalendarSeparationSharedCalendar *)self calendar];
  v10 = [v9 eventStore];

  v11 = [(CalendarSeparationSharedCalendar *)self calendar];
  v12 = [v11 sharingStatus];

  if (v12 == &dword_0 + 2)
  {
    if (v6)
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v13 = [(CalendarSeparationSharedCalendar *)self calendar];
      v14 = [v13 shareesAndOwner];

      v15 = [v14 countByEnumeratingWithState:&v74 objects:v90 count:16];
      if (v15)
      {
        v16 = v15;
        v60 = v10;
        v17 = *v75;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v75 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [[CalendarSeparationParticipant alloc] initWithEKSharee:*(*(&v74 + 1) + 8 * i)];
            v20 = [(CalendarSeparationParticipant *)v19 matchesDSParticipation:v6];

            if (v20)
            {

              v10 = v60;
              goto LABEL_16;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v74 objects:v90 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        v21 = 0;
        v10 = v60;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
LABEL_16:
      v24 = [(CalendarSeparationSharedCalendar *)self calendar];
      v73 = 0;
      v25 = [v10 removeCalendar:v24 commit:1 error:&v73];
      v21 = v73;

      if ((v25 & 1) != 0 || v21)
      {
        goto LABEL_21;
      }

      v88 = NSLocalizedDescriptionKey;
      v89 = @"Failed to remove calendar";
      v14 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v21 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v14];
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_21:
  v26 = [(CalendarSeparationSharedCalendar *)self calendar];
  v27 = [v26 sharingStatus];

  if (v27 == &dword_0 + 1)
  {
    v58 = v21;
    v59 = v7;
    v61 = v10;
    v28 = objc_opt_new();
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v29 = [(CalendarSeparationSharedCalendar *)self calendar];
    v30 = [v29 sharees];

    v31 = [v30 countByEnumeratingWithState:&v69 objects:v87 count:16];
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
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v69 + 1) + 8 * j);
          v36 = [[CalendarSeparationParticipant alloc] initWithEKSharee:v35];
          v37 = v36;
          if (!v6 || [(CalendarSeparationParticipant *)v36 matchesDSParticipation:v6])
          {
            [v35 setShareeMuteRemoval:1];
            [v28 addObject:v35];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v69 objects:v87 count:16];
      }

      while (v32);
    }

    v38 = [(CalendarSeparationSharedCalendar *)self calendar];
    v68 = v58;
    v39 = [v10 saveCalendar:v38 commit:1 error:&v68];
    v40 = v68;

    if (v39)
    {
      v7 = v59;
    }

    else
    {
      v7 = v59;
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
          v48 = [(CalendarSeparationSharedCalendar *)self calendar];
          [v48 removeSharee:v47];
        }

        v44 = [v42 countByEnumeratingWithState:&v64 objects:v84 count:16];
      }

      while (v44);
    }

    v49 = [(CalendarSeparationSharedCalendar *)self calendar];
    v63 = v40;
    v10 = v61;
    v50 = [v61 saveCalendar:v49 commit:1 error:&v63];
    v21 = v63;

    if ((v50 & 1) == 0 && !v21)
    {
      v82 = NSLocalizedDescriptionKey;
      v83 = @"Failed to remove sharees from calendar";
      v51 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      v21 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v51];
    }
  }

  if (v6 || (-[CalendarSeparationSharedCalendar calendar](self, "calendar"), v52 = objc_claimAutoreleasedReturnValue(), v53 = [v52 isPublished], v52, !v53))
  {
    v23 = v21;
  }

  else
  {
    v54 = [(CalendarSeparationSharedCalendar *)self calendar];
    [v54 setIsPublished:0];

    v55 = [(CalendarSeparationSharedCalendar *)self calendar];
    v62 = v21;
    v56 = [v10 saveCalendar:v55 commit:1 error:&v62];
    v23 = v62;

    if ((v56 & 1) == 0 && !v23)
    {
      v80 = NSLocalizedDescriptionKey;
      v81 = @"Failed to unpublish calendar";
      v57 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      v23 = [NSError errorWithDomain:@"CalendarSeparationErrorDomain" code:0 userInfo:v57];
    }
  }

  v7[2](v7, v23);

LABEL_54:
}

- (void)makePrivateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CalendarSeparationSharedCalendar *)self calendar];
  v6 = [v5 isPublished];

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [(CalendarSeparationSharedCalendar *)self calendar];
  v8 = [v7 eventStore];

  v9 = [(CalendarSeparationSharedCalendar *)self calendar];
  [v9 setIsPublished:0];

  v10 = [(CalendarSeparationSharedCalendar *)self calendar];
  v17 = 0;
  v11 = [v8 saveCalendar:v10 commit:1 error:&v17];
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
    v16 = [(CalendarSeparationSharedCalendar *)self calendar];
    v14 = [(CalendarSeparationSharedCalendar *)v15 initWithCalendar:v16];

    v12 = 0;
  }

  v4[2](v4, v14, v12);
}

@end