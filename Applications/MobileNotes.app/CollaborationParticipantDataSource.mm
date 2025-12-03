@interface CollaborationParticipantDataSource
- (void)realtimeCollaborationControllerGroupActivityDidChange:(id)change;
@end

@implementation CollaborationParticipantDataSource

- (void)realtimeCollaborationControllerGroupActivityDidChange:(id)change
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100496F6C(v6);

  (*(v4 + 8))(v6, v3);
}

@end