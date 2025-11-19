@interface ActivitySharingFriendDetailViewController
- (_TtC10FitnessApp41ActivitySharingFriendDetailViewController)initWithCoder:(id)a3;
- (_TtC10FitnessApp41ActivitySharingFriendDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC10FitnessApp41ActivitySharingFriendDetailViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ActivitySharingFriendDetailViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1003B76D8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ActivitySharingFriendDetailViewController();
  v4 = v6.receiver;
  [(ActivitySharingFriendDetailViewController *)&v6 viewDidAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_achievementTransitionAnimator];
  *&v4[OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_achievementTransitionAnimator] = 0;
}

- (_TtC10FitnessApp41ActivitySharingFriendDetailViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_dataProviderObserver) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp41ActivitySharingFriendDetailViewController_achievementTransitionAnimator) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1003BFAB4(a4);

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_1003B853C(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1003B98AC(v6, a4);

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1003B9B8C(v6, a4);
  v9 = v8;

  return v9;
}

- (_TtC10FitnessApp41ActivitySharingFriendDetailViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp41ActivitySharingFriendDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end