@interface CalendarMessageEventInvitationCell
+ (BOOL)_notificationIsInvite:(id)a3;
+ (id)actionsForNotification:(id)a3;
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
- (void)setNotification:(id)a3;
- (void)updateAuthor;
@end

@implementation CalendarMessageEventInvitationCell

- (id)titleStrings
{
  v3 = [(CalendarMessageCell *)self notification];
  v4 = [v3 title];

  if (v4)
  {
    v5 = [(CalendarMessageCell *)self notification];
    v6 = [v5 title];
    v11 = v6;
    v7 = &v11;
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"(No Title)" value:&stru_1002133B8 table:0];
    v10 = v6;
    v7 = &v10;
  }

  v8 = [NSArray arrayWithObjects:v7 count:1];

  return v8;
}

- (id)bodyStringDict
{
  v3 = [(CalendarMessageCell *)self notification];
  v4 = [v3 descriptionStrings:CUIKCalendarNoboDescriptionProfile];

  v5 = [NSMutableDictionary dictionaryWithDictionary:v4];
  v6 = [(CalendarMessageEventInvitationCell *)self _organizerString];
  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:CUIKNotificationDescriptionKeyPerson];
  }

  v7 = [(CalendarMessageEventInvitationCell *)self _invitedByString];
  if (v7)
  {
    v8 = &CUIKNotificationDescriptionKeySecondPerson;
    if (!v6)
    {
      v8 = &CUIKNotificationDescriptionKeyPerson;
    }

    [v5 setObject:v7 forKeyedSubscript:*v8];
  }

  v9 = [(CalendarMessageCell *)self notification];
  v10 = [v9 couldBeJunk];

  if (v10)
  {
    [v5 setObject:0 forKeyedSubscript:CUIKNotificationDescriptionKeyPerson];
  }

  return v5;
}

- (id)preActionBodyStrings
{
  v3 = [(CalendarMessageCell *)self notification];
  v4 = [v3 couldBeJunk];

  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = [(CalendarMessageCell *)self notification];
  v6 = [v5 owner];

  v7 = [v6 emailAddress];

  if (v7)
  {
    v8 = [v6 emailAddress];
    goto LABEL_10;
  }

  v9 = [v6 phoneNumber];

  if (v9)
  {
    v10 = +[CUIKPhoneNumberDescriptionGenerator sharedGenerator];
    v11 = [v6 phoneNumber];
    v12 = [v10 formattedStringForPhoneNumber:v11];
  }

  else
  {
    v13 = [v6 URL];
    v10 = [v13 resourceSpecifier];

    if (v10)
    {
      v8 = v10;
      goto LABEL_9;
    }

    v11 = [(CalendarMessageCell *)self notification];
    v12 = CUIKDisplayStringForNotificationIdentity();
  }

  v8 = v12;

LABEL_9:
LABEL_10:

  if (v8)
  {
    v16[0] = v8;
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

- (int64_t)selectedResponseButton
{
  v2 = [(CalendarMessageCell *)self notification];
  v3 = [v2 participationStatus];

  if ((v3 - 2) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1001F8530[(v3 - 2)];
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
    v7.super_class = CalendarMessageEventInvitationCell;
    [(CalendarMessageCell *)&v7 updateAuthor];
  }
}

- (id)_invitedByString
{
  v3 = [(CalendarMessageCell *)self notification];
  v4 = [v3 invitedBy];

  if (v4)
  {
    invitedByString = self->_invitedByString;
    if (!invitedByString)
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"Invited by %@" value:&stru_1002133B8 table:0];

      if (v7)
      {
        v8 = [NSString localizedStringWithFormat:v7, v4];
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
    v3 = [(CalendarMessageCell *)self notification];
    v4 = [v3 couldBeJunk];

    if ((v4 & 1) == 0)
    {
      if ([(CalendarMessageEventInvitationCell *)self notificationIsCancelled])
      {
        v5 = [NSBundle bundleForClass:objc_opt_class()];
        v6 = v5;
        v7 = @"Canceled by %@";
      }

      else
      {
        v8 = [(CalendarMessageEventInvitationCell *)self _invitedByString];

        if (!v8)
        {
          goto LABEL_12;
        }

        v5 = [NSBundle bundleForClass:objc_opt_class()];
        v6 = v5;
        v7 = @"Organized by %@";
      }

      v9 = [v5 localizedStringForKey:v7 value:&stru_1002133B8 table:0];

      organizerName = self->_organizerName;
      v11 = organizerName;
      if (!organizerName)
      {
        v6 = [(CalendarMessageCell *)self notification];
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

  v4 = [(CalendarMessageCell *)self notification];
  if ([v4 timeChanged])
  {
    v5 = @"Time changed to %@";
  }

  else
  {
    if (![v4 dateChanged])
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
  v10 = [v4 startDateForNextOccurrence];
  v11 = v10;
  if (!v10)
  {
    v11 = [v4 startDate];
  }

  v12 = [v9 dateStringForDate:v11 allDay:objc_msgSend(v4 standalone:"isAllDay") shortFormat:v8, 0];
  if (!v10)
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
  v4 = [(CalendarMessageCell *)self notification];
  v5 = [v3 actionsForNotification:v4];

  return v5;
}

+ (id)actionsForNotification:(id)a3
{
  v4 = a3;
  if ([a1 _notificationIsInvite:v4])
  {
    v5 = &off_10021A0B0;
  }

  else if ([v4 type] == 2)
  {
    v5 = &off_10021A0C8;
  }

  else
  {
    v5 = &off_10021A0E0;
  }

  return v5;
}

+ (BOOL)_notificationIsInvite:(id)a3
{
  v4 = a3;
  v5 = ([a1 _notificationIsCancelled:v4] & 1) == 0 && objc_msgSend(v4, "participationStatus") != 2 && objc_msgSend(v4, "participationStatus") != 3 && objc_msgSend(v4, "participationStatus") != 4;

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
  v4 = [(CalendarMessageCell *)self notification];
  LOBYTE(v3) = [v3 _notificationIsCancelled:v4];

  return v3;
}

- (BOOL)notificationIsInvite
{
  v3 = objc_opt_class();
  v4 = [(CalendarMessageCell *)self notification];
  LOBYTE(v3) = [v3 _notificationIsInvite:v4];

  return v3;
}

- (void)setNotification:(id)a3
{
  v4 = a3;
  blocked = self->_blocked;
  if (blocked != [v4 containsCachedBlockedAttendee])
  {
    self->_blocked ^= 1u;
    v10.receiver = self;
    v10.super_class = CalendarMessageEventInvitationCell;
    [(CalendarMessageCell *)&v10 setNotification:0];
  }

  v9.receiver = self;
  v9.super_class = CalendarMessageEventInvitationCell;
  [(CalendarMessageCell *)&v9 setNotification:v4];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
  {
    v6 = [(CalendarMessageEventInvitationCell *)self notificationIsInvite];
  }

  else
  {
    v6 = 0;
  }

  [(CalendarMessageCell *)self setHasDisclosure:v6];
  organizerString = self->_organizerString;
  self->_organizerString = 0;

  dateString = self->_dateString;
  self->_dateString = 0;
}

@end