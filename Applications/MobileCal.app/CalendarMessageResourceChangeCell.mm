@interface CalendarMessageResourceChangeCell
- (id)bodyStringDict;
- (id)titleStrings;
- (int64_t)_changedPropertyCount;
- (void)setNotification:(id)a3;
@end

@implementation CalendarMessageResourceChangeCell

- (id)titleStrings
{
  v4 = self;
  v5 = [(CalendarMessageCell *)self notification];
  if ([v5 changeType] == 1 || objc_msgSend(v5, "changeType") == 3 || objc_msgSend(v5, "changeType") == 2)
  {
    v6 = [v5 title];
    v7 = 1;
  }

  else
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v2 = [v4 localizedStringForKey:@"“%@”" value:&stru_1002133B8 table:0];
    v3 = [v5 title];
    v6 = [NSString localizedStringWithFormat:v2, v3];
    v7 = 0;
  }

  v10 = v6;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  if ((v7 & 1) == 0)
  {

    v6 = v4;
  }

  return v8;
}

- (id)bodyStringDict
{
  v2 = [(CalendarMessageCell *)self notification];
  v3 = [v2 descriptionStrings:CUIKCalendarNoboDescriptionProfile];

  return v3;
}

- (int64_t)_changedPropertyCount
{
  v2 = [(CalendarMessageCell *)self notification];
  LODWORD(v3) = [v2 dateChanged];
  v4 = [v2 timeChanged];
  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
  {
    v3 = v5;
  }

  else
  {
    v3 = v3;
  }

  v6 = v3 + [v2 titleChanged];
  v7 = v6 + [v2 locationChanged];

  return v7;
}

- (void)setNotification:(id)a3
{
  v6.receiver = self;
  v6.super_class = CalendarMessageResourceChangeCell;
  [(CalendarMessageCell *)&v6 setNotification:a3];
  dateString = self->_dateString;
  self->_dateString = 0;

  changeString = self->_changeString;
  self->_changeString = 0;

  [(CalendarMessageCell *)self setHasDisclosure:EKUICurrentWidthSizeClassIsCompactInViewHierarchy()];
}

@end