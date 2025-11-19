@interface CalendarPublishingActivityViewController
- (BOOL)_shouldShowSystemActivityType:(id)a3;
- (CalendarPublishingActivityDelegate)activityDelegate;
- (void)_prepareActivity:(id)a3;
@end

@implementation CalendarPublishingActivityViewController

- (BOOL)_shouldShowSystemActivityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E69CDAC0]])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x1E69CDAE8]] ^ 1;
  }

  return v4;
}

- (void)_prepareActivity:(id)a3
{
  v24 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v24 messageComposeViewController];
    v5 = [(CalendarPublishingActivityViewController *)self activityDelegate];
    v6 = [v5 pubishURL];
    [v4 setBody:v6];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = [v24 mailComposeViewController];
    v7 = MEMORY[0x1E696AEC0];
    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"Subscribe to my %@ Calendar" value:&stru_1F4EF6790 table:0];
    v10 = [(CalendarPublishingActivityViewController *)self activityDelegate];
    v11 = [v10 calendarTitle];
    v12 = [v7 localizedStringWithFormat:v9, v11];
    [v4 setSubject:v12];

    v13 = MEMORY[0x1E696AEC0];
    v14 = EventKitUIBundle();
    v15 = [v14 localizedStringForKey:@"Subscribe to my %@ Calendar at: %@" value:&stru_1F4EF6790 table:0];
    v16 = [(CalendarPublishingActivityViewController *)self activityDelegate];
    v17 = [v16 calendarTitle];
    v18 = [(CalendarPublishingActivityViewController *)self activityDelegate];
    v19 = [v18 pubishURL];
    v20 = [v13 localizedStringWithFormat:v15, v17, v19];
    [v4 setMessageBody:v20 isHTML:0];

    [v4 setKeyboardVisible:1];
  }

LABEL_6:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v24 pasteboard];
    v22 = [(CalendarPublishingActivityViewController *)self activityDelegate];
    v23 = [v22 pubishURL];
    [v21 setString:v23];
  }
}

- (CalendarPublishingActivityDelegate)activityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_activityDelegate);

  return WeakRetained;
}

@end