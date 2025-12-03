@interface StatisticsViewAllTableViewController
- (_TtC24MenstrualCyclesAppPlugin36StatisticsViewAllTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC24MenstrualCyclesAppPlugin36StatisticsViewAllTableViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation StatisticsViewAllTableViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E0C47A0();
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_29E0C53D4(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_29E0C702C(viewCopy, section);
  v9 = v8;

  return v9;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_29E0C7A20(viewCopy, section);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36StatisticsViewAllTableViewController_sections;
  swift_beginAccess();
  if (section < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(&self->super.super.super.super.isa + v6);
  if (*(v8 + 16) <= section)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (*(v8 + section + 32))
  {
    return *MEMORY[0x29EDC8230];
  }

  selfCopy = self;
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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_29E0C8C5C(section);
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

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  selfCopy = self;
  if (!_UISolariumEnabled())
  {
    goto LABEL_5;
  }

  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36StatisticsViewAllTableViewController_sections;
  result = swift_beginAccess();
  if (section < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(&selfCopy->super.super.super.super.isa + v6);
  if (*(v8 + 16) <= section)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (*(v8 + section + 32))
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

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36StatisticsViewAllTableViewController_sections;
  swift_beginAccess();
  return (*(&self->super.super.super.super.isa + v4))[2];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  cellCopy = cell;
  [cellCopy _setShouldHaveFullLengthBottomSeparator_];
  [cellCopy _setShouldHaveFullLengthTopSeparator_];

  (*(v7 + 8))(v9, v6);
}

- (_TtC24MenstrualCyclesAppPlugin36StatisticsViewAllTableViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin36StatisticsViewAllTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  viewCopy = view;
  itemCopy = item;
  actionCopy = action;
  selfCopy = self;
  v12 = sub_29E0C8F50();

  return v12;
}

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  providerCopy = provider;
  analysisCopy = analysis;
  selfCopy = self;
  sub_29E0C90DC(analysisCopy);
}

@end