@interface CalendarMessageAttendeeReplyCell
+ (id)actionsForNotification:(id)a3 proposedTimeAttendee:(id *)a4 eventStore:(id)a5;
- (id)actions;
- (id)bodyStringDict;
- (id)titleStrings;
- (void)setNotification:(id)a3;
- (void)updateAuthor;
@end

@implementation CalendarMessageAttendeeReplyCell

- (id)titleStrings
{
  v3 = [(CalendarMessageCell *)self notification];
  v4 = [v3 title];

  if (v4)
  {
    v5 = [(CalendarMessageCell *)self notification];
    v6 = [v5 title];
    v11 = v6;
    v7 = &v11;
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"(No Title)" value:&stru_1002133B8 table:0];
    v10 = v6;
    v7 = &v10;
  }

  v8 = [NSArray arrayWithObjects:v7 count:1];

  return v8;
}

- (void)updateAuthor
{
  v2 = self;
  v3 = [(CalendarMessageAttendeeReplyCell *)self bodyStringDict];
  v4 = [v3 objectForKeyedSubscript:CUIKNotificationDescriptionKeyImportantAttendee];
  v5 = [(CalendarMessageCell *)v2 authorView];
  v6 = v5;
  if (v4)
  {
    v7 = [(CalendarMessageCell *)v2 authorCacheKeyForIdentity:v4];
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

      v31 = [(CalendarMessageCell *)v2 authorAddressForIdentity:v4];
      v32 = [v4 name];
      v33 = [v4 firstName];
      v34 = [v4 lastName];
      [v6 updateWithAddress:v31 fullName:v32 firstName:v33 lastName:v34];

      if (([v6 loadContactsAsynchronously] & 1) == 0)
      {
        v35 = objc_opt_class();
        v36 = [v6 contact];
        [v35 authorCacheSetObject:v36 forKey:v7];
      }
    }

    v14 = v7;
  }

  else
  {
    v37 = v5;
    v38 = v3;
    v11 = [(CalendarMessageCell *)v2 notification];
    v12 = [v11 attendees];
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);

    v14 = v13;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = [(CalendarMessageCell *)v2 notification];
    v16 = [v15 attendees];

    obj = v16;
    v17 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v43;
      v39 = *v43;
      v40 = v2;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v42 + 1) + 8 * i);
          v22 = [(CalendarMessageCell *)v2 authorCacheKeyForIdentity:v21];
          v23 = [objc_opt_class() authorCacheObjectForKey:v22];
          if (!v23)
          {
            v24 = [(CalendarMessageCell *)v2 authorAddressForIdentity:v21];
            v25 = [v21 name];
            [v21 firstName];
            v27 = v26 = v18;
            v28 = [v21 lastName];
            +[EKUILabeledAvatarView contactKeysToFetch];
            v30 = v29 = v14;
            v23 = [ContactsUtils contactForAddress:v24 fullName:v25 firstName:v27 lastName:v28 keysToFetch:v30];

            v14 = v29;
            v18 = v26;

            v19 = v39;
            v2 = v40;
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
    v3 = v38;
  }
}

- (id)bodyStringDict
{
  v3 = objc_opt_class();
  v4 = [(CalendarMessageCell *)self notification];
  v5 = [v3 _bodyStringDict:v4];

  return v5;
}

- (id)actions
{
  [(CalendarMessageAttendeeReplyCell *)self layoutIfNeeded];
  v3 = [(CalendarMessageCell *)self delegate];
  v4 = [v3 eventStoreForCell:self];

  v5 = objc_opt_class();
  v6 = [(CalendarMessageCell *)self notification];
  v10 = 0;
  v7 = [v5 actionsForNotification:v6 proposedTimeAttendee:&v10 eventStore:v4];
  v8 = v10;

  [(CalendarMessageAttendeeReplyCell *)self setProposedTimeAttendee:v8];

  return v7;
}

+ (id)actionsForNotification:(id)a3 proposedTimeAttendee:(id *)a4 eventStore:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 _bodyStringDict:v8];
  v11 = [v10 objectForKeyedSubscript:CUIKNotificationDescriptionKeyImportantAttendee];
  v12 = v11;
  if (v11 && [v11 proposedStartDateChanged] && (objc_msgSend(v12, "proposedStartDate"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    if (a4)
    {
      v14 = v12;
      *a4 = v12;
    }

    if ([v12 proposedStartDateDeclined])
    {
      v15 = &off_100219F60;
    }

    else
    {
      v33 = v10;
      v19 = [v8 objectID];
      v35 = v8;
      v20 = [v8 startDate];
      v34 = v9;
      v21 = [v9 eventForObjectID:v19 occurrenceDate:v20 checkValid:0];

      v36 = objc_opt_new();
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v22 = [v21 attendees];
      v23 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
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
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v37 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = v27;
              v29 = [v12 emailAddress];
              v30 = [v28 emailAddress];
              v31 = [v29 isEqual:v30];

              if (v31)
              {
                [v36 addObject:v28];

                goto LABEL_29;
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
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

      v9 = v34;
      v8 = v35;
      v10 = v33;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
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

- (void)setNotification:(id)a3
{
  v4 = a3;
  [(CalendarMessageCell *)self setHasDisclosure:EKUICurrentWidthSizeClassIsCompactInViewHierarchy()];
  dateString = self->_dateString;
  self->_dateString = 0;

  v6.receiver = self;
  v6.super_class = CalendarMessageAttendeeReplyCell;
  [(CalendarMessageCell *)&v6 setNotification:v4];
}

@end