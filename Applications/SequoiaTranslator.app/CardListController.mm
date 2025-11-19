@interface CardListController
- (_TtC17SequoiaTranslator18CardListController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)deleteCell:(id)a3;
- (void)favorite:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CardListController

- (void)viewDidLoad
{
  v2 = self;
  sub_100033CEC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CardListController();
  v4 = v7.receiver;
  [(CardListController *)&v7 viewWillAppear:v3];
  v5 = sub_1000336B0();
  v6 = sub_10012267C();

  [v6 resetSwipedItemAnimated:0 completion:{0, v7.receiver, v7.super_class}];
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  sub_100033F04();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100034710(a3);
}

- (_TtC17SequoiaTranslator18CardListController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v5 = self;
  v3 = [(CardListController *)v5 view];
  if (v3)
  {
    v4 = v3;
    [v3 endEditing:1];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_100036C84();
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = self;

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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1000370A8(v10, v9);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_100035674(v8, 1);
  v10 = [(CardListController *)v9 view];
  if (v10)
  {
    v11 = v10;
    [v10 endEditing:1];

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

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
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
  v12 = self;
  sub_100035F80(v7, 1);

  sub_100009EBC(v7, &unk_1003AB970);
  (*(v9 + 8))(v11, v8);
}

- (void)favorite:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000398CC(v4);
}

- (void)deleteCell:(id)a3
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100039C04(v7);

  (*(v5 + 8))(v7, v4);
}

@end