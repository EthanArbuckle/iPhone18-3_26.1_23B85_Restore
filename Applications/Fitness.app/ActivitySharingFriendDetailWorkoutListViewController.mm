@interface ActivitySharingFriendDetailWorkoutListViewController
- (_TtC10FitnessApp52ActivitySharingFriendDetailWorkoutListViewController)initWithCoder:(id)coder;
- (_TtC10FitnessApp52ActivitySharingFriendDetailWorkoutListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC10FitnessApp52ActivitySharingFriendDetailWorkoutListViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation ActivitySharingFriendDetailWorkoutListViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100647DD0();
}

- (_TtC10FitnessApp52ActivitySharingFriendDetailWorkoutListViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp52ActivitySharingFriendDetailWorkoutListViewController_dataProviderObserver) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  v13[3] = v11;
  v14[0] = *v12;
  v13[1] = v9;
  v13[2] = v10;
  *(v14 + 9) = *&v12[9];
  v13[0] = v8;

  sub_100319D40(v13);
  if (*v12 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6;
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
  v12 = sub_100648664(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC10FitnessApp52ActivitySharingFriendDetailWorkoutListViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp52ActivitySharingFriendDetailWorkoutListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end