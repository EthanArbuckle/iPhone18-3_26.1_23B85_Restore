@interface EKUIEventNotificationRepresentation
+ (BOOL)_invitationNotificationHasResourceChanges:(id)a3 changesString:(id *)a4;
+ (id)_fromLocalizedString;
+ (id)_invitationUpdatedTitleLocalizedString;
+ (id)_whenLocalizedString;
+ (id)_whereLocalizedString;
+ (id)defaultEventNotificationRepresentationWithTitle:(id)a3 message:(id)a4 notes:(id)a5;
+ (id)invitationNotificationRepresentationWithNotification:(id)a3 event:(id)a4 date:(id)a5 endDate:(id)a6 timeZone:(id)a7;
+ (id)previewForNotes:(id)a3;
+ (id)resourceChangeNotificationWithNotification:(id)a3 message:(id)a4 date:(id)a5 endDate:(id)a6 timeZone:(id)a7;
+ (id)responseNotificationWithTitle:(id)a3 message:(id)a4;
+ (id)timeToLeaveNotificationRepresentationWithHypothesisMessage:(id)a3 event:(id)a4 date:(id)a5 displayTimeZone:(id)a6;
+ (id)upcomingEventNotificationRepresentationWithEvent:(id)a3 date:(id)a4 displayTimeZone:(id)a5;
- (EKUIEventNotificationRepresentation)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (id)dictionaryRepresentationsOfSupplementaryItems;
- (void)_setOwnerForContactDictionary:(id)a3;
- (void)setOrganizerForContactDictionary:(id)a3;
- (void)updateUpcomingEventNotificationWithHypothesisMessage:(id)a3;
@end

@implementation EKUIEventNotificationRepresentation

+ (id)defaultEventNotificationRepresentationWithTitle:(id)a3 message:(id)a4 notes:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  [v11 setType:0];
  v12 = EventKitUIBundle();
  v13 = [v12 localizedStringForKey:@"Unknown title" value:@"Title" table:0];
  v14 = [EKUITextAndHeaderItem itemWithText:v10 andHeader:v13];

  [v11 setTitleItem:v14];
  v15 = [EKUITextAndHeaderItem itemWithText:v9 andHeader:&stru_1F4EF6790];

  [v11 setSubtitleItem:v15];
  v16 = [objc_opt_class() previewForNotes:v8];

  [v11 setNotes:v16];

  return v11;
}

