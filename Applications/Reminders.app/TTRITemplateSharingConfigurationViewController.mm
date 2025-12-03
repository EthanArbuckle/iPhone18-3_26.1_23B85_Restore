@interface TTRITemplateSharingConfigurationViewController
- (_TtC9Reminders46TTRITemplateSharingConfigurationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapShowPreview:(id)preview;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRITemplateSharingConfigurationViewController

- (void)loadView
{
  selfCopy = self;
  sub_100292C64();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100292D90();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100293D38(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(TTRITemplateSharingConfigurationViewController *)&v8 viewDidAppear:appearCopy];
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
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(TTRITemplateSharingConfigurationViewController *)&v6 viewWillDisappear:disappearCopy];
  UIViewController.endFirstResponderEditing()();
  [v4 resignFirstResponder];
  sub_1002962C8(&qword_100777BD8, v5, type metadata accessor for TTRITemplateSharingConfigurationViewController);
  TTRKeyboardAvoidance<>.stopAvoidingKeyboard()();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1002941F4();
}

- (void)didTapShowPreview:(id)preview
{
  if (preview)
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

  sub_10009F518();
  sub_1000079B4(v6, &qword_10076AE40);
}

- (_TtC9Reminders46TTRITemplateSharingConfigurationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v3 = qword_100766EF8;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_10076B0D8);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  sub_10009FC2C(1);
}

@end