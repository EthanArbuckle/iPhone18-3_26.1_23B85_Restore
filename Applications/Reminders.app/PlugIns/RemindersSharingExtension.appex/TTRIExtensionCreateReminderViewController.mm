@interface TTRIExtensionCreateReminderViewController
- (UIBarButtonItem)addBarButtonItem;
- (UITableView)tableView;
- (_TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapAdd:(id)a3;
- (void)didTapCancel:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRIExtensionCreateReminderViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100018E74();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10001A038(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
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

- (void)didTapCancel:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_10004CBA0();
  swift_unknownObjectRelease();
  v5 = *(v4 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_presenter);
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

- (void)didTapAdd:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_10004CBA0();
  swift_unknownObjectRelease();
  sub_10004C930();
  [(TTRIExtensionCreateReminderViewController *)v4 resignFirstResponder];
  v5 = *(v4 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_presenter);
  sub_10000F348();
  sub_10000343C(v6);
}

- (_TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end