+ (id)upcomingEventNotificationRepresentationWithEvent:(id)a3 date:(id)a4 displayTimeZone:(id)a5
{
  v89 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v80 = a5;
  v10 = objc_alloc_init(a1);
  [v10 setType:1];
  [v10 setAllDay:{objc_msgSend(v8, "isAllDay")}];
  v79 = v9;
  [v10 setDate:v9];
  v11 = objc_opt_class();
  v12 = [v8 notes];
  v13 = [v11 previewForNotes:v12];
  [v10 setNotes:v13];

  v14 = [v8 title];
  v15 = EventKitUIBundle();
  v16 = [v15 localizedStringForKey:@"Title" value:&stru_1F4EF6790 table:0];
  v17 = [EKUITextAndHeaderItem itemWithText:v14 andHeader:v16];

  v78 = v17;
  [v10 setTitleItem:v17];
  v18 = MEMORY[0x1E6993408];
  v19 = [v8 location];
  v20 = [v8 locationWithoutPrediction];
  v21 = [v8 preferredLocation];
  v22 = [v18 locationStringForLocation:v19 locationWithoutPrediction:v20 preferredLocation:v21 conferenceURL:0 conferenceURLIsBroadcast:0 options:96];
  v23 = [v22 string];

  if ([v23 length])
  {
    v24 = [objc_opt_class() _whereLocalizedString];
    v25 = [EKUITextAndHeaderItem itemWithText:v23 andHeader:v24];

    [v10 setSubtitleItem:v25];
  }

  v77 = v23;
  v26 = [MEMORY[0x1E695DF70] array];
  v27 = +[EKStringFactory sharedInstance];
  v28 = [v8 startDate];
  v29 = [v8 endDateUnadjustedForLegacyClients];
  v30 = [v27 dateStringForEventInvitationWithStartDate:v28 endDate:v29 timeZone:v80 allDay:{objc_msgSend(v8, "isAllDay")}];

  v31 = v26;
  v32 = [objc_opt_class() _whenLocalizedString];
  v76 = v30;
  v33 = [EKUITextAndHeaderItem itemWithText:v30 andHeader:v32];
  [v26 addObject:v33];

  v34 = [v8 organizer];
  v35 = v34;
  if (v34 && ([v34 isCurrentUser] & 1) == 0)
  {
    CUIKDisplayStringForNotificationIdentity();
    v37 = v36 = v35;
    [objc_opt_class() _fromLocalizedString];
    v39 = v38 = v31;
    v40 = [EKUITextAndHeaderItem itemWithText:v37 andHeader:v39];
    [v38 addObject:v40];

    v31 = v38;
    v35 = v36;
  }

  v41 = [v8 attendees];
  v42 = v41;
  v43 = v79;
  if (v41 && [v41 count])
  {
    v72 = v10;
    v73 = v8;
    v71 = v42;
    v74 = [v8 sortEKParticipantsIgnoringNonHumans:v42];
    v44 = objc_opt_new();
    v45 = v35;
    v46 = objc_opt_new();
    v81 = objc_opt_new();
    v75 = v45;
    if (v45 && [v45 isCurrentUser])
    {
      v70 = v31;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v47 = v74;
      v48 = [v47 countByEnumeratingWithState:&v84 objects:v88 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v85;
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v85 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v84 + 1) + 8 * i);
            v53 = [v52 name];
            v54 = v53;
            if (v53)
            {
              v55 = v53;
            }

            else
            {
              v56 = [v52 URL];
              v55 = [v56 resourceSpecifier];
            }

            v57 = [v52 participantStatus];
            v58 = v44;
            if (v57 == 3 || (v59 = [v52 participantStatus], v58 = v46, v59 == 4) || (v60 = objc_msgSend(v52, "participantStatus"), v58 = v81, !v60))
            {
              [v58 addObject:v55];
            }
          }

          v49 = [v47 countByEnumeratingWithState:&v84 objects:v88 count:16];
        }

        while (v49);
      }

      v31 = v70;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __109__EKUIEventNotificationRepresentation_upcomingEventNotificationRepresentationWithEvent_date_displayTimeZone___block_invoke;
    aBlock[3] = &unk_1E843F480;
    v83 = v31;
    v61 = _Block_copy(aBlock);
    v62 = EventKitUIBundle();
    v63 = [v62 localizedStringForKey:@"Declined" value:&stru_1F4EF6790 table:0];
    v61[2](v61, v44, v63);

    v64 = EventKitUIBundle();
    v65 = [v64 localizedStringForKey:@"No Reply" value:&stru_1F4EF6790 table:0];
    v61[2](v61, v81, v65);

    v66 = EventKitUIBundle();
    v67 = [v66 localizedStringForKey:@"Maybe" value:&stru_1F4EF6790 table:0];
    v61[2](v61, v46, v67);

    v10 = v72;
    v8 = v73;
    v43 = v79;
    v35 = v75;
    v42 = v71;
  }

  if ([v31 count])
  {
    v68 = [v31 copy];
    [v10 setSupplementaryItems:v68];
  }

  return v10;
}

void __109__EKUIEventNotificationRepresentation_upcomingEventNotificationRepresentationWithEvent_date_displayTimeZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v13 count] < 3)
  {
    if (![v13 count])
    {
      goto LABEL_6;
    }

    v9 = [v13 componentsJoinedByString:@"\n"];
    v11 = [EKUITextAndHeaderItem itemWithText:v9 andHeader:v5];
    [v11 setLines:{objc_msgSend(v13, "count")}];
    v12 = *(a1 + 32);
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = EventKitUIBundle();
    v8 = [v7 localizedStringForKey:@"%d invitees" value:&stru_1F4EF6790 table:0];
    v9 = [v6 localizedStringWithFormat:v8, objc_msgSend(v13, "count")];

    v10 = *(a1 + 32);
    v11 = [EKUITextAndHeaderItem itemWithText:v9 andHeader:v5];
    v12 = v10;
  }

  [v12 addObject:v11];

