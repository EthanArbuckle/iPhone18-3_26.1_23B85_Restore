@interface EKiMIPCancel
+ (BOOL)shouldSendEmailForEvent:(id)a3 removedAttendees:(id *)a4;
- (EKiMIPCancel)initWithEvent:(id)a3 andAttendees:(id)a4;
- (id)emailBody;
- (id)emailSubject;
@end

@implementation EKiMIPCancel

+ (BOOL)shouldSendEmailForEvent:(id)a3 removedAttendees:(id *)a4
{
  v5 = a3;
  if ([v5 isSelfOrganized])
  {
    if ([v5 isDeleted])
    {
      v6 = 1;
    }

    else if (a4)
    {
      v7 = [v5 diffFromCommitted];
      v8 = [v7 relationshipMultiValueRemoves];
      v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6992568]];

      v10 = [v9 count];
      v6 = v10 != 0;
      if (v10)
      {
        v11 = v9;
        *a4 = v9;
      }
    }

    else
    {
      v6 = [v5 hasAttendees];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (EKiMIPCancel)initWithEvent:(id)a3 andAttendees:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = EKiMIPCancel;
  v8 = [(EKiMIPHandler *)&v14 initWithEvent:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_attendees, a4);
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
  v6 = [(EKiMIPHandler *)self event];
  v7 = [v6 title];
  v8 = [v3 localizedStringWithFormat:v5, v7];

  return v8;
}

- (id)emailBody
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = EKBundle();
  v5 = [v4 localizedStringForKey:@"%@ has canceled the event: %@. To handle this cancellation value:click the link below.\n" table:{&stru_1F1B49D68, @"iTIP"}];
  v6 = [MEMORY[0x1E6992F50] defaultProvider];
  v7 = [v6 myShortDisplayName];
  v8 = [(EKiMIPHandler *)self event];
  v9 = [v8 title];
  v10 = [v3 localizedStringWithFormat:v5, v7, v9];

  return v10;
}

@end