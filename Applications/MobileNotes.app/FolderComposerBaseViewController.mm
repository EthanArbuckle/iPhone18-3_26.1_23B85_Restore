@interface FolderComposerBaseViewController
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (_TtC11MobileNotes32FolderComposerBaseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelActionWithSender:(id)sender;
- (void)doneActionWithSender:(id)sender;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation FolderComposerBaseViewController

- (void)cancelActionWithSender:(id)sender
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  senderCopy = sender;
  selfCopy = self;
  sub_1004C889C(senderCopy, selfCopy, v5);
}

- (void)doneActionWithSender:(id)sender
{
  selfCopy = self;
  navigationController = [(FolderComposerBaseViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v4 = navigationController;
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for FolderComposerBaseViewController();
  v4 = v8.receiver;
  controllerCopy = controller;
  [(FolderComposerBaseViewController *)&v8 willMoveToParentViewController:controllerCopy];
  if (controllerCopy)
  {
    presentationController = [controllerCopy presentationController];
    if (presentationController)
    {
      v7 = presentationController;
      [presentationController setDelegate:v4];
    }
  }
}

- (_TtC11MobileNotes32FolderComposerBaseViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1004C852C(v5, v7, bundle);
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0x98);
  selfCopy = self;
  LOBYTE(v3) = v3();

  return (v3 & 1) == 0;
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  selfCopy = self;
  v3 = sub_1004C81B4();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1004C889C(v3, selfCopy, v4);
}

@end