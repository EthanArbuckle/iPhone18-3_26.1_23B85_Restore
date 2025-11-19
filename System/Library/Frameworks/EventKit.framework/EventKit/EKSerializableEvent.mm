@interface EKSerializableEvent
+ (id)classesForKey;
+ (id)serializedProperties;
- (EKSerializableEvent)initWithEvent:(id)a3;
- (id)createEventInEventStore:(id)a3;
- (void)_initAlarms:(id)a3;
- (void)_initAttachments:(id)a3;
- (void)_initAttendees:(id)a3 selfAttendee:(id)a4;
- (void)_initRecurrenceRule:(id)a3;
@end

@implementation EKSerializableEvent

+ (id)serializedProperties
{
  v5[10] = *MEMORY[0x1E69E9840];
  v5[0] = @"startDate";
  v5[1] = @"endDate";
  v5[2] = @"isAllDay";
  v5[3] = @"title";
  v5[4] = @"notes";
  v5[5] = @"URL";
  v5[6] = @"location";
  v5[7] = @"travelTime";
  v5[8] = @"calendar.calendarIdentifier";
  v5[9] = @"timeZone";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:10];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)classesForKey
{
  v40[17] = *MEMORY[0x1E69E9840];
  v39[0] = @"startDate";
  v38 = objc_opt_class();
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v40[0] = v21;
  v39[1] = @"endDate";
  v37 = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v40[1] = v20;
  v39[2] = @"isAllDay";
  v36 = objc_opt_class();
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v40[2] = v19;
  v39[3] = @"title";
  v35 = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v40[3] = v18;
  v39[4] = @"notes";
  v34 = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v40[4] = v17;
  v39[5] = @"url";
  v33 = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v40[5] = v16;
  v39[6] = @"travelTime";
  v32 = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v40[6] = v15;
  v39[7] = @"location";
  v31 = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v40[7] = v14;
  v39[8] = @"structuredLocation";
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v40[8] = v2;
  v39[9] = @"attendees";
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v40[9] = v3;
  v39[10] = @"selfAttendee";
  v28 = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v40[10] = v4;
  v39[11] = @"attachments";
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v40[11] = v5;
  v39[12] = @"alarms";
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v40[12] = v6;
  v39[13] = @"recurrenceRules";
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v40[13] = v7;
  v39[14] = @"calendarIdentifier";
  v24 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v40[14] = v8;
  v39[15] = @"timeZone";
  v23 = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v40[15] = v9;
  v39[16] = @"isNew";
  v22 = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v40[16] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:17];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (EKSerializableEvent)initWithEvent:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = EKSerializableEvent;
  v5 = [(EKSerializableEvent *)&v28 init];
  if (v5)
  {
    v6 = [v4 startDate];
    [(EKSerializableEvent *)v5 setStartDate:v6];

    v7 = [v4 endDateUnadjustedForLegacyClients];
    [(EKSerializableEvent *)v5 setEndDate:v7];

    -[EKSerializableEvent setIsAllDay:](v5, "setIsAllDay:", [v4 isAllDay]);
    v8 = [v4 title];
    [(EKSerializableEvent *)v5 setTitle:v8];

    v9 = [v4 notes];
    [(EKSerializableEvent *)v5 setNotes:v9];

    v10 = [v4 URL];
    [(EKSerializableEvent *)v5 setUrl:v10];

    [v4 travelTime];
    [(EKSerializableEvent *)v5 setTravelTime:?];
    v11 = [v4 location];
    [(EKSerializableEvent *)v5 setLocation:v11];

    v12 = [v4 timeZone];
    [(EKSerializableEvent *)v5 setTimeZone:v12];

    v13 = MEMORY[0x1E696AD98];
    v14 = [v4 objectID];
    v15 = [v13 numberWithBool:{objc_msgSend(v14, "isTemporary")}];
    [(EKSerializableEvent *)v5 setIsNew:v15];

    v16 = [v4 structuredLocation];

    if (v16)
    {
      v17 = [EKSerializableStructuredLocation alloc];
      v18 = [v4 structuredLocation];
      v19 = [(EKSerializableStructuredLocation *)v17 initWithStructuredLocation:v18];
      [(EKSerializableEvent *)v5 setStructuredLocation:v19];
    }

    v20 = [v4 calendar];
    v21 = [v20 calendarIdentifier];
    [(EKSerializableEvent *)v5 setCalendarIdentifier:v21];

    v22 = [v4 allAlarms];
    [(EKSerializableEvent *)v5 _initAlarms:v22];

    v23 = [v4 attachments];
    [(EKSerializableEvent *)v5 _initAttachments:v23];

    v24 = [v4 attendees];
    v25 = [v4 selfAttendee];
    [(EKSerializableEvent *)v5 _initAttendees:v24 selfAttendee:v25];

    v26 = [v4 singleRecurrenceRule];
    [(EKSerializableEvent *)v5 _initRecurrenceRule:v26];
  }

  return v5;
}

