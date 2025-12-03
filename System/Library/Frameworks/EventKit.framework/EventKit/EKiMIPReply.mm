@interface EKiMIPReply
+ (BOOL)shouldSendEmailForEvent:(id)event withDiff:(id)diff;
- (id)attendees;
- (id)emailBody;
- (id)emailSubject;
@end

@implementation EKiMIPReply

+ (BOOL)shouldSendEmailForEvent:(id)event withDiff:(id)diff
{
  diffCopy = diff;
  if ([event isSelfOrganized])
  {
    v6 = 0;
  }

  else
  {
    summaryDictionary = [diffCopy summaryDictionary];
    v8 = [summaryDictionary objectForKey:@"selfAttendee.statusRaw"];

    v6 = v8 != 0;
  }

  return v6;
}

- (id)attendees
{
  v7[1] = *MEMORY[0x1E69E9840];
  event = [(EKiMIPHandler *)self event];
  organizer = [event organizer];
  v7[0] = organizer;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)emailSubject
{
  event = [(EKiMIPHandler *)self event];
  participationStatus = [event participationStatus];

  if ((participationStatus - 2) <= 2 && (v5 = off_1E7801400[participationStatus - 2], EKBundle(), v6 = objc_claimAutoreleasedReturnValue(), [v6 localizedStringForKey:v5 value:&stru_1F1B49D68 table:@"iTIP"], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    v8 = MEMORY[0x1E696AEC0];
    event2 = [(EKiMIPHandler *)self event];
    title = [event2 title];
    v11 = [v8 localizedStringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, title];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)emailBody
{
  v3 = MEMORY[0x1E6992F68];
  event = [(EKiMIPHandler *)self event];
  startDate = [event startDate];
  v6 = [v3 requiresSingularLocalizationForDate:startDate];

  event2 = [(EKiMIPHandler *)self event];
  participationStatus = [event2 participationStatus];

  switch(participationStatus)
  {
    case 4:
      event3 = [(EKiMIPHandler *)self event];
      isAllDay = [event3 isAllDay];

      if (isAllDay)
      {
        v11 = EKBundle();
        v12 = v11;
        v13 = @"%@ has tentatively accepted your invitation to the event: %@, scheduled for %@.\n";
        goto LABEL_10;
      }

      event4 = [(EKiMIPHandler *)self event];
      isFloating = [event4 isFloating];

      v12 = EKBundle();
      if (isFloating)
      {
        if (v6)
        {
          v13 = @"iTIP tentative acceptance floating event singular hour";
        }

        else
        {
          v13 = @"iTIP tentative acceptance floating event plural hour";
        }

        v18 = @"%@ has tentatively accepted your invitation to the event: %@, scheduled for %@ at %@.\n";
      }

      else
      {
        if (v6)
        {
          v13 = @"iTIP tentative acceptance timed event singular hour";
        }

        else
        {
          v13 = @"iTIP tentative acceptance timed event plural hour";
        }

        v18 = @"%@ has tentatively accepted your invitation to the event: %@, scheduled for %@ at %@ (%@).\n";
      }

      break;
    case 3:
      event5 = [(EKiMIPHandler *)self event];
      isAllDay2 = [event5 isAllDay];

      if (isAllDay2)
      {
        v11 = EKBundle();
        v12 = v11;
        v13 = @"%@ has declined your invitation to the event: %@, scheduled for %@.\n";
        goto LABEL_10;
      }

      event6 = [(EKiMIPHandler *)self event];
      isFloating2 = [event6 isFloating];

      v12 = EKBundle();
      if (isFloating2)
      {
        if (v6)
        {
          v13 = @"iTIP decline floating event singular hour";
        }

        else
        {
          v13 = @"iTIP decline floating event plural hour";
        }

        v18 = @"%@ has declined your invitation to the event: %@, scheduled for %@ at %@.\n";
      }

      else
      {
        if (v6)
        {
          v13 = @"iTIP decline timed event singular hour";
        }

        else
        {
          v13 = @"iTIP decline timed event plural hour";
        }

        v18 = @"%@ has declined your invitation to the event: %@, scheduled for %@ at %@ (%@).\n";
      }

      break;
    case 2:
      event7 = [(EKiMIPHandler *)self event];
      isAllDay3 = [event7 isAllDay];

      if (isAllDay3)
      {
        v11 = EKBundle();
        v12 = v11;
        v13 = @"%@ has accepted your invitation to the event: %@, scheduled for %@.\n";
LABEL_10:
        v18 = &stru_1F1B49D68;
        goto LABEL_39;
      }

      event8 = [(EKiMIPHandler *)self event];
      isFloating3 = [event8 isFloating];

      v12 = EKBundle();
      if (isFloating3)
      {
        if (v6)
        {
          v13 = @"iTIP accept floating event singular hour";
        }

        else
        {
          v13 = @"iTIP accept floating event plural hour";
        }

        v18 = @"%@ has accepted your invitation to the event: %@, scheduled for %@ at %@.\n";
      }

      else
      {
        if (v6)
        {
          v13 = @"iTIP accept timed event singular hour";
        }

        else
        {
          v13 = @"iTIP accept timed event plural hour";
        }

        v18 = @"%@ has accepted your invitation to the event: %@, scheduled for %@ at %@ (%@).\n";
      }

      break;
    default:
LABEL_42:
      v38 = 0;
      goto LABEL_48;
  }

  v11 = v12;
LABEL_39:
  v25 = [v11 localizedStringForKey:v13 value:v18 table:@"iTIP"];

  if (!v25)
  {
    goto LABEL_42;
  }

  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  myFullName = [defaultProvider myFullName];

  event9 = [(EKiMIPHandler *)self event];
  startDate2 = [event9 startDate];
  localizedLongDate = [startDate2 localizedLongDate];

  event10 = [(EKiMIPHandler *)self event];
  startDate3 = [event10 startDate];
  localizedShortTime = [startDate3 localizedShortTime];

  event11 = [(EKiMIPHandler *)self event];
  LODWORD(startDate3) = [event11 isAllDay];

  if (startDate3)
  {
    v35 = MEMORY[0x1E696AEC0];
    event12 = [(EKiMIPHandler *)self event];
    title = [event12 title];
    [v35 localizedStringWithValidatedFormat:v25 validFormatSpecifiers:@"%@%@%@" error:0, myFullName, title, localizedLongDate, v46];
  }

  else
  {
    event13 = [(EKiMIPHandler *)self event];
    isFloating4 = [event13 isFloating];

    v41 = MEMORY[0x1E696AEC0];
    event12 = [(EKiMIPHandler *)self event];
    title2 = [event12 title];
    title = title2;
    if (!isFloating4)
    {
      event14 = [(EKiMIPHandler *)self event];
      timeZone = [event14 timeZone];
      v38 = [v41 localizedStringWithValidatedFormat:v25 validFormatSpecifiers:@"%@%@%@%@%@" error:0, myFullName, title, localizedLongDate, localizedShortTime, timeZone];

      v25 = event14;
      goto LABEL_47;
    }

    [v41 localizedStringWithValidatedFormat:v25 validFormatSpecifiers:@"%@%@%@%@" error:0, myFullName, title2, localizedLongDate, localizedShortTime];
  }
  v38 = ;
LABEL_47:

LABEL_48:

  return v38;
}

@end