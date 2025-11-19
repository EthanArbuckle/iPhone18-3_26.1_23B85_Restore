@interface PageFacetsViewController
- (_TtC18ASMessagesProvider24PageFacetsViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC18ASMessagesProvider24PageFacetsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PageFacetsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_6ED7C4();
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v10 = a3;
  v11 = self;
  sub_6F11CC(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC18ASMessagesProvider24PageFacetsViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider24PageFacetsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end