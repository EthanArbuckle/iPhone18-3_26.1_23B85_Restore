@interface HPRFMindReminderViewController
+ (NSString)remindersDidChangeNotification;
- (HPRFMindReminderViewController)initWithCoder:(id)a3;
- (HPRFMindReminderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HPRFMindReminderViewController)initWithReminderProvider:(id)a3 currentReminder:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)enableSwitchTappedWithEnableSwitch:(id)a3;
- (void)rightBarButtonTapped;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HPRFMindReminderViewController

+ (NSString)remindersDidChangeNotification
{
  if (qword_1D890 != -1)
  {
    swift_once();
  }

  v3 = qword_1DEC0;

  return v3;
}

- (HPRFMindReminderViewController)initWithReminderProvider:(id)a3 currentReminder:(id)a4
{
  if (a4)
  {
    objc_allocWithZone(type metadata accessor for MindReminderViewController());
    v6 = a3;
    v7 = a4;
    v8 = v6;
    v9 = a4;
  }

  else
  {
    objc_allocWithZone(type metadata accessor for MindReminderViewController());
    v8 = a3;
    v9 = 0;
  }

  v10 = sub_622C(v8, v9);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (HPRFMindReminderViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___HPRFMindReminderViewController_reminderEnabled) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___HPRFMindReminderViewController_weekdaySelection) = 0;
  result = sub_F108();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_64F4();
}

- (void)rightBarButtonTapped
{
  v2 = self;
  sub_7490();
}

- (void)enableSwitchTappedWithEnableSwitch:(id)a3
{
  v5 = self;
  v4 = [a3 isOn];
  *(&v5->super.super.super.isa + OBJC_IVAR___HPRFMindReminderViewController_reminderEnabled) = v4;

  _objc_release_x1();
}

- (HPRFMindReminderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_ED48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ED18();
  v11 = a3;
  v12 = self;
  sub_80B8(v11);

  (*(v7 + 8))(v10, v6);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (*(&self->super.super.super.isa + OBJC_IVAR___HPRFMindReminderViewController_state))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  if (*(&self->super.super.super.isa + OBJC_IVAR___HPRFMindReminderViewController_state))
  {
    return 2;
  }

  return 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_ED48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ED18();
  v11 = a3;
  v12 = self;
  v13 = sub_ED38();
  if (v13 == 1)
  {
    v14 = sub_88F8();
  }

  else
  {
    if (v13)
    {
      result = sub_F108();
      __break(1u);
      return result;
    }

    v14 = sub_8348();
  }

  v15 = v14;

  (*(v7 + 8))(v10, v6);

  return v15;
}

@end