LABEL_6:
}

+ (id)invitationNotificationRepresentationWithNotification:(id)a3 event:(id)a4 date:(id)a5 endDate:(id)a6 timeZone:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v62 = a6;
  v60 = a7;
  v15 = objc_alloc_init(a1);
  v16 = v12;
  [v15 setType:2];
  v17 = objc_opt_new();
  v18 = [v16 title];
  [v17 setText:v18];

  v19 = objc_opt_new();
  if ([v16 type] == 2)
  {
    v20 = EventKitUIBundle();
    v21 = [v20 localizedStringForKey:@"Canceled" value:&stru_1F4EF6790 table:0];
    [v17 setHeader:v21];

    v22 = EventKitUIBundle();
    v23 = [v22 localizedStringForKey:@"Canceled by" value:&stru_1F4EF6790 table:0];
    [v19 setHeader:v23];

    v24 = CUIKDisplayStringForNotificationIdentity();
LABEL_5:
    v28 = v24;
    [v19 setText:v24];

    goto LABEL_10;
  }

  v25 = [v16 type];
  v26 = objc_opt_class();
  if (v25 == 3)
  {
    v27 = [v26 _invitationUpdatedTitleLocalizedString];
    [v17 setHeader:v27];

    v24 = CUIKMessageStringForEventInvitationNotification();
    goto LABEL_5;
  }

  v63 = 0;
  v29 = [v26 _invitationNotificationHasResourceChanges:v16 changesString:&v63];
  v30 = v63;
  if (v29)
  {
    v31 = [objc_opt_class() _invitationUpdatedTitleLocalizedString];
    [v17 setHeader:v31];

    [v19 setText:v30];
  }

  else
  {
    v32 = EventKitUIBundle();
    v33 = [v32 localizedStringForKey:@"Invitation" value:&stru_1F4EF6790 table:0];
    [v17 setHeader:v33];

    v34 = [objc_opt_class() _fromLocalizedString];
    [v19 setHeader:v34];

    v35 = CUIKDisplayStringForNotificationIdentity();
    [v19 setText:v35];
  }

LABEL_10:
  [v15 setDate:v14];
  if (([v13 isAllDay] & 1) == 0)
  {
    v36 = [v13 endDateUnadjustedForLegacyClients];

    if (v36)
    {
      [v15 setEndDate:v62];
      v37 = [v13 potentialConflictOccurrenceDatesInTimePeriod:0];
      [v15 setPotentialConflictDates:v37];

      v38 = [v13 calendar];
      v39 = [v38 source];
      v40 = [v39 sourceIdentifier];
      [v15 setSourceIdentifier:v40];

      v41 = [v13 externalURL];
      v42 = [v41 absoluteString];
      [v15 setExternalURLString:v42];
    }
  }

  v61 = v13;
  [v15 setTitleItem:v17];
  [v15 setSubtitleItem:v19];
  v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v44 = objc_opt_new();
  v45 = [objc_opt_class() _whenLocalizedString];
  [v44 setHeader:v45];

  v46 = +[EKStringFactory sharedInstance];
  v47 = v14;
  v48 = [v46 dateStringForEventInvitationWithStartDate:v14 endDate:v62 timeZone:v60 allDay:{objc_msgSend(v16, "isAllDay")}];

  [v44 setText:v48];
  [v43 addObject:v44];
  v49 = [v16 location];
  v50 = [v49 length];

  if (v50)
  {
    v51 = objc_opt_new();
    v52 = [objc_opt_class() _whereLocalizedString];
    [v51 setHeader:v52];

    v53 = [v16 location];
    [v51 setText:v53];

    [v43 addObject:v51];
  }

  v54 = [v43 copy];
  [v15 setSupplementaryItems:v54];

  v55 = [v16 owner];

  if (v55)
  {
    v56 = [v16 owner];
    v57 = [v56 isCurrentUser];

    if ((v57 & 1) == 0)
    {
      v58 = [v16 owner];
      [v15 _setOwnerForContactDictionary:v58];
    }
  }

  return v15;
}

