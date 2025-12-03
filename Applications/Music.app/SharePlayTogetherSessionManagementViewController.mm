@interface SharePlayTogetherSessionManagementViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (_TtC5Music48SharePlayTogetherSessionManagementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SharePlayTogetherSessionManagementViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10074CEA8();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_100752164(appearing);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SharePlayTogetherSessionManagementViewController(0);
  v4 = v5.receiver;
  [(SharePlayTogetherSessionManagementViewController *)&v5 viewDidAppear:appearCopy];
  v4[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_viewDidAppearOnce] = 1;
  sub_1007525E8();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10075237C();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SharePlayTogetherSessionManagementViewController(0);
  v4 = v7.receiver;
  [(SharePlayTogetherSessionManagementViewController *)&v7 viewWillDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_onDismiss];
  if (v5)
  {

    v5(v6);

    sub_100020438(v5);
  }

  else
  {
  }
}

- (_TtC5Music48SharePlayTogetherSessionManagementViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  traitCollection = [(SharePlayTogetherSessionManagementViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  (*(v6 + 8))(v8, v5);
  return userInterfaceIdiom == 3;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100754274(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end