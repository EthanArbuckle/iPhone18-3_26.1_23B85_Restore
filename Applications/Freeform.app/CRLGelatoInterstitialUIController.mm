@interface CRLGelatoInterstitialUIController
- (_TtC8Freeform33CRLGelatoInterstitialUIController)init;
- (void)newParticipantJoinedSessionWithNotification:(id)notification;
- (void)realTimeSessionDidStartOrEndWithNotification:(id)notification;
- (void)realTimeSessionParticipantsChangedWithNotification:(id)notification;
- (void)shareStateUpdatedWithShare:(id)share;
@end

@implementation CRLGelatoInterstitialUIController

- (void)newParticipantJoinedSessionWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100FA3124("Notified of CRLBoardRealTimeNewParticipantDidJoinSession.", 57);
}

- (void)realTimeSessionParticipantsChangedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100FA3124("Notified of participant change.", 31);
}

- (void)realTimeSessionDidStartOrEndWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100FA3124("Notified of CRLBoardRealTimeStateDidChange.", 43);
}

- (_TtC8Freeform33CRLGelatoInterstitialUIController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)shareStateUpdatedWithShare:(id)share
{
  shareCopy = share;
  selfCopy = self;
  sub_100FA2128(share);
}

@end