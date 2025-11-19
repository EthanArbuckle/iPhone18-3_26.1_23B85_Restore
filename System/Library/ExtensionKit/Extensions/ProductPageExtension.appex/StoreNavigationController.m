@interface StoreNavigationController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)navigationBar:(id)a3 shouldPopItem:(id)a4;
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC20ProductPageExtension25StoreNavigationController)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension25StoreNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC20ProductPageExtension25StoreNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC20ProductPageExtension25StoreNavigationController)initWithRootViewController:(id)a3;
- (id)popToRootViewControllerAnimated:(BOOL)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)handleBackKeyCommandWithCommand:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation StoreNavigationController

- (_TtC20ProductPageExtension25StoreNavigationController)initWithCoder:(id)a3
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for StoreNavigationController();
  v2 = v5.receiver;
  [(StoreNavigationController *)&v5 viewDidLoad];
  v3 = [v2 navigationBar];
  [v2 pageMarginInsets];
  [v3 setLayoutMargins:?];

  v4 = [v2 navigationBar];
  [v4 setPrefersLargeTitles:1];
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StoreNavigationController();
  v4 = a3;
  v5 = v7.receiver;
  [(StoreNavigationController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 navigationBar];
  [v5 pageMarginInsets];
  [v6 setLayoutMargins:?];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for StoreNavigationController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(StoreNavigationController *)&v12 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_10003F17C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1006F5994;
  v11[3] = &unk_100884F60;
  v9 = _Block_copy(v11);
  v10 = v7;

  [a4 animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  v2 = [(StoreNavigationController *)self topViewController];

  return v2;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(StoreNavigationController *)v2 topViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 supportedInterfaceOrientations];

    return v5;
  }

  else
  {
    v8.receiver = v2;
    v8.super_class = type metadata accessor for StoreNavigationController();
    v7 = [(StoreNavigationController *)&v8 supportedInterfaceOrientations];

    return v7;
  }
}

- (id)popToRootViewControllerAnimated:(BOOL)a3
{
  v4 = self;
  v5 = sub_10003E0E0(a3);

  if (v5)
  {
    sub_10003F040();
    v6.super.isa = sub_1007701AC().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_10003E2B8(a3, v10);

  sub_10000CFBC(v10, &unk_1009434C0);
  return v8;
}

- (void)handleBackKeyCommandWithCommand:(id)a3
{
  v3 = [(StoreNavigationController *)self popViewControllerAnimated:1];
}

- (BOOL)navigationBar:(id)a3 shouldPopItem:(id)a4
{
  v7 = sub_10075DD7C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100766B2C();
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_10075DD6C();
  sub_10075DD4C();
  (*(v8 + 8))(v10, v7);
  sub_100766B1C();
  sub_10076F69C();
  v14 = type metadata accessor for StoreNavigationController();
  v16.receiver = v13;
  v16.super_class = v14;
  LOBYTE(a4) = [(StoreNavigationController *)&v16 navigationBar:v11 shouldPopItem:v12];

  return a4;
}

- (_TtC20ProductPageExtension25StoreNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension25StoreNavigationController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension25StoreNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end