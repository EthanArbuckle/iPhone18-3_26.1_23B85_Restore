@interface EKiMIPUpdate
+ (BOOL)shouldSendEmailForEvent:(id)event withDiff:(id)diff;
- (id)attendees;
- (id)emailBody;
- (id)emailSubject;
@end

@implementation EKiMIPUpdate

+ (BOOL)shouldSendEmailForEvent:(id)event withDiff:(id)diff
{
  v30[10] = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  if ([event isSelfOrganized])
  {
    differentKeys = [diffCopy differentKeys];
    v7 = *MEMORY[0x1E6992600];
    v30[0] = *MEMORY[0x1E6992708];
    v30[1] = v7;
    v8 = *MEMORY[0x1E69926D0];
    v30[2] = *MEMORY[0x1E69926C8];
    v30[3] = v8;
    v9 = *MEMORY[0x1E69926D8];
    v30[4] = *MEMORY[0x1E6992968];
    v30[5] = v9;
    v10 = *MEMORY[0x1E69925A0];
    v30[6] = *MEMORY[0x1E6992560];
    v30[7] = v10;
    v11 = *MEMORY[0x1E6992598];
    v30[8] = *MEMORY[0x1E6992648];
    v30[9] = v11;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:10];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v28 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if ([differentKeys containsObject:{*(*(&v25 + 1) + 8 * i), v25}])
          {
            v20 = 1;
            relationshipMultiValueAdds = v12;
            goto LABEL_16;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    relationshipMultiValueAdds = [diffCopy relationshipMultiValueAdds];
    v18 = *MEMORY[0x1E6992568];
    v19 = [relationshipMultiValueAdds objectForKeyedSubscript:*MEMORY[0x1E6992568]];
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      relationshipMultiValueRemoves = [diffCopy relationshipMultiValueRemoves];
      v22 = [relationshipMultiValueRemoves objectForKeyedSubscript:v18];
      v20 = v22 != 0;
    }

LABEL_16:
  }

  else
  {
    v20 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)attendees
{
  event = [(EKiMIPHandler *)self event];
  attendees = [event attendees];

  return attendees;
}

- (id)emailSubject
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = EKBundle();
  v5 = [v4 localizedStringForKey:@"Event update: %@" value:&stru_1F1B49D68 table:@"iTIP"];
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

  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  v9 = MEMORY[0x1E695DFF8];
  myEmailAddress = [defaultProvider myEmailAddress];
  v11 = [v9 URLForMail:myEmailAddress];

  v42 = v11;
  v12 = [objc_alloc(MEMORY[0x1E69E3D10]) initWithURL:v11];
  myShortDisplayName = [defaultProvider myShortDisplayName];
  [v12 setCn:myShortDisplayName];

  v14 = MEMORY[0x1E6992F68];
  event4 = [(EKiMIPHandler *)self event];
  startDate3 = [event4 startDate];
  v17 = [v14 requiresSingularLocalizationForDate:startDate3];

  event5 = [(EKiMIPHandler *)self event];
  LODWORD(startDate3) = [event5 isAllDay];

  if (startDate3)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = EKBundle();
    displayName2 = [v20 localizedStringForKey:@"%@ has updated the event: %@ value:scheduled for %@. To acknowledge this invitation table:{click the link below.\n", &stru_1F1B49D68, @"iTIP"}];
    displayName = [v12 displayName];
    event6 = [(EKiMIPHandler *)self event];
    title = [event6 title];
    v25 = v19;
    v26 = localizedLongDate;
    v27 = [v25 localizedStringWithFormat:displayName2, displayName, title, localizedLongDate];
  }

  else
  {
    event7 = [(EKiMIPHandler *)self event];
    isFloating = [event7 isFloating];

    v31 = EKBundle();
    v32 = v31;
    v28 = localizedShortTime;
    if (isFloating)
    {
      if (v17)
      {
        v33 = @"iTIP update floating event singular hour";
      }

      else
      {
        v33 = @"iTIP update floating event plural hour";
      }

      v20 = [v31 localizedStringForKey:v33 value:@"%@ has updated the event: %@ table:{scheduled for %@ at %@. To acknowledge this invitation, click the link below.\n", @"iTIP"}];

      v36 = MEMORY[0x1E696AEC0];
      displayName2 = [v12 displayName];
      displayName = [(EKiMIPHandler *)self event];
      event6 = [displayName title];
      v26 = localizedLongDate;
      v27 = [v36 localizedStringWithFormat:v20, displayName2, event6, localizedLongDate, localizedShortTime];
      goto LABEL_14;
    }

    if (v17)
    {
      v20 = [v31 localizedStringForKey:@"iTIP update timed event singular hour" value:@"%@ has updated the event: %@ table:{scheduled for %@ at %@ (%@). To acknowledge this invitation, click the link below.\n", @"iTIP"}];

      v40 = MEMORY[0x1E696AEC0];
      displayName2 = [v12 displayName];
      displayName = [(EKiMIPHandler *)self event];
      event6 = [displayName title];
      event8 = [(EKiMIPHandler *)self event];
      timeZone = [event8 timeZone];
      v26 = localizedLongDate;
      v27 = [v40 localizedStringWithFormat:v20, displayName2, event6, localizedLongDate, localizedShortTime, timeZone];
    }

    else
    {
      v20 = [v31 localizedStringForKey:@"iTIP update timed event plural hour" value:@"%@ has updated the event: %@ table:{scheduled for %@ at %@ (%@). To acknowledge this invitation, click the link below.\n", @"iTIP"}];

      v41 = MEMORY[0x1E696AEC0];
      displayName2 = [v12 displayName];
      displayName = [(EKiMIPHandler *)self event];
      event6 = [displayName title];
      event9 = [(EKiMIPHandler *)self event];
      timeZone2 = [event9 timeZone];
      v27 = [v41 localizedStringWithFormat:v20, displayName2, event6, localizedLongDate, localizedShortTime, timeZone2];

      v26 = localizedLongDate;
    }
  }

  v28 = localizedShortTime;
LABEL_14:

  return v27;
}

@end