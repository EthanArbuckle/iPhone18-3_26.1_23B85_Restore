@interface CalendarMessageEventInvitationCell
+ (BOOL)_notificationIsInvite:(id)invite;
+ (id)actionsForNotification:(id)notification;
- (BOOL)notificationIsCancelled;
- (BOOL)notificationIsInvite;
- (BOOL)showAsCancelledOrDeclined;
- (id)_dateString;
- (id)_invitedByString;
- (id)_organizerString;
- (id)actionBodyString;
- (id)actions;
- (id)bodyStringDict;
- (id)preActionBodyStrings;
- (id)titleStrings;
- (int64_t)actionBodyStringAction;
- (int64_t)selectedResponseButton;
- (void)setNotification:(id)notification;
- (void)updateAuthor;
@end

@implementation CalendarMessageEventInvitationCell

- (id)titleStrings
{
  notification = [(CalendarMessageCell *)self notification];
  title = [notification title];

  if (title)
  {
    notification2 = [(CalendarMessageCell *)self notification];
    title2 = [notification2 title];
    v11 = title2;
    v7 = &v11;
  }

  else
  {
    notification2 = [NSBundle bundleForClass:objc_opt_class()];
    title2 = [notification2 localizedStringForKey:@"(No Title)" value:&stru_1002133B8 table:0];
    v10 = title2;
    v7 = &v10;
  }

  v8 = [NSArray arrayWithObjects:v7 count:1];

  return v8;
}

- (id)bodyStringDict
{
  notification = [(CalendarMessageCell *)self notification];
  v4 = [notification descriptionStrings:CUIKCalendarNoboDescriptionProfile];

  v5 = [NSMutableDictionary dictionaryWithDictionary:v4];
  _organizerString = [(CalendarMessageEventInvitationCell *)self _organizerString];
  if (_organizerString)
  {
    [v5 setObject:_organizerString forKeyedSubscript:CUIKNotificationDescriptionKeyPerson];
  }

  _invitedByString = [(CalendarMessageEventInvitationCell *)self _invitedByString];
  if (_invitedByString)
  {
    v8 = &CUIKNotificationDescriptionKeySecondPerson;
    if (!_organizerString)
    {
      v8 = &CUIKNotificationDescriptionKeyPerson;
    }

    [v5 setObject:_invitedByString forKeyedSubscript:*v8];
  }

  notification2 = [(CalendarMessageCell *)self notification];
  couldBeJunk = [notification2 couldBeJunk];

  if (couldBeJunk)
  {
    [v5 setObject:0 forKeyedSubscript:CUIKNotificationDescriptionKeyPerson];
  }

  return v5;
}

- (id)preActionBodyStrings
{
  notification = [(CalendarMessageCell *)self notification];
  couldBeJunk = [notification couldBeJunk];

  if (!couldBeJunk)
  {
    goto LABEL_12;
  }

  notification2 = [(CalendarMessageCell *)self notification];
  owner = [notification2 owner];

  emailAddress = [owner emailAddress];

  if (emailAddress)
  {
    emailAddress2 = [owner emailAddress];
    goto LABEL_10;
  }

  phoneNumber = [owner phoneNumber];

  if (phoneNumber)
  {
    resourceSpecifier = +[CUIKPhoneNumberDescriptionGenerator sharedGenerator];
    phoneNumber2 = [owner phoneNumber];
    v12 = [resourceSpecifier formattedStringForPhoneNumber:phoneNumber2];
  }

  else
  {
    v13 = [owner URL];
    resourceSpecifier = [v13 resourceSpecifier];

    if (resourceSpecifier)
    {
      emailAddress2 = resourceSpecifier;
      goto LABEL_9;
    }

    phoneNumber2 = [(CalendarMessageCell *)self notification];
    v12 = CUIKDisplayStringForNotificationIdentity();
  }

  emailAddress2 = v12;

LABEL_9:
LABEL_10:

  if (emailAddress2)
  {
    v16[0] = emailAddress2;
    v16[1] = @" — ";
    v14 = [NSArray arrayWithObjects:v16 count:2];

    goto LABEL_13;
  }

LABEL_12:
  v14 = 0;
LABEL_13:

  return v14;
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

- (int64_t)selectedResponseButton
{
  notification = [(CalendarMessageCell *)self notification];
  participationStatus = [notification participationStatus];

  if ((participationStatus - 2) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1001F8530[(participationStatus - 2)];
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
    v7.super_class = CalendarMessageEventInvitationCell;
    [(CalendarMessageCell *)&v7 updateAuthor];
  }
}

- (id)_invitedByString
{
  notification = [(CalendarMessageCell *)self notification];
  invitedBy = [notification invitedBy];

  if (invitedBy)
  {
    invitedByString = self->_invitedByString;
    if (!invitedByString)
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"Invited by %@" value:&stru_1002133B8 table:0];

      if (v7)
      {
        v8 = [NSString localizedStringWithFormat:v7, invitedBy];
        v9 = self->_invitedByString;
        self->_invitedByString = v8;
      }

      invitedByString = self->_invitedByString;
    }

    v10 = invitedByString;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_organizerString
{
  if (!self->_organizerString)
  {
    notification = [(CalendarMessageCell *)self notification];
    couldBeJunk = [notification couldBeJunk];

    if ((couldBeJunk & 1) == 0)
    {
      if ([(CalendarMessageEventInvitationCell *)self notificationIsCancelled])
      {
        v5 = [NSBundle bundleForClass:objc_opt_class()];
        notification2 = v5;
        v7 = @"Canceled by %@";
      }

      else
      {
        _invitedByString = [(CalendarMessageEventInvitationCell *)self _invitedByString];

        if (!_invitedByString)
        {
          goto LABEL_12;
        }

        v5 = [NSBundle bundleForClass:objc_opt_class()];
        notification2 = v5;
        v7 = @"Organized by %@";
      }

      v9 = [v5 localizedStringForKey:v7 value:&stru_1002133B8 table:0];

      organizerName = self->_organizerName;
      v11 = organizerName;
      if (!organizerName)
      {
        notification2 = [(CalendarMessageCell *)self notification];
        v11 = CUIKDisplayStringForNotificationIdentity();
      }

      v12 = [NSString localizedStringWithFormat:v9, v11];
      organizerString = self->_organizerString;
      self->_organizerString = v12;

      if (!organizerName)
      {
      }
    }
  }

LABEL_12:
  v14 = self->_organizerString;

  return v14;
}

- (id)_dateString
{
  dateString = self->_dateString;
  if (dateString)
  {
    goto LABEL_13;
  }

  notification = [(CalendarMessageCell *)self notification];
  if ([notification timeChanged])
  {
    v5 = @"Time changed to %@";
  }

  else
  {
    if (![notification dateChanged])
    {
      v8 = 1;
      v7 = @"%@";
      goto LABEL_8;
    }

    v5 = @"Date changed to %@";
  }

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:v5 value:&stru_1002133B8 table:0];

  v8 = 0;
LABEL_8:
  v9 = +[CUIKDateDescriptionGenerator sharedGenerator];
  startDateForNextOccurrence = [notification startDateForNextOccurrence];
  startDate = startDateForNextOccurrence;
  if (!startDateForNextOccurrence)
  {
    startDate = [notification startDate];
  }

  v12 = [v9 dateStringForDate:startDate allDay:objc_msgSend(notification standalone:"isAllDay") shortFormat:v8, 0];
  if (!startDateForNextOccurrence)
  {
  }

  v13 = [NSString localizedStringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v12];
  v14 = self->_dateString;
  self->_dateString = v13;

  dateString = self->_dateString;
LABEL_13:

  return dateString;
}

