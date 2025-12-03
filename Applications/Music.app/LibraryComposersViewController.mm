@interface LibraryComposersViewController
- (_TtC5Music30LibraryComposersViewController)initWithCoder:(id)coder;
- (_TtC5Music30LibraryComposersViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view indexPathForIndexTitle:(id)title atIndex:(int64_t)index;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)indexTitlesForCollectionView:(id)view;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation LibraryComposersViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10035FC68();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(LibraryComposersViewController *)&v6 viewWillAppear:appearCopy];
  v5 = sub_10035FFA4();
  UICollectionView.clearSelection(using:animated:)([v4 transitionCoordinator], appearCopy);

  swift_unknownObjectRelease();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100360FB8(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(LibraryComposersViewController *)&v5 viewDidDisappear:disappearCopy];
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_1003631F4();

  return v6;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1003633F8(section);

  return v8;
}

- (id)indexTitlesForCollectionView:(id)view
{
  v4 = sub_10010FC20(&unk_10118C4D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  selfCopy = self;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v6);

  v8 = sub_10010FC20(&unk_10118C4E0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000095E8(v6, &unk_10118C4D0);
  }

  else
  {

    sub_1000095E8(v6, &unk_10118C4E0);
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
  v16 = sub_100361D48(viewCopy, v11, v13);

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
  v12 = sub_10036206C(viewCopy, v9);

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
  sub_100363814(v9);

  (*(v7 + 8))(v9, v6);
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UIContentUnavailableConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100362880();

  (*(v5 + 8))(v7, v4);
}

- (_TtC5Music30LibraryComposersViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___headerRegistration;
  v5 = sub_10010FC20(&unk_10118A650);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___listCellRegistration;
  v7 = sub_10010FC20(&qword_10118C4B8);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___collectionView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music30LibraryComposersViewController____lazy_storage___searchController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC5Music30LibraryComposersViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end