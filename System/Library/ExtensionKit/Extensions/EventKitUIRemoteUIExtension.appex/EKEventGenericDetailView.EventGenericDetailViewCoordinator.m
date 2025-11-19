@interface EKEventGenericDetailView.EventGenericDetailViewCoordinator
- (_TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator)init;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)popViewControllerAnimated:(BOOL)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)viewController:(id)a3 didChangeBottomStatusButtons:(id)a4;
- (void)viewController:(id)a3 didChangeLeftBarButtons:(id)a4 rightBarButtons:(id)a5;
@end

@implementation EKEventGenericDetailView.EventGenericDetailViewCoordinator

- (void)viewController:(id)a3 didChangeBottomStatusButtons:(id)a4
{
  sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
  v5 = sub_10001D2AC();
  v6 = *&self->genericView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 56];
  if (v6)
  {
    v7 = *&self->genericView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 64];
    v8 = self;
    sub_10000BF70(v6);
    v6(v5);

    sub_100002EB0(v6);
  }

  else
  {
    v9 = self;
    sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
  }
}

- (void)viewController:(id)a3 didChangeLeftBarButtons:(id)a4 rightBarButtons:(id)a5
{
  v5 = a5;
  if (a4)
  {
    v7 = sub_10001D2AC();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a5)
  {
LABEL_3:
    v5 = sub_10001D2AC();
  }

LABEL_4:
  v8 = *&self->genericView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 40];
  if (v8)
  {
    v9 = *&self->genericView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 48];
    v10 = self;
    sub_10000BF70(v8);
    v8(v7, v5);

    sub_100002EB0(v8);
  }

  else
  {
    v11 = self;

    sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
  }
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_10001CD08;
  }

  v8 = a3;
  v9 = self;
  sub_10001C258(v8);
  sub_100002EB0(v7);
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_10001C624(v5);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v6 = sub_10001CA18;
  }

  else
  {
    v6 = 0;
  }

  v7 = self;
  sub_10001C8A0(v6);
  sub_100002EB0(v6);
}

- (void)popViewControllerAnimated:(BOOL)a3
{
  v3 = *&self->genericView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 24];
  if (v3)
  {
    v4 = *&self->genericView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 32];
    v5 = self;
    sub_10000BF70(v3);
    v3(0, 0, 0);

    sub_100002EB0(v3);
  }

  else
  {
    v6 = self;
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
  }
}

- (_TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end