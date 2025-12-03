@interface FavoriteColorPickerView.Coordinator
- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path;
- (_TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator)init;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)showDeleteCallout:(id)callout;
@end

@implementation FavoriteColorPickerView.Coordinator

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100031894();

  (*(v7 + 8))(v10, v6);
}

- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path
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

- (void)showDeleteCallout:(id)callout
{
  calloutCopy = callout;
  selfCopy = self;
  sub_100028938(calloutCopy);
}

- (_TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end