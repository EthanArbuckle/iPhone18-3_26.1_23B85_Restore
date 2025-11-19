@interface CycleHistoryTableViewController
- (_TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4;
- (void)pushFilterView;
- (void)respondToContentSizeChanges;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CycleHistoryTableViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29E10ABB8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(CycleHistoryTableViewController *)&v5 viewWillAppear:v3];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_presentedPDFProvider] = 0;
}

- (void)respondToContentSizeChanges
{
  v2 = self;
  sub_29E10A2F4();
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(CycleHistoryTableViewController *)&v3 viewLayoutMarginsDidChange];
  sub_29E10A2F4();
}

- (void)pushFilterView
{
  v2 = self;
  sub_29E10C8BC();
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v9 = self;
  v10 = sub_29E10C9CC(v8);

  (*(v6 + 8))(v8, v5);

  return v10;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_29E10CF10(v6, a4);
  v9 = v8;

  return v9;
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
  sub_29E10D418(v10);

  (*(v7 + 8))(v9, v6);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_29E10EB78(a4);

  return v8;
}

- (_TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_29E10ED18(v7);
}

@end