+ (id)_invitationUpdatedTitleLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Updates" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)_whenLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"When" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)_whereLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Where" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)_fromLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"From" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (BOOL)_invitationNotificationHasResourceChanges:(id)a3 changesString:(id *)a4
{
  v5 = a3;
  if ([v5 timeChanged] & 1) != 0 || (objc_msgSend(v5, "dateChanged"))
  {
    v6 = 1;
    if (!a4)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = [v5 locationChanged];
    if (!a4)
    {
      goto LABEL_20;
    }
  }

  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  if (([v5 timeChanged] & 1) != 0 || objc_msgSend(v5, "dateChanged"))
  {
    if ([v5 timeChanged])
    {
      v8 = @"Time changed";
      goto LABEL_13;
    }

    if ([v5 dateChanged])
    {
      v8 = @"Date changed";
LABEL_13:
      v9 = EventKitUIBundle();
      v10 = [v9 localizedStringForKey:v8 value:&stru_1F4EF6790 table:0];

      if (v10)
      {
        [v7 addObject:v10];
      }
    }
  }

  if ([v5 locationChanged])
  {
    if ([v5 locationChanged])
    {
      v11 = EventKitUIBundle();
      v12 = [v11 localizedStringForKey:@"Location changed" value:&stru_1F4EF6790 table:0];

      if (v12)
      {
        [v7 addObject:v12];
      }
    }
  }

  *a4 = [v7 componentsJoinedByString:@"\n"];

LABEL_20:
  return v6;
}

+ (id)responseNotificationWithTitle:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setType:3];
  v9 = EventKitUIBundle();
  v10 = [v9 localizedStringForKey:@"Shared Calendar" value:&stru_1F4EF6790 table:0];
  v11 = [EKUITextAndHeaderItem itemWithText:v7 andHeader:v10];

  [v8 setTitleItem:v11];
  v12 = [EKUITextAndHeaderItem itemWithText:v6 andHeader:&stru_1F4EF6790];

  [v8 setSubtitleItem:v12];

  return v8;
}

+ (id)resourceChangeNotificationWithNotification:(id)a3 message:(id)a4 date:(id)a5 endDate:(id)a6 timeZone:(id)a7
{
  v12 = a3;
  v35 = a5;
  v13 = a6;
  v36 = a7;
  v14 = a4;
  v15 = objc_alloc_init(a1);
  [v15 setType:4];
  v16 = v12;
  v17 = objc_opt_new();
  v18 = EventKitUIBundle();
  v19 = [v18 localizedStringForKey:@"Shared Event" value:&stru_1F4EF6790 table:0];
  [v17 setHeader:v19];

  v20 = [v16 title];
  [v17 setText:v20];

  [v15 setTitleItem:v17];
  v21 = v35;
  v22 = [EKUITextAndHeaderItem itemWithText:v14 andHeader:&stru_1F4EF6790];

  [v15 setSubtitleItem:v22];
  v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  if ([v16 changeType] != 3)
  {
    v24 = objc_opt_new();
    v25 = [objc_opt_class() _whenLocalizedString];
    [v24 setHeader:v25];

    v26 = +[EKStringFactory sharedInstance];
    v27 = [v26 dateStringForEventInvitationWithStartDate:v35 endDate:v13 timeZone:v36 allDay:{objc_msgSend(v16, "allDay")}];
    [v24 setText:v27];

    [v23 addObject:v24];
  }

  v28 = [v16 location];
  v29 = [v28 length];

  if (v29)
  {
    v30 = objc_opt_new();
    v31 = [objc_opt_class() _whereLocalizedString];
    [v30 setHeader:v31];

    v32 = [v16 location];
    [v30 setText:v32];

    [v23 addObject:v30];
  }

  v33 = [v23 copy];
  [v15 setSupplementaryItems:v33];

  [v15 setDate:v21];
  [v15 setEndDate:v13];

  return v15;
}

