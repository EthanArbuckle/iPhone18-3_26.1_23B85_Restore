@interface LibrarySongsViewController
- (_TtC5Music26LibrarySongsViewController)initWithNibName:(id)name bundle:(id)bundle;
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
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation LibrarySongsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100522EF8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100527148(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100527268(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(LibrarySongsViewController *)&v7 viewWillDisappear:disappearCopy];
  type metadata accessor for ApplicationMainMenu();
  v5 = sub_100314AEC();
  if (v5)
  {
    v6 = v5;
    sub_1006F49A4(v4, v5);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(LibrarySongsViewController *)&v5 viewDidDisappear:disappearCopy];
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_1005312E4();

  return v6;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1005314E8(section);

  return v8;
}

- (id)indexTitlesForCollectionView:(id)view
{
  v4 = sub_10010FC20(&qword_10118D1B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  selfCopy = self;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v6);

  v8 = sub_10010FC20(&qword_10118D1C8);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000095E8(v6, &qword_10118D1B8);
  }

  else
  {

    sub_1000095E8(v6, &qword_10118D1C8);
  }

  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
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
  v16 = sub_10052AF20(viewCopy, v11, v13);

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
  v12 = sub_10052B280(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10052BAF4(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  type metadata accessor for IndexPath();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v10 = sub_100531904(v7);

  return v10;
}

- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  selfCopy = self;
  searchBar = [*(sub_1005235FC() + 32) searchBar];
  [searchBar resignFirstResponder];

  RequestResponse.Controller.isPaused.setter(1);
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100531FD0(configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  selfCopy = self;
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
  sub_10052E440();

  (*(v5 + 8))(v7, v4);
}

- (_TtC5Music26LibrarySongsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end