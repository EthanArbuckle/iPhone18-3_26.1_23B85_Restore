@interface PageFacetsViewController
- (_TtC8AppStore24PageFacetsViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC8AppStore24PageFacetsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PageFacetsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10009C3D0();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10009FDD8(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC8AppStore24PageFacetsViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore24PageFacetsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end