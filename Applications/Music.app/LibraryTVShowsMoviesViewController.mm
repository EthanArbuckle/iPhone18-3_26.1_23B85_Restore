@interface LibraryTVShowsMoviesViewController
- (_TtC5Music34LibraryTVShowsMoviesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 indexPathForIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)indexTitlesForCollectionView:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation LibraryTVShowsMoviesViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1007BB830();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1007BF588(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1007BF6D0(a3);
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1007CB020();

  return v6;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1007CB47C(a4);

  return v8;
}

- (id)indexTitlesForCollectionView:(id)a3
{
  v4 = sub_10010FC20(&unk_1011A3860);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_10010FC20(&qword_1011A3870);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context))
  {
    v10 = self;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v11 = sub_10010FC20(&qword_1011A3880);
    if ((*(*(v11 - 8) + 48))(v6, 1, v11) == 1)
    {
      v12 = &unk_1011A3860;
    }

    else
    {

      v12 = &qword_1011A3880;
    }

    v13 = v6;
  }

  else
  {
    v14 = self;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v9);

    v15 = sub_10010FC20(&qword_1011A3888);
    if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
    {
      v12 = &qword_1011A3870;
    }

    else
    {

      v12 = &qword_1011A3888;
    }

    v13 = v9;
  }

  sub_1000095E8(v13, v12);

  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v16.super.isa;
}

- (id)collectionView:(id)a3 indexPathForIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(index:)();
  v9.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);

  return v9.super.isa;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = self;
  v16 = sub_1007C4E78(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_1007C5298(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1007C6270(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = self;
  v10 = sub_1007CBCEC(v7);

  return v10;
}

- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_1007CCC78();

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1007CCD0C(v9, a5);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v5 = self;
  RequestResponse.Controller.isPaused.setter(0);
  RequestResponse.Controller.isPaused.setter(0);
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UIContentUnavailableConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1007C91D4();

  (*(v5 + 8))(v7, v4);
}

- (_TtC5Music34LibraryTVShowsMoviesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end