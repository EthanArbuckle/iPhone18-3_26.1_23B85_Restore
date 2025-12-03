@interface CalendarMessageSharedCalendarCell
- (BOOL)_shouldShowMessage;
- (id)actionBodyString;
- (id)bodyStringDict;
- (id)preActionBodyStrings;
- (id)titleStrings;
- (int64_t)actionBodyStringAction;
- (void)updateAuthor;
@end

@implementation CalendarMessageSharedCalendarCell

- (BOOL)_shouldShowMessage
{
  notification = [(CalendarMessageCell *)self notification];
  v3 = notification;
  v4 = notification && [notification sharingInvitationResponse] != 1 && objc_msgSend(v3, "sharingInvitationResponse") != 2;

  return v4;
}

- (id)titleStrings
{
  if ([(CalendarMessageSharedCalendarCell *)self _shouldShowMessage])
  {
    notification = [(CalendarMessageCell *)self notification];
    title = [notification title];
    if (title)
    {
      notification2 = [(CalendarMessageCell *)self notification];
      [notification2 title];
    }

    else
    {
      notification2 = [NSBundle bundleForClass:objc_opt_class()];
      [notification2 localizedStringForKey:@"Shared Calendar" value:&stru_1002133B8 table:0];
    }
    v7 = ;

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"Join “%@”?" value:&stru_1002133B8 table:0];
    v10 = [NSString localizedStringWithFormat:v9, v7];
    v12 = v10;
    v6 = [NSArray arrayWithObjects:&v12 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)bodyStringDict
{
  notification = [(CalendarMessageCell *)self notification];
  v3 = [notification descriptionStrings:CUIKCalendarNoboDescriptionProfile];

  return v3;
}

- (id)preActionBodyStrings
{
  notification = [(CalendarMessageCell *)self notification];
  couldBeJunk = [notification couldBeJunk];

  if (couldBeJunk)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"This invitation is from an unknown sender." value:&stru_1002133B8 table:0];
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)actionBodyString
{
  notification = [(CalendarMessageCell *)self notification];
  couldBeJunk = [notification couldBeJunk];

  if (couldBeJunk)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"Report Junk…" value:&stru_1002133B8 table:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)actionBodyStringAction
{
  notification = [(CalendarMessageCell *)self notification];
  couldBeJunk = [notification couldBeJunk];

  if (couldBeJunk)
  {
    return 0x10000;
  }

  else
  {
    return 0;
  }
}

- (void)updateAuthor
{
  notification = [(CalendarMessageCell *)self notification];
  couldBeJunk = [notification couldBeJunk];

  if (couldBeJunk)
  {
    authorView = [(CalendarMessageCell *)self authorView];
    v5 = objc_opt_new();
    [authorView setContact:v5];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CalendarMessageSharedCalendarCell;
    [(CalendarMessageCell *)&v7 updateAuthor];
  }
}

@end