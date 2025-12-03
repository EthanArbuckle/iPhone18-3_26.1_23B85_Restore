@interface InsightsAdminVC
- (_TtC7Journal15InsightsAdminVC)initWithCoder:(id)coder;
- (_TtC7Journal15InsightsAdminVC)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7Journal15InsightsAdminVC)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)refreshData;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation InsightsAdminVC

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002A0860();
}

- (void)refreshData
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_1003E9628(0, 0, v5, &unk_10094B9A0, v9);
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sub_1002A3248(section);
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  selfCopy = self;
  sub_1002A32AC(headerViewCopy);
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
  v12 = sub_1002A345C();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC7Journal15InsightsAdminVC)initWithStyle:(int64_t)style
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal15InsightsAdminVC_data) = _swiftEmptyArrayStorage;
  v5.receiver = self;
  v5.super_class = type metadata accessor for InsightsAdminVC();
  return [(InsightsAdminVC *)&v5 initWithStyle:style];
}

- (_TtC7Journal15InsightsAdminVC)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal15InsightsAdminVC_data) = _swiftEmptyArrayStorage;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal15InsightsAdminVC_data) = _swiftEmptyArrayStorage;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for InsightsAdminVC();
  v9 = [(InsightsAdminVC *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC7Journal15InsightsAdminVC)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal15InsightsAdminVC_data) = _swiftEmptyArrayStorage;
  v7.receiver = self;
  v7.super_class = type metadata accessor for InsightsAdminVC();
  coderCopy = coder;
  v5 = [(InsightsAdminVC *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end