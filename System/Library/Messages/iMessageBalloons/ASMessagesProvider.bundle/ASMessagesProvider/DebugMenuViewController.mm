@interface DebugMenuViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (_TtC18ASMessagesProvider23DebugMenuViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC18ASMessagesProvider23DebugMenuViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)userDefaultsDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation DebugMenuViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_6AC030();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_notificationCenter);
  v5 = self;
  [v4 removeObserver:v5];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(DebugMenuViewController *)&v6 dealloc];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(DebugMenuViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == &dword_0 + 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)userDefaultsDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_6AF928();
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
  sub_6AD828(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v10 = a3;
  v11 = self;
  sub_6AFEEC();
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (_TtC18ASMessagesProvider23DebugMenuViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider23DebugMenuViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end