- (void)_initAttendees:(id)a3 selfAttendee:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = [EKSerializableParticipant alloc];
        v16 = [(EKSerializableParticipant *)v15 initWithParticipant:v14, v19];
        [v8 addObject:v16];
        if (v14 == v7)
        {
          [(EKSerializableEvent *)self setSelfAttendee:v16];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = [v8 copy];
  [(EKSerializableEvent *)self setAttendees:v17];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_initAlarms:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [EKSerializableAlarm alloc];
        v13 = [(EKSerializableAlarm *)v12 initWithAlarm:v11, v16];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  [(EKSerializableEvent *)self setAlarms:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_initAttachments:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [EKSerializableAttachment alloc];
        v13 = [(EKSerializableAttachment *)v12 initWithAttachment:v11, v16];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  [(EKSerializableEvent *)self setAttachments:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_initRecurrenceRule:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[EKSerializableRecurrenceRule alloc] initWithRecurrenceRule:v4];

  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(EKSerializableEvent *)self setRecurrenceRules:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (id)createEventInEventStore:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [EKEvent eventWithEventStore:v4];
  v6 = [(EKSerializableEvent *)self timeZone];
  [v5 setTimeZone:v6];

  v7 = [(EKSerializableEvent *)self startDate];
  [v5 setStartDate:v7];

  [v5 setAllDay:{-[EKSerializableEvent isAllDay](self, "isAllDay")}];
  v8 = [(EKSerializableEvent *)self endDate];
  [v5 setEndDateUnadjustedForLegacyClients:v8];

  v9 = [(EKSerializableEvent *)self title];
  [v5 setTitle:v9];

  v10 = [(EKSerializableEvent *)self notes];
  [v5 setNotes:v10];

  v11 = [(EKSerializableEvent *)self url];
  [v5 setURL:v11];

  [(EKSerializableEvent *)self travelTime];
  [v5 setTravelTime:?];
  v12 = [(EKSerializableEvent *)self location];
  [v5 setLocation:v12];

  v13 = [(EKSerializableEvent *)self structuredLocation];
  v14 = [v13 createStructuredLocation];
  [v5 setStructuredLocation:v14];

  v15 = [(EKSerializableEvent *)self calendarIdentifier];
  v52 = v4;
  v16 = [v4 calendarWithIdentifier:v15];

  v53 = v16;
  [v5 setCalendar:v16];
  [v5 setAlarms:MEMORY[0x1E695E0F0]];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v17 = self;
  v18 = [(EKSerializableEvent *)self alarms];
  v19 = [v18 countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v68;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v68 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v67 + 1) + 8 * i);
        v66 = 0;
        v24 = [v23 createAlarm:&v66];
        v25 = v66;
        if (v24)
        {
          [v5 addAlarm:v24];
        }

        else
        {
          v26 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v74 = v25;
            _os_log_error_impl(&dword_1A805E000, v26, OS_LOG_TYPE_ERROR, "Error creating alarm: [%@]", buf, 0xCu);
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v20);
  }

  v65 = 0u;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v27 = [(EKSerializableEvent *)v17 attendees];
  v28 = [v27 countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (!v28)
  {
    v40 = 0;
    goto LABEL_29;
  }

  v29 = v28;
  v54 = 0;
  v30 = *v63;
  do
  {
    for (j = 0; j != v29; ++j)
    {
      if (*v63 != v30)
      {
        objc_enumerationMutation(v27);
      }

      v32 = *(*(&v62 + 1) + 8 * j);
      v61 = 0;
      v33 = [v32 createAttendee:&v61];
      v34 = v61;
      if (v33)
      {
        [v5 addAttendee:v33];
        v35 = [(EKSerializableEvent *)v17 selfAttendee];

        if (v32 == v35)
        {
          v36 = [v53 ownerIdentityOrganizer];
          v37 = [v33 isEqualToParticipant:v36];

          if ((v37 & 1) == 0)
          {
            v38 = v33;

            v54 = v38;
          }

          [v5 setSelfAttendee:v33];
        }
      }

      else
      {
        v39 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v74 = v34;
          _os_log_error_impl(&dword_1A805E000, v39, OS_LOG_TYPE_ERROR, "Error creating attendee: [%@]", buf, 0xCu);
        }
      }
    }

    v29 = [v27 countByEnumeratingWithState:&v62 objects:v72 count:16];
  }

  while (v29);

  v40 = v54;
  if (v54)
  {
    [v5 removeAttendee:v54];
    [v5 addOrganizerAndSelfAttendeeForNewInvitation];
    v27 = [v5 selfAttendee];
    [v27 setParticipantStatus:{objc_msgSend(v54, "participantStatus")}];
LABEL_29:
    v55 = v40;

    goto LABEL_31;
  }

  v55 = 0;
LABEL_31:
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v41 = [(EKSerializableEvent *)v17 recurrenceRules];
  v42 = [v41 countByEnumeratingWithState:&v57 objects:v71 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v58;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v58 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v57 + 1) + 8 * k);
        v56 = 0;
        v47 = [v46 createRecurrenceRule:&v56];
        v48 = v56;
        if (v47)
        {
          [v5 addRecurrenceRule:v47];
        }

        else
        {
          v49 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v74 = v48;
            _os_log_error_impl(&dword_1A805E000, v49, OS_LOG_TYPE_ERROR, "Error creating recurrence rule: [%@]", buf, 0xCu);
          }
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v57 objects:v71 count:16];
    }

    while (v43);
  }

  v50 = *MEMORY[0x1E69E9840];

  return v5;
}

@end