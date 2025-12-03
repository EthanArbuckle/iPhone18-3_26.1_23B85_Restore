@interface LibraryTVShowsMoviesViewController
- (_TtC5Music34LibraryTVShowsMoviesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view indexPathForIndexTitle:(id)title atIndex:(int64_t)index;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)indexTitlesForCollectionView:(id)view;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation LibraryTVShowsMoviesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1007BB830();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1007BF588(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1007BF6D0(disappear);
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_1007CB020();

  return v6;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1007CB47C(section);

  return v8;
}

- (id)indexTitlesForCollectionView:(id)view
{
  v4 = sub_10010FC20(&unk_1011A3860);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_10010FC20(&qword_1011A3870);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context))
  {
    selfCopy = self;
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
    selfCopy2 = self;
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

- (id)collectionView:(id)view indexPathForIndexTitle:(id)title atIndex:(int64_t)index
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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_1007C4E78(viewCopy, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1007C5298(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1007C6270(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v10 = sub_1007CBCEC(v7);

  return v10;
}

- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1007CCC78();

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1007CCD0C(configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  selfCopy = self;
  RequestResponse.Controller.isPaused.setter(0);
  RequestResponse.Controller.isPaused.setter(0);
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UIContentUnavailableConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1007C91D4();

  (*(v5 + 8))(v7, v4);
}

- (_TtC5Music34LibraryTVShowsMoviesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end