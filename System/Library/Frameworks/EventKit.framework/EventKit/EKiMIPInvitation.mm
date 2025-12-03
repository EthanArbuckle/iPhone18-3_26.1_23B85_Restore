@interface EKiMIPInvitation
+ (BOOL)shouldSendEmailForEvent:(id)event withDiff:(id)diff;
- (EKiMIPInvitation)initWithEvent:(id)event withDiff:(id)diff;
- (id)emailBody;
- (id)emailSubject;
@end

@implementation EKiMIPInvitation

- (EKiMIPInvitation)initWithEvent:(id)event withDiff:(id)diff
{
  diffCopy = diff;
  v12.receiver = self;
  v12.super_class = EKiMIPInvitation;
  v7 = [(EKiMIPHandler *)&v12 initWithEvent:event];
  if (v7)
  {
    relationshipMultiValueAdds = [diffCopy relationshipMultiValueAdds];
    v9 = [relationshipMultiValueAdds objectForKeyedSubscript:*MEMORY[0x1E6992568]];
    attendees = v7->_attendees;
    v7->_attendees = v9;
  }

  return v7;
}

+ (BOOL)shouldSendEmailForEvent:(id)event withDiff:(id)diff
{
  diffCopy = diff;
  if ([event isSelfOrganized])
  {
    relationshipMultiValueAdds = [diffCopy relationshipMultiValueAdds];
    v7 = [relationshipMultiValueAdds objectForKeyedSubscript:*MEMORY[0x1E6992568]];

    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)emailSubject
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = EKBundle();
  v5 = [v4 localizedStringForKey:@"Event invitation: %@" value:&stru_1F1B49D68 table:@"iTIP"];
  event = [(EKiMIPHandler *)self event];
  title = [event title];
  v8 = [v3 localizedStringWithFormat:v5, title];

  return v8;
}

- (id)emailBody
{
  event = [(EKiMIPHandler *)self event];
  startDate = [event startDate];
  localizedLongDate = [startDate localizedLongDate];

  event2 = [(EKiMIPHandler *)self event];
  if ([event2 isAllDay])
  {
    localizedShortTime = 0;
  }

  else
  {
    event3 = [(EKiMIPHandler *)self event];
    startDate2 = [event3 startDate];
    localizedShortTime = [startDate2 localizedShortTime];
  }

  v41 = localizedShortTime;

  v9 = MEMORY[0x1E6992F68];
  event4 = [(EKiMIPHandler *)self event];
  startDate3 = [event4 startDate];
  v12 = [v9 requiresSingularLocalizationForDate:startDate3];

  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  v14 = MEMORY[0x1E695DFF8];
  myEmailAddress = [defaultProvider myEmailAddress];
  v16 = [v14 URLForMail:myEmailAddress];

  v40 = v16;
  v17 = [objc_alloc(MEMORY[0x1E69E3D10]) initWithURL:v16];
  myShortDisplayName = [defaultProvider myShortDisplayName];
  [v17 setCn:myShortDisplayName];

  event5 = [(EKiMIPHandler *)self event];
  isAllDay = [event5 isAllDay];

  if (isAllDay)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = EKBundle();
    v23 = [v22 localizedStringForKey:@"%@ has invited you to the event: %@ value:scheduled for %@. To accept or decline this invitation table:{click the link below.\n", &stru_1F1B49D68, @"iTIP"}];
    displayName = [v17 displayName];
    event6 = [(EKiMIPHandler *)self event];
    title = [event6 title];
    v27 = localizedLongDate;
    v28 = [v21 localizedStringWithFormat:v23, displayName, title, localizedLongDate];
    v29 = v41;
  }

  else
  {
    event7 = [(EKiMIPHandler *)self event];
    isFloating = [event7 isFloating];

    v39 = MEMORY[0x1E696AEC0];
    v32 = EKBundle();
    v22 = v32;
    v27 = localizedLongDate;
    if (isFloating)
    {
      if (v12)
      {
        v33 = @"itip invitation singular";
      }

      else
      {
        v33 = @"itip invitation plural";
      }

      v23 = [v32 localizedStringForKey:v33 value:@"%@ has invited you to the event: %@ table:{scheduled for %@ at %@. To accept or decline this invitation, click the link below.\n", @"iTIP"}];
      displayName = [v17 displayName];
      event6 = [(EKiMIPHandler *)self event];
      title = [event6 title];
      v29 = v41;
      v28 = [v39 localizedStringWithFormat:v23, displayName, title, localizedLongDate, v41];
    }

    else
    {
      v38 = v32;
      if (v12)
      {
        v23 = [v32 localizedStringForKey:@"itip invitation with timezone singular" value:@"%@ has invited you to the event: %@ table:{scheduled for %@ at %@ (%@). To accept or decline this invitation, click the link below.\n", @"iTIP"}];
        displayName = [v17 displayName];
        event6 = [(EKiMIPHandler *)self event];
        title = [event6 title];
        event8 = [(EKiMIPHandler *)self event];
        timeZone = [event8 timeZone];
        v29 = v41;
        v27 = localizedLongDate;
        v28 = [v39 localizedStringWithFormat:v23, displayName, title, localizedLongDate, v41, timeZone];
      }

      else
      {
        v23 = [v32 localizedStringForKey:@"itip invitation with timezone plural" value:@"%@ has invited you to the event: %@ table:{scheduled for %@ at %@ (%@). To accept or decline this invitation, click the link below.\n", @"iTIP"}];
        displayName = [v17 displayName];
        event6 = [(EKiMIPHandler *)self event];
        title = [event6 title];
        event8 = [(EKiMIPHandler *)self event];
        timeZone2 = [event8 timeZone];
        v27 = localizedLongDate;
        v28 = [v39 localizedStringWithFormat:v23, displayName, title, localizedLongDate, v41, timeZone2];

        v29 = v41;
      }

      v22 = v38;
    }
  }

  return v28;
}

@end