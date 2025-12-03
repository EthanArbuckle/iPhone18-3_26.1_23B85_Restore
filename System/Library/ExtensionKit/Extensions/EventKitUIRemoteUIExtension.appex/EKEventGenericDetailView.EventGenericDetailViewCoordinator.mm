@interface EKEventGenericDetailView.EventGenericDetailViewCoordinator
- (_TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator)init;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)popViewControllerAnimated:(BOOL)animated;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)viewController:(id)controller didChangeBottomStatusButtons:(id)buttons;
- (void)viewController:(id)controller didChangeLeftBarButtons:(id)buttons rightBarButtons:(id)barButtons;
@end

@implementation EKEventGenericDetailView.EventGenericDetailViewCoordinator

- (void)viewController:(id)controller didChangeBottomStatusButtons:(id)buttons
{
  sub_1000058A8(0, &unk_100032D00, NSNumber_ptr);
  v5 = sub_10001D2AC();
  v6 = *&self->genericView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 56];
  if (v6)
  {
    v7 = *&self->genericView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 64];
    selfCopy = self;
    sub_10000BF70(v6);
    v6(v5);

    sub_100002EB0(v6);
  }

  else
  {
    selfCopy2 = self;
    sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
  }
}

- (void)viewController:(id)controller didChangeLeftBarButtons:(id)buttons rightBarButtons:(id)barButtons
{
  barButtonsCopy = barButtons;
  if (buttons)
  {
    v7 = sub_10001D2AC();
    if (!barButtonsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (barButtons)
  {
LABEL_3:
    barButtonsCopy = sub_10001D2AC();
  }

LABEL_4:
  v8 = *&self->genericView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 40];
  if (v8)
  {
    v9 = *&self->genericView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 48];
    selfCopy = self;
    sub_10000BF70(v8);
    v8(v7, barButtonsCopy);

    sub_100002EB0(v8);
  }

  else
  {
    selfCopy2 = self;

    sub_10001D31C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
  }
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_10001CD08;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_10001C258(controllerCopy);
  sub_100002EB0(v7);
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10001C624(controllerCopy);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v6 = sub_10001CA18;
  }

  else
  {
    v6 = 0;
  }

  selfCopy = self;
  sub_10001C8A0(v6);
  sub_100002EB0(v6);
}

- (void)popViewControllerAnimated:(BOOL)animated
{
  v3 = *&self->genericView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 24];
  if (v3)
  {
    v4 = *&self->genericView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension24EKEventGenericDetailView33EventGenericDetailViewCoordinator_genericView + 32];
    selfCopy = self;
    sub_10000BF70(v3);
    v3(0, 0, 0);

    sub_100002EB0(v3);
  }

  else
  {
    selfCopy2 = self;
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