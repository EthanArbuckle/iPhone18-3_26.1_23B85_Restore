@interface MultiSelectLoggingCardViewController
- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)respondToSizeCategoryChanges;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation MultiSelectLoggingCardViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29DF1EDA8();
}

- (void)viewLayoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(MultiSelectLoggingCardViewController *)&v4 viewLayoutMarginsDidChange];
  v3 = [*&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView] tableHeaderView];
  if (v3)
  {

    sub_29DF1F0F4();
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  v12 = sub_29DF1F330(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    v11 = self;
    v12 = v10(a4, v11, ObjectType, v8);
    swift_unknownObjectRelease();

    return v12;
  }

  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  v5 = *(v4 + 1);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 24))(self, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  sub_29DF1FAE4(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_29DF203F8(v6, a4);

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0.0;
  }

  v7 = *(v6 + 1);
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 56))(self, a4, ObjectType, v7);
  swift_unknownObjectRelease();
  return v9;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  [a4 _setShouldHaveFullLengthBottomSeparator_];
  (*(v7 + 8))(v9, v6);
}

- (void)respondToSizeCategoryChanges
{
  v2 = self;
  sub_29DF20B44();
}

- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4
{
  sub_29E2C3714();
  v8[2] = self;
  v8[3] = a4;
  v6 = self;
  LOBYTE(self) = sub_29E0D8ABC(sub_29DF22510, v8, "MenstrualCyclesAppPlugin/MultiSelectLoggingCardViewController.swift");

  return self & 1;
}

@end