- (id)actions
{
  v3 = objc_opt_class();
  notification = [(CalendarMessageCell *)self notification];
  v5 = [v3 actionsForNotification:notification];

  return v5;
}

+ (id)actionsForNotification:(id)notification
{
  notificationCopy = notification;
  if ([self _notificationIsInvite:notificationCopy])
  {
    v5 = &off_10021A0B0;
  }

  else if ([notificationCopy type] == 2)
  {
    v5 = &off_10021A0C8;
  }

  else
  {
    v5 = &off_10021A0E0;
  }

  return v5;
}

+ (BOOL)_notificationIsInvite:(id)invite
{
  inviteCopy = invite;
  v5 = ([self _notificationIsCancelled:inviteCopy] & 1) == 0 && objc_msgSend(inviteCopy, "participationStatus") != 2 && objc_msgSend(inviteCopy, "participationStatus") != 3 && objc_msgSend(inviteCopy, "participationStatus") != 4;

  return v5;
}

- (BOOL)showAsCancelledOrDeclined
{
  v4.receiver = self;
  v4.super_class = CalendarMessageEventInvitationCell;
  if ([(CalendarMessageCell *)&v4 showAsCancelledOrDeclined])
  {
    return 1;
  }

  else
  {
    return [(CalendarMessageEventInvitationCell *)self notificationIsCancelled];
  }
}

- (BOOL)notificationIsCancelled
{
  v3 = objc_opt_class();
  notification = [(CalendarMessageCell *)self notification];
  LOBYTE(v3) = [v3 _notificationIsCancelled:notification];

  return v3;
}

- (BOOL)notificationIsInvite
{
  v3 = objc_opt_class();
  notification = [(CalendarMessageCell *)self notification];
  LOBYTE(v3) = [v3 _notificationIsInvite:notification];

  return v3;
}

- (void)setNotification:(id)notification
{
  notificationCopy = notification;
  blocked = self->_blocked;
  if (blocked != [notificationCopy containsCachedBlockedAttendee])
  {
    self->_blocked ^= 1u;
    v10.receiver = self;
    v10.super_class = CalendarMessageEventInvitationCell;
    [(CalendarMessageCell *)&v10 setNotification:0];
  }

  v9.receiver = self;
  v9.super_class = CalendarMessageEventInvitationCell;
  [(CalendarMessageCell *)&v9 setNotification:notificationCopy];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
  {
    notificationIsInvite = [(CalendarMessageEventInvitationCell *)self notificationIsInvite];
  }

  else
  {
    notificationIsInvite = 0;
  }

  [(CalendarMessageCell *)self setHasDisclosure:notificationIsInvite];
  organizerString = self->_organizerString;
  self->_organizerString = 0;

  dateString = self->_dateString;
  self->_dateString = 0;
}

@end