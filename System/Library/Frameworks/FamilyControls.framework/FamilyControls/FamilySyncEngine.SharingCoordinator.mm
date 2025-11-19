@interface FamilySyncEngine.SharingCoordinator
- (_TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator)init;
- (void)manager:(id)a3 incomingInvitation:(id)a4;
- (void)manager:(id)a3 receiverDidAcceptInvitation:(id)a4;
- (void)manager:(id)a3 receiverDidDeclineInvitation:(id)a4;
- (void)manager:(id)a3 senderDidCancelInvitation:(id)a4;
@end

@implementation FamilySyncEngine.SharingCoordinator

- (_TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)manager:(id)a3 incomingInvitation:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_10001DB14(v5, v6);
}

- (void)manager:(id)a3 senderDidCancelInvitation:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_10001FFF8(v5);
}

- (void)manager:(id)a3 receiverDidAcceptInvitation:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_1000201F0(v5);
}

- (void)manager:(id)a3 receiverDidDeclineInvitation:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_1000208EC(v5);
}

@end