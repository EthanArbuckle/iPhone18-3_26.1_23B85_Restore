@interface EKCalendarRemoveExtraInfoEditItem
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)footerTitle;
- (id)headerTitle;
- (void)_stripAlertsChanged:(id)a3;
- (void)_stripAttachmentsChanged:(id)a3;
@end

@implementation EKCalendarRemoveExtraInfoEditItem

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v5 = objc_alloc_init(EKUITableViewCell);
  [(EKUITableViewCell *)v5 setSelectionStyle:0];
  if (a3 == 1)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [v6 setOn:{-[EKCalendar stripAttachments](self->super._calendar, "stripAttachments")}];
    [v6 addTarget:self action:sel__stripAttachmentsChanged_ forControlEvents:4096];
    [v6 setAccessibilityIdentifier:@"calendar-remove-attachments-switch"];
    v7 = @"calendar-remove-attachments-cell";
    v8 = @"Remove Attachments";
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [v6 setOn:{-[EKCalendar stripAlarms](self->super._calendar, "stripAlarms")}];
    [v6 addTarget:self action:sel__stripAlertsChanged_ forControlEvents:4096];
    [v6 setAccessibilityIdentifier:@"calendar-remove-alerts-switch"];
    v7 = @"calendar-remove-alerts-cell";
    v8 = @"Remove Alerts";
  }

  [(EKUITableViewCell *)v5 setAccessoryView:v6];
  v9 = [(EKUITableViewCell *)v5 textLabel];
  [v9 setNumberOfLines:0];

  v10 = EventKitUIBundle();
  v11 = [v10 localizedStringForKey:v8 value:&stru_1F4EF6790 table:0];
  v12 = [(EKUITableViewCell *)v5 textLabel];
  [v12 setText:v11];

  [(EKUITableViewCell *)v5 setAccessibilityIdentifier:v7];
LABEL_6:

  return v5;
}

- (id)headerTitle
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Remove Extra Items" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)footerTitle
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Strip alerts or attachments from data added to the subscription calendar by the data provider. Default alerts will still apply according to your settings." value:&stru_1F4EF6790 table:0];

  return v3;
}

- (void)_stripAlertsChanged:(id)a3
{
  -[EKCalendar setStripAlarms:](self->super._calendar, "setStripAlarms:", [a3 isOn]);
  v4 = [(EKCalendarEditItem *)self delegate];
  [v4 calendarItemStartedEditing:self];
}

- (void)_stripAttachmentsChanged:(id)a3
{
  -[EKCalendar setStripAttachments:](self->super._calendar, "setStripAttachments:", [a3 isOn]);
  v4 = [(EKCalendarEditItem *)self delegate];
  [v4 calendarItemStartedEditing:self];
}

@end