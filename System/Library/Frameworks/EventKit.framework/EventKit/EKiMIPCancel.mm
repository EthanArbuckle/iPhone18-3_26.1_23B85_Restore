@interface EKiMIPCancel
+ (BOOL)shouldSendEmailForEvent:(id)event removedAttendees:(id *)attendees;
- (EKiMIPCancel)initWithEvent:(id)event andAttendees:(id)attendees;
- (id)emailBody;
- (id)emailSubject;
@end

@implementation EKiMIPCancel

+ (BOOL)shouldSendEmailForEvent:(id)event removedAttendees:(id *)attendees
{
  eventCopy = event;
  if ([eventCopy isSelfOrganized])
  {
    if ([eventCopy isDeleted])
    {
      hasAttendees = 1;
    }

    else if (attendees)
    {
      diffFromCommitted = [eventCopy diffFromCommitted];
      relationshipMultiValueRemoves = [diffFromCommitted relationshipMultiValueRemoves];
      v9 = [relationshipMultiValueRemoves objectForKeyedSubscript:*MEMORY[0x1E6992568]];

      v10 = [v9 count];
      hasAttendees = v10 != 0;
      if (v10)
      {
        v11 = v9;
        *attendees = v9;
      }
    }

    else
    {
      hasAttendees = [eventCopy hasAttendees];
    }
  }

  else
  {
    hasAttendees = 0;
  }

  return hasAttendees;
}

- (EKiMIPCancel)initWithEvent:(id)event andAttendees:(id)attendees
{
  attendeesCopy = attendees;
  v14.receiver = self;
  v14.super_class = EKiMIPCancel;
  v8 = [(EKiMIPHandler *)&v14 initWithEvent:event];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_attendees, attendees);
    v10 = [(EKiMIPHandler *)v9 iCalendarDocumentWithMethod:[(EKiMIPCancel *)v9 icsMethod]];
    v11 = [v10 ICSDataWithOptions:0];
    attachmentData = v9->_attachmentData;
    v9->_attachmentData = v11;
  }

  return v9;
}

- (id)emailSubject
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = EKBundle();
  v5 = [v4 localizedStringForKey:@"Event canceled: %@" value:&stru_1F1B49D68 table:@"iTIP"];
  event = [(EKiMIPHandler *)self event];
  title = [event title];
  v8 = [v3 localizedStringWithFormat:v5, title];

  return v8;
}

- (id)emailBody
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = EKBundle();
  v5 = [v4 localizedStringForKey:@"%@ has canceled the event: %@. To handle this cancellation value:click the link below.\n" table:{&stru_1F1B49D68, @"iTIP"}];
  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  myShortDisplayName = [defaultProvider myShortDisplayName];
  event = [(EKiMIPHandler *)self event];
  title = [event title];
  v10 = [v3 localizedStringWithFormat:v5, myShortDisplayName, title];

  return v10;
}

@end