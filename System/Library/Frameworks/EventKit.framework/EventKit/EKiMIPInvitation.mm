@interface EKiMIPInvitation
+ (BOOL)shouldSendEmailForEvent:(id)a3 withDiff:(id)a4;
- (EKiMIPInvitation)initWithEvent:(id)a3 withDiff:(id)a4;
- (id)emailBody;
- (id)emailSubject;
@end

@implementation EKiMIPInvitation

- (EKiMIPInvitation)initWithEvent:(id)a3 withDiff:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = EKiMIPInvitation;
  v7 = [(EKiMIPHandler *)&v12 initWithEvent:a3];
  if (v7)
  {
    v8 = [v6 relationshipMultiValueAdds];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6992568]];
    attendees = v7->_attendees;
    v7->_attendees = v9;
  }

  return v7;
}

+ (BOOL)shouldSendEmailForEvent:(id)a3 withDiff:(id)a4
{
  v5 = a4;
  if ([a3 isSelfOrganized])
  {
    v6 = [v5 relationshipMultiValueAdds];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6992568]];

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
  v6 = [(EKiMIPHandler *)self event];
  v7 = [v6 title];
  v8 = [v3 localizedStringWithFormat:v5, v7];

  return v8;
}

- (id)emailBody
{
  v3 = [(EKiMIPHandler *)self event];
  v4 = [v3 startDate];
  v42 = [v4 localizedLongDate];

  v5 = [(EKiMIPHandler *)self event];
  if ([v5 isAllDay])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(EKiMIPHandler *)self event];
    v8 = [v7 startDate];
    v6 = [v8 localizedShortTime];
  }

  v41 = v6;

  v9 = MEMORY[0x1E6992F68];
  v10 = [(EKiMIPHandler *)self event];
  v11 = [v10 startDate];
  v12 = [v9 requiresSingularLocalizationForDate:v11];

  v13 = [MEMORY[0x1E6992F50] defaultProvider];
  v14 = MEMORY[0x1E695DFF8];
  v15 = [v13 myEmailAddress];
  v16 = [v14 URLForMail:v15];

  v40 = v16;
  v17 = [objc_alloc(MEMORY[0x1E69E3D10]) initWithURL:v16];
  v18 = [v13 myShortDisplayName];
  [v17 setCn:v18];

  v19 = [(EKiMIPHandler *)self event];
  v20 = [v19 isAllDay];

  if (v20)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = EKBundle();
    v23 = [v22 localizedStringForKey:@"%@ has invited you to the event: %@ value:scheduled for %@. To accept or decline this invitation table:{click the link below.\n", &stru_1F1B49D68, @"iTIP"}];
    v24 = [v17 displayName];
    v25 = [(EKiMIPHandler *)self event];
    v26 = [v25 title];
    v27 = v42;
    v28 = [v21 localizedStringWithFormat:v23, v24, v26, v42];
    v29 = v41;
  }

  else
  {
    v30 = [(EKiMIPHandler *)self event];
    v31 = [v30 isFloating];

    v39 = MEMORY[0x1E696AEC0];
    v32 = EKBundle();
    v22 = v32;
    v27 = v42;
    if (v31)
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
      v24 = [v17 displayName];
      v25 = [(EKiMIPHandler *)self event];
      v26 = [v25 title];
      v29 = v41;
      v28 = [v39 localizedStringWithFormat:v23, v24, v26, v42, v41];
    }

    else
    {
      v38 = v32;
      if (v12)
      {
        v23 = [v32 localizedStringForKey:@"itip invitation with timezone singular" value:@"%@ has invited you to the event: %@ table:{scheduled for %@ at %@ (%@). To accept or decline this invitation, click the link below.\n", @"iTIP"}];
        v24 = [v17 displayName];
        v25 = [(EKiMIPHandler *)self event];
        v26 = [v25 title];
        v37 = [(EKiMIPHandler *)self event];
        v34 = [v37 timeZone];
        v29 = v41;
        v27 = v42;
        v28 = [v39 localizedStringWithFormat:v23, v24, v26, v42, v41, v34];
      }

      else
      {
        v23 = [v32 localizedStringForKey:@"itip invitation with timezone plural" value:@"%@ has invited you to the event: %@ table:{scheduled for %@ at %@ (%@). To accept or decline this invitation, click the link below.\n", @"iTIP"}];
        v24 = [v17 displayName];
        v25 = [(EKiMIPHandler *)self event];
        v26 = [v25 title];
        v37 = [(EKiMIPHandler *)self event];
        v35 = [v37 timeZone];
        v27 = v42;
        v28 = [v39 localizedStringWithFormat:v23, v24, v26, v42, v41, v35];

        v29 = v41;
      }

      v22 = v38;
    }
  }

  return v28;
}

@end