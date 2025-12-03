@interface FMPredefinedMessageViewController
- (_TtC6FindMy33FMPredefinedMessageViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6FindMy33FMPredefinedMessageViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation FMPredefinedMessageViewController

- (void)updateViewConstraints
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMPredefinedMessageViewController();
  v2 = v6.receiver;
  [(FMPredefinedMessageViewController *)&v6 updateViewConstraints];
  v3 = *&v2[OBJC_IVAR____TtC6FindMy33FMPredefinedMessageViewController_tableView];
  v4 = *&v2[OBJC_IVAR____TtC6FindMy33FMPredefinedMessageViewController_tableViewheightConstraint];
  [v3 intrinsicContentSize];
  [v4 setConstant:v5];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMPredefinedMessageViewController();
  v2 = v3.receiver;
  [(FMPredefinedMessageViewController *)&v3 viewDidLoad];
  sub_100488020();
  sub_10048828C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1004894A4();
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
  v12 = sub_100488704(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006C2670);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100488984(viewCopy, v9, v12);

  v15 = *(v7 + 8);
  v15(v9, v6);
  v16 = (*(v7 + 48))(v12, 1, v6);
  v17 = 0;
  if (v16 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15(v12, v6);
    v17 = isa;
  }

  return v17;
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
  sub_100489068(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (_TtC6FindMy33FMPredefinedMessageViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6FindMy33FMPredefinedMessageViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end