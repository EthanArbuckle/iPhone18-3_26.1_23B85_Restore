@interface EKiMIPReply
+ (BOOL)shouldSendEmailForEvent:(id)a3 withDiff:(id)a4;
- (id)attendees;
- (id)emailBody;
- (id)emailSubject;
@end

@implementation EKiMIPReply

+ (BOOL)shouldSendEmailForEvent:(id)a3 withDiff:(id)a4
{
  v5 = a4;
  if ([a3 isSelfOrganized])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v5 summaryDictionary];
    v8 = [v7 objectForKey:@"selfAttendee.statusRaw"];

    v6 = v8 != 0;
  }

  return v6;
}

- (id)attendees
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(EKiMIPHandler *)self event];
  v3 = [v2 organizer];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)emailSubject
{
  v3 = [(EKiMIPHandler *)self event];
  v4 = [v3 participationStatus];

  if ((v4 - 2) <= 2 && (v5 = off_1E7801400[v4 - 2], EKBundle(), v6 = objc_claimAutoreleasedReturnValue(), [v6 localizedStringForKey:v5 value:&stru_1F1B49D68 table:@"iTIP"], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(EKiMIPHandler *)self event];
    v10 = [v9 title];
    v11 = [v8 localizedStringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v10];
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
  v4 = [(EKiMIPHandler *)self event];
  v5 = [v4 startDate];
  v6 = [v3 requiresSingularLocalizationForDate:v5];

  v7 = [(EKiMIPHandler *)self event];
  v8 = [v7 participationStatus];

  switch(v8)
  {
    case 4:
      v16 = [(EKiMIPHandler *)self event];
      v17 = [v16 isAllDay];

      if (v17)
      {
        v11 = EKBundle();
        v12 = v11;
        v13 = @"%@ has tentatively accepted your invitation to the event: %@, scheduled for %@.\n";
        goto LABEL_10;
      }

      v21 = [(EKiMIPHandler *)self event];
      v22 = [v21 isFloating];

      v12 = EKBundle();
      if (v22)
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
      v14 = [(EKiMIPHandler *)self event];
      v15 = [v14 isAllDay];

      if (v15)
      {
        v11 = EKBundle();
        v12 = v11;
        v13 = @"%@ has declined your invitation to the event: %@, scheduled for %@.\n";
        goto LABEL_10;
      }

      v19 = [(EKiMIPHandler *)self event];
      v20 = [v19 isFloating];

      v12 = EKBundle();
      if (v20)
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
      v9 = [(EKiMIPHandler *)self event];
      v10 = [v9 isAllDay];

      if (v10)
      {
        v11 = EKBundle();
        v12 = v11;
        v13 = @"%@ has accepted your invitation to the event: %@, scheduled for %@.\n";
LABEL_10:
        v18 = &stru_1F1B49D68;
        goto LABEL_39;
      }

      v23 = [(EKiMIPHandler *)self event];
      v24 = [v23 isFloating];

      v12 = EKBundle();
      if (v24)
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

  v26 = [MEMORY[0x1E6992F50] defaultProvider];
  v27 = [v26 myFullName];

  v28 = [(EKiMIPHandler *)self event];
  v29 = [v28 startDate];
  v30 = [v29 localizedLongDate];

  v31 = [(EKiMIPHandler *)self event];
  v32 = [v31 startDate];
  v33 = [v32 localizedShortTime];

  v34 = [(EKiMIPHandler *)self event];
  LODWORD(v32) = [v34 isAllDay];

  if (v32)
  {
    v35 = MEMORY[0x1E696AEC0];
    v36 = [(EKiMIPHandler *)self event];
    v37 = [v36 title];
    [v35 localizedStringWithValidatedFormat:v25 validFormatSpecifiers:@"%@%@%@" error:0, v27, v37, v30, v46];
  }

  else
  {
    v39 = [(EKiMIPHandler *)self event];
    v40 = [v39 isFloating];

    v41 = MEMORY[0x1E696AEC0];
    v36 = [(EKiMIPHandler *)self event];
    v42 = [v36 title];
    v37 = v42;
    if (!v40)
    {
      v43 = [(EKiMIPHandler *)self event];
      v44 = [v43 timeZone];
      v38 = [v41 localizedStringWithValidatedFormat:v25 validFormatSpecifiers:@"%@%@%@%@%@" error:0, v27, v37, v30, v33, v44];

      v25 = v43;
      goto LABEL_47;
    }

    [v41 localizedStringWithValidatedFormat:v25 validFormatSpecifiers:@"%@%@%@%@" error:0, v27, v42, v30, v33];
  }
  v38 = ;
LABEL_47:

LABEL_48:

  return v38;
}

@end