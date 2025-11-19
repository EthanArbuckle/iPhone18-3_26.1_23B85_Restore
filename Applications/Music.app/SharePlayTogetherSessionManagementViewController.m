@interface SharePlayTogetherSessionManagementViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (_TtC5Music48SharePlayTogetherSessionManagementViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SharePlayTogetherSessionManagementViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10074CEA8();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_100752164(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SharePlayTogetherSessionManagementViewController(0);
  v4 = v5.receiver;
  [(SharePlayTogetherSessionManagementViewController *)&v5 viewDidAppear:v3];
  v4[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_viewDidAppearOnce] = 1;
  sub_1007525E8();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10075237C();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SharePlayTogetherSessionManagementViewController(0);
  v4 = v7.receiver;
  [(SharePlayTogetherSessionManagementViewController *)&v7 viewWillDisappear:v3];
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

- (_TtC5Music48SharePlayTogetherSessionManagementViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = [(SharePlayTogetherSessionManagementViewController *)v9 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  (*(v6 + 8))(v8, v5);
  return v11 == 3;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100754274(v10);

  (*(v7 + 8))(v9, v6);
}

@end