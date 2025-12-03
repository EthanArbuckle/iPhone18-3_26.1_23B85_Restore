@interface InboxRepliedEventInvitationCell
- (BOOL)showAsCancelledOrDeclined;
- (void)setNotification:(id)notification;
@end

@implementation InboxRepliedEventInvitationCell

- (BOOL)showAsCancelledOrDeclined
{
  v6.receiver = self;
  v6.super_class = InboxRepliedEventInvitationCell;
  if ([(CalendarMessageEventInvitationCell *)&v6 showAsCancelledOrDeclined])
  {
    return 1;
  }

  notification = [(CalendarMessageCell *)self notification];
  v3 = [notification participationStatus] == 3;

  return v3;
}

- (void)setNotification:(id)notification
{
  v4.receiver = self;
  v4.super_class = InboxRepliedEventInvitationCell;
  [(CalendarMessageEventInvitationCell *)&v4 setNotification:notification];
  [(CalendarMessageCell *)self setHasDisclosure:EKUICurrentWidthSizeClassIsCompactInViewHierarchy()];
}

@end