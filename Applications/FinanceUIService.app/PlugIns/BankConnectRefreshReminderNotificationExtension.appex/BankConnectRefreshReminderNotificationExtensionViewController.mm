@interface BankConnectRefreshReminderNotificationExtensionViewController
- (_TtC47BankConnectRefreshReminderNotificationExtension61BankConnectRefreshReminderNotificationExtensionViewController)initWithCoder:(id)coder;
- (_TtC47BankConnectRefreshReminderNotificationExtension61BankConnectRefreshReminderNotificationExtensionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithCompletion:(id)completion;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation BankConnectRefreshReminderNotificationExtensionViewController

- (void)configureWithCompletion:(id)completion
{
  sub_100007EF0();
  sub_100007EE0();
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = _Block_copy(completion);
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
  selfCopy = self;
  v4 = [v3 init];
  [(BankConnectRefreshReminderNotificationExtensionViewController *)selfCopy setView:v4];

  [(BankConnectRefreshReminderNotificationExtensionViewController *)selfCopy setPreferredContentSize:270.0, 100.0];
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
  selfCopy = self;
  [(BankConnectRefreshReminderNotificationExtensionViewController *)&v6 viewDidLoad];
  v4 = [(BankConnectRefreshReminderNotificationExtensionViewController *)selfCopy view:v6.receiver];
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

  selfCopy = self;
  sub_100006F18();
}

- (_TtC47BankConnectRefreshReminderNotificationExtension61BankConnectRefreshReminderNotificationExtensionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_100007EF0();
  sub_100007EE0();
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    sub_100007E80();
    bundleCopy = bundle;
    name = sub_100007E70();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for BankConnectRefreshReminderNotificationExtensionViewController();
  v9 = [(BankConnectRefreshReminderNotificationExtensionViewController *)&v11 initWithNibName:name bundle:bundle];

  return v9;
}

- (_TtC47BankConnectRefreshReminderNotificationExtension61BankConnectRefreshReminderNotificationExtensionViewController)initWithCoder:(id)coder
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
  coderCopy = coder;
  v6 = [(BankConnectRefreshReminderNotificationExtensionViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end