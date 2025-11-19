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
  v2 = [(CalendarMessageCell *)self notification];
  v3 = v2;
  v4 = v2 && [v2 sharingInvitationResponse] != 1 && objc_msgSend(v3, "sharingInvitationResponse") != 2;

  return v4;
}

- (id)titleStrings
{
  if ([(CalendarMessageSharedCalendarCell *)self _shouldShowMessage])
  {
    v3 = [(CalendarMessageCell *)self notification];
    v4 = [v3 title];
    if (v4)
    {
      v5 = [(CalendarMessageCell *)self notification];
      [v5 title];
    }

    else
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      [v5 localizedStringForKey:@"Shared Calendar" value:&stru_1002133B8 table:0];
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
  v2 = [(CalendarMessageCell *)self notification];
  v3 = [v2 descriptionStrings:CUIKCalendarNoboDescriptionProfile];

  return v3;
}

- (id)preActionBodyStrings
{
  v2 = [(CalendarMessageCell *)self notification];
  v3 = [v2 couldBeJunk];

  if (v3)
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
  v2 = [(CalendarMessageCell *)self notification];
  v3 = [v2 couldBeJunk];

  if (v3)
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
  v2 = [(CalendarMessageCell *)self notification];
  v3 = [v2 couldBeJunk];

  if (v3)
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
  v3 = [(CalendarMessageCell *)self notification];
  v4 = [v3 couldBeJunk];

  if (v4)
  {
    v6 = [(CalendarMessageCell *)self authorView];
    v5 = objc_opt_new();
    [v6 setContact:v5];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CalendarMessageSharedCalendarCell;
    [(CalendarMessageCell *)&v7 updateAuthor];
  }
}

@end