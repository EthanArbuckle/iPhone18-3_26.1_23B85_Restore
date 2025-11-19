@interface TTRISmartListFilterEditorViewController
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (_TtC9Reminders39TTRISmartListFilterEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancelButtonAction:(id)a3;
- (void)doneButtonAction:(id)a3;
- (void)loadView;
- (void)presentationControllerDidAttemptToDismiss:(void *)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TTRISmartListFilterEditorViewController

- (void)presentationControllerDidAttemptToDismiss:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_100272198();
}

- (void)loadView
{
  v3 = objc_allocWithZone(UITableView);
  v6 = self;
  v4 = [v3 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v4 setEstimatedRowHeight:UITableViewAutomaticDimension];
  [v4 setEstimatedSectionHeaderHeight:UITableViewAutomaticDimension];
  [v4 setEstimatedSectionHeaderHeight:UITableViewAutomaticDimension];
  v5 = v4;
  [(TTRISmartListFilterEditorViewController *)v6 setView:v5];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100264F88();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(TTRISmartListFilterEditorViewController *)&v8 viewWillAppear:v3];
  if ([v4 view])
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClassUnconditional();
    v7[3] = sub_100003540(0, &qword_100771B60);
    v7[4] = &protocol witness table for UITableView;
    v7[0] = v5;
    UIViewController.deselectRowsAlongsideTransition(for:animated:)();
    sub_100004758(v7);
    sub_10027602C(&qword_100776B28, v6, type metadata accessor for TTRISmartListFilterEditorViewController);
    TTRKeyboardAvoidance<>.startAvoidingKeyboard()();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRISmartListFilterEditorViewController *)&v5 viewDidAppear:v3];
  [v4 becomeFirstResponder];
  *(v4 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_ttrAccessibilityShouldAnnounceOptionChanges) = 1;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100265670(a3);
}

- (void)cancelButtonAction:(id)a3
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

  sub_100272198();

  sub_1000079B4(v6, &qword_10076AE40);
}

- (void)doneButtonAction:(id)a3
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

  sub_1003EB81C();
  sub_1000079B4(v6, &qword_10076AE40);
}

- (_TtC9Reminders39TTRISmartListFilterEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_presenter);
  v5 = v4[13];
  v6 = v4[14];
  sub_10000C36C(v4 + 10, v5);
  v7 = *(v6 + 24);
  v8 = self;
  v9 = v7(v5, v6);

  return (v9 & 1) == 0;
}

@end