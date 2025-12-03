@interface PageFacetsViewController
- (_TtC18ASMessagesProvider24PageFacetsViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC18ASMessagesProvider24PageFacetsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PageFacetsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_6ED7C4();
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
  sub_6F11CC(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC18ASMessagesProvider24PageFacetsViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider24PageFacetsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end