@interface ActivitySharingFriendDetailViewController
- (_TtC10FitnessApp41ActivitySharingFriendDetailViewController)initWithCoder:(id)coder;
- (_TtC10FitnessApp41ActivitySharingFriendDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC10FitnessApp41ActivitySharingFriendDetailViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ActivitySharingFriendDetailViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003B76D8();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ActivitySharingFriendDetailViewController();
  v4 = v6.receiver;
  [(ActivitySharingFriendDetailViewController *)&v6 viewDidAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_achievementTransitionAnimator];
  *&v4[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_achievementTransitionAnimator] = 0;
}

- (_TtC10FitnessApp41ActivitySharingFriendDetailViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProviderObserver) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_achievementTransitionAnimator) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1003BFAB4(section);

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
  v12 = sub_1003B853C(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1003B98AC(viewCopy, section);

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_1003B9B8C(viewCopy, section);
  v9 = v8;

  return v9;
}

- (_TtC10FitnessApp41ActivitySharingFriendDetailViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp41ActivitySharingFriendDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end