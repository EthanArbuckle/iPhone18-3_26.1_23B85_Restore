@interface CanvasPromptPickerController
- (_TtC7Journal28CanvasPromptPickerController)initWithCollectionViewLayout:(id)a3;
- (_TtC7Journal28CanvasPromptPickerController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)loadView;
@end

@implementation CanvasPromptPickerController

- (void)loadView
{
  v2 = self;
  sub_1003358E8();
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100336130(v10);

  (*(v7 + 8))(v9, v6);
}

- (_TtC7Journal28CanvasPromptPickerController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal28CanvasPromptPickerController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end