@interface PageFacetOptionsViewController
- (_TtC18ASMessagesProvider30PageFacetOptionsViewController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider30PageFacetOptionsViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC18ASMessagesProvider30PageFacetOptionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PageFacetOptionsViewController

- (_TtC18ASMessagesProvider30PageFacetOptionsViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_479788();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  viewCopy = view;
  selfCopy = self;
  sub_47A46C(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC18ASMessagesProvider30PageFacetOptionsViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider30PageFacetOptionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end