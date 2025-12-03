@interface MultiSelectLoggingCardViewController
- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)respondToSizeCategoryChanges;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation MultiSelectLoggingCardViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29DF1EDA8();
}

- (void)viewLayoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(MultiSelectLoggingCardViewController *)&v4 viewLayoutMarginsDidChange];
  tableHeaderView = [*&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView] tableHeaderView];
  if (tableHeaderView)
  {

    sub_29DF1F0F4();
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_29DF1F330(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v6 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    selfCopy = self;
    v12 = v10(section, selfCopy, ObjectType, v8);
    swift_unknownObjectRelease();

    return v12;
  }

  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  sub_29DF1FAE4(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_29DF203F8(viewCopy, section);

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v6 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0.0;
  }

  v7 = *(v6 + 1);
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 56))(self, section, ObjectType, v7);
  swift_unknownObjectRelease();
  return v9;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  [cell _setShouldHaveFullLengthBottomSeparator_];
  (*(v7 + 8))(v9, v6);
}

- (void)respondToSizeCategoryChanges
{
  selfCopy = self;
  sub_29DF20B44();
}

- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section
{
  sub_29E2C3714();
  v8[2] = self;
  v8[3] = section;
  selfCopy = self;
  LOBYTE(self) = sub_29E0D8ABC(sub_29DF22510, v8, "MenstrualCyclesAppPlugin/MultiSelectLoggingCardViewController.swift");

  return self & 1;
}

@end