+ (id)timeToLeaveNotificationRepresentationWithHypothesisMessage:(id)a3 event:(id)a4 date:(id)a5 displayTimeZone:(id)a6
{
  v10 = a3;
  v11 = [a1 upcomingEventNotificationRepresentationWithEvent:a4 date:a5 displayTimeZone:a6];
  [v11 updateUpcomingEventNotificationWithHypothesisMessage:v10];

  return v11;
}

- (void)updateUpcomingEventNotificationWithHypothesisMessage:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(EKUIEventNotificationRepresentation *)self setType:5];
    v8 = [EKUITextAndHeaderItem itemWithText:v4 andHeader:&stru_1F4EF6790];

    [(EKUIEventNotificationRepresentation *)self setSubtitleItem:v8];
    v5 = [(EKUIEventNotificationRepresentation *)self titleItem];
    v6 = EventKitUIBundle();
    v7 = [v6 localizedStringForKey:@"Time to Leave Watch notification header" value:@"Time to Leave" table:0];
    [v5 setHeader:v7];
  }
}

- (EKUIEventNotificationRepresentation)initWithDictionary:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v51.receiver = self;
  v51.super_class = EKUIEventNotificationRepresentation;
  v6 = [(EKUIEventNotificationRepresentation *)&v51 init];
  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"type"];
    if (!v7)
    {
      [(EKUIEventNotificationRepresentation *)v6 initWithDictionary:a2];
    }

    v6->_type = [v7 integerValue];
    v8 = [EKUITextAndHeaderItem alloc];
    v9 = [v5 objectForKeyedSubscript:@"title"];
    v10 = [(EKUITextAndHeaderItem *)v8 initWithDictionary:v9];
    titleItem = v6->_titleItem;
    v6->_titleItem = v10;

    v12 = [EKUITextAndHeaderItem alloc];
    v13 = [v5 objectForKeyedSubscript:@"subtitle"];
    v14 = [(EKUITextAndHeaderItem *)v12 initWithDictionary:v13];
    subtitleItem = v6->_subtitleItem;
    v6->_subtitleItem = v14;

    v16 = [v5 objectForKeyedSubscript:@"userActivity"];
    userActivityUserInfo = v6->_userActivityUserInfo;
    v6->_userActivityUserInfo = v16;

    v18 = [v5 objectForKeyedSubscript:@"date"];
    date = v6->_date;
    v6->_date = v18;

    v20 = [v5 objectForKeyedSubscript:@"endDate"];
    endDate = v6->_endDate;
    v6->_endDate = v20;

    v22 = [v5 objectForKeyedSubscript:@"allDay"];
    v6->_allDay = [v22 BOOLValue];

    v23 = [v5 objectForKeyedSubscript:@"organizer"];
    organizerContactDictionary = v6->_organizerContactDictionary;
    v6->_organizerContactDictionary = v23;

    v25 = [v5 objectForKeyedSubscript:@"sourceIdentifier"];
    sourceIdentifier = v6->_sourceIdentifier;
    v6->_sourceIdentifier = v25;

    v27 = [v5 objectForKeyedSubscript:@"externalURL"];
    externalURLString = v6->_externalURLString;
    v6->_externalURLString = v27;

    v29 = [v5 objectForKeyedSubscript:@"potentialConflictDates"];
    potentialConflictDates = v6->_potentialConflictDates;
    v6->_potentialConflictDates = v29;

    v31 = [v5 objectForKeyedSubscript:@"notes"];
    notes = v6->_notes;
    v6->_notes = v31;

    supplementaryItems = v6->_supplementaryItems;
    v6->_supplementaryItems = 0;

    v34 = [v5 objectForKeyedSubscript:@"supplementary"];
    v35 = v34;
    if (v34)
    {
      v46 = v7;
      v36 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v34, "count")}];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v37 = v35;
      v38 = [v37 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v48;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v48 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = [[EKUITextAndHeaderItem alloc] initWithDictionary:*(*(&v47 + 1) + 8 * i)];
            [v36 addObject:v42];
          }

          v39 = [v37 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v39);
      }

      v43 = [v36 copy];
      v44 = v6->_supplementaryItems;
      v6->_supplementaryItems = v43;

      v7 = v46;
    }
  }

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  titleItem = self->_titleItem;
  if (titleItem)
  {
    v6 = [(EKUITextAndHeaderItem *)titleItem dictionaryRepresentation];
    [v3 setObject:v6 forKeyedSubscript:@"title"];
  }

  subtitleItem = self->_subtitleItem;
  if (subtitleItem)
  {
    v8 = [(EKUITextAndHeaderItem *)subtitleItem dictionaryRepresentation];
    [v3 setObject:v8 forKeyedSubscript:@"subtitle"];
  }

  if (self->_supplementaryItems)
  {
    v9 = [(EKUIEventNotificationRepresentation *)self dictionaryRepresentationsOfSupplementaryItems];
    [v3 setObject:v9 forKeyedSubscript:@"supplementary"];
  }

  userActivityUserInfo = self->_userActivityUserInfo;
  if (userActivityUserInfo)
  {
    [v3 setObject:userActivityUserInfo forKeyedSubscript:@"userActivity"];
  }

  date = self->_date;
  if (date)
  {
    [v3 setObject:date forKeyedSubscript:@"date"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    [v3 setObject:endDate forKeyedSubscript:@"endDate"];
  }

  organizerContactDictionary = self->_organizerContactDictionary;
  if (organizerContactDictionary)
  {
    [v3 setObject:organizerContactDictionary forKeyedSubscript:@"organizer"];
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier)
  {
    [v3 setObject:sourceIdentifier forKeyedSubscript:@"sourceIdentifier"];
  }

  externalURLString = self->_externalURLString;
  if (externalURLString)
  {
    [v3 setObject:externalURLString forKeyedSubscript:@"externalURL"];
  }

  potentialConflictDates = self->_potentialConflictDates;
  if (potentialConflictDates)
  {
    v17 = [(NSArray *)potentialConflictDates copy];
    [v3 setObject:v17 forKeyedSubscript:@"potentialConflictDates"];
  }

  notes = self->_notes;
  if (notes)
  {
    [v3 setObject:notes forKeyedSubscript:@"notes"];
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_allDay];
  [v3 setObject:v19 forKeyedSubscript:@"allDay"];

  v20 = [v3 copy];

  return v20;
}

