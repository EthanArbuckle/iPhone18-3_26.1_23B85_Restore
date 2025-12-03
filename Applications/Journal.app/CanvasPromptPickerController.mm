@interface CanvasPromptPickerController
- (_TtC7Journal28CanvasPromptPickerController)initWithCollectionViewLayout:(id)layout;
- (_TtC7Journal28CanvasPromptPickerController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)loadView;
@end

@implementation CanvasPromptPickerController

- (void)loadView
{
  selfCopy = self;
  sub_1003358E8();
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
  sub_100336130(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (_TtC7Journal28CanvasPromptPickerController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal28CanvasPromptPickerController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end