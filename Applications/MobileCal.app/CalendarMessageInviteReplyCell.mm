@interface CalendarMessageInviteReplyCell
- (id)bodyStringDict;
- (id)titleStrings;
@end

@implementation CalendarMessageInviteReplyCell

- (id)titleStrings
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
  v2 = [(CalendarMessageCell *)self notification];
  v3 = [v2 descriptionStrings:CUIKCalendarNoboDescriptionProfile];

  return v3;
}

@end