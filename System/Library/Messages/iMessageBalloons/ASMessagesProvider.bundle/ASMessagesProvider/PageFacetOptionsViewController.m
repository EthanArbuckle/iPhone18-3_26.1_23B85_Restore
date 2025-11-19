@interface PageFacetOptionsViewController
- (_TtC18ASMessagesProvider30PageFacetOptionsViewController)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider30PageFacetOptionsViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC18ASMessagesProvider30PageFacetOptionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PageFacetOptionsViewController

- (_TtC18ASMessagesProvider30PageFacetOptionsViewController)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_diffableDataSource) = 0;
  v4 = self + OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_preselectionContentOffset;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_479788();
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
  sub_47A46C(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC18ASMessagesProvider30PageFacetOptionsViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider30PageFacetOptionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end