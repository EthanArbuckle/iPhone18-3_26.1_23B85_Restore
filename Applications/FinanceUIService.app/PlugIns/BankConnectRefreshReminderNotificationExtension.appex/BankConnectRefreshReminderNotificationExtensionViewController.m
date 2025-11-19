@interface BankConnectRefreshReminderNotificationExtensionViewController
- (_TtC47BankConnectRefreshReminderNotificationExtension61BankConnectRefreshReminderNotificationExtensionViewController)initWithCoder:(id)a3;
- (_TtC47BankConnectRefreshReminderNotificationExtension61BankConnectRefreshReminderNotificationExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithCompletion:(id)a3;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation BankConnectRefreshReminderNotificationExtensionViewController

- (void)configureWithCompletion:(id)a3
{
  sub_100007EF0();
  sub_100007EE0();
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = _Block_copy(a3);
  v4[2]();
  _Block_release(v4);
}

- (void)loadView
{
  sub_100007EF0();
  sub_100007EE0();
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = objc_allocWithZone(UIView);
  v5 = self;
  v4 = [v3 init];
  [(BankConnectRefreshReminderNotificationExtensionViewController *)v5 setView:v4];

  [(BankConnectRefreshReminderNotificationExtensionViewController *)v5 setPreferredContentSize:270.0, 100.0];
  sub_10000718C();
}

- (void)viewDidLoad
{
  sub_100007EF0();
  sub_100007EE0();
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for BankConnectRefreshReminderNotificationExtensionViewController();
  v3 = self;
  [(BankConnectRefreshReminderNotificationExtensionViewController *)&v6 viewDidLoad];
  v4 = [(BankConnectRefreshReminderNotificationExtensionViewController *)v3 view:v6.receiver];
  if (v4)
  {
    v5 = v4;
    [v4 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLayoutSubviews
{
  sub_100007EF0();
  sub_100007EE0();
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_100006F18();
}

- (_TtC47BankConnectRefreshReminderNotificationExtension61BankConnectRefreshReminderNotificationExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_100007EF0();
  sub_100007EE0();
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_100007E80();
    v7 = a4;
    a3 = sub_100007E70();
  }

  else
  {
    v8 = a4;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for BankConnectRefreshReminderNotificationExtensionViewController();
  v9 = [(BankConnectRefreshReminderNotificationExtensionViewController *)&v11 initWithNibName:a3 bundle:a4];

  return v9;
}

- (_TtC47BankConnectRefreshReminderNotificationExtension61BankConnectRefreshReminderNotificationExtensionViewController)initWithCoder:(id)a3
{
  sub_100007EF0();
  sub_100007EE0();
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for BankConnectRefreshReminderNotificationExtensionViewController();
  v5 = a3;
  v6 = [(BankConnectRefreshReminderNotificationExtensionViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end