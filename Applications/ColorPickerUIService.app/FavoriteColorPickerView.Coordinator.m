@interface FavoriteColorPickerView.Coordinator
- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4;
- (_TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator)init;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)showDeleteCallout:(id)a3;
@end

@implementation FavoriteColorPickerView.Coordinator

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  sub_100031894();

  (*(v7 + 8))(v10, v6);
}

- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v8, v4);
  return 0;
}

- (void)showDeleteCallout:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100028938(v4);
}

- (_TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end