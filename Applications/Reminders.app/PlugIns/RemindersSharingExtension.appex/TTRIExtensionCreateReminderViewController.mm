@interface TTRIExtensionCreateReminderViewController
- (UIBarButtonItem)addBarButtonItem;
- (UITableView)tableView;
- (_TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapAdd:(id)add;
- (void)didTapCancel:(id)cancel;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRIExtensionCreateReminderViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100018E74();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10001A038(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_10001A258();
}

- (UITableView)tableView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIBarButtonItem)addBarButtonItem
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didTapCancel:(id)cancel
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10004CBA0();
  swift_unknownObjectRelease();
  v5 = *(selfCopy + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_presenter);
  if (qword_100066EF8 != -1)
  {
    swift_once();
  }

  v6 = sub_10004C1B0();
  sub_10000D49C(v6, qword_100067710);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014D1C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100011DD8(0, Strong);
    swift_unknownObjectRelease();
  }

  sub_10000343C(v8);
}

- (void)didTapAdd:(id)add
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10004CBA0();
  swift_unknownObjectRelease();
  sub_10004C930();
  [(TTRIExtensionCreateReminderViewController *)selfCopy resignFirstResponder];
  v5 = *(selfCopy + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_presenter);
  sub_10000F348();
  sub_10000343C(v6);
}

- (_TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end