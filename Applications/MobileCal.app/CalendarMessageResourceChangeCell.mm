@interface CalendarMessageResourceChangeCell
- (id)bodyStringDict;
- (id)titleStrings;
- (int64_t)_changedPropertyCount;
- (void)setNotification:(id)notification;
@end

@implementation CalendarMessageResourceChangeCell

- (id)titleStrings
{
  selfCopy = self;
  notification = [(CalendarMessageCell *)self notification];
  if ([notification changeType] == 1 || objc_msgSend(notification, "changeType") == 3 || objc_msgSend(notification, "changeType") == 2)
  {
    title = [notification title];
    v7 = 1;
  }

  else
  {
    selfCopy = [NSBundle bundleForClass:objc_opt_class()];
    v2 = [selfCopy localizedStringForKey:@"“%@”" value:&stru_1002133B8 table:0];
    title2 = [notification title];
    title = [NSString localizedStringWithFormat:v2, title2];
    v7 = 0;
  }

  v10 = title;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  if ((v7 & 1) == 0)
  {

    title = selfCopy;
  }

  return v8;
}

- (id)bodyStringDict
{
  notification = [(CalendarMessageCell *)self notification];
  v3 = [notification descriptionStrings:CUIKCalendarNoboDescriptionProfile];

  return v3;
}

- (int64_t)_changedPropertyCount
{
  notification = [(CalendarMessageCell *)self notification];
  LODWORD(v3) = [notification dateChanged];
  timeChanged = [notification timeChanged];
  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (timeChanged)
  {
    v3 = v5;
  }

  else
  {
    v3 = v3;
  }

  v6 = v3 + [notification titleChanged];
  v7 = v6 + [notification locationChanged];

  return v7;
}

- (void)setNotification:(id)notification
{
  v6.receiver = self;
  v6.super_class = CalendarMessageResourceChangeCell;
  [(CalendarMessageCell *)&v6 setNotification:notification];
  dateString = self->_dateString;
  self->_dateString = 0;

  changeString = self->_changeString;
  self->_changeString = 0;

  [(CalendarMessageCell *)self setHasDisclosure:EKUICurrentWidthSizeClassIsCompactInViewHierarchy()];
}

@end