@interface FamilySyncEngine.SharingCoordinator
- (_TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator)init;
- (void)manager:(id)manager incomingInvitation:(id)invitation;
- (void)manager:(id)manager receiverDidAcceptInvitation:(id)invitation;
- (void)manager:(id)manager receiverDidDeclineInvitation:(id)invitation;
- (void)manager:(id)manager senderDidCancelInvitation:(id)invitation;
@end

@implementation FamilySyncEngine.SharingCoordinator

- (_TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)manager:(id)manager incomingInvitation:(id)invitation
{
  invitationCopy = invitation;
  selfCopy = self;
  sub_10001DB14(invitationCopy, selfCopy);
}

- (void)manager:(id)manager senderDidCancelInvitation:(id)invitation
{
  invitationCopy = invitation;
  selfCopy = self;
  sub_10001FFF8(invitationCopy);
}

- (void)manager:(id)manager receiverDidAcceptInvitation:(id)invitation
{
  invitationCopy = invitation;
  selfCopy = self;
  sub_1000201F0(invitationCopy);
}

- (void)manager:(id)manager receiverDidDeclineInvitation:(id)invitation
{
  invitationCopy = invitation;
  selfCopy = self;
  sub_1000208EC(invitationCopy);
}

@end