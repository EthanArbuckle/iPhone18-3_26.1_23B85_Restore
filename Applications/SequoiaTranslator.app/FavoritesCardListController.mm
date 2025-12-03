@interface FavoritesCardListController
- (_TtC17SequoiaTranslator27FavoritesCardListController)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator27FavoritesCardListController)initWithNibName:(id)name bundle:(id)bundle;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FavoritesCardListController

- (_TtC17SequoiaTranslator27FavoritesCardListController)initWithCoder:(id)coder
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FavoritesCardListController();
  v4 = v5.receiver;
  [(FavoritesCardListController *)&v5 viewWillAppear:appearCopy];
  (*((swift_isaMask & *v4) + 0x100))(0);
}

- (_TtC17SequoiaTranslator27FavoritesCardListController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)controllerDidChangeContent:(id)content
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0x100);
  selfCopy = self;
  v3(1);
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  v12 = sub_100005AD4(&unk_1003AB970);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v26[-v16];
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  pathCopy = path;
  indexPathCopy = indexPath;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (pathCopy)
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

  if (indexPathCopy)
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
  sub_1000FB424(v26, v17, type);

  sub_1000FB7D0(v15);
  sub_1000FB7D0(v17);
  sub_100008664(v26);
}

@end