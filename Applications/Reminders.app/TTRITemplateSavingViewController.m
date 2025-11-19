@interface TTRITemplateSavingViewController
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (_TtC9Reminders32TTRITemplateSavingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapCancel:(id)a3;
- (void)didTapCommit:(id)a3;
- (void)loadView;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRITemplateSavingViewController

- (void)loadView
{
  v2 = self;
  sub_100377EF8();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100378024();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1003788B4(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(TTRITemplateSavingViewController *)&v8 viewDidAppear:v3];
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    v7 = UIView.firstResponderDescendant.getter();

    if (v7)
    {

      v4 = v7;
    }

    else
    {
      [v4 becomeFirstResponder];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRITemplateSavingViewController *)&v5 viewWillDisappear:v3];
  UIViewController.endFirstResponderEditing()();
  [v4 resignFirstResponder];
  sub_10037ACE0();
  TTRKeyboardAvoidance<>.stopAvoidingKeyboard()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_100378C20();
}

- (void)didTapCancel:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_cancelButton);
  if (v6)
  {
    v7 = v6;
    sub_1002FA994(v7);

    sub_1000079B4(v8, &qword_10076AE40);
  }

  else
  {
    __break(1u);
  }
}

- (void)didTapCommit:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100379698();

  sub_1000079B4(v6, &qword_10076AE40);
}

- (_TtC9Reminders32TTRITemplateSavingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v3 = self;
  v4 = sub_1002FA3CC();

  return (v4 & 1) == 0;
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_cancelButton);
  if (v3)
  {
    v4 = self;
    v5 = v3;
    sub_1002FA994(v5);
  }

  else
  {
    __break(1u);
  }
}

@end