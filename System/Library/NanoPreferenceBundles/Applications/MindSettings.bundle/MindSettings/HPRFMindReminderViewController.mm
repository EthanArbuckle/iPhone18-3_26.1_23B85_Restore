@interface HPRFMindReminderViewController
+ (NSString)remindersDidChangeNotification;
- (HPRFMindReminderViewController)initWithCoder:(id)coder;
- (HPRFMindReminderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HPRFMindReminderViewController)initWithReminderProvider:(id)provider currentReminder:(id)reminder;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)enableSwitchTappedWithEnableSwitch:(id)switch;
- (void)rightBarButtonTapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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

- (HPRFMindReminderViewController)initWithReminderProvider:(id)provider currentReminder:(id)reminder
{
  if (reminder)
  {
    objc_allocWithZone(type metadata accessor for MindReminderViewController());
    providerCopy = provider;
    reminderCopy = reminder;
    providerCopy2 = providerCopy;
    reminderCopy2 = reminder;
  }

  else
  {
    objc_allocWithZone(type metadata accessor for MindReminderViewController());
    providerCopy2 = provider;
    reminderCopy2 = 0;
  }

  v10 = sub_622C(providerCopy2, reminderCopy2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (HPRFMindReminderViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___HPRFMindReminderViewController_reminderEnabled) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___HPRFMindReminderViewController_weekdaySelection) = 0;
  result = sub_F108();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_64F4();
}

- (void)rightBarButtonTapped
{
  selfCopy = self;
  sub_7490();
}

- (void)enableSwitchTappedWithEnableSwitch:(id)switch
{
  selfCopy = self;
  isOn = [switch isOn];
  *(&selfCopy->super.super.super.isa + OBJC_IVAR___HPRFMindReminderViewController_reminderEnabled) = isOn;

  _objc_release_x1();
}

- (HPRFMindReminderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_ED48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ED18();
  viewCopy = view;
  selfCopy = self;
  sub_80B8(viewCopy);

  (*(v7 + 8))(v10, v6);
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 1;
  }

  if (*(&self->super.super.super.isa + OBJC_IVAR___HPRFMindReminderViewController_state))
  {
    return 2;
  }

  return 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_ED48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ED18();
  viewCopy = view;
  selfCopy = self;
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