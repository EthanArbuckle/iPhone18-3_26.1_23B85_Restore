@interface TTRITemplateSavingViewController
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (_TtC9Reminders32TTRITemplateSavingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapCancel:(id)cancel;
- (void)didTapCommit:(id)commit;
- (void)loadView;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRITemplateSavingViewController

- (void)loadView
{
  selfCopy = self;
  sub_100377EF8();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100378024();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003788B4(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(TTRITemplateSavingViewController *)&v8 viewDidAppear:appearCopy];
  view = [v4 view];
  if (view)
  {
    v6 = view;
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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRITemplateSavingViewController *)&v5 viewWillDisappear:disappearCopy];
  UIViewController.endFirstResponderEditing()();
  [v4 resignFirstResponder];
  sub_10037ACE0();
  TTRKeyboardAvoidance<>.stopAvoidingKeyboard()();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_100378C20();
}

- (void)didTapCancel:(id)cancel
{
  if (cancel)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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

- (void)didTapCommit:(id)commit
{
  if (commit)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100379698();

  sub_1000079B4(v6, &qword_10076AE40);
}

- (_TtC9Reminders32TTRITemplateSavingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  selfCopy = self;
  v4 = sub_1002FA3CC();

  return (v4 & 1) == 0;
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_cancelButton);
  if (v3)
  {
    selfCopy = self;
    v5 = v3;
    sub_1002FA994(v5);
  }

  else
  {
    __break(1u);
  }
}

@end