@interface InboxRepliedEventInvitationCell
- (BOOL)showAsCancelledOrDeclined;
- (void)setNotification:(id)a3;
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

  v4 = [(CalendarMessageCell *)self notification];
  v3 = [v4 participationStatus] == 3;

  return v3;
}

- (void)setNotification:(id)a3
{
  v4.receiver = self;
  v4.super_class = InboxRepliedEventInvitationCell;
  [(CalendarMessageEventInvitationCell *)&v4 setNotification:a3];
  [(CalendarMessageCell *)self setHasDisclosure:EKUICurrentWidthSizeClassIsCompactInViewHierarchy()];
}

@end