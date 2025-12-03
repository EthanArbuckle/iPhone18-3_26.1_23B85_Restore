@interface CalendarMessageAttendeeReplyCell
+ (id)actionsForNotification:(id)notification proposedTimeAttendee:(id *)attendee eventStore:(id)store;
- (id)actions;
- (id)bodyStringDict;
- (id)titleStrings;
- (void)setNotification:(id)notification;
- (void)updateAuthor;
@end

@implementation CalendarMessageAttendeeReplyCell

- (id)titleStrings
{
  notification = [(CalendarMessageCell *)self notification];
  title = [notification title];

  if (title)
  {
    notification2 = [(CalendarMessageCell *)self notification];
    title2 = [notification2 title];
    v11 = title2;
    v7 = &v11;
  }

  else
  {
    notification2 = [NSBundle bundleForClass:objc_opt_class()];
    title2 = [notification2 localizedStringForKey:@"(No Title)" value:&stru_1002133B8 table:0];
    v10 = title2;
    v7 = &v10;
  }

  v8 = [NSArray arrayWithObjects:v7 count:1];

  return v8;
}

- (void)updateAuthor
{
  selfCopy = self;
  bodyStringDict = [(CalendarMessageAttendeeReplyCell *)self bodyStringDict];
  v4 = [bodyStringDict objectForKeyedSubscript:CUIKNotificationDescriptionKeyImportantAttendee];
  authorView = [(CalendarMessageCell *)selfCopy authorView];
  v6 = authorView;
  if (v4)
  {
    v7 = [(CalendarMessageCell *)selfCopy authorCacheKeyForIdentity:v4];
    v8 = [objc_opt_class() authorCacheObjectForKey:v7];
    v9 = v8;
    if (v8)
    {
      v47 = v8;
      v10 = [NSArray arrayWithObjects:&v47 count:1];
      [v6 updateWithContacts:v10];
    }

    else
    {
      if ([v6 loadContactsAsynchronously])
      {
        [v6 updateWithContacts:0];
      }

      v31 = [(CalendarMessageCell *)selfCopy authorAddressForIdentity:v4];
      name = [v4 name];
      firstName = [v4 firstName];
      lastName = [v4 lastName];
      [v6 updateWithAddress:v31 fullName:name firstName:firstName lastName:lastName];

      if (([v6 loadContactsAsynchronously] & 1) == 0)
      {
        v35 = objc_opt_class();
        contact = [v6 contact];
        [v35 authorCacheSetObject:contact forKey:v7];
      }
    }

    v14 = v7;
  }

  else
  {
    v37 = authorView;
    v38 = bodyStringDict;
    notification = [(CalendarMessageCell *)selfCopy notification];
    attendees = [notification attendees];
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [attendees count]);

    v14 = v13;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    notification2 = [(CalendarMessageCell *)selfCopy notification];
    attendees2 = [notification2 attendees];

    obj = attendees2;
    v17 = [attendees2 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v43;
      v39 = *v43;
      v40 = selfCopy;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v42 + 1) + 8 * i);
          v22 = [(CalendarMessageCell *)selfCopy authorCacheKeyForIdentity:v21];
          v23 = [objc_opt_class() authorCacheObjectForKey:v22];
          if (!v23)
          {
            v24 = [(CalendarMessageCell *)selfCopy authorAddressForIdentity:v21];
            name2 = [v21 name];
            [v21 firstName];
            v27 = v26 = v18;
            lastName2 = [v21 lastName];
            +[EKUILabeledAvatarView contactKeysToFetch];
            v30 = v29 = v14;
            v23 = [ContactsUtils contactForAddress:v24 fullName:name2 firstName:v27 lastName:lastName2 keysToFetch:v30];

            v14 = v29;
            v18 = v26;

            v19 = v39;
            selfCopy = v40;
            [objc_opt_class() authorCacheSetObject:v23 forKey:v22];
          }

          [v14 addObject:v23];
        }

        v18 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v18);
    }

    v6 = v37;
    [v37 updateWithContacts:v14];
    v4 = 0;
    bodyStringDict = v38;
  }
}

