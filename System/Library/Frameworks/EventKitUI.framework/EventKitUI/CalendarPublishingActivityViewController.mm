@interface CalendarPublishingActivityViewController
- (BOOL)_shouldShowSystemActivityType:(id)type;
- (CalendarPublishingActivityDelegate)activityDelegate;
- (void)_prepareActivity:(id)activity;
@end

@implementation CalendarPublishingActivityViewController

- (BOOL)_shouldShowSystemActivityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E69CDAC0]])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:*MEMORY[0x1E69CDAE8]] ^ 1;
  }

  return v4;
}

- (void)_prepareActivity:(id)activity
{
  activityCopy = activity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    messageComposeViewController = [activityCopy messageComposeViewController];
    activityDelegate = [(CalendarPublishingActivityViewController *)self activityDelegate];
    pubishURL = [activityDelegate pubishURL];
    [messageComposeViewController setBody:pubishURL];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    messageComposeViewController = [activityCopy mailComposeViewController];
    v7 = MEMORY[0x1E696AEC0];
    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"Subscribe to my %@ Calendar" value:&stru_1F4EF6790 table:0];
    activityDelegate2 = [(CalendarPublishingActivityViewController *)self activityDelegate];
    calendarTitle = [activityDelegate2 calendarTitle];
    v12 = [v7 localizedStringWithFormat:v9, calendarTitle];
    [messageComposeViewController setSubject:v12];

    v13 = MEMORY[0x1E696AEC0];
    v14 = EventKitUIBundle();
    v15 = [v14 localizedStringForKey:@"Subscribe to my %@ Calendar at: %@" value:&stru_1F4EF6790 table:0];
    activityDelegate3 = [(CalendarPublishingActivityViewController *)self activityDelegate];
    calendarTitle2 = [activityDelegate3 calendarTitle];
    activityDelegate4 = [(CalendarPublishingActivityViewController *)self activityDelegate];
    pubishURL2 = [activityDelegate4 pubishURL];
    v20 = [v13 localizedStringWithFormat:v15, calendarTitle2, pubishURL2];
    [messageComposeViewController setMessageBody:v20 isHTML:0];

    [messageComposeViewController setKeyboardVisible:1];
  }

LABEL_6:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pasteboard = [activityCopy pasteboard];
    activityDelegate5 = [(CalendarPublishingActivityViewController *)self activityDelegate];
    pubishURL3 = [activityDelegate5 pubishURL];
    [pasteboard setString:pubishURL3];
  }
}

- (CalendarPublishingActivityDelegate)activityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_activityDelegate);

  return WeakRetained;
}

@end