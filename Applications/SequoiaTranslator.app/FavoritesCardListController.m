@interface FavoritesCardListController
- (_TtC17SequoiaTranslator27FavoritesCardListController)initWithCoder:(id)a3;
- (_TtC17SequoiaTranslator27FavoritesCardListController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerDidChangeContent:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FavoritesCardListController

- (_TtC17SequoiaTranslator27FavoritesCardListController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_collectionView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FavoritesCardListController();
  v2 = v5.receiver;
  [(FavoritesCardListController *)&v5 viewDidLoad];
  sub_1000F81DC();
  (*((swift_isaMask & *v2) + 0xF8))(v3, v4);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FavoritesCardListController();
  v4 = v5.receiver;
  [(FavoritesCardListController *)&v5 viewWillAppear:v3];
  (*((swift_isaMask & *v4) + 0x100))(0);
}

- (_TtC17SequoiaTranslator27FavoritesCardListController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)controllerDidChangeContent:(id)a3
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0x100);
  v4 = self;
  v3(1);
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v12 = sub_100005AD4(&unk_1003AB970);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v26[-v16];
  v18 = a3;
  swift_unknownObjectRetain();
  v19 = self;
  v20 = a5;
  v21 = a7;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (v20)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = type metadata accessor for IndexPath();
    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  }

  else
  {
    v23 = type metadata accessor for IndexPath();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  }

  if (v21)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for IndexPath();
  (*(*(v25 - 8) + 56))(v15, v24, 1, v25);
  sub_1000FB424(v26, v17, a6);

  sub_1000FB7D0(v15);
  sub_1000FB7D0(v17);
  sub_100008664(v26);
}

@end