@interface UserGuidesListController
- (_TtC4Maps24UserGuidesListController)init;
- (void)collectionManager:(id)a3 contentDidChange:(id)a4;
@end

@implementation UserGuidesListController

- (void)collectionManager:(id)a3 contentDidChange:(id)a4
{
  v6 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v11 = a3;
  v12 = self;

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v10;
  v14[5] = v11;

  sub_10020AAE4(0, 0, v8, &unk_101209278, v14);
}

- (_TtC4Maps24UserGuidesListController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end