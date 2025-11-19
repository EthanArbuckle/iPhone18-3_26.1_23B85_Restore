@interface CustomJournalsDebugViewController
- (_TtC7Journal33CustomJournalsDebugViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC7Journal33CustomJournalsDebugViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)controller:(id)a3 didChangeContentWithSnapshot:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CustomJournalsDebugViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10051DAF4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10051DC24(a3);
}

- (_TtC7Journal33CustomJournalsDebugViewController)initWithCollectionViewLayout:(id)a3
{
  v4 = OBJC_IVAR____TtC7Journal33CustomJournalsDebugViewController_context;
  v5 = qword_100ACFCA8;
  v6 = a3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = *(*(qword_100B2F840 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  *(&self->super.super.super.super.isa + v4) = v7;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal33CustomJournalsDebugViewController_dataSource) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal33CustomJournalsDebugViewController____lazy_storage___fetchedResultsController) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for CustomJournalsDebugViewController();
  v8 = v7;
  v9 = [(CustomJournalsDebugViewController *)&v11 initWithCollectionViewLayout:v6];

  return v9;
}

- (_TtC7Journal33CustomJournalsDebugViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10051E3C8(v5, v7, a4);
}

- (void)controller:(id)a3 didChangeContentWithSnapshot:(id)a4
{
  v6 = sub_1000F24EC(&unk_100AE7E60);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  sub_1000065A8(0, &qword_100AD43F0);
  sub_1005206E8();
  sub_1001E4B10();
  static NSDiffableDataSourceSnapshot._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal33CustomJournalsDebugViewController_dataSource);
  if (v10)
  {
    v11 = a4;
    v12 = self;
    v13 = v10;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

@end