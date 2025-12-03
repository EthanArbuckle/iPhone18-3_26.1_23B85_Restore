@interface EKEventView.EventViewCoordinator
- (_TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator)init;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)eventViewController:(id)controller requestPresentShareSheetWithActivityItems:(id)items withPopoverSourceView:(id)view;
- (void)popViewControllerAnimated:(BOOL)animated;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
@end

@implementation EKEventView.EventViewCoordinator

- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  v5 = *&self->eventView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView + 8];
  if (v5)
  {
    v7 = *&self->eventView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView + 16];
    controllerCopy = controller;
    selfCopy = self;
    sub_10000BF70(v5);
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
    v5(action);
    sub_100002EB0(v5);
  }

  else
  {
    controllerCopy2 = controller;
    selfCopy2 = self;
    sub_10001D32C();
    if (qword_100032310 != -1)
    {
      swift_once();
    }

    sub_10001CF8C();
  }
}

- (void)eventViewController:(id)controller requestPresentShareSheetWithActivityItems:(id)items withPopoverSourceView:(id)view
{
  v8 = sub_10001D2AC();
  controllerCopy = controller;
  viewCopy = view;
  selfCopy = self;
  sub_100011844(controllerCopy, v8, viewCopy);
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100013F84(controllerCopy);
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_1000149CC;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1000142D8(controllerCopy);
  sub_100002EB0(v7);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v6 = sub_1000107F0;
  }

  else
  {
    v6 = 0;
  }

  selfCopy = self;
  sub_10001478C(v6);
  sub_100002EB0(v6);
}

- (void)popViewControllerAnimated:(BOOL)animated
{
  v3 = *&self->eventView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView + 40];
  if (v3)
  {
    v4 = *&self->eventView[OBJC_IVAR____TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator_eventView + 48];
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

- (_TtCV27EventKitUIRemoteUIExtension11EKEventView20EventViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end