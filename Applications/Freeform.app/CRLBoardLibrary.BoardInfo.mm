@interface CRLBoardLibrary.BoardInfo
- (void)activeParticipantListChangedNotification:(id)notification;
- (void)shareStateUpdatedWithShare:(id)share;
@end

@implementation CRLBoardLibrary.BoardInfo

- (void)activeParticipantListChangedNotification:(id)notification
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1010DC884();

  (*(v4 + 8))(v6, v3);
}

- (void)shareStateUpdatedWithShare:(id)share
{
  shareCopy = share;

  sub_1010E73C0(share);
}

@end