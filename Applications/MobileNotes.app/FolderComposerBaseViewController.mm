@interface FolderComposerBaseViewController
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (_TtC11MobileNotes32FolderComposerBaseViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancelActionWithSender:(id)a3;
- (void)doneActionWithSender:(id)a3;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation FolderComposerBaseViewController

- (void)cancelActionWithSender:(id)a3
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = a3;
  v7 = self;
  sub_1004C889C(v6, v7, v5);
}

- (void)doneActionWithSender:(id)a3
{
  v5 = self;
  v3 = [(FolderComposerBaseViewController *)v5 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for FolderComposerBaseViewController();
  v4 = v8.receiver;
  v5 = a3;
  [(FolderComposerBaseViewController *)&v8 willMoveToParentViewController:v5];
  if (v5)
  {
    v6 = [v5 presentationController];
    if (v6)
    {
      v7 = v6;
      [v6 setDelegate:v4];
    }
  }
}

- (_TtC11MobileNotes32FolderComposerBaseViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1004C852C(v5, v7, a4);
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0x98);
  v4 = self;
  LOBYTE(v3) = v3();

  return (v3 & 1) == 0;
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v5 = self;
  v3 = sub_1004C81B4();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1004C889C(v3, v5, v4);
}

@end