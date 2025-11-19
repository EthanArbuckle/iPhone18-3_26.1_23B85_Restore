@interface TTRIDebugMenuViewController
- (UITableView)tableView;
- (_TtC9Reminders27TTRIDebugMenuViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapDone:(id)a3;
- (void)viewDidLoad;
@end

@implementation TTRIDebugMenuViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10017F760();
}

- (UITableView)tableView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didTapDone:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001829CC();
}

- (_TtC9Reminders27TTRIDebugMenuViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end