@interface EKiMIPUpdate
+ (BOOL)shouldSendEmailForEvent:(id)a3 withDiff:(id)a4;
- (id)attendees;
- (id)emailBody;
- (id)emailSubject;
@end

@implementation EKiMIPUpdate

+ (BOOL)shouldSendEmailForEvent:(id)a3 withDiff:(id)a4
{
  v30[10] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([a3 isSelfOrganized])
  {
    v6 = [v5 differentKeys];
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

          if ([v6 containsObject:{*(*(&v25 + 1) + 8 * i), v25}])
          {
            v20 = 1;
            v17 = v12;
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

    v17 = [v5 relationshipMultiValueAdds];
    v18 = *MEMORY[0x1E6992568];
    v19 = [v17 objectForKeyedSubscript:*MEMORY[0x1E6992568]];
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v21 = [v5 relationshipMultiValueRemoves];
      v22 = [v21 objectForKeyedSubscript:v18];
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
  v2 = [(EKiMIPHandler *)self event];
  v3 = [v2 attendees];

  return v3;
}

- (id)emailSubject
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = EKBundle();
  v5 = [v4 localizedStringForKey:@"Event update: %@" value:&stru_1F1B49D68 table:@"iTIP"];
  v6 = [(EKiMIPHandler *)self event];
  v7 = [v6 title];
  v8 = [v3 localizedStringWithFormat:v5, v7];

  return v8;
}

- (id)emailBody
{
  v3 = [(EKiMIPHandler *)self event];
  v4 = [v3 startDate];
  v43 = [v4 localizedLongDate];

  v5 = [(EKiMIPHandler *)self event];
  if ([v5 isAllDay])
  {
    v44 = 0;
  }

  else
  {
    v6 = [(EKiMIPHandler *)self event];
    v7 = [v6 startDate];
    v44 = [v7 localizedShortTime];
  }

  v8 = [MEMORY[0x1E6992F50] defaultProvider];
  v9 = MEMORY[0x1E695DFF8];
  v10 = [v8 myEmailAddress];
  v11 = [v9 URLForMail:v10];

  v42 = v11;
  v12 = [objc_alloc(MEMORY[0x1E69E3D10]) initWithURL:v11];
  v13 = [v8 myShortDisplayName];
  [v12 setCn:v13];

  v14 = MEMORY[0x1E6992F68];
  v15 = [(EKiMIPHandler *)self event];
  v16 = [v15 startDate];
  v17 = [v14 requiresSingularLocalizationForDate:v16];

  v18 = [(EKiMIPHandler *)self event];
  LODWORD(v16) = [v18 isAllDay];

  if (v16)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = EKBundle();
    v21 = [v20 localizedStringForKey:@"%@ has updated the event: %@ value:scheduled for %@. To acknowledge this invitation table:{click the link below.\n", &stru_1F1B49D68, @"iTIP"}];
    v22 = [v12 displayName];
    v23 = [(EKiMIPHandler *)self event];
    v24 = [v23 title];
    v25 = v19;
    v26 = v43;
    v27 = [v25 localizedStringWithFormat:v21, v22, v24, v43];
  }

  else
  {
    v29 = [(EKiMIPHandler *)self event];
    v30 = [v29 isFloating];

    v31 = EKBundle();
    v32 = v31;
    v28 = v44;
    if (v30)
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
      v21 = [v12 displayName];
      v22 = [(EKiMIPHandler *)self event];
      v23 = [v22 title];
      v26 = v43;
      v27 = [v36 localizedStringWithFormat:v20, v21, v23, v43, v44];
      goto LABEL_14;
    }

    if (v17)
    {
      v20 = [v31 localizedStringForKey:@"iTIP update timed event singular hour" value:@"%@ has updated the event: %@ table:{scheduled for %@ at %@ (%@). To acknowledge this invitation, click the link below.\n", @"iTIP"}];

      v40 = MEMORY[0x1E696AEC0];
      v21 = [v12 displayName];
      v22 = [(EKiMIPHandler *)self event];
      v23 = [v22 title];
      v34 = [(EKiMIPHandler *)self event];
      v35 = [v34 timeZone];
      v26 = v43;
      v27 = [v40 localizedStringWithFormat:v20, v21, v23, v43, v44, v35];
    }

    else
    {
      v20 = [v31 localizedStringForKey:@"iTIP update timed event plural hour" value:@"%@ has updated the event: %@ table:{scheduled for %@ at %@ (%@). To acknowledge this invitation, click the link below.\n", @"iTIP"}];

      v41 = MEMORY[0x1E696AEC0];
      v21 = [v12 displayName];
      v22 = [(EKiMIPHandler *)self event];
      v23 = [v22 title];
      v38 = [(EKiMIPHandler *)self event];
      v39 = [v38 timeZone];
      v27 = [v41 localizedStringWithFormat:v20, v21, v23, v43, v44, v39];

      v26 = v43;
    }
  }

  v28 = v44;
LABEL_14:

  return v27;
}

@end