@interface CycleHistoryTableViewController
- (_TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
- (void)pushFilterView;
- (void)respondToContentSizeChanges;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CycleHistoryTableViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E10ABB8();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(CycleHistoryTableViewController *)&v5 viewWillAppear:appearCopy];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_presentedPDFProvider] = 0;
}

- (void)respondToContentSizeChanges
{
  selfCopy = self;
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
  selfCopy = self;
  sub_29E10C8BC();
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  selfCopy = self;
  v10 = sub_29E10C9CC(v8);

  (*(v6 + 8))(v8, v5);

  return v10;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_29E10CF10(viewCopy, section);
  v9 = v8;

  return v9;
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
  sub_29E10D418(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_29E10EB78(section);

  return v8;
}

- (_TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  providerCopy = provider;
  analysisCopy = analysis;
  selfCopy = self;
  sub_29E10ED18(analysisCopy);
}

@end