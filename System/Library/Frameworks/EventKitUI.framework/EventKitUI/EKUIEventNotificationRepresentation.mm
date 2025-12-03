@interface EKUIEventNotificationRepresentation
+ (BOOL)_invitationNotificationHasResourceChanges:(id)changes changesString:(id *)string;
+ (id)_fromLocalizedString;
+ (id)_invitationUpdatedTitleLocalizedString;
+ (id)_whenLocalizedString;
+ (id)_whereLocalizedString;
+ (id)defaultEventNotificationRepresentationWithTitle:(id)title message:(id)message notes:(id)notes;
+ (id)invitationNotificationRepresentationWithNotification:(id)notification event:(id)event date:(id)date endDate:(id)endDate timeZone:(id)zone;
+ (id)previewForNotes:(id)notes;
+ (id)resourceChangeNotificationWithNotification:(id)notification message:(id)message date:(id)date endDate:(id)endDate timeZone:(id)zone;
+ (id)responseNotificationWithTitle:(id)title message:(id)message;
+ (id)timeToLeaveNotificationRepresentationWithHypothesisMessage:(id)message event:(id)event date:(id)date displayTimeZone:(id)zone;
+ (id)upcomingEventNotificationRepresentationWithEvent:(id)event date:(id)date displayTimeZone:(id)zone;
- (EKUIEventNotificationRepresentation)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (id)dictionaryRepresentationsOfSupplementaryItems;
- (void)_setOwnerForContactDictionary:(id)dictionary;
- (void)setOrganizerForContactDictionary:(id)dictionary;
- (void)updateUpcomingEventNotificationWithHypothesisMessage:(id)message;
@end

@implementation EKUIEventNotificationRepresentation

+ (id)defaultEventNotificationRepresentationWithTitle:(id)title message:(id)message notes:(id)notes
{
  notesCopy = notes;
  messageCopy = message;
  titleCopy = title;
  v11 = objc_alloc_init(self);
  [v11 setType:0];
  v12 = EventKitUIBundle();
  v13 = [v12 localizedStringForKey:@"Unknown title" value:@"Title" table:0];
  v14 = [EKUITextAndHeaderItem itemWithText:titleCopy andHeader:v13];

  [v11 setTitleItem:v14];
  v15 = [EKUITextAndHeaderItem itemWithText:messageCopy andHeader:&stru_1F4EF6790];

  [v11 setSubtitleItem:v15];
  v16 = [objc_opt_class() previewForNotes:notesCopy];

  [v11 setNotes:v16];

  return v11;
}

