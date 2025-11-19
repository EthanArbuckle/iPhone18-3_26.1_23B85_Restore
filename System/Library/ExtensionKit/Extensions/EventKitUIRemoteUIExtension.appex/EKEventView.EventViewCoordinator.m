@interface EKEventView.EventViewCoordinator
- (_TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator)init;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)eventViewController:(id)a3 requestPresentShareSheetWithActivityItems:(id)a4 withPopoverSourceView:(id)a5;
- (void)popViewControllerAnimated:(BOOL)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation EKEventView.EventViewCoordinator

- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v5 = *&self->eventView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView + 8];
  if (v5)
  {
    v7 = *&self->eventView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView + 16];
    v8 = a3;
    v9 = self;
    sub_10000BF70(v5);
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
    v5(a4);
    sub_100002EB0(v5);
  }

  else
  {
    v10 = a3;
    v11 = self;
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
  }
}

- (void)eventViewController:(id)a3 requestPresentShareSheetWithActivityItems:(id)a4 withPopoverSourceView:(id)a5
{
  v8 = sub_10001D2AC();
  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_100011844(v9, v8, v10);
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_100013F84(v5);
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_1000149CC;
  }

  v8 = a3;
  v9 = self;
  sub_1000142D8(v8);
  sub_100002EB0(v7);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v6 = sub_1000107F0;
  }

  else
  {
    v6 = 0;
  }

  v7 = self;
  sub_10001478C(v6);
  sub_100002EB0(v6);
}

- (void)popViewControllerAnimated:(BOOL)a3
{
  v3 = *&self->eventView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView + 40];
  if (v3)
  {
    v4 = *&self->eventView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView + 48];
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

- (_TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end