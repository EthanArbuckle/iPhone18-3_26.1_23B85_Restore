@interface TTRISmartListFilterEditorViewController
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (_TtC9Reminders39TTRISmartListFilterEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelButtonAction:(id)action;
- (void)doneButtonAction:(id)action;
- (void)loadView;
- (void)presentationControllerDidAttemptToDismiss:(void *)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TTRISmartListFilterEditorViewController

- (void)presentationControllerDidAttemptToDismiss:(void *)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_100272198();
}

- (void)loadView
{
  v3 = objc_allocWithZone(UITableView);
  selfCopy = self;
  v4 = [v3 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v4 setEstimatedRowHeight:UITableViewAutomaticDimension];
  [v4 setEstimatedSectionHeaderHeight:UITableViewAutomaticDimension];
  [v4 setEstimatedSectionHeaderHeight:UITableViewAutomaticDimension];
  v5 = v4;
  [(TTRISmartListFilterEditorViewController *)selfCopy setView:v5];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100264F88();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(TTRISmartListFilterEditorViewController *)&v8 viewWillAppear:appearCopy];
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

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRISmartListFilterEditorViewController *)&v5 viewDidAppear:appearCopy];
  [v4 becomeFirstResponder];
  *(v4 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_ttrAccessibilityShouldAnnounceOptionChanges) = 1;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100265670(disappear);
}

- (void)cancelButtonAction:(id)action
{
  if (action)
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

  sub_100272198();

  sub_1000079B4(v6, &qword_10076AE40);
}

- (void)doneButtonAction:(id)action
{
  if (action)
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

  sub_1003EB81C();
  sub_1000079B4(v6, &qword_10076AE40);
}

- (_TtC9Reminders39TTRISmartListFilterEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_presenter);
  v5 = v4[13];
  v6 = v4[14];
  sub_10000C36C(v4 + 10, v5);
  v7 = *(v6 + 24);
  selfCopy = self;
  v9 = v7(v5, v6);

  return (v9 & 1) == 0;
}

@end