+ (id)upcomingEventNotificationRepresentationWithEvent:(id)event date:(id)date displayTimeZone:(id)zone
{
  v89 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dateCopy = date;
  zoneCopy = zone;
  v10 = objc_alloc_init(self);
  [v10 setType:1];
  [v10 setAllDay:{objc_msgSend(eventCopy, "isAllDay")}];
  v79 = dateCopy;
  [v10 setDate:dateCopy];
  v11 = objc_opt_class();
  notes = [eventCopy notes];
  v13 = [v11 previewForNotes:notes];
  [v10 setNotes:v13];

  title = [eventCopy title];
  v15 = EventKitUIBundle();
  v16 = [v15 localizedStringForKey:@"Title" value:&stru_1F4EF6790 table:0];
  v17 = [EKUITextAndHeaderItem itemWithText:title andHeader:v16];

  v78 = v17;
  [v10 setTitleItem:v17];
  v18 = MEMORY[0x1E6993408];
  location = [eventCopy location];
  locationWithoutPrediction = [eventCopy locationWithoutPrediction];
  preferredLocation = [eventCopy preferredLocation];
  v22 = [v18 locationStringForLocation:location locationWithoutPrediction:locationWithoutPrediction preferredLocation:preferredLocation conferenceURL:0 conferenceURLIsBroadcast:0 options:96];
  string = [v22 string];

  if ([string length])
  {
    _whereLocalizedString = [objc_opt_class() _whereLocalizedString];
    v25 = [EKUITextAndHeaderItem itemWithText:string andHeader:_whereLocalizedString];

    [v10 setSubtitleItem:v25];
  }

  v77 = string;
  array = [MEMORY[0x1E695DF70] array];
  v27 = +[EKStringFactory sharedInstance];
  startDate = [eventCopy startDate];
  endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
  v30 = [v27 dateStringForEventInvitationWithStartDate:startDate endDate:endDateUnadjustedForLegacyClients timeZone:zoneCopy allDay:{objc_msgSend(eventCopy, "isAllDay")}];

  v31 = array;
  _whenLocalizedString = [objc_opt_class() _whenLocalizedString];
  v76 = v30;
  v33 = [EKUITextAndHeaderItem itemWithText:v30 andHeader:_whenLocalizedString];
  [array addObject:v33];

  organizer = [eventCopy organizer];
  v35 = organizer;
  if (organizer && ([organizer isCurrentUser] & 1) == 0)
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

  attendees = [eventCopy attendees];
  v42 = attendees;
  v43 = v79;
  if (attendees && [attendees count])
  {
    v72 = v10;
    v73 = eventCopy;
    v71 = v42;
    v74 = [eventCopy sortEKParticipantsIgnoringNonHumans:v42];
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
            name = [v52 name];
            v54 = name;
            if (name)
            {
              resourceSpecifier = name;
            }

            else
            {
              v56 = [v52 URL];
              resourceSpecifier = [v56 resourceSpecifier];
            }

            participantStatus = [v52 participantStatus];
            v58 = v44;
            if (participantStatus == 3 || (v59 = [v52 participantStatus], v58 = v46, v59 == 4) || (v60 = objc_msgSend(v52, "participantStatus"), v58 = v81, !v60))
            {
              [v58 addObject:resourceSpecifier];
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
    eventCopy = v73;
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

+ (id)invitationNotificationRepresentationWithNotification:(id)notification event:(id)event date:(id)date endDate:(id)endDate timeZone:(id)zone
{
  notificationCopy = notification;
  eventCopy = event;
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  v15 = objc_alloc_init(self);
  v16 = notificationCopy;
  [v15 setType:2];
  v17 = objc_opt_new();
  title = [v16 title];
  [v17 setText:title];

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

  type = [v16 type];
  v26 = objc_opt_class();
  if (type == 3)
  {
    _invitationUpdatedTitleLocalizedString = [v26 _invitationUpdatedTitleLocalizedString];
    [v17 setHeader:_invitationUpdatedTitleLocalizedString];

    v24 = CUIKMessageStringForEventInvitationNotification();
    goto LABEL_5;
  }

  v63 = 0;
  v29 = [v26 _invitationNotificationHasResourceChanges:v16 changesString:&v63];
  v30 = v63;
  if (v29)
  {
    _invitationUpdatedTitleLocalizedString2 = [objc_opt_class() _invitationUpdatedTitleLocalizedString];
    [v17 setHeader:_invitationUpdatedTitleLocalizedString2];

    [v19 setText:v30];
  }

  else
  {
    v32 = EventKitUIBundle();
    v33 = [v32 localizedStringForKey:@"Invitation" value:&stru_1F4EF6790 table:0];
    [v17 setHeader:v33];

    _fromLocalizedString = [objc_opt_class() _fromLocalizedString];
    [v19 setHeader:_fromLocalizedString];

    v35 = CUIKDisplayStringForNotificationIdentity();
    [v19 setText:v35];
  }

LABEL_10:
  [v15 setDate:dateCopy];
  if (([eventCopy isAllDay] & 1) == 0)
  {
    endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];

    if (endDateUnadjustedForLegacyClients)
    {
      [v15 setEndDate:endDateCopy];
      v37 = [eventCopy potentialConflictOccurrenceDatesInTimePeriod:0];
      [v15 setPotentialConflictDates:v37];

      calendar = [eventCopy calendar];
      source = [calendar source];
      sourceIdentifier = [source sourceIdentifier];
      [v15 setSourceIdentifier:sourceIdentifier];

      externalURL = [eventCopy externalURL];
      absoluteString = [externalURL absoluteString];
      [v15 setExternalURLString:absoluteString];
    }
  }

  v61 = eventCopy;
  [v15 setTitleItem:v17];
  [v15 setSubtitleItem:v19];
  v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v44 = objc_opt_new();
  _whenLocalizedString = [objc_opt_class() _whenLocalizedString];
  [v44 setHeader:_whenLocalizedString];

  v46 = +[EKStringFactory sharedInstance];
  v47 = dateCopy;
  v48 = [v46 dateStringForEventInvitationWithStartDate:dateCopy endDate:endDateCopy timeZone:zoneCopy allDay:{objc_msgSend(v16, "isAllDay")}];

  [v44 setText:v48];
  [v43 addObject:v44];
  location = [v16 location];
  v50 = [location length];

  if (v50)
  {
    v51 = objc_opt_new();
    _whereLocalizedString = [objc_opt_class() _whereLocalizedString];
    [v51 setHeader:_whereLocalizedString];

    location2 = [v16 location];
    [v51 setText:location2];

    [v43 addObject:v51];
  }

  v54 = [v43 copy];
  [v15 setSupplementaryItems:v54];

  owner = [v16 owner];

  if (owner)
  {
    owner2 = [v16 owner];
    isCurrentUser = [owner2 isCurrentUser];

    if ((isCurrentUser & 1) == 0)
    {
      owner3 = [v16 owner];
      [v15 _setOwnerForContactDictionary:owner3];
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

+ (BOOL)_invitationNotificationHasResourceChanges:(id)changes changesString:(id *)string
{
  changesCopy = changes;
  if ([changesCopy timeChanged] & 1) != 0 || (objc_msgSend(changesCopy, "dateChanged"))
  {
    locationChanged = 1;
    if (!string)
    {
      goto LABEL_20;
    }
  }

  else
  {
    locationChanged = [changesCopy locationChanged];
    if (!string)
    {
      goto LABEL_20;
    }
  }

  if (!locationChanged)
  {
    goto LABEL_20;
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  if (([changesCopy timeChanged] & 1) != 0 || objc_msgSend(changesCopy, "dateChanged"))
  {
    if ([changesCopy timeChanged])
    {
      v8 = @"Time changed";
      goto LABEL_13;
    }

    if ([changesCopy dateChanged])
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

  if ([changesCopy locationChanged])
  {
    if ([changesCopy locationChanged])
    {
      v11 = EventKitUIBundle();
      v12 = [v11 localizedStringForKey:@"Location changed" value:&stru_1F4EF6790 table:0];

      if (v12)
      {
        [v7 addObject:v12];
      }
    }
  }

  *string = [v7 componentsJoinedByString:@"\n"];

LABEL_20:
  return locationChanged;
}

+ (id)responseNotificationWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v8 = objc_alloc_init(self);
  [v8 setType:3];
  v9 = EventKitUIBundle();
  v10 = [v9 localizedStringForKey:@"Shared Calendar" value:&stru_1F4EF6790 table:0];
  v11 = [EKUITextAndHeaderItem itemWithText:titleCopy andHeader:v10];

  [v8 setTitleItem:v11];
  v12 = [EKUITextAndHeaderItem itemWithText:messageCopy andHeader:&stru_1F4EF6790];

  [v8 setSubtitleItem:v12];

  return v8;
}

+ (id)resourceChangeNotificationWithNotification:(id)notification message:(id)message date:(id)date endDate:(id)endDate timeZone:(id)zone
{
  notificationCopy = notification;
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  messageCopy = message;
  v15 = objc_alloc_init(self);
  [v15 setType:4];
  v16 = notificationCopy;
  v17 = objc_opt_new();
  v18 = EventKitUIBundle();
  v19 = [v18 localizedStringForKey:@"Shared Event" value:&stru_1F4EF6790 table:0];
  [v17 setHeader:v19];

  title = [v16 title];
  [v17 setText:title];

  [v15 setTitleItem:v17];
  v21 = dateCopy;
  v22 = [EKUITextAndHeaderItem itemWithText:messageCopy andHeader:&stru_1F4EF6790];

  [v15 setSubtitleItem:v22];
  v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  if ([v16 changeType] != 3)
  {
    v24 = objc_opt_new();
    _whenLocalizedString = [objc_opt_class() _whenLocalizedString];
    [v24 setHeader:_whenLocalizedString];

    v26 = +[EKStringFactory sharedInstance];
    v27 = [v26 dateStringForEventInvitationWithStartDate:dateCopy endDate:endDateCopy timeZone:zoneCopy allDay:{objc_msgSend(v16, "allDay")}];
    [v24 setText:v27];

    [v23 addObject:v24];
  }

  location = [v16 location];
  v29 = [location length];

  if (v29)
  {
    v30 = objc_opt_new();
    _whereLocalizedString = [objc_opt_class() _whereLocalizedString];
    [v30 setHeader:_whereLocalizedString];

    location2 = [v16 location];
    [v30 setText:location2];

    [v23 addObject:v30];
  }

  v33 = [v23 copy];
  [v15 setSupplementaryItems:v33];

  [v15 setDate:v21];
  [v15 setEndDate:endDateCopy];

  return v15;
}

+ (id)timeToLeaveNotificationRepresentationWithHypothesisMessage:(id)message event:(id)event date:(id)date displayTimeZone:(id)zone
{
  messageCopy = message;
  v11 = [self upcomingEventNotificationRepresentationWithEvent:event date:date displayTimeZone:zone];
  [v11 updateUpcomingEventNotificationWithHypothesisMessage:messageCopy];

  return v11;
}

- (void)updateUpcomingEventNotificationWithHypothesisMessage:(id)message
{
  if (message)
  {
    messageCopy = message;
    [(EKUIEventNotificationRepresentation *)self setType:5];
    v8 = [EKUITextAndHeaderItem itemWithText:messageCopy andHeader:&stru_1F4EF6790];

    [(EKUIEventNotificationRepresentation *)self setSubtitleItem:v8];
    titleItem = [(EKUIEventNotificationRepresentation *)self titleItem];
    v6 = EventKitUIBundle();
    v7 = [v6 localizedStringForKey:@"Time to Leave Watch notification header" value:@"Time to Leave" table:0];
    [titleItem setHeader:v7];
  }
}

- (EKUIEventNotificationRepresentation)initWithDictionary:(id)dictionary
{
  v53 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v51.receiver = self;
  v51.super_class = EKUIEventNotificationRepresentation;
  v6 = [(EKUIEventNotificationRepresentation *)&v51 init];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    if (!v7)
    {
      [(EKUIEventNotificationRepresentation *)v6 initWithDictionary:a2];
    }

    v6->_type = [v7 integerValue];
    v8 = [EKUITextAndHeaderItem alloc];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    v10 = [(EKUITextAndHeaderItem *)v8 initWithDictionary:v9];
    titleItem = v6->_titleItem;
    v6->_titleItem = v10;

    v12 = [EKUITextAndHeaderItem alloc];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    v14 = [(EKUITextAndHeaderItem *)v12 initWithDictionary:v13];
    subtitleItem = v6->_subtitleItem;
    v6->_subtitleItem = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"userActivity"];
    userActivityUserInfo = v6->_userActivityUserInfo;
    v6->_userActivityUserInfo = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"date"];
    date = v6->_date;
    v6->_date = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
    endDate = v6->_endDate;
    v6->_endDate = v20;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"allDay"];
    v6->_allDay = [v22 BOOLValue];

    v23 = [dictionaryCopy objectForKeyedSubscript:@"organizer"];
    organizerContactDictionary = v6->_organizerContactDictionary;
    v6->_organizerContactDictionary = v23;

    v25 = [dictionaryCopy objectForKeyedSubscript:@"sourceIdentifier"];
    sourceIdentifier = v6->_sourceIdentifier;
    v6->_sourceIdentifier = v25;

    v27 = [dictionaryCopy objectForKeyedSubscript:@"externalURL"];
    externalURLString = v6->_externalURLString;
    v6->_externalURLString = v27;

    v29 = [dictionaryCopy objectForKeyedSubscript:@"potentialConflictDates"];
    potentialConflictDates = v6->_potentialConflictDates;
    v6->_potentialConflictDates = v29;

    v31 = [dictionaryCopy objectForKeyedSubscript:@"notes"];
    notes = v6->_notes;
    v6->_notes = v31;

    supplementaryItems = v6->_supplementaryItems;
    v6->_supplementaryItems = 0;

    v34 = [dictionaryCopy objectForKeyedSubscript:@"supplementary"];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  [dictionary setObject:v4 forKeyedSubscript:@"type"];

  titleItem = self->_titleItem;
  if (titleItem)
  {
    dictionaryRepresentation = [(EKUITextAndHeaderItem *)titleItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"title"];
  }

  subtitleItem = self->_subtitleItem;
  if (subtitleItem)
  {
    dictionaryRepresentation2 = [(EKUITextAndHeaderItem *)subtitleItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"subtitle"];
  }

  if (self->_supplementaryItems)
  {
    dictionaryRepresentationsOfSupplementaryItems = [(EKUIEventNotificationRepresentation *)self dictionaryRepresentationsOfSupplementaryItems];
    [dictionary setObject:dictionaryRepresentationsOfSupplementaryItems forKeyedSubscript:@"supplementary"];
  }

  userActivityUserInfo = self->_userActivityUserInfo;
  if (userActivityUserInfo)
  {
    [dictionary setObject:userActivityUserInfo forKeyedSubscript:@"userActivity"];
  }

  date = self->_date;
  if (date)
  {
    [dictionary setObject:date forKeyedSubscript:@"date"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    [dictionary setObject:endDate forKeyedSubscript:@"endDate"];
  }

  organizerContactDictionary = self->_organizerContactDictionary;
  if (organizerContactDictionary)
  {
    [dictionary setObject:organizerContactDictionary forKeyedSubscript:@"organizer"];
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier)
  {
    [dictionary setObject:sourceIdentifier forKeyedSubscript:@"sourceIdentifier"];
  }

  externalURLString = self->_externalURLString;
  if (externalURLString)
  {
    [dictionary setObject:externalURLString forKeyedSubscript:@"externalURL"];
  }

  potentialConflictDates = self->_potentialConflictDates;
  if (potentialConflictDates)
  {
    v17 = [(NSArray *)potentialConflictDates copy];
    [dictionary setObject:v17 forKeyedSubscript:@"potentialConflictDates"];
  }

  notes = self->_notes;
  if (notes)
  {
    [dictionary setObject:notes forKeyedSubscript:@"notes"];
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_allDay];
  [dictionary setObject:v19 forKeyedSubscript:@"allDay"];

  v20 = [dictionary copy];

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

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
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

- (void)setOrganizerForContactDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    name = [dictionaryCopy name];
    v6 = [name length];

    if (v6)
    {
      name2 = [dictionaryCopy name];
      [dictionary setObject:name2 forKeyedSubscript:@"displayName"];
    }

    v8 = [dictionaryCopy URL];
    resourceSpecifier = [v8 resourceSpecifier];

    if ([resourceSpecifier length])
    {
      [dictionary setObject:resourceSpecifier forKeyedSubscript:@"rawAddress"];
    }
  }

  else
  {
    dictionary = 0;
  }

  v10 = [dictionary copy];
  organizerContactDictionary = self->_organizerContactDictionary;
  self->_organizerContactDictionary = v10;
}

- (void)_setOwnerForContactDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    name = [dictionaryCopy name];
    v6 = [name length];

    if (v6)
    {
      name2 = [dictionaryCopy name];
      [dictionary setObject:name2 forKeyedSubscript:@"displayName"];
    }

    v8 = [dictionaryCopy URL];
    resourceSpecifier = [v8 resourceSpecifier];

    if ([resourceSpecifier length])
    {
      [dictionary setObject:resourceSpecifier forKeyedSubscript:@"rawAddress"];
    }
  }

  else
  {
    dictionary = 0;
  }

  v10 = [dictionary copy];
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

+ (id)previewForNotes:(id)notes
{
  notesCopy = notes;
  if ([notesCopy length] <= 0x1F4)
  {
    v4 = notesCopy;
  }

  else
  {
    v4 = [notesCopy substringToIndex:500];
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