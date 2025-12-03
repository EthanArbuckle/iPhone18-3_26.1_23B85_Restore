@interface TTRIListDetailViewController
- (_TtC9Reminders28TTRIListDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapCancel:(id)cancel;
- (void)didTapDone:(id)done;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TTRIListDetailViewController

- (void)loadView
{
  v3 = objc_allocWithZone(UITableView);
  selfCopy = self;
  v4 = [v3 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [(TTRIListDetailViewController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002D7B70();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1002D8308(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1002D848C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(TTRIListDetailViewController *)&v6 viewWillDisappear:disappearCopy];
  if (qword_100767158 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100779F88);
  sub_1003F99F4(0x746544207473694CLL, 0xEC000000736C6961);
  [v4 resignFirstResponder];
  sub_1002DE800(&qword_10077A100, type metadata accessor for TTRIListDetailViewController);
  TTRKeyboardAvoidance<>.stopAvoidingKeyboard()();
}

- (void)didTapCancel:(id)cancel
{
  v4 = type metadata accessor for TTRIPopoverAnchor();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  UIViewController.endFirstResponderEditing()();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *&selfCopy->presenter[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter];
    ObjectType = swift_getObjectType();
    static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)();
    (*(v11 + 56))(v7, ObjectType, v11);

    (*(v5 + 8))(v7, v4);
    sub_100004758(v13);
  }

  else
  {

    sub_100004758(v13);
  }
}

- (void)didTapDone:(id)done
{
  v4 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-v5];
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  UIViewController.endFirstResponderEditing()();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = selfCopy;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_10009E31C(0, 0, v6, &unk_100638FD8, v11);

  sub_100004758(v12);
}

- (_TtC9Reminders28TTRIListDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end