- (id)dictionaryRepresentationsOfSupplementaryItems
{
  v18 = *MEMORY[0x1E69E9840];
  supplementaryItems = self->_supplementaryItems;
  if (supplementaryItems)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](supplementaryItems, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_supplementaryItems;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

          v10 = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setOrganizerForContactDictionary:(id)a3
{
  v12 = a3;
  if (v12)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [v12 name];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [v12 name];
      [v4 setObject:v7 forKeyedSubscript:@"displayName"];
    }

    v8 = [v12 URL];
    v9 = [v8 resourceSpecifier];

    if ([v9 length])
    {
      [v4 setObject:v9 forKeyedSubscript:@"rawAddress"];
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = [v4 copy];
  organizerContactDictionary = self->_organizerContactDictionary;
  self->_organizerContactDictionary = v10;
}

- (void)_setOwnerForContactDictionary:(id)a3
{
  v12 = a3;
  if (v12)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [v12 name];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [v12 name];
      [v4 setObject:v7 forKeyedSubscript:@"displayName"];
    }

    v8 = [v12 URL];
    v9 = [v8 resourceSpecifier];

    if ([v9 length])
    {
      [v4 setObject:v9 forKeyedSubscript:@"rawAddress"];
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = [v4 copy];
  organizerContactDictionary = self->_organizerContactDictionary;
  self->_organizerContactDictionary = v10;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = EKUIEventNotificationRepresentation;
  v3 = [(EKUIEventNotificationRepresentation *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"%@ title: %@ subtitle: %@ numSupplementaryItems %lu", v3, self->_titleItem, self->_subtitleItem, -[NSArray count](self->_supplementaryItems, "count")];

  return v4;
}

+ (id)previewForNotes:(id)a3
{
  v3 = a3;
  if ([v3 length] <= 0x1F4)
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 substringToIndex:500];
  }

  v5 = v4;

  return v5;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:a1 file:@"EKUIEventNotificationRepresentation.m" lineNumber:340 description:{@"%@ must have a EKUIEventNotificationRepresentationType", v6}];
}

@end