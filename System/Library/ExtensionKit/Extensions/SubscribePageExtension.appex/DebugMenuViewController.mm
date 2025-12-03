@interface DebugMenuViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (_TtC22SubscribePageExtension23DebugMenuViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC22SubscribePageExtension23DebugMenuViewController)initWithNibName:(id)name bundle:(id)bundle;
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
  sub_10073AD4C();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_notificationCenter);
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
  sub_10073E644();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  viewCopy = view;
  selfCopy = self;
  sub_10073C544(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  viewCopy = view;
  selfCopy = self;
  sub_10073EC08();
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (_TtC22SubscribePageExtension23DebugMenuViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension23DebugMenuViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end