- (id)bodyStringDict
{
  v3 = objc_opt_class();
  notification = [(CalendarMessageCell *)self notification];
  v5 = [v3 _bodyStringDict:notification];

  return v5;
}

- (id)actions
{
  [(CalendarMessageAttendeeReplyCell *)self layoutIfNeeded];
  delegate = [(CalendarMessageCell *)self delegate];
  v4 = [delegate eventStoreForCell:self];

  v5 = objc_opt_class();
  notification = [(CalendarMessageCell *)self notification];
  v10 = 0;
  v7 = [v5 actionsForNotification:notification proposedTimeAttendee:&v10 eventStore:v4];
  v8 = v10;

  [(CalendarMessageAttendeeReplyCell *)self setProposedTimeAttendee:v8];

  return v7;
}

+ (id)actionsForNotification:(id)notification proposedTimeAttendee:(id *)attendee eventStore:(id)store
{
  notificationCopy = notification;
  storeCopy = store;
  v10 = [self _bodyStringDict:notificationCopy];
  v11 = [v10 objectForKeyedSubscript:CUIKNotificationDescriptionKeyImportantAttendee];
  v12 = v11;
  if (v11 && [v11 proposedStartDateChanged] && (objc_msgSend(v12, "proposedStartDate"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    if (attendee)
    {
      v14 = v12;
      *attendee = v12;
    }

    if ([v12 proposedStartDateDeclined])
    {
      v15 = &off_100219F60;
    }

    else
    {
      v33 = v10;
      objectID = [notificationCopy objectID];
      v35 = notificationCopy;
      startDate = [notificationCopy startDate];
      v34 = storeCopy;
      v21 = [storeCopy eventForObjectID:objectID occurrenceDate:startDate checkValid:0];

      v36 = objc_opt_new();
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      attendees = [v21 attendees];
      v23 = [attendees countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v38;
        while (2)
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v38 != v25)
            {
              objc_enumerationMutation(attendees);
            }

            v27 = *(*(&v37 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = v27;
              emailAddress = [v12 emailAddress];
              emailAddress2 = [v28 emailAddress];
              v31 = [emailAddress isEqual:emailAddress2];

              if (v31)
              {
                [v36 addObject:v28];

                goto LABEL_29;
              }
            }
          }

          v24 = [attendees countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:

      if ([EKUIEmailCompositionManager canShowViewControllerForEvent:v21 withParticipantRecipients:v36])
      {
        v15 = &off_100219F78;
      }

      else
      {
        v15 = &off_100219F90;
      }

      storeCopy = v34;
      notificationCopy = v35;
      v10 = v33;
    }
  }

  else
  {
    if (attendee)
    {
      *attendee = 0;
    }

    v16 = [v10 objectForKeyedSubscript:CUIKNotificationDescriptionKeyTimeProposals];

    if (v16)
    {
      v15 = &off_100219FA8;
    }

    else
    {
      v17 = [v10 objectForKeyedSubscript:CUIKNotificationDescriptionKeyComment];

      if (v17)
      {
        v18 = [v10 objectForKeyedSubscript:CUIKNotificationDescriptionKeyMultipleComments];

        if (v18)
        {
          v15 = &off_100219FD8;
        }

        else
        {
          v15 = &off_100219FF0;
        }
      }

      else
      {
        v15 = &off_100219FC0;
      }
    }
  }

  return v15;
}

- (void)setNotification:(id)notification
{
  notificationCopy = notification;
  [(CalendarMessageCell *)self setHasDisclosure:EKUICurrentWidthSizeClassIsCompactInViewHierarchy()];
  dateString = self->_dateString;
  self->_dateString = 0;

  v6.receiver = self;
  v6.super_class = CalendarMessageAttendeeReplyCell;
  [(CalendarMessageCell *)&v6 setNotification:notificationCopy];
}

@end