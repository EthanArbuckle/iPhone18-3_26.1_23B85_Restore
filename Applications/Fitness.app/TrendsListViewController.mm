@interface TrendsListViewController
- (_TtC10FitnessApp24TrendsListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (uint64_t)tapToRadar;
- (void)dealloc;
- (void)reloadForFontSizeChangeWithNote:(id)note;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)wheelchairUseDidChangeWithNote:(id)note;
@end

@implementation TrendsListViewController

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider);
  swift_beginAccess();
  selfCopy = self;
  v5 = v3;
  sub_100559A44(0, 0, selfCopy);
  swift_endAccess();

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for TrendsListViewController();
  [(TrendsListViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003B1AF0();
}

- (void)wheelchairUseDidChangeWithNote:(id)note
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003B2228();

  (*(v5 + 8))(v7, v4);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1003B2414();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003B25BC(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003B2878(appear);
}

- (void)reloadForFontSizeChangeWithNote:(id)note
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataDidLoad) == 1)
  {
    selfCopy = self;
    sub_1003B30BC();
    view = [(TrendsListViewController *)selfCopy view];
    if (view)
    {
      v10 = view;
      [view setNeedsLayout];

      [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_tableView) reloadData];
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }
}

- (_TtC10FitnessApp24TrendsListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1003B7060(section);

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1003B5718(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1003B5A98(viewCopy, section);

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = 0.0;
  if ([(TrendsListViewController *)selfCopy tableView:viewCopy numberOfRowsInSection:section]>= 1 && (section | 4) != 4)
  {
    v8 = UITableViewAutomaticDimension;
  }

  return v8;
}

- (uint64_t)tapToRadar
{
  v0 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TrendsRadarHandler();
  sub_100175B90(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000EA04(v2, &unk_1008EB5B0);
  }

  (*(v4 + 32))(v6, v2, v3);
  defaultWorkspace = [objc_opt_self() defaultWorkspace];
  if (defaultWorkspace)
  {
    v10 = defaultWorkspace;
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    [v10 openURL:v11 configuration:0 completionHandler:0];
  }

  return (*(v4 + 8))(v6, v3);
}

@end