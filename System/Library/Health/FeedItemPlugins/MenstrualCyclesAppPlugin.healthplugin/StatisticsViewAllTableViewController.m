@interface StatisticsViewAllTableViewController
- (_TtC24MenstrualCyclesAppPlugin36StatisticsViewAllTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC24MenstrualCyclesAppPlugin36StatisticsViewAllTableViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation StatisticsViewAllTableViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29E0C47A0();
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  v12 = sub_29E0C53D4(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_29E0C702C(v6, a4);
  v9 = v8;

  return v9;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_29E0C7A20(v6, a4);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36StatisticsViewAllTableViewController_sections;
  swift_beginAccess();
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(&self->super.super.super.super.isa + v6);
  if (*(v8 + 16) <= a4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (*(v8 + a4 + 32))
  {
    return *MEMORY[0x29EDC8230];
  }

  v9 = self;
  if (_UISolariumEnabled())
  {
    v10 = *MEMORY[0x29EDC8230];

    return v10;
  }

  else
  {

    return 0.0;
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_29E0C8C5C(a4);
  v9 = v8;

  if (v9)
  {
    v10 = sub_29E2C33A4();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = self;
  if (!_UISolariumEnabled())
  {
    goto LABEL_5;
  }

  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36StatisticsViewAllTableViewController_sections;
  result = swift_beginAccess();
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(&v5->super.super.super.super.isa + v6);
  if (*(v8 + 16) <= a4)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (*(v8 + a4 + 32))
  {
LABEL_5:

    goto LABEL_6;
  }

  sub_29E0C3DEC();
  v11 = v10;

  if (v11)
  {
    v12 = sub_29E2C33A4();

    v9 = v12;
    goto LABEL_7;
  }

LABEL_6:
  v9 = 0;
LABEL_7:

  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36StatisticsViewAllTableViewController_sections;
  swift_beginAccess();
  return (*(&self->super.super.super.super.isa + v4))[2];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a4;
  [v10 _setShouldHaveFullLengthBottomSeparator_];
  [v10 _setShouldHaveFullLengthTopSeparator_];

  (*(v7 + 8))(v9, v6);
}

- (_TtC24MenstrualCyclesAppPlugin36StatisticsViewAllTableViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin36StatisticsViewAllTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_29E0C8F50();

  return v12;
}

- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_29E0C90DC(v7);
}

@end