@interface TTRITemplateSharingConfigurationViewController
- (_TtC9Reminders46TTRITemplateSharingConfigurationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapShowPreview:(id)a3;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRITemplateSharingConfigurationViewController

- (void)loadView
{
  v2 = self;
  sub_100292C64();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100292D90();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100293D38(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(TTRITemplateSharingConfigurationViewController *)&v8 viewDidAppear:v3];
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
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(TTRITemplateSharingConfigurationViewController *)&v6 viewWillDisappear:v3];
  UIViewController.endFirstResponderEditing()();
  [v4 resignFirstResponder];
  sub_1002962C8(&qword_100777BD8, v5, type metadata accessor for TTRITemplateSharingConfigurationViewController);
  TTRKeyboardAvoidance<>.stopAvoidingKeyboard()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1002941F4();
}

- (void)didTapShowPreview:(id)a3
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

  sub_10009F518();
  sub_1000079B4(v6, &qword_10076AE40);
}

- (_TtC9Reminders46TTRITemplateSharingConfigurationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = qword_100766EF8;
  v5 = self;
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