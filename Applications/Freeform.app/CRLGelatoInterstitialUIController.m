@interface CRLGelatoInterstitialUIController
- (_TtC8Freeform33CRLGelatoInterstitialUIController)init;
- (void)newParticipantJoinedSessionWithNotification:(id)a3;
- (void)realTimeSessionDidStartOrEndWithNotification:(id)a3;
- (void)realTimeSessionParticipantsChangedWithNotification:(id)a3;
- (void)shareStateUpdatedWithShare:(id)a3;
@end

@implementation CRLGelatoInterstitialUIController

- (void)newParticipantJoinedSessionWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100FA3124("Notified of CRLBoardRealTimeNewParticipantDidJoinSession.", 57);
}

- (void)realTimeSessionParticipantsChangedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100FA3124("Notified of participant change.", 31);
}

- (void)realTimeSessionDidStartOrEndWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100FA3124("Notified of CRLBoardRealTimeStateDidChange.", 43);
}

- (_TtC8Freeform33CRLGelatoInterstitialUIController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)shareStateUpdatedWithShare:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100FA2128(a3);
}

@end