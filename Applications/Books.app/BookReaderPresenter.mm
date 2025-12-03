@interface BookReaderPresenter
- (_TtC5Books19BookReaderPresenter)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)interactionControllerForDismissal:(id)dismissal;
- (void)dealloc;
@end

@implementation BookReaderPresenter

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v6[3] = ObjectType;
  v6[0] = self;
  selfCopy = self;
  sub_1007A2B34();
  sub_1000074E0(v6);
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(BookReaderPresenter *)&v5 dealloc];
}

- (_TtC5Books19BookReaderPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_1006C51AC();

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_1006C51AC();

  return v6;
}

- (id)interactionControllerForDismissal:(id)dismissal
{
  selfCopy = self;
  v4 = sub_1006A96E0();
  v5 = sub_1007A1074();

  return v5;
}

@end