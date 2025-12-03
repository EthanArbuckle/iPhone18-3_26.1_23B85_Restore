@interface CalendarMessageInviteReplyCell
- (id)bodyStringDict;
- (id)titleStrings;
@end

@implementation CalendarMessageInviteReplyCell

- (id)titleStrings
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
  v6 = ;

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"“%@”" value:&stru_1002133B8 table:0];
  v9 = [NSString localizedStringWithFormat:v8, v6];
  v12 = v9;
  v10 = [NSArray arrayWithObjects:&v12 count:1];

  return v10;
}

- (id)bodyStringDict
{
  notification = [(CalendarMessageCell *)self notification];
  v3 = [notification descriptionStrings:CUIKCalendarNoboDescriptionProfile];

  return v3;
}

@end