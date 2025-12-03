@interface DebugMenuViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (_TtC20ProductPageExtension23DebugMenuViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC20ProductPageExtension23DebugMenuViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)userDefaultsDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation DebugMenuViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1006BD820();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_notificationCenter);
  selfCopy = self;
  [v4 removeObserver:selfCopy];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(DebugMenuViewController *)&v6 dealloc];
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(DebugMenuViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)userDefaultsDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1006C1118();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  selfCopy = self;
  sub_1006BF018(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  selfCopy = self;
  sub_1006C16DC();
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (_TtC20ProductPageExtension23DebugMenuViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension23DebugMenuViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end