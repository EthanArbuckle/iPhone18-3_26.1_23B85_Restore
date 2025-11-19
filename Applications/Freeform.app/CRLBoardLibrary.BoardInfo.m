@interface CRLBoardLibrary.BoardInfo
- (void)activeParticipantListChangedNotification:(id)a3;
- (void)shareStateUpdatedWithShare:(id)a3;
@end

@implementation CRLBoardLibrary.BoardInfo

- (void)activeParticipantListChangedNotification:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1010DC884();

  (*(v4 + 8))(v6, v3);
}

- (void)shareStateUpdatedWithShare:(id)a3
{
  v4 = a3;

  sub_1010E73C0(a3);
}

@end