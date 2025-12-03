@interface EKCalendarRemoveExtraInfoEditItem
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)footerTitle;
- (id)headerTitle;
- (void)_stripAlertsChanged:(id)changed;
- (void)_stripAttachmentsChanged:(id)changed;
@end

@implementation EKCalendarRemoveExtraInfoEditItem

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v5 = objc_alloc_init(EKUITableViewCell);
  [(EKUITableViewCell *)v5 setSelectionStyle:0];
  if (index == 1)
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
    if (index)
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
  textLabel = [(EKUITableViewCell *)v5 textLabel];
  [textLabel setNumberOfLines:0];

  v10 = EventKitUIBundle();
  v11 = [v10 localizedStringForKey:v8 value:&stru_1F4EF6790 table:0];
  textLabel2 = [(EKUITableViewCell *)v5 textLabel];
  [textLabel2 setText:v11];

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

- (void)_stripAlertsChanged:(id)changed
{
  -[EKCalendar setStripAlarms:](self->super._calendar, "setStripAlarms:", [changed isOn]);
  delegate = [(EKCalendarEditItem *)self delegate];
  [delegate calendarItemStartedEditing:self];
}

- (void)_stripAttachmentsChanged:(id)changed
{
  -[EKCalendar setStripAttachments:](self->super._calendar, "setStripAttachments:", [changed isOn]);
  delegate = [(EKCalendarEditItem *)self delegate];
  [delegate calendarItemStartedEditing:self];
}

@end