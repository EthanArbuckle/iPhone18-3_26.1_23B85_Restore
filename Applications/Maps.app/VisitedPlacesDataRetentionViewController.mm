@interface VisitedPlacesDataRetentionViewController
- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)continueButtonTapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VisitedPlacesDataRetentionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100212338();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for VisitedPlacesDataRetentionViewController();
  v4 = v7.receiver;
  [(VisitedPlacesDataRetentionViewController *)&v7 viewWillAppear:appearCopy];
  sharedMapsDelegate = [objc_opt_self() sharedMapsDelegate];
  if (sharedMapsDelegate)
  {
    v6 = sharedMapsDelegate;
    [sharedMapsDelegate setLockedOrientations:2];

    v4 = v6;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for VisitedPlacesDataRetentionViewController();
  v4 = v7.receiver;
  [(VisitedPlacesDataRetentionViewController *)&v7 viewWillDisappear:disappearCopy];
  sharedMapsDelegate = [objc_opt_self() sharedMapsDelegate];
  if (sharedMapsDelegate)
  {
    v6 = sharedMapsDelegate;
    [sharedMapsDelegate setLockedOrientations:0];
  }
}

- (void)continueButtonTapped
{
  selfCopy = self;
  sub_100212728();
}

- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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
  v12 = sub_100212BD4(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100212EFC(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end