@interface CardListController
- (_TtC17SequoiaTranslator18CardListController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)deleteCell:(id)cell;
- (void)favorite:(id)favorite;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CardListController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100033CEC();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CardListController();
  v4 = v7.receiver;
  [(CardListController *)&v7 viewWillAppear:appearCopy];
  v5 = sub_1000336B0();
  v6 = sub_10012267C();

  [v6 resetSwipedItemAnimated:0 completion:{0, v7.receiver, v7.super_class}];
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  sub_100033F04();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100034710(appear);
}

- (_TtC17SequoiaTranslator18CardListController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  selfCopy = self;
  view = [(CardListController *)selfCopy view];
  if (view)
  {
    v4 = view;
    [view endEditing:1];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_100036C84();
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;

  static Published.subscript.getter();

  if (v8 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1000370A8(viewCopy, v9);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100035674(v8, 1);
  view = [(CardListController *)selfCopy view];
  if (view)
  {
    v11 = view;
    [view endEditing:1];

    v12 = sub_100033A4C();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v12 scrollToItemAtIndexPath:isa atScrollPosition:4 animated:1];

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v5 = sub_100005AD4(&unk_1003AB970);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  selfCopy = self;
  sub_100035F80(v7, 1);

  sub_100009EBC(v7, &unk_1003AB970);
  (*(v9 + 8))(v11, v8);
}

- (void)favorite:(id)favorite
{
  favoriteCopy = favorite;
  selfCopy = self;
  sub_1000398CC(favoriteCopy);
}

- (void)deleteCell:(id)cell
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100039C04(v7);

  (*(v5 + 8))(v7, v4);
}

@end